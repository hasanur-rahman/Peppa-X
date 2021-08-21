; ModuleID = '/home/gpli/var-input/particlefilter-ga-bound/particlefilter--x-21--y-25--z-40--np-195/fi-2/llfi/particlefilter-llfi_index.ll'
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
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@load_namestr = internal constant [5 x i8] c"load\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@sitofp_namestr = internal constant [7 x i8] c"sitofp\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@fptosi_namestr = internal constant [7 x i8] c"fptosi\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@srem_namestr = internal constant [5 x i8] c"srem\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@sdiv_namestr = internal constant [5 x i8] c"sdiv\00"

; Function Attrs: nounwind uwtable
define i64 @get_time() #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !1
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #5, !llfi_index !2
  %2 = getelementptr %struct.timeval* %tv, i32 0, i32 0, !llfi_index !3
  %fi = call i64* @injectFault0(i64 3, i64* %2, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %3 = load i64* %fi, align 8, !llfi_index !5
  %fi1 = call i64 @injectFault1(i64 4, i64 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = mul nsw i64 %fi1, 1000000, !llfi_index !6
  %fi2 = call i64 @injectFault1(i64 5, i64 %4, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = getelementptr %struct.timeval* %tv, i32 0, i32 1, !llfi_index !7
  %fi3 = call i64* @injectFault0(i64 6, i64* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = load i64* %fi3, align 8, !llfi_index !8
  %fi4 = call i64 @injectFault1(i64 7, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = add nsw i64 %fi2, %fi4, !llfi_index !9
  %fi5 = call i64 @injectFault1(i64 8, i64 %7, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret i64 %fi5, !llfi_index !10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define float @elapsed_time(i64 %start_time, i64 %end_time) #0 {
  %1 = alloca i64, align 8, !llfi_index !11
  %2 = alloca i64, align 8, !llfi_index !12
  store i64 %start_time, i64* %1, align 8, !llfi_index !13
  store i64 %end_time, i64* %2, align 8, !llfi_index !14
  %3 = load i64* %2, align 8, !llfi_index !15
  %fi = call i64 @injectFault1(i64 14, i64 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = load i64* %1, align 8, !llfi_index !16
  %fi1 = call i64 @injectFault1(i64 15, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = sub nsw i64 %fi, %fi1, !llfi_index !17
  %fi2 = call i64 @injectFault1(i64 16, i64 %5, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = sitofp i64 %fi2 to float, !llfi_index !18
  %fi3 = call float @injectFault2(i64 17, float %6, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = fdiv fast float %fi3, 1.000000e+06, !llfi_index !19
  %fi4 = call float @injectFault2(i64 18, float %7, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret float %fi4, !llfi_index !20
}

; Function Attrs: nounwind uwtable
define double @roundDouble(double %value) #0 {
  %1 = alloca double, align 8, !llfi_index !21
  %2 = alloca double, align 8, !llfi_index !22
  %newValue = alloca i32, align 4, !llfi_index !23
  store double %value, double* %2, align 8, !llfi_index !24
  %3 = load double* %2, align 8, !llfi_index !25
  %fi = call double @injectFault3(i64 24, double %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = fptosi double %fi to i32, !llfi_index !26
  %fi1 = call i32 @injectFault4(i64 25, i32 %4, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi1, i32* %newValue, align 4, !llfi_index !27
  %5 = load double* %2, align 8, !llfi_index !28
  %fi2 = call double @injectFault3(i64 27, double %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = load i32* %newValue, align 4, !llfi_index !29
  %fi3 = call i32 @injectFault4(i64 28, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = sitofp i32 %fi3 to double, !llfi_index !30
  %fi4 = call double @injectFault3(i64 29, double %7, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = fsub fast double %fi2, %fi4, !llfi_index !31
  %fi5 = call double @injectFault3(i64 30, double %8, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = fcmp olt double %fi5, 5.000000e-01, !llfi_index !32
  %fi6 = call i1 @injectFault5(i64 31, i1 %9, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi6, label %10, label %13, !llfi_index !33

; <label>:10                                      ; preds = %0
  %11 = load i32* %newValue, align 4, !llfi_index !34
  %fi7 = call i32 @injectFault4(i64 33, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = sitofp i32 %fi7 to double, !llfi_index !35
  %fi8 = call double @injectFault3(i64 34, double %12, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi8, double* %1, !llfi_index !36
  br label %17, !llfi_index !37

; <label>:13                                      ; preds = %0
  %14 = load i32* %newValue, align 4, !llfi_index !38
  %fi9 = call i32 @injectFault4(i64 37, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = add nsw i32 %fi9, 1, !llfi_index !39
  %fi10 = call i32 @injectFault4(i64 38, i32 %15, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi10, i32* %newValue, align 4, !llfi_index !40
  %16 = sitofp i32 %fi9 to double, !llfi_index !41
  %fi11 = call double @injectFault3(i64 40, double %16, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi11, double* %1, !llfi_index !42
  br label %17, !llfi_index !43

; <label>:17                                      ; preds = %13, %10
  %18 = load double* %1, !llfi_index !44
  %fi12 = call double @injectFault3(i64 43, double %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret double %fi12, !llfi_index !45
}

; Function Attrs: nounwind uwtable
define void @setIf(i32 %testValue, i32 %newValue, i32* %array3D, i32* %dimX, i32* %dimY, i32* %dimZ) #0 {
  %1 = alloca i32, align 4, !llfi_index !46
  %2 = alloca i32, align 4, !llfi_index !47
  %3 = alloca i32*, align 8, !llfi_index !48
  %4 = alloca i32*, align 8, !llfi_index !49
  %5 = alloca i32*, align 8, !llfi_index !50
  %6 = alloca i32*, align 8, !llfi_index !51
  %x = alloca i32, align 4, !llfi_index !52
  %y = alloca i32, align 4, !llfi_index !53
  %z = alloca i32, align 4, !llfi_index !54
  store i32 %testValue, i32* %1, align 4, !llfi_index !55
  store i32 %newValue, i32* %2, align 4, !llfi_index !56
  store i32* %array3D, i32** %3, align 8, !llfi_index !57
  store i32* %dimX, i32** %4, align 8, !llfi_index !58
  store i32* %dimY, i32** %5, align 8, !llfi_index !59
  store i32* %dimZ, i32** %6, align 8, !llfi_index !60
  store i32 0, i32* %x, align 4, !llfi_index !61
  br label %7, !llfi_index !62

; <label>:7                                       ; preds = %73, %0
  %8 = load i32* %x, align 4, !llfi_index !63
  %fi = call i32 @injectFault4(i64 62, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = load i32** %4, align 8, !llfi_index !64
  %fi2 = call i32* @injectFault6(i64 63, i32* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = load i32* %fi2, align 4, !llfi_index !65
  %fi3 = call i32 @injectFault4(i64 64, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = icmp slt i32 %fi, %fi3, !llfi_index !66
  %fi4 = call i1 @injectFault5(i64 65, i1 %11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi4, label %12, label %76, !llfi_index !67

; <label>:12                                      ; preds = %7
  store i32 0, i32* %y, align 4, !llfi_index !68
  br label %13, !llfi_index !69

; <label>:13                                      ; preds = %69, %12
  %14 = load i32* %y, align 4, !llfi_index !70
  %fi26 = call i32 @injectFault4(i64 69, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = load i32** %5, align 8, !llfi_index !71
  %fi27 = call i32* @injectFault6(i64 70, i32* %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = load i32* %fi27, align 4, !llfi_index !72
  %fi28 = call i32 @injectFault4(i64 71, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = icmp slt i32 %fi26, %fi28, !llfi_index !73
  %fi1 = call i1 @injectFault5(i64 72, i1 %17, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi1, label %18, label %72, !llfi_index !74

; <label>:18                                      ; preds = %13
  store i32 0, i32* %z, align 4, !llfi_index !75
  br label %19, !llfi_index !76

; <label>:19                                      ; preds = %65, %18
  %20 = load i32* %z, align 4, !llfi_index !77
  %fi30 = call i32 @injectFault4(i64 76, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = load i32** %6, align 8, !llfi_index !78
  %fi31 = call i32* @injectFault6(i64 77, i32* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = load i32* %fi31, align 4, !llfi_index !79
  %fi32 = call i32 @injectFault4(i64 78, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = icmp slt i32 %fi30, %fi32, !llfi_index !80
  %fi33 = call i1 @injectFault5(i64 79, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi33, label %24, label %68, !llfi_index !81

; <label>:24                                      ; preds = %19
  %25 = load i32* %x, align 4, !llfi_index !82
  %fi34 = call i32 @injectFault4(i64 81, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = load i32** %5, align 8, !llfi_index !83
  %fi35 = call i32* @injectFault6(i64 82, i32* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = load i32* %fi35, align 4, !llfi_index !84
  %fi36 = call i32 @injectFault4(i64 83, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = mul nsw i32 %fi34, %fi36, !llfi_index !85
  %fi37 = call i32 @injectFault4(i64 84, i32 %28, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = load i32** %6, align 8, !llfi_index !86
  %fi38 = call i32* @injectFault6(i64 85, i32* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = load i32* %fi38, align 4, !llfi_index !87
  %fi39 = call i32 @injectFault4(i64 86, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = mul nsw i32 %fi37, %fi39, !llfi_index !88
  %fi40 = call i32 @injectFault4(i64 87, i32 %31, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = load i32* %y, align 4, !llfi_index !89
  %fi41 = call i32 @injectFault4(i64 88, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = load i32** %6, align 8, !llfi_index !90
  %fi29 = call i32* @injectFault6(i64 89, i32* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = load i32* %fi29, align 4, !llfi_index !91
  %fi43 = call i32 @injectFault4(i64 90, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = mul nsw i32 %fi41, %fi43, !llfi_index !92
  %fi44 = call i32 @injectFault4(i64 91, i32 %35, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = add nsw i32 %fi40, %fi44, !llfi_index !93
  %fi45 = call i32 @injectFault4(i64 92, i32 %36, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = load i32* %z, align 4, !llfi_index !94
  %fi46 = call i32 @injectFault4(i64 93, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = add nsw i32 %fi45, %fi46, !llfi_index !95
  %fi47 = call i32 @injectFault4(i64 94, i32 %38, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = sext i32 %fi47 to i64, !llfi_index !96
  %fi48 = call i64 @injectFault1(i64 95, i64 %39, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = load i32** %3, align 8, !llfi_index !97
  %fi49 = call i32* @injectFault6(i64 96, i32* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = getelementptr i32* %fi49, i64 %fi48, !llfi_index !98
  %fi5 = call i32* @injectFault6(i64 97, i32* %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = load i32* %fi5, align 4, !llfi_index !99
  %fi6 = call i32 @injectFault4(i64 98, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = load i32* %1, align 4, !llfi_index !100
  %fi7 = call i32 @injectFault4(i64 99, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = icmp eq i32 %fi6, %fi7, !llfi_index !101
  %fi8 = call i1 @injectFault5(i64 100, i1 %44, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi8, label %45, label %64, !llfi_index !102

; <label>:45                                      ; preds = %24
  %46 = load i32* %2, align 4, !llfi_index !103
  %fi9 = call i32 @injectFault4(i64 102, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = load i32* %x, align 4, !llfi_index !104
  %fi10 = call i32 @injectFault4(i64 103, i32 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = load i32** %5, align 8, !llfi_index !105
  %fi11 = call i32* @injectFault6(i64 104, i32* %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = load i32* %fi11, align 4, !llfi_index !106
  %fi12 = call i32 @injectFault4(i64 105, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %50 = mul nsw i32 %fi10, %fi12, !llfi_index !107
  %fi13 = call i32 @injectFault4(i64 106, i32 %50, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = load i32** %6, align 8, !llfi_index !108
  %fi14 = call i32* @injectFault6(i64 107, i32* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = load i32* %fi14, align 4, !llfi_index !109
  %fi15 = call i32 @injectFault4(i64 108, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %53 = mul nsw i32 %fi13, %fi15, !llfi_index !110
  %fi16 = call i32 @injectFault4(i64 109, i32 %53, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %54 = load i32* %y, align 4, !llfi_index !111
  %fi17 = call i32 @injectFault4(i64 110, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = load i32** %6, align 8, !llfi_index !112
  %fi18 = call i32* @injectFault6(i64 111, i32* %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %56 = load i32* %fi18, align 4, !llfi_index !113
  %fi19 = call i32 @injectFault4(i64 112, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %57 = mul nsw i32 %fi17, %fi19, !llfi_index !114
  %fi20 = call i32 @injectFault4(i64 113, i32 %57, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %58 = add nsw i32 %fi16, %fi20, !llfi_index !115
  %fi21 = call i32 @injectFault4(i64 114, i32 %58, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = load i32* %z, align 4, !llfi_index !116
  %fi22 = call i32 @injectFault4(i64 115, i32 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %60 = add nsw i32 %fi21, %fi22, !llfi_index !117
  %fi23 = call i32 @injectFault4(i64 116, i32 %60, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %61 = sext i32 %fi23 to i64, !llfi_index !118
  %fi24 = call i64 @injectFault1(i64 117, i64 %61, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %62 = load i32** %3, align 8, !llfi_index !119
  %fi25 = call i32* @injectFault6(i64 118, i32* %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %63 = getelementptr i32* %fi25, i64 %fi24, !llfi_index !120
  %fi50 = call i32* @injectFault6(i64 119, i32* %63, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi9, i32* %fi50, align 4, !llfi_index !121
  br label %64, !llfi_index !122

; <label>:64                                      ; preds = %45, %24
  br label %65, !llfi_index !123

; <label>:65                                      ; preds = %64
  %66 = load i32* %z, align 4, !llfi_index !124
  %fi42 = call i32 @injectFault4(i64 123, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %67 = add nsw i32 %fi42, 1, !llfi_index !125
  %fi51 = call i32 @injectFault4(i64 124, i32 %67, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi51, i32* %z, align 4, !llfi_index !126
  br label %19, !llfi_index !127

; <label>:68                                      ; preds = %19
  br label %69, !llfi_index !128

; <label>:69                                      ; preds = %68
  %70 = load i32* %y, align 4, !llfi_index !129
  %fi52 = call i32 @injectFault4(i64 128, i32 %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %71 = add nsw i32 %fi52, 1, !llfi_index !130
  %fi53 = call i32 @injectFault4(i64 129, i32 %71, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi53, i32* %y, align 4, !llfi_index !131
  br label %13, !llfi_index !132

; <label>:72                                      ; preds = %13
  br label %73, !llfi_index !133

; <label>:73                                      ; preds = %72
  %74 = load i32* %x, align 4, !llfi_index !134
  %fi54 = call i32 @injectFault4(i64 133, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %75 = add nsw i32 %fi54, 1, !llfi_index !135
  %fi55 = call i32 @injectFault4(i64 134, i32 %75, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi55, i32* %x, align 4, !llfi_index !136
  br label %7, !llfi_index !137

; <label>:76                                      ; preds = %7
  ret void, !llfi_index !138
}

; Function Attrs: nounwind uwtable
define double @randu(i32* %seed, i32 %index) #0 {
  %1 = alloca i32*, align 8, !llfi_index !139
  %2 = alloca i32, align 4, !llfi_index !140
  %num = alloca i32, align 4, !llfi_index !141
  store i32* %seed, i32** %1, align 8, !llfi_index !142
  store i32 %index, i32* %2, align 4, !llfi_index !143
  %3 = load i32* @A, align 4, !llfi_index !144
  %fi = call i32 @injectFault4(i64 143, i32 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = load i32* %2, align 4, !llfi_index !145
  %fi1 = call i32 @injectFault4(i64 144, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = sext i32 %fi1 to i64, !llfi_index !146
  %fi2 = call i64 @injectFault1(i64 145, i64 %5, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = load i32** %1, align 8, !llfi_index !147
  %fi3 = call i32* @injectFault6(i64 146, i32* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = getelementptr i32* %fi3, i64 %fi2, !llfi_index !148
  %fi4 = call i32* @injectFault6(i64 147, i32* %7, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = load i32* %fi4, align 4, !llfi_index !149
  %fi5 = call i32 @injectFault4(i64 148, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = mul nsw i32 %fi, %fi5, !llfi_index !150
  %fi7 = call i32 @injectFault4(i64 149, i32 %9, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = load i32* @C, align 4, !llfi_index !151
  %fi8 = call i32 @injectFault4(i64 150, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = add nsw i32 %fi7, %fi8, !llfi_index !152
  %fi9 = call i32 @injectFault4(i64 151, i32 %11, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi9, i32* %num, align 4, !llfi_index !153
  %12 = load i32* %num, align 4, !llfi_index !154
  %fi10 = call i32 @injectFault4(i64 153, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = sext i32 %fi10 to i64, !llfi_index !155
  %fi11 = call i64 @injectFault1(i64 154, i64 %13, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = load i64* @M, align 8, !llfi_index !156
  %fi12 = call i64 @injectFault1(i64 155, i64 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = srem i64 %fi11, %fi12, !llfi_index !157
  %fi13 = call i64 @injectFault1(i64 156, i64 %15, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = trunc i64 %fi13 to i32, !llfi_index !158
  %fi14 = call i32 @injectFault4(i64 157, i32 %16, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = load i32* %2, align 4, !llfi_index !159
  %fi6 = call i32 @injectFault4(i64 158, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = sext i32 %fi6 to i64, !llfi_index !160
  %fi15 = call i64 @injectFault1(i64 159, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = load i32** %1, align 8, !llfi_index !161
  %fi16 = call i32* @injectFault6(i64 160, i32* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = getelementptr i32* %fi16, i64 %fi15, !llfi_index !162
  %fi17 = call i32* @injectFault6(i64 161, i32* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi14, i32* %fi17, align 4, !llfi_index !163
  %21 = load i32* %2, align 4, !llfi_index !164
  %fi18 = call i32 @injectFault4(i64 163, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = sext i32 %fi18 to i64, !llfi_index !165
  %fi19 = call i64 @injectFault1(i64 164, i64 %22, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = load i32** %1, align 8, !llfi_index !166
  %fi20 = call i32* @injectFault6(i64 165, i32* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = getelementptr i32* %fi20, i64 %fi19, !llfi_index !167
  %fi21 = call i32* @injectFault6(i64 166, i32* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = load i32* %fi21, align 4, !llfi_index !168
  %fi22 = call i32 @injectFault4(i64 167, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = sitofp i32 %fi22 to double, !llfi_index !169
  %fi23 = call double @injectFault3(i64 168, double %26, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = load i64* @M, align 8, !llfi_index !170
  %fi24 = call i64 @injectFault1(i64 169, i64 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = sitofp i64 %fi24 to double, !llfi_index !171
  %fi25 = call double @injectFault3(i64 170, double %28, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = fdiv fast double %fi23, %fi25, !llfi_index !172
  %fi26 = call double @injectFault3(i64 171, double %29, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = call double @fabs(double %fi26) #6, !llfi_index !173
  ret double %30, !llfi_index !174
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define double @randn(i32* %seed, i32 %index) #0 {
  %1 = alloca i32*, align 8, !llfi_index !175
  %2 = alloca i32, align 4, !llfi_index !176
  %u = alloca double, align 8, !llfi_index !177
  %v = alloca double, align 8, !llfi_index !178
  %cosine = alloca double, align 8, !llfi_index !179
  %rt = alloca double, align 8, !llfi_index !180
  store i32* %seed, i32** %1, align 8, !llfi_index !181
  store i32 %index, i32* %2, align 4, !llfi_index !182
  %3 = load i32** %1, align 8, !llfi_index !183
  %fi6 = call i32* @injectFault6(i64 182, i32* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = load i32* %2, align 4, !llfi_index !184
  %fi7 = call i32 @injectFault4(i64 183, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = call double @randu(i32* %fi6, i32 %fi7), !llfi_index !185
  store double %5, double* %u, align 8, !llfi_index !186
  %6 = load i32** %1, align 8, !llfi_index !187
  %fi8 = call i32* @injectFault6(i64 186, i32* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = load i32* %2, align 4, !llfi_index !188
  %fi9 = call i32 @injectFault4(i64 187, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = call double @randu(i32* %fi8, i32 %fi9), !llfi_index !189
  store double %8, double* %v, align 8, !llfi_index !190
  %9 = call double @__acos_finite(double -1.000000e+00) #6, !llfi_index !191
  %10 = fmul fast double 2.000000e+00, %9, !llfi_index !192
  %fi10 = call double @injectFault3(i64 191, double %10, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = load double* %v, align 8, !llfi_index !193
  %fi11 = call double @injectFault3(i64 192, double %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = fmul fast double %fi10, %fi11, !llfi_index !194
  %fi = call double @injectFault3(i64 193, double %12, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = call double @cos(double %fi) #6, !llfi_index !195
  store double %13, double* %cosine, align 8, !llfi_index !196
  %14 = load double* %u, align 8, !llfi_index !197
  %fi1 = call double @injectFault3(i64 196, double %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = call double @__log_finite(double %fi1) #6, !llfi_index !198
  %16 = fmul fast double -2.000000e+00, %15, !llfi_index !199
  %fi2 = call double @injectFault3(i64 198, double %16, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi2, double* %rt, align 8, !llfi_index !200
  %17 = load double* %rt, align 8, !llfi_index !201
  %fi3 = call double @injectFault3(i64 200, double %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = call double @llvm.sqrt.f64(double %fi3), !llfi_index !202
  %19 = load double* %cosine, align 8, !llfi_index !203
  %fi4 = call double @injectFault3(i64 202, double %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = fmul fast double %18, %fi4, !llfi_index !204
  %fi5 = call double @injectFault3(i64 203, double %20, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret double %fi5, !llfi_index !205
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
  %1 = alloca i32*, align 8, !llfi_index !206
  %2 = alloca i32*, align 8, !llfi_index !207
  %3 = alloca i32*, align 8, !llfi_index !208
  %4 = alloca i32*, align 8, !llfi_index !209
  %5 = alloca i32*, align 8, !llfi_index !210
  %x = alloca i32, align 4, !llfi_index !211
  %y = alloca i32, align 4, !llfi_index !212
  %z = alloca i32, align 4, !llfi_index !213
  store i32* %array3D, i32** %1, align 8, !llfi_index !214
  store i32* %dimX, i32** %2, align 8, !llfi_index !215
  store i32* %dimY, i32** %3, align 8, !llfi_index !216
  store i32* %dimZ, i32** %4, align 8, !llfi_index !217
  store i32* %seed, i32** %5, align 8, !llfi_index !218
  store i32 0, i32* %x, align 4, !llfi_index !219
  br label %6, !llfi_index !220

; <label>:6                                       ; preds = %68, %0
  %7 = load i32* %x, align 4, !llfi_index !221
  %fi = call i32 @injectFault4(i64 220, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = load i32** %2, align 8, !llfi_index !222
  %fi1 = call i32* @injectFault6(i64 221, i32* %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = load i32* %fi1, align 4, !llfi_index !223
  %fi2 = call i32 @injectFault4(i64 222, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = icmp slt i32 %fi, %fi2, !llfi_index !224
  %fi3 = call i1 @injectFault5(i64 223, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi3, label %11, label %71, !llfi_index !225

; <label>:11                                      ; preds = %6
  store i32 0, i32* %y, align 4, !llfi_index !226
  br label %12, !llfi_index !227

; <label>:12                                      ; preds = %64, %11
  %13 = load i32* %y, align 4, !llfi_index !228
  %fi4 = call i32 @injectFault4(i64 227, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = load i32** %3, align 8, !llfi_index !229
  %fi5 = call i32* @injectFault6(i64 228, i32* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = load i32* %fi5, align 4, !llfi_index !230
  %fi6 = call i32 @injectFault4(i64 229, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = icmp slt i32 %fi4, %fi6, !llfi_index !231
  %fi7 = call i1 @injectFault5(i64 230, i1 %16, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi7, label %17, label %67, !llfi_index !232

; <label>:17                                      ; preds = %12
  store i32 0, i32* %z, align 4, !llfi_index !233
  br label %18, !llfi_index !234

; <label>:18                                      ; preds = %60, %17
  %19 = load i32* %z, align 4, !llfi_index !235
  %fi9 = call i32 @injectFault4(i64 234, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = load i32** %4, align 8, !llfi_index !236
  %fi10 = call i32* @injectFault6(i64 235, i32* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = load i32* %fi10, align 4, !llfi_index !237
  %fi11 = call i32 @injectFault4(i64 236, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = icmp slt i32 %fi9, %fi11, !llfi_index !238
  %fi12 = call i1 @injectFault5(i64 237, i1 %22, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi12, label %23, label %63, !llfi_index !239

; <label>:23                                      ; preds = %18
  %24 = load i32* %x, align 4, !llfi_index !240
  %fi13 = call i32 @injectFault4(i64 239, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = load i32** %3, align 8, !llfi_index !241
  %fi14 = call i32* @injectFault6(i64 240, i32* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = load i32* %fi14, align 4, !llfi_index !242
  %fi15 = call i32 @injectFault4(i64 241, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = mul nsw i32 %fi13, %fi15, !llfi_index !243
  %fi16 = call i32 @injectFault4(i64 242, i32 %27, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = load i32** %4, align 8, !llfi_index !244
  %fi17 = call i32* @injectFault6(i64 243, i32* %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = load i32* %fi17, align 4, !llfi_index !245
  %fi18 = call i32 @injectFault4(i64 244, i32 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = mul nsw i32 %fi16, %fi18, !llfi_index !246
  %fi19 = call i32 @injectFault4(i64 245, i32 %30, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = load i32* %y, align 4, !llfi_index !247
  %fi20 = call i32 @injectFault4(i64 246, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = load i32** %4, align 8, !llfi_index !248
  %fi21 = call i32* @injectFault6(i64 247, i32* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = load i32* %fi21, align 4, !llfi_index !249
  %fi8 = call i32 @injectFault4(i64 248, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = mul nsw i32 %fi20, %fi8, !llfi_index !250
  %fi24 = call i32 @injectFault4(i64 249, i32 %34, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = add nsw i32 %fi19, %fi24, !llfi_index !251
  %fi25 = call i32 @injectFault4(i64 250, i32 %35, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = load i32* %z, align 4, !llfi_index !252
  %fi26 = call i32 @injectFault4(i64 251, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = add nsw i32 %fi25, %fi26, !llfi_index !253
  %fi27 = call i32 @injectFault4(i64 252, i32 %37, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = sext i32 %fi27 to i64, !llfi_index !254
  %fi28 = call i64 @injectFault1(i64 253, i64 %38, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = load i32** %1, align 8, !llfi_index !255
  %fi29 = call i32* @injectFault6(i64 254, i32* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = getelementptr i32* %fi29, i64 %fi28, !llfi_index !256
  %fi30 = call i32* @injectFault6(i64 255, i32* %40, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = load i32* %fi30, align 4, !llfi_index !257
  %fi31 = call i32 @injectFault4(i64 256, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = add nsw i32 %fi31, -5, !llfi_index !258
  %fi32 = call i32 @injectFault4(i64 257, i32 %42, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = load i32* %x, align 4, !llfi_index !259
  %fi33 = call i32 @injectFault4(i64 258, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = load i32** %3, align 8, !llfi_index !260
  %fi34 = call i32* @injectFault6(i64 259, i32* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = load i32* %fi34, align 4, !llfi_index !261
  %fi35 = call i32 @injectFault4(i64 260, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = mul nsw i32 %fi33, %fi35, !llfi_index !262
  %fi36 = call i32 @injectFault4(i64 261, i32 %46, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = load i32** %4, align 8, !llfi_index !263
  %fi37 = call i32* @injectFault6(i64 262, i32* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = load i32* %fi37, align 4, !llfi_index !264
  %fi38 = call i32 @injectFault4(i64 263, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = mul nsw i32 %fi36, %fi38, !llfi_index !265
  %fi39 = call i32 @injectFault4(i64 264, i32 %49, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %50 = load i32* %y, align 4, !llfi_index !266
  %fi40 = call i32 @injectFault4(i64 265, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = load i32** %4, align 8, !llfi_index !267
  %fi41 = call i32* @injectFault6(i64 266, i32* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = load i32* %fi41, align 4, !llfi_index !268
  %fi42 = call i32 @injectFault4(i64 267, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %53 = mul nsw i32 %fi40, %fi42, !llfi_index !269
  %fi43 = call i32 @injectFault4(i64 268, i32 %53, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %54 = add nsw i32 %fi39, %fi43, !llfi_index !270
  %fi44 = call i32 @injectFault4(i64 269, i32 %54, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = load i32* %z, align 4, !llfi_index !271
  %fi45 = call i32 @injectFault4(i64 270, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %56 = add nsw i32 %fi44, %fi45, !llfi_index !272
  %fi46 = call i32 @injectFault4(i64 271, i32 %56, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %57 = sext i32 %fi46 to i64, !llfi_index !273
  %fi47 = call i64 @injectFault1(i64 272, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %58 = load i32** %1, align 8, !llfi_index !274
  %fi48 = call i32* @injectFault6(i64 273, i32* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = getelementptr i32* %fi48, i64 %fi47, !llfi_index !275
  %fi49 = call i32* @injectFault6(i64 274, i32* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi32, i32* %fi49, align 4, !llfi_index !276
  br label %60, !llfi_index !277

; <label>:60                                      ; preds = %23
  %61 = load i32* %z, align 4, !llfi_index !278
  %fi50 = call i32 @injectFault4(i64 277, i32 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %62 = add nsw i32 %fi50, 1, !llfi_index !279
  %fi51 = call i32 @injectFault4(i64 278, i32 %62, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi51, i32* %z, align 4, !llfi_index !280
  br label %18, !llfi_index !281

; <label>:63                                      ; preds = %18
  br label %64, !llfi_index !282

; <label>:64                                      ; preds = %63
  %65 = load i32* %y, align 4, !llfi_index !283
  %fi22 = call i32 @injectFault4(i64 282, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %66 = add nsw i32 %fi22, 1, !llfi_index !284
  %fi23 = call i32 @injectFault4(i64 283, i32 %66, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi23, i32* %y, align 4, !llfi_index !285
  br label %12, !llfi_index !286

; <label>:67                                      ; preds = %12
  br label %68, !llfi_index !287

; <label>:68                                      ; preds = %67
  %69 = load i32* %x, align 4, !llfi_index !288
  %fi52 = call i32 @injectFault4(i64 287, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %70 = add nsw i32 %fi52, 1, !llfi_index !289
  %fi53 = call i32 @injectFault4(i64 288, i32 %70, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi53, i32* %x, align 4, !llfi_index !290
  br label %6, !llfi_index !291

; <label>:71                                      ; preds = %6
  ret void, !llfi_index !292
}

; Function Attrs: nounwind uwtable
define void @strelDisk(i32* %disk, i32 %radius) #0 {
  %1 = alloca i32*, align 8, !llfi_index !293
  %2 = alloca i32, align 4, !llfi_index !294
  %diameter = alloca i32, align 4, !llfi_index !295
  %x = alloca i32, align 4, !llfi_index !296
  %y = alloca i32, align 4, !llfi_index !297
  %distance = alloca double, align 8, !llfi_index !298
  store i32* %disk, i32** %1, align 8, !llfi_index !299
  store i32 %radius, i32* %2, align 4, !llfi_index !300
  %3 = load i32* %2, align 4, !llfi_index !301
  %fi = call i32 @injectFault4(i64 300, i32 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %4 = mul nsw i32 %fi, 2, !llfi_index !302
  %fi1 = call i32 @injectFault4(i64 301, i32 %4, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = sub nsw i32 %fi1, 1, !llfi_index !303
  %fi2 = call i32 @injectFault4(i64 302, i32 %5, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi2, i32* %diameter, align 4, !llfi_index !304
  store i32 0, i32* %x, align 4, !llfi_index !305
  br label %6, !llfi_index !306

; <label>:6                                       ; preds = %48, %0
  %7 = load i32* %x, align 4, !llfi_index !307
  %fi3 = call i32 @injectFault4(i64 306, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = load i32* %diameter, align 4, !llfi_index !308
  %fi4 = call i32 @injectFault4(i64 307, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = icmp slt i32 %fi3, %fi4, !llfi_index !309
  %fi6 = call i1 @injectFault5(i64 308, i1 %9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi6, label %10, label %51, !llfi_index !310

; <label>:10                                      ; preds = %6
  store i32 0, i32* %y, align 4, !llfi_index !311
  br label %11, !llfi_index !312

; <label>:11                                      ; preds = %44, %10
  %12 = load i32* %y, align 4, !llfi_index !313
  %fi7 = call i32 @injectFault4(i64 312, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = load i32* %diameter, align 4, !llfi_index !314
  %fi8 = call i32 @injectFault4(i64 313, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = icmp slt i32 %fi7, %fi8, !llfi_index !315
  %fi9 = call i1 @injectFault5(i64 314, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi9, label %15, label %47, !llfi_index !316

; <label>:15                                      ; preds = %11
  %16 = load i32* %x, align 4, !llfi_index !317
  %fi10 = call i32 @injectFault4(i64 316, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = load i32* %2, align 4, !llfi_index !318
  %fi5 = call i32 @injectFault4(i64 317, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = sub nsw i32 %fi10, %fi5, !llfi_index !319
  %fi12 = call i32 @injectFault4(i64 318, i32 %18, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = add nsw i32 %fi12, 1, !llfi_index !320
  %fi13 = call i32 @injectFault4(i64 319, i32 %19, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = sitofp i32 %fi13 to double, !llfi_index !321
  %fi14 = call double @injectFault3(i64 320, double %20, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = call double @llvm.pow.f64(double %fi14, double 2.000000e+00), !llfi_index !322
  %22 = load i32* %y, align 4, !llfi_index !323
  %fi15 = call i32 @injectFault4(i64 322, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = load i32* %2, align 4, !llfi_index !324
  %fi16 = call i32 @injectFault4(i64 323, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = sub nsw i32 %fi15, %fi16, !llfi_index !325
  %fi17 = call i32 @injectFault4(i64 324, i32 %24, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = add nsw i32 %fi17, 1, !llfi_index !326
  %fi18 = call i32 @injectFault4(i64 325, i32 %25, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = sitofp i32 %fi18 to double, !llfi_index !327
  %fi19 = call double @injectFault3(i64 326, double %26, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = call double @llvm.pow.f64(double %fi19, double 2.000000e+00), !llfi_index !328
  %28 = fadd fast double %21, %27, !llfi_index !329
  %fi20 = call double @injectFault3(i64 328, double %28, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = call double @llvm.sqrt.f64(double %fi20), !llfi_index !330
  store double %29, double* %distance, align 8, !llfi_index !331
  %30 = load double* %distance, align 8, !llfi_index !332
  %fi21 = call double @injectFault3(i64 331, double %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = load i32* %2, align 4, !llfi_index !333
  %fi22 = call i32 @injectFault4(i64 332, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = sitofp i32 %fi22 to double, !llfi_index !334
  %fi23 = call double @injectFault3(i64 333, double %32, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = fcmp olt double %fi21, %fi23, !llfi_index !335
  %fi11 = call i1 @injectFault5(i64 334, i1 %33, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi11, label %34, label %43, !llfi_index !336

; <label>:34                                      ; preds = %15
  %35 = load i32* %x, align 4, !llfi_index !337
  %fi24 = call i32 @injectFault4(i64 336, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = load i32* %diameter, align 4, !llfi_index !338
  %fi25 = call i32 @injectFault4(i64 337, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = mul nsw i32 %fi24, %fi25, !llfi_index !339
  %fi26 = call i32 @injectFault4(i64 338, i32 %37, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = load i32* %y, align 4, !llfi_index !340
  %fi27 = call i32 @injectFault4(i64 339, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = add nsw i32 %fi26, %fi27, !llfi_index !341
  %fi28 = call i32 @injectFault4(i64 340, i32 %39, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = sext i32 %fi28 to i64, !llfi_index !342
  %fi29 = call i64 @injectFault1(i64 341, i64 %40, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = load i32** %1, align 8, !llfi_index !343
  %fi30 = call i32* @injectFault6(i64 342, i32* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = getelementptr i32* %fi30, i64 %fi29, !llfi_index !344
  %fi31 = call i32* @injectFault6(i64 343, i32* %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 1, i32* %fi31, align 4, !llfi_index !345
  br label %43, !llfi_index !346

; <label>:43                                      ; preds = %34, %15
  br label %44, !llfi_index !347

; <label>:44                                      ; preds = %43
  %45 = load i32* %y, align 4, !llfi_index !348
  %fi32 = call i32 @injectFault4(i64 347, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = add nsw i32 %fi32, 1, !llfi_index !349
  %fi33 = call i32 @injectFault4(i64 348, i32 %46, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi33, i32* %y, align 4, !llfi_index !350
  br label %11, !llfi_index !351

; <label>:47                                      ; preds = %11
  br label %48, !llfi_index !352

; <label>:48                                      ; preds = %47
  %49 = load i32* %x, align 4, !llfi_index !353
  %fi34 = call i32 @injectFault4(i64 352, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %50 = add nsw i32 %fi34, 1, !llfi_index !354
  %fi35 = call i32 @injectFault4(i64 353, i32 %50, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi35, i32* %x, align 4, !llfi_index !355
  br label %6, !llfi_index !356

; <label>:51                                      ; preds = %6
  ret void, !llfi_index !357
}

; Function Attrs: nounwind readonly
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nounwind uwtable
define void @dilate_matrix(i32* %matrix, i32 %posX, i32 %posY, i32 %posZ, i32 %dimX, i32 %dimY, i32 %dimZ, i32 %error) #0 {
  %1 = alloca i32*, align 8, !llfi_index !358
  %2 = alloca i32, align 4, !llfi_index !359
  %3 = alloca i32, align 4, !llfi_index !360
  %4 = alloca i32, align 4, !llfi_index !361
  %5 = alloca i32, align 4, !llfi_index !362
  %6 = alloca i32, align 4, !llfi_index !363
  %7 = alloca i32, align 4, !llfi_index !364
  %8 = alloca i32, align 4, !llfi_index !365
  %startX = alloca i32, align 4, !llfi_index !366
  %startY = alloca i32, align 4, !llfi_index !367
  %endX = alloca i32, align 4, !llfi_index !368
  %endY = alloca i32, align 4, !llfi_index !369
  %x = alloca i32, align 4, !llfi_index !370
  %y = alloca i32, align 4, !llfi_index !371
  %distance = alloca double, align 8, !llfi_index !372
  store i32* %matrix, i32** %1, align 8, !llfi_index !373
  store i32 %posX, i32* %2, align 4, !llfi_index !374
  store i32 %posY, i32* %3, align 4, !llfi_index !375
  store i32 %posZ, i32* %4, align 4, !llfi_index !376
  store i32 %dimX, i32* %5, align 4, !llfi_index !377
  store i32 %dimY, i32* %6, align 4, !llfi_index !378
  store i32 %dimZ, i32* %7, align 4, !llfi_index !379
  store i32 %error, i32* %8, align 4, !llfi_index !380
  %9 = load i32* %2, align 4, !llfi_index !381
  %fi49 = call i32 @injectFault4(i64 380, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = load i32* %8, align 4, !llfi_index !382
  %fi50 = call i32 @injectFault4(i64 381, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = sub nsw i32 %fi49, %fi50, !llfi_index !383
  %fi51 = call i32 @injectFault4(i64 382, i32 %11, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi51, i32* %startX, align 4, !llfi_index !384
  br label %12, !llfi_index !385

; <label>:12                                      ; preds = %15, %0
  %13 = load i32* %startX, align 4, !llfi_index !386
  %fi47 = call i32 @injectFault4(i64 385, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = icmp slt i32 %fi47, 0, !llfi_index !387
  %fi = call i1 @injectFault5(i64 386, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi, label %15, label %18, !llfi_index !388

; <label>:15                                      ; preds = %12
  %16 = load i32* %startX, align 4, !llfi_index !389
  %fi1 = call i32 @injectFault4(i64 388, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = add nsw i32 %fi1, 1, !llfi_index !390
  %fi48 = call i32 @injectFault4(i64 389, i32 %17, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi48, i32* %startX, align 4, !llfi_index !391
  br label %12, !llfi_index !392

; <label>:18                                      ; preds = %12
  %19 = load i32* %3, align 4, !llfi_index !393
  %fi3 = call i32 @injectFault4(i64 392, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = load i32* %8, align 4, !llfi_index !394
  %fi4 = call i32 @injectFault4(i64 393, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = sub nsw i32 %fi3, %fi4, !llfi_index !395
  %fi5 = call i32 @injectFault4(i64 394, i32 %21, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi5, i32* %startY, align 4, !llfi_index !396
  br label %22, !llfi_index !397

; <label>:22                                      ; preds = %25, %18
  %23 = load i32* %startY, align 4, !llfi_index !398
  %fi6 = call i32 @injectFault4(i64 397, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = icmp slt i32 %fi6, 0, !llfi_index !399
  %fi7 = call i1 @injectFault5(i64 398, i1 %24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi7, label %25, label %28, !llfi_index !400

; <label>:25                                      ; preds = %22
  %26 = load i32* %startY, align 4, !llfi_index !401
  %fi8 = call i32 @injectFault4(i64 400, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = add nsw i32 %fi8, 1, !llfi_index !402
  %fi9 = call i32 @injectFault4(i64 401, i32 %27, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi9, i32* %startY, align 4, !llfi_index !403
  br label %22, !llfi_index !404

; <label>:28                                      ; preds = %22
  %29 = load i32* %2, align 4, !llfi_index !405
  %fi10 = call i32 @injectFault4(i64 404, i32 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = load i32* %8, align 4, !llfi_index !406
  %fi11 = call i32 @injectFault4(i64 405, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = add nsw i32 %fi10, %fi11, !llfi_index !407
  %fi12 = call i32 @injectFault4(i64 406, i32 %31, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi12, i32* %endX, align 4, !llfi_index !408
  br label %32, !llfi_index !409

; <label>:32                                      ; preds = %36, %28
  %33 = load i32* %endX, align 4, !llfi_index !410
  %fi2 = call i32 @injectFault4(i64 409, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = load i32* %5, align 4, !llfi_index !411
  %fi16 = call i32 @injectFault4(i64 410, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = icmp sgt i32 %fi2, %fi16, !llfi_index !412
  %fi17 = call i1 @injectFault5(i64 411, i1 %35, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi17, label %36, label %39, !llfi_index !413

; <label>:36                                      ; preds = %32
  %37 = load i32* %endX, align 4, !llfi_index !414
  %fi18 = call i32 @injectFault4(i64 413, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = add nsw i32 %fi18, -1, !llfi_index !415
  %fi19 = call i32 @injectFault4(i64 414, i32 %38, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi19, i32* %endX, align 4, !llfi_index !416
  br label %32, !llfi_index !417

; <label>:39                                      ; preds = %32
  %40 = load i32* %3, align 4, !llfi_index !418
  %fi20 = call i32 @injectFault4(i64 417, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = load i32* %8, align 4, !llfi_index !419
  %fi21 = call i32 @injectFault4(i64 418, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = add nsw i32 %fi20, %fi21, !llfi_index !420
  %fi22 = call i32 @injectFault4(i64 419, i32 %42, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi22, i32* %endY, align 4, !llfi_index !421
  br label %43, !llfi_index !422

; <label>:43                                      ; preds = %47, %39
  %44 = load i32* %endY, align 4, !llfi_index !423
  %fi23 = call i32 @injectFault4(i64 422, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = load i32* %6, align 4, !llfi_index !424
  %fi24 = call i32 @injectFault4(i64 423, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = icmp sgt i32 %fi23, %fi24, !llfi_index !425
  %fi25 = call i1 @injectFault5(i64 424, i1 %46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi25, label %47, label %50, !llfi_index !426

; <label>:47                                      ; preds = %43
  %48 = load i32* %endY, align 4, !llfi_index !427
  %fi26 = call i32 @injectFault4(i64 426, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = add nsw i32 %fi26, -1, !llfi_index !428
  %fi27 = call i32 @injectFault4(i64 427, i32 %49, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi27, i32* %endY, align 4, !llfi_index !429
  br label %43, !llfi_index !430

; <label>:50                                      ; preds = %43
  %51 = load i32* %startX, align 4, !llfi_index !431
  %fi28 = call i32 @injectFault4(i64 430, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi28, i32* %x, align 4, !llfi_index !432
  br label %52, !llfi_index !433

; <label>:52                                      ; preds = %99, %50
  %53 = load i32* %x, align 4, !llfi_index !434
  %fi29 = call i32 @injectFault4(i64 433, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %54 = load i32* %endX, align 4, !llfi_index !435
  %fi30 = call i32 @injectFault4(i64 434, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = icmp slt i32 %fi29, %fi30, !llfi_index !436
  %fi31 = call i1 @injectFault5(i64 435, i1 %55, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi31, label %56, label %102, !llfi_index !437

; <label>:56                                      ; preds = %52
  %57 = load i32* %startY, align 4, !llfi_index !438
  %fi32 = call i32 @injectFault4(i64 437, i32 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi32, i32* %y, align 4, !llfi_index !439
  br label %58, !llfi_index !440

; <label>:58                                      ; preds = %95, %56
  %59 = load i32* %y, align 4, !llfi_index !441
  %fi33 = call i32 @injectFault4(i64 440, i32 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %60 = load i32* %endY, align 4, !llfi_index !442
  %fi34 = call i32 @injectFault4(i64 441, i32 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %61 = icmp slt i32 %fi33, %fi34, !llfi_index !443
  %fi35 = call i1 @injectFault5(i64 442, i1 %61, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi35, label %62, label %98, !llfi_index !444

; <label>:62                                      ; preds = %58
  %63 = load i32* %x, align 4, !llfi_index !445
  %fi36 = call i32 @injectFault4(i64 444, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %64 = load i32* %2, align 4, !llfi_index !446
  %fi37 = call i32 @injectFault4(i64 445, i32 %64, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %65 = sub nsw i32 %fi36, %fi37, !llfi_index !447
  %fi13 = call i32 @injectFault4(i64 446, i32 %65, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %66 = sitofp i32 %fi13 to double, !llfi_index !448
  %fi14 = call double @injectFault3(i64 447, double %66, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %67 = call double @llvm.pow.f64(double %fi14, double 2.000000e+00), !llfi_index !449
  %68 = load i32* %y, align 4, !llfi_index !450
  %fi15 = call i32 @injectFault4(i64 449, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %69 = load i32* %3, align 4, !llfi_index !451
  %fi38 = call i32 @injectFault4(i64 450, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %70 = sub nsw i32 %fi15, %fi38, !llfi_index !452
  %fi39 = call i32 @injectFault4(i64 451, i32 %70, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %71 = sitofp i32 %fi39 to double, !llfi_index !453
  %fi40 = call double @injectFault3(i64 452, double %71, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %72 = call double @llvm.pow.f64(double %fi40, double 2.000000e+00), !llfi_index !454
  %73 = fadd fast double %67, %72, !llfi_index !455
  %fi41 = call double @injectFault3(i64 454, double %73, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %74 = call double @llvm.sqrt.f64(double %fi41), !llfi_index !456
  store double %74, double* %distance, align 8, !llfi_index !457
  %75 = load double* %distance, align 8, !llfi_index !458
  %fi42 = call double @injectFault3(i64 457, double %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %76 = load i32* %8, align 4, !llfi_index !459
  %fi43 = call i32 @injectFault4(i64 458, i32 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %77 = sitofp i32 %fi43 to double, !llfi_index !460
  %fi44 = call double @injectFault3(i64 459, double %77, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %78 = fcmp olt double %fi42, %fi44, !llfi_index !461
  %fi45 = call i1 @injectFault5(i64 460, i1 %78, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi45, label %79, label %94, !llfi_index !462

; <label>:79                                      ; preds = %62
  %80 = load i32* %x, align 4, !llfi_index !463
  %fi46 = call i32 @injectFault4(i64 462, i32 %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %81 = load i32* %6, align 4, !llfi_index !464
  %fi52 = call i32 @injectFault4(i64 463, i32 %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %82 = mul nsw i32 %fi46, %fi52, !llfi_index !465
  %fi53 = call i32 @injectFault4(i64 464, i32 %82, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %83 = load i32* %7, align 4, !llfi_index !466
  %fi54 = call i32 @injectFault4(i64 465, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %84 = mul nsw i32 %fi53, %fi54, !llfi_index !467
  %fi55 = call i32 @injectFault4(i64 466, i32 %84, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %85 = load i32* %y, align 4, !llfi_index !468
  %fi56 = call i32 @injectFault4(i64 467, i32 %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %86 = load i32* %7, align 4, !llfi_index !469
  %fi57 = call i32 @injectFault4(i64 468, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %87 = mul nsw i32 %fi56, %fi57, !llfi_index !470
  %fi58 = call i32 @injectFault4(i64 469, i32 %87, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %88 = add nsw i32 %fi55, %fi58, !llfi_index !471
  %fi59 = call i32 @injectFault4(i64 470, i32 %88, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %89 = load i32* %4, align 4, !llfi_index !472
  %fi60 = call i32 @injectFault4(i64 471, i32 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %90 = add nsw i32 %fi59, %fi60, !llfi_index !473
  %fi61 = call i32 @injectFault4(i64 472, i32 %90, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %91 = sext i32 %fi61 to i64, !llfi_index !474
  %fi62 = call i64 @injectFault1(i64 473, i64 %91, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %92 = load i32** %1, align 8, !llfi_index !475
  %fi63 = call i32* @injectFault6(i64 474, i32* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %93 = getelementptr i32* %fi63, i64 %fi62, !llfi_index !476
  %fi64 = call i32* @injectFault6(i64 475, i32* %93, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 1, i32* %fi64, align 4, !llfi_index !477
  br label %94, !llfi_index !478

; <label>:94                                      ; preds = %79, %62
  br label %95, !llfi_index !479

; <label>:95                                      ; preds = %94
  %96 = load i32* %y, align 4, !llfi_index !480
  %fi65 = call i32 @injectFault4(i64 479, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %97 = add nsw i32 %fi65, 1, !llfi_index !481
  %fi66 = call i32 @injectFault4(i64 480, i32 %97, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi66, i32* %y, align 4, !llfi_index !482
  br label %58, !llfi_index !483

; <label>:98                                      ; preds = %58
  br label %99, !llfi_index !484

; <label>:99                                      ; preds = %98
  %100 = load i32* %x, align 4, !llfi_index !485
  %fi67 = call i32 @injectFault4(i64 484, i32 %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %101 = add nsw i32 %fi67, 1, !llfi_index !486
  %fi68 = call i32 @injectFault4(i64 485, i32 %101, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi68, i32* %x, align 4, !llfi_index !487
  br label %52, !llfi_index !488

; <label>:102                                     ; preds = %52
  ret void, !llfi_index !489
}

; Function Attrs: nounwind uwtable
define void @imdilate_disk(i32* %matrix, i32 %dimX, i32 %dimY, i32 %dimZ, i32 %error, i32* %newMatrix) #0 {
  %1 = alloca i32*, align 8, !llfi_index !490
  %2 = alloca i32, align 4, !llfi_index !491
  %3 = alloca i32, align 4, !llfi_index !492
  %4 = alloca i32, align 4, !llfi_index !493
  %5 = alloca i32, align 4, !llfi_index !494
  %6 = alloca i32*, align 8, !llfi_index !495
  %x = alloca i32, align 4, !llfi_index !496
  %y = alloca i32, align 4, !llfi_index !497
  %z = alloca i32, align 4, !llfi_index !498
  store i32* %matrix, i32** %1, align 8, !llfi_index !499
  store i32 %dimX, i32* %2, align 4, !llfi_index !500
  store i32 %dimY, i32* %3, align 4, !llfi_index !501
  store i32 %dimZ, i32* %4, align 4, !llfi_index !502
  store i32 %error, i32* %5, align 4, !llfi_index !503
  store i32* %newMatrix, i32** %6, align 8, !llfi_index !504
  store i32 0, i32* %z, align 4, !llfi_index !505
  br label %7, !llfi_index !506

; <label>:7                                       ; preds = %56, %0
  %8 = load i32* %z, align 4, !llfi_index !507
  %fi = call i32 @injectFault4(i64 506, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = load i32* %4, align 4, !llfi_index !508
  %fi1 = call i32 @injectFault4(i64 507, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = icmp slt i32 %fi, %fi1, !llfi_index !509
  %fi2 = call i1 @injectFault5(i64 508, i1 %10, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi2, label %11, label %59, !llfi_index !510

; <label>:11                                      ; preds = %7
  store i32 0, i32* %x, align 4, !llfi_index !511
  br label %12, !llfi_index !512

; <label>:12                                      ; preds = %52, %11
  %13 = load i32* %x, align 4, !llfi_index !513
  %fi3 = call i32 @injectFault4(i64 512, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = load i32* %2, align 4, !llfi_index !514
  %fi4 = call i32 @injectFault4(i64 513, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = icmp slt i32 %fi3, %fi4, !llfi_index !515
  %fi5 = call i1 @injectFault5(i64 514, i1 %15, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi5, label %16, label %55, !llfi_index !516

; <label>:16                                      ; preds = %12
  store i32 0, i32* %y, align 4, !llfi_index !517
  br label %17, !llfi_index !518

; <label>:17                                      ; preds = %48, %16
  %18 = load i32* %y, align 4, !llfi_index !519
  %fi7 = call i32 @injectFault4(i64 518, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = load i32* %3, align 4, !llfi_index !520
  %fi8 = call i32 @injectFault4(i64 519, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = icmp slt i32 %fi7, %fi8, !llfi_index !521
  %fi9 = call i1 @injectFault5(i64 520, i1 %20, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi9, label %21, label %51, !llfi_index !522

; <label>:21                                      ; preds = %17
  %22 = load i32* %x, align 4, !llfi_index !523
  %fi10 = call i32 @injectFault4(i64 522, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = load i32* %3, align 4, !llfi_index !524
  %fi11 = call i32 @injectFault4(i64 523, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = mul nsw i32 %fi10, %fi11, !llfi_index !525
  %fi12 = call i32 @injectFault4(i64 524, i32 %24, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = load i32* %4, align 4, !llfi_index !526
  %fi13 = call i32 @injectFault4(i64 525, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = mul nsw i32 %fi12, %fi13, !llfi_index !527
  %fi14 = call i32 @injectFault4(i64 526, i32 %26, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = load i32* %y, align 4, !llfi_index !528
  %fi15 = call i32 @injectFault4(i64 527, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = load i32* %4, align 4, !llfi_index !529
  %fi16 = call i32 @injectFault4(i64 528, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = mul nsw i32 %fi15, %fi16, !llfi_index !530
  %fi17 = call i32 @injectFault4(i64 529, i32 %29, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = add nsw i32 %fi14, %fi17, !llfi_index !531
  %fi18 = call i32 @injectFault4(i64 530, i32 %30, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = load i32* %z, align 4, !llfi_index !532
  %fi19 = call i32 @injectFault4(i64 531, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = add nsw i32 %fi18, %fi19, !llfi_index !533
  %fi20 = call i32 @injectFault4(i64 532, i32 %32, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = sext i32 %fi20 to i64, !llfi_index !534
  %fi6 = call i64 @injectFault1(i64 533, i64 %33, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = load i32** %1, align 8, !llfi_index !535
  %fi21 = call i32* @injectFault6(i64 534, i32* %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = getelementptr i32* %fi21, i64 %fi6, !llfi_index !536
  %fi22 = call i32* @injectFault6(i64 535, i32* %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = load i32* %fi22, align 4, !llfi_index !537
  %fi23 = call i32 @injectFault4(i64 536, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = icmp eq i32 %fi23, 1, !llfi_index !538
  %fi24 = call i1 @injectFault5(i64 537, i1 %37, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi24, label %38, label %47, !llfi_index !539

; <label>:38                                      ; preds = %21
  %39 = load i32** %6, align 8, !llfi_index !540
  %fi25 = call i32* @injectFault6(i64 539, i32* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = load i32* %x, align 4, !llfi_index !541
  %fi26 = call i32 @injectFault4(i64 540, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = load i32* %y, align 4, !llfi_index !542
  %fi27 = call i32 @injectFault4(i64 541, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = load i32* %z, align 4, !llfi_index !543
  %fi28 = call i32 @injectFault4(i64 542, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = load i32* %2, align 4, !llfi_index !544
  %fi29 = call i32 @injectFault4(i64 543, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = load i32* %3, align 4, !llfi_index !545
  %fi30 = call i32 @injectFault4(i64 544, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = load i32* %4, align 4, !llfi_index !546
  %fi31 = call i32 @injectFault4(i64 545, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = load i32* %5, align 4, !llfi_index !547
  %fi32 = call i32 @injectFault4(i64 546, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @dilate_matrix(i32* %fi25, i32 %fi26, i32 %fi27, i32 %fi28, i32 %fi29, i32 %fi30, i32 %fi31, i32 %fi32), !llfi_index !548
  br label %47, !llfi_index !549

; <label>:47                                      ; preds = %38, %21
  br label %48, !llfi_index !550

; <label>:48                                      ; preds = %47
  %49 = load i32* %y, align 4, !llfi_index !551
  %fi33 = call i32 @injectFault4(i64 550, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %50 = add nsw i32 %fi33, 1, !llfi_index !552
  %fi34 = call i32 @injectFault4(i64 551, i32 %50, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi34, i32* %y, align 4, !llfi_index !553
  br label %17, !llfi_index !554

; <label>:51                                      ; preds = %17
  br label %52, !llfi_index !555

; <label>:52                                      ; preds = %51
  %53 = load i32* %x, align 4, !llfi_index !556
  %fi35 = call i32 @injectFault4(i64 555, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %54 = add nsw i32 %fi35, 1, !llfi_index !557
  %fi36 = call i32 @injectFault4(i64 556, i32 %54, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi36, i32* %x, align 4, !llfi_index !558
  br label %12, !llfi_index !559

; <label>:55                                      ; preds = %12
  br label %56, !llfi_index !560

; <label>:56                                      ; preds = %55
  %57 = load i32* %z, align 4, !llfi_index !561
  %fi37 = call i32 @injectFault4(i64 560, i32 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %58 = add nsw i32 %fi37, 1, !llfi_index !562
  %fi38 = call i32 @injectFault4(i64 561, i32 %58, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi38, i32* %z, align 4, !llfi_index !563
  br label %7, !llfi_index !564

; <label>:59                                      ; preds = %7
  ret void, !llfi_index !565
}

; Function Attrs: nounwind uwtable
define void @getneighbors(i32* %se, i32 %numOnes, double* %neighbors, i32 %radius) #0 {
  %1 = alloca i32*, align 8, !llfi_index !566
  %2 = alloca i32, align 4, !llfi_index !567
  %3 = alloca double*, align 8, !llfi_index !568
  %4 = alloca i32, align 4, !llfi_index !569
  %x = alloca i32, align 4, !llfi_index !570
  %y = alloca i32, align 4, !llfi_index !571
  %neighY = alloca i32, align 4, !llfi_index !572
  %center = alloca i32, align 4, !llfi_index !573
  %diameter = alloca i32, align 4, !llfi_index !574
  store i32* %se, i32** %1, align 8, !llfi_index !575
  store i32 %numOnes, i32* %2, align 4, !llfi_index !576
  store double* %neighbors, double** %3, align 8, !llfi_index !577
  store i32 %radius, i32* %4, align 4, !llfi_index !578
  store i32 0, i32* %neighY, align 4, !llfi_index !579
  %5 = load i32* %4, align 4, !llfi_index !580
  %fi = call i32 @injectFault4(i64 579, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = sub nsw i32 %fi, 1, !llfi_index !581
  %fi1 = call i32 @injectFault4(i64 580, i32 %6, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi1, i32* %center, align 4, !llfi_index !582
  %7 = load i32* %4, align 4, !llfi_index !583
  %fi2 = call i32 @injectFault4(i64 582, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = mul nsw i32 %fi2, 2, !llfi_index !584
  %fi3 = call i32 @injectFault4(i64 583, i32 %8, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = sub nsw i32 %fi3, 1, !llfi_index !585
  %fi5 = call i32 @injectFault4(i64 584, i32 %9, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi5, i32* %diameter, align 4, !llfi_index !586
  store i32 0, i32* %x, align 4, !llfi_index !587
  br label %10, !llfi_index !588

; <label>:10                                      ; preds = %57, %0
  %11 = load i32* %x, align 4, !llfi_index !589
  %fi6 = call i32 @injectFault4(i64 588, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = load i32* %diameter, align 4, !llfi_index !590
  %fi7 = call i32 @injectFault4(i64 589, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = icmp slt i32 %fi6, %fi7, !llfi_index !591
  %fi8 = call i1 @injectFault5(i64 590, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi8, label %14, label %60, !llfi_index !592

; <label>:14                                      ; preds = %10
  store i32 0, i32* %y, align 4, !llfi_index !593
  br label %15, !llfi_index !594

; <label>:15                                      ; preds = %53, %14
  %16 = load i32* %y, align 4, !llfi_index !595
  %fi9 = call i32 @injectFault4(i64 594, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = load i32* %diameter, align 4, !llfi_index !596
  %fi4 = call i32 @injectFault4(i64 595, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = icmp slt i32 %fi9, %fi4, !llfi_index !597
  %fi11 = call i1 @injectFault5(i64 596, i1 %18, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi11, label %19, label %56, !llfi_index !598

; <label>:19                                      ; preds = %15
  %20 = load i32* %x, align 4, !llfi_index !599
  %fi12 = call i32 @injectFault4(i64 598, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = load i32* %diameter, align 4, !llfi_index !600
  %fi13 = call i32 @injectFault4(i64 599, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = mul nsw i32 %fi12, %fi13, !llfi_index !601
  %fi14 = call i32 @injectFault4(i64 600, i32 %22, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = load i32* %y, align 4, !llfi_index !602
  %fi15 = call i32 @injectFault4(i64 601, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = add nsw i32 %fi14, %fi15, !llfi_index !603
  %fi16 = call i32 @injectFault4(i64 602, i32 %24, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = sext i32 %fi16 to i64, !llfi_index !604
  %fi17 = call i64 @injectFault1(i64 603, i64 %25, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = load i32** %1, align 8, !llfi_index !605
  %fi18 = call i32* @injectFault6(i64 604, i32* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = getelementptr i32* %fi18, i64 %fi17, !llfi_index !606
  %fi19 = call i32* @injectFault6(i64 605, i32* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = load i32* %fi19, align 4, !llfi_index !607
  %fi20 = call i32 @injectFault4(i64 606, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = icmp ne i32 %fi20, 0, !llfi_index !608
  %fi21 = call i1 @injectFault5(i64 607, i1 %29, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi21, label %30, label %52, !llfi_index !609

; <label>:30                                      ; preds = %19
  %31 = load i32* %y, align 4, !llfi_index !610
  %fi22 = call i32 @injectFault4(i64 609, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = load i32* %center, align 4, !llfi_index !611
  %fi23 = call i32 @injectFault4(i64 610, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = sub nsw i32 %fi22, %fi23, !llfi_index !612
  %fi10 = call i32 @injectFault4(i64 611, i32 %33, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = sitofp i32 %fi10 to double, !llfi_index !613
  %fi24 = call double @injectFault3(i64 612, double %34, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = load i32* %neighY, align 4, !llfi_index !614
  %fi25 = call i32 @injectFault4(i64 613, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = mul nsw i32 %fi25, 2, !llfi_index !615
  %fi26 = call i32 @injectFault4(i64 614, i32 %36, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = sext i32 %fi26 to i64, !llfi_index !616
  %fi27 = call i64 @injectFault1(i64 615, i64 %37, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = load double** %3, align 8, !llfi_index !617
  %fi28 = call double* @injectFault8(i64 616, double* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = getelementptr double* %fi28, i64 %fi27, !llfi_index !618
  %fi29 = call double* @injectFault8(i64 617, double* %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi24, double* %fi29, align 8, !llfi_index !619
  %40 = load i32* %x, align 4, !llfi_index !620
  %fi30 = call i32 @injectFault4(i64 619, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = load i32* %center, align 4, !llfi_index !621
  %fi31 = call i32 @injectFault4(i64 620, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = sub nsw i32 %fi30, %fi31, !llfi_index !622
  %fi32 = call i32 @injectFault4(i64 621, i32 %42, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = sitofp i32 %fi32 to double, !llfi_index !623
  %fi33 = call double @injectFault3(i64 622, double %43, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = load i32* %neighY, align 4, !llfi_index !624
  %fi34 = call i32 @injectFault4(i64 623, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = mul nsw i32 %fi34, 2, !llfi_index !625
  %fi35 = call i32 @injectFault4(i64 624, i32 %45, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = add nsw i32 %fi35, 1, !llfi_index !626
  %fi36 = call i32 @injectFault4(i64 625, i32 %46, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = sext i32 %fi36 to i64, !llfi_index !627
  %fi37 = call i64 @injectFault1(i64 626, i64 %47, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = load double** %3, align 8, !llfi_index !628
  %fi38 = call double* @injectFault8(i64 627, double* %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = getelementptr double* %fi38, i64 %fi37, !llfi_index !629
  %fi39 = call double* @injectFault8(i64 628, double* %49, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi33, double* %fi39, align 8, !llfi_index !630
  %50 = load i32* %neighY, align 4, !llfi_index !631
  %fi40 = call i32 @injectFault4(i64 630, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = add nsw i32 %fi40, 1, !llfi_index !632
  %fi41 = call i32 @injectFault4(i64 631, i32 %51, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi41, i32* %neighY, align 4, !llfi_index !633
  br label %52, !llfi_index !634

; <label>:52                                      ; preds = %30, %19
  br label %53, !llfi_index !635

; <label>:53                                      ; preds = %52
  %54 = load i32* %y, align 4, !llfi_index !636
  %fi42 = call i32 @injectFault4(i64 635, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = add nsw i32 %fi42, 1, !llfi_index !637
  %fi43 = call i32 @injectFault4(i64 636, i32 %55, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi43, i32* %y, align 4, !llfi_index !638
  br label %15, !llfi_index !639

; <label>:56                                      ; preds = %15
  br label %57, !llfi_index !640

; <label>:57                                      ; preds = %56
  %58 = load i32* %x, align 4, !llfi_index !641
  %fi44 = call i32 @injectFault4(i64 640, i32 %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = add nsw i32 %fi44, 1, !llfi_index !642
  %fi45 = call i32 @injectFault4(i64 641, i32 %59, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi45, i32* %x, align 4, !llfi_index !643
  br label %10, !llfi_index !644

; <label>:60                                      ; preds = %10
  ret void, !llfi_index !645
}

; Function Attrs: nounwind uwtable
define void @videoSequence(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr, i32* %seed) #0 {
  %1 = alloca i32*, align 8, !llfi_index !646
  %2 = alloca i32, align 4, !llfi_index !647
  %3 = alloca i32, align 4, !llfi_index !648
  %4 = alloca i32, align 4, !llfi_index !649
  %5 = alloca i32*, align 8, !llfi_index !650
  %k = alloca i32, align 4, !llfi_index !651
  %max_size = alloca i32, align 4, !llfi_index !652
  %x0 = alloca i32, align 4, !llfi_index !653
  %y0 = alloca i32, align 4, !llfi_index !654
  %xk = alloca i32, align 4, !llfi_index !655
  %yk = alloca i32, align 4, !llfi_index !656
  %pos = alloca i32, align 4, !llfi_index !657
  %newMatrix = alloca i32*, align 8, !llfi_index !658
  %x = alloca i32, align 4, !llfi_index !659
  %y = alloca i32, align 4, !llfi_index !660
  store i32* %I, i32** %1, align 8, !llfi_index !661
  store i32 %IszX, i32* %2, align 4, !llfi_index !662
  store i32 %IszY, i32* %3, align 4, !llfi_index !663
  store i32 %Nfr, i32* %4, align 4, !llfi_index !664
  store i32* %seed, i32** %5, align 8, !llfi_index !665
  %6 = load i32* %2, align 4, !llfi_index !666
  %fi42 = call i32 @injectFault4(i64 665, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = load i32* %3, align 4, !llfi_index !667
  %fi43 = call i32 @injectFault4(i64 666, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = mul nsw i32 %fi42, %fi43, !llfi_index !668
  %fi44 = call i32 @injectFault4(i64 667, i32 %8, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = load i32* %4, align 4, !llfi_index !669
  %fi46 = call i32 @injectFault4(i64 668, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = mul nsw i32 %fi44, %fi46, !llfi_index !670
  %fi47 = call i32 @injectFault4(i64 669, i32 %10, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi47, i32* %max_size, align 4, !llfi_index !671
  %11 = load i32* %3, align 4, !llfi_index !672
  %fi48 = call i32 @injectFault4(i64 671, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = sitofp i32 %fi48 to double, !llfi_index !673
  %fi49 = call double @injectFault3(i64 672, double %12, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = fdiv fast double %fi49, 2.000000e+00, !llfi_index !674
  %fi50 = call double @injectFault3(i64 673, double %13, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = call double @roundDouble(double %fi50), !llfi_index !675
  %15 = fptosi double %14 to i32, !llfi_index !676
  %fi51 = call i32 @injectFault4(i64 675, i32 %15, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi51, i32* %x0, align 4, !llfi_index !677
  %16 = load i32* %2, align 4, !llfi_index !678
  %fi52 = call i32 @injectFault4(i64 677, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = sitofp i32 %fi52 to double, !llfi_index !679
  %fi45 = call double @injectFault3(i64 678, double %17, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = fdiv fast double %fi45, 2.000000e+00, !llfi_index !680
  %fi54 = call double @injectFault3(i64 679, double %18, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = call double @roundDouble(double %fi54), !llfi_index !681
  %20 = fptosi double %19 to i32, !llfi_index !682
  %fi55 = call i32 @injectFault4(i64 681, i32 %20, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi55, i32* %y0, align 4, !llfi_index !683
  %21 = load i32* %x0, align 4, !llfi_index !684
  %fi56 = call i32 @injectFault4(i64 683, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = load i32* %3, align 4, !llfi_index !685
  %fi57 = call i32 @injectFault4(i64 684, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = mul nsw i32 %fi56, %fi57, !llfi_index !686
  %fi58 = call i32 @injectFault4(i64 685, i32 %23, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = load i32* %4, align 4, !llfi_index !687
  %fi59 = call i32 @injectFault4(i64 686, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = mul nsw i32 %fi58, %fi59, !llfi_index !688
  %fi60 = call i32 @injectFault4(i64 687, i32 %25, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = load i32* %y0, align 4, !llfi_index !689
  %fi61 = call i32 @injectFault4(i64 688, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = load i32* %4, align 4, !llfi_index !690
  %fi62 = call i32 @injectFault4(i64 689, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = mul nsw i32 %fi61, %fi62, !llfi_index !691
  %fi63 = call i32 @injectFault4(i64 690, i32 %28, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = add nsw i32 %fi60, %fi63, !llfi_index !692
  %fi64 = call i32 @injectFault4(i64 691, i32 %29, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = add nsw i32 %fi64, 0, !llfi_index !693
  %fi65 = call i32 @injectFault4(i64 692, i32 %30, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = sext i32 %fi65 to i64, !llfi_index !694
  %fi66 = call i64 @injectFault1(i64 693, i64 %31, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = load i32** %1, align 8, !llfi_index !695
  %fi67 = call i32* @injectFault6(i64 694, i32* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = getelementptr i32* %fi67, i64 %fi66, !llfi_index !696
  %fi53 = call i32* @injectFault6(i64 695, i32* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 1, i32* %fi53, align 4, !llfi_index !697
  store i32 1, i32* %k, align 4, !llfi_index !698
  br label %34, !llfi_index !699

; <label>:34                                      ; preds = %70, %0
  %35 = load i32* %k, align 4, !llfi_index !700
  %fi69 = call i32 @injectFault4(i64 699, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = load i32* %4, align 4, !llfi_index !701
  %fi70 = call i32 @injectFault4(i64 700, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = icmp slt i32 %fi69, %fi70, !llfi_index !702
  %fi71 = call i1 @injectFault5(i64 701, i1 %37, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi71, label %38, label %73, !llfi_index !703

; <label>:38                                      ; preds = %34
  %39 = load i32* %x0, align 4, !llfi_index !704
  %fi72 = call i32 @injectFault4(i64 703, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = load i32* %k, align 4, !llfi_index !705
  %fi73 = call i32 @injectFault4(i64 704, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = sub nsw i32 %fi73, 1, !llfi_index !706
  %fi74 = call i32 @injectFault4(i64 705, i32 %41, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = add nsw i32 %fi72, %fi74, !llfi_index !707
  %fi75 = call i32 @injectFault4(i64 706, i32 %42, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = call i32 @abs(i32 %fi75) #6, !llfi_index !708
  store i32 %43, i32* %xk, align 4, !llfi_index !709
  %44 = load i32* %y0, align 4, !llfi_index !710
  %fi76 = call i32 @injectFault4(i64 709, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = load i32* %k, align 4, !llfi_index !711
  %fi77 = call i32 @injectFault4(i64 710, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = sub nsw i32 %fi77, 1, !llfi_index !712
  %fi78 = call i32 @injectFault4(i64 711, i32 %46, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = mul nsw i32 2, %fi78, !llfi_index !713
  %fi79 = call i32 @injectFault4(i64 712, i32 %47, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = sub nsw i32 %fi76, %fi79, !llfi_index !714
  %fi80 = call i32 @injectFault4(i64 713, i32 %48, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = call i32 @abs(i32 %fi80) #6, !llfi_index !715
  store i32 %49, i32* %yk, align 4, !llfi_index !716
  %50 = load i32* %yk, align 4, !llfi_index !717
  %fi81 = call i32 @injectFault4(i64 716, i32 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = load i32* %3, align 4, !llfi_index !718
  %fi82 = call i32 @injectFault4(i64 717, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = mul nsw i32 %fi81, %fi82, !llfi_index !719
  %fi83 = call i32 @injectFault4(i64 718, i32 %52, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %53 = load i32* %4, align 4, !llfi_index !720
  %fi84 = call i32 @injectFault4(i64 719, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %54 = mul nsw i32 %fi83, %fi84, !llfi_index !721
  %fi85 = call i32 @injectFault4(i64 720, i32 %54, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = load i32* %xk, align 4, !llfi_index !722
  %fi86 = call i32 @injectFault4(i64 721, i32 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %56 = load i32* %4, align 4, !llfi_index !723
  %fi87 = call i32 @injectFault4(i64 722, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %57 = mul nsw i32 %fi86, %fi87, !llfi_index !724
  %fi88 = call i32 @injectFault4(i64 723, i32 %57, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %58 = add nsw i32 %fi85, %fi88, !llfi_index !725
  %fi89 = call i32 @injectFault4(i64 724, i32 %58, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = load i32* %k, align 4, !llfi_index !726
  %fi90 = call i32 @injectFault4(i64 725, i32 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %60 = add nsw i32 %fi89, %fi90, !llfi_index !727
  %fi91 = call i32 @injectFault4(i64 726, i32 %60, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi91, i32* %pos, align 4, !llfi_index !728
  %61 = load i32* %pos, align 4, !llfi_index !729
  %fi92 = call i32 @injectFault4(i64 728, i32 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %62 = load i32* %max_size, align 4, !llfi_index !730
  %fi93 = call i32 @injectFault4(i64 729, i32 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %63 = icmp sge i32 %fi92, %fi93, !llfi_index !731
  %fi94 = call i1 @injectFault5(i64 730, i1 %63, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi94, label %64, label %65, !llfi_index !732

; <label>:64                                      ; preds = %38
  store i32 0, i32* %pos, align 4, !llfi_index !733
  br label %65, !llfi_index !734

; <label>:65                                      ; preds = %64, %38
  %66 = load i32* %pos, align 4, !llfi_index !735
  %fi68 = call i32 @injectFault4(i64 734, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %67 = sext i32 %fi68 to i64, !llfi_index !736
  %fi100 = call i64 @injectFault1(i64 735, i64 %67, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %68 = load i32** %1, align 8, !llfi_index !737
  %fi101 = call i32* @injectFault6(i64 736, i32* %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %69 = getelementptr i32* %fi101, i64 %fi100, !llfi_index !738
  %fi102 = call i32* @injectFault6(i64 737, i32* %69, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 1, i32* %fi102, align 4, !llfi_index !739
  br label %70, !llfi_index !740

; <label>:70                                      ; preds = %65
  %71 = load i32* %k, align 4, !llfi_index !741
  %fi103 = call i32 @injectFault4(i64 740, i32 %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %72 = add nsw i32 %fi103, 1, !llfi_index !742
  %fi104 = call i32 @injectFault4(i64 741, i32 %72, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi104, i32* %k, align 4, !llfi_index !743
  br label %34, !llfi_index !744

; <label>:73                                      ; preds = %34
  %74 = load i32* %2, align 4, !llfi_index !745
  %fi105 = call i32 @injectFault4(i64 744, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %75 = sext i32 %fi105 to i64, !llfi_index !746
  %fi106 = call i64 @injectFault1(i64 745, i64 %75, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %76 = mul i64 4, %fi106, !llfi_index !747
  %fi107 = call i64 @injectFault1(i64 746, i64 %76, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %77 = load i32* %3, align 4, !llfi_index !748
  %fi108 = call i32 @injectFault4(i64 747, i32 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %78 = sext i32 %fi108 to i64, !llfi_index !749
  %fi109 = call i64 @injectFault1(i64 748, i64 %78, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %79 = mul i64 %fi107, %fi109, !llfi_index !750
  %fi110 = call i64 @injectFault1(i64 749, i64 %79, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %80 = load i32* %4, align 4, !llfi_index !751
  %fi111 = call i32 @injectFault4(i64 750, i32 %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %81 = sext i32 %fi111 to i64, !llfi_index !752
  %fi112 = call i64 @injectFault1(i64 751, i64 %81, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %82 = mul i64 %fi110, %fi112, !llfi_index !753
  %fi113 = call i64 @injectFault1(i64 752, i64 %82, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %83 = call noalias i8* @malloc(i64 %fi113) #5, !llfi_index !754
  %84 = bitcast i8* %83 to i32*, !llfi_index !755
  %fi114 = call i32* @injectFault6(i64 754, i32* %84, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32* %fi114, i32** %newMatrix, align 8, !llfi_index !756
  %85 = load i32** %1, align 8, !llfi_index !757
  %fi115 = call i32* @injectFault6(i64 756, i32* %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %86 = load i32* %2, align 4, !llfi_index !758
  %fi116 = call i32 @injectFault4(i64 757, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %87 = load i32* %3, align 4, !llfi_index !759
  %fi117 = call i32 @injectFault4(i64 758, i32 %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %88 = load i32* %4, align 4, !llfi_index !760
  %fi118 = call i32 @injectFault4(i64 759, i32 %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %89 = load i32** %newMatrix, align 8, !llfi_index !761
  %fi119 = call i32* @injectFault6(i64 760, i32* %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @imdilate_disk(i32* %fi115, i32 %fi116, i32 %fi117, i32 %fi118, i32 5, i32* %fi119), !llfi_index !762
  store i32 0, i32* %x, align 4, !llfi_index !763
  br label %90, !llfi_index !764

; <label>:90                                      ; preds = %142, %73
  %91 = load i32* %x, align 4, !llfi_index !765
  %fi120 = call i32 @injectFault4(i64 764, i32 %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %92 = load i32* %2, align 4, !llfi_index !766
  %fi121 = call i32 @injectFault4(i64 765, i32 %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %93 = icmp slt i32 %fi120, %fi121, !llfi_index !767
  %fi122 = call i1 @injectFault5(i64 766, i1 %93, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi122, label %94, label %145, !llfi_index !768

; <label>:94                                      ; preds = %90
  store i32 0, i32* %y, align 4, !llfi_index !769
  br label %95, !llfi_index !770

; <label>:95                                      ; preds = %138, %94
  %96 = load i32* %y, align 4, !llfi_index !771
  %fi = call i32 @injectFault4(i64 770, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %97 = load i32* %3, align 4, !llfi_index !772
  %fi1 = call i32 @injectFault4(i64 771, i32 %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %98 = icmp slt i32 %fi, %fi1, !llfi_index !773
  %fi2 = call i1 @injectFault5(i64 772, i1 %98, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi2, label %99, label %141, !llfi_index !774

; <label>:99                                      ; preds = %95
  store i32 0, i32* %k, align 4, !llfi_index !775
  br label %100, !llfi_index !776

; <label>:100                                     ; preds = %134, %99
  %101 = load i32* %k, align 4, !llfi_index !777
  %fi3 = call i32 @injectFault4(i64 776, i32 %101, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %102 = load i32* %4, align 4, !llfi_index !778
  %fi4 = call i32 @injectFault4(i64 777, i32 %102, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %103 = icmp slt i32 %fi3, %fi4, !llfi_index !779
  %fi5 = call i1 @injectFault5(i64 778, i1 %103, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi5, label %104, label %137, !llfi_index !780

; <label>:104                                     ; preds = %100
  %105 = load i32* %x, align 4, !llfi_index !781
  %fi6 = call i32 @injectFault4(i64 780, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %106 = load i32* %3, align 4, !llfi_index !782
  %fi7 = call i32 @injectFault4(i64 781, i32 %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %107 = mul nsw i32 %fi6, %fi7, !llfi_index !783
  %fi8 = call i32 @injectFault4(i64 782, i32 %107, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %108 = load i32* %4, align 4, !llfi_index !784
  %fi9 = call i32 @injectFault4(i64 783, i32 %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %109 = mul nsw i32 %fi8, %fi9, !llfi_index !785
  %fi10 = call i32 @injectFault4(i64 784, i32 %109, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %110 = load i32* %y, align 4, !llfi_index !786
  %fi11 = call i32 @injectFault4(i64 785, i32 %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %111 = load i32* %4, align 4, !llfi_index !787
  %fi12 = call i32 @injectFault4(i64 786, i32 %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %112 = mul nsw i32 %fi11, %fi12, !llfi_index !788
  %fi13 = call i32 @injectFault4(i64 787, i32 %112, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %113 = add nsw i32 %fi10, %fi13, !llfi_index !789
  %fi14 = call i32 @injectFault4(i64 788, i32 %113, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %114 = load i32* %k, align 4, !llfi_index !790
  %fi15 = call i32 @injectFault4(i64 789, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %115 = add nsw i32 %fi14, %fi15, !llfi_index !791
  %fi16 = call i32 @injectFault4(i64 790, i32 %115, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %116 = sext i32 %fi16 to i64, !llfi_index !792
  %fi17 = call i64 @injectFault1(i64 791, i64 %116, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %117 = load i32** %newMatrix, align 8, !llfi_index !793
  %fi18 = call i32* @injectFault6(i64 792, i32* %117, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %118 = getelementptr i32* %fi18, i64 %fi17, !llfi_index !794
  %fi19 = call i32* @injectFault6(i64 793, i32* %118, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %119 = load i32* %fi19, align 4, !llfi_index !795
  %fi20 = call i32 @injectFault4(i64 794, i32 %119, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %120 = load i32* %x, align 4, !llfi_index !796
  %fi21 = call i32 @injectFault4(i64 795, i32 %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %121 = load i32* %3, align 4, !llfi_index !797
  %fi22 = call i32 @injectFault4(i64 796, i32 %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %122 = mul nsw i32 %fi21, %fi22, !llfi_index !798
  %fi23 = call i32 @injectFault4(i64 797, i32 %122, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %123 = load i32* %4, align 4, !llfi_index !799
  %fi24 = call i32 @injectFault4(i64 798, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %124 = mul nsw i32 %fi23, %fi24, !llfi_index !800
  %fi25 = call i32 @injectFault4(i64 799, i32 %124, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %125 = load i32* %y, align 4, !llfi_index !801
  %fi26 = call i32 @injectFault4(i64 800, i32 %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %126 = load i32* %4, align 4, !llfi_index !802
  %fi27 = call i32 @injectFault4(i64 801, i32 %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %127 = mul nsw i32 %fi26, %fi27, !llfi_index !803
  %fi28 = call i32 @injectFault4(i64 802, i32 %127, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %128 = add nsw i32 %fi25, %fi28, !llfi_index !804
  %fi29 = call i32 @injectFault4(i64 803, i32 %128, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %129 = load i32* %k, align 4, !llfi_index !805
  %fi95 = call i32 @injectFault4(i64 804, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %130 = add nsw i32 %fi29, %fi95, !llfi_index !806
  %fi96 = call i32 @injectFault4(i64 805, i32 %130, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %131 = sext i32 %fi96 to i64, !llfi_index !807
  %fi97 = call i64 @injectFault1(i64 806, i64 %131, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %132 = load i32** %1, align 8, !llfi_index !808
  %fi98 = call i32* @injectFault6(i64 807, i32* %132, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %133 = getelementptr i32* %fi98, i64 %fi97, !llfi_index !809
  %fi99 = call i32* @injectFault6(i64 808, i32* %133, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi20, i32* %fi99, align 4, !llfi_index !810
  br label %134, !llfi_index !811

; <label>:134                                     ; preds = %104
  %135 = load i32* %k, align 4, !llfi_index !812
  %fi30 = call i32 @injectFault4(i64 811, i32 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %136 = add nsw i32 %fi30, 1, !llfi_index !813
  %fi31 = call i32 @injectFault4(i64 812, i32 %136, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi31, i32* %k, align 4, !llfi_index !814
  br label %100, !llfi_index !815

; <label>:137                                     ; preds = %100
  br label %138, !llfi_index !816

; <label>:138                                     ; preds = %137
  %139 = load i32* %y, align 4, !llfi_index !817
  %fi32 = call i32 @injectFault4(i64 816, i32 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %140 = add nsw i32 %fi32, 1, !llfi_index !818
  %fi33 = call i32 @injectFault4(i64 817, i32 %140, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi33, i32* %y, align 4, !llfi_index !819
  br label %95, !llfi_index !820

; <label>:141                                     ; preds = %95
  br label %142, !llfi_index !821

; <label>:142                                     ; preds = %141
  %143 = load i32* %x, align 4, !llfi_index !822
  %fi34 = call i32 @injectFault4(i64 821, i32 %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %144 = add nsw i32 %fi34, 1, !llfi_index !823
  %fi35 = call i32 @injectFault4(i64 822, i32 %144, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi35, i32* %x, align 4, !llfi_index !824
  br label %90, !llfi_index !825

; <label>:145                                     ; preds = %90
  %146 = load i32** %newMatrix, align 8, !llfi_index !826
  %fi36 = call i32* @injectFault6(i64 825, i32* %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %147 = bitcast i32* %fi36 to i8*, !llfi_index !827
  %fi37 = call i8* @injectFault7(i64 826, i8* %147, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi37) #5, !llfi_index !828
  %148 = load i32** %1, align 8, !llfi_index !829
  %fi38 = call i32* @injectFault6(i64 828, i32* %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @setIf(i32 0, i32 100, i32* %fi38, i32* %2, i32* %3, i32* %4), !llfi_index !830
  %149 = load i32** %1, align 8, !llfi_index !831
  %fi39 = call i32* @injectFault6(i64 830, i32* %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @setIf(i32 1, i32 228, i32* %fi39, i32* %2, i32* %3, i32* %4), !llfi_index !832
  %150 = load i32** %1, align 8, !llfi_index !833
  %fi40 = call i32* @injectFault6(i64 832, i32* %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %151 = load i32** %5, align 8, !llfi_index !834
  %fi41 = call i32* @injectFault6(i64 833, i32* %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @addNoise(i32* %fi40, i32* %2, i32* %3, i32* %4, i32* %fi41), !llfi_index !835
  ret void, !llfi_index !836
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double @calcLikelihoodSum(i32* %I, i32* %ind, i32 %numOnes) #0 {
  %1 = alloca i32*, align 8, !llfi_index !837
  %2 = alloca i32*, align 8, !llfi_index !838
  %3 = alloca i32, align 4, !llfi_index !839
  %likelihoodSum = alloca double, align 8, !llfi_index !840
  %y = alloca i32, align 4, !llfi_index !841
  store i32* %I, i32** %1, align 8, !llfi_index !842
  store i32* %ind, i32** %2, align 8, !llfi_index !843
  store i32 %numOnes, i32* %3, align 4, !llfi_index !844
  store double 0.000000e+00, double* %likelihoodSum, align 8, !llfi_index !845
  store i32 0, i32* %y, align 4, !llfi_index !846
  br label %4, !llfi_index !847

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %y, align 4, !llfi_index !848
  %fi = call i32 @injectFault4(i64 847, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %6 = load i32* %3, align 4, !llfi_index !849
  %fi1 = call i32 @injectFault4(i64 848, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = icmp slt i32 %fi, %fi1, !llfi_index !850
  %fi2 = call i1 @injectFault5(i64 849, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi2, label %8, label %40, !llfi_index !851

; <label>:8                                       ; preds = %4
  %9 = load i32* %y, align 4, !llfi_index !852
  %fi4 = call i32 @injectFault4(i64 851, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = sext i32 %fi4 to i64, !llfi_index !853
  %fi5 = call i64 @injectFault1(i64 852, i64 %10, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = load i32** %2, align 8, !llfi_index !854
  %fi6 = call i32* @injectFault6(i64 853, i32* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = getelementptr i32* %fi6, i64 %fi5, !llfi_index !855
  %fi7 = call i32* @injectFault6(i64 854, i32* %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = load i32* %fi7, align 4, !llfi_index !856
  %fi8 = call i32 @injectFault4(i64 855, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = sext i32 %fi8 to i64, !llfi_index !857
  %fi9 = call i64 @injectFault1(i64 856, i64 %14, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = load i32** %1, align 8, !llfi_index !858
  %fi10 = call i32* @injectFault6(i64 857, i32* %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = getelementptr i32* %fi10, i64 %fi9, !llfi_index !859
  %fi11 = call i32* @injectFault6(i64 858, i32* %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = load i32* %fi11, align 4, !llfi_index !860
  %fi3 = call i32 @injectFault4(i64 859, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = sub nsw i32 %fi3, 100, !llfi_index !861
  %fi13 = call i32 @injectFault4(i64 860, i32 %18, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = sitofp i32 %fi13 to double, !llfi_index !862
  %fi14 = call double @injectFault3(i64 861, double %19, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = call double @llvm.pow.f64(double %fi14, double 2.000000e+00), !llfi_index !863
  %21 = load i32* %y, align 4, !llfi_index !864
  %fi15 = call i32 @injectFault4(i64 863, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = sext i32 %fi15 to i64, !llfi_index !865
  %fi16 = call i64 @injectFault1(i64 864, i64 %22, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = load i32** %2, align 8, !llfi_index !866
  %fi17 = call i32* @injectFault6(i64 865, i32* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = getelementptr i32* %fi17, i64 %fi16, !llfi_index !867
  %fi18 = call i32* @injectFault6(i64 866, i32* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = load i32* %fi18, align 4, !llfi_index !868
  %fi19 = call i32 @injectFault4(i64 867, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = sext i32 %fi19 to i64, !llfi_index !869
  %fi20 = call i64 @injectFault1(i64 868, i64 %26, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = load i32** %1, align 8, !llfi_index !870
  %fi21 = call i32* @injectFault6(i64 869, i32* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = getelementptr i32* %fi21, i64 %fi20, !llfi_index !871
  %fi22 = call i32* @injectFault6(i64 870, i32* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = load i32* %fi22, align 4, !llfi_index !872
  %fi23 = call i32 @injectFault4(i64 871, i32 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = sub nsw i32 %fi23, 228, !llfi_index !873
  %fi24 = call i32 @injectFault4(i64 872, i32 %30, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = sitofp i32 %fi24 to double, !llfi_index !874
  %fi25 = call double @injectFault3(i64 873, double %31, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = call double @llvm.pow.f64(double %fi25, double 2.000000e+00), !llfi_index !875
  %33 = fsub fast double %20, %32, !llfi_index !876
  %fi12 = call double @injectFault3(i64 875, double %33, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = fdiv fast double %fi12, 5.000000e+01, !llfi_index !877
  %fi26 = call double @injectFault3(i64 876, double %34, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = load double* %likelihoodSum, align 8, !llfi_index !878
  %fi27 = call double @injectFault3(i64 877, double %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = fadd fast double %fi27, %fi26, !llfi_index !879
  %fi28 = call double @injectFault3(i64 878, double %36, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi28, double* %likelihoodSum, align 8, !llfi_index !880
  br label %37, !llfi_index !881

; <label>:37                                      ; preds = %8
  %38 = load i32* %y, align 4, !llfi_index !882
  %fi29 = call i32 @injectFault4(i64 881, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = add nsw i32 %fi29, 1, !llfi_index !883
  %fi30 = call i32 @injectFault4(i64 882, i32 %39, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi30, i32* %y, align 4, !llfi_index !884
  br label %4, !llfi_index !885

; <label>:40                                      ; preds = %4
  %41 = load double* %likelihoodSum, align 8, !llfi_index !886
  %fi31 = call double @injectFault3(i64 885, double %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret double %fi31, !llfi_index !887
}

; Function Attrs: nounwind uwtable
define i32 @findIndex(double* %CDF, i32 %lengthCDF, double %value) #0 {
  %1 = alloca i32, align 4, !llfi_index !888
  %2 = alloca double*, align 8, !llfi_index !889
  %3 = alloca i32, align 4, !llfi_index !890
  %4 = alloca double, align 8, !llfi_index !891
  %index = alloca i32, align 4, !llfi_index !892
  %x = alloca i32, align 4, !llfi_index !893
  store double* %CDF, double** %2, align 8, !llfi_index !894
  store i32 %lengthCDF, i32* %3, align 4, !llfi_index !895
  store double %value, double* %4, align 8, !llfi_index !896
  store i32 -1, i32* %index, align 4, !llfi_index !897
  store i32 0, i32* %x, align 4, !llfi_index !898
  br label %5, !llfi_index !899

; <label>:5                                       ; preds = %20, %0
  %6 = load i32* %x, align 4, !llfi_index !900
  %fi = call i32 @injectFault4(i64 899, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = load i32* %3, align 4, !llfi_index !901
  %fi1 = call i32 @injectFault4(i64 900, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = icmp slt i32 %fi, %fi1, !llfi_index !902
  %fi2 = call i1 @injectFault5(i64 901, i1 %8, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi2, label %9, label %23, !llfi_index !903

; <label>:9                                       ; preds = %5
  %10 = load i32* %x, align 4, !llfi_index !904
  %fi3 = call i32 @injectFault4(i64 903, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = sext i32 %fi3 to i64, !llfi_index !905
  %fi4 = call i64 @injectFault1(i64 904, i64 %11, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = load double** %2, align 8, !llfi_index !906
  %fi5 = call double* @injectFault8(i64 905, double* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = getelementptr double* %fi5, i64 %fi4, !llfi_index !907
  %fi6 = call double* @injectFault8(i64 906, double* %13, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = load double* %fi6, align 8, !llfi_index !908
  %fi7 = call double @injectFault3(i64 907, double %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = load double* %4, align 8, !llfi_index !909
  %fi8 = call double @injectFault3(i64 908, double %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = fcmp oge double %fi7, %fi8, !llfi_index !910
  %fi9 = call i1 @injectFault5(i64 909, i1 %16, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi9, label %17, label %19, !llfi_index !911

; <label>:17                                      ; preds = %9
  %18 = load i32* %x, align 4, !llfi_index !912
  %fi10 = call i32 @injectFault4(i64 911, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi10, i32* %index, align 4, !llfi_index !913
  br label %23, !llfi_index !914

; <label>:19                                      ; preds = %9
  br label %20, !llfi_index !915

; <label>:20                                      ; preds = %19
  %21 = load i32* %x, align 4, !llfi_index !916
  %fi11 = call i32 @injectFault4(i64 915, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = add nsw i32 %fi11, 1, !llfi_index !917
  %fi12 = call i32 @injectFault4(i64 916, i32 %22, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi12, i32* %x, align 4, !llfi_index !918
  br label %5, !llfi_index !919

; <label>:23                                      ; preds = %17, %5
  %24 = load i32* %index, align 4, !llfi_index !920
  %fi13 = call i32 @injectFault4(i64 919, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = icmp eq i32 %fi13, -1, !llfi_index !921
  %fi14 = call i1 @injectFault5(i64 920, i1 %25, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi14, label %26, label %29, !llfi_index !922

; <label>:26                                      ; preds = %23
  %27 = load i32* %3, align 4, !llfi_index !923
  %fi15 = call i32 @injectFault4(i64 922, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = sub nsw i32 %fi15, 1, !llfi_index !924
  %fi16 = call i32 @injectFault4(i64 923, i32 %28, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi16, i32* %1, !llfi_index !925
  br label %31, !llfi_index !926

; <label>:29                                      ; preds = %23
  %30 = load i32* %index, align 4, !llfi_index !927
  %fi17 = call i32 @injectFault4(i64 926, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi17, i32* %1, !llfi_index !928
  br label %31, !llfi_index !929

; <label>:31                                      ; preds = %29, %26
  %32 = load i32* %1, !llfi_index !930
  %fi18 = call i32 @injectFault4(i64 929, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret i32 %fi18, !llfi_index !931
}

; Function Attrs: nounwind uwtable
define i32 @findIndexBin(double* %CDF, i32 %beginIndex, i32 %endIndex, double %value) #0 {
  %1 = alloca i32, align 4, !llfi_index !932
  %2 = alloca double*, align 8, !llfi_index !933
  %3 = alloca i32, align 4, !llfi_index !934
  %4 = alloca i32, align 4, !llfi_index !935
  %5 = alloca double, align 8, !llfi_index !936
  %middleIndex = alloca i32, align 4, !llfi_index !937
  store double* %CDF, double** %2, align 8, !llfi_index !938
  store i32 %beginIndex, i32* %3, align 4, !llfi_index !939
  store i32 %endIndex, i32* %4, align 4, !llfi_index !940
  store double %value, double* %5, align 8, !llfi_index !941
  %6 = load i32* %4, align 4, !llfi_index !942
  %fi = call i32 @injectFault4(i64 941, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %7 = load i32* %3, align 4, !llfi_index !943
  %fi1 = call i32 @injectFault4(i64 942, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = icmp slt i32 %fi, %fi1, !llfi_index !944
  %fi2 = call i1 @injectFault5(i64 943, i1 %8, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi2, label %9, label %10, !llfi_index !945

; <label>:9                                       ; preds = %0
  store i32 -1, i32* %1, !llfi_index !946
  br label %94, !llfi_index !947

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4, !llfi_index !948
  %fi3 = call i32 @injectFault4(i64 947, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = load i32* %4, align 4, !llfi_index !949
  %fi4 = call i32 @injectFault4(i64 948, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = load i32* %3, align 4, !llfi_index !950
  %fi5 = call i32 @injectFault4(i64 949, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = sub nsw i32 %fi4, %fi5, !llfi_index !951
  %fi6 = call i32 @injectFault4(i64 950, i32 %14, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = sdiv i32 %fi6, 2, !llfi_index !952
  %fi7 = call i32 @injectFault4(i64 951, i32 %15, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = add nsw i32 %fi3, %fi7, !llfi_index !953
  %fi8 = call i32 @injectFault4(i64 952, i32 %16, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi8, i32* %middleIndex, align 4, !llfi_index !954
  %17 = load i32* %middleIndex, align 4, !llfi_index !955
  %fi10 = call i32 @injectFault4(i64 954, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = sext i32 %fi10 to i64, !llfi_index !956
  %fi11 = call i64 @injectFault1(i64 955, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = load double** %2, align 8, !llfi_index !957
  %fi12 = call double* @injectFault8(i64 956, double* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = getelementptr double* %fi12, i64 %fi11, !llfi_index !958
  %fi13 = call double* @injectFault8(i64 957, double* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %21 = load double* %fi13, align 8, !llfi_index !959
  %fi14 = call double @injectFault3(i64 958, double %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = load double* %5, align 8, !llfi_index !960
  %fi15 = call double @injectFault3(i64 959, double %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = fcmp oge double %fi14, %fi15, !llfi_index !961
  %fi16 = call i1 @injectFault5(i64 960, i1 %23, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi16, label %24, label %72, !llfi_index !962

; <label>:24                                      ; preds = %10
  %25 = load i32* %middleIndex, align 4, !llfi_index !963
  %fi17 = call i32 @injectFault4(i64 962, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = icmp eq i32 %fi17, 0, !llfi_index !964
  %fi18 = call i1 @injectFault5(i64 963, i1 %26, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi18, label %27, label %29, !llfi_index !965

; <label>:27                                      ; preds = %24
  %28 = load i32* %middleIndex, align 4, !llfi_index !966
  %fi19 = call i32 @injectFault4(i64 965, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi19, i32* %1, !llfi_index !967
  br label %94, !llfi_index !968

; <label>:29                                      ; preds = %24
  %30 = load i32* %middleIndex, align 4, !llfi_index !969
  %fi20 = call i32 @injectFault4(i64 968, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = sub nsw i32 %fi20, 1, !llfi_index !970
  %fi21 = call i32 @injectFault4(i64 969, i32 %31, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = sext i32 %fi21 to i64, !llfi_index !971
  %fi22 = call i64 @injectFault1(i64 970, i64 %32, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %33 = load double** %2, align 8, !llfi_index !972
  %fi9 = call double* @injectFault8(i64 971, double* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %34 = getelementptr double* %fi9, i64 %fi22, !llfi_index !973
  %fi25 = call double* @injectFault8(i64 972, double* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = load double* %fi25, align 8, !llfi_index !974
  %fi26 = call double @injectFault3(i64 973, double %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = load double* %5, align 8, !llfi_index !975
  %fi27 = call double @injectFault3(i64 974, double %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %37 = fcmp olt double %fi26, %fi27, !llfi_index !976
  %fi28 = call i1 @injectFault5(i64 975, i1 %37, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi28, label %38, label %40, !llfi_index !977

; <label>:38                                      ; preds = %29
  %39 = load i32* %middleIndex, align 4, !llfi_index !978
  %fi29 = call i32 @injectFault4(i64 977, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi29, i32* %1, !llfi_index !979
  br label %94, !llfi_index !980

; <label>:40                                      ; preds = %29
  %41 = load i32* %middleIndex, align 4, !llfi_index !981
  %fi30 = call i32 @injectFault4(i64 980, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %42 = sub nsw i32 %fi30, 1, !llfi_index !982
  %fi31 = call i32 @injectFault4(i64 981, i32 %42, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %43 = sext i32 %fi31 to i64, !llfi_index !983
  %fi32 = call i64 @injectFault1(i64 982, i64 %43, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = load double** %2, align 8, !llfi_index !984
  %fi33 = call double* @injectFault8(i64 983, double* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = getelementptr double* %fi33, i64 %fi32, !llfi_index !985
  %fi34 = call double* @injectFault8(i64 984, double* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = load double* %fi34, align 8, !llfi_index !986
  %fi35 = call double @injectFault3(i64 985, double %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = load double* %5, align 8, !llfi_index !987
  %fi36 = call double @injectFault3(i64 986, double %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = fcmp oeq double %fi35, %fi36, !llfi_index !988
  %fi37 = call i1 @injectFault5(i64 987, i1 %48, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi37, label %49, label %69, !llfi_index !989

; <label>:49                                      ; preds = %40
  br label %50, !llfi_index !990

; <label>:50                                      ; preds = %64, %49
  %51 = load i32* %middleIndex, align 4, !llfi_index !991
  %fi38 = call i32 @injectFault4(i64 990, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = icmp sgt i32 %fi38, 0, !llfi_index !992
  %fi39 = call i1 @injectFault5(i64 991, i1 %52, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi39, label %53, label %62, !llfi_index !993

; <label>:53                                      ; preds = %50
  %54 = load i32* %middleIndex, align 4, !llfi_index !994
  %fi40 = call i32 @injectFault4(i64 993, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = sub nsw i32 %fi40, 1, !llfi_index !995
  %fi41 = call i32 @injectFault4(i64 994, i32 %55, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %56 = sext i32 %fi41 to i64, !llfi_index !996
  %fi42 = call i64 @injectFault1(i64 995, i64 %56, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %57 = load double** %2, align 8, !llfi_index !997
  %fi43 = call double* @injectFault8(i64 996, double* %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %58 = getelementptr double* %fi43, i64 %fi42, !llfi_index !998
  %fi44 = call double* @injectFault8(i64 997, double* %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = load double* %fi44, align 8, !llfi_index !999
  %fi45 = call double @injectFault3(i64 998, double %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %60 = load double* %5, align 8, !llfi_index !1000
  %fi46 = call double @injectFault3(i64 999, double %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %61 = fcmp oeq double %fi45, %fi46, !llfi_index !1001
  %fi47 = call i1 @injectFault5(i64 1000, i1 %61, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br label %62, !llfi_index !1002

; <label>:62                                      ; preds = %53, %50
  %63 = phi i1 [ false, %50 ], [ %fi47, %53 ], !llfi_index !1003
  br i1 %63, label %64, label %67, !llfi_index !1004

; <label>:64                                      ; preds = %62
  %65 = load i32* %middleIndex, align 4, !llfi_index !1005
  %fi23 = call i32 @injectFault4(i64 1004, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %66 = add nsw i32 %fi23, -1, !llfi_index !1006
  %fi24 = call i32 @injectFault4(i64 1005, i32 %66, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi24, i32* %middleIndex, align 4, !llfi_index !1007
  br label %50, !llfi_index !1008

; <label>:67                                      ; preds = %62
  %68 = load i32* %middleIndex, align 4, !llfi_index !1009
  %fi48 = call i32 @injectFault4(i64 1008, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi48, i32* %1, !llfi_index !1010
  br label %94, !llfi_index !1011

; <label>:69                                      ; preds = %40
  br label %70, !llfi_index !1012

; <label>:70                                      ; preds = %69
  br label %71, !llfi_index !1013

; <label>:71                                      ; preds = %70
  br label %72, !llfi_index !1014

; <label>:72                                      ; preds = %71, %10
  %73 = load i32* %middleIndex, align 4, !llfi_index !1015
  %fi49 = call i32 @injectFault4(i64 1014, i32 %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %74 = sext i32 %fi49 to i64, !llfi_index !1016
  %fi50 = call i64 @injectFault1(i64 1015, i64 %74, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %75 = load double** %2, align 8, !llfi_index !1017
  %fi51 = call double* @injectFault8(i64 1016, double* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %76 = getelementptr double* %fi51, i64 %fi50, !llfi_index !1018
  %fi52 = call double* @injectFault8(i64 1017, double* %76, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %77 = load double* %fi52, align 8, !llfi_index !1019
  %fi53 = call double @injectFault3(i64 1018, double %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %78 = load double* %5, align 8, !llfi_index !1020
  %fi54 = call double @injectFault3(i64 1019, double %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %79 = fcmp ogt double %fi53, %fi54, !llfi_index !1021
  %fi55 = call i1 @injectFault5(i64 1020, i1 %79, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi55, label %80, label %87, !llfi_index !1022

; <label>:80                                      ; preds = %72
  %81 = load double** %2, align 8, !llfi_index !1023
  %fi56 = call double* @injectFault8(i64 1022, double* %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %82 = load i32* %3, align 4, !llfi_index !1024
  %fi57 = call i32 @injectFault4(i64 1023, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %83 = load i32* %middleIndex, align 4, !llfi_index !1025
  %fi58 = call i32 @injectFault4(i64 1024, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %84 = add nsw i32 %fi58, 1, !llfi_index !1026
  %fi59 = call i32 @injectFault4(i64 1025, i32 %84, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %85 = load double* %5, align 8, !llfi_index !1027
  %fi60 = call double @injectFault3(i64 1026, double %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %86 = call i32 @findIndexBin(double* %fi56, i32 %fi57, i32 %fi59, double %fi60), !llfi_index !1028
  store i32 %86, i32* %1, !llfi_index !1029
  br label %94, !llfi_index !1030

; <label>:87                                      ; preds = %72
  %88 = load double** %2, align 8, !llfi_index !1031
  %fi61 = call double* @injectFault8(i64 1030, double* %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %89 = load i32* %middleIndex, align 4, !llfi_index !1032
  %fi62 = call i32 @injectFault4(i64 1031, i32 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %90 = sub nsw i32 %fi62, 1, !llfi_index !1033
  %fi63 = call i32 @injectFault4(i64 1032, i32 %90, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %91 = load i32* %4, align 4, !llfi_index !1034
  %fi64 = call i32 @injectFault4(i64 1033, i32 %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %92 = load double* %5, align 8, !llfi_index !1035
  %fi65 = call double @injectFault3(i64 1034, double %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %93 = call i32 @findIndexBin(double* %fi61, i32 %fi63, i32 %fi64, double %fi65), !llfi_index !1036
  store i32 %93, i32* %1, !llfi_index !1037
  br label %94, !llfi_index !1038

; <label>:94                                      ; preds = %87, %80, %67, %38, %27, %9
  %95 = load i32* %1, !llfi_index !1039
  %fi66 = call i32 @injectFault4(i64 1038, i32 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  ret i32 %fi66, !llfi_index !1040
}

; Function Attrs: nounwind uwtable
define void @particleFilter(i32* %I, i32 %IszX, i32 %IszY, i32 %Nfr, i32* %seed, i32 %Nparticles) #0 {
  %1 = alloca i32*, align 8, !llfi_index !1041
  %2 = alloca i32, align 4, !llfi_index !1042
  %3 = alloca i32, align 4, !llfi_index !1043
  %4 = alloca i32, align 4, !llfi_index !1044
  %5 = alloca i32*, align 8, !llfi_index !1045
  %6 = alloca i32, align 4, !llfi_index !1046
  %max_size = alloca i32, align 4, !llfi_index !1047
  %start = alloca i64, align 8, !llfi_index !1048
  %xe = alloca double, align 8, !llfi_index !1049
  %ye = alloca double, align 8, !llfi_index !1050
  %radius = alloca i32, align 4, !llfi_index !1051
  %diameter = alloca i32, align 4, !llfi_index !1052
  %disk = alloca i32*, align 8, !llfi_index !1053
  %countOnes = alloca i32, align 4, !llfi_index !1054
  %x = alloca i32, align 4, !llfi_index !1055
  %y = alloca i32, align 4, !llfi_index !1056
  %objxy = alloca double*, align 8, !llfi_index !1057
  %get_neighbors = alloca i64, align 8, !llfi_index !1058
  %weights = alloca double*, align 8, !llfi_index !1059
  %get_weights = alloca i64, align 8, !llfi_index !1060
  %likelihood = alloca double*, align 8, !llfi_index !1061
  %arrayX = alloca double*, align 8, !llfi_index !1062
  %arrayY = alloca double*, align 8, !llfi_index !1063
  %xj = alloca double*, align 8, !llfi_index !1064
  %yj = alloca double*, align 8, !llfi_index !1065
  %CDF = alloca double*, align 8, !llfi_index !1066
  %u = alloca double*, align 8, !llfi_index !1067
  %ind = alloca i32*, align 8, !llfi_index !1068
  %k = alloca i32, align 4, !llfi_index !1069
  %indX = alloca i32, align 4, !llfi_index !1070
  %indY = alloca i32, align 4, !llfi_index !1071
  %set_arrays = alloca i64, align 8, !llfi_index !1072
  %error = alloca i64, align 8, !llfi_index !1073
  %likelihood_time = alloca i64, align 8, !llfi_index !1074
  %exponential = alloca i64, align 8, !llfi_index !1075
  %sumWeights = alloca double, align 8, !llfi_index !1076
  %sum_time = alloca i64, align 8, !llfi_index !1077
  %normalize = alloca i64, align 8, !llfi_index !1078
  %move_time = alloca i64, align 8, !llfi_index !1079
  %distance = alloca double, align 8, !llfi_index !1080
  %cum_sum = alloca i64, align 8, !llfi_index !1081
  %u1 = alloca double, align 8, !llfi_index !1082
  %u_time = alloca i64, align 8, !llfi_index !1083
  %j = alloca i32, align 4, !llfi_index !1084
  %i = alloca i32, align 4, !llfi_index !1085
  %xyj_time = alloca i64, align 8, !llfi_index !1086
  %reset = alloca i64, align 8, !llfi_index !1087
  store i32* %I, i32** %1, align 8, !llfi_index !1088
  store i32 %IszX, i32* %2, align 4, !llfi_index !1089
  store i32 %IszY, i32* %3, align 4, !llfi_index !1090
  store i32 %Nfr, i32* %4, align 4, !llfi_index !1091
  store i32* %seed, i32** %5, align 8, !llfi_index !1092
  store i32 %Nparticles, i32* %6, align 4, !llfi_index !1093
  %7 = load i32* %2, align 4, !llfi_index !1094
  %fi187 = call i32 @injectFault4(i64 1093, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = load i32* %3, align 4, !llfi_index !1095
  %fi188 = call i32 @injectFault4(i64 1094, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %9 = mul nsw i32 %fi187, %fi188, !llfi_index !1096
  %fi189 = call i32 @injectFault4(i64 1095, i32 %9, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %10 = load i32* %4, align 4, !llfi_index !1097
  %fi190 = call i32 @injectFault4(i64 1096, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = mul nsw i32 %fi189, %fi190, !llfi_index !1098
  %fi191 = call i32 @injectFault4(i64 1097, i32 %11, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi191, i32* %max_size, align 4, !llfi_index !1099
  %12 = call i64 @get_time(), !llfi_index !1100
  store i64 %12, i64* %start, align 8, !llfi_index !1101
  %13 = load i32* %3, align 4, !llfi_index !1102
  %fi192 = call i32 @injectFault4(i64 1101, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %14 = sitofp i32 %fi192 to double, !llfi_index !1103
  %fi193 = call double @injectFault3(i64 1102, double %14, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %15 = fdiv fast double %fi193, 2.000000e+00, !llfi_index !1104
  %fi194 = call double @injectFault3(i64 1103, double %15, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %16 = call double @roundDouble(double %fi194), !llfi_index !1105
  store double %16, double* %xe, align 8, !llfi_index !1106
  %17 = load i32* %2, align 4, !llfi_index !1107
  %fi195 = call i32 @injectFault4(i64 1106, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = sitofp i32 %fi195 to double, !llfi_index !1108
  %fi196 = call double @injectFault3(i64 1107, double %18, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = fdiv fast double %fi196, 2.000000e+00, !llfi_index !1109
  %fi197 = call double @injectFault3(i64 1108, double %19, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %20 = call double @roundDouble(double %fi197), !llfi_index !1110
  store double %20, double* %ye, align 8, !llfi_index !1111
  store i32 5, i32* %radius, align 4, !llfi_index !1112
  %21 = load i32* %radius, align 4, !llfi_index !1113
  %fi198 = call i32 @injectFault4(i64 1112, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %22 = mul nsw i32 %fi198, 2, !llfi_index !1114
  %fi199 = call i32 @injectFault4(i64 1113, i32 %22, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = sub nsw i32 %fi199, 1, !llfi_index !1115
  %fi200 = call i32 @injectFault4(i64 1114, i32 %23, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi200, i32* %diameter, align 4, !llfi_index !1116
  %24 = load i32* %diameter, align 4, !llfi_index !1117
  %fi201 = call i32 @injectFault4(i64 1116, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = load i32* %diameter, align 4, !llfi_index !1118
  %fi202 = call i32 @injectFault4(i64 1117, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %26 = mul nsw i32 %fi201, %fi202, !llfi_index !1119
  %fi203 = call i32 @injectFault4(i64 1118, i32 %26, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %27 = sext i32 %fi203 to i64, !llfi_index !1120
  %fi204 = call i64 @injectFault1(i64 1119, i64 %27, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %28 = mul i64 %fi204, 4, !llfi_index !1121
  %fi205 = call i64 @injectFault1(i64 1120, i64 %28, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = call noalias i8* @malloc(i64 %fi205) #5, !llfi_index !1122
  %30 = bitcast i8* %29 to i32*, !llfi_index !1123
  %fi206 = call i32* @injectFault6(i64 1122, i32* %30, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32* %fi206, i32** %disk, align 8, !llfi_index !1124
  %31 = load i32** %disk, align 8, !llfi_index !1125
  %fi207 = call i32* @injectFault6(i64 1124, i32* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %32 = load i32* %radius, align 4, !llfi_index !1126
  %fi208 = call i32 @injectFault4(i64 1125, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @strelDisk(i32* %fi207, i32 %fi208), !llfi_index !1127
  store i32 0, i32* %countOnes, align 4, !llfi_index !1128
  store i32 0, i32* %x, align 4, !llfi_index !1129
  br label %33, !llfi_index !1130

; <label>:33                                      ; preds = %61, %0
  %34 = load i32* %x, align 4, !llfi_index !1131
  %fi212 = call i32 @injectFault4(i64 1130, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = load i32* %diameter, align 4, !llfi_index !1132
  %fi213 = call i32 @injectFault4(i64 1131, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %36 = icmp slt i32 %fi212, %fi213, !llfi_index !1133
  %fi214 = call i1 @injectFault5(i64 1132, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi214, label %37, label %64, !llfi_index !1134

; <label>:37                                      ; preds = %33
  store i32 0, i32* %y, align 4, !llfi_index !1135
  br label %38, !llfi_index !1136

; <label>:38                                      ; preds = %57, %37
  %39 = load i32* %y, align 4, !llfi_index !1137
  %fi215 = call i32 @injectFault4(i64 1136, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = load i32* %diameter, align 4, !llfi_index !1138
  %fi216 = call i32 @injectFault4(i64 1137, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %41 = icmp slt i32 %fi215, %fi216, !llfi_index !1139
  %fi217 = call i1 @injectFault5(i64 1138, i1 %41, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi217, label %42, label %60, !llfi_index !1140

; <label>:42                                      ; preds = %38
  %43 = load i32* %x, align 4, !llfi_index !1141
  %fi218 = call i32 @injectFault4(i64 1140, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %44 = load i32* %diameter, align 4, !llfi_index !1142
  %fi219 = call i32 @injectFault4(i64 1141, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %45 = mul nsw i32 %fi218, %fi219, !llfi_index !1143
  %fi220 = call i32 @injectFault4(i64 1142, i32 %45, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = load i32* %y, align 4, !llfi_index !1144
  %fi221 = call i32 @injectFault4(i64 1143, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %47 = add nsw i32 %fi220, %fi221, !llfi_index !1145
  %fi222 = call i32 @injectFault4(i64 1144, i32 %47, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %48 = sext i32 %fi222 to i64, !llfi_index !1146
  %fi223 = call i64 @injectFault1(i64 1145, i64 %48, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %49 = load i32** %disk, align 8, !llfi_index !1147
  %fi224 = call i32* @injectFault6(i64 1146, i32* %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %50 = getelementptr i32* %fi224, i64 %fi223, !llfi_index !1148
  %fi225 = call i32* @injectFault6(i64 1147, i32* %50, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = load i32* %fi225, align 4, !llfi_index !1149
  %fi226 = call i32 @injectFault4(i64 1148, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = icmp eq i32 %fi226, 1, !llfi_index !1150
  %fi227 = call i1 @injectFault5(i64 1149, i1 %52, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi227, label %53, label %56, !llfi_index !1151

; <label>:53                                      ; preds = %42
  %54 = load i32* %countOnes, align 4, !llfi_index !1152
  %fi228 = call i32 @injectFault4(i64 1151, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %55 = add nsw i32 %fi228, 1, !llfi_index !1153
  %fi229 = call i32 @injectFault4(i64 1152, i32 %55, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi229, i32* %countOnes, align 4, !llfi_index !1154
  br label %56, !llfi_index !1155

; <label>:56                                      ; preds = %53, %42
  br label %57, !llfi_index !1156

; <label>:57                                      ; preds = %56
  %58 = load i32* %y, align 4, !llfi_index !1157
  %fi230 = call i32 @injectFault4(i64 1156, i32 %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = add nsw i32 %fi230, 1, !llfi_index !1158
  %fi231 = call i32 @injectFault4(i64 1157, i32 %59, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi231, i32* %y, align 4, !llfi_index !1159
  br label %38, !llfi_index !1160

; <label>:60                                      ; preds = %38
  br label %61, !llfi_index !1161

; <label>:61                                      ; preds = %60
  %62 = load i32* %x, align 4, !llfi_index !1162
  %fi232 = call i32 @injectFault4(i64 1161, i32 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %63 = add nsw i32 %fi232, 1, !llfi_index !1163
  %fi233 = call i32 @injectFault4(i64 1162, i32 %63, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi233, i32* %x, align 4, !llfi_index !1164
  br label %33, !llfi_index !1165

; <label>:64                                      ; preds = %33
  %65 = load i32* %countOnes, align 4, !llfi_index !1166
  %fi209 = call i32 @injectFault4(i64 1165, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %66 = mul nsw i32 %fi209, 2, !llfi_index !1167
  %fi210 = call i32 @injectFault4(i64 1166, i32 %66, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %67 = sext i32 %fi210 to i64, !llfi_index !1168
  %fi211 = call i64 @injectFault1(i64 1167, i64 %67, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %68 = mul i64 %fi211, 8, !llfi_index !1169
  %fi237 = call i64 @injectFault1(i64 1168, i64 %68, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %69 = call noalias i8* @malloc(i64 %fi237) #5, !llfi_index !1170
  %70 = bitcast i8* %69 to double*, !llfi_index !1171
  %fi238 = call double* @injectFault8(i64 1170, double* %70, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi238, double** %objxy, align 8, !llfi_index !1172
  %71 = load i32** %disk, align 8, !llfi_index !1173
  %fi239 = call i32* @injectFault6(i64 1172, i32* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %72 = load i32* %countOnes, align 4, !llfi_index !1174
  %fi240 = call i32 @injectFault4(i64 1173, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %73 = load double** %objxy, align 8, !llfi_index !1175
  %fi241 = call double* @injectFault8(i64 1174, double* %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %74 = load i32* %radius, align 4, !llfi_index !1176
  %fi242 = call i32 @injectFault4(i64 1175, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @getneighbors(i32* %fi239, i32 %fi240, double* %fi241, i32 %fi242), !llfi_index !1177
  %75 = call i64 @get_time(), !llfi_index !1178
  store i64 %75, i64* %get_neighbors, align 8, !llfi_index !1179
  %76 = load i32* %6, align 4, !llfi_index !1180
  %fi243 = call i32 @injectFault4(i64 1179, i32 %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %77 = sext i32 %fi243 to i64, !llfi_index !1181
  %fi244 = call i64 @injectFault1(i64 1180, i64 %77, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %78 = mul i64 8, %fi244, !llfi_index !1182
  %fi245 = call i64 @injectFault1(i64 1181, i64 %78, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %79 = call noalias i8* @malloc(i64 %fi245) #5, !llfi_index !1183
  %80 = bitcast i8* %79 to double*, !llfi_index !1184
  %fi246 = call double* @injectFault8(i64 1183, double* %80, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi246, double** %weights, align 8, !llfi_index !1185
  store i32 0, i32* %x, align 4, !llfi_index !1186
  br label %81, !llfi_index !1187

; <label>:81                                      ; preds = %93, %64
  %82 = load i32* %x, align 4, !llfi_index !1188
  %fi247 = call i32 @injectFault4(i64 1187, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %83 = load i32* %6, align 4, !llfi_index !1189
  %fi248 = call i32 @injectFault4(i64 1188, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %84 = icmp slt i32 %fi247, %fi248, !llfi_index !1190
  %fi249 = call i1 @injectFault5(i64 1189, i1 %84, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi249, label %85, label %96, !llfi_index !1191

; <label>:85                                      ; preds = %81
  %86 = load i32* %6, align 4, !llfi_index !1192
  %fi250 = call i32 @injectFault4(i64 1191, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %87 = sitofp i32 %fi250 to double, !llfi_index !1193
  %fi251 = call double @injectFault3(i64 1192, double %87, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %88 = fdiv fast double 1.000000e+00, %fi251, !llfi_index !1194
  %fi252 = call double @injectFault3(i64 1193, double %88, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %89 = load i32* %x, align 4, !llfi_index !1195
  %fi253 = call i32 @injectFault4(i64 1194, i32 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %90 = sext i32 %fi253 to i64, !llfi_index !1196
  %fi254 = call i64 @injectFault1(i64 1195, i64 %90, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %91 = load double** %weights, align 8, !llfi_index !1197
  %fi255 = call double* @injectFault8(i64 1196, double* %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %92 = getelementptr double* %fi255, i64 %fi254, !llfi_index !1198
  %fi256 = call double* @injectFault8(i64 1197, double* %92, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi252, double* %fi256, align 8, !llfi_index !1199
  br label %93, !llfi_index !1200

; <label>:93                                      ; preds = %85
  %94 = load i32* %x, align 4, !llfi_index !1201
  %fi257 = call i32 @injectFault4(i64 1200, i32 %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %95 = add nsw i32 %fi257, 1, !llfi_index !1202
  %fi258 = call i32 @injectFault4(i64 1201, i32 %95, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi258, i32* %x, align 4, !llfi_index !1203
  br label %81, !llfi_index !1204

; <label>:96                                      ; preds = %81
  %97 = call i64 @get_time(), !llfi_index !1205
  store i64 %97, i64* %get_weights, align 8, !llfi_index !1206
  %98 = load i32* %6, align 4, !llfi_index !1207
  %fi259 = call i32 @injectFault4(i64 1206, i32 %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %99 = sext i32 %fi259 to i64, !llfi_index !1208
  %fi260 = call i64 @injectFault1(i64 1207, i64 %99, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %100 = mul i64 8, %fi260, !llfi_index !1209
  %fi261 = call i64 @injectFault1(i64 1208, i64 %100, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %101 = call noalias i8* @malloc(i64 %fi261) #5, !llfi_index !1210
  %102 = bitcast i8* %101 to double*, !llfi_index !1211
  %fi262 = call double* @injectFault8(i64 1210, double* %102, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi262, double** %likelihood, align 8, !llfi_index !1212
  %103 = load i32* %6, align 4, !llfi_index !1213
  %fi263 = call i32 @injectFault4(i64 1212, i32 %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %104 = sext i32 %fi263 to i64, !llfi_index !1214
  %fi264 = call i64 @injectFault1(i64 1213, i64 %104, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %105 = mul i64 8, %fi264, !llfi_index !1215
  %fi265 = call i64 @injectFault1(i64 1214, i64 %105, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %106 = call noalias i8* @malloc(i64 %fi265) #5, !llfi_index !1216
  %107 = bitcast i8* %106 to double*, !llfi_index !1217
  %fi266 = call double* @injectFault8(i64 1216, double* %107, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi266, double** %arrayX, align 8, !llfi_index !1218
  %108 = load i32* %6, align 4, !llfi_index !1219
  %fi267 = call i32 @injectFault4(i64 1218, i32 %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %109 = sext i32 %fi267 to i64, !llfi_index !1220
  %fi268 = call i64 @injectFault1(i64 1219, i64 %109, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %110 = mul i64 8, %fi268, !llfi_index !1221
  %fi269 = call i64 @injectFault1(i64 1220, i64 %110, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %111 = call noalias i8* @malloc(i64 %fi269) #5, !llfi_index !1222
  %112 = bitcast i8* %111 to double*, !llfi_index !1223
  %fi270 = call double* @injectFault8(i64 1222, double* %112, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi270, double** %arrayY, align 8, !llfi_index !1224
  %113 = load i32* %6, align 4, !llfi_index !1225
  %fi271 = call i32 @injectFault4(i64 1224, i32 %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %114 = sext i32 %fi271 to i64, !llfi_index !1226
  %fi272 = call i64 @injectFault1(i64 1225, i64 %114, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %115 = mul i64 8, %fi272, !llfi_index !1227
  %fi273 = call i64 @injectFault1(i64 1226, i64 %115, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %116 = call noalias i8* @malloc(i64 %fi273) #5, !llfi_index !1228
  %117 = bitcast i8* %116 to double*, !llfi_index !1229
  %fi274 = call double* @injectFault8(i64 1228, double* %117, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi274, double** %xj, align 8, !llfi_index !1230
  %118 = load i32* %6, align 4, !llfi_index !1231
  %fi275 = call i32 @injectFault4(i64 1230, i32 %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %119 = sext i32 %fi275 to i64, !llfi_index !1232
  %fi276 = call i64 @injectFault1(i64 1231, i64 %119, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %120 = mul i64 8, %fi276, !llfi_index !1233
  %fi277 = call i64 @injectFault1(i64 1232, i64 %120, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %121 = call noalias i8* @malloc(i64 %fi277) #5, !llfi_index !1234
  %122 = bitcast i8* %121 to double*, !llfi_index !1235
  %fi278 = call double* @injectFault8(i64 1234, double* %122, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi278, double** %yj, align 8, !llfi_index !1236
  %123 = load i32* %6, align 4, !llfi_index !1237
  %fi279 = call i32 @injectFault4(i64 1236, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %124 = sext i32 %fi279 to i64, !llfi_index !1238
  %fi280 = call i64 @injectFault1(i64 1237, i64 %124, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %125 = mul i64 8, %fi280, !llfi_index !1239
  %fi281 = call i64 @injectFault1(i64 1238, i64 %125, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %126 = call noalias i8* @malloc(i64 %fi281) #5, !llfi_index !1240
  %127 = bitcast i8* %126 to double*, !llfi_index !1241
  %fi282 = call double* @injectFault8(i64 1240, double* %127, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi282, double** %CDF, align 8, !llfi_index !1242
  %128 = load i32* %6, align 4, !llfi_index !1243
  %fi283 = call i32 @injectFault4(i64 1242, i32 %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %129 = sext i32 %fi283 to i64, !llfi_index !1244
  %fi234 = call i64 @injectFault1(i64 1243, i64 %129, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %130 = mul i64 8, %fi234, !llfi_index !1245
  %fi235 = call i64 @injectFault1(i64 1244, i64 %130, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %131 = call noalias i8* @malloc(i64 %fi235) #5, !llfi_index !1246
  %132 = bitcast i8* %131 to double*, !llfi_index !1247
  %fi236 = call double* @injectFault8(i64 1246, double* %132, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double* %fi236, double** %u, align 8, !llfi_index !1248
  %133 = load i32* %countOnes, align 4, !llfi_index !1249
  %fi295 = call i32 @injectFault4(i64 1248, i32 %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %134 = sext i32 %fi295 to i64, !llfi_index !1250
  %fi296 = call i64 @injectFault1(i64 1249, i64 %134, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %135 = mul i64 4, %fi296, !llfi_index !1251
  %fi297 = call i64 @injectFault1(i64 1250, i64 %135, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %136 = load i32* %6, align 4, !llfi_index !1252
  %fi298 = call i32 @injectFault4(i64 1251, i32 %136, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %137 = sext i32 %fi298 to i64, !llfi_index !1253
  %fi299 = call i64 @injectFault1(i64 1252, i64 %137, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %138 = mul i64 %fi297, %fi299, !llfi_index !1254
  %fi300 = call i64 @injectFault1(i64 1253, i64 %138, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %139 = call noalias i8* @malloc(i64 %fi300) #5, !llfi_index !1255
  %140 = bitcast i8* %139 to i32*, !llfi_index !1256
  %fi301 = call i32* @injectFault6(i64 1255, i32* %140, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32* %fi301, i32** %ind, align 8, !llfi_index !1257
  store i32 0, i32* %x, align 4, !llfi_index !1258
  br label %141, !llfi_index !1259

; <label>:141                                     ; preds = %156, %96
  %142 = load i32* %x, align 4, !llfi_index !1260
  %fi302 = call i32 @injectFault4(i64 1259, i32 %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %143 = load i32* %6, align 4, !llfi_index !1261
  %fi303 = call i32 @injectFault4(i64 1260, i32 %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %144 = icmp slt i32 %fi302, %fi303, !llfi_index !1262
  %fi304 = call i1 @injectFault5(i64 1261, i1 %144, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi304, label %145, label %159, !llfi_index !1263

; <label>:145                                     ; preds = %141
  %146 = load double* %xe, align 8, !llfi_index !1264
  %fi305 = call double @injectFault3(i64 1263, double %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %147 = load i32* %x, align 4, !llfi_index !1265
  %fi306 = call i32 @injectFault4(i64 1264, i32 %147, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %148 = sext i32 %fi306 to i64, !llfi_index !1266
  %fi307 = call i64 @injectFault1(i64 1265, i64 %148, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %149 = load double** %arrayX, align 8, !llfi_index !1267
  %fi308 = call double* @injectFault8(i64 1266, double* %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %150 = getelementptr double* %fi308, i64 %fi307, !llfi_index !1268
  %fi309 = call double* @injectFault8(i64 1267, double* %150, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi305, double* %fi309, align 8, !llfi_index !1269
  %151 = load double* %ye, align 8, !llfi_index !1270
  %fi310 = call double @injectFault3(i64 1269, double %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %152 = load i32* %x, align 4, !llfi_index !1271
  %fi311 = call i32 @injectFault4(i64 1270, i32 %152, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %153 = sext i32 %fi311 to i64, !llfi_index !1272
  %fi312 = call i64 @injectFault1(i64 1271, i64 %153, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %154 = load double** %arrayY, align 8, !llfi_index !1273
  %fi313 = call double* @injectFault8(i64 1272, double* %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %155 = getelementptr double* %fi313, i64 %fi312, !llfi_index !1274
  %fi314 = call double* @injectFault8(i64 1273, double* %155, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi310, double* %fi314, align 8, !llfi_index !1275
  br label %156, !llfi_index !1276

; <label>:156                                     ; preds = %145
  %157 = load i32* %x, align 4, !llfi_index !1277
  %fi315 = call i32 @injectFault4(i64 1276, i32 %157, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %158 = add nsw i32 %fi315, 1, !llfi_index !1278
  %fi316 = call i32 @injectFault4(i64 1277, i32 %158, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi316, i32* %x, align 4, !llfi_index !1279
  br label %141, !llfi_index !1280

; <label>:159                                     ; preds = %141
  store i32 1, i32* %k, align 4, !llfi_index !1281
  br label %160, !llfi_index !1282

; <label>:160                                     ; preds = %613, %159
  %161 = load i32* %k, align 4, !llfi_index !1283
  %fi317 = call i32 @injectFault4(i64 1282, i32 %161, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %162 = load i32* %4, align 4, !llfi_index !1284
  %fi318 = call i32 @injectFault4(i64 1283, i32 %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %163 = icmp slt i32 %fi317, %fi318, !llfi_index !1285
  %fi319 = call i1 @injectFault5(i64 1284, i1 %163, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi319, label %164, label %616, !llfi_index !1286

; <label>:164                                     ; preds = %160
  %165 = call i64 @get_time(), !llfi_index !1287
  store i64 %165, i64* %set_arrays, align 8, !llfi_index !1288
  store i32 0, i32* %x, align 4, !llfi_index !1289
  br label %166, !llfi_index !1290

; <label>:166                                     ; preds = %193, %164
  %167 = load i32* %x, align 4, !llfi_index !1291
  %fi320 = call i32 @injectFault4(i64 1290, i32 %167, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %168 = load i32* %6, align 4, !llfi_index !1292
  %fi321 = call i32 @injectFault4(i64 1291, i32 %168, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %169 = icmp slt i32 %fi320, %fi321, !llfi_index !1293
  %fi322 = call i1 @injectFault5(i64 1292, i1 %169, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi322, label %170, label %196, !llfi_index !1294

; <label>:170                                     ; preds = %166
  %171 = load i32* %x, align 4, !llfi_index !1295
  %fi323 = call i32 @injectFault4(i64 1294, i32 %171, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %172 = sub nsw i32 %fi323, 1, !llfi_index !1296
  %fi324 = call i32 @injectFault4(i64 1295, i32 %172, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %173 = mul nsw i32 5, %fi324, !llfi_index !1297
  %fi325 = call i32 @injectFault4(i64 1296, i32 %173, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %174 = add nsw i32 1, %fi325, !llfi_index !1298
  %fi326 = call i32 @injectFault4(i64 1297, i32 %174, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %175 = sitofp i32 %fi326 to double, !llfi_index !1299
  %fi327 = call double @injectFault3(i64 1298, double %175, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %176 = load i32* %x, align 4, !llfi_index !1300
  %fi328 = call i32 @injectFault4(i64 1299, i32 %176, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %177 = sext i32 %fi328 to i64, !llfi_index !1301
  %fi329 = call i64 @injectFault1(i64 1300, i64 %177, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %178 = load double** %arrayX, align 8, !llfi_index !1302
  %fi330 = call double* @injectFault8(i64 1301, double* %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %179 = getelementptr double* %fi330, i64 %fi329, !llfi_index !1303
  %fi331 = call double* @injectFault8(i64 1302, double* %179, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %180 = load double* %fi331, align 8, !llfi_index !1304
  %fi332 = call double @injectFault3(i64 1303, double %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %181 = fadd fast double %fi332, %fi327, !llfi_index !1305
  %fi333 = call double @injectFault3(i64 1304, double %181, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi333, double* %fi331, align 8, !llfi_index !1306
  %182 = load i32* %x, align 4, !llfi_index !1307
  %fi334 = call i32 @injectFault4(i64 1306, i32 %182, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %183 = sub nsw i32 %fi334, 1, !llfi_index !1308
  %fi335 = call i32 @injectFault4(i64 1307, i32 %183, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %184 = mul nsw i32 2, %fi335, !llfi_index !1309
  %fi336 = call i32 @injectFault4(i64 1308, i32 %184, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %185 = add nsw i32 -2, %fi336, !llfi_index !1310
  %fi337 = call i32 @injectFault4(i64 1309, i32 %185, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %186 = sitofp i32 %fi337 to double, !llfi_index !1311
  %fi338 = call double @injectFault3(i64 1310, double %186, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %187 = load i32* %x, align 4, !llfi_index !1312
  %fi339 = call i32 @injectFault4(i64 1311, i32 %187, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %188 = sext i32 %fi339 to i64, !llfi_index !1313
  %fi340 = call i64 @injectFault1(i64 1312, i64 %188, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %189 = load double** %arrayY, align 8, !llfi_index !1314
  %fi341 = call double* @injectFault8(i64 1313, double* %189, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %190 = getelementptr double* %fi341, i64 %fi340, !llfi_index !1315
  %fi342 = call double* @injectFault8(i64 1314, double* %190, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %191 = load double* %fi342, align 8, !llfi_index !1316
  %fi343 = call double @injectFault3(i64 1315, double %191, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %192 = fadd fast double %fi343, %fi338, !llfi_index !1317
  %fi344 = call double @injectFault3(i64 1316, double %192, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi344, double* %fi342, align 8, !llfi_index !1318
  br label %193, !llfi_index !1319

; <label>:193                                     ; preds = %170
  %194 = load i32* %x, align 4, !llfi_index !1320
  %fi345 = call i32 @injectFault4(i64 1319, i32 %194, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %195 = add nsw i32 %fi345, 1, !llfi_index !1321
  %fi346 = call i32 @injectFault4(i64 1320, i32 %195, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi346, i32* %x, align 4, !llfi_index !1322
  br label %166, !llfi_index !1323

; <label>:196                                     ; preds = %166
  %197 = call i64 @get_time(), !llfi_index !1324
  store i64 %197, i64* %error, align 8, !llfi_index !1325
  store i32 0, i32* %x, align 4, !llfi_index !1326
  br label %198, !llfi_index !1327

; <label>:198                                     ; preds = %349, %196
  %199 = load i32* %x, align 4, !llfi_index !1328
  %fi347 = call i32 @injectFault4(i64 1327, i32 %199, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %200 = load i32* %6, align 4, !llfi_index !1329
  %fi348 = call i32 @injectFault4(i64 1328, i32 %200, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %201 = icmp slt i32 %fi347, %fi348, !llfi_index !1330
  %fi349 = call i1 @injectFault5(i64 1329, i1 %201, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi349, label %202, label %352, !llfi_index !1331

; <label>:202                                     ; preds = %198
  store i32 0, i32* %y, align 4, !llfi_index !1332
  br label %203, !llfi_index !1333

; <label>:203                                     ; preds = %280, %202
  %204 = load i32* %y, align 4, !llfi_index !1334
  %fi350 = call i32 @injectFault4(i64 1333, i32 %204, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %205 = load i32* %countOnes, align 4, !llfi_index !1335
  %fi351 = call i32 @injectFault4(i64 1334, i32 %205, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %206 = icmp slt i32 %fi350, %fi351, !llfi_index !1336
  %fi352 = call i1 @injectFault5(i64 1335, i1 %206, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi352, label %207, label %283, !llfi_index !1337

; <label>:207                                     ; preds = %203
  %208 = load i32* %x, align 4, !llfi_index !1338
  %fi353 = call i32 @injectFault4(i64 1337, i32 %208, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %209 = sext i32 %fi353 to i64, !llfi_index !1339
  %fi354 = call i64 @injectFault1(i64 1338, i64 %209, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %210 = load double** %arrayX, align 8, !llfi_index !1340
  %fi355 = call double* @injectFault8(i64 1339, double* %210, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %211 = getelementptr double* %fi355, i64 %fi354, !llfi_index !1341
  %fi356 = call double* @injectFault8(i64 1340, double* %211, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %212 = load double* %fi356, align 8, !llfi_index !1342
  %fi357 = call double @injectFault3(i64 1341, double %212, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %213 = call double @roundDouble(double %fi357), !llfi_index !1343
  %214 = load i32* %y, align 4, !llfi_index !1344
  %fi358 = call i32 @injectFault4(i64 1343, i32 %214, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %215 = mul nsw i32 %fi358, 2, !llfi_index !1345
  %fi359 = call i32 @injectFault4(i64 1344, i32 %215, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %216 = add nsw i32 %fi359, 1, !llfi_index !1346
  %fi360 = call i32 @injectFault4(i64 1345, i32 %216, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %217 = sext i32 %fi360 to i64, !llfi_index !1347
  %fi361 = call i64 @injectFault1(i64 1346, i64 %217, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %218 = load double** %objxy, align 8, !llfi_index !1348
  %fi362 = call double* @injectFault8(i64 1347, double* %218, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %219 = getelementptr double* %fi362, i64 %fi361, !llfi_index !1349
  %fi363 = call double* @injectFault8(i64 1348, double* %219, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %220 = load double* %fi363, align 8, !llfi_index !1350
  %fi364 = call double @injectFault3(i64 1349, double %220, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %221 = fadd fast double %213, %fi364, !llfi_index !1351
  %fi365 = call double @injectFault3(i64 1350, double %221, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %222 = fptosi double %fi365 to i32, !llfi_index !1352
  %fi366 = call i32 @injectFault4(i64 1351, i32 %222, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi366, i32* %indX, align 4, !llfi_index !1353
  %223 = load i32* %x, align 4, !llfi_index !1354
  %fi367 = call i32 @injectFault4(i64 1353, i32 %223, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %224 = sext i32 %fi367 to i64, !llfi_index !1355
  %fi368 = call i64 @injectFault1(i64 1354, i64 %224, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %225 = load double** %arrayY, align 8, !llfi_index !1356
  %fi369 = call double* @injectFault8(i64 1355, double* %225, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %226 = getelementptr double* %fi369, i64 %fi368, !llfi_index !1357
  %fi370 = call double* @injectFault8(i64 1356, double* %226, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %227 = load double* %fi370, align 8, !llfi_index !1358
  %fi371 = call double @injectFault3(i64 1357, double %227, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %228 = call double @roundDouble(double %fi371), !llfi_index !1359
  %229 = load i32* %y, align 4, !llfi_index !1360
  %fi372 = call i32 @injectFault4(i64 1359, i32 %229, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %230 = mul nsw i32 %fi372, 2, !llfi_index !1361
  %fi373 = call i32 @injectFault4(i64 1360, i32 %230, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %231 = sext i32 %fi373 to i64, !llfi_index !1362
  %fi374 = call i64 @injectFault1(i64 1361, i64 %231, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %232 = load double** %objxy, align 8, !llfi_index !1363
  %fi375 = call double* @injectFault8(i64 1362, double* %232, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %233 = getelementptr double* %fi375, i64 %fi374, !llfi_index !1364
  %fi376 = call double* @injectFault8(i64 1363, double* %233, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %234 = load double* %fi376, align 8, !llfi_index !1365
  %fi377 = call double @injectFault3(i64 1364, double %234, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %235 = fadd fast double %228, %fi377, !llfi_index !1366
  %fi378 = call double @injectFault3(i64 1365, double %235, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %236 = fptosi double %fi378 to i32, !llfi_index !1367
  %fi379 = call i32 @injectFault4(i64 1366, i32 %236, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi379, i32* %indY, align 4, !llfi_index !1368
  %237 = load i32* %indX, align 4, !llfi_index !1369
  %fi380 = call i32 @injectFault4(i64 1368, i32 %237, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %238 = load i32* %3, align 4, !llfi_index !1370
  %fi381 = call i32 @injectFault4(i64 1369, i32 %238, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %239 = mul nsw i32 %fi380, %fi381, !llfi_index !1371
  %fi382 = call i32 @injectFault4(i64 1370, i32 %239, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %240 = load i32* %4, align 4, !llfi_index !1372
  %fi383 = call i32 @injectFault4(i64 1371, i32 %240, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %241 = mul nsw i32 %fi382, %fi383, !llfi_index !1373
  %fi384 = call i32 @injectFault4(i64 1372, i32 %241, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %242 = load i32* %indY, align 4, !llfi_index !1374
  %fi385 = call i32 @injectFault4(i64 1373, i32 %242, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %243 = load i32* %4, align 4, !llfi_index !1375
  %fi386 = call i32 @injectFault4(i64 1374, i32 %243, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %244 = mul nsw i32 %fi385, %fi386, !llfi_index !1376
  %fi387 = call i32 @injectFault4(i64 1375, i32 %244, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %245 = add nsw i32 %fi384, %fi387, !llfi_index !1377
  %fi388 = call i32 @injectFault4(i64 1376, i32 %245, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %246 = load i32* %k, align 4, !llfi_index !1378
  %fi389 = call i32 @injectFault4(i64 1377, i32 %246, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %247 = add nsw i32 %fi388, %fi389, !llfi_index !1379
  %fi390 = call i32 @injectFault4(i64 1378, i32 %247, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %248 = sitofp i32 %fi390 to double, !llfi_index !1380
  %fi391 = call double @injectFault3(i64 1379, double %248, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %249 = call double @fabs(double %fi391) #6, !llfi_index !1381
  %250 = fptosi double %249 to i32, !llfi_index !1382
  %fi392 = call i32 @injectFault4(i64 1381, i32 %250, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %251 = load i32* %x, align 4, !llfi_index !1383
  %fi393 = call i32 @injectFault4(i64 1382, i32 %251, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %252 = load i32* %countOnes, align 4, !llfi_index !1384
  %fi394 = call i32 @injectFault4(i64 1383, i32 %252, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %253 = mul nsw i32 %fi393, %fi394, !llfi_index !1385
  %fi395 = call i32 @injectFault4(i64 1384, i32 %253, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %254 = load i32* %y, align 4, !llfi_index !1386
  %fi396 = call i32 @injectFault4(i64 1385, i32 %254, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %255 = add nsw i32 %fi395, %fi396, !llfi_index !1387
  %fi397 = call i32 @injectFault4(i64 1386, i32 %255, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %256 = sext i32 %fi397 to i64, !llfi_index !1388
  %fi398 = call i64 @injectFault1(i64 1387, i64 %256, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %257 = load i32** %ind, align 8, !llfi_index !1389
  %fi284 = call i32* @injectFault6(i64 1388, i32* %257, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %258 = getelementptr i32* %fi284, i64 %fi398, !llfi_index !1390
  %fi285 = call i32* @injectFault6(i64 1389, i32* %258, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi392, i32* %fi285, align 4, !llfi_index !1391
  %259 = load i32* %x, align 4, !llfi_index !1392
  %fi286 = call i32 @injectFault4(i64 1391, i32 %259, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %260 = load i32* %countOnes, align 4, !llfi_index !1393
  %fi287 = call i32 @injectFault4(i64 1392, i32 %260, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %261 = mul nsw i32 %fi286, %fi287, !llfi_index !1394
  %fi288 = call i32 @injectFault4(i64 1393, i32 %261, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %262 = load i32* %y, align 4, !llfi_index !1395
  %fi289 = call i32 @injectFault4(i64 1394, i32 %262, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %263 = add nsw i32 %fi288, %fi289, !llfi_index !1396
  %fi290 = call i32 @injectFault4(i64 1395, i32 %263, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %264 = sext i32 %fi290 to i64, !llfi_index !1397
  %fi291 = call i64 @injectFault1(i64 1396, i64 %264, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %265 = load i32** %ind, align 8, !llfi_index !1398
  %fi292 = call i32* @injectFault6(i64 1397, i32* %265, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %266 = getelementptr i32* %fi292, i64 %fi291, !llfi_index !1399
  %fi293 = call i32* @injectFault6(i64 1398, i32* %266, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %267 = load i32* %fi293, align 4, !llfi_index !1400
  %fi294 = call i32 @injectFault4(i64 1399, i32 %267, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %268 = load i32* %max_size, align 4, !llfi_index !1401
  %fi415 = call i32 @injectFault4(i64 1400, i32 %268, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %269 = icmp sge i32 %fi294, %fi415, !llfi_index !1402
  %fi416 = call i1 @injectFault5(i64 1401, i1 %269, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi416, label %270, label %279, !llfi_index !1403

; <label>:270                                     ; preds = %207
  %271 = load i32* %x, align 4, !llfi_index !1404
  %fi417 = call i32 @injectFault4(i64 1403, i32 %271, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %272 = load i32* %countOnes, align 4, !llfi_index !1405
  %fi418 = call i32 @injectFault4(i64 1404, i32 %272, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %273 = mul nsw i32 %fi417, %fi418, !llfi_index !1406
  %fi419 = call i32 @injectFault4(i64 1405, i32 %273, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %274 = load i32* %y, align 4, !llfi_index !1407
  %fi420 = call i32 @injectFault4(i64 1406, i32 %274, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %275 = add nsw i32 %fi419, %fi420, !llfi_index !1408
  %fi421 = call i32 @injectFault4(i64 1407, i32 %275, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %276 = sext i32 %fi421 to i64, !llfi_index !1409
  %fi422 = call i64 @injectFault1(i64 1408, i64 %276, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %277 = load i32** %ind, align 8, !llfi_index !1410
  %fi423 = call i32* @injectFault6(i64 1409, i32* %277, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %278 = getelementptr i32* %fi423, i64 %fi422, !llfi_index !1411
  %fi424 = call i32* @injectFault6(i64 1410, i32* %278, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 0, i32* %fi424, align 4, !llfi_index !1412
  br label %279, !llfi_index !1413

; <label>:279                                     ; preds = %270, %207
  br label %280, !llfi_index !1414

; <label>:280                                     ; preds = %279
  %281 = load i32* %y, align 4, !llfi_index !1415
  %fi425 = call i32 @injectFault4(i64 1414, i32 %281, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %282 = add nsw i32 %fi425, 1, !llfi_index !1416
  %fi426 = call i32 @injectFault4(i64 1415, i32 %282, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi426, i32* %y, align 4, !llfi_index !1417
  br label %203, !llfi_index !1418

; <label>:283                                     ; preds = %203
  %284 = load i32* %x, align 4, !llfi_index !1419
  %fi427 = call i32 @injectFault4(i64 1418, i32 %284, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %285 = sext i32 %fi427 to i64, !llfi_index !1420
  %fi428 = call i64 @injectFault1(i64 1419, i64 %285, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %286 = load double** %likelihood, align 8, !llfi_index !1421
  %fi429 = call double* @injectFault8(i64 1420, double* %286, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %287 = getelementptr double* %fi429, i64 %fi428, !llfi_index !1422
  %fi430 = call double* @injectFault8(i64 1421, double* %287, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double 0.000000e+00, double* %fi430, align 8, !llfi_index !1423
  store i32 0, i32* %y, align 4, !llfi_index !1424
  br label %288, !llfi_index !1425

; <label>:288                                     ; preds = %333, %283
  %289 = load i32* %y, align 4, !llfi_index !1426
  %fi431 = call i32 @injectFault4(i64 1425, i32 %289, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %290 = load i32* %countOnes, align 4, !llfi_index !1427
  %fi432 = call i32 @injectFault4(i64 1426, i32 %290, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %291 = icmp slt i32 %fi431, %fi432, !llfi_index !1428
  %fi433 = call i1 @injectFault5(i64 1427, i1 %291, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi433, label %292, label %336, !llfi_index !1429

; <label>:292                                     ; preds = %288
  %293 = load i32* %x, align 4, !llfi_index !1430
  %fi434 = call i32 @injectFault4(i64 1429, i32 %293, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %294 = load i32* %countOnes, align 4, !llfi_index !1431
  %fi435 = call i32 @injectFault4(i64 1430, i32 %294, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %295 = mul nsw i32 %fi434, %fi435, !llfi_index !1432
  %fi436 = call i32 @injectFault4(i64 1431, i32 %295, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %296 = load i32* %y, align 4, !llfi_index !1433
  %fi437 = call i32 @injectFault4(i64 1432, i32 %296, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %297 = add nsw i32 %fi436, %fi437, !llfi_index !1434
  %fi438 = call i32 @injectFault4(i64 1433, i32 %297, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %298 = sext i32 %fi438 to i64, !llfi_index !1435
  %fi439 = call i64 @injectFault1(i64 1434, i64 %298, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %299 = load i32** %ind, align 8, !llfi_index !1436
  %fi440 = call i32* @injectFault6(i64 1435, i32* %299, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %300 = getelementptr i32* %fi440, i64 %fi439, !llfi_index !1437
  %fi441 = call i32* @injectFault6(i64 1436, i32* %300, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %301 = load i32* %fi441, align 4, !llfi_index !1438
  %fi442 = call i32 @injectFault4(i64 1437, i32 %301, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %302 = sext i32 %fi442 to i64, !llfi_index !1439
  %fi443 = call i64 @injectFault1(i64 1438, i64 %302, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %303 = load i32** %1, align 8, !llfi_index !1440
  %fi444 = call i32* @injectFault6(i64 1439, i32* %303, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %304 = getelementptr i32* %fi444, i64 %fi443, !llfi_index !1441
  %fi445 = call i32* @injectFault6(i64 1440, i32* %304, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %305 = load i32* %fi445, align 4, !llfi_index !1442
  %fi446 = call i32 @injectFault4(i64 1441, i32 %305, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %306 = sub nsw i32 %fi446, 100, !llfi_index !1443
  %fi447 = call i32 @injectFault4(i64 1442, i32 %306, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %307 = sitofp i32 %fi447 to double, !llfi_index !1444
  %fi448 = call double @injectFault3(i64 1443, double %307, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %308 = call double @llvm.pow.f64(double %fi448, double 2.000000e+00), !llfi_index !1445
  %309 = load i32* %x, align 4, !llfi_index !1446
  %fi449 = call i32 @injectFault4(i64 1445, i32 %309, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %310 = load i32* %countOnes, align 4, !llfi_index !1447
  %fi450 = call i32 @injectFault4(i64 1446, i32 %310, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %311 = mul nsw i32 %fi449, %fi450, !llfi_index !1448
  %fi451 = call i32 @injectFault4(i64 1447, i32 %311, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %312 = load i32* %y, align 4, !llfi_index !1449
  %fi452 = call i32 @injectFault4(i64 1448, i32 %312, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %313 = add nsw i32 %fi451, %fi452, !llfi_index !1450
  %fi453 = call i32 @injectFault4(i64 1449, i32 %313, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %314 = sext i32 %fi453 to i64, !llfi_index !1451
  %fi454 = call i64 @injectFault1(i64 1450, i64 %314, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %315 = load i32** %ind, align 8, !llfi_index !1452
  %fi455 = call i32* @injectFault6(i64 1451, i32* %315, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %316 = getelementptr i32* %fi455, i64 %fi454, !llfi_index !1453
  %fi456 = call i32* @injectFault6(i64 1452, i32* %316, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %317 = load i32* %fi456, align 4, !llfi_index !1454
  %fi457 = call i32 @injectFault4(i64 1453, i32 %317, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %318 = sext i32 %fi457 to i64, !llfi_index !1455
  %fi458 = call i64 @injectFault1(i64 1454, i64 %318, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %319 = load i32** %1, align 8, !llfi_index !1456
  %fi459 = call i32* @injectFault6(i64 1455, i32* %319, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %320 = getelementptr i32* %fi459, i64 %fi458, !llfi_index !1457
  %fi460 = call i32* @injectFault6(i64 1456, i32* %320, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %321 = load i32* %fi460, align 4, !llfi_index !1458
  %fi461 = call i32 @injectFault4(i64 1457, i32 %321, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %322 = sub nsw i32 %fi461, 228, !llfi_index !1459
  %fi462 = call i32 @injectFault4(i64 1458, i32 %322, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %323 = sitofp i32 %fi462 to double, !llfi_index !1460
  %fi463 = call double @injectFault3(i64 1459, double %323, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %324 = call double @llvm.pow.f64(double %fi463, double 2.000000e+00), !llfi_index !1461
  %325 = fsub fast double %308, %324, !llfi_index !1462
  %fi464 = call double @injectFault3(i64 1461, double %325, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %326 = fdiv fast double %fi464, 5.000000e+01, !llfi_index !1463
  %fi465 = call double @injectFault3(i64 1462, double %326, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %327 = load i32* %x, align 4, !llfi_index !1464
  %fi466 = call i32 @injectFault4(i64 1463, i32 %327, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %328 = sext i32 %fi466 to i64, !llfi_index !1465
  %fi467 = call i64 @injectFault1(i64 1464, i64 %328, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %329 = load double** %likelihood, align 8, !llfi_index !1466
  %fi468 = call double* @injectFault8(i64 1465, double* %329, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %330 = getelementptr double* %fi468, i64 %fi467, !llfi_index !1467
  %fi469 = call double* @injectFault8(i64 1466, double* %330, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %331 = load double* %fi469, align 8, !llfi_index !1468
  %fi470 = call double @injectFault3(i64 1467, double %331, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %332 = fadd fast double %fi470, %fi465, !llfi_index !1469
  %fi471 = call double @injectFault3(i64 1468, double %332, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi471, double* %fi469, align 8, !llfi_index !1470
  br label %333, !llfi_index !1471

; <label>:333                                     ; preds = %292
  %334 = load i32* %y, align 4, !llfi_index !1472
  %fi472 = call i32 @injectFault4(i64 1471, i32 %334, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %335 = add nsw i32 %fi472, 1, !llfi_index !1473
  %fi473 = call i32 @injectFault4(i64 1472, i32 %335, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi473, i32* %y, align 4, !llfi_index !1474
  br label %288, !llfi_index !1475

; <label>:336                                     ; preds = %288
  %337 = load i32* %x, align 4, !llfi_index !1476
  %fi474 = call i32 @injectFault4(i64 1475, i32 %337, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %338 = sext i32 %fi474 to i64, !llfi_index !1477
  %fi475 = call i64 @injectFault1(i64 1476, i64 %338, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %339 = load double** %likelihood, align 8, !llfi_index !1478
  %fi476 = call double* @injectFault8(i64 1477, double* %339, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %340 = getelementptr double* %fi476, i64 %fi475, !llfi_index !1479
  %fi477 = call double* @injectFault8(i64 1478, double* %340, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %341 = load double* %fi477, align 8, !llfi_index !1480
  %fi478 = call double @injectFault3(i64 1479, double %341, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %342 = load i32* %countOnes, align 4, !llfi_index !1481
  %fi479 = call i32 @injectFault4(i64 1480, i32 %342, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %343 = sitofp i32 %fi479 to double, !llfi_index !1482
  %fi480 = call double @injectFault3(i64 1481, double %343, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %344 = fdiv fast double %fi478, %fi480, !llfi_index !1483
  %fi481 = call double @injectFault3(i64 1482, double %344, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %345 = load i32* %x, align 4, !llfi_index !1484
  %fi482 = call i32 @injectFault4(i64 1483, i32 %345, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %346 = sext i32 %fi482 to i64, !llfi_index !1485
  %fi483 = call i64 @injectFault1(i64 1484, i64 %346, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %347 = load double** %likelihood, align 8, !llfi_index !1486
  %fi484 = call double* @injectFault8(i64 1485, double* %347, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %348 = getelementptr double* %fi484, i64 %fi483, !llfi_index !1487
  %fi485 = call double* @injectFault8(i64 1486, double* %348, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi481, double* %fi485, align 8, !llfi_index !1488
  br label %349, !llfi_index !1489

; <label>:349                                     ; preds = %336
  %350 = load i32* %x, align 4, !llfi_index !1490
  %fi486 = call i32 @injectFault4(i64 1489, i32 %350, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %351 = add nsw i32 %fi486, 1, !llfi_index !1491
  %fi487 = call i32 @injectFault4(i64 1490, i32 %351, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi487, i32* %x, align 4, !llfi_index !1492
  br label %198, !llfi_index !1493

; <label>:352                                     ; preds = %198
  %353 = call i64 @get_time(), !llfi_index !1494
  store i64 %353, i64* %likelihood_time, align 8, !llfi_index !1495
  store i32 0, i32* %x, align 4, !llfi_index !1496
  br label %354, !llfi_index !1497

; <label>:354                                     ; preds = %375, %352
  %355 = load i32* %x, align 4, !llfi_index !1498
  %fi488 = call i32 @injectFault4(i64 1497, i32 %355, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %356 = load i32* %6, align 4, !llfi_index !1499
  %fi489 = call i32 @injectFault4(i64 1498, i32 %356, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %357 = icmp slt i32 %fi488, %fi489, !llfi_index !1500
  %fi490 = call i1 @injectFault5(i64 1499, i1 %357, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi490, label %358, label %378, !llfi_index !1501

; <label>:358                                     ; preds = %354
  %359 = load i32* %x, align 4, !llfi_index !1502
  %fi491 = call i32 @injectFault4(i64 1501, i32 %359, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %360 = sext i32 %fi491 to i64, !llfi_index !1503
  %fi492 = call i64 @injectFault1(i64 1502, i64 %360, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %361 = load double** %weights, align 8, !llfi_index !1504
  %fi493 = call double* @injectFault8(i64 1503, double* %361, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %362 = getelementptr double* %fi493, i64 %fi492, !llfi_index !1505
  %fi494 = call double* @injectFault8(i64 1504, double* %362, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %363 = load double* %fi494, align 8, !llfi_index !1506
  %fi495 = call double @injectFault3(i64 1505, double %363, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %364 = load i32* %x, align 4, !llfi_index !1507
  %fi496 = call i32 @injectFault4(i64 1506, i32 %364, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %365 = sext i32 %fi496 to i64, !llfi_index !1508
  %fi497 = call i64 @injectFault1(i64 1507, i64 %365, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %366 = load double** %likelihood, align 8, !llfi_index !1509
  %fi498 = call double* @injectFault8(i64 1508, double* %366, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %367 = getelementptr double* %fi498, i64 %fi497, !llfi_index !1510
  %fi499 = call double* @injectFault8(i64 1509, double* %367, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %368 = load double* %fi499, align 8, !llfi_index !1511
  %fi500 = call double @injectFault3(i64 1510, double %368, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %369 = call double @__exp_finite(double %fi500) #6, !llfi_index !1512
  %370 = fmul fast double %fi495, %369, !llfi_index !1513
  %fi501 = call double @injectFault3(i64 1512, double %370, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %371 = load i32* %x, align 4, !llfi_index !1514
  %fi502 = call i32 @injectFault4(i64 1513, i32 %371, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %372 = sext i32 %fi502 to i64, !llfi_index !1515
  %fi503 = call i64 @injectFault1(i64 1514, i64 %372, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %373 = load double** %weights, align 8, !llfi_index !1516
  %fi504 = call double* @injectFault8(i64 1515, double* %373, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %374 = getelementptr double* %fi504, i64 %fi503, !llfi_index !1517
  %fi505 = call double* @injectFault8(i64 1516, double* %374, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi501, double* %fi505, align 8, !llfi_index !1518
  br label %375, !llfi_index !1519

; <label>:375                                     ; preds = %358
  %376 = load i32* %x, align 4, !llfi_index !1520
  %fi506 = call i32 @injectFault4(i64 1519, i32 %376, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %377 = add nsw i32 %fi506, 1, !llfi_index !1521
  %fi507 = call i32 @injectFault4(i64 1520, i32 %377, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi507, i32* %x, align 4, !llfi_index !1522
  br label %354, !llfi_index !1523

; <label>:378                                     ; preds = %354
  %379 = call i64 @get_time(), !llfi_index !1524
  store i64 %379, i64* %exponential, align 8, !llfi_index !1525
  store double 0.000000e+00, double* %sumWeights, align 8, !llfi_index !1526
  store i32 0, i32* %x, align 4, !llfi_index !1527
  br label %380, !llfi_index !1528

; <label>:380                                     ; preds = %392, %378
  %381 = load i32* %x, align 4, !llfi_index !1529
  %fi508 = call i32 @injectFault4(i64 1528, i32 %381, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %382 = load i32* %6, align 4, !llfi_index !1530
  %fi509 = call i32 @injectFault4(i64 1529, i32 %382, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %383 = icmp slt i32 %fi508, %fi509, !llfi_index !1531
  %fi510 = call i1 @injectFault5(i64 1530, i1 %383, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi510, label %384, label %395, !llfi_index !1532

; <label>:384                                     ; preds = %380
  %385 = load i32* %x, align 4, !llfi_index !1533
  %fi511 = call i32 @injectFault4(i64 1532, i32 %385, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %386 = sext i32 %fi511 to i64, !llfi_index !1534
  %fi512 = call i64 @injectFault1(i64 1533, i64 %386, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %387 = load double** %weights, align 8, !llfi_index !1535
  %fi513 = call double* @injectFault8(i64 1534, double* %387, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %388 = getelementptr double* %fi513, i64 %fi512, !llfi_index !1536
  %fi514 = call double* @injectFault8(i64 1535, double* %388, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %389 = load double* %fi514, align 8, !llfi_index !1537
  %fi515 = call double @injectFault3(i64 1536, double %389, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %390 = load double* %sumWeights, align 8, !llfi_index !1538
  %fi1 = call double @injectFault3(i64 1537, double %390, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %391 = fadd fast double %fi1, %fi515, !llfi_index !1539
  %fi2 = call double @injectFault3(i64 1538, double %391, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi2, double* %sumWeights, align 8, !llfi_index !1540
  br label %392, !llfi_index !1541

; <label>:392                                     ; preds = %384
  %393 = load i32* %x, align 4, !llfi_index !1542
  %fi3 = call i32 @injectFault4(i64 1541, i32 %393, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %394 = add nsw i32 %fi3, 1, !llfi_index !1543
  %fi4 = call i32 @injectFault4(i64 1542, i32 %394, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi4, i32* %x, align 4, !llfi_index !1544
  br label %380, !llfi_index !1545

; <label>:395                                     ; preds = %380
  %396 = call i64 @get_time(), !llfi_index !1546
  store i64 %396, i64* %sum_time, align 8, !llfi_index !1547
  store i32 0, i32* %x, align 4, !llfi_index !1548
  br label %397, !llfi_index !1549

; <label>:397                                     ; preds = %413, %395
  %398 = load i32* %x, align 4, !llfi_index !1550
  %fi5 = call i32 @injectFault4(i64 1549, i32 %398, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %399 = load i32* %6, align 4, !llfi_index !1551
  %fi6 = call i32 @injectFault4(i64 1550, i32 %399, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %400 = icmp slt i32 %fi5, %fi6, !llfi_index !1552
  %fi7 = call i1 @injectFault5(i64 1551, i1 %400, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi7, label %401, label %416, !llfi_index !1553

; <label>:401                                     ; preds = %397
  %402 = load i32* %x, align 4, !llfi_index !1554
  %fi8 = call i32 @injectFault4(i64 1553, i32 %402, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %403 = sext i32 %fi8 to i64, !llfi_index !1555
  %fi9 = call i64 @injectFault1(i64 1554, i64 %403, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %404 = load double** %weights, align 8, !llfi_index !1556
  %fi10 = call double* @injectFault8(i64 1555, double* %404, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %405 = getelementptr double* %fi10, i64 %fi9, !llfi_index !1557
  %fi11 = call double* @injectFault8(i64 1556, double* %405, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %406 = load double* %fi11, align 8, !llfi_index !1558
  %fi12 = call double @injectFault3(i64 1557, double %406, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %407 = load double* %sumWeights, align 8, !llfi_index !1559
  %fi13 = call double @injectFault3(i64 1558, double %407, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %408 = fdiv fast double %fi12, %fi13, !llfi_index !1560
  %fi14 = call double @injectFault3(i64 1559, double %408, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %409 = load i32* %x, align 4, !llfi_index !1561
  %fi15 = call i32 @injectFault4(i64 1560, i32 %409, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %410 = sext i32 %fi15 to i64, !llfi_index !1562
  %fi16 = call i64 @injectFault1(i64 1561, i64 %410, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %411 = load double** %weights, align 8, !llfi_index !1563
  %fi17 = call double* @injectFault8(i64 1562, double* %411, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %412 = getelementptr double* %fi17, i64 %fi16, !llfi_index !1564
  %fi18 = call double* @injectFault8(i64 1563, double* %412, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi14, double* %fi18, align 8, !llfi_index !1565
  br label %413, !llfi_index !1566

; <label>:413                                     ; preds = %401
  %414 = load i32* %x, align 4, !llfi_index !1567
  %fi19 = call i32 @injectFault4(i64 1566, i32 %414, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %415 = add nsw i32 %fi19, 1, !llfi_index !1568
  %fi20 = call i32 @injectFault4(i64 1567, i32 %415, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi20, i32* %x, align 4, !llfi_index !1569
  br label %397, !llfi_index !1570

; <label>:416                                     ; preds = %397
  %417 = call i64 @get_time(), !llfi_index !1571
  store i64 %417, i64* %normalize, align 8, !llfi_index !1572
  store double 0.000000e+00, double* %xe, align 8, !llfi_index !1573
  store double 0.000000e+00, double* %ye, align 8, !llfi_index !1574
  store i32 0, i32* %x, align 4, !llfi_index !1575
  br label %418, !llfi_index !1576

; <label>:418                                     ; preds = %449, %416
  %419 = load i32* %x, align 4, !llfi_index !1577
  %fi21 = call i32 @injectFault4(i64 1576, i32 %419, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %420 = load i32* %6, align 4, !llfi_index !1578
  %fi22 = call i32 @injectFault4(i64 1577, i32 %420, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %421 = icmp slt i32 %fi21, %fi22, !llfi_index !1579
  %fi23 = call i1 @injectFault5(i64 1578, i1 %421, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi23, label %422, label %452, !llfi_index !1580

; <label>:422                                     ; preds = %418
  %423 = load i32* %x, align 4, !llfi_index !1581
  %fi24 = call i32 @injectFault4(i64 1580, i32 %423, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %424 = sext i32 %fi24 to i64, !llfi_index !1582
  %fi25 = call i64 @injectFault1(i64 1581, i64 %424, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %425 = load double** %arrayX, align 8, !llfi_index !1583
  %fi26 = call double* @injectFault8(i64 1582, double* %425, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %426 = getelementptr double* %fi26, i64 %fi25, !llfi_index !1584
  %fi27 = call double* @injectFault8(i64 1583, double* %426, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %427 = load double* %fi27, align 8, !llfi_index !1585
  %fi28 = call double @injectFault3(i64 1584, double %427, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %428 = load i32* %x, align 4, !llfi_index !1586
  %fi29 = call i32 @injectFault4(i64 1585, i32 %428, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %429 = sext i32 %fi29 to i64, !llfi_index !1587
  %fi30 = call i64 @injectFault1(i64 1586, i64 %429, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %430 = load double** %weights, align 8, !llfi_index !1588
  %fi31 = call double* @injectFault8(i64 1587, double* %430, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %431 = getelementptr double* %fi31, i64 %fi30, !llfi_index !1589
  %fi32 = call double* @injectFault8(i64 1588, double* %431, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %432 = load double* %fi32, align 8, !llfi_index !1590
  %fi33 = call double @injectFault3(i64 1589, double %432, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %433 = fmul fast double %fi28, %fi33, !llfi_index !1591
  %fi34 = call double @injectFault3(i64 1590, double %433, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %434 = load double* %xe, align 8, !llfi_index !1592
  %fi35 = call double @injectFault3(i64 1591, double %434, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %435 = fadd fast double %fi35, %fi34, !llfi_index !1593
  %fi36 = call double @injectFault3(i64 1592, double %435, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi36, double* %xe, align 8, !llfi_index !1594
  %436 = load i32* %x, align 4, !llfi_index !1595
  %fi37 = call i32 @injectFault4(i64 1594, i32 %436, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %437 = sext i32 %fi37 to i64, !llfi_index !1596
  %fi38 = call i64 @injectFault1(i64 1595, i64 %437, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %438 = load double** %arrayY, align 8, !llfi_index !1597
  %fi39 = call double* @injectFault8(i64 1596, double* %438, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %439 = getelementptr double* %fi39, i64 %fi38, !llfi_index !1598
  %fi40 = call double* @injectFault8(i64 1597, double* %439, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %440 = load double* %fi40, align 8, !llfi_index !1599
  %fi41 = call double @injectFault3(i64 1598, double %440, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %441 = load i32* %x, align 4, !llfi_index !1600
  %fi42 = call i32 @injectFault4(i64 1599, i32 %441, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %442 = sext i32 %fi42 to i64, !llfi_index !1601
  %fi43 = call i64 @injectFault1(i64 1600, i64 %442, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %443 = load double** %weights, align 8, !llfi_index !1602
  %fi44 = call double* @injectFault8(i64 1601, double* %443, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %444 = getelementptr double* %fi44, i64 %fi43, !llfi_index !1603
  %fi45 = call double* @injectFault8(i64 1602, double* %444, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %445 = load double* %fi45, align 8, !llfi_index !1604
  %fi46 = call double @injectFault3(i64 1603, double %445, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %446 = fmul fast double %fi41, %fi46, !llfi_index !1605
  %fi47 = call double @injectFault3(i64 1604, double %446, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %447 = load double* %ye, align 8, !llfi_index !1606
  %fi48 = call double @injectFault3(i64 1605, double %447, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %448 = fadd fast double %fi48, %fi47, !llfi_index !1607
  %fi49 = call double @injectFault3(i64 1606, double %448, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi49, double* %ye, align 8, !llfi_index !1608
  br label %449, !llfi_index !1609

; <label>:449                                     ; preds = %422
  %450 = load i32* %x, align 4, !llfi_index !1610
  %fi50 = call i32 @injectFault4(i64 1609, i32 %450, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %451 = add nsw i32 %fi50, 1, !llfi_index !1611
  %fi51 = call i32 @injectFault4(i64 1610, i32 %451, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi51, i32* %x, align 4, !llfi_index !1612
  br label %418, !llfi_index !1613

; <label>:452                                     ; preds = %418
  %453 = call i64 @get_time(), !llfi_index !1614
  store i64 %453, i64* %move_time, align 8, !llfi_index !1615
  %454 = load double* %xe, align 8, !llfi_index !1616
  %fi52 = call double @injectFault3(i64 1615, double %454, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %455 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), double %fi52), !llfi_index !1617
  %456 = load double* %ye, align 8, !llfi_index !1618
  %fi = call double @injectFault3(i64 1617, double %456, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %457 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), double %fi), !llfi_index !1619
  %458 = load double* %xe, align 8, !llfi_index !1620
  %fi53 = call double @injectFault3(i64 1619, double %458, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %459 = load i32* %3, align 4, !llfi_index !1621
  %fi54 = call i32 @injectFault4(i64 1620, i32 %459, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %460 = sitofp i32 %fi54 to double, !llfi_index !1622
  %fi55 = call double @injectFault3(i64 1621, double %460, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %461 = fdiv fast double %fi55, 2.000000e+00, !llfi_index !1623
  %fi56 = call double @injectFault3(i64 1622, double %461, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %462 = call double @roundDouble(double %fi56), !llfi_index !1624
  %463 = fptosi double %462 to i32, !llfi_index !1625
  %fi57 = call i32 @injectFault4(i64 1624, i32 %463, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %464 = sitofp i32 %fi57 to double, !llfi_index !1626
  %fi58 = call double @injectFault3(i64 1625, double %464, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %465 = fsub fast double %fi53, %fi58, !llfi_index !1627
  %fi59 = call double @injectFault3(i64 1626, double %465, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %466 = call double @llvm.pow.f64(double %fi59, double 2.000000e+00), !llfi_index !1628
  %467 = load double* %ye, align 8, !llfi_index !1629
  %fi60 = call double @injectFault3(i64 1628, double %467, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %468 = load i32* %2, align 4, !llfi_index !1630
  %fi61 = call i32 @injectFault4(i64 1629, i32 %468, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %469 = sitofp i32 %fi61 to double, !llfi_index !1631
  %fi62 = call double @injectFault3(i64 1630, double %469, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %470 = fdiv fast double %fi62, 2.000000e+00, !llfi_index !1632
  %fi63 = call double @injectFault3(i64 1631, double %470, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %471 = call double @roundDouble(double %fi63), !llfi_index !1633
  %472 = fptosi double %471 to i32, !llfi_index !1634
  %fi64 = call i32 @injectFault4(i64 1633, i32 %472, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %473 = sitofp i32 %fi64 to double, !llfi_index !1635
  %fi65 = call double @injectFault3(i64 1634, double %473, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %474 = fsub fast double %fi60, %fi65, !llfi_index !1636
  %fi66 = call double @injectFault3(i64 1635, double %474, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %475 = call double @llvm.pow.f64(double %fi66, double 2.000000e+00), !llfi_index !1637
  %476 = fadd fast double %466, %475, !llfi_index !1638
  %fi67 = call double @injectFault3(i64 1637, double %476, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %477 = call double @llvm.sqrt.f64(double %fi67), !llfi_index !1639
  store double %477, double* %distance, align 8, !llfi_index !1640
  %478 = load double* %distance, align 8, !llfi_index !1641
  %fi68 = call double @injectFault3(i64 1640, double %478, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %479 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), double %fi68), !llfi_index !1642
  %480 = load double** %weights, align 8, !llfi_index !1643
  %fi69 = call double* @injectFault8(i64 1642, double* %480, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %481 = getelementptr double* %fi69, i64 0, !llfi_index !1644
  %fi70 = call double* @injectFault8(i64 1643, double* %481, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %482 = load double* %fi70, align 8, !llfi_index !1645
  %fi71 = call double @injectFault3(i64 1644, double %482, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %483 = load double** %CDF, align 8, !llfi_index !1646
  %fi72 = call double* @injectFault8(i64 1645, double* %483, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %484 = getelementptr double* %fi72, i64 0, !llfi_index !1647
  %fi73 = call double* @injectFault8(i64 1646, double* %484, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi71, double* %fi73, align 8, !llfi_index !1648
  store i32 1, i32* %x, align 4, !llfi_index !1649
  br label %485, !llfi_index !1650

; <label>:485                                     ; preds = %506, %452
  %486 = load i32* %x, align 4, !llfi_index !1651
  %fi74 = call i32 @injectFault4(i64 1650, i32 %486, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %487 = load i32* %6, align 4, !llfi_index !1652
  %fi75 = call i32 @injectFault4(i64 1651, i32 %487, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %488 = icmp slt i32 %fi74, %fi75, !llfi_index !1653
  %fi76 = call i1 @injectFault5(i64 1652, i1 %488, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi76, label %489, label %509, !llfi_index !1654

; <label>:489                                     ; preds = %485
  %490 = load i32* %x, align 4, !llfi_index !1655
  %fi77 = call i32 @injectFault4(i64 1654, i32 %490, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %491 = sext i32 %fi77 to i64, !llfi_index !1656
  %fi78 = call i64 @injectFault1(i64 1655, i64 %491, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %492 = load double** %weights, align 8, !llfi_index !1657
  %fi79 = call double* @injectFault8(i64 1656, double* %492, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %493 = getelementptr double* %fi79, i64 %fi78, !llfi_index !1658
  %fi80 = call double* @injectFault8(i64 1657, double* %493, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %494 = load double* %fi80, align 8, !llfi_index !1659
  %fi81 = call double @injectFault3(i64 1658, double %494, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %495 = load i32* %x, align 4, !llfi_index !1660
  %fi82 = call i32 @injectFault4(i64 1659, i32 %495, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %496 = sub nsw i32 %fi82, 1, !llfi_index !1661
  %fi83 = call i32 @injectFault4(i64 1660, i32 %496, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %497 = sext i32 %fi83 to i64, !llfi_index !1662
  %fi84 = call i64 @injectFault1(i64 1661, i64 %497, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %498 = load double** %CDF, align 8, !llfi_index !1663
  %fi85 = call double* @injectFault8(i64 1662, double* %498, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %499 = getelementptr double* %fi85, i64 %fi84, !llfi_index !1664
  %fi86 = call double* @injectFault8(i64 1663, double* %499, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %500 = load double* %fi86, align 8, !llfi_index !1665
  %fi87 = call double @injectFault3(i64 1664, double %500, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %501 = fadd fast double %fi81, %fi87, !llfi_index !1666
  %fi88 = call double @injectFault3(i64 1665, double %501, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %502 = load i32* %x, align 4, !llfi_index !1667
  %fi89 = call i32 @injectFault4(i64 1666, i32 %502, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %503 = sext i32 %fi89 to i64, !llfi_index !1668
  %fi90 = call i64 @injectFault1(i64 1667, i64 %503, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %504 = load double** %CDF, align 8, !llfi_index !1669
  %fi91 = call double* @injectFault8(i64 1668, double* %504, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %505 = getelementptr double* %fi91, i64 %fi90, !llfi_index !1670
  %fi92 = call double* @injectFault8(i64 1669, double* %505, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi88, double* %fi92, align 8, !llfi_index !1671
  br label %506, !llfi_index !1672

; <label>:506                                     ; preds = %489
  %507 = load i32* %x, align 4, !llfi_index !1673
  %fi93 = call i32 @injectFault4(i64 1672, i32 %507, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %508 = add nsw i32 %fi93, 1, !llfi_index !1674
  %fi94 = call i32 @injectFault4(i64 1673, i32 %508, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi94, i32* %x, align 4, !llfi_index !1675
  br label %485, !llfi_index !1676

; <label>:509                                     ; preds = %485
  %510 = call i64 @get_time(), !llfi_index !1677
  store i64 %510, i64* %cum_sum, align 8, !llfi_index !1678
  %511 = load i32* %6, align 4, !llfi_index !1679
  %fi95 = call i32 @injectFault4(i64 1678, i32 %511, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %512 = sitofp i32 %fi95 to double, !llfi_index !1680
  %fi96 = call double @injectFault3(i64 1679, double %512, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %513 = fdiv fast double 1.000000e+00, %fi96, !llfi_index !1681
  %fi399 = call double @injectFault3(i64 1680, double %513, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %514 = fmul fast double %fi399, -1.000000e+00, !llfi_index !1682
  %fi400 = call double @injectFault3(i64 1681, double %514, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi400, double* %u1, align 8, !llfi_index !1683
  store i32 0, i32* %x, align 4, !llfi_index !1684
  br label %515, !llfi_index !1685

; <label>:515                                     ; preds = %531, %509
  %516 = load i32* %x, align 4, !llfi_index !1686
  %fi401 = call i32 @injectFault4(i64 1685, i32 %516, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %517 = load i32* %6, align 4, !llfi_index !1687
  %fi402 = call i32 @injectFault4(i64 1686, i32 %517, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %518 = icmp slt i32 %fi401, %fi402, !llfi_index !1688
  %fi403 = call i1 @injectFault5(i64 1687, i1 %518, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi403, label %519, label %534, !llfi_index !1689

; <label>:519                                     ; preds = %515
  %520 = load double* %u1, align 8, !llfi_index !1690
  %fi404 = call double @injectFault3(i64 1689, double %520, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %521 = load i32* %x, align 4, !llfi_index !1691
  %fi405 = call i32 @injectFault4(i64 1690, i32 %521, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %522 = sitofp i32 %fi405 to double, !llfi_index !1692
  %fi406 = call double @injectFault3(i64 1691, double %522, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %523 = load i32* %6, align 4, !llfi_index !1693
  %fi407 = call i32 @injectFault4(i64 1692, i32 %523, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %524 = sitofp i32 %fi407 to double, !llfi_index !1694
  %fi408 = call double @injectFault3(i64 1693, double %524, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %525 = fdiv fast double %fi406, %fi408, !llfi_index !1695
  %fi409 = call double @injectFault3(i64 1694, double %525, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %526 = fadd fast double %fi404, %fi409, !llfi_index !1696
  %fi410 = call double @injectFault3(i64 1695, double %526, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %527 = load i32* %x, align 4, !llfi_index !1697
  %fi411 = call i32 @injectFault4(i64 1696, i32 %527, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %528 = sext i32 %fi411 to i64, !llfi_index !1698
  %fi412 = call i64 @injectFault1(i64 1697, i64 %528, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %529 = load double** %u, align 8, !llfi_index !1699
  %fi413 = call double* @injectFault8(i64 1698, double* %529, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %530 = getelementptr double* %fi413, i64 %fi412, !llfi_index !1700
  %fi414 = call double* @injectFault8(i64 1699, double* %530, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi410, double* %fi414, align 8, !llfi_index !1701
  br label %531, !llfi_index !1702

; <label>:531                                     ; preds = %519
  %532 = load i32* %x, align 4, !llfi_index !1703
  %fi97 = call i32 @injectFault4(i64 1702, i32 %532, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %533 = add nsw i32 %fi97, 1, !llfi_index !1704
  %fi98 = call i32 @injectFault4(i64 1703, i32 %533, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi98, i32* %x, align 4, !llfi_index !1705
  br label %515, !llfi_index !1706

; <label>:534                                     ; preds = %515
  %535 = call i64 @get_time(), !llfi_index !1707
  store i64 %535, i64* %u_time, align 8, !llfi_index !1708
  store i32 0, i32* %j, align 4, !llfi_index !1709
  br label %536, !llfi_index !1710

; <label>:536                                     ; preds = %573, %534
  %537 = load i32* %j, align 4, !llfi_index !1711
  %fi99 = call i32 @injectFault4(i64 1710, i32 %537, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %538 = load i32* %6, align 4, !llfi_index !1712
  %fi100 = call i32 @injectFault4(i64 1711, i32 %538, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %539 = icmp slt i32 %fi99, %fi100, !llfi_index !1713
  %fi101 = call i1 @injectFault5(i64 1712, i1 %539, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi101, label %540, label %576, !llfi_index !1714

; <label>:540                                     ; preds = %536
  %541 = load double** %CDF, align 8, !llfi_index !1715
  %fi102 = call double* @injectFault8(i64 1714, double* %541, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %542 = load i32* %6, align 4, !llfi_index !1716
  %fi103 = call i32 @injectFault4(i64 1715, i32 %542, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %543 = load i32* %j, align 4, !llfi_index !1717
  %fi104 = call i32 @injectFault4(i64 1716, i32 %543, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %544 = sext i32 %fi104 to i64, !llfi_index !1718
  %fi105 = call i64 @injectFault1(i64 1717, i64 %544, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %545 = load double** %u, align 8, !llfi_index !1719
  %fi106 = call double* @injectFault8(i64 1718, double* %545, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %546 = getelementptr double* %fi106, i64 %fi105, !llfi_index !1720
  %fi107 = call double* @injectFault8(i64 1719, double* %546, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %547 = load double* %fi107, align 8, !llfi_index !1721
  %fi108 = call double @injectFault3(i64 1720, double %547, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %548 = call i32 @findIndex(double* %fi102, i32 %fi103, double %fi108), !llfi_index !1722
  store i32 %548, i32* %i, align 4, !llfi_index !1723
  %549 = load i32* %i, align 4, !llfi_index !1724
  %fi109 = call i32 @injectFault4(i64 1723, i32 %549, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %550 = icmp eq i32 %fi109, -1, !llfi_index !1725
  %fi110 = call i1 @injectFault5(i64 1724, i1 %550, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi110, label %551, label %554, !llfi_index !1726

; <label>:551                                     ; preds = %540
  %552 = load i32* %6, align 4, !llfi_index !1727
  %fi111 = call i32 @injectFault4(i64 1726, i32 %552, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %553 = sub nsw i32 %fi111, 1, !llfi_index !1728
  %fi112 = call i32 @injectFault4(i64 1727, i32 %553, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi112, i32* %i, align 4, !llfi_index !1729
  br label %554, !llfi_index !1730

; <label>:554                                     ; preds = %551, %540
  %555 = load i32* %i, align 4, !llfi_index !1731
  %fi113 = call i32 @injectFault4(i64 1730, i32 %555, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %556 = sext i32 %fi113 to i64, !llfi_index !1732
  %fi114 = call i64 @injectFault1(i64 1731, i64 %556, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %557 = load double** %arrayX, align 8, !llfi_index !1733
  %fi115 = call double* @injectFault8(i64 1732, double* %557, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %558 = getelementptr double* %fi115, i64 %fi114, !llfi_index !1734
  %fi116 = call double* @injectFault8(i64 1733, double* %558, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %559 = load double* %fi116, align 8, !llfi_index !1735
  %fi117 = call double @injectFault3(i64 1734, double %559, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %560 = load i32* %j, align 4, !llfi_index !1736
  %fi118 = call i32 @injectFault4(i64 1735, i32 %560, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %561 = sext i32 %fi118 to i64, !llfi_index !1737
  %fi119 = call i64 @injectFault1(i64 1736, i64 %561, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %562 = load double** %xj, align 8, !llfi_index !1738
  %fi120 = call double* @injectFault8(i64 1737, double* %562, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %563 = getelementptr double* %fi120, i64 %fi119, !llfi_index !1739
  %fi121 = call double* @injectFault8(i64 1738, double* %563, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi117, double* %fi121, align 8, !llfi_index !1740
  %564 = load i32* %i, align 4, !llfi_index !1741
  %fi122 = call i32 @injectFault4(i64 1740, i32 %564, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %565 = sext i32 %fi122 to i64, !llfi_index !1742
  %fi123 = call i64 @injectFault1(i64 1741, i64 %565, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %566 = load double** %arrayY, align 8, !llfi_index !1743
  %fi124 = call double* @injectFault8(i64 1742, double* %566, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %567 = getelementptr double* %fi124, i64 %fi123, !llfi_index !1744
  %fi125 = call double* @injectFault8(i64 1743, double* %567, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %568 = load double* %fi125, align 8, !llfi_index !1745
  %fi126 = call double @injectFault3(i64 1744, double %568, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %569 = load i32* %j, align 4, !llfi_index !1746
  %fi127 = call i32 @injectFault4(i64 1745, i32 %569, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %570 = sext i32 %fi127 to i64, !llfi_index !1747
  %fi128 = call i64 @injectFault1(i64 1746, i64 %570, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %571 = load double** %yj, align 8, !llfi_index !1748
  %fi129 = call double* @injectFault8(i64 1747, double* %571, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %572 = getelementptr double* %fi129, i64 %fi128, !llfi_index !1749
  %fi130 = call double* @injectFault8(i64 1748, double* %572, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi126, double* %fi130, align 8, !llfi_index !1750
  br label %573, !llfi_index !1751

; <label>:573                                     ; preds = %554
  %574 = load i32* %j, align 4, !llfi_index !1752
  %fi131 = call i32 @injectFault4(i64 1751, i32 %574, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %575 = add nsw i32 %fi131, 1, !llfi_index !1753
  %fi132 = call i32 @injectFault4(i64 1752, i32 %575, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi132, i32* %j, align 4, !llfi_index !1754
  br label %536, !llfi_index !1755

; <label>:576                                     ; preds = %536
  %577 = call i64 @get_time(), !llfi_index !1756
  store i64 %577, i64* %xyj_time, align 8, !llfi_index !1757
  store i32 0, i32* %x, align 4, !llfi_index !1758
  br label %578, !llfi_index !1759

; <label>:578                                     ; preds = %608, %576
  %579 = load i32* %x, align 4, !llfi_index !1760
  %fi133 = call i32 @injectFault4(i64 1759, i32 %579, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %580 = load i32* %6, align 4, !llfi_index !1761
  %fi134 = call i32 @injectFault4(i64 1760, i32 %580, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %581 = icmp slt i32 %fi133, %fi134, !llfi_index !1762
  %fi135 = call i1 @injectFault5(i64 1761, i1 %581, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi135, label %582, label %611, !llfi_index !1763

; <label>:582                                     ; preds = %578
  %583 = load i32* %x, align 4, !llfi_index !1764
  %fi136 = call i32 @injectFault4(i64 1763, i32 %583, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %584 = sext i32 %fi136 to i64, !llfi_index !1765
  %fi137 = call i64 @injectFault1(i64 1764, i64 %584, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %585 = load double** %xj, align 8, !llfi_index !1766
  %fi138 = call double* @injectFault8(i64 1765, double* %585, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %586 = getelementptr double* %fi138, i64 %fi137, !llfi_index !1767
  %fi139 = call double* @injectFault8(i64 1766, double* %586, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %587 = load double* %fi139, align 8, !llfi_index !1768
  %fi140 = call double @injectFault3(i64 1767, double %587, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %588 = load i32* %x, align 4, !llfi_index !1769
  %fi141 = call i32 @injectFault4(i64 1768, i32 %588, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %589 = sext i32 %fi141 to i64, !llfi_index !1770
  %fi142 = call i64 @injectFault1(i64 1769, i64 %589, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %590 = load double** %arrayX, align 8, !llfi_index !1771
  %fi143 = call double* @injectFault8(i64 1770, double* %590, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %591 = getelementptr double* %fi143, i64 %fi142, !llfi_index !1772
  %fi144 = call double* @injectFault8(i64 1771, double* %591, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi140, double* %fi144, align 8, !llfi_index !1773
  %592 = load i32* %x, align 4, !llfi_index !1774
  %fi145 = call i32 @injectFault4(i64 1773, i32 %592, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %593 = sext i32 %fi145 to i64, !llfi_index !1775
  %fi146 = call i64 @injectFault1(i64 1774, i64 %593, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %594 = load double** %yj, align 8, !llfi_index !1776
  %fi147 = call double* @injectFault8(i64 1775, double* %594, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %595 = getelementptr double* %fi147, i64 %fi146, !llfi_index !1777
  %fi148 = call double* @injectFault8(i64 1776, double* %595, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %596 = load double* %fi148, align 8, !llfi_index !1778
  %fi149 = call double @injectFault3(i64 1777, double %596, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %597 = load i32* %x, align 4, !llfi_index !1779
  %fi150 = call i32 @injectFault4(i64 1778, i32 %597, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %598 = sext i32 %fi150 to i64, !llfi_index !1780
  %fi151 = call i64 @injectFault1(i64 1779, i64 %598, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %599 = load double** %arrayY, align 8, !llfi_index !1781
  %fi152 = call double* @injectFault8(i64 1780, double* %599, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %600 = getelementptr double* %fi152, i64 %fi151, !llfi_index !1782
  %fi153 = call double* @injectFault8(i64 1781, double* %600, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi149, double* %fi153, align 8, !llfi_index !1783
  %601 = load i32* %6, align 4, !llfi_index !1784
  %fi154 = call i32 @injectFault4(i64 1783, i32 %601, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %602 = sitofp i32 %fi154 to double, !llfi_index !1785
  %fi155 = call double @injectFault3(i64 1784, double %602, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %603 = fdiv fast double 1.000000e+00, %fi155, !llfi_index !1786
  %fi156 = call double @injectFault3(i64 1785, double %603, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %604 = load i32* %x, align 4, !llfi_index !1787
  %fi157 = call i32 @injectFault4(i64 1786, i32 %604, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %605 = sext i32 %fi157 to i64, !llfi_index !1788
  %fi158 = call i64 @injectFault1(i64 1787, i64 %605, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %606 = load double** %weights, align 8, !llfi_index !1789
  %fi159 = call double* @injectFault8(i64 1788, double* %606, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %607 = getelementptr double* %fi159, i64 %fi158, !llfi_index !1790
  %fi160 = call double* @injectFault8(i64 1789, double* %607, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store double %fi156, double* %fi160, align 8, !llfi_index !1791
  br label %608, !llfi_index !1792

; <label>:608                                     ; preds = %582
  %609 = load i32* %x, align 4, !llfi_index !1793
  %fi161 = call i32 @injectFault4(i64 1792, i32 %609, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %610 = add nsw i32 %fi161, 1, !llfi_index !1794
  %fi162 = call i32 @injectFault4(i64 1793, i32 %610, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi162, i32* %x, align 4, !llfi_index !1795
  br label %578, !llfi_index !1796

; <label>:611                                     ; preds = %578
  %612 = call i64 @get_time(), !llfi_index !1797
  store i64 %612, i64* %reset, align 8, !llfi_index !1798
  br label %613, !llfi_index !1799

; <label>:613                                     ; preds = %611
  %614 = load i32* %k, align 4, !llfi_index !1800
  %fi163 = call i32 @injectFault4(i64 1799, i32 %614, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %615 = add nsw i32 %fi163, 1, !llfi_index !1801
  %fi164 = call i32 @injectFault4(i64 1800, i32 %615, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi164, i32* %k, align 4, !llfi_index !1802
  br label %160, !llfi_index !1803

; <label>:616                                     ; preds = %160
  %617 = load i32** %disk, align 8, !llfi_index !1804
  %fi165 = call i32* @injectFault6(i64 1803, i32* %617, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %618 = bitcast i32* %fi165 to i8*, !llfi_index !1805
  %fi166 = call i8* @injectFault7(i64 1804, i8* %618, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi166) #5, !llfi_index !1806
  %619 = load double** %objxy, align 8, !llfi_index !1807
  %fi167 = call double* @injectFault8(i64 1806, double* %619, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %620 = bitcast double* %fi167 to i8*, !llfi_index !1808
  %fi168 = call i8* @injectFault7(i64 1807, i8* %620, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi168) #5, !llfi_index !1809
  %621 = load double** %weights, align 8, !llfi_index !1810
  %fi169 = call double* @injectFault8(i64 1809, double* %621, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %622 = bitcast double* %fi169 to i8*, !llfi_index !1811
  %fi170 = call i8* @injectFault7(i64 1810, i8* %622, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi170) #5, !llfi_index !1812
  %623 = load double** %likelihood, align 8, !llfi_index !1813
  %fi171 = call double* @injectFault8(i64 1812, double* %623, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %624 = bitcast double* %fi171 to i8*, !llfi_index !1814
  %fi172 = call i8* @injectFault7(i64 1813, i8* %624, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi172) #5, !llfi_index !1815
  %625 = load double** %xj, align 8, !llfi_index !1816
  %fi173 = call double* @injectFault8(i64 1815, double* %625, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %626 = bitcast double* %fi173 to i8*, !llfi_index !1817
  %fi174 = call i8* @injectFault7(i64 1816, i8* %626, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi174) #5, !llfi_index !1818
  %627 = load double** %yj, align 8, !llfi_index !1819
  %fi175 = call double* @injectFault8(i64 1818, double* %627, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %628 = bitcast double* %fi175 to i8*, !llfi_index !1820
  %fi176 = call i8* @injectFault7(i64 1819, i8* %628, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi176) #5, !llfi_index !1821
  %629 = load double** %arrayX, align 8, !llfi_index !1822
  %fi177 = call double* @injectFault8(i64 1821, double* %629, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %630 = bitcast double* %fi177 to i8*, !llfi_index !1823
  %fi178 = call i8* @injectFault7(i64 1822, i8* %630, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi178) #5, !llfi_index !1824
  %631 = load double** %arrayY, align 8, !llfi_index !1825
  %fi179 = call double* @injectFault8(i64 1824, double* %631, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %632 = bitcast double* %fi179 to i8*, !llfi_index !1826
  %fi180 = call i8* @injectFault7(i64 1825, i8* %632, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi180) #5, !llfi_index !1827
  %633 = load double** %CDF, align 8, !llfi_index !1828
  %fi181 = call double* @injectFault8(i64 1827, double* %633, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %634 = bitcast double* %fi181 to i8*, !llfi_index !1829
  %fi182 = call i8* @injectFault7(i64 1828, i8* %634, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi182) #5, !llfi_index !1830
  %635 = load double** %u, align 8, !llfi_index !1831
  %fi183 = call double* @injectFault8(i64 1830, double* %635, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %636 = bitcast double* %fi183 to i8*, !llfi_index !1832
  %fi184 = call i8* @injectFault7(i64 1831, i8* %636, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi184) #5, !llfi_index !1833
  %637 = load i32** %ind, align 8, !llfi_index !1834
  %fi185 = call i32* @injectFault6(i64 1833, i32* %637, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %638 = bitcast i32* %fi185 to i8*, !llfi_index !1835
  %fi186 = call i8* @injectFault7(i64 1834, i8* %638, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi186) #5, !llfi_index !1836
  ret void, !llfi_index !1837
}

; Function Attrs: nounwind readnone
declare double @__exp_finite(double) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1838
  %2 = alloca i32, align 4, !llfi_index !1839
  %3 = alloca i8**, align 8, !llfi_index !1840
  %usage = alloca i8*, align 8, !llfi_index !1841
  %IszX = alloca i32, align 4, !llfi_index !1842
  %IszY = alloca i32, align 4, !llfi_index !1843
  %Nfr = alloca i32, align 4, !llfi_index !1844
  %Nparticles = alloca i32, align 4, !llfi_index !1845
  %seed = alloca i32*, align 8, !llfi_index !1846
  %i = alloca i32, align 4, !llfi_index !1847
  %I = alloca i32*, align 8, !llfi_index !1848
  %start = alloca i64, align 8, !llfi_index !1849
  %endVideoSequence = alloca i64, align 8, !llfi_index !1850
  %endParticleFilter = alloca i64, align 8, !llfi_index !1851
  store i32 0, i32* %1, !llfi_index !1852
  store i32 %argc, i32* %2, align 4, !llfi_index !1853
  store i8** %argv, i8*** %3, align 8, !llfi_index !1854
  store i8* getelementptr inbounds ([57 x i8]* @.str3, i32 0, i32 0), i8** %usage, align 8, !llfi_index !1855
  %4 = load i32* %2, align 4, !llfi_index !1856
  %fi = call i32 @injectFault4(i64 1855, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %5 = icmp ne i32 %fi, 9, !llfi_index !1857
  %fi1 = call i1 @injectFault5(i64 1856, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi1, label %6, label %9, !llfi_index !1858

; <label>:6                                       ; preds = %0
  %7 = load i8** %usage, align 8, !llfi_index !1859
  %fi2 = call i8* @injectFault7(i64 1858, i8* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %fi2), !llfi_index !1860
  store i32 0, i32* %1, !llfi_index !1861
  br label %137, !llfi_index !1862

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8, !llfi_index !1863
  %fi3 = call i8** @injectFault9(i64 1862, i8** %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %11 = getelementptr i8** %fi3, i64 1, !llfi_index !1864
  %fi4 = call i8** @injectFault9(i64 1863, i8** %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %12 = load i8** %fi4, align 8, !llfi_index !1865
  %fi5 = call i8* @injectFault7(i64 1864, i8* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %13 = call i32 @strcmp(i8* %fi5, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0)), !llfi_index !1866
  %14 = icmp ne i32 %13, 0, !llfi_index !1867
  %fi6 = call i1 @injectFault5(i64 1866, i1 %14, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi6, label %33, label %15, !llfi_index !1868

; <label>:15                                      ; preds = %9
  %16 = load i8*** %3, align 8, !llfi_index !1869
  %fi7 = call i8** @injectFault9(i64 1868, i8** %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %17 = getelementptr i8** %fi7, i64 3, !llfi_index !1870
  %fi8 = call i8** @injectFault9(i64 1869, i8** %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %18 = load i8** %fi8, align 8, !llfi_index !1871
  %fi9 = call i8* @injectFault7(i64 1870, i8* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %19 = call i32 @strcmp(i8* %fi9, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0)), !llfi_index !1872
  %20 = icmp ne i32 %19, 0, !llfi_index !1873
  %fi10 = call i1 @injectFault5(i64 1872, i1 %20, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi10, label %33, label %21, !llfi_index !1874

; <label>:21                                      ; preds = %15
  %22 = load i8*** %3, align 8, !llfi_index !1875
  %fi11 = call i8** @injectFault9(i64 1874, i8** %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %23 = getelementptr i8** %fi11, i64 5, !llfi_index !1876
  %fi12 = call i8** @injectFault9(i64 1875, i8** %23, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %24 = load i8** %fi12, align 8, !llfi_index !1877
  %fi13 = call i8* @injectFault7(i64 1876, i8* %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %25 = call i32 @strcmp(i8* %fi13, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)), !llfi_index !1878
  %26 = icmp ne i32 %25, 0, !llfi_index !1879
  %fi14 = call i1 @injectFault5(i64 1878, i1 %26, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi14, label %33, label %27, !llfi_index !1880

; <label>:27                                      ; preds = %21
  %28 = load i8*** %3, align 8, !llfi_index !1881
  %fi15 = call i8** @injectFault9(i64 1880, i8** %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %29 = getelementptr i8** %fi15, i64 7, !llfi_index !1882
  %fi16 = call i8** @injectFault9(i64 1881, i8** %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %30 = load i8** %fi16, align 8, !llfi_index !1883
  %fi17 = call i8* @injectFault7(i64 1882, i8* %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %31 = call i32 @strcmp(i8* %fi17, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0)), !llfi_index !1884
  %32 = icmp ne i32 %31, 0, !llfi_index !1885
  %fi18 = call i1 @injectFault5(i64 1884, i1 %32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi18, label %33, label %36, !llfi_index !1886

; <label>:33                                      ; preds = %27, %21, %15, %9
  %34 = load i8** %usage, align 8, !llfi_index !1887
  %fi20 = call i8* @injectFault7(i64 1886, i8* %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i8* %fi20), !llfi_index !1888
  store i32 0, i32* %1, !llfi_index !1889
  br label %137, !llfi_index !1890

; <label>:36                                      ; preds = %27
  %37 = load i8*** %3, align 8, !llfi_index !1891
  %fi21 = call i8** @injectFault9(i64 1890, i8** %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %38 = getelementptr i8** %fi21, i64 2, !llfi_index !1892
  %fi22 = call i8** @injectFault9(i64 1891, i8** %38, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %39 = load i8** %fi22, align 8, !llfi_index !1893
  %fi23 = call i8* @injectFault7(i64 1892, i8* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %40 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi23, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %IszX) #5, !llfi_index !1894
  %41 = icmp eq i32 %40, -1, !llfi_index !1895
  %fi24 = call i1 @injectFault5(i64 1894, i1 %41, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi24, label %42, label %44, !llfi_index !1896

; <label>:42                                      ; preds = %36
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str10, i32 0, i32 0)), !llfi_index !1897
  store i32 0, i32* %1, !llfi_index !1898
  br label %137, !llfi_index !1899

; <label>:44                                      ; preds = %36
  %45 = load i32* %IszX, align 4, !llfi_index !1900
  %fi25 = call i32 @injectFault4(i64 1899, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %46 = icmp sle i32 %fi25, 0, !llfi_index !1901
  %fi26 = call i1 @injectFault5(i64 1900, i1 %46, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi26, label %47, label %49, !llfi_index !1902

; <label>:47                                      ; preds = %44
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str11, i32 0, i32 0)), !llfi_index !1903
  store i32 0, i32* %1, !llfi_index !1904
  br label %137, !llfi_index !1905

; <label>:49                                      ; preds = %44
  %50 = load i8*** %3, align 8, !llfi_index !1906
  %fi27 = call i8** @injectFault9(i64 1905, i8** %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %51 = getelementptr i8** %fi27, i64 4, !llfi_index !1907
  %fi28 = call i8** @injectFault9(i64 1906, i8** %51, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %52 = load i8** %fi28, align 8, !llfi_index !1908
  %fi29 = call i8* @injectFault7(i64 1907, i8* %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi29, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %IszY) #5, !llfi_index !1909
  %54 = icmp eq i32 %53, -1, !llfi_index !1910
  %fi30 = call i1 @injectFault5(i64 1909, i1 %54, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi30, label %55, label %57, !llfi_index !1911

; <label>:55                                      ; preds = %49
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str12, i32 0, i32 0)), !llfi_index !1912
  store i32 0, i32* %1, !llfi_index !1913
  br label %137, !llfi_index !1914

; <label>:57                                      ; preds = %49
  %58 = load i32* %IszY, align 4, !llfi_index !1915
  %fi31 = call i32 @injectFault4(i64 1914, i32 %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %59 = icmp sle i32 %fi31, 0, !llfi_index !1916
  %fi32 = call i1 @injectFault5(i64 1915, i1 %59, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi32, label %60, label %62, !llfi_index !1917

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str13, i32 0, i32 0)), !llfi_index !1918
  store i32 0, i32* %1, !llfi_index !1919
  br label %137, !llfi_index !1920

; <label>:62                                      ; preds = %57
  %63 = load i8*** %3, align 8, !llfi_index !1921
  %fi33 = call i8** @injectFault9(i64 1920, i8** %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %64 = getelementptr i8** %fi33, i64 6, !llfi_index !1922
  %fi34 = call i8** @injectFault9(i64 1921, i8** %64, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %65 = load i8** %fi34, align 8, !llfi_index !1923
  %fi19 = call i8* @injectFault7(i64 1922, i8* %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %66 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi19, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %Nfr) #5, !llfi_index !1924
  %67 = icmp eq i32 %66, -1, !llfi_index !1925
  %fi38 = call i1 @injectFault5(i64 1924, i1 %67, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi38, label %68, label %70, !llfi_index !1926

; <label>:68                                      ; preds = %62
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str14, i32 0, i32 0)), !llfi_index !1927
  store i32 0, i32* %1, !llfi_index !1928
  br label %137, !llfi_index !1929

; <label>:70                                      ; preds = %62
  %71 = load i32* %Nfr, align 4, !llfi_index !1930
  %fi39 = call i32 @injectFault4(i64 1929, i32 %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %72 = icmp sle i32 %fi39, 0, !llfi_index !1931
  %fi40 = call i1 @injectFault5(i64 1930, i1 %72, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi40, label %73, label %75, !llfi_index !1932

; <label>:73                                      ; preds = %70
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str15, i32 0, i32 0)), !llfi_index !1933
  store i32 0, i32* %1, !llfi_index !1934
  br label %137, !llfi_index !1935

; <label>:75                                      ; preds = %70
  %76 = load i8*** %3, align 8, !llfi_index !1936
  %fi41 = call i8** @injectFault9(i64 1935, i8** %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %77 = getelementptr i8** %fi41, i64 8, !llfi_index !1937
  %fi42 = call i8** @injectFault9(i64 1936, i8** %77, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %78 = load i8** %fi42, align 8, !llfi_index !1938
  %fi43 = call i8* @injectFault7(i64 1937, i8* %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %79 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %fi43, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %Nparticles) #5, !llfi_index !1939
  %80 = icmp eq i32 %79, -1, !llfi_index !1940
  %fi44 = call i1 @injectFault5(i64 1939, i1 %80, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi44, label %81, label %83, !llfi_index !1941

; <label>:81                                      ; preds = %75
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str16, i32 0, i32 0)), !llfi_index !1942
  store i32 0, i32* %1, !llfi_index !1943
  br label %137, !llfi_index !1944

; <label>:83                                      ; preds = %75
  %84 = load i32* %Nparticles, align 4, !llfi_index !1945
  %fi45 = call i32 @injectFault4(i64 1944, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %85 = icmp sle i32 %fi45, 0, !llfi_index !1946
  %fi46 = call i1 @injectFault5(i64 1945, i1 %85, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi46, label %86, label %88, !llfi_index !1947

; <label>:86                                      ; preds = %83
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str17, i32 0, i32 0)), !llfi_index !1948
  store i32 0, i32* %1, !llfi_index !1949
  br label %137, !llfi_index !1950

; <label>:88                                      ; preds = %83
  %89 = load i32* %Nparticles, align 4, !llfi_index !1951
  %fi47 = call i32 @injectFault4(i64 1950, i32 %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %90 = sext i32 %fi47 to i64, !llfi_index !1952
  %fi48 = call i64 @injectFault1(i64 1951, i64 %90, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %91 = mul i64 4, %fi48, !llfi_index !1953
  %fi49 = call i64 @injectFault1(i64 1952, i64 %91, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %92 = call noalias i8* @malloc(i64 %fi49) #5, !llfi_index !1954
  %93 = bitcast i8* %92 to i32*, !llfi_index !1955
  %fi50 = call i32* @injectFault6(i64 1954, i32* %93, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32* %fi50, i32** %seed, align 8, !llfi_index !1956
  store i32 0, i32* %i, align 4, !llfi_index !1957
  br label %94, !llfi_index !1958

; <label>:94                                      ; preds = %104, %88
  %95 = load i32* %i, align 4, !llfi_index !1959
  %fi51 = call i32 @injectFault4(i64 1958, i32 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %96 = load i32* %Nparticles, align 4, !llfi_index !1960
  %fi52 = call i32 @injectFault4(i64 1959, i32 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %97 = icmp slt i32 %fi51, %fi52, !llfi_index !1961
  %fi53 = call i1 @injectFault5(i64 1960, i1 %97, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !4
  br i1 %fi53, label %98, label %107, !llfi_index !1962

; <label>:98                                      ; preds = %94
  %99 = load i32* %i, align 4, !llfi_index !1963
  %fi54 = call i32 @injectFault4(i64 1962, i32 %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %100 = load i32* %i, align 4, !llfi_index !1964
  %fi55 = call i32 @injectFault4(i64 1963, i32 %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %101 = sext i32 %fi55 to i64, !llfi_index !1965
  %fi56 = call i64 @injectFault1(i64 1964, i64 %101, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %102 = load i32** %seed, align 8, !llfi_index !1966
  %fi57 = call i32* @injectFault6(i64 1965, i32* %102, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %103 = getelementptr i32* %fi57, i64 %fi56, !llfi_index !1967
  %fi58 = call i32* @injectFault6(i64 1966, i32* %103, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi54, i32* %fi58, align 4, !llfi_index !1968
  br label %104, !llfi_index !1969

; <label>:104                                     ; preds = %98
  %105 = load i32* %i, align 4, !llfi_index !1970
  %fi59 = call i32 @injectFault4(i64 1969, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %106 = add nsw i32 %fi59, 1, !llfi_index !1971
  %fi60 = call i32 @injectFault4(i64 1970, i32 %106, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32 %fi60, i32* %i, align 4, !llfi_index !1972
  br label %94, !llfi_index !1973

; <label>:107                                     ; preds = %94
  %108 = load i32* %IszX, align 4, !llfi_index !1974
  %fi61 = call i32 @injectFault4(i64 1973, i32 %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %109 = sext i32 %fi61 to i64, !llfi_index !1975
  %fi62 = call i64 @injectFault1(i64 1974, i64 %109, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %110 = mul i64 4, %fi62, !llfi_index !1976
  %fi63 = call i64 @injectFault1(i64 1975, i64 %110, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %111 = load i32* %IszY, align 4, !llfi_index !1977
  %fi64 = call i32 @injectFault4(i64 1976, i32 %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %112 = sext i32 %fi64 to i64, !llfi_index !1978
  %fi65 = call i64 @injectFault1(i64 1977, i64 %112, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %113 = mul i64 %fi63, %fi65, !llfi_index !1979
  %fi66 = call i64 @injectFault1(i64 1978, i64 %113, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %114 = load i32* %Nfr, align 4, !llfi_index !1980
  %fi67 = call i32 @injectFault4(i64 1979, i32 %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %115 = sext i32 %fi67 to i64, !llfi_index !1981
  %fi68 = call i64 @injectFault1(i64 1980, i64 %115, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %116 = mul i64 %fi66, %fi68, !llfi_index !1982
  %fi69 = call i64 @injectFault1(i64 1981, i64 %116, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %117 = call noalias i8* @malloc(i64 %fi69) #5, !llfi_index !1983
  %118 = bitcast i8* %117 to i32*, !llfi_index !1984
  %fi70 = call i32* @injectFault6(i64 1983, i32* %118, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  store i32* %fi70, i32** %I, align 8, !llfi_index !1985
  %119 = call i64 @get_time(), !llfi_index !1986
  store i64 %119, i64* %start, align 8, !llfi_index !1987
  %120 = load i32** %I, align 8, !llfi_index !1988
  %fi71 = call i32* @injectFault6(i64 1987, i32* %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %121 = load i32* %IszX, align 4, !llfi_index !1989
  %fi72 = call i32 @injectFault4(i64 1988, i32 %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %122 = load i32* %IszY, align 4, !llfi_index !1990
  %fi73 = call i32 @injectFault4(i64 1989, i32 %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %123 = load i32* %Nfr, align 4, !llfi_index !1991
  %fi74 = call i32 @injectFault4(i64 1990, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %124 = load i32** %seed, align 8, !llfi_index !1992
  %fi75 = call i32* @injectFault6(i64 1991, i32* %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @videoSequence(i32* %fi71, i32 %fi72, i32 %fi73, i32 %fi74, i32* %fi75), !llfi_index !1993
  %125 = call i64 @get_time(), !llfi_index !1994
  store i64 %125, i64* %endVideoSequence, align 8, !llfi_index !1995
  %126 = load i32** %I, align 8, !llfi_index !1996
  %fi76 = call i32* @injectFault6(i64 1995, i32* %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %127 = load i32* %IszX, align 4, !llfi_index !1997
  %fi77 = call i32 @injectFault4(i64 1996, i32 %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %128 = load i32* %IszY, align 4, !llfi_index !1998
  %fi78 = call i32 @injectFault4(i64 1997, i32 %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %129 = load i32* %Nfr, align 4, !llfi_index !1999
  %fi35 = call i32 @injectFault4(i64 1998, i32 %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %130 = load i32** %seed, align 8, !llfi_index !2000
  %fi36 = call i32* @injectFault6(i64 1999, i32* %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %131 = load i32* %Nparticles, align 4, !llfi_index !2001
  %fi37 = call i32 @injectFault4(i64 2000, i32 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @particleFilter(i32* %fi76, i32 %fi77, i32 %fi78, i32 %fi35, i32* %fi36, i32 %fi37), !llfi_index !2002
  %132 = call i64 @get_time(), !llfi_index !2003
  store i64 %132, i64* %endParticleFilter, align 8, !llfi_index !2004
  %133 = load i32** %seed, align 8, !llfi_index !2005
  %fi79 = call i32* @injectFault6(i64 2004, i32* %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %134 = bitcast i32* %fi79 to i8*, !llfi_index !2006
  %fi80 = call i8* @injectFault7(i64 2005, i8* %134, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi80) #5, !llfi_index !2007
  %135 = load i32** %I, align 8, !llfi_index !2008
  %fi81 = call i32* @injectFault6(i64 2007, i32* %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  %136 = bitcast i32* %fi81 to i8*, !llfi_index !2009
  %fi82 = call i8* @injectFault7(i64 2008, i8* %136, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @free(i8* %fi82) #5, !llfi_index !2010
  store i32 0, i32* %1, !llfi_index !2011
  br label %137, !llfi_index !2012

; <label>:137                                     ; preds = %107, %86, %81, %73, %68, %60, %55, %47, %42, %33, %6
  %138 = load i32* %1, !llfi_index !2013
  %fi83 = call i32 @injectFault4(i64 2012, i32 %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !4
  call void @postInjections()
  ret i32 %fi83, !llfi_index !2014
}

declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

define i64* @injectFault0(i64, i64*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64*
  store i64* %1, i64** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64** %tmploc
  ret i64* %updateval
}

define i64 @injectFault1(i64, i64, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i64
  store i64 %1, i64* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i64* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i64* %tmploc
  ret i64 %updateval
}

define float @injectFault2(i64, float, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca float
  store float %1, float* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast float* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load float* %tmploc
  ret float %updateval
}

define double @injectFault3(i64, double, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double
  store double %1, double* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double* %tmploc
  ret double %updateval
}

define i32 @injectFault4(i64, i32, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32
  store i32 %1, i32* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 32, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32* %tmploc
  ret i32 %updateval
}

define i1 @injectFault5(i64, i1, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i1
  store i1 %1, i1* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i1* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 1, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i1* %tmploc
  ret i1 %updateval
}

define i32* @injectFault6(i64, i32*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32*
  store i32* %1, i32** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32** %tmploc
  ret i32* %updateval
}

define i8* @injectFault7(i64, i8*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8*
  store i8* %1, i8** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8** %tmploc
  ret i8* %updateval
}

define double* @injectFault8(i64, double*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double*
  store double* %1, double** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double** %tmploc
  ret double* %updateval
}

define i8** @injectFault9(i64, i8**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8**
  store i8** %1, i8*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8*** %tmploc
  ret i8** %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{metadata !"after"}
!5 = metadata !{i64 4}
!6 = metadata !{i64 5}
!7 = metadata !{i64 6}
!8 = metadata !{i64 7}
!9 = metadata !{i64 8}
!10 = metadata !{i64 9}
!11 = metadata !{i64 10}
!12 = metadata !{i64 11}
!13 = metadata !{i64 12}
!14 = metadata !{i64 13}
!15 = metadata !{i64 14}
!16 = metadata !{i64 15}
!17 = metadata !{i64 16}
!18 = metadata !{i64 17}
!19 = metadata !{i64 18}
!20 = metadata !{i64 19}
!21 = metadata !{i64 20}
!22 = metadata !{i64 21}
!23 = metadata !{i64 22}
!24 = metadata !{i64 23}
!25 = metadata !{i64 24}
!26 = metadata !{i64 25}
!27 = metadata !{i64 26}
!28 = metadata !{i64 27}
!29 = metadata !{i64 28}
!30 = metadata !{i64 29}
!31 = metadata !{i64 30}
!32 = metadata !{i64 31}
!33 = metadata !{i64 32}
!34 = metadata !{i64 33}
!35 = metadata !{i64 34}
!36 = metadata !{i64 35}
!37 = metadata !{i64 36}
!38 = metadata !{i64 37}
!39 = metadata !{i64 38}
!40 = metadata !{i64 39}
!41 = metadata !{i64 40}
!42 = metadata !{i64 41}
!43 = metadata !{i64 42}
!44 = metadata !{i64 43}
!45 = metadata !{i64 44}
!46 = metadata !{i64 45}
!47 = metadata !{i64 46}
!48 = metadata !{i64 47}
!49 = metadata !{i64 48}
!50 = metadata !{i64 49}
!51 = metadata !{i64 50}
!52 = metadata !{i64 51}
!53 = metadata !{i64 52}
!54 = metadata !{i64 53}
!55 = metadata !{i64 54}
!56 = metadata !{i64 55}
!57 = metadata !{i64 56}
!58 = metadata !{i64 57}
!59 = metadata !{i64 58}
!60 = metadata !{i64 59}
!61 = metadata !{i64 60}
!62 = metadata !{i64 61}
!63 = metadata !{i64 62}
!64 = metadata !{i64 63}
!65 = metadata !{i64 64}
!66 = metadata !{i64 65}
!67 = metadata !{i64 66}
!68 = metadata !{i64 67}
!69 = metadata !{i64 68}
!70 = metadata !{i64 69}
!71 = metadata !{i64 70}
!72 = metadata !{i64 71}
!73 = metadata !{i64 72}
!74 = metadata !{i64 73}
!75 = metadata !{i64 74}
!76 = metadata !{i64 75}
!77 = metadata !{i64 76}
!78 = metadata !{i64 77}
!79 = metadata !{i64 78}
!80 = metadata !{i64 79}
!81 = metadata !{i64 80}
!82 = metadata !{i64 81}
!83 = metadata !{i64 82}
!84 = metadata !{i64 83}
!85 = metadata !{i64 84}
!86 = metadata !{i64 85}
!87 = metadata !{i64 86}
!88 = metadata !{i64 87}
!89 = metadata !{i64 88}
!90 = metadata !{i64 89}
!91 = metadata !{i64 90}
!92 = metadata !{i64 91}
!93 = metadata !{i64 92}
!94 = metadata !{i64 93}
!95 = metadata !{i64 94}
!96 = metadata !{i64 95}
!97 = metadata !{i64 96}
!98 = metadata !{i64 97}
!99 = metadata !{i64 98}
!100 = metadata !{i64 99}
!101 = metadata !{i64 100}
!102 = metadata !{i64 101}
!103 = metadata !{i64 102}
!104 = metadata !{i64 103}
!105 = metadata !{i64 104}
!106 = metadata !{i64 105}
!107 = metadata !{i64 106}
!108 = metadata !{i64 107}
!109 = metadata !{i64 108}
!110 = metadata !{i64 109}
!111 = metadata !{i64 110}
!112 = metadata !{i64 111}
!113 = metadata !{i64 112}
!114 = metadata !{i64 113}
!115 = metadata !{i64 114}
!116 = metadata !{i64 115}
!117 = metadata !{i64 116}
!118 = metadata !{i64 117}
!119 = metadata !{i64 118}
!120 = metadata !{i64 119}
!121 = metadata !{i64 120}
!122 = metadata !{i64 121}
!123 = metadata !{i64 122}
!124 = metadata !{i64 123}
!125 = metadata !{i64 124}
!126 = metadata !{i64 125}
!127 = metadata !{i64 126}
!128 = metadata !{i64 127}
!129 = metadata !{i64 128}
!130 = metadata !{i64 129}
!131 = metadata !{i64 130}
!132 = metadata !{i64 131}
!133 = metadata !{i64 132}
!134 = metadata !{i64 133}
!135 = metadata !{i64 134}
!136 = metadata !{i64 135}
!137 = metadata !{i64 136}
!138 = metadata !{i64 137}
!139 = metadata !{i64 138}
!140 = metadata !{i64 139}
!141 = metadata !{i64 140}
!142 = metadata !{i64 141}
!143 = metadata !{i64 142}
!144 = metadata !{i64 143}
!145 = metadata !{i64 144}
!146 = metadata !{i64 145}
!147 = metadata !{i64 146}
!148 = metadata !{i64 147}
!149 = metadata !{i64 148}
!150 = metadata !{i64 149}
!151 = metadata !{i64 150}
!152 = metadata !{i64 151}
!153 = metadata !{i64 152}
!154 = metadata !{i64 153}
!155 = metadata !{i64 154}
!156 = metadata !{i64 155}
!157 = metadata !{i64 156}
!158 = metadata !{i64 157}
!159 = metadata !{i64 158}
!160 = metadata !{i64 159}
!161 = metadata !{i64 160}
!162 = metadata !{i64 161}
!163 = metadata !{i64 162}
!164 = metadata !{i64 163}
!165 = metadata !{i64 164}
!166 = metadata !{i64 165}
!167 = metadata !{i64 166}
!168 = metadata !{i64 167}
!169 = metadata !{i64 168}
!170 = metadata !{i64 169}
!171 = metadata !{i64 170}
!172 = metadata !{i64 171}
!173 = metadata !{i64 172}
!174 = metadata !{i64 173}
!175 = metadata !{i64 174}
!176 = metadata !{i64 175}
!177 = metadata !{i64 176}
!178 = metadata !{i64 177}
!179 = metadata !{i64 178}
!180 = metadata !{i64 179}
!181 = metadata !{i64 180}
!182 = metadata !{i64 181}
!183 = metadata !{i64 182}
!184 = metadata !{i64 183}
!185 = metadata !{i64 184}
!186 = metadata !{i64 185}
!187 = metadata !{i64 186}
!188 = metadata !{i64 187}
!189 = metadata !{i64 188}
!190 = metadata !{i64 189}
!191 = metadata !{i64 190}
!192 = metadata !{i64 191}
!193 = metadata !{i64 192}
!194 = metadata !{i64 193}
!195 = metadata !{i64 194}
!196 = metadata !{i64 195}
!197 = metadata !{i64 196}
!198 = metadata !{i64 197}
!199 = metadata !{i64 198}
!200 = metadata !{i64 199}
!201 = metadata !{i64 200}
!202 = metadata !{i64 201}
!203 = metadata !{i64 202}
!204 = metadata !{i64 203}
!205 = metadata !{i64 204}
!206 = metadata !{i64 205}
!207 = metadata !{i64 206}
!208 = metadata !{i64 207}
!209 = metadata !{i64 208}
!210 = metadata !{i64 209}
!211 = metadata !{i64 210}
!212 = metadata !{i64 211}
!213 = metadata !{i64 212}
!214 = metadata !{i64 213}
!215 = metadata !{i64 214}
!216 = metadata !{i64 215}
!217 = metadata !{i64 216}
!218 = metadata !{i64 217}
!219 = metadata !{i64 218}
!220 = metadata !{i64 219}
!221 = metadata !{i64 220}
!222 = metadata !{i64 221}
!223 = metadata !{i64 222}
!224 = metadata !{i64 223}
!225 = metadata !{i64 224}
!226 = metadata !{i64 225}
!227 = metadata !{i64 226}
!228 = metadata !{i64 227}
!229 = metadata !{i64 228}
!230 = metadata !{i64 229}
!231 = metadata !{i64 230}
!232 = metadata !{i64 231}
!233 = metadata !{i64 232}
!234 = metadata !{i64 233}
!235 = metadata !{i64 234}
!236 = metadata !{i64 235}
!237 = metadata !{i64 236}
!238 = metadata !{i64 237}
!239 = metadata !{i64 238}
!240 = metadata !{i64 239}
!241 = metadata !{i64 240}
!242 = metadata !{i64 241}
!243 = metadata !{i64 242}
!244 = metadata !{i64 243}
!245 = metadata !{i64 244}
!246 = metadata !{i64 245}
!247 = metadata !{i64 246}
!248 = metadata !{i64 247}
!249 = metadata !{i64 248}
!250 = metadata !{i64 249}
!251 = metadata !{i64 250}
!252 = metadata !{i64 251}
!253 = metadata !{i64 252}
!254 = metadata !{i64 253}
!255 = metadata !{i64 254}
!256 = metadata !{i64 255}
!257 = metadata !{i64 256}
!258 = metadata !{i64 257}
!259 = metadata !{i64 258}
!260 = metadata !{i64 259}
!261 = metadata !{i64 260}
!262 = metadata !{i64 261}
!263 = metadata !{i64 262}
!264 = metadata !{i64 263}
!265 = metadata !{i64 264}
!266 = metadata !{i64 265}
!267 = metadata !{i64 266}
!268 = metadata !{i64 267}
!269 = metadata !{i64 268}
!270 = metadata !{i64 269}
!271 = metadata !{i64 270}
!272 = metadata !{i64 271}
!273 = metadata !{i64 272}
!274 = metadata !{i64 273}
!275 = metadata !{i64 274}
!276 = metadata !{i64 275}
!277 = metadata !{i64 276}
!278 = metadata !{i64 277}
!279 = metadata !{i64 278}
!280 = metadata !{i64 279}
!281 = metadata !{i64 280}
!282 = metadata !{i64 281}
!283 = metadata !{i64 282}
!284 = metadata !{i64 283}
!285 = metadata !{i64 284}
!286 = metadata !{i64 285}
!287 = metadata !{i64 286}
!288 = metadata !{i64 287}
!289 = metadata !{i64 288}
!290 = metadata !{i64 289}
!291 = metadata !{i64 290}
!292 = metadata !{i64 291}
!293 = metadata !{i64 292}
!294 = metadata !{i64 293}
!295 = metadata !{i64 294}
!296 = metadata !{i64 295}
!297 = metadata !{i64 296}
!298 = metadata !{i64 297}
!299 = metadata !{i64 298}
!300 = metadata !{i64 299}
!301 = metadata !{i64 300}
!302 = metadata !{i64 301}
!303 = metadata !{i64 302}
!304 = metadata !{i64 303}
!305 = metadata !{i64 304}
!306 = metadata !{i64 305}
!307 = metadata !{i64 306}
!308 = metadata !{i64 307}
!309 = metadata !{i64 308}
!310 = metadata !{i64 309}
!311 = metadata !{i64 310}
!312 = metadata !{i64 311}
!313 = metadata !{i64 312}
!314 = metadata !{i64 313}
!315 = metadata !{i64 314}
!316 = metadata !{i64 315}
!317 = metadata !{i64 316}
!318 = metadata !{i64 317}
!319 = metadata !{i64 318}
!320 = metadata !{i64 319}
!321 = metadata !{i64 320}
!322 = metadata !{i64 321}
!323 = metadata !{i64 322}
!324 = metadata !{i64 323}
!325 = metadata !{i64 324}
!326 = metadata !{i64 325}
!327 = metadata !{i64 326}
!328 = metadata !{i64 327}
!329 = metadata !{i64 328}
!330 = metadata !{i64 329}
!331 = metadata !{i64 330}
!332 = metadata !{i64 331}
!333 = metadata !{i64 332}
!334 = metadata !{i64 333}
!335 = metadata !{i64 334}
!336 = metadata !{i64 335}
!337 = metadata !{i64 336}
!338 = metadata !{i64 337}
!339 = metadata !{i64 338}
!340 = metadata !{i64 339}
!341 = metadata !{i64 340}
!342 = metadata !{i64 341}
!343 = metadata !{i64 342}
!344 = metadata !{i64 343}
!345 = metadata !{i64 344}
!346 = metadata !{i64 345}
!347 = metadata !{i64 346}
!348 = metadata !{i64 347}
!349 = metadata !{i64 348}
!350 = metadata !{i64 349}
!351 = metadata !{i64 350}
!352 = metadata !{i64 351}
!353 = metadata !{i64 352}
!354 = metadata !{i64 353}
!355 = metadata !{i64 354}
!356 = metadata !{i64 355}
!357 = metadata !{i64 356}
!358 = metadata !{i64 357}
!359 = metadata !{i64 358}
!360 = metadata !{i64 359}
!361 = metadata !{i64 360}
!362 = metadata !{i64 361}
!363 = metadata !{i64 362}
!364 = metadata !{i64 363}
!365 = metadata !{i64 364}
!366 = metadata !{i64 365}
!367 = metadata !{i64 366}
!368 = metadata !{i64 367}
!369 = metadata !{i64 368}
!370 = metadata !{i64 369}
!371 = metadata !{i64 370}
!372 = metadata !{i64 371}
!373 = metadata !{i64 372}
!374 = metadata !{i64 373}
!375 = metadata !{i64 374}
!376 = metadata !{i64 375}
!377 = metadata !{i64 376}
!378 = metadata !{i64 377}
!379 = metadata !{i64 378}
!380 = metadata !{i64 379}
!381 = metadata !{i64 380}
!382 = metadata !{i64 381}
!383 = metadata !{i64 382}
!384 = metadata !{i64 383}
!385 = metadata !{i64 384}
!386 = metadata !{i64 385}
!387 = metadata !{i64 386}
!388 = metadata !{i64 387}
!389 = metadata !{i64 388}
!390 = metadata !{i64 389}
!391 = metadata !{i64 390}
!392 = metadata !{i64 391}
!393 = metadata !{i64 392}
!394 = metadata !{i64 393}
!395 = metadata !{i64 394}
!396 = metadata !{i64 395}
!397 = metadata !{i64 396}
!398 = metadata !{i64 397}
!399 = metadata !{i64 398}
!400 = metadata !{i64 399}
!401 = metadata !{i64 400}
!402 = metadata !{i64 401}
!403 = metadata !{i64 402}
!404 = metadata !{i64 403}
!405 = metadata !{i64 404}
!406 = metadata !{i64 405}
!407 = metadata !{i64 406}
!408 = metadata !{i64 407}
!409 = metadata !{i64 408}
!410 = metadata !{i64 409}
!411 = metadata !{i64 410}
!412 = metadata !{i64 411}
!413 = metadata !{i64 412}
!414 = metadata !{i64 413}
!415 = metadata !{i64 414}
!416 = metadata !{i64 415}
!417 = metadata !{i64 416}
!418 = metadata !{i64 417}
!419 = metadata !{i64 418}
!420 = metadata !{i64 419}
!421 = metadata !{i64 420}
!422 = metadata !{i64 421}
!423 = metadata !{i64 422}
!424 = metadata !{i64 423}
!425 = metadata !{i64 424}
!426 = metadata !{i64 425}
!427 = metadata !{i64 426}
!428 = metadata !{i64 427}
!429 = metadata !{i64 428}
!430 = metadata !{i64 429}
!431 = metadata !{i64 430}
!432 = metadata !{i64 431}
!433 = metadata !{i64 432}
!434 = metadata !{i64 433}
!435 = metadata !{i64 434}
!436 = metadata !{i64 435}
!437 = metadata !{i64 436}
!438 = metadata !{i64 437}
!439 = metadata !{i64 438}
!440 = metadata !{i64 439}
!441 = metadata !{i64 440}
!442 = metadata !{i64 441}
!443 = metadata !{i64 442}
!444 = metadata !{i64 443}
!445 = metadata !{i64 444}
!446 = metadata !{i64 445}
!447 = metadata !{i64 446}
!448 = metadata !{i64 447}
!449 = metadata !{i64 448}
!450 = metadata !{i64 449}
!451 = metadata !{i64 450}
!452 = metadata !{i64 451}
!453 = metadata !{i64 452}
!454 = metadata !{i64 453}
!455 = metadata !{i64 454}
!456 = metadata !{i64 455}
!457 = metadata !{i64 456}
!458 = metadata !{i64 457}
!459 = metadata !{i64 458}
!460 = metadata !{i64 459}
!461 = metadata !{i64 460}
!462 = metadata !{i64 461}
!463 = metadata !{i64 462}
!464 = metadata !{i64 463}
!465 = metadata !{i64 464}
!466 = metadata !{i64 465}
!467 = metadata !{i64 466}
!468 = metadata !{i64 467}
!469 = metadata !{i64 468}
!470 = metadata !{i64 469}
!471 = metadata !{i64 470}
!472 = metadata !{i64 471}
!473 = metadata !{i64 472}
!474 = metadata !{i64 473}
!475 = metadata !{i64 474}
!476 = metadata !{i64 475}
!477 = metadata !{i64 476}
!478 = metadata !{i64 477}
!479 = metadata !{i64 478}
!480 = metadata !{i64 479}
!481 = metadata !{i64 480}
!482 = metadata !{i64 481}
!483 = metadata !{i64 482}
!484 = metadata !{i64 483}
!485 = metadata !{i64 484}
!486 = metadata !{i64 485}
!487 = metadata !{i64 486}
!488 = metadata !{i64 487}
!489 = metadata !{i64 488}
!490 = metadata !{i64 489}
!491 = metadata !{i64 490}
!492 = metadata !{i64 491}
!493 = metadata !{i64 492}
!494 = metadata !{i64 493}
!495 = metadata !{i64 494}
!496 = metadata !{i64 495}
!497 = metadata !{i64 496}
!498 = metadata !{i64 497}
!499 = metadata !{i64 498}
!500 = metadata !{i64 499}
!501 = metadata !{i64 500}
!502 = metadata !{i64 501}
!503 = metadata !{i64 502}
!504 = metadata !{i64 503}
!505 = metadata !{i64 504}
!506 = metadata !{i64 505}
!507 = metadata !{i64 506}
!508 = metadata !{i64 507}
!509 = metadata !{i64 508}
!510 = metadata !{i64 509}
!511 = metadata !{i64 510}
!512 = metadata !{i64 511}
!513 = metadata !{i64 512}
!514 = metadata !{i64 513}
!515 = metadata !{i64 514}
!516 = metadata !{i64 515}
!517 = metadata !{i64 516}
!518 = metadata !{i64 517}
!519 = metadata !{i64 518}
!520 = metadata !{i64 519}
!521 = metadata !{i64 520}
!522 = metadata !{i64 521}
!523 = metadata !{i64 522}
!524 = metadata !{i64 523}
!525 = metadata !{i64 524}
!526 = metadata !{i64 525}
!527 = metadata !{i64 526}
!528 = metadata !{i64 527}
!529 = metadata !{i64 528}
!530 = metadata !{i64 529}
!531 = metadata !{i64 530}
!532 = metadata !{i64 531}
!533 = metadata !{i64 532}
!534 = metadata !{i64 533}
!535 = metadata !{i64 534}
!536 = metadata !{i64 535}
!537 = metadata !{i64 536}
!538 = metadata !{i64 537}
!539 = metadata !{i64 538}
!540 = metadata !{i64 539}
!541 = metadata !{i64 540}
!542 = metadata !{i64 541}
!543 = metadata !{i64 542}
!544 = metadata !{i64 543}
!545 = metadata !{i64 544}
!546 = metadata !{i64 545}
!547 = metadata !{i64 546}
!548 = metadata !{i64 547}
!549 = metadata !{i64 548}
!550 = metadata !{i64 549}
!551 = metadata !{i64 550}
!552 = metadata !{i64 551}
!553 = metadata !{i64 552}
!554 = metadata !{i64 553}
!555 = metadata !{i64 554}
!556 = metadata !{i64 555}
!557 = metadata !{i64 556}
!558 = metadata !{i64 557}
!559 = metadata !{i64 558}
!560 = metadata !{i64 559}
!561 = metadata !{i64 560}
!562 = metadata !{i64 561}
!563 = metadata !{i64 562}
!564 = metadata !{i64 563}
!565 = metadata !{i64 564}
!566 = metadata !{i64 565}
!567 = metadata !{i64 566}
!568 = metadata !{i64 567}
!569 = metadata !{i64 568}
!570 = metadata !{i64 569}
!571 = metadata !{i64 570}
!572 = metadata !{i64 571}
!573 = metadata !{i64 572}
!574 = metadata !{i64 573}
!575 = metadata !{i64 574}
!576 = metadata !{i64 575}
!577 = metadata !{i64 576}
!578 = metadata !{i64 577}
!579 = metadata !{i64 578}
!580 = metadata !{i64 579}
!581 = metadata !{i64 580}
!582 = metadata !{i64 581}
!583 = metadata !{i64 582}
!584 = metadata !{i64 583}
!585 = metadata !{i64 584}
!586 = metadata !{i64 585}
!587 = metadata !{i64 586}
!588 = metadata !{i64 587}
!589 = metadata !{i64 588}
!590 = metadata !{i64 589}
!591 = metadata !{i64 590}
!592 = metadata !{i64 591}
!593 = metadata !{i64 592}
!594 = metadata !{i64 593}
!595 = metadata !{i64 594}
!596 = metadata !{i64 595}
!597 = metadata !{i64 596}
!598 = metadata !{i64 597}
!599 = metadata !{i64 598}
!600 = metadata !{i64 599}
!601 = metadata !{i64 600}
!602 = metadata !{i64 601}
!603 = metadata !{i64 602}
!604 = metadata !{i64 603}
!605 = metadata !{i64 604}
!606 = metadata !{i64 605}
!607 = metadata !{i64 606}
!608 = metadata !{i64 607}
!609 = metadata !{i64 608}
!610 = metadata !{i64 609}
!611 = metadata !{i64 610}
!612 = metadata !{i64 611}
!613 = metadata !{i64 612}
!614 = metadata !{i64 613}
!615 = metadata !{i64 614}
!616 = metadata !{i64 615}
!617 = metadata !{i64 616}
!618 = metadata !{i64 617}
!619 = metadata !{i64 618}
!620 = metadata !{i64 619}
!621 = metadata !{i64 620}
!622 = metadata !{i64 621}
!623 = metadata !{i64 622}
!624 = metadata !{i64 623}
!625 = metadata !{i64 624}
!626 = metadata !{i64 625}
!627 = metadata !{i64 626}
!628 = metadata !{i64 627}
!629 = metadata !{i64 628}
!630 = metadata !{i64 629}
!631 = metadata !{i64 630}
!632 = metadata !{i64 631}
!633 = metadata !{i64 632}
!634 = metadata !{i64 633}
!635 = metadata !{i64 634}
!636 = metadata !{i64 635}
!637 = metadata !{i64 636}
!638 = metadata !{i64 637}
!639 = metadata !{i64 638}
!640 = metadata !{i64 639}
!641 = metadata !{i64 640}
!642 = metadata !{i64 641}
!643 = metadata !{i64 642}
!644 = metadata !{i64 643}
!645 = metadata !{i64 644}
!646 = metadata !{i64 645}
!647 = metadata !{i64 646}
!648 = metadata !{i64 647}
!649 = metadata !{i64 648}
!650 = metadata !{i64 649}
!651 = metadata !{i64 650}
!652 = metadata !{i64 651}
!653 = metadata !{i64 652}
!654 = metadata !{i64 653}
!655 = metadata !{i64 654}
!656 = metadata !{i64 655}
!657 = metadata !{i64 656}
!658 = metadata !{i64 657}
!659 = metadata !{i64 658}
!660 = metadata !{i64 659}
!661 = metadata !{i64 660}
!662 = metadata !{i64 661}
!663 = metadata !{i64 662}
!664 = metadata !{i64 663}
!665 = metadata !{i64 664}
!666 = metadata !{i64 665}
!667 = metadata !{i64 666}
!668 = metadata !{i64 667}
!669 = metadata !{i64 668}
!670 = metadata !{i64 669}
!671 = metadata !{i64 670}
!672 = metadata !{i64 671}
!673 = metadata !{i64 672}
!674 = metadata !{i64 673}
!675 = metadata !{i64 674}
!676 = metadata !{i64 675}
!677 = metadata !{i64 676}
!678 = metadata !{i64 677}
!679 = metadata !{i64 678}
!680 = metadata !{i64 679}
!681 = metadata !{i64 680}
!682 = metadata !{i64 681}
!683 = metadata !{i64 682}
!684 = metadata !{i64 683}
!685 = metadata !{i64 684}
!686 = metadata !{i64 685}
!687 = metadata !{i64 686}
!688 = metadata !{i64 687}
!689 = metadata !{i64 688}
!690 = metadata !{i64 689}
!691 = metadata !{i64 690}
!692 = metadata !{i64 691}
!693 = metadata !{i64 692}
!694 = metadata !{i64 693}
!695 = metadata !{i64 694}
!696 = metadata !{i64 695}
!697 = metadata !{i64 696}
!698 = metadata !{i64 697}
!699 = metadata !{i64 698}
!700 = metadata !{i64 699}
!701 = metadata !{i64 700}
!702 = metadata !{i64 701}
!703 = metadata !{i64 702}
!704 = metadata !{i64 703}
!705 = metadata !{i64 704}
!706 = metadata !{i64 705}
!707 = metadata !{i64 706}
!708 = metadata !{i64 707}
!709 = metadata !{i64 708}
!710 = metadata !{i64 709}
!711 = metadata !{i64 710}
!712 = metadata !{i64 711}
!713 = metadata !{i64 712}
!714 = metadata !{i64 713}
!715 = metadata !{i64 714}
!716 = metadata !{i64 715}
!717 = metadata !{i64 716}
!718 = metadata !{i64 717}
!719 = metadata !{i64 718}
!720 = metadata !{i64 719}
!721 = metadata !{i64 720}
!722 = metadata !{i64 721}
!723 = metadata !{i64 722}
!724 = metadata !{i64 723}
!725 = metadata !{i64 724}
!726 = metadata !{i64 725}
!727 = metadata !{i64 726}
!728 = metadata !{i64 727}
!729 = metadata !{i64 728}
!730 = metadata !{i64 729}
!731 = metadata !{i64 730}
!732 = metadata !{i64 731}
!733 = metadata !{i64 732}
!734 = metadata !{i64 733}
!735 = metadata !{i64 734}
!736 = metadata !{i64 735}
!737 = metadata !{i64 736}
!738 = metadata !{i64 737}
!739 = metadata !{i64 738}
!740 = metadata !{i64 739}
!741 = metadata !{i64 740}
!742 = metadata !{i64 741}
!743 = metadata !{i64 742}
!744 = metadata !{i64 743}
!745 = metadata !{i64 744}
!746 = metadata !{i64 745}
!747 = metadata !{i64 746}
!748 = metadata !{i64 747}
!749 = metadata !{i64 748}
!750 = metadata !{i64 749}
!751 = metadata !{i64 750}
!752 = metadata !{i64 751}
!753 = metadata !{i64 752}
!754 = metadata !{i64 753}
!755 = metadata !{i64 754}
!756 = metadata !{i64 755}
!757 = metadata !{i64 756}
!758 = metadata !{i64 757}
!759 = metadata !{i64 758}
!760 = metadata !{i64 759}
!761 = metadata !{i64 760}
!762 = metadata !{i64 761}
!763 = metadata !{i64 762}
!764 = metadata !{i64 763}
!765 = metadata !{i64 764}
!766 = metadata !{i64 765}
!767 = metadata !{i64 766}
!768 = metadata !{i64 767}
!769 = metadata !{i64 768}
!770 = metadata !{i64 769}
!771 = metadata !{i64 770}
!772 = metadata !{i64 771}
!773 = metadata !{i64 772}
!774 = metadata !{i64 773}
!775 = metadata !{i64 774}
!776 = metadata !{i64 775}
!777 = metadata !{i64 776}
!778 = metadata !{i64 777}
!779 = metadata !{i64 778}
!780 = metadata !{i64 779}
!781 = metadata !{i64 780}
!782 = metadata !{i64 781}
!783 = metadata !{i64 782}
!784 = metadata !{i64 783}
!785 = metadata !{i64 784}
!786 = metadata !{i64 785}
!787 = metadata !{i64 786}
!788 = metadata !{i64 787}
!789 = metadata !{i64 788}
!790 = metadata !{i64 789}
!791 = metadata !{i64 790}
!792 = metadata !{i64 791}
!793 = metadata !{i64 792}
!794 = metadata !{i64 793}
!795 = metadata !{i64 794}
!796 = metadata !{i64 795}
!797 = metadata !{i64 796}
!798 = metadata !{i64 797}
!799 = metadata !{i64 798}
!800 = metadata !{i64 799}
!801 = metadata !{i64 800}
!802 = metadata !{i64 801}
!803 = metadata !{i64 802}
!804 = metadata !{i64 803}
!805 = metadata !{i64 804}
!806 = metadata !{i64 805}
!807 = metadata !{i64 806}
!808 = metadata !{i64 807}
!809 = metadata !{i64 808}
!810 = metadata !{i64 809}
!811 = metadata !{i64 810}
!812 = metadata !{i64 811}
!813 = metadata !{i64 812}
!814 = metadata !{i64 813}
!815 = metadata !{i64 814}
!816 = metadata !{i64 815}
!817 = metadata !{i64 816}
!818 = metadata !{i64 817}
!819 = metadata !{i64 818}
!820 = metadata !{i64 819}
!821 = metadata !{i64 820}
!822 = metadata !{i64 821}
!823 = metadata !{i64 822}
!824 = metadata !{i64 823}
!825 = metadata !{i64 824}
!826 = metadata !{i64 825}
!827 = metadata !{i64 826}
!828 = metadata !{i64 827}
!829 = metadata !{i64 828}
!830 = metadata !{i64 829}
!831 = metadata !{i64 830}
!832 = metadata !{i64 831}
!833 = metadata !{i64 832}
!834 = metadata !{i64 833}
!835 = metadata !{i64 834}
!836 = metadata !{i64 835}
!837 = metadata !{i64 836}
!838 = metadata !{i64 837}
!839 = metadata !{i64 838}
!840 = metadata !{i64 839}
!841 = metadata !{i64 840}
!842 = metadata !{i64 841}
!843 = metadata !{i64 842}
!844 = metadata !{i64 843}
!845 = metadata !{i64 844}
!846 = metadata !{i64 845}
!847 = metadata !{i64 846}
!848 = metadata !{i64 847}
!849 = metadata !{i64 848}
!850 = metadata !{i64 849}
!851 = metadata !{i64 850}
!852 = metadata !{i64 851}
!853 = metadata !{i64 852}
!854 = metadata !{i64 853}
!855 = metadata !{i64 854}
!856 = metadata !{i64 855}
!857 = metadata !{i64 856}
!858 = metadata !{i64 857}
!859 = metadata !{i64 858}
!860 = metadata !{i64 859}
!861 = metadata !{i64 860}
!862 = metadata !{i64 861}
!863 = metadata !{i64 862}
!864 = metadata !{i64 863}
!865 = metadata !{i64 864}
!866 = metadata !{i64 865}
!867 = metadata !{i64 866}
!868 = metadata !{i64 867}
!869 = metadata !{i64 868}
!870 = metadata !{i64 869}
!871 = metadata !{i64 870}
!872 = metadata !{i64 871}
!873 = metadata !{i64 872}
!874 = metadata !{i64 873}
!875 = metadata !{i64 874}
!876 = metadata !{i64 875}
!877 = metadata !{i64 876}
!878 = metadata !{i64 877}
!879 = metadata !{i64 878}
!880 = metadata !{i64 879}
!881 = metadata !{i64 880}
!882 = metadata !{i64 881}
!883 = metadata !{i64 882}
!884 = metadata !{i64 883}
!885 = metadata !{i64 884}
!886 = metadata !{i64 885}
!887 = metadata !{i64 886}
!888 = metadata !{i64 887}
!889 = metadata !{i64 888}
!890 = metadata !{i64 889}
!891 = metadata !{i64 890}
!892 = metadata !{i64 891}
!893 = metadata !{i64 892}
!894 = metadata !{i64 893}
!895 = metadata !{i64 894}
!896 = metadata !{i64 895}
!897 = metadata !{i64 896}
!898 = metadata !{i64 897}
!899 = metadata !{i64 898}
!900 = metadata !{i64 899}
!901 = metadata !{i64 900}
!902 = metadata !{i64 901}
!903 = metadata !{i64 902}
!904 = metadata !{i64 903}
!905 = metadata !{i64 904}
!906 = metadata !{i64 905}
!907 = metadata !{i64 906}
!908 = metadata !{i64 907}
!909 = metadata !{i64 908}
!910 = metadata !{i64 909}
!911 = metadata !{i64 910}
!912 = metadata !{i64 911}
!913 = metadata !{i64 912}
!914 = metadata !{i64 913}
!915 = metadata !{i64 914}
!916 = metadata !{i64 915}
!917 = metadata !{i64 916}
!918 = metadata !{i64 917}
!919 = metadata !{i64 918}
!920 = metadata !{i64 919}
!921 = metadata !{i64 920}
!922 = metadata !{i64 921}
!923 = metadata !{i64 922}
!924 = metadata !{i64 923}
!925 = metadata !{i64 924}
!926 = metadata !{i64 925}
!927 = metadata !{i64 926}
!928 = metadata !{i64 927}
!929 = metadata !{i64 928}
!930 = metadata !{i64 929}
!931 = metadata !{i64 930}
!932 = metadata !{i64 931}
!933 = metadata !{i64 932}
!934 = metadata !{i64 933}
!935 = metadata !{i64 934}
!936 = metadata !{i64 935}
!937 = metadata !{i64 936}
!938 = metadata !{i64 937}
!939 = metadata !{i64 938}
!940 = metadata !{i64 939}
!941 = metadata !{i64 940}
!942 = metadata !{i64 941}
!943 = metadata !{i64 942}
!944 = metadata !{i64 943}
!945 = metadata !{i64 944}
!946 = metadata !{i64 945}
!947 = metadata !{i64 946}
!948 = metadata !{i64 947}
!949 = metadata !{i64 948}
!950 = metadata !{i64 949}
!951 = metadata !{i64 950}
!952 = metadata !{i64 951}
!953 = metadata !{i64 952}
!954 = metadata !{i64 953}
!955 = metadata !{i64 954}
!956 = metadata !{i64 955}
!957 = metadata !{i64 956}
!958 = metadata !{i64 957}
!959 = metadata !{i64 958}
!960 = metadata !{i64 959}
!961 = metadata !{i64 960}
!962 = metadata !{i64 961}
!963 = metadata !{i64 962}
!964 = metadata !{i64 963}
!965 = metadata !{i64 964}
!966 = metadata !{i64 965}
!967 = metadata !{i64 966}
!968 = metadata !{i64 967}
!969 = metadata !{i64 968}
!970 = metadata !{i64 969}
!971 = metadata !{i64 970}
!972 = metadata !{i64 971}
!973 = metadata !{i64 972}
!974 = metadata !{i64 973}
!975 = metadata !{i64 974}
!976 = metadata !{i64 975}
!977 = metadata !{i64 976}
!978 = metadata !{i64 977}
!979 = metadata !{i64 978}
!980 = metadata !{i64 979}
!981 = metadata !{i64 980}
!982 = metadata !{i64 981}
!983 = metadata !{i64 982}
!984 = metadata !{i64 983}
!985 = metadata !{i64 984}
!986 = metadata !{i64 985}
!987 = metadata !{i64 986}
!988 = metadata !{i64 987}
!989 = metadata !{i64 988}
!990 = metadata !{i64 989}
!991 = metadata !{i64 990}
!992 = metadata !{i64 991}
!993 = metadata !{i64 992}
!994 = metadata !{i64 993}
!995 = metadata !{i64 994}
!996 = metadata !{i64 995}
!997 = metadata !{i64 996}
!998 = metadata !{i64 997}
!999 = metadata !{i64 998}
!1000 = metadata !{i64 999}
!1001 = metadata !{i64 1000}
!1002 = metadata !{i64 1001}
!1003 = metadata !{i64 1002}
!1004 = metadata !{i64 1003}
!1005 = metadata !{i64 1004}
!1006 = metadata !{i64 1005}
!1007 = metadata !{i64 1006}
!1008 = metadata !{i64 1007}
!1009 = metadata !{i64 1008}
!1010 = metadata !{i64 1009}
!1011 = metadata !{i64 1010}
!1012 = metadata !{i64 1011}
!1013 = metadata !{i64 1012}
!1014 = metadata !{i64 1013}
!1015 = metadata !{i64 1014}
!1016 = metadata !{i64 1015}
!1017 = metadata !{i64 1016}
!1018 = metadata !{i64 1017}
!1019 = metadata !{i64 1018}
!1020 = metadata !{i64 1019}
!1021 = metadata !{i64 1020}
!1022 = metadata !{i64 1021}
!1023 = metadata !{i64 1022}
!1024 = metadata !{i64 1023}
!1025 = metadata !{i64 1024}
!1026 = metadata !{i64 1025}
!1027 = metadata !{i64 1026}
!1028 = metadata !{i64 1027}
!1029 = metadata !{i64 1028}
!1030 = metadata !{i64 1029}
!1031 = metadata !{i64 1030}
!1032 = metadata !{i64 1031}
!1033 = metadata !{i64 1032}
!1034 = metadata !{i64 1033}
!1035 = metadata !{i64 1034}
!1036 = metadata !{i64 1035}
!1037 = metadata !{i64 1036}
!1038 = metadata !{i64 1037}
!1039 = metadata !{i64 1038}
!1040 = metadata !{i64 1039}
!1041 = metadata !{i64 1040}
!1042 = metadata !{i64 1041}
!1043 = metadata !{i64 1042}
!1044 = metadata !{i64 1043}
!1045 = metadata !{i64 1044}
!1046 = metadata !{i64 1045}
!1047 = metadata !{i64 1046}
!1048 = metadata !{i64 1047}
!1049 = metadata !{i64 1048}
!1050 = metadata !{i64 1049}
!1051 = metadata !{i64 1050}
!1052 = metadata !{i64 1051}
!1053 = metadata !{i64 1052}
!1054 = metadata !{i64 1053}
!1055 = metadata !{i64 1054}
!1056 = metadata !{i64 1055}
!1057 = metadata !{i64 1056}
!1058 = metadata !{i64 1057}
!1059 = metadata !{i64 1058}
!1060 = metadata !{i64 1059}
!1061 = metadata !{i64 1060}
!1062 = metadata !{i64 1061}
!1063 = metadata !{i64 1062}
!1064 = metadata !{i64 1063}
!1065 = metadata !{i64 1064}
!1066 = metadata !{i64 1065}
!1067 = metadata !{i64 1066}
!1068 = metadata !{i64 1067}
!1069 = metadata !{i64 1068}
!1070 = metadata !{i64 1069}
!1071 = metadata !{i64 1070}
!1072 = metadata !{i64 1071}
!1073 = metadata !{i64 1072}
!1074 = metadata !{i64 1073}
!1075 = metadata !{i64 1074}
!1076 = metadata !{i64 1075}
!1077 = metadata !{i64 1076}
!1078 = metadata !{i64 1077}
!1079 = metadata !{i64 1078}
!1080 = metadata !{i64 1079}
!1081 = metadata !{i64 1080}
!1082 = metadata !{i64 1081}
!1083 = metadata !{i64 1082}
!1084 = metadata !{i64 1083}
!1085 = metadata !{i64 1084}
!1086 = metadata !{i64 1085}
!1087 = metadata !{i64 1086}
!1088 = metadata !{i64 1087}
!1089 = metadata !{i64 1088}
!1090 = metadata !{i64 1089}
!1091 = metadata !{i64 1090}
!1092 = metadata !{i64 1091}
!1093 = metadata !{i64 1092}
!1094 = metadata !{i64 1093}
!1095 = metadata !{i64 1094}
!1096 = metadata !{i64 1095}
!1097 = metadata !{i64 1096}
!1098 = metadata !{i64 1097}
!1099 = metadata !{i64 1098}
!1100 = metadata !{i64 1099}
!1101 = metadata !{i64 1100}
!1102 = metadata !{i64 1101}
!1103 = metadata !{i64 1102}
!1104 = metadata !{i64 1103}
!1105 = metadata !{i64 1104}
!1106 = metadata !{i64 1105}
!1107 = metadata !{i64 1106}
!1108 = metadata !{i64 1107}
!1109 = metadata !{i64 1108}
!1110 = metadata !{i64 1109}
!1111 = metadata !{i64 1110}
!1112 = metadata !{i64 1111}
!1113 = metadata !{i64 1112}
!1114 = metadata !{i64 1113}
!1115 = metadata !{i64 1114}
!1116 = metadata !{i64 1115}
!1117 = metadata !{i64 1116}
!1118 = metadata !{i64 1117}
!1119 = metadata !{i64 1118}
!1120 = metadata !{i64 1119}
!1121 = metadata !{i64 1120}
!1122 = metadata !{i64 1121}
!1123 = metadata !{i64 1122}
!1124 = metadata !{i64 1123}
!1125 = metadata !{i64 1124}
!1126 = metadata !{i64 1125}
!1127 = metadata !{i64 1126}
!1128 = metadata !{i64 1127}
!1129 = metadata !{i64 1128}
!1130 = metadata !{i64 1129}
!1131 = metadata !{i64 1130}
!1132 = metadata !{i64 1131}
!1133 = metadata !{i64 1132}
!1134 = metadata !{i64 1133}
!1135 = metadata !{i64 1134}
!1136 = metadata !{i64 1135}
!1137 = metadata !{i64 1136}
!1138 = metadata !{i64 1137}
!1139 = metadata !{i64 1138}
!1140 = metadata !{i64 1139}
!1141 = metadata !{i64 1140}
!1142 = metadata !{i64 1141}
!1143 = metadata !{i64 1142}
!1144 = metadata !{i64 1143}
!1145 = metadata !{i64 1144}
!1146 = metadata !{i64 1145}
!1147 = metadata !{i64 1146}
!1148 = metadata !{i64 1147}
!1149 = metadata !{i64 1148}
!1150 = metadata !{i64 1149}
!1151 = metadata !{i64 1150}
!1152 = metadata !{i64 1151}
!1153 = metadata !{i64 1152}
!1154 = metadata !{i64 1153}
!1155 = metadata !{i64 1154}
!1156 = metadata !{i64 1155}
!1157 = metadata !{i64 1156}
!1158 = metadata !{i64 1157}
!1159 = metadata !{i64 1158}
!1160 = metadata !{i64 1159}
!1161 = metadata !{i64 1160}
!1162 = metadata !{i64 1161}
!1163 = metadata !{i64 1162}
!1164 = metadata !{i64 1163}
!1165 = metadata !{i64 1164}
!1166 = metadata !{i64 1165}
!1167 = metadata !{i64 1166}
!1168 = metadata !{i64 1167}
!1169 = metadata !{i64 1168}
!1170 = metadata !{i64 1169}
!1171 = metadata !{i64 1170}
!1172 = metadata !{i64 1171}
!1173 = metadata !{i64 1172}
!1174 = metadata !{i64 1173}
!1175 = metadata !{i64 1174}
!1176 = metadata !{i64 1175}
!1177 = metadata !{i64 1176}
!1178 = metadata !{i64 1177}
!1179 = metadata !{i64 1178}
!1180 = metadata !{i64 1179}
!1181 = metadata !{i64 1180}
!1182 = metadata !{i64 1181}
!1183 = metadata !{i64 1182}
!1184 = metadata !{i64 1183}
!1185 = metadata !{i64 1184}
!1186 = metadata !{i64 1185}
!1187 = metadata !{i64 1186}
!1188 = metadata !{i64 1187}
!1189 = metadata !{i64 1188}
!1190 = metadata !{i64 1189}
!1191 = metadata !{i64 1190}
!1192 = metadata !{i64 1191}
!1193 = metadata !{i64 1192}
!1194 = metadata !{i64 1193}
!1195 = metadata !{i64 1194}
!1196 = metadata !{i64 1195}
!1197 = metadata !{i64 1196}
!1198 = metadata !{i64 1197}
!1199 = metadata !{i64 1198}
!1200 = metadata !{i64 1199}
!1201 = metadata !{i64 1200}
!1202 = metadata !{i64 1201}
!1203 = metadata !{i64 1202}
!1204 = metadata !{i64 1203}
!1205 = metadata !{i64 1204}
!1206 = metadata !{i64 1205}
!1207 = metadata !{i64 1206}
!1208 = metadata !{i64 1207}
!1209 = metadata !{i64 1208}
!1210 = metadata !{i64 1209}
!1211 = metadata !{i64 1210}
!1212 = metadata !{i64 1211}
!1213 = metadata !{i64 1212}
!1214 = metadata !{i64 1213}
!1215 = metadata !{i64 1214}
!1216 = metadata !{i64 1215}
!1217 = metadata !{i64 1216}
!1218 = metadata !{i64 1217}
!1219 = metadata !{i64 1218}
!1220 = metadata !{i64 1219}
!1221 = metadata !{i64 1220}
!1222 = metadata !{i64 1221}
!1223 = metadata !{i64 1222}
!1224 = metadata !{i64 1223}
!1225 = metadata !{i64 1224}
!1226 = metadata !{i64 1225}
!1227 = metadata !{i64 1226}
!1228 = metadata !{i64 1227}
!1229 = metadata !{i64 1228}
!1230 = metadata !{i64 1229}
!1231 = metadata !{i64 1230}
!1232 = metadata !{i64 1231}
!1233 = metadata !{i64 1232}
!1234 = metadata !{i64 1233}
!1235 = metadata !{i64 1234}
!1236 = metadata !{i64 1235}
!1237 = metadata !{i64 1236}
!1238 = metadata !{i64 1237}
!1239 = metadata !{i64 1238}
!1240 = metadata !{i64 1239}
!1241 = metadata !{i64 1240}
!1242 = metadata !{i64 1241}
!1243 = metadata !{i64 1242}
!1244 = metadata !{i64 1243}
!1245 = metadata !{i64 1244}
!1246 = metadata !{i64 1245}
!1247 = metadata !{i64 1246}
!1248 = metadata !{i64 1247}
!1249 = metadata !{i64 1248}
!1250 = metadata !{i64 1249}
!1251 = metadata !{i64 1250}
!1252 = metadata !{i64 1251}
!1253 = metadata !{i64 1252}
!1254 = metadata !{i64 1253}
!1255 = metadata !{i64 1254}
!1256 = metadata !{i64 1255}
!1257 = metadata !{i64 1256}
!1258 = metadata !{i64 1257}
!1259 = metadata !{i64 1258}
!1260 = metadata !{i64 1259}
!1261 = metadata !{i64 1260}
!1262 = metadata !{i64 1261}
!1263 = metadata !{i64 1262}
!1264 = metadata !{i64 1263}
!1265 = metadata !{i64 1264}
!1266 = metadata !{i64 1265}
!1267 = metadata !{i64 1266}
!1268 = metadata !{i64 1267}
!1269 = metadata !{i64 1268}
!1270 = metadata !{i64 1269}
!1271 = metadata !{i64 1270}
!1272 = metadata !{i64 1271}
!1273 = metadata !{i64 1272}
!1274 = metadata !{i64 1273}
!1275 = metadata !{i64 1274}
!1276 = metadata !{i64 1275}
!1277 = metadata !{i64 1276}
!1278 = metadata !{i64 1277}
!1279 = metadata !{i64 1278}
!1280 = metadata !{i64 1279}
!1281 = metadata !{i64 1280}
!1282 = metadata !{i64 1281}
!1283 = metadata !{i64 1282}
!1284 = metadata !{i64 1283}
!1285 = metadata !{i64 1284}
!1286 = metadata !{i64 1285}
!1287 = metadata !{i64 1286}
!1288 = metadata !{i64 1287}
!1289 = metadata !{i64 1288}
!1290 = metadata !{i64 1289}
!1291 = metadata !{i64 1290}
!1292 = metadata !{i64 1291}
!1293 = metadata !{i64 1292}
!1294 = metadata !{i64 1293}
!1295 = metadata !{i64 1294}
!1296 = metadata !{i64 1295}
!1297 = metadata !{i64 1296}
!1298 = metadata !{i64 1297}
!1299 = metadata !{i64 1298}
!1300 = metadata !{i64 1299}
!1301 = metadata !{i64 1300}
!1302 = metadata !{i64 1301}
!1303 = metadata !{i64 1302}
!1304 = metadata !{i64 1303}
!1305 = metadata !{i64 1304}
!1306 = metadata !{i64 1305}
!1307 = metadata !{i64 1306}
!1308 = metadata !{i64 1307}
!1309 = metadata !{i64 1308}
!1310 = metadata !{i64 1309}
!1311 = metadata !{i64 1310}
!1312 = metadata !{i64 1311}
!1313 = metadata !{i64 1312}
!1314 = metadata !{i64 1313}
!1315 = metadata !{i64 1314}
!1316 = metadata !{i64 1315}
!1317 = metadata !{i64 1316}
!1318 = metadata !{i64 1317}
!1319 = metadata !{i64 1318}
!1320 = metadata !{i64 1319}
!1321 = metadata !{i64 1320}
!1322 = metadata !{i64 1321}
!1323 = metadata !{i64 1322}
!1324 = metadata !{i64 1323}
!1325 = metadata !{i64 1324}
!1326 = metadata !{i64 1325}
!1327 = metadata !{i64 1326}
!1328 = metadata !{i64 1327}
!1329 = metadata !{i64 1328}
!1330 = metadata !{i64 1329}
!1331 = metadata !{i64 1330}
!1332 = metadata !{i64 1331}
!1333 = metadata !{i64 1332}
!1334 = metadata !{i64 1333}
!1335 = metadata !{i64 1334}
!1336 = metadata !{i64 1335}
!1337 = metadata !{i64 1336}
!1338 = metadata !{i64 1337}
!1339 = metadata !{i64 1338}
!1340 = metadata !{i64 1339}
!1341 = metadata !{i64 1340}
!1342 = metadata !{i64 1341}
!1343 = metadata !{i64 1342}
!1344 = metadata !{i64 1343}
!1345 = metadata !{i64 1344}
!1346 = metadata !{i64 1345}
!1347 = metadata !{i64 1346}
!1348 = metadata !{i64 1347}
!1349 = metadata !{i64 1348}
!1350 = metadata !{i64 1349}
!1351 = metadata !{i64 1350}
!1352 = metadata !{i64 1351}
!1353 = metadata !{i64 1352}
!1354 = metadata !{i64 1353}
!1355 = metadata !{i64 1354}
!1356 = metadata !{i64 1355}
!1357 = metadata !{i64 1356}
!1358 = metadata !{i64 1357}
!1359 = metadata !{i64 1358}
!1360 = metadata !{i64 1359}
!1361 = metadata !{i64 1360}
!1362 = metadata !{i64 1361}
!1363 = metadata !{i64 1362}
!1364 = metadata !{i64 1363}
!1365 = metadata !{i64 1364}
!1366 = metadata !{i64 1365}
!1367 = metadata !{i64 1366}
!1368 = metadata !{i64 1367}
!1369 = metadata !{i64 1368}
!1370 = metadata !{i64 1369}
!1371 = metadata !{i64 1370}
!1372 = metadata !{i64 1371}
!1373 = metadata !{i64 1372}
!1374 = metadata !{i64 1373}
!1375 = metadata !{i64 1374}
!1376 = metadata !{i64 1375}
!1377 = metadata !{i64 1376}
!1378 = metadata !{i64 1377}
!1379 = metadata !{i64 1378}
!1380 = metadata !{i64 1379}
!1381 = metadata !{i64 1380}
!1382 = metadata !{i64 1381}
!1383 = metadata !{i64 1382}
!1384 = metadata !{i64 1383}
!1385 = metadata !{i64 1384}
!1386 = metadata !{i64 1385}
!1387 = metadata !{i64 1386}
!1388 = metadata !{i64 1387}
!1389 = metadata !{i64 1388}
!1390 = metadata !{i64 1389}
!1391 = metadata !{i64 1390}
!1392 = metadata !{i64 1391}
!1393 = metadata !{i64 1392}
!1394 = metadata !{i64 1393}
!1395 = metadata !{i64 1394}
!1396 = metadata !{i64 1395}
!1397 = metadata !{i64 1396}
!1398 = metadata !{i64 1397}
!1399 = metadata !{i64 1398}
!1400 = metadata !{i64 1399}
!1401 = metadata !{i64 1400}
!1402 = metadata !{i64 1401}
!1403 = metadata !{i64 1402}
!1404 = metadata !{i64 1403}
!1405 = metadata !{i64 1404}
!1406 = metadata !{i64 1405}
!1407 = metadata !{i64 1406}
!1408 = metadata !{i64 1407}
!1409 = metadata !{i64 1408}
!1410 = metadata !{i64 1409}
!1411 = metadata !{i64 1410}
!1412 = metadata !{i64 1411}
!1413 = metadata !{i64 1412}
!1414 = metadata !{i64 1413}
!1415 = metadata !{i64 1414}
!1416 = metadata !{i64 1415}
!1417 = metadata !{i64 1416}
!1418 = metadata !{i64 1417}
!1419 = metadata !{i64 1418}
!1420 = metadata !{i64 1419}
!1421 = metadata !{i64 1420}
!1422 = metadata !{i64 1421}
!1423 = metadata !{i64 1422}
!1424 = metadata !{i64 1423}
!1425 = metadata !{i64 1424}
!1426 = metadata !{i64 1425}
!1427 = metadata !{i64 1426}
!1428 = metadata !{i64 1427}
!1429 = metadata !{i64 1428}
!1430 = metadata !{i64 1429}
!1431 = metadata !{i64 1430}
!1432 = metadata !{i64 1431}
!1433 = metadata !{i64 1432}
!1434 = metadata !{i64 1433}
!1435 = metadata !{i64 1434}
!1436 = metadata !{i64 1435}
!1437 = metadata !{i64 1436}
!1438 = metadata !{i64 1437}
!1439 = metadata !{i64 1438}
!1440 = metadata !{i64 1439}
!1441 = metadata !{i64 1440}
!1442 = metadata !{i64 1441}
!1443 = metadata !{i64 1442}
!1444 = metadata !{i64 1443}
!1445 = metadata !{i64 1444}
!1446 = metadata !{i64 1445}
!1447 = metadata !{i64 1446}
!1448 = metadata !{i64 1447}
!1449 = metadata !{i64 1448}
!1450 = metadata !{i64 1449}
!1451 = metadata !{i64 1450}
!1452 = metadata !{i64 1451}
!1453 = metadata !{i64 1452}
!1454 = metadata !{i64 1453}
!1455 = metadata !{i64 1454}
!1456 = metadata !{i64 1455}
!1457 = metadata !{i64 1456}
!1458 = metadata !{i64 1457}
!1459 = metadata !{i64 1458}
!1460 = metadata !{i64 1459}
!1461 = metadata !{i64 1460}
!1462 = metadata !{i64 1461}
!1463 = metadata !{i64 1462}
!1464 = metadata !{i64 1463}
!1465 = metadata !{i64 1464}
!1466 = metadata !{i64 1465}
!1467 = metadata !{i64 1466}
!1468 = metadata !{i64 1467}
!1469 = metadata !{i64 1468}
!1470 = metadata !{i64 1469}
!1471 = metadata !{i64 1470}
!1472 = metadata !{i64 1471}
!1473 = metadata !{i64 1472}
!1474 = metadata !{i64 1473}
!1475 = metadata !{i64 1474}
!1476 = metadata !{i64 1475}
!1477 = metadata !{i64 1476}
!1478 = metadata !{i64 1477}
!1479 = metadata !{i64 1478}
!1480 = metadata !{i64 1479}
!1481 = metadata !{i64 1480}
!1482 = metadata !{i64 1481}
!1483 = metadata !{i64 1482}
!1484 = metadata !{i64 1483}
!1485 = metadata !{i64 1484}
!1486 = metadata !{i64 1485}
!1487 = metadata !{i64 1486}
!1488 = metadata !{i64 1487}
!1489 = metadata !{i64 1488}
!1490 = metadata !{i64 1489}
!1491 = metadata !{i64 1490}
!1492 = metadata !{i64 1491}
!1493 = metadata !{i64 1492}
!1494 = metadata !{i64 1493}
!1495 = metadata !{i64 1494}
!1496 = metadata !{i64 1495}
!1497 = metadata !{i64 1496}
!1498 = metadata !{i64 1497}
!1499 = metadata !{i64 1498}
!1500 = metadata !{i64 1499}
!1501 = metadata !{i64 1500}
!1502 = metadata !{i64 1501}
!1503 = metadata !{i64 1502}
!1504 = metadata !{i64 1503}
!1505 = metadata !{i64 1504}
!1506 = metadata !{i64 1505}
!1507 = metadata !{i64 1506}
!1508 = metadata !{i64 1507}
!1509 = metadata !{i64 1508}
!1510 = metadata !{i64 1509}
!1511 = metadata !{i64 1510}
!1512 = metadata !{i64 1511}
!1513 = metadata !{i64 1512}
!1514 = metadata !{i64 1513}
!1515 = metadata !{i64 1514}
!1516 = metadata !{i64 1515}
!1517 = metadata !{i64 1516}
!1518 = metadata !{i64 1517}
!1519 = metadata !{i64 1518}
!1520 = metadata !{i64 1519}
!1521 = metadata !{i64 1520}
!1522 = metadata !{i64 1521}
!1523 = metadata !{i64 1522}
!1524 = metadata !{i64 1523}
!1525 = metadata !{i64 1524}
!1526 = metadata !{i64 1525}
!1527 = metadata !{i64 1526}
!1528 = metadata !{i64 1527}
!1529 = metadata !{i64 1528}
!1530 = metadata !{i64 1529}
!1531 = metadata !{i64 1530}
!1532 = metadata !{i64 1531}
!1533 = metadata !{i64 1532}
!1534 = metadata !{i64 1533}
!1535 = metadata !{i64 1534}
!1536 = metadata !{i64 1535}
!1537 = metadata !{i64 1536}
!1538 = metadata !{i64 1537}
!1539 = metadata !{i64 1538}
!1540 = metadata !{i64 1539}
!1541 = metadata !{i64 1540}
!1542 = metadata !{i64 1541}
!1543 = metadata !{i64 1542}
!1544 = metadata !{i64 1543}
!1545 = metadata !{i64 1544}
!1546 = metadata !{i64 1545}
!1547 = metadata !{i64 1546}
!1548 = metadata !{i64 1547}
!1549 = metadata !{i64 1548}
!1550 = metadata !{i64 1549}
!1551 = metadata !{i64 1550}
!1552 = metadata !{i64 1551}
!1553 = metadata !{i64 1552}
!1554 = metadata !{i64 1553}
!1555 = metadata !{i64 1554}
!1556 = metadata !{i64 1555}
!1557 = metadata !{i64 1556}
!1558 = metadata !{i64 1557}
!1559 = metadata !{i64 1558}
!1560 = metadata !{i64 1559}
!1561 = metadata !{i64 1560}
!1562 = metadata !{i64 1561}
!1563 = metadata !{i64 1562}
!1564 = metadata !{i64 1563}
!1565 = metadata !{i64 1564}
!1566 = metadata !{i64 1565}
!1567 = metadata !{i64 1566}
!1568 = metadata !{i64 1567}
!1569 = metadata !{i64 1568}
!1570 = metadata !{i64 1569}
!1571 = metadata !{i64 1570}
!1572 = metadata !{i64 1571}
!1573 = metadata !{i64 1572}
!1574 = metadata !{i64 1573}
!1575 = metadata !{i64 1574}
!1576 = metadata !{i64 1575}
!1577 = metadata !{i64 1576}
!1578 = metadata !{i64 1577}
!1579 = metadata !{i64 1578}
!1580 = metadata !{i64 1579}
!1581 = metadata !{i64 1580}
!1582 = metadata !{i64 1581}
!1583 = metadata !{i64 1582}
!1584 = metadata !{i64 1583}
!1585 = metadata !{i64 1584}
!1586 = metadata !{i64 1585}
!1587 = metadata !{i64 1586}
!1588 = metadata !{i64 1587}
!1589 = metadata !{i64 1588}
!1590 = metadata !{i64 1589}
!1591 = metadata !{i64 1590}
!1592 = metadata !{i64 1591}
!1593 = metadata !{i64 1592}
!1594 = metadata !{i64 1593}
!1595 = metadata !{i64 1594}
!1596 = metadata !{i64 1595}
!1597 = metadata !{i64 1596}
!1598 = metadata !{i64 1597}
!1599 = metadata !{i64 1598}
!1600 = metadata !{i64 1599}
!1601 = metadata !{i64 1600}
!1602 = metadata !{i64 1601}
!1603 = metadata !{i64 1602}
!1604 = metadata !{i64 1603}
!1605 = metadata !{i64 1604}
!1606 = metadata !{i64 1605}
!1607 = metadata !{i64 1606}
!1608 = metadata !{i64 1607}
!1609 = metadata !{i64 1608}
!1610 = metadata !{i64 1609}
!1611 = metadata !{i64 1610}
!1612 = metadata !{i64 1611}
!1613 = metadata !{i64 1612}
!1614 = metadata !{i64 1613}
!1615 = metadata !{i64 1614}
!1616 = metadata !{i64 1615}
!1617 = metadata !{i64 1616}
!1618 = metadata !{i64 1617}
!1619 = metadata !{i64 1618}
!1620 = metadata !{i64 1619}
!1621 = metadata !{i64 1620}
!1622 = metadata !{i64 1621}
!1623 = metadata !{i64 1622}
!1624 = metadata !{i64 1623}
!1625 = metadata !{i64 1624}
!1626 = metadata !{i64 1625}
!1627 = metadata !{i64 1626}
!1628 = metadata !{i64 1627}
!1629 = metadata !{i64 1628}
!1630 = metadata !{i64 1629}
!1631 = metadata !{i64 1630}
!1632 = metadata !{i64 1631}
!1633 = metadata !{i64 1632}
!1634 = metadata !{i64 1633}
!1635 = metadata !{i64 1634}
!1636 = metadata !{i64 1635}
!1637 = metadata !{i64 1636}
!1638 = metadata !{i64 1637}
!1639 = metadata !{i64 1638}
!1640 = metadata !{i64 1639}
!1641 = metadata !{i64 1640}
!1642 = metadata !{i64 1641}
!1643 = metadata !{i64 1642}
!1644 = metadata !{i64 1643}
!1645 = metadata !{i64 1644}
!1646 = metadata !{i64 1645}
!1647 = metadata !{i64 1646}
!1648 = metadata !{i64 1647}
!1649 = metadata !{i64 1648}
!1650 = metadata !{i64 1649}
!1651 = metadata !{i64 1650}
!1652 = metadata !{i64 1651}
!1653 = metadata !{i64 1652}
!1654 = metadata !{i64 1653}
!1655 = metadata !{i64 1654}
!1656 = metadata !{i64 1655}
!1657 = metadata !{i64 1656}
!1658 = metadata !{i64 1657}
!1659 = metadata !{i64 1658}
!1660 = metadata !{i64 1659}
!1661 = metadata !{i64 1660}
!1662 = metadata !{i64 1661}
!1663 = metadata !{i64 1662}
!1664 = metadata !{i64 1663}
!1665 = metadata !{i64 1664}
!1666 = metadata !{i64 1665}
!1667 = metadata !{i64 1666}
!1668 = metadata !{i64 1667}
!1669 = metadata !{i64 1668}
!1670 = metadata !{i64 1669}
!1671 = metadata !{i64 1670}
!1672 = metadata !{i64 1671}
!1673 = metadata !{i64 1672}
!1674 = metadata !{i64 1673}
!1675 = metadata !{i64 1674}
!1676 = metadata !{i64 1675}
!1677 = metadata !{i64 1676}
!1678 = metadata !{i64 1677}
!1679 = metadata !{i64 1678}
!1680 = metadata !{i64 1679}
!1681 = metadata !{i64 1680}
!1682 = metadata !{i64 1681}
!1683 = metadata !{i64 1682}
!1684 = metadata !{i64 1683}
!1685 = metadata !{i64 1684}
!1686 = metadata !{i64 1685}
!1687 = metadata !{i64 1686}
!1688 = metadata !{i64 1687}
!1689 = metadata !{i64 1688}
!1690 = metadata !{i64 1689}
!1691 = metadata !{i64 1690}
!1692 = metadata !{i64 1691}
!1693 = metadata !{i64 1692}
!1694 = metadata !{i64 1693}
!1695 = metadata !{i64 1694}
!1696 = metadata !{i64 1695}
!1697 = metadata !{i64 1696}
!1698 = metadata !{i64 1697}
!1699 = metadata !{i64 1698}
!1700 = metadata !{i64 1699}
!1701 = metadata !{i64 1700}
!1702 = metadata !{i64 1701}
!1703 = metadata !{i64 1702}
!1704 = metadata !{i64 1703}
!1705 = metadata !{i64 1704}
!1706 = metadata !{i64 1705}
!1707 = metadata !{i64 1706}
!1708 = metadata !{i64 1707}
!1709 = metadata !{i64 1708}
!1710 = metadata !{i64 1709}
!1711 = metadata !{i64 1710}
!1712 = metadata !{i64 1711}
!1713 = metadata !{i64 1712}
!1714 = metadata !{i64 1713}
!1715 = metadata !{i64 1714}
!1716 = metadata !{i64 1715}
!1717 = metadata !{i64 1716}
!1718 = metadata !{i64 1717}
!1719 = metadata !{i64 1718}
!1720 = metadata !{i64 1719}
!1721 = metadata !{i64 1720}
!1722 = metadata !{i64 1721}
!1723 = metadata !{i64 1722}
!1724 = metadata !{i64 1723}
!1725 = metadata !{i64 1724}
!1726 = metadata !{i64 1725}
!1727 = metadata !{i64 1726}
!1728 = metadata !{i64 1727}
!1729 = metadata !{i64 1728}
!1730 = metadata !{i64 1729}
!1731 = metadata !{i64 1730}
!1732 = metadata !{i64 1731}
!1733 = metadata !{i64 1732}
!1734 = metadata !{i64 1733}
!1735 = metadata !{i64 1734}
!1736 = metadata !{i64 1735}
!1737 = metadata !{i64 1736}
!1738 = metadata !{i64 1737}
!1739 = metadata !{i64 1738}
!1740 = metadata !{i64 1739}
!1741 = metadata !{i64 1740}
!1742 = metadata !{i64 1741}
!1743 = metadata !{i64 1742}
!1744 = metadata !{i64 1743}
!1745 = metadata !{i64 1744}
!1746 = metadata !{i64 1745}
!1747 = metadata !{i64 1746}
!1748 = metadata !{i64 1747}
!1749 = metadata !{i64 1748}
!1750 = metadata !{i64 1749}
!1751 = metadata !{i64 1750}
!1752 = metadata !{i64 1751}
!1753 = metadata !{i64 1752}
!1754 = metadata !{i64 1753}
!1755 = metadata !{i64 1754}
!1756 = metadata !{i64 1755}
!1757 = metadata !{i64 1756}
!1758 = metadata !{i64 1757}
!1759 = metadata !{i64 1758}
!1760 = metadata !{i64 1759}
!1761 = metadata !{i64 1760}
!1762 = metadata !{i64 1761}
!1763 = metadata !{i64 1762}
!1764 = metadata !{i64 1763}
!1765 = metadata !{i64 1764}
!1766 = metadata !{i64 1765}
!1767 = metadata !{i64 1766}
!1768 = metadata !{i64 1767}
!1769 = metadata !{i64 1768}
!1770 = metadata !{i64 1769}
!1771 = metadata !{i64 1770}
!1772 = metadata !{i64 1771}
!1773 = metadata !{i64 1772}
!1774 = metadata !{i64 1773}
!1775 = metadata !{i64 1774}
!1776 = metadata !{i64 1775}
!1777 = metadata !{i64 1776}
!1778 = metadata !{i64 1777}
!1779 = metadata !{i64 1778}
!1780 = metadata !{i64 1779}
!1781 = metadata !{i64 1780}
!1782 = metadata !{i64 1781}
!1783 = metadata !{i64 1782}
!1784 = metadata !{i64 1783}
!1785 = metadata !{i64 1784}
!1786 = metadata !{i64 1785}
!1787 = metadata !{i64 1786}
!1788 = metadata !{i64 1787}
!1789 = metadata !{i64 1788}
!1790 = metadata !{i64 1789}
!1791 = metadata !{i64 1790}
!1792 = metadata !{i64 1791}
!1793 = metadata !{i64 1792}
!1794 = metadata !{i64 1793}
!1795 = metadata !{i64 1794}
!1796 = metadata !{i64 1795}
!1797 = metadata !{i64 1796}
!1798 = metadata !{i64 1797}
!1799 = metadata !{i64 1798}
!1800 = metadata !{i64 1799}
!1801 = metadata !{i64 1800}
!1802 = metadata !{i64 1801}
!1803 = metadata !{i64 1802}
!1804 = metadata !{i64 1803}
!1805 = metadata !{i64 1804}
!1806 = metadata !{i64 1805}
!1807 = metadata !{i64 1806}
!1808 = metadata !{i64 1807}
!1809 = metadata !{i64 1808}
!1810 = metadata !{i64 1809}
!1811 = metadata !{i64 1810}
!1812 = metadata !{i64 1811}
!1813 = metadata !{i64 1812}
!1814 = metadata !{i64 1813}
!1815 = metadata !{i64 1814}
!1816 = metadata !{i64 1815}
!1817 = metadata !{i64 1816}
!1818 = metadata !{i64 1817}
!1819 = metadata !{i64 1818}
!1820 = metadata !{i64 1819}
!1821 = metadata !{i64 1820}
!1822 = metadata !{i64 1821}
!1823 = metadata !{i64 1822}
!1824 = metadata !{i64 1823}
!1825 = metadata !{i64 1824}
!1826 = metadata !{i64 1825}
!1827 = metadata !{i64 1826}
!1828 = metadata !{i64 1827}
!1829 = metadata !{i64 1828}
!1830 = metadata !{i64 1829}
!1831 = metadata !{i64 1830}
!1832 = metadata !{i64 1831}
!1833 = metadata !{i64 1832}
!1834 = metadata !{i64 1833}
!1835 = metadata !{i64 1834}
!1836 = metadata !{i64 1835}
!1837 = metadata !{i64 1836}
!1838 = metadata !{i64 1837}
!1839 = metadata !{i64 1838}
!1840 = metadata !{i64 1839}
!1841 = metadata !{i64 1840}
!1842 = metadata !{i64 1841}
!1843 = metadata !{i64 1842}
!1844 = metadata !{i64 1843}
!1845 = metadata !{i64 1844}
!1846 = metadata !{i64 1845}
!1847 = metadata !{i64 1846}
!1848 = metadata !{i64 1847}
!1849 = metadata !{i64 1848}
!1850 = metadata !{i64 1849}
!1851 = metadata !{i64 1850}
!1852 = metadata !{i64 1851}
!1853 = metadata !{i64 1852}
!1854 = metadata !{i64 1853}
!1855 = metadata !{i64 1854}
!1856 = metadata !{i64 1855}
!1857 = metadata !{i64 1856}
!1858 = metadata !{i64 1857}
!1859 = metadata !{i64 1858}
!1860 = metadata !{i64 1859}
!1861 = metadata !{i64 1860}
!1862 = metadata !{i64 1861}
!1863 = metadata !{i64 1862}
!1864 = metadata !{i64 1863}
!1865 = metadata !{i64 1864}
!1866 = metadata !{i64 1865}
!1867 = metadata !{i64 1866}
!1868 = metadata !{i64 1867}
!1869 = metadata !{i64 1868}
!1870 = metadata !{i64 1869}
!1871 = metadata !{i64 1870}
!1872 = metadata !{i64 1871}
!1873 = metadata !{i64 1872}
!1874 = metadata !{i64 1873}
!1875 = metadata !{i64 1874}
!1876 = metadata !{i64 1875}
!1877 = metadata !{i64 1876}
!1878 = metadata !{i64 1877}
!1879 = metadata !{i64 1878}
!1880 = metadata !{i64 1879}
!1881 = metadata !{i64 1880}
!1882 = metadata !{i64 1881}
!1883 = metadata !{i64 1882}
!1884 = metadata !{i64 1883}
!1885 = metadata !{i64 1884}
!1886 = metadata !{i64 1885}
!1887 = metadata !{i64 1886}
!1888 = metadata !{i64 1887}
!1889 = metadata !{i64 1888}
!1890 = metadata !{i64 1889}
!1891 = metadata !{i64 1890}
!1892 = metadata !{i64 1891}
!1893 = metadata !{i64 1892}
!1894 = metadata !{i64 1893}
!1895 = metadata !{i64 1894}
!1896 = metadata !{i64 1895}
!1897 = metadata !{i64 1896}
!1898 = metadata !{i64 1897}
!1899 = metadata !{i64 1898}
!1900 = metadata !{i64 1899}
!1901 = metadata !{i64 1900}
!1902 = metadata !{i64 1901}
!1903 = metadata !{i64 1902}
!1904 = metadata !{i64 1903}
!1905 = metadata !{i64 1904}
!1906 = metadata !{i64 1905}
!1907 = metadata !{i64 1906}
!1908 = metadata !{i64 1907}
!1909 = metadata !{i64 1908}
!1910 = metadata !{i64 1909}
!1911 = metadata !{i64 1910}
!1912 = metadata !{i64 1911}
!1913 = metadata !{i64 1912}
!1914 = metadata !{i64 1913}
!1915 = metadata !{i64 1914}
!1916 = metadata !{i64 1915}
!1917 = metadata !{i64 1916}
!1918 = metadata !{i64 1917}
!1919 = metadata !{i64 1918}
!1920 = metadata !{i64 1919}
!1921 = metadata !{i64 1920}
!1922 = metadata !{i64 1921}
!1923 = metadata !{i64 1922}
!1924 = metadata !{i64 1923}
!1925 = metadata !{i64 1924}
!1926 = metadata !{i64 1925}
!1927 = metadata !{i64 1926}
!1928 = metadata !{i64 1927}
!1929 = metadata !{i64 1928}
!1930 = metadata !{i64 1929}
!1931 = metadata !{i64 1930}
!1932 = metadata !{i64 1931}
!1933 = metadata !{i64 1932}
!1934 = metadata !{i64 1933}
!1935 = metadata !{i64 1934}
!1936 = metadata !{i64 1935}
!1937 = metadata !{i64 1936}
!1938 = metadata !{i64 1937}
!1939 = metadata !{i64 1938}
!1940 = metadata !{i64 1939}
!1941 = metadata !{i64 1940}
!1942 = metadata !{i64 1941}
!1943 = metadata !{i64 1942}
!1944 = metadata !{i64 1943}
!1945 = metadata !{i64 1944}
!1946 = metadata !{i64 1945}
!1947 = metadata !{i64 1946}
!1948 = metadata !{i64 1947}
!1949 = metadata !{i64 1948}
!1950 = metadata !{i64 1949}
!1951 = metadata !{i64 1950}
!1952 = metadata !{i64 1951}
!1953 = metadata !{i64 1952}
!1954 = metadata !{i64 1953}
!1955 = metadata !{i64 1954}
!1956 = metadata !{i64 1955}
!1957 = metadata !{i64 1956}
!1958 = metadata !{i64 1957}
!1959 = metadata !{i64 1958}
!1960 = metadata !{i64 1959}
!1961 = metadata !{i64 1960}
!1962 = metadata !{i64 1961}
!1963 = metadata !{i64 1962}
!1964 = metadata !{i64 1963}
!1965 = metadata !{i64 1964}
!1966 = metadata !{i64 1965}
!1967 = metadata !{i64 1966}
!1968 = metadata !{i64 1967}
!1969 = metadata !{i64 1968}
!1970 = metadata !{i64 1969}
!1971 = metadata !{i64 1970}
!1972 = metadata !{i64 1971}
!1973 = metadata !{i64 1972}
!1974 = metadata !{i64 1973}
!1975 = metadata !{i64 1974}
!1976 = metadata !{i64 1975}
!1977 = metadata !{i64 1976}
!1978 = metadata !{i64 1977}
!1979 = metadata !{i64 1978}
!1980 = metadata !{i64 1979}
!1981 = metadata !{i64 1980}
!1982 = metadata !{i64 1981}
!1983 = metadata !{i64 1982}
!1984 = metadata !{i64 1983}
!1985 = metadata !{i64 1984}
!1986 = metadata !{i64 1985}
!1987 = metadata !{i64 1986}
!1988 = metadata !{i64 1987}
!1989 = metadata !{i64 1988}
!1990 = metadata !{i64 1989}
!1991 = metadata !{i64 1990}
!1992 = metadata !{i64 1991}
!1993 = metadata !{i64 1992}
!1994 = metadata !{i64 1993}
!1995 = metadata !{i64 1994}
!1996 = metadata !{i64 1995}
!1997 = metadata !{i64 1996}
!1998 = metadata !{i64 1997}
!1999 = metadata !{i64 1998}
!2000 = metadata !{i64 1999}
!2001 = metadata !{i64 2000}
!2002 = metadata !{i64 2001}
!2003 = metadata !{i64 2002}
!2004 = metadata !{i64 2003}
!2005 = metadata !{i64 2004}
!2006 = metadata !{i64 2005}
!2007 = metadata !{i64 2006}
!2008 = metadata !{i64 2007}
!2009 = metadata !{i64 2008}
!2010 = metadata !{i64 2009}
!2011 = metadata !{i64 2010}
!2012 = metadata !{i64 2011}
!2013 = metadata !{i64 2012}
!2014 = metadata !{i64 2013}
