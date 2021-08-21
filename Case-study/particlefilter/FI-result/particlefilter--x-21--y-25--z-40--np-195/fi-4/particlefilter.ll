; ModuleID = 'ex_particle_OPENMP_seq.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@M = global i64 2147483647, align 8
@A = global i32 1103515245, align 4
@C = global i32 12345, align 4
@.str = private unnamed_addr constant [9 x i8] c"XE: %lf\0A\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"YE: %lf\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"openmp.out -x <dimX> -y <dimY> -z <Nfr> -np <Nparticles>\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str10 = private unnamed_addr constant [31 x i8] c"ERROR: dimX input is incorrect\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"dimX must be > 0\0A\00", align 1
@.str12 = private unnamed_addr constant [31 x i8] c"ERROR: dimY input is incorrect\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"dimY must be > 0\0A\00", align 1
@.str14 = private unnamed_addr constant [43 x i8] c"ERROR: Number of frames input is incorrect\00", align 1
@.str15 = private unnamed_addr constant [30 x i8] c"number of frames must be > 0\0A\00", align 1
@.str16 = private unnamed_addr constant [46 x i8] c"ERROR: Number of particles input is incorrect\00", align 1
@.str17 = private unnamed_addr constant [33 x i8] c"Number of particles must be > 0\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @get_time() #0 {
  %tv = alloca %struct.timeval, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #5
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
define float @elapsed_time(i64 %start_time, i64 %end_time) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %start_time, i64* %1, align 8
  store i64 %end_time, i64* %2, align 8
  %3 = load i64* %2, align 8
  %4 = load i64* %1, align 8
  %5 = sub nsw i64 %3, %4
  %6 = sitofp i64 %5 to float
  %7 = fdiv fast float %6, 1.000000e+06
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
  %8 = fsub fast double %5, %7
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
define double @randu(i32* %seed, i32 %index) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %num = alloca i32, align 4
  store i32* %seed, i32** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = load i32* @A, align 4
  %4 = load i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i32** %1, align 8
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4
  %9 = mul nsw i32 %3, %8
  %10 = load i32* @C, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %num, align 4
  %12 = load i32* %num, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64* @M, align 8
  %15 = srem i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32** %1, align 8
  %20 = getelementptr inbounds i32* %19, i64 %18
  store i32 %16, i32* %20, align 4
  %21 = load i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32** %1, align 8
  %24 = getelementptr inbounds i32* %23, i64 %22
  %25 = load i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i64* @M, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv fast double %26, %28
  %30 = call double @fabs(double %29) #6
  ret double %30
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define double @randn(i32* %seed, i32 %index) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  %cosine = alloca double, align 8
  %rt = alloca double, align 8
  store i32* %seed, i32** %1, align 8
  store i32 %index, i32* %2, align 4
  %3 = load i32** %1, align 8
  %4 = load i32* %2, align 4
  %5 = call double @randu(i32* %3, i32 %4)
  store double %5, double* %u, align 8
  %6 = load i32** %1, align 8
  %7 = load i32* %2, align 4
  %8 = call double @randu(i32* %6, i32 %7)
  store double %8, double* %v, align 8
  %9 = call double @__acos_finite(double -1.000000e+00) #6
  %10 = fmul fast double 2.000000e+00, %9
  %11 = load double* %v, align 8
  %12 = fmul fast double %10, %11
  %13 = call double @cos(double %12) #6
  store double %13, double* %cosine, align 8
  %14 = load double* %u, align 8
  %15 = call double @__log_finite(double %14) #6
  %16 = fmul fast double -2.000000e+00, %15
  store double %16, double* %rt, align 8
  %17 = load double* %rt, align 8
  %18 = call double @llvm.sqrt.f64(double %17)
  %19 = load double* %cosine, align 8
  %20 = fmul fast double %18, %19
  ret double %20
}

; Function Attrs: nounwind readnone
declare double @cos(double) #2

; Function Attrs: nounwind readnone
declare double @__acos_finite(double) #2

; Function Attrs: nounwind readnone
declare double @__log_finite(double) #2

; Function Attrs: nounwind readonly
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nounwind uwtable
define void @addNoise(i32* %array3D, i32* %dimX, i32* %dimY, i32* %dimZ, i32* %seed) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32* %array3D, i32** %1, align 8
  store i32* %dimX, i32** %2, align 8
  store i32* %dimY, i32** %3, align 8
  store i32* %dimZ, i32** %4, align 8
  store i32* %seed, i32** %5, align 8
  store i32 0, i32* %x, align 4
  br label %6

; <label>:6                                       ; preds = %68, %0
  %7 = load i32* %x, align 4
  %8 = load i32** %2, align 8
  %9 = load i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %71

; <label>:11                                      ; preds = %6
  store i32 0, i32* %y, align 4
  br label %12

; <label>:12                                      ; preds = %64, %11
  %13 = load i32* %y, align 4
  %14 = load i32** %3, align 8
  %15 = load i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %67

; <label>:17                                      ; preds = %12
  store i32 0, i32* %z, align 4
  br label %18

; <label>:18                                      ; preds = %60, %17
  %19 = load i32* %z, align 4
  %20 = load i32** %4, align 8
  %21 = load i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %63

; <label>:23                                      ; preds = %18
  %24 = load i32* %x, align 4
  %25 = load i32** %3, align 8
  %26 = load i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  %28 = load i32** %4, align 8
  %29 = load i32* %28, align 4
  %30 = mul nsw i32 %27, %29
  %31 = load i32* %y, align 4
  %32 = load i32** %4, align 8
  %33 = load i32* %32, align 4
  %34 = mul nsw i32 %31, %33
  %35 = add nsw i32 %30, %34
  %36 = load i32* %z, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = load i32** %1, align 8
  %40 = getelementptr inbounds i32* %39, i64 %38
  %41 = load i32* %40, align 4
  %42 = add nsw i32 %41, -5
  %43 = load i32* %x, align 4
  %44 = load i32** %3, align 8
  %45 = load i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = load i32** %4, align 8
  %48 = load i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = load i32* %y, align 4
  %51 = load i32** %4, align 8
  %52 = load i32* %51, align 4
  %53 = mul nsw i32 %50, %52
  %54 = add nsw i32 %49, %53
  %55 = load i32* %z, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load i32** %1, align 8
  %59 = getelementptr inbounds i32* %58, i64 %57
  store i32 %42, i32* %59, align 4
  br label %60

