; ModuleID = 'ex_particle_OPENMP_seq.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M = global i64 2147483647, align 8
@A = global i32 1103515245, align 4
@C = global i32 12345, align 4
@.str = private unnamed_addr constant [10 x i8] c"problem 1\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"XE: %lf\0A\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"YE: %lf\0A\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"openmp.out -x <dimX> -y <dimY> -z <Nfr> -np <Nparticles>\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"ERROR: dimX input is incorrect\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"dimX must be > 0\0A\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"ERROR: dimY input is incorrect\00", align 1
@.str14 = private unnamed_addr constant [18 x i8] c"dimY must be > 0\0A\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"ERROR: Number of frames input is incorrect\00", align 1
@.str16 = private unnamed_addr constant [30 x i8] c"number of frames must be > 0\0A\00", align 1
@.str17 = private unnamed_addr constant [46 x i8] c"ERROR: Number of particles input is incorrect\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"Number of particles must be > 0\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @elapsed_time(i64 %start_time, i64 %end_time) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %start_time, i64* %1, align 8
  store i64 %end_time, i64* %2, align 8
  %3 = load i64* %2, align 8
  %4 = load i64* %1, align 8
  %5 = sub nsw i64 %3, %4
  %6 = sitofp i64 %5 to float
  %7 = fdiv float %6, 1.000000e+06
  ret float %7
}

; Function Attrs: nounwind uwtable
define double @roundDouble(double %value) #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %newValue = alloca i32, align 4
  store double %value, double* %2, align 8
  %3 = load double* %2, align 8
  %4 = fptosi double %3 to i32
  store i32 %4, i32* %newValue, align 4
  %5 = load double* %2, align 8
  %6 = load i32* %newValue, align 4
  %7 = sitofp i32 %6 to double
  %8 = fsub double %5, %7
  %9 = fcmp olt double %8, 5.000000e-01
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load i32* %newValue, align 4
  %12 = sitofp i32 %11 to double
  store double %12, double* %1
  br label %17

; <label>:13                                      ; preds = %0
  %14 = load i32* %newValue, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %newValue, align 4
  %16 = sitofp i32 %14 to double
  store double %16, double* %1
  br label %17

; <label>:17                                      ; preds = %13, %10
  %18 = load double* %1
  ret double %18
}

; Function Attrs: nounwind uwtable
define void @setIf(i32 %testValue, i32 %newValue, i32* %array3D, i32* %dimX, i32* %dimY, i32* %dimZ) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %testValue, i32* %1, align 4
  store i32 %newValue, i32* %2, align 4
  store i32* %array3D, i32** %3, align 8
  store i32* %dimX, i32** %4, align 8
  store i32* %dimY, i32** %5, align 8
  store i32* %dimZ, i32** %6, align 8
  store i32 0, i32* %x, align 4
  br label %7

; <label>:7                                       ; preds = %73, %0
  %8 = load i32* %x, align 4
  %9 = load i32** %4, align 8
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %76

; <label>:12                                      ; preds = %7
  store i32 0, i32* %y, align 4
  br label %13

; <label>:13                                      ; preds = %69, %12
  %14 = load i32* %y, align 4
  %15 = load i32** %5, align 8
  %16 = load i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %72

; <label>:18                                      ; preds = %13
  store i32 0, i32* %z, align 4
  br label %19

; <label>:19                                      ; preds = %65, %18
  %20 = load i32* %z, align 4
  %21 = load i32** %6, align 8
  %22 = load i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %68

; <label>:24                                      ; preds = %19
  %25 = load i32* %x, align 4
  %26 = load i32** %5, align 8
  %27 = load i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = load i32** %6, align 8
  %30 = load i32* %29, align 4
  %31 = mul nsw i32 %28, %30
  %32 = load i32* %y, align 4
  %33 = load i32** %6, align 8
  %34 = load i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  %36 = add nsw i32 %31, %35
  %37 = load i32* %z, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i32** %3, align 8
  %41 = getelementptr inbounds i32* %40, i64 %39
  %42 = load i32* %41, align 4
  %43 = load i32* %1, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

; <label>:45                                      ; preds = %24
  %46 = load i32* %2, align 4
  %47 = load i32* %x, align 4
  %48 = load i32** %5, align 8
  %49 = load i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = load i32** %6, align 8
  %52 = load i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = load i32* %y, align 4
  %55 = load i32** %6, align 8
  %56 = load i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %53, %57
  %59 = load i32* %z, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = load i32** %3, align 8
  %63 = getelementptr inbounds i32* %62, i64 %61
  store i32 %46, i32* %63, align 4
  br label %64

; <label>:64                                      ; preds = %45, %24
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i32* %z, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %z, align 4
  br label %19

; <label>:68                                      ; preds = %19
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32* %y, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %y, align 4
  br label %13

; <label>:72                                      ; preds = %13
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i32* %x, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %x, align 4
  br label %7

; <label>:76                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define void @addNoise(i32* %array3D, i32* %dimX, i32* %dimY, i32* %dimZ) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32* %array3D, i32** %1, align 8
  store i32* %dimX, i32** %2, align 8
  store i32* %dimY, i32** %3, align 8
  store i32* %dimZ, i32** %4, align 8
  store i32 0, i32* %x, align 4
  br label %5

; <label>:5                                       ; preds = %67, %0
  %6 = load i32* %x, align 4
  %7 = load i32** %2, align 8
  %8 = load i32* %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %70

; <label>:10                                      ; preds = %5
  store i32 0, i32* %y, align 4
  br label %11

; <label>:11                                      ; preds = %63, %10
  %12 = load i32* %y, align 4
  %13 = load i32** %3, align 8
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %66

; <label>:16                                      ; preds = %11
  store i32 0, i32* %z, align 4
  br label %17

; <label>:17                                      ; preds = %59, %16
  %18 = load i32* %z, align 4
  %19 = load i32** %4, align 8
  %20 = load i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %62

; <label>:22                                      ; preds = %17
  %23 = load i32* %x, align 4
  %24 = load i32** %3, align 8
  %25 = load i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = load i32** %4, align 8
  %28 = load i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  %30 = load i32* %y, align 4
  %31 = load i32** %4, align 8
  %32 = load i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  %34 = add nsw i32 %29, %33
  %35 = load i32* %z, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load i32** %1, align 8
  %39 = getelementptr inbounds i32* %38, i64 %37
  %40 = load i32* %39, align 4
  %41 = add nsw i32 %40, 2
  %42 = load i32* %x, align 4
  %43 = load i32** %3, align 8
  %44 = load i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = load i32** %4, align 8
  %47 = load i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = load i32* %y, align 4
  %50 = load i32** %4, align 8
  %51 = load i32* %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %48, %52
  %54 = load i32* %z, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i32** %1, align 8
  %58 = getelementptr inbounds i32* %57, i64 %56
  store i32 %41, i32* %58, align 4
  br label %59

; <label>:59                                      ; preds = %22
  %60 = load i32* %z, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %z, align 4
  br label %17

; <label>:62                                      ; preds = %17
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32* %y, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %y, align 4
  br label %11

; <label>:66                                      ; preds = %11
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32* %x, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %x, align 4
  br label %5

; <label>:70                                      ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define void @strelDisk(i32* %disk, i32 %radius) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %diameter = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %distance = alloca double, align 8
  store i32* %disk, i32** %1, align 8
  store i32 %radius, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = mul nsw i32 %3, 2
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %diameter, align 4
  store i32 0, i32* %x, align 4
  br label %6

; <label>:6                                       ; preds = %48, %0
  %7 = load i32* %x, align 4
  %8 = load i32* %diameter, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %51

; <label>:10                                      ; preds = %6
  store i32 0, i32* %y, align 4
  br label %11

; <label>:11                                      ; preds = %44, %10
  %12 = load i32* %y, align 4
  %13 = load i32* %diameter, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

