; ModuleID = 'needle.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@blosum62 = global [24 x [24 x i32]] [[24 x i32] [i32 4, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 0, i32 -3, i32 -2, i32 0, i32 -2, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -1, i32 5, i32 0, i32 -2, i32 -3, i32 1, i32 0, i32 -2, i32 0, i32 -3, i32 -2, i32 2, i32 -1, i32 -3, i32 -2, i32 -1, i32 -1, i32 -3, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 6, i32 1, i32 -3, i32 0, i32 0, i32 0, i32 1, i32 -3, i32 -3, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 0, i32 -4, i32 -2, i32 -3, i32 3, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 1, i32 6, i32 -3, i32 0, i32 2, i32 -1, i32 -1, i32 -3, i32 -4, i32 -1, i32 -3, i32 -3, i32 -1, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 9, i32 -3, i32 -4, i32 -3, i32 -3, i32 -1, i32 -1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -1, i32 1, i32 0, i32 0, i32 -3, i32 5, i32 2, i32 -2, i32 0, i32 -3, i32 -2, i32 1, i32 0, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -1, i32 -2, i32 0, i32 3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 2, i32 -4, i32 2, i32 5, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -2, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 6, i32 -2, i32 -4, i32 -4, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 1, i32 -1, i32 -3, i32 0, i32 0, i32 -2, i32 8, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -2, i32 -1, i32 -2, i32 -2, i32 2, i32 -3, i32 0, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 -1, i32 -3, i32 -3, i32 -4, i32 -3, i32 4, i32 2, i32 -3, i32 1, i32 0, i32 -3, i32 -2, i32 -1, i32 -3, i32 -1, i32 3, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -3, i32 -4, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 2, i32 4, i32 -2, i32 2, i32 0, i32 -3, i32 -2, i32 -1, i32 -2, i32 -1, i32 1, i32 -4, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 2, i32 0, i32 -1, i32 -3, i32 1, i32 1, i32 -2, i32 -1, i32 -3, i32 -2, i32 5, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 0, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -1, i32 -2, i32 -3, i32 -1, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 2, i32 -1, i32 5, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -3, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 0, i32 0, i32 -3, i32 0, i32 6, i32 -4, i32 -2, i32 -2, i32 1, i32 3, i32 -1, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -4, i32 7, i32 -1, i32 -1, i32 -4, i32 -3, i32 -2, i32 -2, i32 -1, i32 -2, i32 -4], [24 x i32] [i32 1, i32 -1, i32 1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -2, i32 -1, i32 4, i32 1, i32 -3, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 -4], [24 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 5, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -3, i32 -3, i32 -4, i32 -4, i32 -2, i32 -2, i32 -3, i32 -2, i32 -2, i32 -3, i32 -2, i32 -3, i32 -1, i32 1, i32 -4, i32 -3, i32 -2, i32 11, i32 2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 -2, i32 -3, i32 -2, i32 -1, i32 -2, i32 -3, i32 2, i32 -1, i32 -1, i32 -2, i32 -1, i32 3, i32 -3, i32 -2, i32 -2, i32 2, i32 7, i32 -1, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 3, i32 1, i32 -2, i32 1, i32 -1, i32 -2, i32 -2, i32 0, i32 -3, i32 -1, i32 4, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -1, i32 3, i32 4, i32 -3, i32 0, i32 1, i32 -1, i32 0, i32 -3, i32 -4, i32 0, i32 -3, i32 -3, i32 -2, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 1, i32 -3, i32 3, i32 4, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 0, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 1]], align 16
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"Usage: %s <max_rows/max_cols> <penalty> <num_threads>\0A\00", align 1
@.str1 = private unnamed_addr constant [40 x i8] c"\09<dimension>      - x and y dimensions\0A\00", align 1
@.str2 = private unnamed_addr constant [47 x i8] c"\09<penalty>        - penalty(positive integer)\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"\09<num_threads>    - no. of threads\0A\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"Processing bottom-right matrix\0A\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"error: can not allocate memory\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"Start Needleman-Wunsch\0A\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"Num of threads: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"Processing top-left matrix\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"Total time: %.3f seconds\0A\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"print traceback value GPU:\0A\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind uwtable
define i64 @_Z8get_timev() #0 {
  %tv = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #6
  %2 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = mul nsw i64 %3, 1000000
  %5 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = add nsw i64 %4, %6
  ret i64 %7
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define i32 @_Z7maximumiii(i32 %a, i32 %b, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %a, i32* %2, align 4
  store i32 %b, i32* %3, align 4
  store i32 %c, i32* %4, align 4
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4
  store i32 %9, i32* %k, align 4
  br label %12

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  store i32 %11, i32* %k, align 4
  br label %12

; <label>:12                                      ; preds = %10, %8
  %13 = load i32* %k, align 4
  %14 = load i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %12
  %17 = load i32* %4, align 4
  store i32 %17, i32* %1
  br label %20

; <label>:18                                      ; preds = %12
  %19 = load i32* %k, align 4
  store i32 %19, i32* %1
  br label %20

; <label>:20                                      ; preds = %18, %16
  %21 = load i32* %1
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define double @_Z7gettimev() #0 {
  %t = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) #6
  %2 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = fmul double %7, 1.000000e-06
  %9 = fadd double %4, %8
  ret double %9
}

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load i8*** %3, align 8
  call void @_Z7runTestiPPc(i32 %4, i8** %5)
  ret i32 0
}