; <label>:60                                      ; preds = %23
  %61 = load i32* %z, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %z, align 4
  br label %18

; <label>:63                                      ; preds = %18
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i32* %y, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %y, align 4
  br label %12

; <label>:67                                      ; preds = %12
  br label %68

; <label>:68                                      ; preds = %67
  %69 = load i32* %x, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %x, align 4
  br label %6

; <label>:71                                      ; preds = %6
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
  %21 = call double @llvm.pow.f64(double %20, double 2.000000e+00)
  %22 = load i32* %y, align 4
  %23 = load i32* %2, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to double
  %27 = call double @llvm.pow.f64(double %26, double 2.000000e+00)
  %28 = fadd fast double %21, %27
  %29 = call double @llvm.sqrt.f64(double %28)
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

; Function Attrs: nounwind readonly
declare double @llvm.pow.f64(double, double) #3

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
  %67 = call double @llvm.pow.f64(double %66, double 2.000000e+00)
  %68 = load i32* %y, align 4
  %69 = load i32* %3, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sitofp i32 %70 to double
  %72 = call double @llvm.pow.f64(double %71, double 2.000000e+00)
  %73 = fadd fast double %67, %72
  %74 = call double @llvm.sqrt.f64(double %73)
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
  %29 = icmp ne i32 %28, 0
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
define void @videoSequence(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr, i32* %seed) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
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
  store i32* %seed, i32** %5, align 8
  %6 = load i32* %2, align 4
  %7 = load i32* %3, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32* %4, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %max_size, align 4
  %11 = load i32* %3, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv fast double %12, 2.000000e+00
  %14 = call double @roundDouble(double %13)
  %15 = fptosi double %14 to i32
  store i32 %15, i32* %x0, align 4
  %16 = load i32* %2, align 4
  %17 = sitofp i32 %16 to double
  %18 = fdiv fast double %17, 2.000000e+00
  %19 = call double @roundDouble(double %18)
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %y0, align 4
  %21 = load i32* %x0, align 4
  %22 = load i32* %3, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32* %4, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32* %y0, align 4
  %27 = load i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  %30 = add nsw i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = load i32** %1, align 8
  %33 = getelementptr inbounds i32* %32, i64 %31
  store i32 1, i32* %33, align 4
  store i32 1, i32* %k, align 4
  br label %34

; <label>:34                                      ; preds = %70, %0
  %35 = load i32* %k, align 4
  %36 = load i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %73

; <label>:38                                      ; preds = %34
  %39 = load i32* %x0, align 4
  %40 = load i32* %k, align 4
  %41 = sub nsw i32 %40, 1
  %42 = add nsw i32 %39, %41
  %43 = call i32 @abs(i32 %42) #6
  store i32 %43, i32* %xk, align 4
  %44 = load i32* %y0, align 4
  %45 = load i32* %k, align 4
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 2, %46
  %48 = sub nsw i32 %44, %47
  %49 = call i32 @abs(i32 %48) #6
  store i32 %49, i32* %yk, align 4
  %50 = load i32* %yk, align 4
  %51 = load i32* %3, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32* %4, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32* %xk, align 4
  %56 = load i32* %4, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %54, %57
  %59 = load i32* %k, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %pos, align 4
  %61 = load i32* %pos, align 4
  %62 = load i32* %max_size, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %38
  store i32 0, i32* %pos, align 4
  br label %65

; <label>:65                                      ; preds = %64, %38
  %66 = load i32* %pos, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32** %1, align 8
  %69 = getelementptr inbounds i32* %68, i64 %67
  store i32 1, i32* %69, align 4
  br label %70

; <label>:70                                      ; preds = %65
  %71 = load i32* %k, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %k, align 4
  br label %34

; <label>:73                                      ; preds = %34
  %74 = load i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = load i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %76, %78
  %80 = load i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %79, %81
  %83 = call noalias i8* @malloc(i64 %82) #5
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %newMatrix, align 8
  %85 = load i32** %1, align 8
  %86 = load i32* %2, align 4
  %87 = load i32* %3, align 4
  %88 = load i32* %4, align 4
  %89 = load i32** %newMatrix, align 8
  call void @imdilate_disk(i32* %85, i32 %86, i32 %87, i32 %88, i32 5, i32* %89)
  store i32 0, i32* %x, align 4
  br label %90

; <label>:90                                      ; preds = %142, %73
  %91 = load i32* %x, align 4
  %92 = load i32* %2, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %145

; <label>:94                                      ; preds = %90
  store i32 0, i32* %y, align 4
  br label %95

; <label>:95                                      ; preds = %138, %94
  %96 = load i32* %y, align 4
  %97 = load i32* %3, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %141

; <label>:99                                      ; preds = %95
  store i32 0, i32* %k, align 4
  br label %100

; <label>:100                                     ; preds = %134, %99
  %101 = load i32* %k, align 4
  %102 = load i32* %4, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %137

; <label>:104                                     ; preds = %100
  %105 = load i32* %x, align 4
  %106 = load i32* %3, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32* %4, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32* %y, align 4
  %111 = load i32* %4, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = load i32* %k, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = load i32** %newMatrix, align 8
  %118 = getelementptr inbounds i32* %117, i64 %116
  %119 = load i32* %118, align 4
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
  %132 = load i32** %1, align 8
  %133 = getelementptr inbounds i32* %132, i64 %131
  store i32 %119, i32* %133, align 4
  br label %134

; <label>:134                                     ; preds = %104
  %135 = load i32* %k, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %k, align 4
  br label %100

; <label>:137                                     ; preds = %100
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i32* %y, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %y, align 4
  br label %95

; <label>:141                                     ; preds = %95
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32* %x, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %x, align 4
  br label %90

