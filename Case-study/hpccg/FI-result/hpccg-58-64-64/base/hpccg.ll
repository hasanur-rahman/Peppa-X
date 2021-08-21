; ModuleID = 'main.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%struct.HPC_Sparse_Matrix_STRUCT = type { i8*, i32, i32, i32, i64, i32, i32, i32, i32*, double**, i32**, double**, double*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Mode 1: \00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c" nx ny nz\00", align 1
@.str3 = private unnamed_addr constant [64 x i8] c"     where nx, ny and nz are the local sub-block dimensions, or\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"Mode 2: \00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c" HPC_data_file \00", align 1
@.str6 = private unnamed_addr constant [79 x i8] c"     where HPC_data_file is a globally accessible file containing matrix data.\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Error in call to CG: \00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str9 = private unnamed_addr constant [23 x i8] c"Number of iterations: \00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"Final residual: \00", align 1
@llvm.global_ctors = appending global [5 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }, { i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a22 }, { i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a40 }, { i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a57 }, { i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a67 }]
@_ZStL8__ioinit1 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str11 = private unnamed_addr constant [13 x i8] c"local_nrow>0\00", align 1
@.str112 = private unnamed_addr constant [20 x i8] c"generate_matrix.cpp\00", align 1
@__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_ = private unnamed_addr constant [91 x i8] c"void generate_matrix(int, int, int, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@.str213 = private unnamed_addr constant [9 x i8] c"Process \00", align 1
@.str314 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str415 = private unnamed_addr constant [6 x i8] c" has \00", align 1
@.str516 = private unnamed_addr constant [20 x i8] c" rows. Global rows \00", align 1
@.str617 = private unnamed_addr constant [10 x i8] c" through \00", align 1
@.str718 = private unnamed_addr constant [11 x i8] c" nonzeros.\00", align 1
@_ZStL8__ioinit24 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str25 = private unnamed_addr constant [32 x i8] c"Reading matrix info from %s...\0A\00", align 1
@.str126 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str227 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1
@.str328 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str429 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str530 = private unnamed_addr constant [26 x i8] c"cur_local_row==local_nrow\00", align 1
@.str631 = private unnamed_addr constant [17 x i8] c"read_HPC_row.cpp\00", align 1
@__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_ = private unnamed_addr constant [81 x i8] c"void read_HPC_row(char *, HPC_Sparse_Matrix **, double **, double **, double **)\00", align 1
@.str732 = private unnamed_addr constant [9 x i8] c"Process \00", align 1
@.str833 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str934 = private unnamed_addr constant [14 x i8] c" getting row \00", align 1
@.str1035 = private unnamed_addr constant [7 x i8] c"%lf %d\00", align 1
@.str1136 = private unnamed_addr constant [14 x i8] c" getting RHS \00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c" has \00", align 1
@.str14 = private unnamed_addr constant [20 x i8] c" rows. Global rows \00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c" through \00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c" nonzeros.\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c"mat0.dat\00", align 1
@.str143 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str244 = private unnamed_addr constant [9 x i8] c"mat1.dat\00", align 1
@.str345 = private unnamed_addr constant [9 x i8] c"mat2.dat\00", align 1
@.str446 = private unnamed_addr constant [9 x i8] c"mat3.dat\00", align 1
@.str547 = private unnamed_addr constant [16 x i8] c" %d %d %22.16e\0A\00", align 1
@_ZStL8__ioinit50 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str51 = private unnamed_addr constant [20 x i8] c"Initial Residual = \00", align 1
@.str152 = private unnamed_addr constant [13 x i8] c"Iteration = \00", align 1
@.str253 = private unnamed_addr constant [15 x i8] c"   Residual = \00", align 1
@_ZStL8__ioinit63 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %A = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %x = alloca double*, align 8
  %b = alloca double*, align 8
  %xexact = alloca double*, align 8
  %norm = alloca double, align 8
  %d = alloca double, align 8
  %ierr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ione = alloca i32, align 4
  %times = alloca [7 x double], align 16
  %t6 = alloca double, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %size = alloca i32, align 4
  %rank = alloca i32, align 4
  %dump_matrix = alloca i8, align 1
  %t1 = alloca double, align 8
  %niters = alloca i32, align 4
  %normr = alloca double, align 8
  %max_iter = alloca i32, align 4
  %tolerance = alloca double, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %ierr, align 4
  store i32 1, i32* %ione, align 4
  store double 0.000000e+00, double* %t6, align 8
  store i32 1, i32* %size, align 4
  store i32 0, i32* %rank, align 4
  %4 = load i32* %2, align 4
  %5 = icmp ne i32 %4, 2
  br i1 %5, label %6, label %34

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4
  %8 = icmp ne i32 %7, 4
  br i1 %8, label %9, label %34

; <label>:9                                       ; preds = %6
  %10 = load i32* %rank, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %9
  %13 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  %14 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %13, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %15 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %14, i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0))
  %16 = load i8*** %3, align 8
  %17 = getelementptr inbounds i8** %16, i64 0
  %18 = load i8** %17, align 8
  %19 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %15, i8* %18)
  %20 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %19, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0))
  %21 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %20, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %22 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %21, i8* getelementptr inbounds ([64 x i8]* @.str3, i32 0, i32 0))
  %23 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %22, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %24 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %23, i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0))
  %25 = load i8*** %3, align 8
  %26 = getelementptr inbounds i8** %25, i64 0
  %27 = load i8** %26, align 8
  %28 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %24, i8* %27)
  %29 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %28, i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0))
  %30 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %29, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %31 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %30, i8* getelementptr inbounds ([79 x i8]* @.str6, i32 0, i32 0))
  %32 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %31, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %33

; <label>:33                                      ; preds = %12, %9
  call void @exit(i32 1) #10
  unreachable

; <label>:34                                      ; preds = %6, %0
  %35 = load i32* %2, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %53

; <label>:37                                      ; preds = %34
  %38 = load i8*** %3, align 8
  %39 = getelementptr inbounds i8** %38, i64 1
  %40 = load i8** %39, align 8
  %41 = call i32 @atoi(i8* %40) #11
  store i32 %41, i32* %nx, align 4
  %42 = load i8*** %3, align 8
  %43 = getelementptr inbounds i8** %42, i64 2
  %44 = load i8** %43, align 8
  %45 = call i32 @atoi(i8* %44) #11
  store i32 %45, i32* %ny, align 4
  %46 = load i8*** %3, align 8
  %47 = getelementptr inbounds i8** %46, i64 3
  %48 = load i8** %47, align 8
  %49 = call i32 @atoi(i8* %48) #11
  store i32 %49, i32* %nz, align 4
  %50 = load i32* %nx, align 4
  %51 = load i32* %ny, align 4
  %52 = load i32* %nz, align 4
  call void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %50, i32 %51, i32 %52, %struct.HPC_Sparse_Matrix_STRUCT** %A, double** %x, double** %b, double** %xexact)
  br label %57

; <label>:53                                      ; preds = %34
  %54 = load i8*** %3, align 8
  %55 = getelementptr inbounds i8** %54, i64 1
  %56 = load i8** %55, align 8
  call void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(i8* %56, %struct.HPC_Sparse_Matrix_STRUCT** %A, double** %x, double** %b, double** %xexact)
  br label %57

; <label>:57                                      ; preds = %53, %37
  store i8 0, i8* %dump_matrix, align 1
  %58 = load i8* %dump_matrix, align 1
  %59 = trunc i8 %58 to i1
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %57
  %61 = load i32* %size, align 4
  %62 = icmp sle i32 %61, 4
  br i1 %62, label %63, label %67

; <label>:63                                      ; preds = %60
  %64 = load %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8
  %65 = load i32* %rank, align 4
  %66 = call i32 @_Z18dump_matlab_matrixP24HPC_Sparse_Matrix_STRUCTi(%struct.HPC_Sparse_Matrix_STRUCT* %64, i32 %65)
  br label %67

; <label>:67                                      ; preds = %63, %60, %57
  %68 = call double @_Z7mytimerv()
  store double %68, double* %t1, align 8
  store i32 0, i32* %niters, align 4
  store double 0.000000e+00, double* %normr, align 8
  store i32 150, i32* %max_iter, align 4
  store double 0.000000e+00, double* %tolerance, align 8
  %69 = load %struct.HPC_Sparse_Matrix_STRUCT** %A, align 8
  %70 = load double** %b, align 8
  %71 = load double** %x, align 8
  %72 = load i32* %max_iter, align 4
  %73 = load double* %tolerance, align 8
  %74 = getelementptr inbounds [7 x double]* %times, i32 0, i32 0
  %75 = call i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(%struct.HPC_Sparse_Matrix_STRUCT* %69, double* %70, double* %71, i32 %72, double %73, i32* %niters, double* %normr, double* %74)
  store i32 %75, i32* %ierr, align 4
  %76 = load i32* %ierr, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

; <label>:78                                      ; preds = %67
  %79 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([22 x i8]* @.str7, i32 0, i32 0))
  %80 = load i32* %ierr, align 4
  %81 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %79, i32 %80)
  %82 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %81, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0))
  %83 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %82, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %84

; <label>:84                                      ; preds = %78, %67
  %85 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([23 x i8]* @.str9, i32 0, i32 0))
  %86 = load i32* %niters, align 4
  %87 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %85, i32 %86)
  %88 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %87, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %89 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str10, i32 0, i32 0))
  %90 = load double* %normr, align 8
  %91 = call %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %89, double %90)
  %92 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %91, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @exit(i32 0) #10
  unreachable
                                                  ; No predecessors!
  %94 = load i32* %1
  ret i32 %94
}

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #0

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

declare %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #0