; Function Attrs: uwtable
define void @_Z7runTestiPPc(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %max_rows = alloca i32, align 4
  %max_cols = alloca i32, align 4
  %penalty = alloca i32, align 4
  %input_itemsets = alloca i32*, align 8
  %output_itemsets = alloca i32*, align 8
  %referrence = alloca i32*, align 8
  %omp_num_threads = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %start_time = alloca i64, align 8
  %end_time = alloca i64, align 8
  %fpo = alloca %struct._IO_FILE*, align 8
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %nw = alloca i32, align 4
  %n = alloca i32, align 4
  %w = alloca i32, align 4
  %traceback = alloca i32, align 4
  %new_nw = alloca i32, align 4
  %new_w = alloca i32, align 4
  %new_n = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load i32* %1, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %22

; <label>:5                                       ; preds = %0
  %6 = load i8*** %2, align 8
  %7 = getelementptr inbounds i8** %6, i64 1
  %8 = load i8** %7, align 8
  %9 = call i32 @atoi(i8* %8) #7
  store i32 %9, i32* %max_rows, align 4
  %10 = load i8*** %2, align 8
  %11 = getelementptr inbounds i8** %10, i64 1
  %12 = load i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #7
  store i32 %13, i32* %max_cols, align 4
  %14 = load i8*** %2, align 8
  %15 = getelementptr inbounds i8** %14, i64 2
  %16 = load i8** %15, align 8
  %17 = call i32 @atoi(i8* %16) #7
  store i32 %17, i32* %penalty, align 4
  %18 = load i8*** %2, align 8
  %19 = getelementptr inbounds i8** %18, i64 3
  %20 = load i8** %19, align 8
  %21 = call i32 @atoi(i8* %20) #7
  store i32 %21, i32* %omp_num_threads, align 4
  br label %25

; <label>:22                                      ; preds = %0
  %23 = load i32* %1, align 4
  %24 = load i8*** %2, align 8
  call void @_Z5usageiPPc(i32 %23, i8** %24)
  br label %25

; <label>:25                                      ; preds = %22, %5
  %26 = load i32* %max_rows, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %max_rows, align 4
  %28 = load i32* %max_cols, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %max_cols, align 4
  %30 = load i32* %max_rows, align 4
  %31 = load i32* %max_cols, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call noalias i8* @malloc(i64 %34) #6
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %referrence, align 8
  %37 = load i32* %max_rows, align 4
  %38 = load i32* %max_cols, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = call noalias i8* @malloc(i64 %41) #6
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %input_itemsets, align 8
  %44 = load i32* %max_rows, align 4
  %45 = load i32* %max_cols, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = call noalias i8* @malloc(i64 %48) #6
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %output_itemsets, align 8
  %51 = load i32** %input_itemsets, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

; <label>:53                                      ; preds = %25
  %54 = load %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([31 x i8]* @.str5, i32 0, i32 0))
  br label %56

; <label>:56                                      ; preds = %53, %25
  store i32 0, i32* %i, align 4
  br label %57

; <label>:57                                      ; preds = %79, %56
  %58 = load i32* %i, align 4
  %59 = load i32* %max_cols, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

; <label>:61                                      ; preds = %57
  store i32 0, i32* %j, align 4
  br label %62

; <label>:62                                      ; preds = %75, %61
  %63 = load i32* %j, align 4
  %64 = load i32* %max_rows, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

; <label>:66                                      ; preds = %62
  %67 = load i32* %i, align 4
  %68 = load i32* %max_cols, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32* %j, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = load i32** %input_itemsets, align 8
  %74 = getelementptr inbounds i32* %73, i64 %72
  store i32 0, i32* %74, align 4
  br label %75

; <label>:75                                      ; preds = %66
  %76 = load i32* %j, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %j, align 4
  br label %62

; <label>:78                                      ; preds = %62
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load i32* %i, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %i, align 4
  br label %57

; <label>:82                                      ; preds = %57
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0))
  store i32 1, i32* %i1, align 4
  br label %84

; <label>:84                                      ; preds = %95, %82
  %85 = load i32* %i1, align 4
  %86 = load i32* %max_rows, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

; <label>:88                                      ; preds = %84
  %89 = load i32* %i1, align 4
  %90 = load i32* %max_cols, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = load i32** %input_itemsets, align 8
  %94 = getelementptr inbounds i32* %93, i64 %92
  store i32 7, i32* %94, align 4
  br label %95

; <label>:95                                      ; preds = %88
  %96 = load i32* %i1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %i1, align 4
  br label %84

; <label>:98                                      ; preds = %84
  store i32 1, i32* %j2, align 4
  br label %99

; <label>:99                                      ; preds = %108, %98
  %100 = load i32* %j2, align 4
  %101 = load i32* %max_cols, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %111

; <label>:103                                     ; preds = %99
  %104 = load i32* %j2, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32** %input_itemsets, align 8
  %107 = getelementptr inbounds i32* %106, i64 %105
  store i32 5, i32* %107, align 4
  br label %108