; <label>:15                                      ; preds = %11
  %16 = load i32* %x, align 4
  %17 = load i32* %2, align 4
  %18 = sub nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = sitofp i32 %19 to double
  %21 = call double @pow(double %20, double 2.000000e+00) #5
  %22 = load i32* %y, align 4
  %23 = load i32* %2, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to double
  %27 = call double @pow(double %26, double 2.000000e+00) #5
  %28 = fadd double %21, %27
  %29 = call double @sqrt(double %28) #5
  store double %29, double* %distance, align 8
  %30 = load double* %distance, align 8
  %31 = load i32* %2, align 4
  %32 = sitofp i32 %31 to double
  %33 = fcmp olt double %30, %32
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %15
  %35 = load i32* %x, align 4
  %36 = load i32* %diameter, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32* %y, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = load i32** %1, align 8
  %42 = getelementptr inbounds i32* %41, i64 %40
  store i32 1, i32* %42, align 4
  br label %43

; <label>:43                                      ; preds = %34, %15
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32* %y, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %y, align 4
  br label %11

; <label>:47                                      ; preds = %11
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %x, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %x, align 4
  br label %6

; <label>:51                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define void @dilate_matrix(i32* %matrix, i32 %posX, i32 %posY, i32 %posZ, i32 %dimX, i32 %dimY, i32 %dimZ, i32 %error) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %startX = alloca i32, align 4
  %startY = alloca i32, align 4
  %endX = alloca i32, align 4
  %endY = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %distance = alloca double, align 8
  store i32* %matrix, i32** %1, align 8
  store i32 %posX, i32* %2, align 4
  store i32 %posY, i32* %3, align 4
  store i32 %posZ, i32* %4, align 4
  store i32 %dimX, i32* %5, align 4
  store i32 %dimY, i32* %6, align 4
  store i32 %dimZ, i32* %7, align 4
  store i32 %error, i32* %8, align 4
  %9 = load i32* %2, align 4
  %10 = load i32* %8, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %startX, align 4
  br label %12

; <label>:12                                      ; preds = %15, %0
  %13 = load i32* %startX, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %12
  %16 = load i32* %startX, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %startX, align 4
  br label %12

; <label>:18                                      ; preds = %12
  %19 = load i32* %3, align 4
  %20 = load i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %startY, align 4
  br label %22

; <label>:22                                      ; preds = %25, %18
  %23 = load i32* %startY, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %22
  %26 = load i32* %startY, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %startY, align 4
  br label %22

; <label>:28                                      ; preds = %22
  %29 = load i32* %2, align 4
  %30 = load i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %endX, align 4
  br label %32

; <label>:32                                      ; preds = %36, %28
  %33 = load i32* %endX, align 4
  %34 = load i32* %5, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %32
  %37 = load i32* %endX, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %endX, align 4
  br label %32

; <label>:39                                      ; preds = %32
  %40 = load i32* %3, align 4
  %41 = load i32* %8, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %endY, align 4
  br label %43

; <label>:43                                      ; preds = %47, %39
  %44 = load i32* %endY, align 4
  %45 = load i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %43
  %48 = load i32* %endY, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %endY, align 4
  br label %43

; <label>:50                                      ; preds = %43
  %51 = load i32* %startX, align 4
  store i32 %51, i32* %x, align 4
  br label %52

; <label>:52                                      ; preds = %99, %50
  %53 = load i32* %x, align 4
  %54 = load i32* %endX, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %102

; <label>:56                                      ; preds = %52
  %57 = load i32* %startY, align 4
  store i32 %57, i32* %y, align 4
  br label %58

; <label>:58                                      ; preds = %95, %56
  %59 = load i32* %y, align 4
  %60 = load i32* %endY, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %98

; <label>:62                                      ; preds = %58
  %63 = load i32* %x, align 4
  %64 = load i32* %2, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sitofp i32 %65 to double
  %67 = call double @pow(double %66, double 2.000000e+00) #5
  %68 = load i32* %y, align 4
  %69 = load i32* %3, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sitofp i32 %70 to double
  %72 = call double @pow(double %71, double 2.000000e+00) #5
  %73 = fadd double %67, %72
  %74 = call double @sqrt(double %73) #5
  store double %74, double* %distance, align 8
  %75 = load double* %distance, align 8
  %76 = load i32* %8, align 4
  %77 = sitofp i32 %76 to double
  %78 = fcmp olt double %75, %77
  br i1 %78, label %79, label %94

; <label>:79                                      ; preds = %62
  %80 = load i32* %x, align 4
  %81 = load i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32* %7, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32* %y, align 4
  %86 = load i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = load i32* %4, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = load i32** %1, align 8
  %93 = getelementptr inbounds i32* %92, i64 %91
  store i32 1, i32* %93, align 4
  br label %94

; <label>:94                                      ; preds = %79, %62
  br label %95

; <label>:95                                      ; preds = %94
  %96 = load i32* %y, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %y, align 4
  br label %58

; <label>:98                                      ; preds = %58
  br label %99

; <label>:99                                      ; preds = %98
  %100 = load i32* %x, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %x, align 4
  br label %52

; <label>:102                                     ; preds = %52
  ret void
}

; Function Attrs: nounwind uwtable
define void @imdilate_disk(i32* %matrix, i32 %dimX, i32 %dimY, i32 %dimZ, i32 %error, i32* %newMatrix) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32* %matrix, i32** %1, align 8
  store i32 %dimX, i32* %2, align 4
  store i32 %dimY, i32* %3, align 4
  store i32 %dimZ, i32* %4, align 4
  store i32 %error, i32* %5, align 4
  store i32* %newMatrix, i32** %6, align 8
  store i32 0, i32* %z, align 4
  br label %7

; <label>:7                                       ; preds = %56, %0
  %8 = load i32* %z, align 4
  %9 = load i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %59

; <label>:11                                      ; preds = %7
  store i32 0, i32* %x, align 4
  br label %12

; <label>:12                                      ; preds = %52, %11
  %13 = load i32* %x, align 4
  %14 = load i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %55

; <label>:16                                      ; preds = %12
  store i32 0, i32* %y, align 4
  br label %17

; <label>:17                                      ; preds = %48, %16
  %18 = load i32* %y, align 4
  %19 = load i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

; <label>:21                                      ; preds = %17
  %22 = load i32* %x, align 4
  %23 = load i32* %3, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32* %4, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32* %y, align 4
  %28 = load i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  %31 = load i32* %z, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load i32** %1, align 8
  %35 = getelementptr inbounds i32* %34, i64 %33
  %36 = load i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