; <label>:145                                     ; preds = %90
  %146 = load i32** %newMatrix, align 8
  %147 = bitcast i32* %146 to i8*
  call void @free(i8* %147) #5
  %148 = load i32** %1, align 8
  call void @setIf(i32 0, i32 100, i32* %148, i32* %2, i32* %3, i32* %4)
  %149 = load i32** %1, align 8
  call void @setIf(i32 1, i32 228, i32* %149, i32* %2, i32* %3, i32* %4)
  %150 = load i32** %1, align 8
  %151 = load i32** %5, align 8
  call void @addNoise(i32* %150, i32* %2, i32* %3, i32* %4, i32* %151)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

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
  %20 = call double @llvm.pow.f64(double %19, double 2.000000e+00)
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
  %32 = call double @llvm.pow.f64(double %31, double 2.000000e+00)
  %33 = fsub fast double %20, %32
  %34 = fdiv fast double %33, 5.000000e+01
  %35 = load double* %likelihoodSum, align 8
  %36 = fadd fast double %35, %34
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
define void @particleFilter(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr, i32* %seed, i32 %Nparticles) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %max_size = alloca i32, align 4
  %start = alloca i64, align 8
  %xe = alloca double, align 8
  %ye = alloca double, align 8
  %radius = alloca i32, align 4
  %diameter = alloca i32, align 4
  %disk = alloca i32*, align 8
  %countOnes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %objxy = alloca double*, align 8
  %get_neighbors = alloca i64, align 8
  %weights = alloca double*, align 8
  %get_weights = alloca i64, align 8
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
  %set_arrays = alloca i64, align 8
  %error = alloca i64, align 8
  %likelihood_time = alloca i64, align 8
  %exponential = alloca i64, align 8
  %sumWeights = alloca double, align 8
  %sum_time = alloca i64, align 8
  %normalize = alloca i64, align 8
  %move_time = alloca i64, align 8
  %distance = alloca double, align 8
  %cum_sum = alloca i64, align 8
  %u1 = alloca double, align 8
  %u_time = alloca i64, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %xyj_time = alloca i64, align 8
  %reset = alloca i64, align 8
  store i32* %I, i32** %1, align 8
  store i32 %IszX, i32* %2, align 4
  store i32 %IszY, i32* %3, align 4
  store i32 %Nfr, i32* %4, align 4
  store i32* %seed, i32** %5, align 8
  store i32 %Nparticles, i32* %6, align 4
  %7 = load i32* %2, align 4
  %8 = load i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %max_size, align 4
  %12 = call i64 @get_time()
  store i64 %12, i64* %start, align 8
  %13 = load i32* %3, align 4
  %14 = sitofp i32 %13 to double
  %15 = fdiv fast double %14, 2.000000e+00
  %16 = call double @roundDouble(double %15)
  store double %16, double* %xe, align 8
  %17 = load i32* %2, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv fast double %18, 2.000000e+00
  %20 = call double @roundDouble(double %19)
  store double %20, double* %ye, align 8
  store i32 5, i32* %radius, align 4
  %21 = load i32* %radius, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %diameter, align 4
  %24 = load i32* %diameter, align 4
  %25 = load i32* %diameter, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call noalias i8* @malloc(i64 %28) #5
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %disk, align 8
  %31 = load i32** %disk, align 8
  %32 = load i32* %radius, align 4
  call void @strelDisk(i32* %31, i32 %32)
  store i32 0, i32* %countOnes, align 4
  store i32 0, i32* %x, align 4
  br label %33

; <label>:33                                      ; preds = %61, %0
  %34 = load i32* %x, align 4
  %35 = load i32* %diameter, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %64

; <label>:37                                      ; preds = %33
  store i32 0, i32* %y, align 4
  br label %38

; <label>:38                                      ; preds = %57, %37
  %39 = load i32* %y, align 4
  %40 = load i32* %diameter, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

; <label>:42                                      ; preds = %38
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

; <label>:53                                      ; preds = %42
  %54 = load i32* %countOnes, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %countOnes, align 4
  br label %56

; <label>:56                                      ; preds = %53, %42
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i32* %y, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %y, align 4
  br label %38

; <label>:60                                      ; preds = %38
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load i32* %x, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %x, align 4
  br label %33

; <label>:64                                      ; preds = %33
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
  %75 = call i64 @get_time()
  store i64 %75, i64* %get_neighbors, align 8
  %76 = load i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = call noalias i8* @malloc(i64 %78) #5
  %80 = bitcast i8* %79 to double*
  store double* %80, double** %weights, align 8
  store i32 0, i32* %x, align 4
  br label %81

; <label>:81                                      ; preds = %93, %64
  %82 = load i32* %x, align 4
  %83 = load i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

; <label>:85                                      ; preds = %81
  %86 = load i32* %6, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv fast double 1.000000e+00, %87
  %89 = load i32* %x, align 4
  %90 = sext i32 %89 to i64
  %91 = load double** %weights, align 8
  %92 = getelementptr inbounds double* %91, i64 %90
  store double %88, double* %92, align 8
  br label %93

; <label>:93                                      ; preds = %85
  %94 = load i32* %x, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %x, align 4
  br label %81

; <label>:96                                      ; preds = %81
  %97 = call i64 @get_time()
  store i64 %97, i64* %get_weights, align 8
  %98 = load i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 8, %99
  %101 = call noalias i8* @malloc(i64 %100) #5
  %102 = bitcast i8* %101 to double*
  store double* %102, double** %likelihood, align 8
  %103 = load i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = call noalias i8* @malloc(i64 %105) #5
  %107 = bitcast i8* %106 to double*
  store double* %107, double** %arrayX, align 8
  %108 = load i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 8, %109
  %111 = call noalias i8* @malloc(i64 %110) #5
  %112 = bitcast i8* %111 to double*
  store double* %112, double** %arrayY, align 8
  %113 = load i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 8, %114
  %116 = call noalias i8* @malloc(i64 %115) #5
  %117 = bitcast i8* %116 to double*
  store double* %117, double** %xj, align 8
  %118 = load i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 8, %119
  %121 = call noalias i8* @malloc(i64 %120) #5
  %122 = bitcast i8* %121 to double*
  store double* %122, double** %yj, align 8
  %123 = load i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 8, %124
  %126 = call noalias i8* @malloc(i64 %125) #5
  %127 = bitcast i8* %126 to double*
  store double* %127, double** %CDF, align 8
  %128 = load i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 8, %129
  %131 = call noalias i8* @malloc(i64 %130) #5
  %132 = bitcast i8* %131 to double*
  store double* %132, double** %u, align 8
  %133 = load i32* %countOnes, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = load i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = call noalias i8* @malloc(i64 %138) #5
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %ind, align 8
  store i32 0, i32* %x, align 4
  br label %141