; <label>:108                                     ; preds = %103
  %109 = load i32* %j2, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %j2, align 4
  br label %99

; <label>:111                                     ; preds = %99
  store i32 1, i32* %i3, align 4
  br label %112

; <label>:112                                     ; preds = %151, %111
  %113 = load i32* %i3, align 4
  %114 = load i32* %max_cols, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %154

; <label>:116                                     ; preds = %112
  store i32 1, i32* %j4, align 4
  br label %117

; <label>:117                                     ; preds = %147, %116
  %118 = load i32* %j4, align 4
  %119 = load i32* %max_rows, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %150

; <label>:121                                     ; preds = %117
  %122 = load i32* %j4, align 4
  %123 = sext i32 %122 to i64
  %124 = load i32** %input_itemsets, align 8
  %125 = getelementptr inbounds i32* %124, i64 %123
  %126 = load i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32* %i3, align 4
  %129 = load i32* %max_cols, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = load i32** %input_itemsets, align 8
  %133 = getelementptr inbounds i32* %132, i64 %131
  %134 = load i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [24 x [24 x i32]]* @blosum62, i32 0, i64 %135
  %137 = getelementptr inbounds [24 x i32]* %136, i32 0, i64 %127
  %138 = load i32* %137, align 4
  %139 = load i32* %i3, align 4
  %140 = load i32* %max_cols, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32* %j4, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = load i32** %referrence, align 8
  %146 = getelementptr inbounds i32* %145, i64 %144
  store i32 %138, i32* %146, align 4
  br label %147

; <label>:147                                     ; preds = %121
  %148 = load i32* %j4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %j4, align 4
  br label %117

; <label>:150                                     ; preds = %117
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32* %i3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i3, align 4
  br label %112

; <label>:154                                     ; preds = %112
  store i32 1, i32* %i5, align 4
  br label %155

; <label>:155                                     ; preds = %170, %154
  %156 = load i32* %i5, align 4
  %157 = load i32* %max_rows, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %173

; <label>:159                                     ; preds = %155
  %160 = load i32* %i5, align 4
  %161 = sub nsw i32 0, %160
  %162 = load i32* %penalty, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32* %i5, align 4
  %165 = load i32* %max_cols, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = load i32** %input_itemsets, align 8
  %169 = getelementptr inbounds i32* %168, i64 %167
  store i32 %163, i32* %169, align 4
  br label %170

; <label>:170                                     ; preds = %159
  %171 = load i32* %i5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %i5, align 4
  br label %155

; <label>:173                                     ; preds = %155
  store i32 1, i32* %j6, align 4
  br label %174

; <label>:174                                     ; preds = %187, %173
  %175 = load i32* %j6, align 4
  %176 = load i32* %max_cols, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %190

; <label>:178                                     ; preds = %174
  %179 = load i32* %j6, align 4
  %180 = sub nsw i32 0, %179
  %181 = load i32* %penalty, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32* %j6, align 4
  %184 = sext i32 %183 to i64
  %185 = load i32** %input_itemsets, align 8
  %186 = getelementptr inbounds i32* %185, i64 %184
  store i32 %182, i32* %186, align 4
  br label %187

; <label>:187                                     ; preds = %178
  %188 = load i32* %j6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %j6, align 4
  br label %174

; <label>:190                                     ; preds = %174
  %191 = load i32* %omp_num_threads, align 4
  %192 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str7, i32 0, i32 0), i32 %191)
  %193 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0))
  %194 = call i64 @_Z8get_timev()
  store i64 %194, i64* %start_time, align 8
  %195 = load i32** %input_itemsets, align 8
  %196 = load i32** %output_itemsets, align 8
  %197 = load i32** %referrence, align 8
  %198 = load i32* %max_rows, align 4
  %199 = load i32* %max_cols, align 4
  %200 = load i32* %penalty, align 4
  call void @_Z12nw_optimizedPiS_S_iii(i32* %195, i32* %196, i32* %197, i32 %198, i32 %199, i32 %200)
  %201 = call i64 @_Z8get_timev()
  store i64 %201, i64* %end_time, align 8
  %202 = load i64* %end_time, align 8
  %203 = load i64* %start_time, align 8
  %204 = sub nsw i64 %202, %203
  %205 = sitofp i64 %204 to float
  %206 = fdiv float %205, 1.000000e+06
  %207 = fpext float %206 to double
  %208 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str9, i32 0, i32 0), double %207)
  %209 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0))
  store %struct._IO_FILE* %209, %struct._IO_FILE** %fpo, align 8
  %210 = load %struct._IO_FILE** %fpo, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([28 x i8]* @.str12, i32 0, i32 0))
  %212 = load i32* %max_rows, align 4
  %213 = sub nsw i32 %212, 2
  store i32 %213, i32* %i7, align 4
  %214 = load i32* %max_rows, align 4
  %215 = sub nsw i32 %214, 2
  store i32 %215, i32* %j8, align 4
  br label %216

; <label>:216                                     ; preds = %387, %381, %374, %365, %190
  %217 = load i32* %i7, align 4
  %218 = icmp sge i32 %217, 0
  %219 = load i32* %j8, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %388

; <label>:221                                     ; preds = %216
  %222 = load i32* %i7, align 4
  %223 = load i32* %max_rows, align 4
  %224 = sub nsw i32 %223, 2
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %243