; <label>:38                                      ; preds = %21
  %39 = load i32** %6, align 8
  %40 = load i32* %x, align 4
  %41 = load i32* %y, align 4
  %42 = load i32* %z, align 4
  %43 = load i32* %2, align 4
  %44 = load i32* %3, align 4
  %45 = load i32* %4, align 4
  %46 = load i32* %5, align 4
  call void @dilate_matrix(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %47

; <label>:47                                      ; preds = %38, %21
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32* %y, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %y, align 4
  br label %17

; <label>:51                                      ; preds = %17
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load i32* %x, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %x, align 4
  br label %12

; <label>:55                                      ; preds = %12
  br label %56

; <label>:56                                      ; preds = %55
  %57 = load i32* %z, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %z, align 4
  br label %7

; <label>:59                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define void @getneighbors(i32* %se, i32 %numOnes, double* %neighbors, i32 %radius) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %neighY = alloca i32, align 4
  %center = alloca i32, align 4
  %diameter = alloca i32, align 4
  store i32* %se, i32** %1, align 8
  store i32 %numOnes, i32* %2, align 4
  store double* %neighbors, double** %3, align 8
  store i32 %radius, i32* %4, align 4
  store i32 0, i32* %neighY, align 4
  %5 = load i32* %4, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %center, align 4
  %7 = load i32* %4, align 4
  %8 = mul nsw i32 %7, 2
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %diameter, align 4
  store i32 0, i32* %x, align 4
  br label %10

; <label>:10                                      ; preds = %57, %0
  %11 = load i32* %x, align 4
  %12 = load i32* %diameter, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %60

; <label>:14                                      ; preds = %10
  store i32 0, i32* %y, align 4
  br label %15

; <label>:15                                      ; preds = %53, %14
  %16 = load i32* %y, align 4
  %17 = load i32* %diameter, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

; <label>:19                                      ; preds = %15
  %20 = load i32* %x, align 4
  %21 = load i32* %diameter, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32* %y, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i32** %1, align 8
  %27 = getelementptr inbounds i32* %26, i64 %25
  %28 = load i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %52

; <label>:30                                      ; preds = %19
  %31 = load i32* %y, align 4
  %32 = load i32* %center, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sitofp i32 %33 to double
  %35 = load i32* %neighY, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = load double** %3, align 8
  %39 = getelementptr inbounds double* %38, i64 %37
  store double %34, double* %39, align 8
  %40 = load i32* %x, align 4
  %41 = load i32* %center, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sitofp i32 %42 to double
  %44 = load i32* %neighY, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = load double** %3, align 8
  %49 = getelementptr inbounds double* %48, i64 %47
  store double %43, double* %49, align 8
  %50 = load i32* %neighY, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %neighY, align 4
  br label %52

; <label>:52                                      ; preds = %30, %19
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load i32* %y, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %y, align 4
  br label %15

; <label>:56                                      ; preds = %15
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i32* %x, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %x, align 4
  br label %10

; <label>:60                                      ; preds = %10
  ret void
}

; Function Attrs: nounwind uwtable
define void @videoSequence(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %k = alloca i32, align 4
  %max_size = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %xk = alloca i32, align 4
  %yk = alloca i32, align 4
  %pos = alloca i32, align 4
  %newMatrix = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32* %I, i32** %1, align 8
  store i32 %IszX, i32* %2, align 4
  store i32 %IszY, i32* %3, align 4
  store i32 %Nfr, i32* %4, align 4
  %5 = load i32* %2, align 4
  %6 = load i32* %3, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32* %4, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %max_size, align 4
  %10 = load i32* %3, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 2.000000e+00
  %13 = call double @roundDouble(double %12)
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %x0, align 4
  %15 = load i32* %2, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.000000e+00
  %18 = call double @roundDouble(double %17)
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %y0, align 4
  %20 = load i32* %x0, align 4
  %21 = load i32* %3, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32* %4, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32* %y0, align 4
  %26 = load i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %24, %27
  %29 = add nsw i32 %28, 0
  %30 = sext i32 %29 to i64
  %31 = load i32** %1, align 8
  %32 = getelementptr inbounds i32* %31, i64 %30
  store i32 1, i32* %32, align 4
  store i32 1, i32* %k, align 4
  br label %33

; <label>:33                                      ; preds = %69, %0
  %34 = load i32* %k, align 4
  %35 = load i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %72

; <label>:37                                      ; preds = %33
  %38 = load i32* %x0, align 4
  %39 = load i32* %k, align 4
  %40 = sub nsw i32 %39, 1
  %41 = add nsw i32 %38, %40
  %42 = call i32 @abs(i32 %41) #6
  store i32 %42, i32* %xk, align 4
  %43 = load i32* %y0, align 4
  %44 = load i32* %k, align 4
  %45 = sub nsw i32 %44, 1
  %46 = mul nsw i32 2, %45
  %47 = sub nsw i32 %43, %46
  %48 = call i32 @abs(i32 %47) #6
  store i32 %48, i32* %yk, align 4
  %49 = load i32* %yk, align 4
  %50 = load i32* %3, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32* %xk, align 4
  %55 = load i32* %4, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  %58 = load i32* %k, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %pos, align 4
  %60 = load i32* %pos, align 4
  %61 = load i32* %max_size, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %37
  store i32 0, i32* %pos, align 4
  br label %64

; <label>:64                                      ; preds = %63, %37
  %65 = load i32* %pos, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32** %1, align 8
  %68 = getelementptr inbounds i32* %67, i64 %66
  store i32 1, i32* %68, align 4
  br label %69

; <label>:69                                      ; preds = %64
  %70 = load i32* %k, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %k, align 4
  br label %33

; <label>:72                                      ; preds = %33
  %73 = load i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = load i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %75, %77
  %79 = load i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %78, %80
  %82 = call noalias i8* @malloc(i64 %81) #5
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %newMatrix, align 8
  %84 = load i32** %1, align 8
  %85 = load i32* %2, align 4
  %86 = load i32* %3, align 4
  %87 = load i32* %4, align 4
  %88 = load i32** %newMatrix, align 8
  call void @imdilate_disk(i32* %84, i32 %85, i32 %86, i32 %87, i32 5, i32* %88)
  store i32 0, i32* %x, align 4
  br label %89

; <label>:89                                      ; preds = %157, %72
  %90 = load i32* %x, align 4
  %91 = load i32* %2, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %160

; <label>:93                                      ; preds = %89
  store i32 0, i32* %y, align 4
  br label %94

; <label>:94                                      ; preds = %153, %93
  %95 = load i32* %y, align 4
  %96 = load i32* %3, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %156

; <label>:98                                      ; preds = %94
  store i32 0, i32* %k, align 4
  br label %99

; <label>:99                                      ; preds = %149, %98
  %100 = load i32* %k, align 4
  %101 = load i32* %4, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %152

; <label>:103                                     ; preds = %99
  %104 = load i32* %x, align 4
  %105 = load i32* %3, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32* %4, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32* %y, align 4
  %110 = load i32* %4, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = load i32* %k, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32* %max_size, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %103
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0))
  br label %119

; <label>:119                                     ; preds = %117, %103
  %120 = load i32* %x, align 4
  %121 = load i32* %3, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32* %4, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32* %y, align 4
  %126 = load i32* %4, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %124, %127
  %129 = load i32* %k, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = load i32** %newMatrix, align 8
  %133 = getelementptr inbounds i32* %132, i64 %131
  %134 = load i32* %133, align 4
  %135 = load i32* %x, align 4
  %136 = load i32* %3, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32* %4, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32* %y, align 4
  %141 = load i32* %4, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  %144 = load i32* %k, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = load i32** %1, align 8
  %148 = getelementptr inbounds i32* %147, i64 %146
  store i32 %134, i32* %148, align 4
  br label %149

; <label>:149                                     ; preds = %119
  %150 = load i32* %k, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %k, align 4
  br label %99

; <label>:152                                     ; preds = %99
  br label %153

; <label>:153                                     ; preds = %152
  %154 = load i32* %y, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %y, align 4
  br label %94

; <label>:156                                     ; preds = %94
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i32* %x, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %x, align 4
  br label %89