; <label>:141                                     ; preds = %156, %96
  %142 = load i32* %x, align 4
  %143 = load i32* %6, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %159

; <label>:145                                     ; preds = %141
  %146 = load double* %xe, align 8
  %147 = load i32* %x, align 4
  %148 = sext i32 %147 to i64
  %149 = load double** %arrayX, align 8
  %150 = getelementptr inbounds double* %149, i64 %148
  store double %146, double* %150, align 8
  %151 = load double* %ye, align 8
  %152 = load i32* %x, align 4
  %153 = sext i32 %152 to i64
  %154 = load double** %arrayY, align 8
  %155 = getelementptr inbounds double* %154, i64 %153
  store double %151, double* %155, align 8
  br label %156

; <label>:156                                     ; preds = %145
  %157 = load i32* %x, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %x, align 4
  br label %141

; <label>:159                                     ; preds = %141
  store i32 1, i32* %k, align 4
  br label %160

; <label>:160                                     ; preds = %613, %159
  %161 = load i32* %k, align 4
  %162 = load i32* %4, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %616

; <label>:164                                     ; preds = %160
  %165 = call i64 @get_time()
  store i64 %165, i64* %set_arrays, align 8
  store i32 0, i32* %x, align 4
  br label %166

; <label>:166                                     ; preds = %193, %164
  %167 = load i32* %x, align 4
  %168 = load i32* %6, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %196

; <label>:170                                     ; preds = %166
  %171 = load i32* %x, align 4
  %172 = sub nsw i32 %171, 1
  %173 = mul nsw i32 5, %172
  %174 = add nsw i32 1, %173
  %175 = sitofp i32 %174 to double
  %176 = load i32* %x, align 4
  %177 = sext i32 %176 to i64
  %178 = load double** %arrayX, align 8
  %179 = getelementptr inbounds double* %178, i64 %177
  %180 = load double* %179, align 8
  %181 = fadd fast double %180, %175
  store double %181, double* %179, align 8
  %182 = load i32* %x, align 4
  %183 = sub nsw i32 %182, 1
  %184 = mul nsw i32 2, %183
  %185 = add nsw i32 -2, %184
  %186 = sitofp i32 %185 to double
  %187 = load i32* %x, align 4
  %188 = sext i32 %187 to i64
  %189 = load double** %arrayY, align 8
  %190 = getelementptr inbounds double* %189, i64 %188
  %191 = load double* %190, align 8
  %192 = fadd fast double %191, %186
  store double %192, double* %190, align 8
  br label %193

; <label>:193                                     ; preds = %170
  %194 = load i32* %x, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %x, align 4
  br label %166

; <label>:196                                     ; preds = %166
  %197 = call i64 @get_time()
  store i64 %197, i64* %error, align 8
  store i32 0, i32* %x, align 4
  br label %198

; <label>:198                                     ; preds = %349, %196
  %199 = load i32* %x, align 4
  %200 = load i32* %6, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %352

; <label>:202                                     ; preds = %198
  store i32 0, i32* %y, align 4
  br label %203

; <label>:203                                     ; preds = %280, %202
  %204 = load i32* %y, align 4
  %205 = load i32* %countOnes, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %283

; <label>:207                                     ; preds = %203
  %208 = load i32* %x, align 4
  %209 = sext i32 %208 to i64
  %210 = load double** %arrayX, align 8
  %211 = getelementptr inbounds double* %210, i64 %209
  %212 = load double* %211, align 8
  %213 = call double @roundDouble(double %212)
  %214 = load i32* %y, align 4
  %215 = mul nsw i32 %214, 2
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = load double** %objxy, align 8
  %219 = getelementptr inbounds double* %218, i64 %217
  %220 = load double* %219, align 8
  %221 = fadd fast double %213, %220
  %222 = fptosi double %221 to i32
  store i32 %222, i32* %indX, align 4
  %223 = load i32* %x, align 4
  %224 = sext i32 %223 to i64
  %225 = load double** %arrayY, align 8
  %226 = getelementptr inbounds double* %225, i64 %224
  %227 = load double* %226, align 8
  %228 = call double @roundDouble(double %227)
  %229 = load i32* %y, align 4
  %230 = mul nsw i32 %229, 2
  %231 = sext i32 %230 to i64
  %232 = load double** %objxy, align 8
  %233 = getelementptr inbounds double* %232, i64 %231
  %234 = load double* %233, align 8
  %235 = fadd fast double %228, %234
  %236 = fptosi double %235 to i32
  store i32 %236, i32* %indY, align 4
  %237 = load i32* %indX, align 4
  %238 = load i32* %3, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32* %4, align 4
  %241 = mul nsw i32 %239, %240
  %242 = load i32* %indY, align 4
  %243 = load i32* %4, align 4
  %244 = mul nsw i32 %242, %243
  %245 = add nsw i32 %241, %244
  %246 = load i32* %k, align 4
  %247 = add nsw i32 %245, %246
  %248 = sitofp i32 %247 to double
  %249 = call double @fabs(double %248) #6
  %250 = fptosi double %249 to i32
  %251 = load i32* %x, align 4
  %252 = load i32* %countOnes, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32* %y, align 4
  %255 = add nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = load i32** %ind, align 8
  %258 = getelementptr inbounds i32* %257, i64 %256
  store i32 %250, i32* %258, align 4
  %259 = load i32* %x, align 4
  %260 = load i32* %countOnes, align 4
  %261 = mul nsw i32 %259, %260
  %262 = load i32* %y, align 4
  %263 = add nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = load i32** %ind, align 8
  %266 = getelementptr inbounds i32* %265, i64 %264
  %267 = load i32* %266, align 4
  %268 = load i32* %max_size, align 4
  %269 = icmp sge i32 %267, %268
  br i1 %269, label %270, label %279