; <label>:226                                     ; preds = %221
  %227 = load i32* %j8, align 4
  %228 = load i32* %max_rows, align 4
  %229 = sub nsw i32 %228, 2
  %230 = icmp eq i32 %227, %229
  br i1 %230, label %231, label %243

; <label>:231                                     ; preds = %226
  %232 = load %struct._IO_FILE** %fpo, align 8
  %233 = load i32* %i7, align 4
  %234 = load i32* %max_cols, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32* %j8, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = load i32** %input_itemsets, align 8
  %240 = getelementptr inbounds i32* %239, i64 %238
  %241 = load i32* %240, align 4
  %242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i32 %241)
  br label %243

; <label>:243                                     ; preds = %231, %226, %221
  %244 = load i32* %i7, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

; <label>:246                                     ; preds = %243
  %247 = load i32* %j8, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

; <label>:249                                     ; preds = %246
  br label %388

; <label>:250                                     ; preds = %246, %243
  %251 = load i32* %i7, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %288

; <label>:253                                     ; preds = %250
  %254 = load i32* %j8, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %288

; <label>:256                                     ; preds = %253
  %257 = load i32* %i7, align 4
  %258 = sub nsw i32 %257, 1
  %259 = load i32* %max_cols, align 4
  %260 = mul nsw i32 %258, %259
  %261 = load i32* %j8, align 4
  %262 = add nsw i32 %260, %261
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = load i32** %input_itemsets, align 8
  %266 = getelementptr inbounds i32* %265, i64 %264
  %267 = load i32* %266, align 4
  store i32 %267, i32* %nw, align 4
  %268 = load i32* %i7, align 4
  %269 = load i32* %max_cols, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32* %j8, align 4
  %272 = add nsw i32 %270, %271
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = load i32** %input_itemsets, align 8
  %276 = getelementptr inbounds i32* %275, i64 %274
  %277 = load i32* %276, align 4
  store i32 %277, i32* %w, align 4
  %278 = load i32* %i7, align 4
  %279 = sub nsw i32 %278, 1
  %280 = load i32* %max_cols, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32* %j8, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = load i32** %input_itemsets, align 8
  %286 = getelementptr inbounds i32* %285, i64 %284
  %287 = load i32* %286, align 4
  store i32 %287, i32* %n, align 4
  br label %319

; <label>:288                                     ; preds = %253, %250
  %289 = load i32* %i7, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %302

; <label>:291                                     ; preds = %288
  store i32 -999, i32* %n, align 4
  store i32 -999, i32* %nw, align 4
  %292 = load i32* %i7, align 4
  %293 = load i32* %max_cols, align 4
  %294 = mul nsw i32 %292, %293
  %295 = load i32* %j8, align 4
  %296 = add nsw i32 %294, %295
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = load i32** %input_itemsets, align 8
  %300 = getelementptr inbounds i32* %299, i64 %298
  %301 = load i32* %300, align 4
  store i32 %301, i32* %w, align 4
  br label %318

; <label>:302                                     ; preds = %288
  %303 = load i32* %j8, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %316

; <label>:305                                     ; preds = %302
  store i32 -999, i32* %w, align 4
  store i32 -999, i32* %nw, align 4
  %306 = load i32* %i7, align 4
  %307 = sub nsw i32 %306, 1
  %308 = load i32* %max_cols, align 4
  %309 = mul nsw i32 %307, %308
  %310 = load i32* %j8, align 4
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = load i32** %input_itemsets, align 8
  %314 = getelementptr inbounds i32* %313, i64 %312
  %315 = load i32* %314, align 4
  store i32 %315, i32* %n, align 4
  br label %317

; <label>:316                                     ; preds = %302
  br label %317

; <label>:317                                     ; preds = %316, %305
  br label %318

; <label>:318                                     ; preds = %317, %291
  br label %319

; <label>:319                                     ; preds = %318, %256
  %320 = load i32* %nw, align 4
  %321 = load i32* %i7, align 4
  %322 = load i32* %max_cols, align 4
  %323 = mul nsw i32 %321, %322
  %324 = load i32* %j8, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = load i32** %referrence, align 8
  %328 = getelementptr inbounds i32* %327, i64 %326
  %329 = load i32* %328, align 4
  %330 = add nsw i32 %320, %329
  store i32 %330, i32* %new_nw, align 4
  %331 = load i32* %w, align 4
  %332 = load i32* %penalty, align 4
  %333 = sub nsw i32 %331, %332
  store i32 %333, i32* %new_w, align 4
  %334 = load i32* %n, align 4
  %335 = load i32* %penalty, align 4
  %336 = sub nsw i32 %334, %335
  store i32 %336, i32* %new_n, align 4
  %337 = load i32* %new_nw, align 4
  %338 = load i32* %new_w, align 4
  %339 = load i32* %new_n, align 4
  %340 = call i32 @_Z7maximumiii(i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %traceback, align 4
  %341 = load i32* %traceback, align 4
  %342 = load i32* %new_nw, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %346

; <label>:344                                     ; preds = %319
  %345 = load i32* %nw, align 4
  store i32 %345, i32* %traceback, align 4
  br label %346

; <label>:346                                     ; preds = %344, %319
  %347 = load i32* %traceback, align 4
  %348 = load i32* %new_w, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %352

; <label>:350                                     ; preds = %346
  %351 = load i32* %w, align 4
  store i32 %351, i32* %traceback, align 4
  br label %352

; <label>:352                                     ; preds = %350, %346
  %353 = load i32* %traceback, align 4
  %354 = load i32* %new_n, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %358

; <label>:356                                     ; preds = %352
  %357 = load i32* %n, align 4
  store i32 %357, i32* %traceback, align 4
  br label %358

; <label>:358                                     ; preds = %356, %352
  %359 = load %struct._IO_FILE** %fpo, align 8
  %360 = load i32* %traceback, align 4
  %361 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i32 %360)
  %362 = load i32* %traceback, align 4
  %363 = load i32* %nw, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %370