define internal void @_GLOBAL__I_a() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: uwtable
define void @_Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_(i32 %nx, i32 %ny, i32 %nz, %struct.HPC_Sparse_Matrix_STRUCT** %A, double** %x, double** %b, double** %xexact) #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.HPC_Sparse_Matrix_STRUCT**, align 8
  %5 = alloca double**, align 8
  %6 = alloca double**, align 8
  %7 = alloca double**, align 8
  %debug = alloca i32, align 4
  %size = alloca i32, align 4
  %rank = alloca i32, align 4
  %use_7pt_stencil = alloca i8, align 1
  %local_nrow = alloca i32, align 4
  %local_nnz = alloca i32, align 4
  %total_nrow = alloca i32, align 4
  %total_nnz = alloca i64, align 8
  %start_row = alloca i32, align 4
  %stop_row = alloca i32, align 4
  %curvalptr = alloca double*, align 8
  %curindptr = alloca i32*, align 8
  %nnzglobal = alloca i64, align 8
  %iz = alloca i32, align 4
  %iy = alloca i32, align 4
  %ix = alloca i32, align 4
  %curlocalrow = alloca i32, align 4
  %currow = alloca i32, align 4
  %nnzrow = alloca i32, align 4
  %sz = alloca i32, align 4
  %sy = alloca i32, align 4
  %sx = alloca i32, align 4
  %curcol = alloca i32, align 4
  store i32 %nx, i32* %1, align 4
  store i32 %ny, i32* %2, align 4
  store i32 %nz, i32* %3, align 4
  store %struct.HPC_Sparse_Matrix_STRUCT** %A, %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  store double** %x, double*** %5, align 8
  store double** %b, double*** %6, align 8
  store double** %xexact, double*** %7, align 8
  store i32 0, i32* %debug, align 4
  store i32 1, i32* %size, align 4
  store i32 0, i32* %rank, align 4
  %8 = call noalias i8* @_Znwm(i64 96) #12
  %9 = bitcast i8* %8 to %struct.HPC_Sparse_Matrix_STRUCT*
  %10 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  store %struct.HPC_Sparse_Matrix_STRUCT* %9, %struct.HPC_Sparse_Matrix_STRUCT** %10, align 8
  store i8 0, i8* %use_7pt_stencil, align 1
  %11 = load i32* %1, align 4
  %12 = load i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32* %3, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %local_nrow, align 4
  %16 = load i32* %local_nrow, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %0
  br label %21

; <label>:19                                      ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str112, i32 0, i32 0), i32 75, i8* getelementptr inbounds ([91 x i8]* @__PRETTY_FUNCTION__._Z15generate_matrixiiiPP24HPC_Sparse_Matrix_STRUCTPPdS3_S3_, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %21

; <label>:21                                      ; preds = %20, %18
  %22 = load i32* %local_nrow, align 4
  %23 = mul nsw i32 27, %22
  store i32 %23, i32* %local_nnz, align 4
  %24 = load i32* %local_nrow, align 4
  %25 = load i32* %size, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %total_nrow, align 4
  %27 = load i32* %total_nrow, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 27, %28
  store i64 %29, i64* %total_nnz, align 8
  %30 = load i32* %local_nrow, align 4
  %31 = load i32* %rank, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %start_row, align 4
  %33 = load i32* %start_row, align 4
  %34 = load i32* %local_nrow, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %stop_row, align 4
  %37 = load i32* %local_nrow, align 4
  %38 = sext i32 %37 to i64
  %39 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %38, i64 4)
  %40 = extractvalue { i64, i1 } %39, 1
  %41 = extractvalue { i64, i1 } %39, 0
  %42 = select i1 %40, i64 -1, i64 %41
  %43 = call noalias i8* @_Znam(i64 %42) #12
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %46 = load %struct.HPC_Sparse_Matrix_STRUCT** %45, align 8
  %47 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %46, i32 0, i32 8
  store i32* %44, i32** %47, align 8
  %48 = load i32* %local_nrow, align 4
  %49 = sext i32 %48 to i64
  %50 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 8)
  %51 = extractvalue { i64, i1 } %50, 1
  %52 = extractvalue { i64, i1 } %50, 0
  %53 = select i1 %51, i64 -1, i64 %52
  %54 = call noalias i8* @_Znam(i64 %53) #12
  %55 = bitcast i8* %54 to double**
  %56 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %57 = load %struct.HPC_Sparse_Matrix_STRUCT** %56, align 8
  %58 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %57, i32 0, i32 9
  store double** %55, double*** %58, align 8
  %59 = load i32* %local_nrow, align 4
  %60 = sext i32 %59 to i64
  %61 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %60, i64 8)
  %62 = extractvalue { i64, i1 } %61, 1
  %63 = extractvalue { i64, i1 } %61, 0
  %64 = select i1 %62, i64 -1, i64 %63
  %65 = call noalias i8* @_Znam(i64 %64) #12
  %66 = bitcast i8* %65 to i32**
  %67 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %68 = load %struct.HPC_Sparse_Matrix_STRUCT** %67, align 8
  %69 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %68, i32 0, i32 10
  store i32** %66, i32*** %69, align 8
  %70 = load i32* %local_nrow, align 4
  %71 = sext i32 %70 to i64
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %71, i64 8)
  %73 = extractvalue { i64, i1 } %72, 1
  %74 = extractvalue { i64, i1 } %72, 0
  %75 = select i1 %73, i64 -1, i64 %74
  %76 = call noalias i8* @_Znam(i64 %75) #12
  %77 = bitcast i8* %76 to double**
  %78 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %79 = load %struct.HPC_Sparse_Matrix_STRUCT** %78, align 8
  %80 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %79, i32 0, i32 11
  store double** %77, double*** %80, align 8
  %81 = load i32* %local_nrow, align 4
  %82 = sext i32 %81 to i64
  %83 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %82, i64 8)
  %84 = extractvalue { i64, i1 } %83, 1
  %85 = extractvalue { i64, i1 } %83, 0
  %86 = select i1 %84, i64 -1, i64 %85
  %87 = call noalias i8* @_Znam(i64 %86) #12
  %88 = bitcast i8* %87 to double*
  %89 = load double*** %5, align 8
  store double* %88, double** %89, align 8
  %90 = load i32* %local_nrow, align 4
  %91 = sext i32 %90 to i64
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %91, i64 8)
  %93 = extractvalue { i64, i1 } %92, 1
  %94 = extractvalue { i64, i1 } %92, 0
  %95 = select i1 %93, i64 -1, i64 %94
  %96 = call noalias i8* @_Znam(i64 %95) #12
  %97 = bitcast i8* %96 to double*
  %98 = load double*** %6, align 8
  store double* %97, double** %98, align 8
  %99 = load i32* %local_nrow, align 4
  %100 = sext i32 %99 to i64
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %100, i64 8)
  %102 = extractvalue { i64, i1 } %101, 1
  %103 = extractvalue { i64, i1 } %101, 0
  %104 = select i1 %102, i64 -1, i64 %103
  %105 = call noalias i8* @_Znam(i64 %104) #12
  %106 = bitcast i8* %105 to double*
  %107 = load double*** %7, align 8
  store double* %106, double** %107, align 8
  %108 = load i32* %local_nnz, align 4
  %109 = sext i32 %108 to i64
  %110 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %109, i64 8)
  %111 = extractvalue { i64, i1 } %110, 1
  %112 = extractvalue { i64, i1 } %110, 0
  %113 = select i1 %111, i64 -1, i64 %112
  %114 = call noalias i8* @_Znam(i64 %113) #12
  %115 = bitcast i8* %114 to double*
  %116 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %117 = load %struct.HPC_Sparse_Matrix_STRUCT** %116, align 8
  %118 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %117, i32 0, i32 12
  store double* %115, double** %118, align 8
  %119 = load i32* %local_nnz, align 4
  %120 = sext i32 %119 to i64
  %121 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %120, i64 4)
  %122 = extractvalue { i64, i1 } %121, 1
  %123 = extractvalue { i64, i1 } %121, 0
  %124 = select i1 %122, i64 -1, i64 %123
  %125 = call noalias i8* @_Znam(i64 %124) #12
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %128 = load %struct.HPC_Sparse_Matrix_STRUCT** %127, align 8
  %129 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %128, i32 0, i32 13
  store i32* %126, i32** %129, align 8
  %130 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %131 = load %struct.HPC_Sparse_Matrix_STRUCT** %130, align 8
  %132 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %131, i32 0, i32 12
  %133 = load double** %132, align 8
  store double* %133, double** %curvalptr, align 8
  %134 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %135 = load %struct.HPC_Sparse_Matrix_STRUCT** %134, align 8
  %136 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %135, i32 0, i32 13
  %137 = load i32** %136, align 8
  store i32* %137, i32** %curindptr, align 8
  store i64 0, i64* %nnzglobal, align 8
  store i32 0, i32* %iz, align 4
  br label %138

; <label>:138                                     ; preds = %339, %21
  %139 = load i32* %iz, align 4
  %140 = load i32* %3, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %342

; <label>:142                                     ; preds = %138
  store i32 0, i32* %iy, align 4
  br label %143

; <label>:143                                     ; preds = %335, %142
  %144 = load i32* %iy, align 4
  %145 = load i32* %2, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %338

; <label>:147                                     ; preds = %143
  store i32 0, i32* %ix, align 4
  br label %148

; <label>:148                                     ; preds = %331, %147
  %149 = load i32* %ix, align 4
  %150 = load i32* %1, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %334

; <label>:152                                     ; preds = %148
  %153 = load i32* %iz, align 4
  %154 = load i32* %1, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32* %2, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32* %iy, align 4
  %159 = load i32* %1, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %157, %160
  %162 = load i32* %ix, align 4
  %163 = add nsw i32 %161, %162
  store i32 %163, i32* %curlocalrow, align 4
  %164 = load i32* %start_row, align 4
  %165 = load i32* %iz, align 4
  %166 = load i32* %1, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32* %2, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %164, %169
  %171 = load i32* %iy, align 4
  %172 = load i32* %1, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %170, %173
  %175 = load i32* %ix, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %currow, align 4
  store i32 0, i32* %nnzrow, align 4
  %177 = load double** %curvalptr, align 8
  %178 = load i32* %curlocalrow, align 4
  %179 = sext i32 %178 to i64
  %180 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %181 = load %struct.HPC_Sparse_Matrix_STRUCT** %180, align 8
  %182 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %181, i32 0, i32 9
  %183 = load double*** %182, align 8
  %184 = getelementptr inbounds double** %183, i64 %179
  store double* %177, double** %184, align 8
  %185 = load i32** %curindptr, align 8
  %186 = load i32* %curlocalrow, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %189 = load %struct.HPC_Sparse_Matrix_STRUCT** %188, align 8
  %190 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %189, i32 0, i32 10
  %191 = load i32*** %190, align 8
  %192 = getelementptr inbounds i32** %191, i64 %187
  store i32* %185, i32** %192, align 8
  store i32 -1, i32* %sz, align 4
  br label %193

; <label>:193                                     ; preds = %296, %152
  %194 = load i32* %sz, align 4
  %195 = icmp sle i32 %194, 1
  br i1 %195, label %196, label %299

; <label>:196                                     ; preds = %193
  store i32 -1, i32* %sy, align 4
  br label %197

; <label>:197                                     ; preds = %292, %196
  %198 = load i32* %sy, align 4
  %199 = icmp sle i32 %198, 1
  br i1 %199, label %200, label %295

; <label>:200                                     ; preds = %197
  store i32 -1, i32* %sx, align 4
  br label %201

; <label>:201                                     ; preds = %288, %200
  %202 = load i32* %sx, align 4
  %203 = icmp sle i32 %202, 1
  br i1 %203, label %204, label %291

