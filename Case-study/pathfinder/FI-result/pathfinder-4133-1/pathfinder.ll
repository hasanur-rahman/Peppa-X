; ModuleID = 'pathfinder.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@rows = global i32 0, align 4
@cols = global i32 0, align 4
@data = global i32* null, align 8
@wall = global i32** null, align 8
@result = global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Usage: pathfiner width num_of_steps\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1

; Function Attrs: uwtable
define void @_Z4initiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load i32* %1, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %0
  %6 = load i8*** %2, align 8
  %7 = getelementptr inbounds i8** %6, i64 1
  %8 = load i8** %7, align 8
  %9 = call i32 @atoi(i8* %8) #7
  store i32 %9, i32* @cols, align 4
  %10 = load i8*** %2, align 8
  %11 = getelementptr inbounds i8** %10, i64 2
  %12 = load i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #7
  store i32 %13, i32* @rows, align 4
  br label %16

; <label>:14                                      ; preds = %0
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

; <label>:16                                      ; preds = %5
  %17 = load i32* @rows, align 4
  %18 = load i32* @cols, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 4)
  %22 = extractvalue { i64, i1 } %21, 1
  %23 = extractvalue { i64, i1 } %21, 0
  %24 = select i1 %22, i64 -1, i64 %23
  %25 = call noalias i8* @_Znam(i64 %24) #9
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** @data, align 8
  %27 = load i32* @rows, align 4
  %28 = sext i32 %27 to i64
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %28, i64 8)
  %30 = extractvalue { i64, i1 } %29, 1
  %31 = extractvalue { i64, i1 } %29, 0
  %32 = select i1 %30, i64 -1, i64 %31
  %33 = call noalias i8* @_Znam(i64 %32) #9
  %34 = bitcast i8* %33 to i32**
  store i32** %34, i32*** @wall, align 8
  store i32 0, i32* %n, align 4
  br label %35

; <label>:35                                      ; preds = %50, %16
  %36 = load i32* %n, align 4
  %37 = load i32* @rows, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

; <label>:39                                      ; preds = %35
  %40 = load i32** @data, align 8
  %41 = load i32* @cols, align 4
  %42 = load i32* %n, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32* %40, i64 %44
  %46 = load i32* %n, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32*** @wall, align 8
  %49 = getelementptr inbounds i32** %48, i64 %47
  store i32* %45, i32** %49, align 8
  br label %50

; <label>:50                                      ; preds = %39
  %51 = load i32* %n, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %n, align 4
  br label %35

; <label>:53                                      ; preds = %35
  %54 = load i32* @cols, align 4
  %55 = sext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 4)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = call noalias i8* @_Znam(i64 %59) #9
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** @result, align 8
  store i32 0, i32* %i, align 4
  br label %62

; <label>:62                                      ; preds = %84, %53
  %63 = load i32* %i, align 4
  %64 = load i32* @rows, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

; <label>:66                                      ; preds = %62
  store i32 0, i32* %j, align 4
  br label %67

; <label>:67                                      ; preds = %80, %66
  %68 = load i32* %j, align 4
  %69 = load i32* @cols, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %83

; <label>:71                                      ; preds = %67
  %72 = load i32* %j, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32*** @wall, align 8
  %77 = getelementptr inbounds i32** %76, i64 %75
  %78 = load i32** %77, align 8
  %79 = getelementptr inbounds i32* %78, i64 %73
  store i32 7, i32* %79, align 4
  br label %80

; <label>:80                                      ; preds = %71
  %81 = load i32* %j, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %j, align 4
  br label %67

; <label>:83                                      ; preds = %67
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i, align 4
  br label %62

; <label>:87                                      ; preds = %62
  store i32 0, i32* %j1, align 4
  br label %88

; <label>:88                                      ; preds = %104, %87
  %89 = load i32* %j1, align 4
  %90 = load i32* @cols, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %107

; <label>:92                                      ; preds = %88
  %93 = load i32* %j1, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32*** @wall, align 8
  %96 = getelementptr inbounds i32** %95, i64 0
  %97 = load i32** %96, align 8
  %98 = getelementptr inbounds i32* %97, i64 %94
  %99 = load i32* %98, align 4
  %100 = load i32* %j1, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32** @result, align 8
  %103 = getelementptr inbounds i32* %102, i64 %101
  store i32 %99, i32* %103, align 4
  br label %104