; <label>:270                                     ; preds = %207
  %271 = load i32* %x, align 4
  %272 = load i32* %countOnes, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32* %y, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = load i32** %ind, align 8
  %278 = getelementptr inbounds i32* %277, i64 %276
  store i32 0, i32* %278, align 4
  br label %279

; <label>:279                                     ; preds = %270, %207
  br label %280

; <label>:280                                     ; preds = %279
  %281 = load i32* %y, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %y, align 4
  br label %203

; <label>:283                                     ; preds = %203
  %284 = load i32* %x, align 4
  %285 = sext i32 %284 to i64
  %286 = load double** %likelihood, align 8
  %287 = getelementptr inbounds double* %286, i64 %285
  store double 0.000000e+00, double* %287, align 8
  store i32 0, i32* %y, align 4
  br label %288

; <label>:288                                     ; preds = %333, %283
  %289 = load i32* %y, align 4
  %290 = load i32* %countOnes, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %336

; <label>:292                                     ; preds = %288
  %293 = load i32* %x, align 4
  %294 = load i32* %countOnes, align 4
  %295 = mul nsw i32 %293, %294
  %296 = load i32* %y, align 4
  %297 = add nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = load i32** %ind, align 8
  %300 = getelementptr inbounds i32* %299, i64 %298
  %301 = load i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = load i32** %1, align 8
  %304 = getelementptr inbounds i32* %303, i64 %302
  %305 = load i32* %304, align 4
  %306 = sub nsw i32 %305, 100
  %307 = sitofp i32 %306 to double
  %308 = call double @llvm.pow.f64(double %307, double 2.000000e+00)
  %309 = load i32* %x, align 4
  %310 = load i32* %countOnes, align 4
  %311 = mul nsw i32 %309, %310
  %312 = load i32* %y, align 4
  %313 = add nsw i32 %311, %312
  %314 = sext i32 %313 to i64
  %315 = load i32** %ind, align 8
  %316 = getelementptr inbounds i32* %315, i64 %314
  %317 = load i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = load i32** %1, align 8
  %320 = getelementptr inbounds i32* %319, i64 %318
  %321 = load i32* %320, align 4
  %322 = sub nsw i32 %321, 228
  %323 = sitofp i32 %322 to double
  %324 = call double @llvm.pow.f64(double %323, double 2.000000e+00)
  %325 = fsub fast double %308, %324
  %326 = fdiv fast double %325, 5.000000e+01
  %327 = load i32* %x, align 4
  %328 = sext i32 %327 to i64
  %329 = load double** %likelihood, align 8
  %330 = getelementptr inbounds double* %329, i64 %328
  %331 = load double* %330, align 8
  %332 = fadd fast double %331, %326
  store double %332, double* %330, align 8
  br label %333

; <label>:333                                     ; preds = %292
  %334 = load i32* %y, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %y, align 4
  br label %288

; <label>:336                                     ; preds = %288
  %337 = load i32* %x, align 4
  %338 = sext i32 %337 to i64
  %339 = load double** %likelihood, align 8
  %340 = getelementptr inbounds double* %339, i64 %338
  %341 = load double* %340, align 8
  %342 = load i32* %countOnes, align 4
  %343 = sitofp i32 %342 to double
  %344 = fdiv fast double %341, %343
  %345 = load i32* %x, align 4
  %346 = sext i32 %345 to i64
  %347 = load double** %likelihood, align 8
  %348 = getelementptr inbounds double* %347, i64 %346
  store double %344, double* %348, align 8
  br label %349

; <label>:349                                     ; preds = %336
  %350 = load i32* %x, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %x, align 4
  br label %198

; <label>:352                                     ; preds = %198
  %353 = call i64 @get_time()
  store i64 %353, i64* %likelihood_time, align 8
  store i32 0, i32* %x, align 4
  br label %354

; <label>:354                                     ; preds = %375, %352
  %355 = load i32* %x, align 4
  %356 = load i32* %6, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %378

; <label>:358                                     ; preds = %354
  %359 = load i32* %x, align 4
  %360 = sext i32 %359 to i64
  %361 = load double** %weights, align 8
  %362 = getelementptr inbounds double* %361, i64 %360
  %363 = load double* %362, align 8
  %364 = load i32* %x, align 4
  %365 = sext i32 %364 to i64
  %366 = load double** %likelihood, align 8
  %367 = getelementptr inbounds double* %366, i64 %365
  %368 = load double* %367, align 8
  %369 = call double @__exp_finite(double %368) #6
  %370 = fmul fast double %363, %369
  %371 = load i32* %x, align 4
  %372 = sext i32 %371 to i64
  %373 = load double** %weights, align 8
  %374 = getelementptr inbounds double* %373, i64 %372
  store double %370, double* %374, align 8
  br label %375

; <label>:375                                     ; preds = %358
  %376 = load i32* %x, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %x, align 4
  br label %354

; <label>:378                                     ; preds = %354
  %379 = call i64 @get_time()
  store i64 %379, i64* %exponential, align 8
  store double 0.000000e+00, double* %sumWeights, align 8
  store i32 0, i32* %x, align 4
  br label %380

; <label>:380                                     ; preds = %392, %378
  %381 = load i32* %x, align 4
  %382 = load i32* %6, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %395

; <label>:384                                     ; preds = %380
  %385 = load i32* %x, align 4
  %386 = sext i32 %385 to i64
  %387 = load double** %weights, align 8
  %388 = getelementptr inbounds double* %387, i64 %386
  %389 = load double* %388, align 8
  %390 = load double* %sumWeights, align 8
  %391 = fadd fast double %390, %389
  store double %391, double* %sumWeights, align 8
  br label %392