; <label>:160                                     ; preds = %89
  %161 = load i32** %newMatrix, align 8
  %162 = bitcast i32* %161 to i8*
  call void @free(i8* %162) #5
  %163 = load i32** %1, align 8
  call void @setIf(i32 0, i32 100, i32* %163, i32* %2, i32* %3, i32* %4)
  %164 = load i32** %1, align 8
  call void @setIf(i32 1, i32 228, i32* %164, i32* %2, i32* %3, i32* %4)
  %165 = load i32** %1, align 8
  call void @addNoise(i32* %165, i32* %2, i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double @calcLikelihoodSum(i32* %I, i32* %ind, i32 %numOnes) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %likelihoodSum = alloca double, align 8
  %y = alloca i32, align 4
  store i32* %I, i32** %1, align 8
  store i32* %ind, i32** %2, align 8
  store i32 %numOnes, i32* %3, align 4
  store double 0.000000e+00, double* %likelihoodSum, align 8
  store i32 0, i32* %y, align 4
  br label %4

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %y, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %40

; <label>:8                                       ; preds = %4
  %9 = load i32* %y, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %2, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32** %1, align 8
  %16 = getelementptr inbounds i32* %15, i64 %14
  %17 = load i32* %16, align 4
  %18 = sub nsw i32 %17, 100
  %19 = sitofp i32 %18 to double
  %20 = call double @pow(double %19, double 2.000000e+00) #5
  %21 = load i32* %y, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32** %2, align 8
  %24 = getelementptr inbounds i32* %23, i64 %22
  %25 = load i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32** %1, align 8
  %28 = getelementptr inbounds i32* %27, i64 %26
  %29 = load i32* %28, align 4
  %30 = sub nsw i32 %29, 228
  %31 = sitofp i32 %30 to double
  %32 = call double @pow(double %31, double 2.000000e+00) #5
  %33 = fsub double %20, %32
  %34 = fdiv double %33, 5.000000e+01
  %35 = load double* %likelihoodSum, align 8
  %36 = fadd double %35, %34
  store double %36, double* %likelihoodSum, align 8
  br label %37

; <label>:37                                      ; preds = %8
  %38 = load i32* %y, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %y, align 4
  br label %4

; <label>:40                                      ; preds = %4
  %41 = load double* %likelihoodSum, align 8
  ret double %41
}