; <label>:104                                     ; preds = %92
  %105 = load i32* %j1, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %j1, align 4
  br label %88

; <label>:107                                     ; preds = %88
  store i32 0, i32* %i2, align 4
  br label %108

; <label>:108                                     ; preds = %133, %107
  %109 = load i32* %i2, align 4
  %110 = load i32* @rows, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %136

; <label>:112                                     ; preds = %108
  store i32 0, i32* %j3, align 4
  br label %113

; <label>:113                                     ; preds = %128, %112
  %114 = load i32* %j3, align 4
  %115 = load i32* @cols, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %131

; <label>:117                                     ; preds = %113
  %118 = load i32* %j3, align 4
  %119 = sext i32 %118 to i64
  %120 = load i32* %i2, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32*** @wall, align 8
  %123 = getelementptr inbounds i32** %122, i64 %121
  %124 = load i32** %123, align 8
  %125 = getelementptr inbounds i32* %124, i64 %119
  %126 = load i32* %125, align 4
  %127 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %126)
  br label %128

; <label>:128                                     ; preds = %117
  %129 = load i32* %j3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %j3, align 4
  br label %113

; <label>:131                                     ; preds = %113
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  br label %133

; <label>:133                                     ; preds = %131
  %134 = load i32* %i2, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i2, align 4
  br label %108

; <label>:136                                     ; preds = %108
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

; Function Attrs: uwtable
define void @_Z5fatalPc(i8* %s) #0 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i8* %3)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load i8*** %3, align 8
  call void @_Z3runiPPc(i32 %4, i8** %5)
  ret i32 0
}

; Function Attrs: uwtable
define void @_Z3runiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %cycles = alloca i64, align 8
  %src = alloca i32*, align 8
  %dst = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %min = alloca i32, align 4
  %t = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load i32* %1, align 4
  %4 = load i8*** %2, align 8
  call void @_Z4initiPPc(i32 %3, i8** %4)
  %5 = load i32** @result, align 8
  store i32* %5, i32** %dst, align 8
  %6 = load i32* @cols, align 4
  %7 = sext i32 %6 to i64
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %7, i64 4)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  %11 = select i1 %9, i64 -1, i64 %10
  %12 = call noalias i8* @_Znam(i64 %11) #9
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %src, align 8
  store i32 0, i32* %t, align 4
  br label %14

; <label>:14                                      ; preds = %101, %0
  %15 = load i32* %t, align 4
  %16 = load i32* @rows, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %104

; <label>:19                                      ; preds = %14
  %20 = load i32** %src, align 8
  store i32* %20, i32** %temp, align 8
  %21 = load i32** %dst, align 8
  store i32* %21, i32** %src, align 8
  %22 = load i32** %temp, align 8
  store i32* %22, i32** %dst, align 8
  store i32 0, i32* %n, align 4
  br label %23

; <label>:23                                      ; preds = %97, %19
  %24 = load i32* %n, align 4
  %25 = load i32* @cols, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %100

; <label>:27                                      ; preds = %23
  %28 = load i32* %n, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32** %src, align 8
  %31 = getelementptr inbounds i32* %30, i64 %29
  %32 = load i32* %31, align 4
  store i32 %32, i32* %min, align 4
  %33 = load i32* %n, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

; <label>:35                                      ; preds = %27
  %36 = load i32* %min, align 4
  %37 = load i32* %n, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load i32** %src, align 8
  %41 = getelementptr inbounds i32* %40, i64 %39
  %42 = load i32* %41, align 4
  %43 = icmp sle i32 %36, %42
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %35
  %45 = load i32* %min, align 4
  br label %53

; <label>:46                                      ; preds = %35
  %47 = load i32* %n, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load i32** %src, align 8
  %51 = getelementptr inbounds i32* %50, i64 %49
  %52 = load i32* %51, align 4
  br label %53

; <label>:53                                      ; preds = %46, %44
  %54 = phi i32 [ %45, %44 ], [ %52, %46 ]
  store i32 %54, i32* %min, align 4
  br label %55