; <label>:204                                     ; preds = %201
  %205 = load i32* %currow, align 4
  %206 = load i32* %sz, align 4
  %207 = load i32* %1, align 4
  %208 = mul nsw i32 %206, %207
  %209 = load i32* %2, align 4
  %210 = mul nsw i32 %208, %209
  %211 = add nsw i32 %205, %210
  %212 = load i32* %sy, align 4
  %213 = load i32* %1, align 4
  %214 = mul nsw i32 %212, %213
  %215 = add nsw i32 %211, %214
  %216 = load i32* %sx, align 4
  %217 = add nsw i32 %215, %216
  store i32 %217, i32* %curcol, align 4
  %218 = load i32* %ix, align 4
  %219 = load i32* %sx, align 4
  %220 = add nsw i32 %218, %219
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %287

; <label>:222                                     ; preds = %204
  %223 = load i32* %ix, align 4
  %224 = load i32* %sx, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32* %1, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %287

; <label>:228                                     ; preds = %222
  %229 = load i32* %iy, align 4
  %230 = load i32* %sy, align 4
  %231 = add nsw i32 %229, %230
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %287

; <label>:233                                     ; preds = %228
  %234 = load i32* %iy, align 4
  %235 = load i32* %sy, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32* %2, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %287

; <label>:239                                     ; preds = %233
  %240 = load i32* %curcol, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %287

; <label>:242                                     ; preds = %239
  %243 = load i32* %curcol, align 4
  %244 = load i32* %total_nrow, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %287

; <label>:246                                     ; preds = %242
  %247 = load i8* %use_7pt_stencil, align 1
  %248 = trunc i8 %247 to i1
  br i1 %248, label %249, label %262

; <label>:249                                     ; preds = %246
  %250 = load i32* %sz, align 4
  %251 = load i32* %sz, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load i32* %sy, align 4
  %254 = load i32* %sy, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %252, %255
  %257 = load i32* %sx, align 4
  %258 = load i32* %sx, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 %256, %259
  %261 = icmp sle i32 %260, 1
  br i1 %261, label %262, label %286

; <label>:262                                     ; preds = %249, %246
  %263 = load i32* %curcol, align 4
  %264 = load i32* %currow, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %277

; <label>:266                                     ; preds = %262
  %267 = load double** %curvalptr, align 8
  %268 = load i32* %curlocalrow, align 4
  %269 = sext i32 %268 to i64
  %270 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %271 = load %struct.HPC_Sparse_Matrix_STRUCT** %270, align 8
  %272 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %271, i32 0, i32 11
  %273 = load double*** %272, align 8
  %274 = getelementptr inbounds double** %273, i64 %269
  store double* %267, double** %274, align 8
  %275 = load double** %curvalptr, align 8
  %276 = getelementptr inbounds double* %275, i32 1
  store double* %276, double** %curvalptr, align 8
  store double 2.700000e+01, double* %275, align 8
  br label %280

; <label>:277                                     ; preds = %262
  %278 = load double** %curvalptr, align 8
  %279 = getelementptr inbounds double* %278, i32 1
  store double* %279, double** %curvalptr, align 8
  store double -1.000000e+00, double* %278, align 8
  br label %280

; <label>:280                                     ; preds = %277, %266
  %281 = load i32* %curcol, align 4
  %282 = load i32** %curindptr, align 8
  %283 = getelementptr inbounds i32* %282, i32 1
  store i32* %283, i32** %curindptr, align 8
  store i32 %281, i32* %282, align 4
  %284 = load i32* %nnzrow, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %nnzrow, align 4
  br label %286

; <label>:286                                     ; preds = %280, %249
  br label %287

; <label>:287                                     ; preds = %286, %242, %239, %233, %228, %222, %204
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32* %sx, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %sx, align 4
  br label %201

; <label>:291                                     ; preds = %201
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32* %sy, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %sy, align 4
  br label %197

; <label>:295                                     ; preds = %197
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32* %sz, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %sz, align 4
  br label %193

; <label>:299                                     ; preds = %193
  %300 = load i32* %nnzrow, align 4
  %301 = load i32* %curlocalrow, align 4
  %302 = sext i32 %301 to i64
  %303 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %304 = load %struct.HPC_Sparse_Matrix_STRUCT** %303, align 8
  %305 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %304, i32 0, i32 8
  %306 = load i32** %305, align 8
  %307 = getelementptr inbounds i32* %306, i64 %302
  store i32 %300, i32* %307, align 4
  %308 = load i32* %nnzrow, align 4
  %309 = sext i32 %308 to i64
  %310 = load i64* %nnzglobal, align 8
  %311 = add nsw i64 %310, %309
  store i64 %311, i64* %nnzglobal, align 8
  %312 = load i32* %curlocalrow, align 4
  %313 = sext i32 %312 to i64
  %314 = load double*** %5, align 8
  %315 = load double** %314, align 8
  %316 = getelementptr inbounds double* %315, i64 %313
  store double 0.000000e+00, double* %316, align 8
  %317 = load i32* %nnzrow, align 4
  %318 = sub nsw i32 %317, 1
  %319 = sitofp i32 %318 to double
  %320 = fsub double 2.700000e+01, %319
  %321 = load i32* %curlocalrow, align 4
  %322 = sext i32 %321 to i64
  %323 = load double*** %6, align 8
  %324 = load double** %323, align 8
  %325 = getelementptr inbounds double* %324, i64 %322
  store double %320, double* %325, align 8
  %326 = load i32* %curlocalrow, align 4
  %327 = sext i32 %326 to i64
  %328 = load double*** %7, align 8
  %329 = load double** %328, align 8
  %330 = getelementptr inbounds double* %329, i64 %327
  store double 1.000000e+00, double* %330, align 8
  br label %331

; <label>:331                                     ; preds = %299
  %332 = load i32* %ix, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %ix, align 4
  br label %148

; <label>:334                                     ; preds = %148
  br label %335

; <label>:335                                     ; preds = %334
  %336 = load i32* %iy, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %iy, align 4
  br label %143

; <label>:338                                     ; preds = %143
  br label %339

; <label>:339                                     ; preds = %338
  %340 = load i32* %iz, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %iz, align 4
  br label %138

; <label>:342                                     ; preds = %138
  %343 = load i32* %debug, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %355

; <label>:345                                     ; preds = %342
  %346 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str213, i32 0, i32 0))
  %347 = load i32* %rank, align 4
  %348 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %346, i32 %347)
  %349 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %348, i8* getelementptr inbounds ([5 x i8]* @.str314, i32 0, i32 0))
  %350 = load i32* %size, align 4
  %351 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %349, i32 %350)
  %352 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %351, i8* getelementptr inbounds ([6 x i8]* @.str415, i32 0, i32 0))
  %353 = load i32* %local_nrow, align 4
  %354 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %352, i32 %353)
  br label %355

; <label>:355                                     ; preds = %345, %342
  %356 = load i32* %debug, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

; <label>:358                                     ; preds = %355
  %359 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([20 x i8]* @.str516, i32 0, i32 0))
  %360 = load i32* %start_row, align 4
  %361 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %359, i32 %360)
  %362 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %361, i8* getelementptr inbounds ([10 x i8]* @.str617, i32 0, i32 0))
  %363 = load i32* %stop_row, align 4
  %364 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %362, i32 %363)
  %365 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %364, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %366

; <label>:366                                     ; preds = %358, %355
  %367 = load i32* %debug, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %381

; <label>:369                                     ; preds = %366
  %370 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str213, i32 0, i32 0))
  %371 = load i32* %rank, align 4
  %372 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %370, i32 %371)
  %373 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %372, i8* getelementptr inbounds ([5 x i8]* @.str314, i32 0, i32 0))
  %374 = load i32* %size, align 4
  %375 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %373, i32 %374)
  %376 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %375, i8* getelementptr inbounds ([6 x i8]* @.str415, i32 0, i32 0))
  %377 = load i32* %local_nnz, align 4
  %378 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %376, i32 %377)
  %379 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %378, i8* getelementptr inbounds ([11 x i8]* @.str718, i32 0, i32 0))
  %380 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %379, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %381

; <label>:381                                     ; preds = %369, %366
  %382 = load i32* %start_row, align 4
  %383 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %384 = load %struct.HPC_Sparse_Matrix_STRUCT** %383, align 8
  %385 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %384, i32 0, i32 1
  store i32 %382, i32* %385, align 4
  %386 = load i32* %stop_row, align 4
  %387 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %388 = load %struct.HPC_Sparse_Matrix_STRUCT** %387, align 8
  %389 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %388, i32 0, i32 2
  store i32 %386, i32* %389, align 4
  %390 = load i32* %total_nrow, align 4
  %391 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %392 = load %struct.HPC_Sparse_Matrix_STRUCT** %391, align 8
  %393 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %392, i32 0, i32 3
  store i32 %390, i32* %393, align 4
  %394 = load i64* %total_nnz, align 8
  %395 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %396 = load %struct.HPC_Sparse_Matrix_STRUCT** %395, align 8
  %397 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %396, i32 0, i32 4
  store i64 %394, i64* %397, align 8
  %398 = load i32* %local_nrow, align 4
  %399 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %400 = load %struct.HPC_Sparse_Matrix_STRUCT** %399, align 8
  %401 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %400, i32 0, i32 5
  store i32 %398, i32* %401, align 4
  %402 = load i32* %local_nrow, align 4
  %403 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %404 = load %struct.HPC_Sparse_Matrix_STRUCT** %403, align 8
  %405 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %404, i32 0, i32 6
  store i32 %402, i32* %405, align 4
  %406 = load i32* %local_nnz, align 4
  %407 = load %struct.HPC_Sparse_Matrix_STRUCT*** %4, align 8
  %408 = load %struct.HPC_Sparse_Matrix_STRUCT** %407, align 8
  %409 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %408, i32 0, i32 7
  store i32 %406, i32* %409, align 4
  ret void
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #5

define internal void @_GLOBAL__I_a22() section ".text.startup" {
  call void @__cxx_global_var_init23()
  ret void
}