; <label>:392                                     ; preds = %384
  %393 = load i32* %x, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %x, align 4
  br label %380

; <label>:395                                     ; preds = %380
  %396 = call i64 @get_time()
  store i64 %396, i64* %sum_time, align 8
  store i32 0, i32* %x, align 4
  br label %397

; <label>:397                                     ; preds = %413, %395
  %398 = load i32* %x, align 4
  %399 = load i32* %6, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %416

; <label>:401                                     ; preds = %397
  %402 = load i32* %x, align 4
  %403 = sext i32 %402 to i64
  %404 = load double** %weights, align 8
  %405 = getelementptr inbounds double* %404, i64 %403
  %406 = load double* %405, align 8
  %407 = load double* %sumWeights, align 8
  %408 = fdiv fast double %406, %407
  %409 = load i32* %x, align 4
  %410 = sext i32 %409 to i64
  %411 = load double** %weights, align 8
  %412 = getelementptr inbounds double* %411, i64 %410
  store double %408, double* %412, align 8
  br label %413

; <label>:413                                     ; preds = %401
  %414 = load i32* %x, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %x, align 4
  br label %397

; <label>:416                                     ; preds = %397
  %417 = call i64 @get_time()
  store i64 %417, i64* %normalize, align 8
  store double 0.000000e+00, double* %xe, align 8
  store double 0.000000e+00, double* %ye, align 8
  store i32 0, i32* %x, align 4
  br label %418

; <label>:418                                     ; preds = %449, %416
  %419 = load i32* %x, align 4
  %420 = load i32* %6, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %452

; <label>:422                                     ; preds = %418
  %423 = load i32* %x, align 4
  %424 = sext i32 %423 to i64
  %425 = load double** %arrayX, align 8
  %426 = getelementptr inbounds double* %425, i64 %424
  %427 = load double* %426, align 8
  %428 = load i32* %x, align 4
  %429 = sext i32 %428 to i64
  %430 = load double** %weights, align 8
  %431 = getelementptr inbounds double* %430, i64 %429
  %432 = load double* %431, align 8
  %433 = fmul fast double %427, %432
  %434 = load double* %xe, align 8
  %435 = fadd fast double %434, %433
  store double %435, double* %xe, align 8
  %436 = load i32* %x, align 4
  %437 = sext i32 %436 to i64
  %438 = load double** %arrayY, align 8
  %439 = getelementptr inbounds double* %438, i64 %437
  %440 = load double* %439, align 8
  %441 = load i32* %x, align 4
  %442 = sext i32 %441 to i64
  %443 = load double** %weights, align 8
  %444 = getelementptr inbounds double* %443, i64 %442
  %445 = load double* %444, align 8
  %446 = fmul fast double %440, %445
  %447 = load double* %ye, align 8
  %448 = fadd fast double %447, %446
  store double %448, double* %ye, align 8
  br label %449

; <label>:449                                     ; preds = %422
  %450 = load i32* %x, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %x, align 4
  br label %418

; <label>:452                                     ; preds = %418
  %453 = call i64 @get_time()
  store i64 %453, i64* %move_time, align 8
  %454 = load double* %xe, align 8
  %455 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), double %454)
  %456 = load double* %ye, align 8
  %457 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), double %456)
  %458 = load double* %xe, align 8
  %459 = load i32* %3, align 4
  %460 = sitofp i32 %459 to double
  %461 = fdiv fast double %460, 2.000000e+00
  %462 = call double @roundDouble(double %461)
  %463 = fptosi double %462 to i32
  %464 = sitofp i32 %463 to double
  %465 = fsub fast double %458, %464
  %466 = call double @llvm.pow.f64(double %465, double 2.000000e+00)
  %467 = load double* %ye, align 8
  %468 = load i32* %2, align 4
  %469 = sitofp i32 %468 to double
  %470 = fdiv fast double %469, 2.000000e+00
  %471 = call double @roundDouble(double %470)
  %472 = fptosi double %471 to i32
  %473 = sitofp i32 %472 to double
  %474 = fsub fast double %467, %473
  %475 = call double @llvm.pow.f64(double %474, double 2.000000e+00)
  %476 = fadd fast double %466, %475
  %477 = call double @llvm.sqrt.f64(double %476)
  store double %477, double* %distance, align 8
  %478 = load double* %distance, align 8
  %479 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), double %478)
  %480 = load double** %weights, align 8
  %481 = getelementptr inbounds double* %480, i64 0
  %482 = load double* %481, align 8
  %483 = load double** %CDF, align 8
  %484 = getelementptr inbounds double* %483, i64 0
  store double %482, double* %484, align 8
  store i32 1, i32* %x, align 4
  br label %485

; <label>:485                                     ; preds = %506, %452
  %486 = load i32* %x, align 4
  %487 = load i32* %6, align 4
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %489, label %509

; <label>:489                                     ; preds = %485
  %490 = load i32* %x, align 4
  %491 = sext i32 %490 to i64
  %492 = load double** %weights, align 8
  %493 = getelementptr inbounds double* %492, i64 %491
  %494 = load double* %493, align 8
  %495 = load i32* %x, align 4
  %496 = sub nsw i32 %495, 1
  %497 = sext i32 %496 to i64
  %498 = load double** %CDF, align 8
  %499 = getelementptr inbounds double* %498, i64 %497
  %500 = load double* %499, align 8
  %501 = fadd fast double %494, %500
  %502 = load i32* %x, align 4
  %503 = sext i32 %502 to i64
  %504 = load double** %CDF, align 8
  %505 = getelementptr inbounds double* %504, i64 %503
  store double %501, double* %505, align 8
  br label %506

; <label>:506                                     ; preds = %489
  %507 = load i32* %x, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %x, align 4
  br label %485

; <label>:509                                     ; preds = %485
  %510 = call i64 @get_time()
  store i64 %510, i64* %cum_sum, align 8
  %511 = load i32* %6, align 4
  %512 = sitofp i32 %511 to double
  %513 = fdiv fast double 1.000000e+00, %512
  %514 = fmul fast double %513, -1.000000e+00
  store double %514, double* %u1, align 8
  store i32 0, i32* %x, align 4
  br label %515