; Function Attrs: nounwind uwtable
define i32 @findIndex(double* %CDF, i32 %lengthCDF, double %value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  store double* %CDF, double** %2, align 8
  store i32 %lengthCDF, i32* %3, align 4
  store double %value, double* %4, align 8
  store i32 -1, i32* %index, align 4
  store i32 0, i32* %x, align 4
  br label %5

; <label>:5                                       ; preds = %20, %0
  %6 = load i32* %x, align 4
  %7 = load i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

; <label>:9                                       ; preds = %5
  %10 = load i32* %x, align 4
  %11 = sext i32 %10 to i64
  %12 = load double** %2, align 8
  %13 = getelementptr inbounds double* %12, i64 %11
  %14 = load double* %13, align 8
  %15 = load double* %4, align 8
  %16 = fcmp oge double %14, %15
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %9
  %18 = load i32* %x, align 4
  store i32 %18, i32* %index, align 4
  br label %23

; <label>:19                                      ; preds = %9
  br label %20

; <label>:20                                      ; preds = %19
  %21 = load i32* %x, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %x, align 4
  br label %5

; <label>:23                                      ; preds = %17, %5
  %24 = load i32* %index, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %23
  %27 = load i32* %3, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %1
  br label %31

; <label>:29                                      ; preds = %23
  %30 = load i32* %index, align 4
  store i32 %30, i32* %1
  br label %31

; <label>:31                                      ; preds = %29, %26
  %32 = load i32* %1
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @findIndexBin(double* %CDF, i32 %beginIndex, i32 %endIndex, double %value) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %middleIndex = alloca i32, align 4
  store double* %CDF, double** %2, align 8
  store i32 %beginIndex, i32* %3, align 4
  store i32 %endIndex, i32* %4, align 4
  store double %value, double* %5, align 8
  %6 = load i32* %4, align 4
  %7 = load i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 -1, i32* %1
  br label %94

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load i32* %4, align 4
  %13 = load i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %middleIndex, align 4
  %17 = load i32* %middleIndex, align 4
  %18 = sext i32 %17 to i64
  %19 = load double** %2, align 8
  %20 = getelementptr inbounds double* %19, i64 %18
  %21 = load double* %20, align 8
  %22 = load double* %5, align 8
  %23 = fcmp oge double %21, %22
  br i1 %23, label %24, label %72

; <label>:24                                      ; preds = %10
  %25 = load i32* %middleIndex, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24
  %28 = load i32* %middleIndex, align 4
  store i32 %28, i32* %1
  br label %94

; <label>:29                                      ; preds = %24
  %30 = load i32* %middleIndex, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load double** %2, align 8
  %34 = getelementptr inbounds double* %33, i64 %32
  %35 = load double* %34, align 8
  %36 = load double* %5, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %29
  %39 = load i32* %middleIndex, align 4
  store i32 %39, i32* %1
  br label %94

; <label>:40                                      ; preds = %29
  %41 = load i32* %middleIndex, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load double** %2, align 8
  %45 = getelementptr inbounds double* %44, i64 %43
  %46 = load double* %45, align 8
  %47 = load double* %5, align 8
  %48 = fcmp oeq double %46, %47
  br i1 %48, label %49, label %69

; <label>:49                                      ; preds = %40
  br label %50

; <label>:50                                      ; preds = %64, %49
  %51 = load i32* %middleIndex, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

; <label>:53                                      ; preds = %50
  %54 = load i32* %middleIndex, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load double** %2, align 8
  %58 = getelementptr inbounds double* %57, i64 %56
  %59 = load double* %58, align 8
  %60 = load double* %5, align 8
  %61 = fcmp oeq double %59, %60
  br label %62

; <label>:62                                      ; preds = %53, %50
  %63 = phi i1 [ false, %50 ], [ %61, %53 ]
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %62
  %65 = load i32* %middleIndex, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %middleIndex, align 4
  br label %50

; <label>:67                                      ; preds = %62
  %68 = load i32* %middleIndex, align 4
  store i32 %68, i32* %1
  br label %94

; <label>:69                                      ; preds = %40
  br label %70

; <label>:70                                      ; preds = %69
  br label %71

; <label>:71                                      ; preds = %70
  br label %72

; <label>:72                                      ; preds = %71, %10
  %73 = load i32* %middleIndex, align 4
  %74 = sext i32 %73 to i64
  %75 = load double** %2, align 8
  %76 = getelementptr inbounds double* %75, i64 %74
  %77 = load double* %76, align 8
  %78 = load double* %5, align 8
  %79 = fcmp ogt double %77, %78
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %72
  %81 = load double** %2, align 8
  %82 = load i32* %3, align 4
  %83 = load i32* %middleIndex, align 4
  %84 = add nsw i32 %83, 1
  %85 = load double* %5, align 8
  %86 = call i32 @findIndexBin(double* %81, i32 %82, i32 %84, double %85)
  store i32 %86, i32* %1
  br label %94

; <label>:87                                      ; preds = %72
  %88 = load double** %2, align 8
  %89 = load i32* %middleIndex, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32* %4, align 4
  %92 = load double* %5, align 8
  %93 = call i32 @findIndexBin(double* %88, i32 %90, i32 %91, double %92)
  store i32 %93, i32* %1
  br label %94

; <label>:94                                      ; preds = %87, %80, %67, %38, %27, %9
  %95 = load i32* %1
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define void @particleFilter(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr, i32 %Nparticles) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %max_size = alloca i32, align 4
  %xe = alloca double, align 8
  %ye = alloca double, align 8
  %radius = alloca i32, align 4
  %diameter = alloca i32, align 4
  %disk = alloca i32*, align 8
  %countOnes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %forLoopCount = alloca i32, align 4
  %objxy = alloca double*, align 8
  %weights = alloca double*, align 8
  %likelihood = alloca double*, align 8
  %arrayX = alloca double*, align 8
  %arrayY = alloca double*, align 8
  %xj = alloca double*, align 8
  %yj = alloca double*, align 8
  %CDF = alloca double*, align 8
  %u = alloca double*, align 8
  %ind = alloca i32*, align 8
  %k = alloca i32, align 4
  %indX = alloca i32, align 4
  %indY = alloca i32, align 4
  %sumWeights = alloca double, align 8
  %distance = alloca double, align 8
  %u1 = alloca double, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %I, i32** %1, align 8
  store i32 %IszX, i32* %2, align 4
  store i32 %IszY, i32* %3, align 4
  store i32 %Nfr, i32* %4, align 4
  store i32 %Nparticles, i32* %5, align 4
  %6 = load i32* %2, align 4
  %7 = load i32* %3, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %4, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %max_size, align 4
  %11 = load i32* %3, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 2.000000e+00
  %14 = call double @roundDouble(double %13)
  store double %14, double* %xe, align 8
  %15 = load i32* %2, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.000000e+00
  %18 = call double @roundDouble(double %17)
  store double %18, double* %ye, align 8
  store i32 5, i32* %radius, align 4
  %19 = load i32* %radius, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %diameter, align 4
  %22 = load i32* %diameter, align 4
  %23 = load i32* %diameter, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = call noalias i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %disk, align 8
  %29 = load i32** %disk, align 8
  %30 = load i32* %radius, align 4
  call void @strelDisk(i32* %29, i32 %30)
  store i32 0, i32* %countOnes, align 4
  store i32 0, i32* %forLoopCount, align 4
  store i32 0, i32* %x, align 4
  br label %31

; <label>:31                                      ; preds = %61, %0
  %32 = load i32* %x, align 4
  %33 = load i32* %diameter, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %64

; <label>:35                                      ; preds = %31
  store i32 0, i32* %y, align 4
  br label %36

; <label>:36                                      ; preds = %57, %35
  %37 = load i32* %y, align 4
  %38 = load i32* %diameter, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

; <label>:40                                      ; preds = %36
  %41 = load i32* %forLoopCount, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %forLoopCount, align 4
  %43 = load i32* %x, align 4
  %44 = load i32* %diameter, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32* %y, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = load i32** %disk, align 8
  %50 = getelementptr inbounds i32* %49, i64 %48
  %51 = load i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %40
  %54 = load i32* %countOnes, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %countOnes, align 4
  br label %56

; <label>:56                                      ; preds = %53, %40
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i32* %y, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %y, align 4
  br label %36

; <label>:60                                      ; preds = %36
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i32* %x, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %x, align 4
  br label %31

; <label>:64                                      ; preds = %31
  %65 = load i32* %countOnes, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = call noalias i8* @malloc(i64 %68) #5
  %70 = bitcast i8* %69 to double*
  store double* %70, double** %objxy, align 8
  %71 = load i32** %disk, align 8
  %72 = load i32* %countOnes, align 4
  %73 = load double** %objxy, align 8
  %74 = load i32* %radius, align 4
  call void @getneighbors(i32* %71, i32 %72, double* %73, i32 %74)
  %75 = load i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = call noalias i8* @malloc(i64 %77) #5
  %79 = bitcast i8* %78 to double*
  store double* %79, double** %weights, align 8
  store i32 0, i32* %x, align 4
  br label %80

; <label>:80                                      ; preds = %92, %64
  %81 = load i32* %x, align 4
  %82 = load i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

; <label>:84                                      ; preds = %80
  %85 = load i32* %5, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double 1.000000e+00, %86
  %88 = load i32* %x, align 4
  %89 = sext i32 %88 to i64
  %90 = load double** %weights, align 8
  %91 = getelementptr inbounds double* %90, i64 %89
  store double %87, double* %91, align 8
  br label %92

; <label>:92                                      ; preds = %84
  %93 = load i32* %x, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %x, align 4
  br label %80

; <label>:95                                      ; preds = %80
  %96 = load i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = call noalias i8* @malloc(i64 %98) #5
  %100 = bitcast i8* %99 to double*
  store double* %100, double** %likelihood, align 8
  %101 = load i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 8, %102
  %104 = call noalias i8* @malloc(i64 %103) #5
  %105 = bitcast i8* %104 to double*
  store double* %105, double** %arrayX, align 8
  %106 = load i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = call noalias i8* @malloc(i64 %108) #5
  %110 = bitcast i8* %109 to double*
  store double* %110, double** %arrayY, align 8
  %111 = load i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 8, %112
  %114 = call noalias i8* @malloc(i64 %113) #5
  %115 = bitcast i8* %114 to double*
  store double* %115, double** %xj, align 8
  %116 = load i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 8, %117
  %119 = call noalias i8* @malloc(i64 %118) #5
  %120 = bitcast i8* %119 to double*
  store double* %120, double** %yj, align 8
  %121 = load i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 8, %122
  %124 = call noalias i8* @malloc(i64 %123) #5
  %125 = bitcast i8* %124 to double*
  store double* %125, double** %CDF, align 8
  %126 = load i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 8, %127
  %129 = call noalias i8* @malloc(i64 %128) #5
  %130 = bitcast i8* %129 to double*
  store double* %130, double** %u, align 8
  %131 = load i32* %countOnes, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = load i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %133, %135
  %137 = call noalias i8* @malloc(i64 %136) #5
  %138 = bitcast i8* %137 to i32*
  store i32* %138, i32** %ind, align 8
  store i32 0, i32* %x, align 4
  br label %139

; <label>:139                                     ; preds = %154, %95
  %140 = load i32* %x, align 4
  %141 = load i32* %5, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

; <label>:143                                     ; preds = %139
  %144 = load double* %xe, align 8
  %145 = load i32* %x, align 4
  %146 = sext i32 %145 to i64
  %147 = load double** %arrayX, align 8
  %148 = getelementptr inbounds double* %147, i64 %146
  store double %144, double* %148, align 8
  %149 = load double* %ye, align 8
  %150 = load i32* %x, align 4
  %151 = sext i32 %150 to i64
  %152 = load double** %arrayY, align 8
  %153 = getelementptr inbounds double* %152, i64 %151
  store double %149, double* %153, align 8
  br label %154

; <label>:154                                     ; preds = %143
  %155 = load i32* %x, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %x, align 4
  br label %139

; <label>:157                                     ; preds = %139
  store i32 1, i32* %k, align 4
  br label %158

; <label>:158                                     ; preds = %598, %157
  %159 = load i32* %k, align 4
  %160 = load i32* %4, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %601

; <label>:162                                     ; preds = %158
  store i32 0, i32* %x, align 4
  br label %163

; <label>:163                                     ; preds = %188, %162
  %164 = load i32* %x, align 4
  %165 = load i32* %5, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %191

; <label>:167                                     ; preds = %163
  %168 = load i32* %x, align 4
  %169 = mul nsw i32 5, %168
  %170 = add nsw i32 1, %169
  %171 = sitofp i32 %170 to double
  %172 = load i32* %x, align 4
  %173 = sext i32 %172 to i64
  %174 = load double** %arrayX, align 8
  %175 = getelementptr inbounds double* %174, i64 %173
  %176 = load double* %175, align 8
  %177 = fadd double %176, %171
  store double %177, double* %175, align 8
  %178 = load i32* %x, align 4
  %179 = mul nsw i32 2, %178
  %180 = add nsw i32 -2, %179
  %181 = sitofp i32 %180 to double
  %182 = load i32* %x, align 4
  %183 = sext i32 %182 to i64
  %184 = load double** %arrayY, align 8
  %185 = getelementptr inbounds double* %184, i64 %183
  %186 = load double* %185, align 8
  %187 = fadd double %186, %181
  store double %187, double* %185, align 8
  br label %188

; <label>:188                                     ; preds = %167
  %189 = load i32* %x, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %x, align 4
  br label %163

; <label>:191                                     ; preds = %163
  store i32 0, i32* %x, align 4
  br label %192

; <label>:192                                     ; preds = %343, %191
  %193 = load i32* %x, align 4
  %194 = load i32* %5, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %346

; <label>:196                                     ; preds = %192
  store i32 0, i32* %y, align 4
  br label %197

; <label>:197                                     ; preds = %274, %196
  %198 = load i32* %y, align 4
  %199 = load i32* %countOnes, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %277

; <label>:201                                     ; preds = %197
  %202 = load i32* %x, align 4
  %203 = sext i32 %202 to i64
  %204 = load double** %arrayX, align 8
  %205 = getelementptr inbounds double* %204, i64 %203
  %206 = load double* %205, align 8
  %207 = call double @roundDouble(double %206)
  %208 = load i32* %y, align 4
  %209 = mul nsw i32 %208, 2
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = load double** %objxy, align 8
  %213 = getelementptr inbounds double* %212, i64 %211
  %214 = load double* %213, align 8
  %215 = fadd double %207, %214
  %216 = fptosi double %215 to i32
  store i32 %216, i32* %indX, align 4
  %217 = load i32* %x, align 4
  %218 = sext i32 %217 to i64
  %219 = load double** %arrayY, align 8
  %220 = getelementptr inbounds double* %219, i64 %218
  %221 = load double* %220, align 8
  %222 = call double @roundDouble(double %221)
  %223 = load i32* %y, align 4
  %224 = mul nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = load double** %objxy, align 8
  %227 = getelementptr inbounds double* %226, i64 %225
  %228 = load double* %227, align 8
  %229 = fadd double %222, %228
  %230 = fptosi double %229 to i32
  store i32 %230, i32* %indY, align 4
  %231 = load i32* %indX, align 4
  %232 = load i32* %3, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32* %4, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32* %indY, align 4
  %237 = load i32* %4, align 4
  %238 = mul nsw i32 %236, %237
  %239 = add nsw i32 %235, %238
  %240 = load i32* %k, align 4
  %241 = add nsw i32 %239, %240
  %242 = sitofp i32 %241 to double
  %243 = call double @fabs(double %242) #6
  %244 = fptosi double %243 to i32
  %245 = load i32* %x, align 4
  %246 = load i32* %countOnes, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32* %y, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = load i32** %ind, align 8
  %252 = getelementptr inbounds i32* %251, i64 %250
  store i32 %244, i32* %252, align 4
  %253 = load i32* %x, align 4
  %254 = load i32* %countOnes, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32* %y, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = load i32** %ind, align 8
  %260 = getelementptr inbounds i32* %259, i64 %258
  %261 = load i32* %260, align 4
  %262 = load i32* %max_size, align 4
  %263 = icmp sge i32 %261, %262
  br i1 %263, label %264, label %273

; <label>:264                                     ; preds = %201
  %265 = load i32* %x, align 4
  %266 = load i32* %countOnes, align 4
  %267 = mul nsw i32 %265, %266
  %268 = load i32* %y, align 4
  %269 = add nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = load i32** %ind, align 8
  %272 = getelementptr inbounds i32* %271, i64 %270
  store i32 0, i32* %272, align 4
  br label %273

; <label>:273                                     ; preds = %264, %201
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load i32* %y, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %y, align 4
  br label %197

; <label>:277                                     ; preds = %197
  %278 = load i32* %x, align 4
  %279 = sext i32 %278 to i64
  %280 = load double** %likelihood, align 8
  %281 = getelementptr inbounds double* %280, i64 %279
  store double 0.000000e+00, double* %281, align 8
  store i32 0, i32* %y, align 4
  br label %282

; <label>:282                                     ; preds = %327, %277
  %283 = load i32* %y, align 4
  %284 = load i32* %countOnes, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %330

; <label>:286                                     ; preds = %282
  %287 = load i32* %x, align 4
  %288 = load i32* %countOnes, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load i32* %y, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = load i32** %ind, align 8
  %294 = getelementptr inbounds i32* %293, i64 %292
  %295 = load i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = load i32** %1, align 8
  %298 = getelementptr inbounds i32* %297, i64 %296
  %299 = load i32* %298, align 4
  %300 = sub nsw i32 %299, 100
  %301 = sitofp i32 %300 to double
  %302 = call double @pow(double %301, double 2.000000e+00) #5
  %303 = load i32* %x, align 4
  %304 = load i32* %countOnes, align 4
  %305 = mul nsw i32 %303, %304
  %306 = load i32* %y, align 4
  %307 = add nsw i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = load i32** %ind, align 8
  %310 = getelementptr inbounds i32* %309, i64 %308
  %311 = load i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = load i32** %1, align 8
  %314 = getelementptr inbounds i32* %313, i64 %312
  %315 = load i32* %314, align 4
  %316 = sub nsw i32 %315, 228
  %317 = sitofp i32 %316 to double
  %318 = call double @pow(double %317, double 2.000000e+00) #5
  %319 = fsub double %302, %318
  %320 = fdiv double %319, 5.000000e+01
  %321 = load i32* %x, align 4
  %322 = sext i32 %321 to i64
  %323 = load double** %likelihood, align 8
  %324 = getelementptr inbounds double* %323, i64 %322
  %325 = load double* %324, align 8
  %326 = fadd double %325, %320
  store double %326, double* %324, align 8
  br label %327

; <label>:327                                     ; preds = %286
  %328 = load i32* %y, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %y, align 4
  br label %282

; <label>:330                                     ; preds = %282
  %331 = load i32* %x, align 4
  %332 = sext i32 %331 to i64
  %333 = load double** %likelihood, align 8
  %334 = getelementptr inbounds double* %333, i64 %332
  %335 = load double* %334, align 8
  %336 = load i32* %countOnes, align 4
  %337 = sitofp i32 %336 to double
  %338 = fdiv double %335, %337
  %339 = load i32* %x, align 4
  %340 = sext i32 %339 to i64
  %341 = load double** %likelihood, align 8
  %342 = getelementptr inbounds double* %341, i64 %340
  store double %338, double* %342, align 8
  br label %343

; <label>:343                                     ; preds = %330
  %344 = load i32* %x, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %x, align 4
  br label %192

; <label>:346                                     ; preds = %192
  store i32 0, i32* %x, align 4
  br label %347

; <label>:347                                     ; preds = %368, %346
  %348 = load i32* %x, align 4
  %349 = load i32* %5, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %371

; <label>:351                                     ; preds = %347
  %352 = load i32* %x, align 4
  %353 = sext i32 %352 to i64
  %354 = load double** %weights, align 8
  %355 = getelementptr inbounds double* %354, i64 %353
  %356 = load double* %355, align 8
  %357 = load i32* %x, align 4
  %358 = sext i32 %357 to i64
  %359 = load double** %likelihood, align 8
  %360 = getelementptr inbounds double* %359, i64 %358
  %361 = load double* %360, align 8
  %362 = call double @exp(double %361) #5
  %363 = fmul double %356, %362
  %364 = load i32* %x, align 4
  %365 = sext i32 %364 to i64
  %366 = load double** %weights, align 8
  %367 = getelementptr inbounds double* %366, i64 %365
  store double %363, double* %367, align 8
  br label %368

; <label>:368                                     ; preds = %351
  %369 = load i32* %x, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %x, align 4
  br label %347

; <label>:371                                     ; preds = %347
  store double 0.000000e+00, double* %sumWeights, align 8
  store i32 0, i32* %x, align 4
  br label %372

; <label>:372                                     ; preds = %384, %371
  %373 = load i32* %x, align 4
  %374 = load i32* %5, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %387

; <label>:376                                     ; preds = %372
  %377 = load i32* %x, align 4
  %378 = sext i32 %377 to i64
  %379 = load double** %weights, align 8
  %380 = getelementptr inbounds double* %379, i64 %378
  %381 = load double* %380, align 8
  %382 = load double* %sumWeights, align 8
  %383 = fadd double %382, %381
  store double %383, double* %sumWeights, align 8
  br label %384

; <label>:384                                     ; preds = %376
  %385 = load i32* %x, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %x, align 4
  br label %372

; <label>:387                                     ; preds = %372
  store i32 0, i32* %x, align 4
  br label %388

; <label>:388                                     ; preds = %404, %387
  %389 = load i32* %x, align 4
  %390 = load i32* %5, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %407

; <label>:392                                     ; preds = %388
  %393 = load i32* %x, align 4
  %394 = sext i32 %393 to i64
  %395 = load double** %weights, align 8
  %396 = getelementptr inbounds double* %395, i64 %394
  %397 = load double* %396, align 8
  %398 = load double* %sumWeights, align 8
  %399 = fdiv double %397, %398
  %400 = load i32* %x, align 4
  %401 = sext i32 %400 to i64
  %402 = load double** %weights, align 8
  %403 = getelementptr inbounds double* %402, i64 %401
  store double %399, double* %403, align 8
  br label %404

; <label>:404                                     ; preds = %392
  %405 = load i32* %x, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %x, align 4
  br label %388

; <label>:407                                     ; preds = %388
  store double 0.000000e+00, double* %xe, align 8
  store double 0.000000e+00, double* %ye, align 8
  store i32 0, i32* %x, align 4
  br label %408

; <label>:408                                     ; preds = %439, %407
  %409 = load i32* %x, align 4
  %410 = load i32* %5, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %442

; <label>:412                                     ; preds = %408
  %413 = load i32* %x, align 4
  %414 = sext i32 %413 to i64
  %415 = load double** %arrayX, align 8
  %416 = getelementptr inbounds double* %415, i64 %414
  %417 = load double* %416, align 8
  %418 = load i32* %x, align 4
  %419 = sext i32 %418 to i64
  %420 = load double** %weights, align 8
  %421 = getelementptr inbounds double* %420, i64 %419
  %422 = load double* %421, align 8
  %423 = fmul double %417, %422
  %424 = load double* %xe, align 8
  %425 = fadd double %424, %423
  store double %425, double* %xe, align 8
  %426 = load i32* %x, align 4
  %427 = sext i32 %426 to i64
  %428 = load double** %arrayY, align 8
  %429 = getelementptr inbounds double* %428, i64 %427
  %430 = load double* %429, align 8
  %431 = load i32* %x, align 4
  %432 = sext i32 %431 to i64
  %433 = load double** %weights, align 8
  %434 = getelementptr inbounds double* %433, i64 %432
  %435 = load double* %434, align 8
  %436 = fmul double %430, %435
  %437 = load double* %ye, align 8
  %438 = fadd double %437, %436
  store double %438, double* %ye, align 8
  br label %439

; <label>:439                                     ; preds = %412
  %440 = load i32* %x, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %x, align 4
  br label %408

; <label>:442                                     ; preds = %408
  %443 = load double* %xe, align 8
  %444 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), double %443)
  %445 = load double* %ye, align 8
  %446 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), double %445)
  %447 = load double* %xe, align 8
  %448 = load i32* %3, align 4
  %449 = sitofp i32 %448 to double
  %450 = fdiv double %449, 2.000000e+00
  %451 = call double @roundDouble(double %450)
  %452 = fptosi double %451 to i32
  %453 = sitofp i32 %452 to double
  %454 = fsub double %447, %453
  %455 = call double @pow(double %454, double 2.000000e+00) #5
  %456 = load double* %ye, align 8
  %457 = load i32* %2, align 4
  %458 = sitofp i32 %457 to double
  %459 = fdiv double %458, 2.000000e+00
  %460 = call double @roundDouble(double %459)
  %461 = fptosi double %460 to i32
  %462 = sitofp i32 %461 to double
  %463 = fsub double %456, %462
  %464 = call double @pow(double %463, double 2.000000e+00) #5
  %465 = fadd double %455, %464
  %466 = call double @sqrt(double %465) #5
  store double %466, double* %distance, align 8
  %467 = load double* %distance, align 8
  %468 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), double %467)
  %469 = load double** %weights, align 8
  %470 = getelementptr inbounds double* %469, i64 0
  %471 = load double* %470, align 8
  %472 = load double** %CDF, align 8
  %473 = getelementptr inbounds double* %472, i64 0
  store double %471, double* %473, align 8
  store i32 1, i32* %x, align 4
  br label %474