define internal void @__cxx_global_var_init23() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit1)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit1, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: uwtable
define void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(i8* %data_file, %struct.HPC_Sparse_Matrix_STRUCT** %A, double** %x, double** %b, double** %xexact) #2 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.HPC_Sparse_Matrix_STRUCT**, align 8
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %in_file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total_nrow = alloca i32, align 4
  %total_nnz = alloca i64, align 8
  %l = alloca i32, align 4
  %lp = alloca i32*, align 8
  %v = alloca double, align 8
  %vp = alloca double*, align 8
  %debug = alloca i32, align 4
  %size = alloca i32, align 4
  %rank = alloca i32, align 4
  %n = alloca i32, align 4
  %chunksize = alloca i32, align 4
  %remainder = alloca i32, align 4
  %mp = alloca i32, align 4
  %local_nrow = alloca i32, align 4
  %off = alloca i32, align 4
  %start_row = alloca i32, align 4
  %stop_row = alloca i32, align 4
  %nnz_in_row = alloca i32*, align 8
  %ptr_to_vals_in_row = alloca double**, align 8
  %ptr_to_inds_in_row = alloca i32**, align 8
  %ptr_to_diags = alloca double**, align 8
  %local_nnz = alloca i32, align 4
  %cur_local_row = alloca i32, align 4
  %list_of_vals = alloca double*, align 8
  %list_of_inds = alloca i32*, align 8
  %cur_nnz = alloca i32, align 4
  %xt = alloca double, align 8
  %bt = alloca double, align 8
  %xxt = alloca double, align 8
  store i8* %data_file, i8** %1, align 8
  store %struct.HPC_Sparse_Matrix_STRUCT** %A, %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  store double** %x, double*** %3, align 8
  store double** %b, double*** %4, align 8
  store double** %xexact, double*** %5, align 8
  store i32* %l, i32** %lp, align 8
  store double* %v, double** %vp, align 8
  store i32 0, i32* %debug, align 4
  %6 = load i8** %1, align 8
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str25, i32 0, i32 0), i8* %6)
  %8 = load i8** %1, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8]* @.str126, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %in_file, align 8
  %10 = load %struct._IO_FILE** %in_file, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %0
  %13 = load i8** %1, align 8
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str227, i32 0, i32 0), i8* %13)
  call void @exit(i32 1) #10
  unreachable

; <label>:15                                      ; preds = %0
  %16 = load %struct._IO_FILE** %in_file, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8]* @.str328, i32 0, i32 0), i32* %total_nrow)
  %18 = load %struct._IO_FILE** %in_file, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8]* @.str429, i32 0, i32 0), i64* %total_nnz)
  store i32 1, i32* %size, align 4
  store i32 0, i32* %rank, align 4
  %20 = load i32* %total_nrow, align 4
  store i32 %20, i32* %n, align 4
  %21 = load i32* %n, align 4
  %22 = load i32* %size, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %chunksize, align 4
  %24 = load i32* %n, align 4
  %25 = load i32* %size, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %remainder, align 4
  %27 = load i32* %chunksize, align 4
  store i32 %27, i32* %mp, align 4
  %28 = load i32* %rank, align 4
  %29 = load i32* %remainder, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %15
  %32 = load i32* %mp, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %mp, align 4
  br label %34

; <label>:34                                      ; preds = %31, %15
  %35 = load i32* %mp, align 4
  store i32 %35, i32* %local_nrow, align 4
  %36 = load i32* %rank, align 4
  %37 = load i32* %chunksize, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %36, %38
  store i32 %39, i32* %off, align 4
  %40 = load i32* %rank, align 4
  %41 = load i32* %remainder, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

; <label>:43                                      ; preds = %34
  %44 = load i32* %rank, align 4
  %45 = load i32* %remainder, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32* %off, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %off, align 4
  br label %49

; <label>:49                                      ; preds = %43, %34
  %50 = load i32* %off, align 4
  store i32 %50, i32* %start_row, align 4
  %51 = load i32* %off, align 4
  %52 = load i32* %mp, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %stop_row, align 4
  %55 = load i32* %local_nrow, align 4
  %56 = sext i32 %55 to i64
  %57 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %56, i64 4)
  %58 = extractvalue { i64, i1 } %57, 1
  %59 = extractvalue { i64, i1 } %57, 0
  %60 = select i1 %58, i64 -1, i64 %59
  %61 = call noalias i8* @_Znam(i64 %60) #12
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %nnz_in_row, align 8
  %63 = load i32* %local_nrow, align 4
  %64 = sext i32 %63 to i64
  %65 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %64, i64 8)
  %66 = extractvalue { i64, i1 } %65, 1
  %67 = extractvalue { i64, i1 } %65, 0
  %68 = select i1 %66, i64 -1, i64 %67
  %69 = call noalias i8* @_Znam(i64 %68) #12
  %70 = bitcast i8* %69 to double**
  store double** %70, double*** %ptr_to_vals_in_row, align 8
  %71 = load i32* %local_nrow, align 4
  %72 = sext i32 %71 to i64
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %72, i64 8)
  %74 = extractvalue { i64, i1 } %73, 1
  %75 = extractvalue { i64, i1 } %73, 0
  %76 = select i1 %74, i64 -1, i64 %75
  %77 = call noalias i8* @_Znam(i64 %76) #12
  %78 = bitcast i8* %77 to i32**
  store i32** %78, i32*** %ptr_to_inds_in_row, align 8
  %79 = load i32* %local_nrow, align 4
  %80 = sext i32 %79 to i64
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %80, i64 8)
  %82 = extractvalue { i64, i1 } %81, 1
  %83 = extractvalue { i64, i1 } %81, 0
  %84 = select i1 %82, i64 -1, i64 %83
  %85 = call noalias i8* @_Znam(i64 %84) #12
  %86 = bitcast i8* %85 to double**
  store double** %86, double*** %ptr_to_diags, align 8
  %87 = load i32* %local_nrow, align 4
  %88 = sext i32 %87 to i64
  %89 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %88, i64 8)
  %90 = extractvalue { i64, i1 } %89, 1
  %91 = extractvalue { i64, i1 } %89, 0
  %92 = select i1 %90, i64 -1, i64 %91
  %93 = call noalias i8* @_Znam(i64 %92) #12
  %94 = bitcast i8* %93 to double*
  %95 = load double*** %3, align 8
  store double* %94, double** %95, align 8
  %96 = load i32* %local_nrow, align 4
  %97 = sext i32 %96 to i64
  %98 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %97, i64 8)
  %99 = extractvalue { i64, i1 } %98, 1
  %100 = extractvalue { i64, i1 } %98, 0
  %101 = select i1 %99, i64 -1, i64 %100
  %102 = call noalias i8* @_Znam(i64 %101) #12
  %103 = bitcast i8* %102 to double*
  %104 = load double*** %4, align 8
  store double* %103, double** %104, align 8
  %105 = load i32* %local_nrow, align 4
  %106 = sext i32 %105 to i64
  %107 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %106, i64 8)
  %108 = extractvalue { i64, i1 } %107, 1
  %109 = extractvalue { i64, i1 } %107, 0
  %110 = select i1 %108, i64 -1, i64 %109
  %111 = call noalias i8* @_Znam(i64 %110) #12
  %112 = bitcast i8* %111 to double*
  %113 = load double*** %5, align 8
  store double* %112, double** %113, align 8
  store i32 0, i32* %local_nnz, align 4
  store i32 0, i32* %cur_local_row, align 4
  store i32 0, i32* %i, align 4
  br label %114

; <label>:114                                     ; preds = %141, %49
  %115 = load i32* %i, align 4
  %116 = load i32* %total_nrow, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %144

; <label>:118                                     ; preds = %114
  %119 = load %struct._IO_FILE** %in_file, align 8
  %120 = load i32** %lp, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([3 x i8]* @.str328, i32 0, i32 0), i32* %120)
  %122 = load i32* %start_row, align 4
  %123 = load i32* %i, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %140

; <label>:125                                     ; preds = %118
  %126 = load i32* %i, align 4
  %127 = load i32* %stop_row, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %140

; <label>:129                                     ; preds = %125
  %130 = load i32* %l, align 4
  %131 = load i32* %local_nnz, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %local_nnz, align 4
  %133 = load i32* %l, align 4
  %134 = load i32* %cur_local_row, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32** %nnz_in_row, align 8
  %137 = getelementptr inbounds i32* %136, i64 %135
  store i32 %133, i32* %137, align 4
  %138 = load i32* %cur_local_row, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %cur_local_row, align 4
  br label %140

; <label>:140                                     ; preds = %129, %125, %118
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32* %i, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4
  br label %114

; <label>:144                                     ; preds = %114
  %145 = load i32* %cur_local_row, align 4
  %146 = load i32* %local_nrow, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %144
  br label %151

; <label>:149                                     ; preds = %144
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str530, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str631, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([81 x i8]* @__PRETTY_FUNCTION__._Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_, i32 0, i32 0)) #10
  unreachable
                                                  ; No predecessors!
  br label %151

; <label>:151                                     ; preds = %150, %148
  %152 = load i32* %local_nnz, align 4
  %153 = sext i32 %152 to i64
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %153, i64 8)
  %155 = extractvalue { i64, i1 } %154, 1
  %156 = extractvalue { i64, i1 } %154, 0
  %157 = select i1 %155, i64 -1, i64 %156
  %158 = call noalias i8* @_Znam(i64 %157) #12
  %159 = bitcast i8* %158 to double*
  store double* %159, double** %list_of_vals, align 8
  %160 = load i32* %local_nnz, align 4
  %161 = sext i32 %160 to i64
  %162 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %161, i64 4)
  %163 = extractvalue { i64, i1 } %162, 1
  %164 = extractvalue { i64, i1 } %162, 0
  %165 = select i1 %163, i64 -1, i64 %164
  %166 = call noalias i8* @_Znam(i64 %165) #12
  %167 = bitcast i8* %166 to i32*
  store i32* %167, i32** %list_of_inds, align 8
  %168 = load double** %list_of_vals, align 8
  %169 = load double*** %ptr_to_vals_in_row, align 8
  %170 = getelementptr inbounds double** %169, i64 0
  store double* %168, double** %170, align 8
  %171 = load i32** %list_of_inds, align 8
  %172 = load i32*** %ptr_to_inds_in_row, align 8
  %173 = getelementptr inbounds i32** %172, i64 0
  store i32* %171, i32** %173, align 8
  store i32 1, i32* %i, align 4
  br label %174

; <label>:174                                     ; preds = %215, %151
  %175 = load i32* %i, align 4
  %176 = load i32* %local_nrow, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %218

; <label>:178                                     ; preds = %174
  %179 = load i32* %i, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = load double*** %ptr_to_vals_in_row, align 8
  %183 = getelementptr inbounds double** %182, i64 %181
  %184 = load double** %183, align 8
  %185 = load i32* %i, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = load i32** %nnz_in_row, align 8
  %189 = getelementptr inbounds i32* %188, i64 %187
  %190 = load i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double* %184, i64 %191
  %193 = load i32* %i, align 4
  %194 = sext i32 %193 to i64
  %195 = load double*** %ptr_to_vals_in_row, align 8
  %196 = getelementptr inbounds double** %195, i64 %194
  store double* %192, double** %196, align 8
  %197 = load i32* %i, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = load i32*** %ptr_to_inds_in_row, align 8
  %201 = getelementptr inbounds i32** %200, i64 %199
  %202 = load i32** %201, align 8
  %203 = load i32* %i, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = load i32** %nnz_in_row, align 8
  %207 = getelementptr inbounds i32* %206, i64 %205
  %208 = load i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32* %202, i64 %209
  %211 = load i32* %i, align 4
  %212 = sext i32 %211 to i64
  %213 = load i32*** %ptr_to_inds_in_row, align 8
  %214 = getelementptr inbounds i32** %213, i64 %212
  store i32* %210, i32** %214, align 8
  br label %215