; <label>:365                                     ; preds = %358
  %366 = load i32* %i7, align 4
  %367 = add nsw i32 %366, -1
  store i32 %367, i32* %i7, align 4
  %368 = load i32* %j8, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %j8, align 4
  br label %216

; <label>:370                                     ; preds = %358
  %371 = load i32* %traceback, align 4
  %372 = load i32* %w, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %377

; <label>:374                                     ; preds = %370
  %375 = load i32* %j8, align 4
  %376 = add nsw i32 %375, -1
  store i32 %376, i32* %j8, align 4
  br label %216

; <label>:377                                     ; preds = %370
  %378 = load i32* %traceback, align 4
  %379 = load i32* %n, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %384

; <label>:381                                     ; preds = %377
  %382 = load i32* %i7, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %i7, align 4
  br label %216

; <label>:384                                     ; preds = %377
  br label %385

; <label>:385                                     ; preds = %384
  br label %386

; <label>:386                                     ; preds = %385
  br label %387

; <label>:387                                     ; preds = %386
  br label %216

; <label>:388                                     ; preds = %249, %216
  %389 = load %struct._IO_FILE** %fpo, align 8
  %390 = call i32 @fclose(%struct._IO_FILE* %389)
  %391 = load i32** %referrence, align 8
  %392 = bitcast i32* %391 to i8*
  call void @free(i8* %392) #6
  %393 = load i32** %input_itemsets, align 8
  %394 = bitcast i32* %393 to i8*
  call void @free(i8* %394) #6
  %395 = load i32** %output_itemsets, align 8
  %396 = bitcast i32* %395 to i8*
  call void @free(i8* %396) #6
  ret void
}