; <label>:515                                     ; preds = %531, %509
  %516 = load i32* %x, align 4
  %517 = load i32* %6, align 4
  %518 = icmp slt i32 %516, %517
  br i1 %518, label %519, label %534

; <label>:519                                     ; preds = %515
  %520 = load double* %u1, align 8
  %521 = load i32* %x, align 4
  %522 = sitofp i32 %521 to double
  %523 = load i32* %6, align 4
  %524 = sitofp i32 %523 to double
  %525 = fdiv fast double %522, %524
  %526 = fadd fast double %520, %525
  %527 = load i32* %x, align 4
  %528 = sext i32 %527 to i64
  %529 = load double** %u, align 8
  %530 = getelementptr inbounds double* %529, i64 %528
  store double %526, double* %530, align 8
  br label %531

; <label>:531                                     ; preds = %519
  %532 = load i32* %x, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %x, align 4
  br label %515

; <label>:534                                     ; preds = %515
  %535 = call i64 @get_time()
  store i64 %535, i64* %u_time, align 8
  store i32 0, i32* %j, align 4
  br label %536

; <label>:536                                     ; preds = %573, %534
  %537 = load i32* %j, align 4
  %538 = load i32* %6, align 4
  %539 = icmp slt i32 %537, %538
  br i1 %539, label %540, label %576

; <label>:540                                     ; preds = %536
  %541 = load double** %CDF, align 8
  %542 = load i32* %6, align 4
  %543 = load i32* %j, align 4
  %544 = sext i32 %543 to i64
  %545 = load double** %u, align 8
  %546 = getelementptr inbounds double* %545, i64 %544
  %547 = load double* %546, align 8
  %548 = call i32 @findIndex(double* %541, i32 %542, double %547)
  store i32 %548, i32* %i, align 4
  %549 = load i32* %i, align 4
  %550 = icmp eq i32 %549, -1
  br i1 %550, label %551, label %554

; <label>:551                                     ; preds = %540
  %552 = load i32* %6, align 4
  %553 = sub nsw i32 %552, 1
  store i32 %553, i32* %i, align 4
  br label %554

; <label>:554                                     ; preds = %551, %540
  %555 = load i32* %i, align 4
  %556 = sext i32 %555 to i64
  %557 = load double** %arrayX, align 8
  %558 = getelementptr inbounds double* %557, i64 %556
  %559 = load double* %558, align 8
  %560 = load i32* %j, align 4
  %561 = sext i32 %560 to i64
  %562 = load double** %xj, align 8
  %563 = getelementptr inbounds double* %562, i64 %561
  store double %559, double* %563, align 8
  %564 = load i32* %i, align 4
  %565 = sext i32 %564 to i64
  %566 = load double** %arrayY, align 8
  %567 = getelementptr inbounds double* %566, i64 %565
  %568 = load double* %567, align 8
  %569 = load i32* %j, align 4
  %570 = sext i32 %569 to i64
  %571 = load double** %yj, align 8
  %572 = getelementptr inbounds double* %571, i64 %570
  store double %568, double* %572, align 8
  br label %573

; <label>:573                                     ; preds = %554
  %574 = load i32* %j, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %j, align 4
  br label %536

; <label>:576                                     ; preds = %536
  %577 = call i64 @get_time()
  store i64 %577, i64* %xyj_time, align 8
  store i32 0, i32* %x, align 4
  br label %578

; <label>:578                                     ; preds = %608, %576
  %579 = load i32* %x, align 4
  %580 = load i32* %6, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %582, label %611

; <label>:582                                     ; preds = %578
  %583 = load i32* %x, align 4
  %584 = sext i32 %583 to i64
  %585 = load double** %xj, align 8
  %586 = getelementptr inbounds double* %585, i64 %584
  %587 = load double* %586, align 8
  %588 = load i32* %x, align 4
  %589 = sext i32 %588 to i64
  %590 = load double** %arrayX, align 8
  %591 = getelementptr inbounds double* %590, i64 %589
  store double %587, double* %591, align 8
  %592 = load i32* %x, align 4
  %593 = sext i32 %592 to i64
  %594 = load double** %yj, align 8
  %595 = getelementptr inbounds double* %594, i64 %593
  %596 = load double* %595, align 8
  %597 = load i32* %x, align 4
  %598 = sext i32 %597 to i64
  %599 = load double** %arrayY, align 8
  %600 = getelementptr inbounds double* %599, i64 %598
  store double %596, double* %600, align 8
  %601 = load i32* %6, align 4
  %602 = sitofp i32 %601 to double
  %603 = fdiv fast double 1.000000e+00, %602
  %604 = load i32* %x, align 4
  %605 = sext i32 %604 to i64
  %606 = load double** %weights, align 8
  %607 = getelementptr inbounds double* %606, i64 %605
  store double %603, double* %607, align 8
  br label %608

; <label>:608                                     ; preds = %582
  %609 = load i32* %x, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %x, align 4
  br label %578

; <label>:611                                     ; preds = %578
  %612 = call i64 @get_time()
  store i64 %612, i64* %reset, align 8
  br label %613

; <label>:613                                     ; preds = %611
  %614 = load i32* %k, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %k, align 4
  br label %160