; <label>:215                                     ; preds = %178
  %216 = load i32* %i, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %i, align 4
  br label %174

; <label>:218                                     ; preds = %174
  store i32 0, i32* %cur_local_row, align 4
  store i32 0, i32* %i, align 4
  br label %219

; <label>:219                                     ; preds = %296, %218
  %220 = load i32* %i, align 4
  %221 = load i32* %total_nrow, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %299

; <label>:223                                     ; preds = %219
  %224 = load %struct._IO_FILE** %in_file, align 8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([3 x i8]* @.str328, i32 0, i32 0), i32* %cur_nnz)
  %226 = load i32* %start_row, align 4
  %227 = load i32* %i, align 4
  %228 = icmp sle i32 %226, %227
  br i1 %228, label %229, label %281

; <label>:229                                     ; preds = %223
  %230 = load i32* %i, align 4
  %231 = load i32* %stop_row, align 4
  %232 = icmp sle i32 %230, %231
  br i1 %232, label %233, label %281

; <label>:233                                     ; preds = %229
  %234 = load i32* %debug, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

; <label>:236                                     ; preds = %233
  %237 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str732, i32 0, i32 0))
  %238 = load i32* %rank, align 4
  %239 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %237, i32 %238)
  %240 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %239, i8* getelementptr inbounds ([5 x i8]* @.str833, i32 0, i32 0))
  %241 = load i32* %size, align 4
  %242 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %240, i32 %241)
  %243 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %242, i8* getelementptr inbounds ([14 x i8]* @.str934, i32 0, i32 0))
  %244 = load i32* %i, align 4
  %245 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %243, i32 %244)
  %246 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %245, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %247

; <label>:247                                     ; preds = %236, %233
  store i32 0, i32* %j, align 4
  br label %248

; <label>:248                                     ; preds = %275, %247
  %249 = load i32* %j, align 4
  %250 = load i32* %cur_nnz, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %278

; <label>:252                                     ; preds = %248
  %253 = load %struct._IO_FILE** %in_file, align 8
  %254 = load double** %vp, align 8
  %255 = load i32** %lp, align 8
  %256 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %253, i8* getelementptr inbounds ([7 x i8]* @.str1035, i32 0, i32 0), double* %254, i32* %255)
  %257 = load double* %v, align 8
  %258 = load i32* %j, align 4
  %259 = sext i32 %258 to i64
  %260 = load i32* %cur_local_row, align 4
  %261 = sext i32 %260 to i64
  %262 = load double*** %ptr_to_vals_in_row, align 8
  %263 = getelementptr inbounds double** %262, i64 %261
  %264 = load double** %263, align 8
  %265 = getelementptr inbounds double* %264, i64 %259
  store double %257, double* %265, align 8
  %266 = load i32* %l, align 4
  %267 = load i32* %j, align 4
  %268 = sext i32 %267 to i64
  %269 = load i32* %cur_local_row, align 4
  %270 = sext i32 %269 to i64
  %271 = load i32*** %ptr_to_inds_in_row, align 8
  %272 = getelementptr inbounds i32** %271, i64 %270
  %273 = load i32** %272, align 8
  %274 = getelementptr inbounds i32* %273, i64 %268
  store i32 %266, i32* %274, align 4
  br label %275

; <label>:275                                     ; preds = %252
  %276 = load i32* %j, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %j, align 4
  br label %248

; <label>:278                                     ; preds = %248
  %279 = load i32* %cur_local_row, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %cur_local_row, align 4
  br label %295

; <label>:281                                     ; preds = %229, %223
  store i32 0, i32* %j, align 4
  br label %282

; <label>:282                                     ; preds = %291, %281
  %283 = load i32* %j, align 4
  %284 = load i32* %cur_nnz, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %294

; <label>:286                                     ; preds = %282
  %287 = load %struct._IO_FILE** %in_file, align 8
  %288 = load double** %vp, align 8
  %289 = load i32** %lp, align 8
  %290 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([7 x i8]* @.str1035, i32 0, i32 0), double* %288, i32* %289)
  br label %291

; <label>:291                                     ; preds = %286
  %292 = load i32* %j, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %j, align 4
  br label %282

; <label>:294                                     ; preds = %282
  br label %295

; <label>:295                                     ; preds = %294, %278
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32* %i, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %i, align 4
  br label %219

; <label>:299                                     ; preds = %219
  store i32 0, i32* %cur_local_row, align 4
  store i32 0, i32* %i, align 4
  br label %300

; <label>:300                                     ; preds = %356, %299
  %301 = load i32* %i, align 4
  %302 = load i32* %total_nrow, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %359

; <label>:304                                     ; preds = %300
  %305 = load i32* %start_row, align 4
  %306 = load i32* %i, align 4
  %307 = icmp sle i32 %305, %306
  br i1 %307, label %308, label %349

; <label>:308                                     ; preds = %304
  %309 = load i32* %i, align 4
  %310 = load i32* %stop_row, align 4
  %311 = icmp sle i32 %309, %310
  br i1 %311, label %312, label %349

; <label>:312                                     ; preds = %308
  %313 = load i32* %debug, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %326

; <label>:315                                     ; preds = %312
  %316 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str732, i32 0, i32 0))
  %317 = load i32* %rank, align 4
  %318 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %316, i32 %317)
  %319 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %318, i8* getelementptr inbounds ([5 x i8]* @.str833, i32 0, i32 0))
  %320 = load i32* %size, align 4
  %321 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %319, i32 %320)
  %322 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %321, i8* getelementptr inbounds ([14 x i8]* @.str1136, i32 0, i32 0))
  %323 = load i32* %i, align 4
  %324 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %322, i32 %323)
  %325 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %324, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %326

; <label>:326                                     ; preds = %315, %312
  %327 = load %struct._IO_FILE** %in_file, align 8
  %328 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %327, i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), double* %xt, double* %bt, double* %xxt)
  %329 = load double* %xt, align 8
  %330 = load i32* %cur_local_row, align 4
  %331 = sext i32 %330 to i64
  %332 = load double*** %3, align 8
  %333 = load double** %332, align 8
  %334 = getelementptr inbounds double* %333, i64 %331
  store double %329, double* %334, align 8
  %335 = load double* %bt, align 8
  %336 = load i32* %cur_local_row, align 4
  %337 = sext i32 %336 to i64
  %338 = load double*** %4, align 8
  %339 = load double** %338, align 8
  %340 = getelementptr inbounds double* %339, i64 %337
  store double %335, double* %340, align 8
  %341 = load double* %xxt, align 8
  %342 = load i32* %cur_local_row, align 4
  %343 = sext i32 %342 to i64
  %344 = load double*** %5, align 8
  %345 = load double** %344, align 8
  %346 = getelementptr inbounds double* %345, i64 %343
  store double %341, double* %346, align 8
  %347 = load i32* %cur_local_row, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %cur_local_row, align 4
  br label %355

; <label>:349                                     ; preds = %308, %304
  %350 = load %struct._IO_FILE** %in_file, align 8
  %351 = load double** %vp, align 8
  %352 = load double** %vp, align 8
  %353 = load double** %vp, align 8
  %354 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %350, i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), double* %351, double* %352, double* %353)
  br label %355

; <label>:355                                     ; preds = %349, %326
  br label %356

; <label>:356                                     ; preds = %355
  %357 = load i32* %i, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %i, align 4
  br label %300

; <label>:359                                     ; preds = %300
  %360 = load %struct._IO_FILE** %in_file, align 8
  %361 = call i32 @fclose(%struct._IO_FILE* %360)
  %362 = load i32* %debug, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

; <label>:364                                     ; preds = %359
  %365 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str732, i32 0, i32 0))
  %366 = load i32* %rank, align 4
  %367 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %365, i32 %366)
  %368 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %367, i8* getelementptr inbounds ([5 x i8]* @.str833, i32 0, i32 0))
  %369 = load i32* %size, align 4
  %370 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %368, i32 %369)
  %371 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %370, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0))
  %372 = load i32* %local_nrow, align 4
  %373 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %371, i32 %372)
  br label %374

; <label>:374                                     ; preds = %364, %359
  %375 = load i32* %debug, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

; <label>:377                                     ; preds = %374
  %378 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([20 x i8]* @.str14, i32 0, i32 0))
  %379 = load i32* %start_row, align 4
  %380 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %378, i32 %379)
  %381 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %380, i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0))
  %382 = load i32* %stop_row, align 4
  %383 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %381, i32 %382)
  %384 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %383, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %385

; <label>:385                                     ; preds = %377, %374
  %386 = load i32* %debug, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %400

; <label>:388                                     ; preds = %385
  %389 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([9 x i8]* @.str732, i32 0, i32 0))
  %390 = load i32* %rank, align 4
  %391 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %389, i32 %390)
  %392 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %391, i8* getelementptr inbounds ([5 x i8]* @.str833, i32 0, i32 0))
  %393 = load i32* %size, align 4
  %394 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %392, i32 %393)
  %395 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %394, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0))
  %396 = load i32* %local_nnz, align 4
  %397 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %395, i32 %396)
  %398 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %397, i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0))
  %399 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %398, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %400