; Function Attrs: uwtable
define void @_Z5usageiPPc(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = load %struct._IO_FILE** @stderr, align 8
  %4 = load i8*** %2, align 8
  %5 = getelementptr inbounds i8** %4, i64 0
  %6 = load i8** %5, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str, i32 0, i32 0), i8* %6)
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8]* @.str1, i32 0, i32 0))
  %10 = load %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8]* @.str2, i32 0, i32 0))
  %12 = load %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([36 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: uwtable
define void @_Z12nw_optimizedPiS_S_iii(i32* %input_itemsets, i32* %output_itemsets, i32* %referrence, i32 %max_rows, i32 %max_cols, i32 %penalty) #2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %blk = alloca i32, align 4
  %b_index_x = alloca i32, align 4
  %b_index_y = alloca i32, align 4
  %input_itemsets_l = alloca [289 x i32], align 64
  %reference_l = alloca [256 x i32], align 64
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %blk7 = alloca i32, align 4
  %b_index_x8 = alloca i32, align 4
  %b_index_y9 = alloca i32, align 4
  %input_itemsets_l10 = alloca [289 x i32], align 64
  %reference_l11 = alloca [256 x i32], align 64
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %j17 = alloca i32, align 4
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  store i32* %input_itemsets, i32** %1, align 8
  store i32* %output_itemsets, i32** %2, align 8
  store i32* %referrence, i32** %3, align 8
  store i32 %max_rows, i32* %4, align 4
  store i32 %max_cols, i32* %5, align 4
  store i32 %penalty, i32* %6, align 4
  store i32 1, i32* %blk, align 4
  br label %7

; <label>:7                                       ; preds = %206, %0
  %8 = load i32* %blk, align 4
  %9 = load i32* %5, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sdiv i32 %10, 16
  %12 = icmp sle i32 %8, %11
  br i1 %12, label %13, label %209

; <label>:13                                      ; preds = %7
  store i32 0, i32* %b_index_x, align 4
  br label %14

; <label>:14                                      ; preds = %202, %13
  %15 = load i32* %b_index_x, align 4
  %16 = load i32* %blk, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %205

; <label>:18                                      ; preds = %14
  %19 = load i32* %blk, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32* %b_index_x, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %b_index_y, align 4
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %58, %18
  %24 = load i32* %i, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %61

; <label>:26                                      ; preds = %23
  store i32 0, i32* %j, align 4
  br label %27

; <label>:27                                      ; preds = %54, %26
  %28 = load i32* %j, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %57

; <label>:30                                      ; preds = %27
  %31 = load i32* %5, align 4
  %32 = load i32* %b_index_y, align 4
  %33 = mul nsw i32 %32, 16
  %34 = load i32* %i, align 4
  %35 = add nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %31, %36
  %38 = load i32* %b_index_x, align 4
  %39 = mul nsw i32 %38, 16
  %40 = add nsw i32 %37, %39
  %41 = load i32* %j, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load i32** %3, align 8
  %46 = getelementptr inbounds i32* %45, i64 %44
  %47 = load i32* %46, align 4
  %48 = load i32* %i, align 4
  %49 = mul nsw i32 %48, 16
  %50 = load i32* %j, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x i32]* %reference_l, i32 0, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

; <label>:54                                      ; preds = %30
  %55 = load i32* %j, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %j, align 4
  br label %27

; <label>:57                                      ; preds = %27
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load i32* %i, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %i, align 4
  br label %23

; <label>:61                                      ; preds = %23
  store i32 0, i32* %i1, align 4
  br label %62

; <label>:62                                      ; preds = %95, %61
  %63 = load i32* %i1, align 4
  %64 = icmp slt i32 %63, 17
  br i1 %64, label %65, label %98

; <label>:65                                      ; preds = %62
  store i32 0, i32* %j2, align 4
  br label %66

; <label>:66                                      ; preds = %91, %65
  %67 = load i32* %j2, align 4
  %68 = icmp slt i32 %67, 17
  br i1 %68, label %69, label %94

; <label>:69                                      ; preds = %66
  %70 = load i32* %5, align 4
  %71 = load i32* %b_index_y, align 4
  %72 = mul nsw i32 %71, 16
  %73 = load i32* %i1, align 4
  %74 = add nsw i32 %72, %73
  %75 = mul nsw i32 %70, %74
  %76 = load i32* %b_index_x, align 4
  %77 = mul nsw i32 %76, 16
  %78 = add nsw i32 %75, %77
  %79 = load i32* %j2, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load i32** %1, align 8
  %83 = getelementptr inbounds i32* %82, i64 %81
  %84 = load i32* %83, align 4
  %85 = load i32* %i1, align 4
  %86 = mul nsw i32 %85, 17
  %87 = load i32* %j2, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

; <label>:91                                      ; preds = %69
  %92 = load i32* %j2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %j2, align 4
  br label %66

; <label>:94                                      ; preds = %66
  br label %95

; <label>:95                                      ; preds = %94
  %96 = load i32* %i1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %i1, align 4
  br label %62

; <label>:98                                      ; preds = %62
  store i32 1, i32* %i3, align 4
  br label %99

; <label>:99                                      ; preds = %157, %98
  %100 = load i32* %i3, align 4
  %101 = icmp slt i32 %100, 17
  br i1 %101, label %102, label %160

; <label>:102                                     ; preds = %99
  store i32 1, i32* %j4, align 4
  br label %103

; <label>:103                                     ; preds = %153, %102
  %104 = load i32* %j4, align 4
  %105 = icmp slt i32 %104, 17
  br i1 %105, label %106, label %156

; <label>:106                                     ; preds = %103
  %107 = load i32* %i3, align 4
  %108 = sub nsw i32 %107, 1
  %109 = mul nsw i32 %108, 17
  %110 = load i32* %j4, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %113
  %115 = load i32* %114, align 4
  %116 = load i32* %i3, align 4
  %117 = sub nsw i32 %116, 1
  %118 = mul nsw i32 %117, 16
  %119 = load i32* %j4, align 4
  %120 = add nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [256 x i32]* %reference_l, i32 0, i64 %122
  %124 = load i32* %123, align 4
  %125 = add nsw i32 %115, %124
  %126 = load i32* %i3, align 4
  %127 = mul nsw i32 %126, 17
  %128 = load i32* %j4, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %131
  %133 = load i32* %132, align 4
  %134 = load i32* %6, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32* %i3, align 4
  %137 = sub nsw i32 %136, 1
  %138 = mul nsw i32 %137, 17
  %139 = load i32* %j4, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %141
  %143 = load i32* %142, align 4
  %144 = load i32* %6, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @_Z7maximumiii(i32 %125, i32 %135, i32 %145)
  %147 = load i32* %i3, align 4
  %148 = mul nsw i32 %147, 17
  %149 = load i32* %j4, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

; <label>:153                                     ; preds = %106
  %154 = load i32* %j4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %j4, align 4
  br label %103

; <label>:156                                     ; preds = %103
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i32* %i3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %i3, align 4
  br label %99

; <label>:160                                     ; preds = %99
  store i32 0, i32* %i5, align 4
  br label %161

; <label>:161                                     ; preds = %198, %160
  %162 = load i32* %i5, align 4
  %163 = icmp slt i32 %162, 16
  br i1 %163, label %164, label %201

; <label>:164                                     ; preds = %161
  store i32 0, i32* %j6, align 4
  br label %165

; <label>:165                                     ; preds = %194, %164
  %166 = load i32* %j6, align 4
  %167 = icmp slt i32 %166, 16
  br i1 %167, label %168, label %197

; <label>:168                                     ; preds = %165
  %169 = load i32* %i5, align 4
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %170, 17
  %172 = load i32* %j6, align 4
  %173 = add nsw i32 %171, %172
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [289 x i32]* %input_itemsets_l, i32 0, i64 %175
  %177 = load i32* %176, align 4
  %178 = load i32* %5, align 4
  %179 = load i32* %b_index_y, align 4
  %180 = mul nsw i32 %179, 16
  %181 = load i32* %i5, align 4
  %182 = add nsw i32 %180, %181
  %183 = add nsw i32 %182, 1
  %184 = mul nsw i32 %178, %183
  %185 = load i32* %b_index_x, align 4
  %186 = mul nsw i32 %185, 16
  %187 = add nsw i32 %184, %186
  %188 = load i32* %j6, align 4
  %189 = add nsw i32 %187, %188
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = load i32** %1, align 8
  %193 = getelementptr inbounds i32* %192, i64 %191
  store i32 %177, i32* %193, align 4
  br label %194

; <label>:194                                     ; preds = %168
  %195 = load i32* %j6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %j6, align 4
  br label %165

; <label>:197                                     ; preds = %165
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i32* %i5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %i5, align 4
  br label %161

; <label>:201                                     ; preds = %161
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i32* %b_index_x, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %b_index_x, align 4
  br label %14

; <label>:205                                     ; preds = %14
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i32* %blk, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %blk, align 4
  br label %7

; <label>:209                                     ; preds = %7
  %210 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str4, i32 0, i32 0))
  store i32 2, i32* %blk7, align 4
  br label %211