; <label>:616                                     ; preds = %160
  %617 = load i32** %disk, align 8
  %618 = bitcast i32* %617 to i8*
  call void @free(i8* %618) #5
  %619 = load double** %objxy, align 8
  %620 = bitcast double* %619 to i8*
  call void @free(i8* %620) #5
  %621 = load double** %weights, align 8
  %622 = bitcast double* %621 to i8*
  call void @free(i8* %622) #5
  %623 = load double** %likelihood, align 8
  %624 = bitcast double* %623 to i8*
  call void @free(i8* %624) #5
  %625 = load double** %xj, align 8
  %626 = bitcast double* %625 to i8*
  call void @free(i8* %626) #5
  %627 = load double** %yj, align 8
  %628 = bitcast double* %627 to i8*
  call void @free(i8* %628) #5
  %629 = load double** %arrayX, align 8
  %630 = bitcast double* %629 to i8*
  call void @free(i8* %630) #5
  %631 = load double** %arrayY, align 8
  %632 = bitcast double* %631 to i8*
  call void @free(i8* %632) #5
  %633 = load double** %CDF, align 8
  %634 = bitcast double* %633 to i8*
  call void @free(i8* %634) #5
  %635 = load double** %u, align 8
  %636 = bitcast double* %635 to i8*
  call void @free(i8* %636) #5
  %637 = load i32** %ind, align 8
  %638 = bitcast i32* %637 to i8*
  call void @free(i8* %638) #5
  ret void
}

; Function Attrs: nounwind readnone
declare double @__exp_finite(double) #2

declare i32 @printf(i8*, ...) #4

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
  %seed = alloca i32*, align 8
  %i = alloca i32, align 4
  %I = alloca i32*, align 8
  %start = alloca i64, align 8
  %endVideoSequence = alloca i64, align 8
  %endParticleFilter = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i8** %usage, align 8
  %4 = load i32* %2, align 4
  %5 = icmp ne i32 %4, 9
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8** %usage, align 8
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %7)
  store i32 0, i32* %1
  br label %137

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8
  %11 = getelementptr inbounds i8** %10, i64 1
  %12 = load i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %9
  %16 = load i8*** %3, align 8
  %17 = getelementptr inbounds i8** %16, i64 3
  %18 = load i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

; <label>:21                                      ; preds = %15
  %22 = load i8*** %3, align 8
  %23 = getelementptr inbounds i8** %22, i64 5
  %24 = load i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

; <label>:27                                      ; preds = %21
  %28 = load i8*** %3, align 8
  %29 = getelementptr inbounds i8** %28, i64 7
  %30 = load i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %27, %21, %15, %9
  %34 = load i8** %usage, align 8
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %34)
  store i32 0, i32* %1
  br label %137

; <label>:36                                      ; preds = %27
  %37 = load i8*** %3, align 8
  %38 = getelementptr inbounds i8** %37, i64 2
  %39 = load i8** %38, align 8
  %40 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %IszX) #5
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

; <label>:42                                      ; preds = %36
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:44                                      ; preds = %36
  %45 = load i32* %IszX, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str11, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:49                                      ; preds = %44
  %50 = load i8*** %3, align 8
  %51 = getelementptr inbounds i8** %50, i64 4
  %52 = load i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %IszY) #5
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

; <label>:55                                      ; preds = %49
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str12, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:57                                      ; preds = %49
  %58 = load i32* %IszY, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str13, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:62                                      ; preds = %57
  %63 = load i8*** %3, align 8
  %64 = getelementptr inbounds i8** %63, i64 6
  %65 = load i8** %64, align 8
  %66 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %65, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %Nfr) #5
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

; <label>:68                                      ; preds = %62
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str14, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:70                                      ; preds = %62
  %71 = load i32* %Nfr, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %70
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str15, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:75                                      ; preds = %70
  %76 = load i8*** %3, align 8
  %77 = getelementptr inbounds i8** %76, i64 8
  %78 = load i8** %77, align 8
  %79 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %78, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %Nparticles) #5
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

; <label>:81                                      ; preds = %75
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str16, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:83                                      ; preds = %75
  %84 = load i32* %Nparticles, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

; <label>:86                                      ; preds = %83
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str17, i32 0, i32 0))
  store i32 0, i32* %1
  br label %137

; <label>:88                                      ; preds = %83
  %89 = load i32* %Nparticles, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = call noalias i8* @malloc(i64 %91) #5
  %93 = bitcast i8* %92 to i32*
  store i32* %93, i32** %seed, align 8
  store i32 0, i32* %i, align 4
  br label %94

; <label>:94                                      ; preds = %104, %88
  %95 = load i32* %i, align 4
  %96 = load i32* %Nparticles, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %94
  %99 = load i32* %i, align 4
  %100 = load i32* %i, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32** %seed, align 8
  %103 = getelementptr inbounds i32* %102, i64 %101
  store i32 %99, i32* %103, align 4
  br label %104

; <label>:104                                     ; preds = %98
  %105 = load i32* %i, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %i, align 4
  br label %94

; <label>:107                                     ; preds = %94
  %108 = load i32* %IszX, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = load i32* %IszY, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %110, %112
  %114 = load i32* %Nfr, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %113, %115
  %117 = call noalias i8* @malloc(i64 %116) #5
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %I, align 8
  %119 = call i64 @get_time()
  store i64 %119, i64* %start, align 8
  %120 = load i32** %I, align 8
  %121 = load i32* %IszX, align 4
  %122 = load i32* %IszY, align 4
  %123 = load i32* %Nfr, align 4
  %124 = load i32** %seed, align 8
  call void @videoSequence(i32* %120, i32 %121, i32 %122, i32 %123, i32* %124)
  %125 = call i64 @get_time()
  store i64 %125, i64* %endVideoSequence, align 8
  %126 = load i32** %I, align 8
  %127 = load i32* %IszX, align 4
  %128 = load i32* %IszY, align 4
  %129 = load i32* %Nfr, align 4
  %130 = load i32** %seed, align 8
  %131 = load i32* %Nparticles, align 4
  call void @particleFilter(i32* %126, i32 %127, i32 %128, i32 %129, i32* %130, i32 %131)
  %132 = call i64 @get_time()
  store i64 %132, i64* %endParticleFilter, align 8
  %133 = load i32** %seed, align 8
  %134 = bitcast i32* %133 to i8*
  call void @free(i8* %134) #5
  %135 = load i32** %I, align 8
  %136 = bitcast i32* %135 to i8*
  call void @free(i8* %136) #5
  store i32 0, i32* %1
  br label %137

; <label>:137                                     ; preds = %107, %86, %81, %73, %68, %60, %55, %47, %42, %33, %6
  %138 = load i32* %1
  ret i32 %138
}

declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