; <label>:400                                     ; preds = %388, %385
  %401 = call noalias i8* @_Znwm(i64 96) #12
  %402 = bitcast i8* %401 to %struct.HPC_Sparse_Matrix_STRUCT*
  %403 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  store %struct.HPC_Sparse_Matrix_STRUCT* %402, %struct.HPC_Sparse_Matrix_STRUCT** %403, align 8
  %404 = load i32* %start_row, align 4
  %405 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %406 = load %struct.HPC_Sparse_Matrix_STRUCT** %405, align 8
  %407 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %406, i32 0, i32 1
  store i32 %404, i32* %407, align 4
  %408 = load i32* %stop_row, align 4
  %409 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %410 = load %struct.HPC_Sparse_Matrix_STRUCT** %409, align 8
  %411 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %410, i32 0, i32 2
  store i32 %408, i32* %411, align 4
  %412 = load i32* %total_nrow, align 4
  %413 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %414 = load %struct.HPC_Sparse_Matrix_STRUCT** %413, align 8
  %415 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %414, i32 0, i32 3
  store i32 %412, i32* %415, align 4
  %416 = load i64* %total_nnz, align 8
  %417 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %418 = load %struct.HPC_Sparse_Matrix_STRUCT** %417, align 8
  %419 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %418, i32 0, i32 4
  store i64 %416, i64* %419, align 8
  %420 = load i32* %local_nrow, align 4
  %421 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %422 = load %struct.HPC_Sparse_Matrix_STRUCT** %421, align 8
  %423 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %422, i32 0, i32 5
  store i32 %420, i32* %423, align 4
  %424 = load i32* %local_nrow, align 4
  %425 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %426 = load %struct.HPC_Sparse_Matrix_STRUCT** %425, align 8
  %427 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %426, i32 0, i32 6
  store i32 %424, i32* %427, align 4
  %428 = load i32* %local_nnz, align 4
  %429 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %430 = load %struct.HPC_Sparse_Matrix_STRUCT** %429, align 8
  %431 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %430, i32 0, i32 7
  store i32 %428, i32* %431, align 4
  %432 = load i32** %nnz_in_row, align 8
  %433 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %434 = load %struct.HPC_Sparse_Matrix_STRUCT** %433, align 8
  %435 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %434, i32 0, i32 8
  store i32* %432, i32** %435, align 8
  %436 = load double*** %ptr_to_vals_in_row, align 8
  %437 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %438 = load %struct.HPC_Sparse_Matrix_STRUCT** %437, align 8
  %439 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %438, i32 0, i32 9
  store double** %436, double*** %439, align 8
  %440 = load i32*** %ptr_to_inds_in_row, align 8
  %441 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %442 = load %struct.HPC_Sparse_Matrix_STRUCT** %441, align 8
  %443 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %442, i32 0, i32 10
  store i32** %440, i32*** %443, align 8
  %444 = load double*** %ptr_to_diags, align 8
  %445 = load %struct.HPC_Sparse_Matrix_STRUCT*** %2, align 8
  %446 = load %struct.HPC_Sparse_Matrix_STRUCT** %445, align 8
  %447 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %446, i32 0, i32 11
  store double** %444, double*** %447, align 8
  ret void
}

declare i32 @printf(i8*, ...) #0

declare %struct._IO_FILE* @fopen(i8*, i8*) #0

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #0

declare i32 @fclose(%struct._IO_FILE*) #0

define internal void @_GLOBAL__I_a40() section ".text.startup" {
  call void @__cxx_global_var_init41()
  ret void
}

define internal void @__cxx_global_var_init41() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit24)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit24, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: uwtable
define i32 @_Z18dump_matlab_matrixP24HPC_Sparse_Matrix_STRUCTi(%struct.HPC_Sparse_Matrix_STRUCT* %A, i32 %rank) #2 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %3 = alloca i32, align 4
  %nrow = alloca i32, align 4
  %start_row = alloca i32, align 4
  %handle = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %cur_vals = alloca double*, align 8
  %cur_inds = alloca i32*, align 8
  %cur_nnz = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.HPC_Sparse_Matrix_STRUCT* %A, %struct.HPC_Sparse_Matrix_STRUCT** %2, align 8
  store i32 %rank, i32* %3, align 4
  %4 = load %struct.HPC_Sparse_Matrix_STRUCT** %2, align 8
  %5 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %4, i32 0, i32 5
  %6 = load i32* %5, align 4
  store i32 %6, i32* %nrow, align 4
  %7 = load i32* %nrow, align 4
  %8 = load i32* %3, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %start_row, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %handle, align 8
  %10 = load i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str143, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %handle, align 8
  br label %33

; <label>:14                                      ; preds = %0
  %15 = load i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8]* @.str244, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str143, i32 0, i32 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %handle, align 8
  br label %32

; <label>:19                                      ; preds = %14
  %20 = load i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %19
  %23 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8]* @.str345, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str143, i32 0, i32 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** %handle, align 8
  br label %31

; <label>:24                                      ; preds = %19
  %25 = load i32* %3, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24
  %28 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8]* @.str446, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str143, i32 0, i32 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %handle, align 8
  br label %30

; <label>:29                                      ; preds = %24
  store i32 0, i32* %1
  br label %92

; <label>:30                                      ; preds = %27
  br label %31

; <label>:31                                      ; preds = %30, %22
  br label %32

; <label>:32                                      ; preds = %31, %17
  br label %33

; <label>:33                                      ; preds = %32, %12
  store i32 0, i32* %i, align 4
  br label %34

; <label>:34                                      ; preds = %86, %33
  %35 = load i32* %i, align 4
  %36 = load i32* %nrow, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %89

; <label>:38                                      ; preds = %34
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.HPC_Sparse_Matrix_STRUCT** %2, align 8
  %42 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %41, i32 0, i32 9
  %43 = load double*** %42, align 8
  %44 = getelementptr inbounds double** %43, i64 %40
  %45 = load double** %44, align 8
  store double* %45, double** %cur_vals, align 8
  %46 = load i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.HPC_Sparse_Matrix_STRUCT** %2, align 8
  %49 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %48, i32 0, i32 10
  %50 = load i32*** %49, align 8
  %51 = getelementptr inbounds i32** %50, i64 %47
  %52 = load i32** %51, align 8
  store i32* %52, i32** %cur_inds, align 8
  %53 = load i32* %i, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.HPC_Sparse_Matrix_STRUCT** %2, align 8
  %56 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %55, i32 0, i32 8
  %57 = load i32** %56, align 8
  %58 = getelementptr inbounds i32* %57, i64 %54
  %59 = load i32* %58, align 4
  store i32 %59, i32* %cur_nnz, align 4
  store i32 0, i32* %j, align 4
  br label %60

; <label>:60                                      ; preds = %82, %38
  %61 = load i32* %j, align 4
  %62 = load i32* %cur_nnz, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %85

; <label>:64                                      ; preds = %60
  %65 = load %struct._IO_FILE** %handle, align 8
  %66 = load i32* %start_row, align 4
  %67 = load i32* %i, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = load i32* %j, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32** %cur_inds, align 8
  %73 = getelementptr inbounds i32* %72, i64 %71
  %74 = load i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32* %j, align 4
  %77 = sext i32 %76 to i64
  %78 = load double** %cur_vals, align 8
  %79 = getelementptr inbounds double* %78, i64 %77
  %80 = load double* %79, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([16 x i8]* @.str547, i32 0, i32 0), i32 %69, i32 %75, double %80)
  br label %82

; <label>:82                                      ; preds = %64
  %83 = load i32* %j, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %j, align 4
  br label %60

; <label>:85                                      ; preds = %60
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load i32* %i, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %i, align 4
  br label %34

; <label>:89                                      ; preds = %34
  %90 = load %struct._IO_FILE** %handle, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* %90)
  store i32 0, i32* %1
  br label %92

; <label>:92                                      ; preds = %89, %29
  %93 = load i32* %1
  ret i32 %93
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

; Function Attrs: uwtable
define i32 @_Z5HPCCGP24HPC_Sparse_Matrix_STRUCTPKdPdidRiRdS3_(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %b, double* %x, i32 %max_iter, double %tolerance, i32* %niters, double* %normr, double* %times) #2 {
  %1 = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %t_begin = alloca double, align 8
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %t3 = alloca double, align 8
  %t4 = alloca double, align 8
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %r = alloca double*, align 8
  %p = alloca double*, align 8
  %Ap = alloca double*, align 8
  %rtrans = alloca double, align 8
  %oldrtrans = alloca double, align 8
  %rank = alloca i32, align 4
  %print_freq = alloca i32, align 4
  %k = alloca i32, align 4
  %beta = alloca double, align 8
  %alpha = alloca double, align 8
  store %struct.HPC_Sparse_Matrix_STRUCT* %A, %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  store double* %b, double** %2, align 8
  store double* %x, double** %3, align 8
  store i32 %max_iter, i32* %4, align 4
  store double %tolerance, double* %5, align 8
  store i32* %niters, i32** %6, align 8
  store double* %normr, double** %7, align 8
  store double* %times, double** %8, align 8
  %9 = call double @_Z7mytimerv()
  store double %9, double* %t_begin, align 8
  store double 0.000000e+00, double* %t0, align 8
  store double 0.000000e+00, double* %t1, align 8
  store double 0.000000e+00, double* %t2, align 8
  store double 0.000000e+00, double* %t3, align 8
  store double 0.000000e+00, double* %t4, align 8
  %10 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %11 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %10, i32 0, i32 5
  %12 = load i32* %11, align 4
  store i32 %12, i32* %nrow, align 4
  %13 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %14 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %13, i32 0, i32 6
  %15 = load i32* %14, align 4
  store i32 %15, i32* %ncol, align 4
  %16 = load i32* %nrow, align 4
  %17 = sext i32 %16 to i64
  %18 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %17, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %22 = call noalias i8* @_Znam(i64 %21) #12
  %23 = bitcast i8* %22 to double*
  store double* %23, double** %r, align 8
  %24 = load i32* %ncol, align 4
  %25 = sext i32 %24 to i64
  %26 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %25, i64 8)
  %27 = extractvalue { i64, i1 } %26, 1
  %28 = extractvalue { i64, i1 } %26, 0
  %29 = select i1 %27, i64 -1, i64 %28
  %30 = call noalias i8* @_Znam(i64 %29) #12
  %31 = bitcast i8* %30 to double*
  store double* %31, double** %p, align 8
  %32 = load i32* %nrow, align 4
  %33 = sext i32 %32 to i64
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %33, i64 8)
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  %37 = select i1 %35, i64 -1, i64 %36
  %38 = call noalias i8* @_Znam(i64 %37) #12
  %39 = bitcast i8* %38 to double*
  store double* %39, double** %Ap, align 8
  %40 = load double** %7, align 8
  store double 0.000000e+00, double* %40, align 8
  store double 0.000000e+00, double* %rtrans, align 8
  store double 0.000000e+00, double* %oldrtrans, align 8
  store i32 0, i32* %rank, align 4
  %41 = load i32* %4, align 4
  %42 = sdiv i32 %41, 10
  store i32 %42, i32* %print_freq, align 4
  %43 = load i32* %print_freq, align 4
  %44 = icmp sgt i32 %43, 50
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %0
  store i32 50, i32* %print_freq, align 4
  br label %46

; <label>:46                                      ; preds = %45, %0
  %47 = load i32* %print_freq, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %46
  store i32 1, i32* %print_freq, align 4
  br label %50