; <label>:211                                     ; preds = %418, %209
  %212 = load i32* %blk7, align 4
  %213 = load i32* %5, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sdiv i32 %214, 16
  %216 = icmp sle i32 %212, %215
  br i1 %216, label %217, label %421

; <label>:217                                     ; preds = %211
  %218 = load i32* %blk7, align 4
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %b_index_x8, align 4
  br label %220

; <label>:220                                     ; preds = %414, %217
  %221 = load i32* %b_index_x8, align 4
  %222 = load i32* %5, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sdiv i32 %223, 16
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %417

; <label>:226                                     ; preds = %220
  %227 = load i32* %5, align 4
  %228 = sub nsw i32 %227, 1
  %229 = sdiv i32 %228, 16
  %230 = load i32* %blk7, align 4
  %231 = add nsw i32 %229, %230
  %232 = sub nsw i32 %231, 2
  %233 = load i32* %b_index_x8, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %b_index_y9, align 4
  store i32 0, i32* %i12, align 4
  br label %235

; <label>:235                                     ; preds = %270, %226
  %236 = load i32* %i12, align 4
  %237 = icmp slt i32 %236, 16
  br i1 %237, label %238, label %273

; <label>:238                                     ; preds = %235
  store i32 0, i32* %j13, align 4
  br label %239

; <label>:239                                     ; preds = %266, %238
  %240 = load i32* %j13, align 4
  %241 = icmp slt i32 %240, 16
  br i1 %241, label %242, label %269

; <label>:242                                     ; preds = %239
  %243 = load i32* %5, align 4
  %244 = load i32* %b_index_y9, align 4
  %245 = mul nsw i32 %244, 16
  %246 = load i32* %i12, align 4
  %247 = add nsw i32 %245, %246
  %248 = add nsw i32 %247, 1
  %249 = mul nsw i32 %243, %248
  %250 = load i32* %b_index_x8, align 4
  %251 = mul nsw i32 %250, 16
  %252 = add nsw i32 %249, %251
  %253 = load i32* %j13, align 4
  %254 = add nsw i32 %252, %253
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = load i32** %3, align 8
  %258 = getelementptr inbounds i32* %257, i64 %256
  %259 = load i32* %258, align 4
  %260 = load i32* %i12, align 4
  %261 = mul nsw i32 %260, 16
  %262 = load i32* %j13, align 4
  %263 = add nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [256 x i32]* %reference_l11, i32 0, i64 %264
  store i32 %259, i32* %265, align 4
  br label %266

; <label>:266                                     ; preds = %242
  %267 = load i32* %j13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %j13, align 4
  br label %239

; <label>:269                                     ; preds = %239
  br label %270

; <label>:270                                     ; preds = %269
  %271 = load i32* %i12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %i12, align 4
  br label %235

; <label>:273                                     ; preds = %235
  store i32 0, i32* %i14, align 4
  br label %274

; <label>:274                                     ; preds = %307, %273
  %275 = load i32* %i14, align 4
  %276 = icmp slt i32 %275, 17
  br i1 %276, label %277, label %310

; <label>:277                                     ; preds = %274
  store i32 0, i32* %j15, align 4
  br label %278

; <label>:278                                     ; preds = %303, %277
  %279 = load i32* %j15, align 4
  %280 = icmp slt i32 %279, 17
  br i1 %280, label %281, label %306

; <label>:281                                     ; preds = %278
  %282 = load i32* %5, align 4
  %283 = load i32* %b_index_y9, align 4
  %284 = mul nsw i32 %283, 16
  %285 = load i32* %i14, align 4
  %286 = add nsw i32 %284, %285
  %287 = mul nsw i32 %282, %286
  %288 = load i32* %b_index_x8, align 4
  %289 = mul nsw i32 %288, 16
  %290 = add nsw i32 %287, %289
  %291 = load i32* %j15, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = load i32** %1, align 8
  %295 = getelementptr inbounds i32* %294, i64 %293
  %296 = load i32* %295, align 4
  %297 = load i32* %i14, align 4
  %298 = mul nsw i32 %297, 17
  %299 = load i32* %j15, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %301
  store i32 %296, i32* %302, align 4
  br label %303