; <label>:474                                     ; preds = %495, %442
  %475 = load i32* %x, align 4
  %476 = load i32* %5, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %478, label %498

; <label>:478                                     ; preds = %474
  %479 = load i32* %x, align 4
  %480 = sext i32 %479 to i64
  %481 = load double** %weights, align 8
  %482 = getelementptr inbounds double* %481, i64 %480
  %483 = load double* %482, align 8
  %484 = load i32* %x, align 4
  %485 = sub nsw i32 %484, 1
  %486 = sext i32 %485 to i64
  %487 = load double** %CDF, align 8
  %488 = getelementptr inbounds double* %487, i64 %486
  %489 = load double* %488, align 8
  %490 = fadd double %483, %489
  %491 = load i32* %x, align 4
  %492 = sext i32 %491 to i64
  %493 = load double** %CDF, align 8
  %494 = getelementptr inbounds double* %493, i64 %492
  store double %490, double* %494, align 8
  br label %495

; <label>:495                                     ; preds = %478
  %496 = load i32* %x, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %x, align 4
  br label %474

; <label>:498                                     ; preds = %474
  %499 = load i32* %5, align 4
  %500 = sitofp i32 %499 to double
  %501 = fdiv double 1.000000e+00, %500
  %502 = fmul double %501, 5.000000e-01
  store double %502, double* %u1, align 8
  store i32 0, i32* %x, align 4
  br label %503