; <label>:50                                      ; preds = %49, %46
  %51 = call double @_Z7mytimerv()
  store double %51, double* %t0, align 8
  %52 = load i32* %nrow, align 4
  %53 = load double** %3, align 8
  %54 = load double** %3, align 8
  %55 = load double** %p, align 8
  %56 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %52, double 1.000000e+00, double* %53, double 0.000000e+00, double* %54, double* %55)
  %57 = call double @_Z7mytimerv()
  %58 = load double* %t0, align 8
  %59 = fsub double %57, %58
  %60 = load double* %t2, align 8
  %61 = fadd double %60, %59
  store double %61, double* %t2, align 8
  %62 = call double @_Z7mytimerv()
  store double %62, double* %t0, align 8
  %63 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %64 = load double** %p, align 8
  %65 = load double** %Ap, align 8
  %66 = call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %63, double* %64, double* %65)
  %67 = call double @_Z7mytimerv()
  %68 = load double* %t0, align 8
  %69 = fsub double %67, %68
  %70 = load double* %t3, align 8
  %71 = fadd double %70, %69
  store double %71, double* %t3, align 8
  %72 = call double @_Z7mytimerv()
  store double %72, double* %t0, align 8
  %73 = load i32* %nrow, align 4
  %74 = load double** %2, align 8
  %75 = load double** %Ap, align 8
  %76 = load double** %r, align 8
  %77 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %73, double 1.000000e+00, double* %74, double -1.000000e+00, double* %75, double* %76)
  %78 = call double @_Z7mytimerv()
  %79 = load double* %t0, align 8
  %80 = fsub double %78, %79
  %81 = load double* %t2, align 8
  %82 = fadd double %81, %80
  store double %82, double* %t2, align 8
  %83 = call double @_Z7mytimerv()
  store double %83, double* %t0, align 8
  %84 = load i32* %nrow, align 4
  %85 = load double** %r, align 8
  %86 = load double** %r, align 8
  %87 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %84, double* %85, double* %86, double* %rtrans, double* %t4)
  %88 = call double @_Z7mytimerv()
  %89 = load double* %t0, align 8
  %90 = fsub double %88, %89
  %91 = load double* %t1, align 8
  %92 = fadd double %91, %90
  store double %92, double* %t1, align 8
  %93 = load double* %rtrans, align 8
  %94 = call double @sqrt(double %93) #1
  %95 = load double** %7, align 8
  store double %94, double* %95, align 8
  %96 = load i32* %rank, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

; <label>:98                                      ; preds = %50
  %99 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([20 x i8]* @.str51, i32 0, i32 0))
  %100 = load double** %7, align 8
  %101 = load double* %100, align 8
  %102 = call %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %99, double %101)
  %103 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %102, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %104

; <label>:104                                     ; preds = %98, %50
  store i32 1, i32* %k, align 4
  br label %105

; <label>:105                                     ; preds = %226, %104
  %106 = load i32* %k, align 4
  %107 = load i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %229

; <label>:109                                     ; preds = %105
  %110 = load double** %7, align 8
  %111 = load double* %110, align 8
  %112 = load double* %5, align 8
  %113 = fcmp ogt double %111, %112
  br i1 %113, label %114, label %229

; <label>:114                                     ; preds = %109
  %115 = load i32* %k, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %129

; <label>:117                                     ; preds = %114
  %118 = call double @_Z7mytimerv()
  store double %118, double* %t0, align 8
  %119 = load i32* %nrow, align 4
  %120 = load double** %r, align 8
  %121 = load double** %r, align 8
  %122 = load double** %p, align 8
  %123 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %119, double 1.000000e+00, double* %120, double 0.000000e+00, double* %121, double* %122)
  %124 = call double @_Z7mytimerv()
  %125 = load double* %t0, align 8
  %126 = fsub double %124, %125
  %127 = load double* %t2, align 8
  %128 = fadd double %127, %126
  store double %128, double* %t2, align 8
  br label %156

; <label>:129                                     ; preds = %114
  %130 = load double* %rtrans, align 8
  store double %130, double* %oldrtrans, align 8
  %131 = call double @_Z7mytimerv()
  store double %131, double* %t0, align 8
  %132 = load i32* %nrow, align 4
  %133 = load double** %r, align 8
  %134 = load double** %r, align 8
  %135 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %132, double* %133, double* %134, double* %rtrans, double* %t4)
  %136 = call double @_Z7mytimerv()
  %137 = load double* %t0, align 8
  %138 = fsub double %136, %137
  %139 = load double* %t1, align 8
  %140 = fadd double %139, %138
  store double %140, double* %t1, align 8
  %141 = load double* %rtrans, align 8
  %142 = load double* %oldrtrans, align 8
  %143 = fdiv double %141, %142
  store double %143, double* %beta, align 8
  %144 = call double @_Z7mytimerv()
  store double %144, double* %t0, align 8
  %145 = load i32* %nrow, align 4
  %146 = load double** %r, align 8
  %147 = load double* %beta, align 8
  %148 = load double** %p, align 8
  %149 = load double** %p, align 8
  %150 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %145, double 1.000000e+00, double* %146, double %147, double* %148, double* %149)
  %151 = call double @_Z7mytimerv()
  %152 = load double* %t0, align 8
  %153 = fsub double %151, %152
  %154 = load double* %t2, align 8
  %155 = fadd double %154, %153
  store double %155, double* %t2, align 8
  br label %156

; <label>:156                                     ; preds = %129, %117
  %157 = load double* %rtrans, align 8
  %158 = call double @sqrt(double %157) #1
  %159 = load double** %7, align 8
  store double %158, double* %159, align 8
  %160 = load i32* %rank, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %181

; <label>:162                                     ; preds = %156
  %163 = load i32* %k, align 4
  %164 = load i32* %print_freq, align 4
  %165 = srem i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %172, label %167

; <label>:167                                     ; preds = %162
  %168 = load i32* %k, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32* %4, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %181

; <label>:172                                     ; preds = %167, %162
  %173 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str152, i32 0, i32 0))
  %174 = load i32* %k, align 4
  %175 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %173, i32 %174)
  %176 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %175, i8* getelementptr inbounds ([15 x i8]* @.str253, i32 0, i32 0))
  %177 = load double** %7, align 8
  %178 = load double* %177, align 8
  %179 = call %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %176, double %178)
  %180 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %179, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %181

; <label>:181                                     ; preds = %172, %167, %156
  %182 = call double @_Z7mytimerv()
  store double %182, double* %t0, align 8
  %183 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %184 = load double** %p, align 8
  %185 = load double** %Ap, align 8
  %186 = call i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %183, double* %184, double* %185)
  %187 = call double @_Z7mytimerv()
  %188 = load double* %t0, align 8
  %189 = fsub double %187, %188
  %190 = load double* %t3, align 8
  %191 = fadd double %190, %189
  store double %191, double* %t3, align 8
  store double 0.000000e+00, double* %alpha, align 8
  %192 = call double @_Z7mytimerv()
  store double %192, double* %t0, align 8
  %193 = load i32* %nrow, align 4
  %194 = load double** %p, align 8
  %195 = load double** %Ap, align 8
  %196 = call i32 @_Z4ddotiPKdS0_PdRd(i32 %193, double* %194, double* %195, double* %alpha, double* %t4)
  %197 = call double @_Z7mytimerv()
  %198 = load double* %t0, align 8
  %199 = fsub double %197, %198
  %200 = load double* %t1, align 8
  %201 = fadd double %200, %199
  store double %201, double* %t1, align 8
  %202 = load double* %rtrans, align 8
  %203 = load double* %alpha, align 8
  %204 = fdiv double %202, %203
  store double %204, double* %alpha, align 8
  %205 = call double @_Z7mytimerv()
  store double %205, double* %t0, align 8
  %206 = load i32* %nrow, align 4
  %207 = load double** %3, align 8
  %208 = load double* %alpha, align 8
  %209 = load double** %p, align 8
  %210 = load double** %3, align 8
  %211 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %206, double 1.000000e+00, double* %207, double %208, double* %209, double* %210)
  %212 = load i32* %nrow, align 4
  %213 = load double** %r, align 8
  %214 = load double* %alpha, align 8
  %215 = fsub double -0.000000e+00, %214
  %216 = load double** %Ap, align 8
  %217 = load double** %r, align 8
  %218 = call i32 @_Z6waxpbyidPKddS0_Pd(i32 %212, double 1.000000e+00, double* %213, double %215, double* %216, double* %217)
  %219 = call double @_Z7mytimerv()
  %220 = load double* %t0, align 8
  %221 = fsub double %219, %220
  %222 = load double* %t2, align 8
  %223 = fadd double %222, %221
  store double %223, double* %t2, align 8
  %224 = load i32* %k, align 4
  %225 = load i32** %6, align 8
  store i32 %224, i32* %225, align 4
  br label %226

; <label>:226                                     ; preds = %181
  %227 = load i32* %k, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %k, align 4
  br label %105

; <label>:229                                     ; preds = %109, %105
  %230 = load double* %t1, align 8
  %231 = load double** %8, align 8
  %232 = getelementptr inbounds double* %231, i64 1
  store double %230, double* %232, align 8
  %233 = load double* %t2, align 8
  %234 = load double** %8, align 8
  %235 = getelementptr inbounds double* %234, i64 2
  store double %233, double* %235, align 8
  %236 = load double* %t3, align 8
  %237 = load double** %8, align 8
  %238 = getelementptr inbounds double* %237, i64 3
  store double %236, double* %238, align 8
  %239 = load double* %t4, align 8
  %240 = load double** %8, align 8
  %241 = getelementptr inbounds double* %240, i64 4
  store double %239, double* %241, align 8
  %242 = load double** %p, align 8
  %243 = icmp eq double* %242, null
  br i1 %243, label %246, label %244

; <label>:244                                     ; preds = %229
  %245 = bitcast double* %242 to i8*
  call void @_ZdaPv(i8* %245) #13
  br label %246

; <label>:246                                     ; preds = %244, %229
  %247 = load double** %Ap, align 8
  %248 = icmp eq double* %247, null
  br i1 %248, label %251, label %249

; <label>:249                                     ; preds = %246
  %250 = bitcast double* %247 to i8*
  call void @_ZdaPv(i8* %250) #13
  br label %251

; <label>:251                                     ; preds = %249, %246
  %252 = load double** %r, align 8
  %253 = icmp eq double* %252, null
  br i1 %253, label %256, label %254

; <label>:254                                     ; preds = %251
  %255 = bitcast double* %252 to i8*
  call void @_ZdaPv(i8* %255) #13
  br label %256

; <label>:256                                     ; preds = %254, %251
  %257 = call double @_Z7mytimerv()
  %258 = load double* %t_begin, align 8
  %259 = fsub double %257, %258
  %260 = load double** %8, align 8
  %261 = getelementptr inbounds double* %260, i64 0
  store double %259, double* %261, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare double @sqrt(double) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #8

define internal void @_GLOBAL__I_a57() section ".text.startup" {
  call void @__cxx_global_var_init58()
  ret void
}