; <label>:55                                      ; preds = %53, %27
  %56 = load i32* %n, align 4
  %57 = load i32* @cols, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %80

; <label>:60                                      ; preds = %55
  %61 = load i32* %min, align 4
  %62 = load i32* %n, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = load i32** %src, align 8
  %66 = getelementptr inbounds i32* %65, i64 %64
  %67 = load i32* %66, align 4
  %68 = icmp sle i32 %61, %67
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %60
  %70 = load i32* %min, align 4
  br label %78

; <label>:71                                      ; preds = %60
  %72 = load i32* %n, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load i32** %src, align 8
  %76 = getelementptr inbounds i32* %75, i64 %74
  %77 = load i32* %76, align 4
  br label %78

; <label>:78                                      ; preds = %71, %69
  %79 = phi i32 [ %70, %69 ], [ %77, %71 ]
  store i32 %79, i32* %min, align 4
  br label %80

; <label>:80                                      ; preds = %78, %55
  %81 = load i32* %n, align 4
  %82 = sext i32 %81 to i64
  %83 = load i32* %t, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = load i32*** @wall, align 8
  %87 = getelementptr inbounds i32** %86, i64 %85
  %88 = load i32** %87, align 8
  %89 = getelementptr inbounds i32* %88, i64 %82
  %90 = load i32* %89, align 4
  %91 = load i32* %min, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32* %n, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32** %dst, align 8
  %96 = getelementptr inbounds i32* %95, i64 %94
  store i32 %92, i32* %96, align 4
  br label %97

; <label>:97                                      ; preds = %80
  %98 = load i32* %n, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %n, align 4
  br label %23

; <label>:100                                     ; preds = %23
  br label %101

; <label>:101                                     ; preds = %100
  %102 = load i32* %t, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %t, align 4
  br label %14

; <label>:104                                     ; preds = %14
  store i32 0, i32* %i, align 4
  br label %105

; <label>:105                                     ; preds = %116, %104
  %106 = load i32* %i, align 4
  %107 = load i32* @cols, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %119

; <label>:109                                     ; preds = %105
  %110 = load i32* %i, align 4
  %111 = sext i32 %110 to i64
  %112 = load i32** @data, align 8
  %113 = getelementptr inbounds i32* %112, i64 %111
  %114 = load i32* %113, align 4
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %114)
  br label %116

; <label>:116                                     ; preds = %109
  %117 = load i32* %i, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4
  br label %105

; <label>:119                                     ; preds = %105
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %i1, align 4
  br label %121

; <label>:121                                     ; preds = %132, %119
  %122 = load i32* %i1, align 4
  %123 = load i32* @cols, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %135

; <label>:125                                     ; preds = %121
  %126 = load i32* %i1, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32** %dst, align 8
  %129 = getelementptr inbounds i32* %128, i64 %127
  %130 = load i32* %129, align 4
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %130)
  br label %132

; <label>:132                                     ; preds = %125
  %133 = load i32* %i1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %i1, align 4
  br label %121

; <label>:135                                     ; preds = %121
  %136 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %137 = load i32** @data, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %141, label %139

; <label>:139                                     ; preds = %135
  %140 = bitcast i32* %137 to i8*
  call void @_ZdaPv(i8* %140) #10
  br label %141

; <label>:141                                     ; preds = %139, %135
  %142 = load i32*** @wall, align 8
  %143 = icmp eq i32** %142, null
  br i1 %143, label %146, label %144

; <label>:144                                     ; preds = %141
  %145 = bitcast i32** %142 to i8*
  call void @_ZdaPv(i8* %145) #10
  br label %146

; <label>:146                                     ; preds = %144, %141
  %147 = load i32** %dst, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %151, label %149

; <label>:149                                     ; preds = %146
  %150 = bitcast i32* %147 to i8*
  call void @_ZdaPv(i8* %150) #10
  br label %151

; <label>:151                                     ; preds = %149, %146
  %152 = load i32** %src, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %156, label %154

; <label>:154                                     ; preds = %151
  %155 = bitcast i32* %152 to i8*
  call void @_ZdaPv(i8* %155) #10
  br label %156

; <label>:156                                     ; preds = %154, %151
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #6

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