; <label>:503                                     ; preds = %519, %498
  %504 = load i32* %x, align 4
  %505 = load i32* %5, align 4
  %506 = icmp slt i32 %504, %505
  br i1 %506, label %507, label %522

; <label>:507                                     ; preds = %503
  %508 = load double* %u1, align 8
  %509 = load i32* %x, align 4
  %510 = sitofp i32 %509 to double
  %511 = load i32* %5, align 4
  %512 = sitofp i32 %511 to double
  %513 = fdiv double %510, %512
  %514 = fadd double %508, %513
  %515 = load i32* %x, align 4
  %516 = sext i32 %515 to i64
  %517 = load double** %u, align 8
  %518 = getelementptr inbounds double* %517, i64 %516
  store double %514, double* %518, align 8
  br label %519

; <label>:519                                     ; preds = %507
  %520 = load i32* %x, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %x, align 4
  br label %503

; <label>:522                                     ; preds = %503
  store i32 0, i32* %j, align 4
  br label %523

; <label>:523                                     ; preds = %560, %522
  %524 = load i32* %j, align 4
  %525 = load i32* %5, align 4
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %527, label %563

; <label>:527                                     ; preds = %523
  %528 = load double** %CDF, align 8
  %529 = load i32* %5, align 4
  %530 = load i32* %j, align 4
  %531 = sext i32 %530 to i64
  %532 = load double** %u, align 8
  %533 = getelementptr inbounds double* %532, i64 %531
  %534 = load double* %533, align 8
  %535 = call i32 @findIndex(double* %528, i32 %529, double %534)
  store i32 %535, i32* %i, align 4
  %536 = load i32* %i, align 4
  %537 = icmp eq i32 %536, -1
  br i1 %537, label %538, label %541

; <label>:538                                     ; preds = %527
  %539 = load i32* %5, align 4
  %540 = sub nsw i32 %539, 1
  store i32 %540, i32* %i, align 4
  br label %541

; <label>:541                                     ; preds = %538, %527
  %542 = load i32* %i, align 4
  %543 = sext i32 %542 to i64
  %544 = load double** %arrayX, align 8
  %545 = getelementptr inbounds double* %544, i64 %543
  %546 = load double* %545, align 8
  %547 = load i32* %j, align 4
  %548 = sext i32 %547 to i64
  %549 = load double** %xj, align 8
  %550 = getelementptr inbounds double* %549, i64 %548
  store double %546, double* %550, align 8
  %551 = load i32* %i, align 4
  %552 = sext i32 %551 to i64
  %553 = load double** %arrayY, align 8
  %554 = getelementptr inbounds double* %553, i64 %552
  %555 = load double* %554, align 8
  %556 = load i32* %j, align 4
  %557 = sext i32 %556 to i64
  %558 = load double** %yj, align 8
  %559 = getelementptr inbounds double* %558, i64 %557
  store double %555, double* %559, align 8
  br label %560