; <label>:303                                     ; preds = %281
  %304 = load i32* %j15, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %j15, align 4
  br label %278

; <label>:306                                     ; preds = %278
  br label %307

; <label>:307                                     ; preds = %306
  %308 = load i32* %i14, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %i14, align 4
  br label %274

; <label>:310                                     ; preds = %274
  store i32 1, i32* %i16, align 4
  br label %311

; <label>:311                                     ; preds = %369, %310
  %312 = load i32* %i16, align 4
  %313 = icmp slt i32 %312, 17
  br i1 %313, label %314, label %372

; <label>:314                                     ; preds = %311
  store i32 1, i32* %j17, align 4
  br label %315

; <label>:315                                     ; preds = %365, %314
  %316 = load i32* %j17, align 4
  %317 = icmp slt i32 %316, 17
  br i1 %317, label %318, label %368

; <label>:318                                     ; preds = %315
  %319 = load i32* %i16, align 4
  %320 = sub nsw i32 %319, 1
  %321 = mul nsw i32 %320, 17
  %322 = load i32* %j17, align 4
  %323 = add nsw i32 %321, %322
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %325
  %327 = load i32* %326, align 4
  %328 = load i32* %i16, align 4
  %329 = sub nsw i32 %328, 1
  %330 = mul nsw i32 %329, 16
  %331 = load i32* %j17, align 4
  %332 = add nsw i32 %330, %331
  %333 = sub nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [256 x i32]* %reference_l11, i32 0, i64 %334
  %336 = load i32* %335, align 4
  %337 = add nsw i32 %327, %336
  %338 = load i32* %i16, align 4
  %339 = mul nsw i32 %338, 17
  %340 = load i32* %j17, align 4
  %341 = add nsw i32 %339, %340
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %343
  %345 = load i32* %344, align 4
  %346 = load i32* %6, align 4
  %347 = sub nsw i32 %345, %346
  %348 = load i32* %i16, align 4
  %349 = sub nsw i32 %348, 1
  %350 = mul nsw i32 %349, 17
  %351 = load i32* %j17, align 4
  %352 = add nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %353
  %355 = load i32* %354, align 4
  %356 = load i32* %6, align 4
  %357 = sub nsw i32 %355, %356
  %358 = call i32 @_Z7maximumiii(i32 %337, i32 %347, i32 %357)
  %359 = load i32* %i16, align 4
  %360 = mul nsw i32 %359, 17
  %361 = load i32* %j17, align 4
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %363
  store i32 %358, i32* %364, align 4
  br label %365

; <label>:365                                     ; preds = %318
  %366 = load i32* %j17, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %j17, align 4
  br label %315

; <label>:368                                     ; preds = %315
  br label %369

; <label>:369                                     ; preds = %368
  %370 = load i32* %i16, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %i16, align 4
  br label %311

; <label>:372                                     ; preds = %311
  store i32 0, i32* %i18, align 4
  br label %373

; <label>:373                                     ; preds = %410, %372
  %374 = load i32* %i18, align 4
  %375 = icmp slt i32 %374, 16
  br i1 %375, label %376, label %413

; <label>:376                                     ; preds = %373
  store i32 0, i32* %j19, align 4
  br label %377

; <label>:377                                     ; preds = %406, %376
  %378 = load i32* %j19, align 4
  %379 = icmp slt i32 %378, 16
  br i1 %379, label %380, label %409

; <label>:380                                     ; preds = %377
  %381 = load i32* %i18, align 4
  %382 = add nsw i32 %381, 1
  %383 = mul nsw i32 %382, 17
  %384 = load i32* %j19, align 4
  %385 = add nsw i32 %383, %384
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [289 x i32]* %input_itemsets_l10, i32 0, i64 %387
  %389 = load i32* %388, align 4
  %390 = load i32* %5, align 4
  %391 = load i32* %b_index_y9, align 4
  %392 = mul nsw i32 %391, 16
  %393 = load i32* %i18, align 4
  %394 = add nsw i32 %392, %393
  %395 = add nsw i32 %394, 1
  %396 = mul nsw i32 %390, %395
  %397 = load i32* %b_index_x8, align 4
  %398 = mul nsw i32 %397, 16
  %399 = add nsw i32 %396, %398
  %400 = load i32* %j19, align 4
  %401 = add nsw i32 %399, %400
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = load i32** %1, align 8
  %405 = getelementptr inbounds i32* %404, i64 %403
  store i32 %389, i32* %405, align 4
  br label %406

; <label>:406                                     ; preds = %380
  %407 = load i32* %j19, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %j19, align 4
  br label %377

; <label>:409                                     ; preds = %377
  br label %410

; <label>:410                                     ; preds = %409
  %411 = load i32* %i18, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %i18, align 4
  br label %373

; <label>:413                                     ; preds = %373
  br label %414

; <label>:414                                     ; preds = %413
  %415 = load i32* %b_index_x8, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %b_index_x8, align 4
  br label %220

; <label>:417                                     ; preds = %220
  br label %418

; <label>:418                                     ; preds = %417
  %419 = load i32* %blk7, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %blk7, align 4
  br label %211

; <label>:421                                     ; preds = %211
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