define internal void @__cxx_global_var_init58() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit50)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit50, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: nounwind uwtable
define double @_Z7mytimerv() #9 {
  %ruse = alloca %struct.rusage, align 8
  %1 = call i32 @getrusage(i32 0, %struct.rusage* %ruse) #1
  %2 = getelementptr inbounds %struct.rusage* %ruse, i32 0, i32 0
  %3 = getelementptr inbounds %struct.timeval* %2, i32 0, i32 0
  %4 = load i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.rusage* %ruse, i32 0, i32 0
  %7 = getelementptr inbounds %struct.timeval* %6, i32 0, i32 1
  %8 = load i64* %7, align 8
  %9 = sitofp i64 %8 to double
  %10 = fdiv double %9, 1.000000e+06
  %11 = fadd double %5, %10
  ret double %11
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #7

; Function Attrs: nounwind uwtable
define i32 @_Z6waxpbyidPKddS0_Pd(i32 %n, double %alpha, double* %x, double %beta, double* %y, double* %w) #9 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store double %alpha, double* %2, align 8
  store double* %x, double** %3, align 8
  store double %beta, double* %4, align 8
  store double* %y, double** %5, align 8
  store double* %w, double** %6, align 8
  %7 = load double* %2, align 8
  %8 = fcmp oeq double %7, 1.000000e+00
  br i1 %8, label %9, label %36

; <label>:9                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %32, %9
  %11 = load i32* %i, align 4
  %12 = load i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

; <label>:14                                      ; preds = %10
  %15 = load i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load double** %3, align 8
  %18 = getelementptr inbounds double* %17, i64 %16
  %19 = load double* %18, align 8
  %20 = load double* %4, align 8
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load double** %5, align 8
  %24 = getelementptr inbounds double* %23, i64 %22
  %25 = load double* %24, align 8
  %26 = fmul double %20, %25
  %27 = fadd double %19, %26
  %28 = load i32* %i, align 4
  %29 = sext i32 %28 to i64
  %30 = load double** %6, align 8
  %31 = getelementptr inbounds double* %30, i64 %29
  store double %27, double* %31, align 8
  br label %32

; <label>:32                                      ; preds = %14
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  br label %10

; <label>:35                                      ; preds = %10
  br label %96

; <label>:36                                      ; preds = %0
  %37 = load double* %4, align 8
  %38 = fcmp oeq double %37, 1.000000e+00
  br i1 %38, label %39, label %66

; <label>:39                                      ; preds = %36
  store i32 0, i32* %i1, align 4
  br label %40

; <label>:40                                      ; preds = %62, %39
  %41 = load i32* %i1, align 4
  %42 = load i32* %1, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

; <label>:44                                      ; preds = %40
  %45 = load double* %2, align 8
  %46 = load i32* %i1, align 4
  %47 = sext i32 %46 to i64
  %48 = load double** %3, align 8
  %49 = getelementptr inbounds double* %48, i64 %47
  %50 = load double* %49, align 8
  %51 = fmul double %45, %50
  %52 = load i32* %i1, align 4
  %53 = sext i32 %52 to i64
  %54 = load double** %5, align 8
  %55 = getelementptr inbounds double* %54, i64 %53
  %56 = load double* %55, align 8
  %57 = fadd double %51, %56
  %58 = load i32* %i1, align 4
  %59 = sext i32 %58 to i64
  %60 = load double** %6, align 8
  %61 = getelementptr inbounds double* %60, i64 %59
  store double %57, double* %61, align 8
  br label %62

; <label>:62                                      ; preds = %44
  %63 = load i32* %i1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i1, align 4
  br label %40

; <label>:65                                      ; preds = %40
  br label %95

; <label>:66                                      ; preds = %36
  store i32 0, i32* %i2, align 4
  br label %67

; <label>:67                                      ; preds = %91, %66
  %68 = load i32* %i2, align 4
  %69 = load i32* %1, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %94

; <label>:71                                      ; preds = %67
  %72 = load double* %2, align 8
  %73 = load i32* %i2, align 4
  %74 = sext i32 %73 to i64
  %75 = load double** %3, align 8
  %76 = getelementptr inbounds double* %75, i64 %74
  %77 = load double* %76, align 8
  %78 = fmul double %72, %77
  %79 = load double* %4, align 8
  %80 = load i32* %i2, align 4
  %81 = sext i32 %80 to i64
  %82 = load double** %5, align 8
  %83 = getelementptr inbounds double* %82, i64 %81
  %84 = load double* %83, align 8
  %85 = fmul double %79, %84
  %86 = fadd double %78, %85
  %87 = load i32* %i2, align 4
  %88 = sext i32 %87 to i64
  %89 = load double** %6, align 8
  %90 = getelementptr inbounds double* %89, i64 %88
  store double %86, double* %90, align 8
  br label %91

; <label>:91                                      ; preds = %71
  %92 = load i32* %i2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i2, align 4
  br label %67

; <label>:94                                      ; preds = %67
  br label %95

; <label>:95                                      ; preds = %94, %65
  br label %96

; <label>:96                                      ; preds = %95, %35
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @_Z12HPC_sparsemvP24HPC_Sparse_Matrix_STRUCTPKdPd(%struct.HPC_Sparse_Matrix_STRUCT* %A, double* %x, double* %y) #9 {
  %1 = alloca %struct.HPC_Sparse_Matrix_STRUCT*, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %nrow = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  %cur_vals = alloca double*, align 8
  %cur_inds = alloca i32*, align 8
  %cur_nnz = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.HPC_Sparse_Matrix_STRUCT* %A, %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  store double* %x, double** %2, align 8
  store double* %y, double** %3, align 8
  %4 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %5 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %4, i32 0, i32 5
  %6 = load i32* %5, align 4
  store i32 %6, i32* %nrow, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %64, %0
  %8 = load i32* %i, align 4
  %9 = load i32* %nrow, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %67

; <label>:11                                      ; preds = %7
  store double 0.000000e+00, double* %sum, align 8
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %15 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %14, i32 0, i32 9
  %16 = load double*** %15, align 8
  %17 = getelementptr inbounds double** %16, i64 %13
  %18 = load double** %17, align 8
  store double* %18, double** %cur_vals, align 8
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %22 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %21, i32 0, i32 10
  %23 = load i32*** %22, align 8
  %24 = getelementptr inbounds i32** %23, i64 %20
  %25 = load i32** %24, align 8
  store i32* %25, i32** %cur_inds, align 8
  %26 = load i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.HPC_Sparse_Matrix_STRUCT** %1, align 8
  %29 = getelementptr inbounds %struct.HPC_Sparse_Matrix_STRUCT* %28, i32 0, i32 8
  %30 = load i32** %29, align 8
  %31 = getelementptr inbounds i32* %30, i64 %27
  %32 = load i32* %31, align 4
  store i32 %32, i32* %cur_nnz, align 4
  store i32 0, i32* %j, align 4
  br label %33

; <label>:33                                      ; preds = %55, %11
  %34 = load i32* %j, align 4
  %35 = load i32* %cur_nnz, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

; <label>:37                                      ; preds = %33
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = load double** %cur_vals, align 8
  %41 = getelementptr inbounds double* %40, i64 %39
  %42 = load double* %41, align 8
  %43 = load i32* %j, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32** %cur_inds, align 8
  %46 = getelementptr inbounds i32* %45, i64 %44
  %47 = load i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load double** %2, align 8
  %50 = getelementptr inbounds double* %49, i64 %48
  %51 = load double* %50, align 8
  %52 = fmul double %42, %51
  %53 = load double* %sum, align 8
  %54 = fadd double %53, %52
  store double %54, double* %sum, align 8
  br label %55

; <label>:55                                      ; preds = %37
  %56 = load i32* %j, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %j, align 4
  br label %33

; <label>:58                                      ; preds = %33
  %59 = load double* %sum, align 8
  %60 = load i32* %i, align 4
  %61 = sext i32 %60 to i64
  %62 = load double** %3, align 8
  %63 = getelementptr inbounds double* %62, i64 %61
  store double %59, double* %63, align 8
  br label %64

; <label>:64                                      ; preds = %58
  %65 = load i32* %i, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4
  br label %7

; <label>:67                                      ; preds = %7
  ret i32 0
}

define internal void @_GLOBAL__I_a67() section ".text.startup" {
  call void @__cxx_global_var_init68()
  ret void
}

define internal void @__cxx_global_var_init68() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit63)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit63, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Z4ddotiPKdS0_PdRd(i32 %n, double* %x, double* %y, double* %result, double* %time_allreduce) #9 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %local_result = alloca double, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 %n, i32* %1, align 4
  store double* %x, double** %2, align 8
  store double* %y, double** %3, align 8
  store double* %result, double** %4, align 8
  store double* %time_allreduce, double** %5, align 8
  store double 0.000000e+00, double* %local_result, align 8
  %6 = load double** %3, align 8
  %7 = load double** %2, align 8
  %8 = icmp eq double* %6, %7
  br i1 %8, label %9, label %32

; <label>:9                                       ; preds = %0
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %28, %9
  %11 = load i32* %i, align 4
  %12 = load i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

; <label>:14                                      ; preds = %10
  %15 = load i32* %i, align 4
  %16 = sext i32 %15 to i64
  %17 = load double** %2, align 8
  %18 = getelementptr inbounds double* %17, i64 %16
  %19 = load double* %18, align 8
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load double** %2, align 8
  %23 = getelementptr inbounds double* %22, i64 %21
  %24 = load double* %23, align 8
  %25 = fmul double %19, %24
  %26 = load double* %local_result, align 8
  %27 = fadd double %26, %25
  store double %27, double* %local_result, align 8
  br label %28

; <label>:28                                      ; preds = %14
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %10

; <label>:31                                      ; preds = %10
  br label %55

; <label>:32                                      ; preds = %0
  store i32 0, i32* %i1, align 4
  br label %33

; <label>:33                                      ; preds = %51, %32
  %34 = load i32* %i1, align 4
  %35 = load i32* %1, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

; <label>:37                                      ; preds = %33
  %38 = load i32* %i1, align 4
  %39 = sext i32 %38 to i64
  %40 = load double** %2, align 8
  %41 = getelementptr inbounds double* %40, i64 %39
  %42 = load double* %41, align 8
  %43 = load i32* %i1, align 4
  %44 = sext i32 %43 to i64
  %45 = load double** %3, align 8
  %46 = getelementptr inbounds double* %45, i64 %44
  %47 = load double* %46, align 8
  %48 = fmul double %42, %47
  %49 = load double* %local_result, align 8
  %50 = fadd double %49, %48
  store double %50, double* %local_result, align 8
  br label %51

; <label>:51                                      ; preds = %37
  %52 = load i32* %i1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i1, align 4
  br label %33

; <label>:54                                      ; preds = %33
  br label %55

; <label>:55                                      ; preds = %54, %31
  %56 = load double* %local_result, align 8
  %57 = load double** %4, align 8
  store double %56, double* %57, align 8
  ret i32 0
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { builtin }
attributes #13 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