; <label>:560                                     ; preds = %541
  %561 = load i32* %j, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %j, align 4
  br label %523

; <label>:563                                     ; preds = %523
  store i32 0, i32* %x, align 4
  br label %564

; <label>:564                                     ; preds = %594, %563
  %565 = load i32* %x, align 4
  %566 = load i32* %5, align 4
  %567 = icmp slt i32 %565, %566
  br i1 %567, label %568, label %597

; <label>:568                                     ; preds = %564
  %569 = load i32* %x, align 4
  %570 = sext i32 %569 to i64
  %571 = load double** %xj, align 8
  %572 = getelementptr inbounds double* %571, i64 %570
  %573 = load double* %572, align 8
  %574 = load i32* %x, align 4
  %575 = sext i32 %574 to i64
  %576 = load double** %arrayX, align 8
  %577 = getelementptr inbounds double* %576, i64 %575
  store double %573, double* %577, align 8
  %578 = load i32* %x, align 4
  %579 = sext i32 %578 to i64
  %580 = load double** %yj, align 8
  %581 = getelementptr inbounds double* %580, i64 %579
  %582 = load double* %581, align 8
  %583 = load i32* %x, align 4
  %584 = sext i32 %583 to i64
  %585 = load double** %arrayY, align 8
  %586 = getelementptr inbounds double* %585, i64 %584
  store double %582, double* %586, align 8
  %587 = load i32* %5, align 4
  %588 = sitofp i32 %587 to double
  %589 = fdiv double 1.000000e+00, %588
  %590 = load i32* %x, align 4
  %591 = sext i32 %590 to i64
  %592 = load double** %weights, align 8
  %593 = getelementptr inbounds double* %592, i64 %591
  store double %589, double* %593, align 8
  br label %594

; <label>:594                                     ; preds = %568
  %595 = load i32* %x, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %x, align 4
  br label %564

; <label>:597                                     ; preds = %564
  br label %598

; <label>:598                                     ; preds = %597
  %599 = load i32* %k, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %k, align 4
  br label %158

; <label>:601                                     ; preds = %158
  %602 = load i32** %disk, align 8
  %603 = bitcast i32* %602 to i8*
  call void @free(i8* %603) #5
  %604 = load double** %objxy, align 8
  %605 = bitcast double* %604 to i8*
  call void @free(i8* %605) #5
  %606 = load double** %weights, align 8
  %607 = bitcast double* %606 to i8*
  call void @free(i8* %607) #5
  %608 = load double** %likelihood, align 8
  %609 = bitcast double* %608 to i8*
  call void @free(i8* %609) #5
  %610 = load double** %xj, align 8
  %611 = bitcast double* %610 to i8*
  call void @free(i8* %611) #5
  %612 = load double** %yj, align 8
  %613 = bitcast double* %612 to i8*
  call void @free(i8* %613) #5
  %614 = load double** %arrayX, align 8
  %615 = bitcast double* %614 to i8*
  call void @free(i8* %615) #5
  %616 = load double** %arrayY, align 8
  %617 = bitcast double* %616 to i8*
  call void @free(i8* %617) #5
  %618 = load double** %CDF, align 8
  %619 = bitcast double* %618 to i8*
  call void @free(i8* %619) #5
  %620 = load double** %u, align 8
  %621 = bitcast double* %620 to i8*
  call void @free(i8* %621) #5
  %622 = load i32** %ind, align 8
  %623 = bitcast i32* %622 to i8*
  call void @free(i8* %623) #5
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %usage = alloca i8*, align 8
  %IszX = alloca i32, align 4
  %IszY = alloca i32, align 4
  %Nfr = alloca i32, align 4
  %Nparticles = alloca i32, align 4
  %i = alloca i32, align 4
  %I = alloca i32*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i8* getelementptr inbounds ([57 x i8]* @.str4, i32 0, i32 0), i8** %usage, align 8
  %4 = load i32* %2, align 4
  %5 = icmp ne i32 %4, 9
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8** %usage, align 8
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i8* %7)
  store i32 0, i32* %1
  br label %111

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8
  %11 = getelementptr inbounds i8** %10, i64 1
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0)) #7
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %9
  %16 = load i8*** %3, align 8
  %17 = getelementptr inbounds i8** %16, i64 3
  %18 = load i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

; <label>:21                                      ; preds = %15
  %22 = load i8*** %3, align 8
  %23 = getelementptr inbounds i8** %22, i64 5
  %24 = load i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0)) #7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

; <label>:27                                      ; preds = %21
  %28 = load i8*** %3, align 8
  %29 = getelementptr inbounds i8** %28, i64 7
  %30 = load i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0)) #7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %27, %21, %15, %9
  %34 = load i8** %usage, align 8
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i8* %34)
  store i32 0, i32* %1
  br label %111

; <label>:36                                      ; preds = %27
  %37 = load i8*** %3, align 8
  %38 = getelementptr inbounds i8** %37, i64 2
  %39 = load i8** %38, align 8
  %40 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32* %IszX) #5
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

; <label>:42                                      ; preds = %36
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str11, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:44                                      ; preds = %36
  %45 = load i32* %IszX, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:49                                      ; preds = %44
  %50 = load i8*** %3, align 8
  %51 = getelementptr inbounds i8** %50, i64 4
  %52 = load i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32* %IszY) #5
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %49
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str13, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:57                                      ; preds = %49
  %58 = load i32* %IszY, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str14, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:62                                      ; preds = %57
  %63 = load i8*** %3, align 8
  %64 = getelementptr inbounds i8** %63, i64 6
  %65 = load i8** %64, align 8
  %66 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %65, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32* %Nfr) #5
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

; <label>:68                                      ; preds = %62
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str15, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:70                                      ; preds = %62
  %71 = load i32* %Nfr, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %70
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str16, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:75                                      ; preds = %70
  %76 = load i8*** %3, align 8
  %77 = getelementptr inbounds i8** %76, i64 8
  %78 = load i8** %77, align 8
  %79 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %78, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32* %Nparticles) #5
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

; <label>:81                                      ; preds = %75
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str17, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:83                                      ; preds = %75
  %84 = load i32* %Nparticles, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %83
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str18, i32 0, i32 0))
  store i32 0, i32* %1
  br label %111

; <label>:88                                      ; preds = %83
  %89 = load i32* %IszX, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = load i32* %IszY, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %91, %93
  %95 = load i32* %Nfr, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %94, %96
  %98 = call noalias i8* @malloc(i64 %97) #5
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %I, align 8
  %100 = load i32** %I, align 8
  %101 = load i32* %IszX, align 4
  %102 = load i32* %IszY, align 4
  %103 = load i32* %Nfr, align 4
  call void @videoSequence(i32* %100, i32 %101, i32 %102, i32 %103)
  %104 = load i32** %I, align 8
  %105 = load i32* %IszX, align 4
  %106 = load i32* %IszY, align 4
  %107 = load i32* %Nfr, align 4
  %108 = load i32* %Nparticles, align 4
  call void @particleFilter(i32* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %109 = load i32** %I, align 8
  %110 = bitcast i32* %109 to i8*
  call void @free(i8* %110) #5
  store i32 0, i32* %1
  br label %111

; <label>:111                                     ; preds = %88, %86, %81, %73, %68, %60, %55, %47, %42, %33, %6
  %112 = load i32* %1
  ret i32 %112
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
