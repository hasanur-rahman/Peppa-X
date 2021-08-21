; ModuleID = 'fft.C'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalMemory = type { i64, i64*, i64*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Global = global %struct.GlobalMemory* null, align 8
@P = global i64 1, align 8
@M = global i64 10, align 8
@N = global i64 0, align 8
@rootN = global i64 0, align 8
@x = global double* null, align 8
@trans = global double* null, align 8
@umain = global double* null, align 8
@umain2 = global double* null, align 8
@test_result = global i64 0, align 8
@doprint = global i64 0, align 8
@dostats = global i64 0, align 8
@transtime = global i64 0, align 8
@transtime2 = global i64 0, align 8
@avgtranstime = global i64 0, align 8
@avgcomptime = global i64 0, align 8
@transstart = global i64 0, align 8
@transend = global i64 0, align 8
@maxtotal = global i64 0, align 8
@mintotal = global i64 0, align 8
@maxfrac = global double 0.000000e+00, align 8
@minfrac = global double 0.000000e+00, align 8
@avgfractime = global double 0.000000e+00, align 8
@orig_num_lines = global i64 65536, align 8
@num_cache_lines = global i64 65536, align 8
@log2_line_size = global i64 4, align 8
@line_size = global i64 0, align 8
@rowsperproc = global i64 0, align 8
@ck1 = global double 0.000000e+00, align 8
@ck3 = global double 0.000000e+00, align 8
@pad_length = global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"p:m:n:l:stoh\00", align 1
@optarg = external global i8*
@.str1 = private unnamed_addr constant [16 x i8] c"P must be >= 1\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"P must be a power of 2\0A\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"M must be even\0A\00", align 1
@.str4 = private unnamed_addr constant [36 x i8] c"Number of cache lines must be >= 1\0A\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"Log base 2 of cache line length in bytes must be >= 0\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Usage: FFT <options>\0A\0A\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str8 = private unnamed_addr constant [71 x i8] c"  -mM : M = even integer; 2**M total complex data points transformed.\0A\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"  -pP : P = number of processors; Must be a power of 2.\0A\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"  -nN : N = number of cache lines.\0A\00", align 1
@.str11 = private unnamed_addr constant [55 x i8] c"  -lL : L = Log base 2 of cache line length in bytes.\0A\00", align 1
@.str12 = private unnamed_addr constant [55 x i8] c"  -s  : Print individual processor timing statistics.\0A\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"  -t  : Perform FFT and inverse FFT.  Test output by comparing the\0A\00", align 1
@.str14 = private unnamed_addr constant [72 x i8] c"        integral of the original data to the integral of the data that\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"        results from performing the FFT and inverse FFT.\0A\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"  -o  : Print out complex data points.\0A\00", align 1
@.str17 = private unnamed_addr constant [42 x i8] c"  -h  : Print out command line options.\0A\0A\00", align 1
@.str18 = private unnamed_addr constant [38 x i8] c"Default: FFT -m%1d -p%1d -n%1d -l%1d\0A\00", align 1
@.str19 = private unnamed_addr constant [48 x i8] c"Matrix not large enough. 2**(M/2) must be >= P\0A\00", align 1
@.str20 = private unnamed_addr constant [55 x i8] c"WARNING: Each element is a complex double (%ld bytes)\0A\00", align 1
@.str21 = private unnamed_addr constant [43 x i8] c"  => Less than one element per cache line\0A\00", align 1
@.str22 = private unnamed_addr constant [42 x i8] c"     Computing transpose blocking factor\0A\00", align 1
@.str23 = private unnamed_addr constant [32 x i8] c"Padding algorithm unsuccessful\0A\00", align 1
@.str24 = private unnamed_addr constant [36 x i8] c"Could not malloc memory for Global\0A\00", align 1
@.str25 = private unnamed_addr constant [31 x i8] c"Could not malloc memory for x\0A\00", align 1
@.str26 = private unnamed_addr constant [35 x i8] c"Could not malloc memory for trans\0A\00", align 1
@.str27 = private unnamed_addr constant [35 x i8] c"Could not malloc memory for umain\0A\00", align 1
@.str28 = private unnamed_addr constant [36 x i8] c"Could not malloc memory for umain2\0A\00", align 1
@.str29 = private unnamed_addr constant [23 x i8] c"Original data values:\0A\00", align 1
@.str30 = private unnamed_addr constant [32 x i8] c"Data values after inverse FFT:\0A\00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"Data values after FFT:\0A\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"INVERSE FFT TEST RESULTS\0A\00", align 1
@.str33 = private unnamed_addr constant [42 x i8] c"Checksum difference is %.3f (%.3f, %.3f)\0A\00", align 1
@.str34 = private unnamed_addr constant [13 x i8] c"TEST PASSED\0A\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"TEST FAILED\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str36 = private unnamed_addr constant [44 x i8] c"Proc %ld could not malloc memory for upriv\0A\00", align 1
@.str37 = private unnamed_addr constant [13 x i8] c" %4.2f %4.2f\00", align 1
@.str38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i64, align 8
  %c = alloca i64, align 8
  %m1 = alloca i64, align 8
  %factor = alloca i64, align 8
  %pages = alloca i64, align 8
  %start = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  br label %4

; <label>:4                                       ; preds = %83, %0
  %5 = load i32* %2, align 4
  %6 = load i8*** %3, align 8
  %7 = call i32 @getopt(i32 %5, i8** %6, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0)) #7
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %c, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %84

; <label>:10                                      ; preds = %4
  %11 = load i64* %c, align 8
  switch i64 %11, label %83 [
    i64 112, label %12
    i64 109, label %25
    i64 110, label %37
    i64 108, label %46
    i64 115, label %54
    i64 116, label %59
    i64 111, label %64
    i64 104, label %69
  ]

; <label>:12                                      ; preds = %10
  %13 = load i8** @optarg, align 8
  %14 = call i32 @atoi(i8* %13) #8
  %15 = sext i32 %14 to i64
  store i64 %15, i64* @P, align 8
  %16 = load i64* @P, align 8
  %17 = icmp slt i64 %16, 1
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %12
  call void @_Z8printerrPc(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:19                                      ; preds = %12
  %20 = load i64* @P, align 8
  %21 = call i64 @_Z5log_2l(i64 %20)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %19
  call void @_Z8printerrPc(i8* getelementptr inbounds ([24 x i8]* @.str2, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:24                                      ; preds = %19
  br label %83

; <label>:25                                      ; preds = %10
  %26 = load i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26) #8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* @M, align 8
  %29 = load i64* @M, align 8
  %30 = sdiv i64 %29, 2
  store i64 %30, i64* %m1, align 8
  %31 = load i64* %m1, align 8
  %32 = mul nsw i64 2, %31
  %33 = load i64* @M, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %25
  call void @_Z8printerrPc(i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:36                                      ; preds = %25
  br label %83

; <label>:37                                      ; preds = %10
  %38 = load i8** @optarg, align 8
  %39 = call i32 @atoi(i8* %38) #8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* @num_cache_lines, align 8
  %41 = load i64* @num_cache_lines, align 8
  store i64 %41, i64* @orig_num_lines, align 8
  %42 = load i64* @num_cache_lines, align 8
  %43 = icmp slt i64 %42, 1
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %37
  call void @_Z8printerrPc(i8* getelementptr inbounds ([36 x i8]* @.str4, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:45                                      ; preds = %37
  br label %83

; <label>:46                                      ; preds = %10
  %47 = load i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47) #8
  %49 = sext i32 %48 to i64
  store i64 %49, i64* @log2_line_size, align 8
  %50 = load i64* @log2_line_size, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %46
  call void @_Z8printerrPc(i8* getelementptr inbounds ([55 x i8]* @.str5, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:53                                      ; preds = %46
  br label %83

; <label>:54                                      ; preds = %10
  %55 = load i64* @dostats, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i64
  store i64 %58, i64* @dostats, align 8
  br label %83

; <label>:59                                      ; preds = %10
  %60 = load i64* @test_result, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i64
  store i64 %63, i64* @test_result, align 8
  br label %83

; <label>:64                                      ; preds = %10
  %65 = load i64* @doprint, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i64
  store i64 %68, i64* @doprint, align 8
  br label %83

; <label>:69                                      ; preds = %10
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str6, i32 0, i32 0))
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str7, i32 0, i32 0))
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([71 x i8]* @.str8, i32 0, i32 0))
  %73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str9, i32 0, i32 0))
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str10, i32 0, i32 0))
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str11, i32 0, i32 0))
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str12, i32 0, i32 0))
  %77 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([68 x i8]* @.str13, i32 0, i32 0))
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([72 x i8]* @.str14, i32 0, i32 0))
  %79 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str15, i32 0, i32 0))
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str16, i32 0, i32 0))
  %81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str17, i32 0, i32 0))
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str18, i32 0, i32 0), i32 10, i32 1, i32 65536, i32 4)
  call void @exit(i32 0) #9
  unreachable

; <label>:83                                      ; preds = %10, %64, %59, %54, %53, %45, %36, %24
  br label %4

; <label>:84                                      ; preds = %4
  %85 = load i64* @M, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* @N, align 8
  %89 = load i64* @M, align 8
  %90 = sdiv i64 %89, 2
  %91 = trunc i64 %90 to i32
  %92 = shl i32 1, %91
  %93 = sext i32 %92 to i64
  store i64 %93, i64* @rootN, align 8
  %94 = load i64* @rootN, align 8
  %95 = load i64* @P, align 8
  %96 = sdiv i64 %94, %95
  store i64 %96, i64* @rowsperproc, align 8
  %97 = load i64* @rowsperproc, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %84
  call void @_Z8printerrPc(i8* getelementptr inbounds ([48 x i8]* @.str19, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:100                                     ; preds = %84
  %101 = load i64* @log2_line_size, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* @line_size, align 8
  %105 = load i64* @line_size, align 8
  %106 = icmp ult i64 %105, 16
  br i1 %106, label %107, label %116

; <label>:107                                     ; preds = %100
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str20, i32 0, i32 0), i64 16)
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str21, i32 0, i32 0))
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str22, i32 0, i32 0))
  %111 = load i64* @line_size, align 8
  %112 = udiv i64 16, %111
  store i64 %112, i64* %factor, align 8
  %113 = load i64* @orig_num_lines, align 8
  %114 = load i64* %factor, align 8
  %115 = sdiv i64 %113, %114
  store i64 %115, i64* @num_cache_lines, align 8
  br label %116

; <label>:116                                     ; preds = %107, %100
  %117 = load i64* @line_size, align 8
  %118 = icmp ule i64 %117, 16
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %116
  store i64 1, i64* @pad_length, align 8
  br label %123

; <label>:120                                     ; preds = %116
  %121 = load i64* @line_size, align 8
  %122 = udiv i64 %121, 16
  store i64 %122, i64* @pad_length, align 8
  br label %123

; <label>:123                                     ; preds = %120, %119
  %124 = load i64* @rowsperproc, align 8
  %125 = load i64* @rootN, align 8
  %126 = mul nsw i64 %124, %125
  %127 = mul nsw i64 %126, 2
  %128 = mul i64 %127, 8
  %129 = icmp uge i64 %128, 4096
  br i1 %129, label %130, label %154

; <label>:130                                     ; preds = %123
  %131 = load i64* @pad_length, align 8
  %132 = mul nsw i64 2, %131
  %133 = mul i64 %132, 8
  %134 = load i64* @rowsperproc, align 8
  %135 = mul i64 %133, %134
  %136 = udiv i64 %135, 4096
  store i64 %136, i64* %pages, align 8
  %137 = load i64* %pages, align 8
  %138 = mul nsw i64 %137, 4096
  %139 = load i64* @pad_length, align 8
  %140 = mul nsw i64 2, %139
  %141 = mul i64 %140, 8
  %142 = load i64* @rowsperproc, align 8
  %143 = mul i64 %141, %142
  %144 = icmp ne i64 %138, %143
  br i1 %144, label %145, label %148

; <label>:145                                     ; preds = %130
  %146 = load i64* %pages, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %pages, align 8
  br label %148

; <label>:148                                     ; preds = %145, %130
  %149 = load i64* %pages, align 8
  %150 = mul nsw i64 %149, 4096
  %151 = load i64* @rowsperproc, align 8
  %152 = mul i64 16, %151
  %153 = udiv i64 %150, %152
  store i64 %153, i64* @pad_length, align 8
  br label %177

; <label>:154                                     ; preds = %123
  %155 = load i64* @rowsperproc, align 8
  %156 = load i64* @rootN, align 8
  %157 = mul nsw i64 %155, %156
  %158 = mul nsw i64 %157, 2
  %159 = mul i64 %158, 8
  %160 = sub i64 4096, %159
  %161 = load i64* @rowsperproc, align 8
  %162 = mul i64 16, %161
  %163 = udiv i64 %160, %162
  store i64 %163, i64* @pad_length, align 8
  %164 = load i64* @pad_length, align 8
  %165 = load i64* @rowsperproc, align 8
  %166 = mul i64 16, %165
  %167 = mul i64 %164, %166
  %168 = load i64* @rowsperproc, align 8
  %169 = load i64* @rootN, align 8
  %170 = mul nsw i64 %168, %169
  %171 = mul nsw i64 %170, 2
  %172 = mul i64 %171, 8
  %173 = sub i64 4096, %172
  %174 = icmp ne i64 %167, %173
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %154
  call void @_Z8printerrPc(i8* getelementptr inbounds ([32 x i8]* @.str23, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:176                                     ; preds = %154
  br label %177

; <label>:177                                     ; preds = %176, %148
  %178 = call noalias i8* @malloc(i64 48) #7
  %179 = bitcast i8* %178 to %struct.GlobalMemory*
  store %struct.GlobalMemory* %179, %struct.GlobalMemory** @Global, align 8
  %180 = load i64* @N, align 8
  %181 = load i64* @rootN, align 8
  %182 = load i64* @pad_length, align 8
  %183 = mul nsw i64 %181, %182
  %184 = add nsw i64 %180, %183
  %185 = mul nsw i64 2, %184
  %186 = mul i64 %185, 8
  %187 = add i64 %186, 4096
  %188 = call noalias i8* @malloc(i64 %187) #7
  %189 = bitcast i8* %188 to double*
  store double* %189, double** @x, align 8
  %190 = load i64* @N, align 8
  %191 = load i64* @rootN, align 8
  %192 = load i64* @pad_length, align 8
  %193 = mul nsw i64 %191, %192
  %194 = add nsw i64 %190, %193
  %195 = mul nsw i64 2, %194
  %196 = mul i64 %195, 8
  %197 = add i64 %196, 4096
  %198 = call noalias i8* @malloc(i64 %197) #7
  %199 = bitcast i8* %198 to double*
  store double* %199, double** @trans, align 8
  %200 = load i64* @rootN, align 8
  %201 = mul nsw i64 2, %200
  %202 = mul i64 %201, 8
  %203 = call noalias i8* @malloc(i64 %202) #7
  %204 = bitcast i8* %203 to double*
  store double* %204, double** @umain, align 8
  %205 = load i64* @N, align 8
  %206 = load i64* @rootN, align 8
  %207 = load i64* @pad_length, align 8
  %208 = mul nsw i64 %206, %207
  %209 = add nsw i64 %205, %208
  %210 = mul nsw i64 2, %209
  %211 = mul i64 %210, 8
  %212 = add i64 %211, 4096
  %213 = call noalias i8* @malloc(i64 %212) #7
  %214 = bitcast i8* %213 to double*
  store double* %214, double** @umain2, align 8
  %215 = load i64* @P, align 8
  %216 = mul i64 %215, 8
  %217 = call noalias i8* @malloc(i64 %216) #7
  %218 = bitcast i8* %217 to i64*
  %219 = load %struct.GlobalMemory** @Global, align 8
  %220 = getelementptr inbounds %struct.GlobalMemory* %219, i32 0, i32 1
  store i64* %218, i64** %220, align 8
  %221 = load i64* @P, align 8
  %222 = mul i64 %221, 8
  %223 = call noalias i8* @malloc(i64 %222) #7
  %224 = bitcast i8* %223 to i64*
  %225 = load %struct.GlobalMemory** @Global, align 8
  %226 = getelementptr inbounds %struct.GlobalMemory* %225, i32 0, i32 2
  store i64* %224, i64** %226, align 8
  %227 = load %struct.GlobalMemory** @Global, align 8
  %228 = icmp eq %struct.GlobalMemory* %227, null
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %177
  call void @_Z8printerrPc(i8* getelementptr inbounds ([36 x i8]* @.str24, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:230                                     ; preds = %177
  %231 = load double** @x, align 8
  %232 = icmp eq double* %231, null
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %230
  call void @_Z8printerrPc(i8* getelementptr inbounds ([31 x i8]* @.str25, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:234                                     ; preds = %230
  %235 = load double** @trans, align 8
  %236 = icmp eq double* %235, null
  br i1 %236, label %237, label %238

; <label>:237                                     ; preds = %234
  call void @_Z8printerrPc(i8* getelementptr inbounds ([35 x i8]* @.str26, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:238                                     ; preds = %234
  %239 = load double** @umain, align 8
  %240 = icmp eq double* %239, null
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %238
  call void @_Z8printerrPc(i8* getelementptr inbounds ([35 x i8]* @.str27, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:242                                     ; preds = %238
  %243 = load double** @umain2, align 8
  %244 = icmp eq double* %243, null
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %242
  call void @_Z8printerrPc(i8* getelementptr inbounds ([36 x i8]* @.str28, i32 0, i32 0))
  call void @exit(i32 -1) #9
  unreachable

; <label>:246                                     ; preds = %242
  br label %247

; <label>:247                                     ; preds = %246
  br label %248

; <label>:248                                     ; preds = %247
  br label %249

; <label>:249                                     ; preds = %248
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load double** @x, align 8
  %252 = ptrtoint double* %251 to i64
  %253 = add i64 %252, 4096
  %254 = load double** @x, align 8
  %255 = ptrtoint double* %254 to i64
  %256 = urem i64 %255, 4096
  %257 = sub i64 %253, %256
  %258 = inttoptr i64 %257 to double*
  store double* %258, double** @x, align 8
  %259 = load double** @trans, align 8
  %260 = ptrtoint double* %259 to i64
  %261 = add i64 %260, 4096
  %262 = load double** @trans, align 8
  %263 = ptrtoint double* %262 to i64
  %264 = urem i64 %263, 4096
  %265 = sub i64 %261, %264
  %266 = inttoptr i64 %265 to double*
  store double* %266, double** @trans, align 8
  %267 = load double** @umain2, align 8
  %268 = ptrtoint double* %267 to i64
  %269 = add i64 %268, 4096
  %270 = load double** @umain2, align 8
  %271 = ptrtoint double* %270 to i64
  %272 = urem i64 %271, 4096
  %273 = sub i64 %269, %272
  %274 = inttoptr i64 %273 to double*
  store double* %274, double** @umain2, align 8
  %275 = load %struct.GlobalMemory** @Global, align 8
  %276 = getelementptr inbounds %struct.GlobalMemory* %275, i32 0, i32 0
  store i64 0, i64* %276, align 8
  %277 = load double** @x, align 8
  call void @_Z5InitXPd(double* %277)
  %278 = load i64* @test_result, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

; <label>:280                                     ; preds = %250
  %281 = load double** @x, align 8
  %282 = call double @_Z8CheckSumPd(double* %281)
  store double %282, double* @ck1, align 8
  br label %283

; <label>:283                                     ; preds = %280, %250
  %284 = load i64* @doprint, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

; <label>:286                                     ; preds = %283
  %287 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str29, i32 0, i32 0))
  %288 = load i64* @N, align 8
  %289 = load double** @x, align 8
  call void @_Z10PrintArraylPd(i64 %288, double* %289)
  br label %290

; <label>:290                                     ; preds = %286, %283
  %291 = load i64* @N, align 8
  %292 = load double** @umain, align 8
  call void @_Z5InitUlPd(i64 %291, double* %292)
  %293 = load i64* @N, align 8
  %294 = load double** @umain2, align 8
  %295 = load i64* @rootN, align 8
  call void @_Z6InitU2lPdl(i64 %293, double* %294, i64 %295)
  call void @_Z10SlaveStartv()
  %296 = load i64* @test_result, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

; <label>:298                                     ; preds = %290
  %299 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str30, i32 0, i32 0))
  br label %302

; <label>:300                                     ; preds = %290
  %301 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str31, i32 0, i32 0))
  br label %302

; <label>:302                                     ; preds = %300, %298
  %303 = load i64* @N, align 8
  %304 = load double** @x, align 8
  call void @_Z10PrintArraylPd(i64 %303, double* %304)
  %305 = load i64* @test_result, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %327

; <label>:307                                     ; preds = %302
  %308 = load double** @x, align 8
  %309 = call double @_Z8CheckSumPd(double* %308)
  store double %309, double* @ck3, align 8
  %310 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str32, i32 0, i32 0))
  %311 = load double* @ck1, align 8
  %312 = load double* @ck3, align 8
  %313 = fsub double %311, %312
  %314 = load double* @ck1, align 8
  %315 = load double* @ck3, align 8
  %316 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str33, i32 0, i32 0), double %313, double %314, double %315)
  %317 = load double* @ck1, align 8
  %318 = load double* @ck3, align 8
  %319 = fsub double %317, %318
  %320 = call double @fabs(double %319) #10
  %321 = fcmp olt double %320, 1.000000e-03
  br i1 %321, label %322, label %324

; <label>:322                                     ; preds = %307
  %323 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str34, i32 0, i32 0))
  br label %326

; <label>:324                                     ; preds = %307
  %325 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0))
  br label %326

; <label>:326                                     ; preds = %324, %322
  br label %327

; <label>:327                                     ; preds = %326, %302
  %328 = load i32* %1
  ret i32 %328
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: uwtable
define void @_Z8printerrPc(i8* %s) #0 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8]* @.str40, i32 0, i32 0), i8* %3)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i64 @_Z5log_2l(i64 %number) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %cumulative = alloca i64, align 8
  %out = alloca i64, align 8
  %done = alloca i64, align 8
  store i64 %number, i64* %2, align 8
  store i64 1, i64* %cumulative, align 8
  store i64 0, i64* %out, align 8
  store i64 0, i64* %done, align 8
  br label %3

; <label>:3                                       ; preds = %25, %0
  %4 = load i64* %cumulative, align 8
  %5 = load i64* %2, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load i64* %done, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %7
  %11 = load i64* %out, align 8
  %12 = icmp slt i64 %11, 50
  br label %13

; <label>:13                                      ; preds = %10, %7, %3
  %14 = phi i1 [ false, %7 ], [ false, %3 ], [ %12, %10 ]
  br i1 %14, label %15, label %26

; <label>:15                                      ; preds = %13
  %16 = load i64* %cumulative, align 8
  %17 = load i64* %2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  store i64 1, i64* %done, align 8
  br label %25

; <label>:20                                      ; preds = %15
  %21 = load i64* %cumulative, align 8
  %22 = mul nsw i64 %21, 2
  store i64 %22, i64* %cumulative, align 8
  %23 = load i64* %out, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %out, align 8
  br label %25

; <label>:25                                      ; preds = %20, %19
  br label %3

; <label>:26                                      ; preds = %13
  %27 = load i64* %cumulative, align 8
  %28 = load i64* %2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %26
  %31 = load i64* %out, align 8
  store i64 %31, i64* %1
  br label %33

; <label>:32                                      ; preds = %26
  store i64 -1, i64* %1
  br label %33

; <label>:33                                      ; preds = %32, %30
  %34 = load i64* %1
  ret i64 %34
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @_Z5InitXPd(double* %x) #4 {
  %1 = alloca double*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store double* %x, double** %1, align 8
  store i64 0, i64* %j, align 8
  br label %2

; <label>:2                                       ; preds = %34, %0
  %3 = load i64* %j, align 8
  %4 = load i64* @rootN, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %37

; <label>:6                                       ; preds = %2
  %7 = load i64* %j, align 8
  %8 = load i64* @rootN, align 8
  %9 = load i64* @pad_length, align 8
  %10 = add nsw i64 %8, %9
  %11 = mul nsw i64 %7, %10
  store i64 %11, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %30, %6
  %13 = load i64* %i, align 8
  %14 = load i64* @rootN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %33

; <label>:16                                      ; preds = %12
  %17 = load i64* %k, align 8
  %18 = load i64* %i, align 8
  %19 = add nsw i64 %17, %18
  %20 = mul nsw i64 2, %19
  %21 = load double** %1, align 8
  %22 = getelementptr inbounds double* %21, i64 %20
  store double 5.000000e-01, double* %22, align 8
  %23 = load i64* %k, align 8
  %24 = load i64* %i, align 8
  %25 = add nsw i64 %23, %24
  %26 = mul nsw i64 2, %25
  %27 = add nsw i64 %26, 1
  %28 = load double** %1, align 8
  %29 = getelementptr inbounds double* %28, i64 %27
  store double 7.000000e-01, double* %29, align 8
  br label %30

; <label>:30                                      ; preds = %16
  %31 = load i64* %i, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %i, align 8
  br label %12

; <label>:33                                      ; preds = %12
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i64* %j, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %j, align 8
  br label %2

; <label>:37                                      ; preds = %2
  ret void
}

; Function Attrs: nounwind uwtable
define double @_Z8CheckSumPd(double* %x) #4 {
  %1 = alloca double*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %cks = alloca double, align 8
  store double* %x, double** %1, align 8
  store double 0.000000e+00, double* %cks, align 8
  store i64 0, i64* %j, align 8
  br label %2

; <label>:2                                       ; preds = %39, %0
  %3 = load i64* %j, align 8
  %4 = load i64* @rootN, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %42

; <label>:6                                       ; preds = %2
  %7 = load i64* %j, align 8
  %8 = load i64* @rootN, align 8
  %9 = load i64* @pad_length, align 8
  %10 = add nsw i64 %8, %9
  %11 = mul nsw i64 %7, %10
  store i64 %11, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %12

; <label>:12                                      ; preds = %35, %6
  %13 = load i64* %i, align 8
  %14 = load i64* @rootN, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %38

; <label>:16                                      ; preds = %12
  %17 = load i64* %k, align 8
  %18 = load i64* %i, align 8
  %19 = add nsw i64 %17, %18
  %20 = mul nsw i64 2, %19
  %21 = load double** %1, align 8
  %22 = getelementptr inbounds double* %21, i64 %20
  %23 = load double* %22, align 8
  %24 = load i64* %k, align 8
  %25 = load i64* %i, align 8
  %26 = add nsw i64 %24, %25
  %27 = mul nsw i64 2, %26
  %28 = add nsw i64 %27, 1
  %29 = load double** %1, align 8
  %30 = getelementptr inbounds double* %29, i64 %28
  %31 = load double* %30, align 8
  %32 = fadd double %23, %31
  %33 = load double* %cks, align 8
  %34 = fadd double %33, %32
  store double %34, double* %cks, align 8
  br label %35

; <label>:35                                      ; preds = %16
  %36 = load i64* %i, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %12

; <label>:38                                      ; preds = %12
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i64* %j, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %j, align 8
  br label %2

; <label>:42                                      ; preds = %2
  %43 = load double* %cks, align 8
  ret double %43
}

; Function Attrs: uwtable
define void @_Z10PrintArraylPd(i64 %N, double* %x) #0 {
  %1 = alloca i64, align 8
  %2 = alloca double*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64 %N, i64* %1, align 8
  store double* %x, double** %2, align 8
  store i64 0, i64* %i, align 8
  br label %3

; <label>:3                                       ; preds = %60, %0
  %4 = load i64* %i, align 8
  %5 = load i64* @rootN, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %63

; <label>:7                                       ; preds = %3
  %8 = load i64* %i, align 8
  %9 = load i64* @rootN, align 8
  %10 = load i64* @pad_length, align 8
  %11 = add nsw i64 %9, %10
  %12 = mul nsw i64 %8, %11
  store i64 %12, i64* %k, align 8
  store i64 0, i64* %j, align 8
  br label %13

; <label>:13                                      ; preds = %56, %7
  %14 = load i64* %j, align 8
  %15 = load i64* @rootN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %59

; <label>:17                                      ; preds = %13
  %18 = load i64* %k, align 8
  %19 = load i64* %j, align 8
  %20 = add nsw i64 %18, %19
  %21 = mul nsw i64 2, %20
  %22 = load double** %2, align 8
  %23 = getelementptr inbounds double* %22, i64 %21
  %24 = load double* %23, align 8
  %25 = load i64* %k, align 8
  %26 = load i64* %j, align 8
  %27 = add nsw i64 %25, %26
  %28 = mul nsw i64 2, %27
  %29 = add nsw i64 %28, 1
  %30 = load double** %2, align 8
  %31 = getelementptr inbounds double* %30, i64 %29
  %32 = load double* %31, align 8
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str37, i32 0, i32 0), double %24, double %32)
  %34 = load i64* %i, align 8
  %35 = load i64* @rootN, align 8
  %36 = mul nsw i64 %34, %35
  %37 = load i64* %j, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64* %1, align 8
  %40 = sub nsw i64 %39, 1
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

; <label>:42                                      ; preds = %17
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str38, i32 0, i32 0))
  br label %44

; <label>:44                                      ; preds = %42, %17
  %45 = load i64* %i, align 8
  %46 = load i64* @rootN, align 8
  %47 = mul nsw i64 %45, %46
  %48 = load i64* %j, align 8
  %49 = add nsw i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = srem i64 %50, 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %44
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str39, i32 0, i32 0))
  br label %55

; <label>:55                                      ; preds = %53, %44
  br label %56

; <label>:56                                      ; preds = %55
  %57 = load i64* %j, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %j, align 8
  br label %13

; <label>:59                                      ; preds = %13
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i64* %i, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %i, align 8
  br label %3

; <label>:63                                      ; preds = %3
  %64 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str39, i32 0, i32 0))
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str39, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z5InitUlPd(i64 %N, double* %u) #4 {
  %1 = alloca i64, align 8
  %2 = alloca double*, align 8
  %q = alloca i64, align 8
  %j = alloca i64, align 8
  %base = alloca i64, align 8
  %n1 = alloca i64, align 8
  store i64 %N, i64* %1, align 8
  store double* %u, double** %2, align 8
  store i64 0, i64* %q, align 8
  br label %3

; <label>:3                                       ; preds = %64, %0
  %4 = load i64* %q, align 8
  %5 = trunc i64 %4 to i32
  %6 = shl i32 1, %5
  %7 = sext i32 %6 to i64
  %8 = load i64* %1, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %67

; <label>:10                                      ; preds = %3
  %11 = load i64* %q, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %n1, align 8
  %15 = load i64* %n1, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %base, align 8
  store i64 0, i64* %j, align 8
  br label %17

; <label>:17                                      ; preds = %60, %10
  %18 = load i64* %j, align 8
  %19 = load i64* %n1, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %63

; <label>:21                                      ; preds = %17
  %22 = load i64* %base, align 8
  %23 = load i64* %j, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64* @rootN, align 8
  %26 = sub nsw i64 %25, 1
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %21
  br label %67

; <label>:29                                      ; preds = %21
  %30 = load i64* %j, align 8
  %31 = sitofp i64 %30 to double
  %32 = fmul double 6.283200e+00, %31
  %33 = load i64* %n1, align 8
  %34 = mul nsw i64 2, %33
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %32, %35
  %37 = call double @cos(double %36) #7
  %38 = load i64* %base, align 8
  %39 = load i64* %j, align 8
  %40 = add nsw i64 %38, %39
  %41 = mul nsw i64 2, %40
  %42 = load double** %2, align 8
  %43 = getelementptr inbounds double* %42, i64 %41
  store double %37, double* %43, align 8
  %44 = load i64* %j, align 8
  %45 = sitofp i64 %44 to double
  %46 = fmul double 6.283200e+00, %45
  %47 = load i64* %n1, align 8
  %48 = mul nsw i64 2, %47
  %49 = sitofp i64 %48 to double
  %50 = fdiv double %46, %49
  %51 = call double @sin(double %50) #7
  %52 = fsub double -0.000000e+00, %51
  %53 = load i64* %base, align 8
  %54 = load i64* %j, align 8
  %55 = add nsw i64 %53, %54
  %56 = mul nsw i64 2, %55
  %57 = add nsw i64 %56, 1
  %58 = load double** %2, align 8
  %59 = getelementptr inbounds double* %58, i64 %57
  store double %52, double* %59, align 8
  br label %60

; <label>:60                                      ; preds = %29
  %61 = load i64* %j, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %j, align 8
  br label %17

; <label>:63                                      ; preds = %17
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i64* %q, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %q, align 8
  br label %3

; <label>:67                                      ; preds = %28, %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z6InitU2lPdl(i64 %N, double* %u, i64 %n1) #4 {
  %1 = alloca i64, align 8
  %2 = alloca double*, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64 %N, i64* %1, align 8
  store double* %u, double** %2, align 8
  store i64 %n1, i64* %3, align 8
  store i64 0, i64* %j, align 8
  br label %4

; <label>:4                                       ; preds = %57, %0
  %5 = load i64* %j, align 8
  %6 = load i64* %3, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %60

; <label>:8                                       ; preds = %4
  %9 = load i64* %j, align 8
  %10 = load i64* @rootN, align 8
  %11 = load i64* @pad_length, align 8
  %12 = add nsw i64 %10, %11
  %13 = mul nsw i64 %9, %12
  store i64 %13, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %14

; <label>:14                                      ; preds = %53, %8
  %15 = load i64* %i, align 8
  %16 = load i64* %3, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %56

; <label>:18                                      ; preds = %14
  %19 = load i64* %i, align 8
  %20 = sitofp i64 %19 to double
  %21 = fmul double 6.283200e+00, %20
  %22 = load i64* %j, align 8
  %23 = sitofp i64 %22 to double
  %24 = fmul double %21, %23
  %25 = load i64* %1, align 8
  %26 = sitofp i64 %25 to double
  %27 = fdiv double %24, %26
  %28 = call double @cos(double %27) #7
  %29 = load i64* %k, align 8
  %30 = load i64* %i, align 8
  %31 = add nsw i64 %29, %30
  %32 = mul nsw i64 2, %31
  %33 = load double** %2, align 8
  %34 = getelementptr inbounds double* %33, i64 %32
  store double %28, double* %34, align 8
  %35 = load i64* %i, align 8
  %36 = sitofp i64 %35 to double
  %37 = fmul double 6.283200e+00, %36
  %38 = load i64* %j, align 8
  %39 = sitofp i64 %38 to double
  %40 = fmul double %37, %39
  %41 = load i64* %1, align 8
  %42 = sitofp i64 %41 to double
  %43 = fdiv double %40, %42
  %44 = call double @sin(double %43) #7
  %45 = fsub double -0.000000e+00, %44
  %46 = load i64* %k, align 8
  %47 = load i64* %i, align 8
  %48 = add nsw i64 %46, %47
  %49 = mul nsw i64 2, %48
  %50 = add nsw i64 %49, 1
  %51 = load double** %2, align 8
  %52 = getelementptr inbounds double* %51, i64 %50
  store double %45, double* %52, align 8
  br label %53

; <label>:53                                      ; preds = %18
  %54 = load i64* %i, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %i, align 8
  br label %14

; <label>:56                                      ; preds = %14
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i64* %j, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %j, align 8
  br label %4

; <label>:60                                      ; preds = %4
  ret void
}

; Function Attrs: uwtable
define void @_Z10SlaveStartv() #0 {
  %i = alloca i64, align 8
  %MyNum = alloca i64, align 8
  %upriv = alloca double*, align 8
  %initdone = alloca i64, align 8
  %finish = alloca i64, align 8
  %l_transtime = alloca i64, align 8
  %MyFirst = alloca i64, align 8
  %MyLast = alloca i64, align 8
  store i64 0, i64* %l_transtime, align 8
  %1 = load %struct.GlobalMemory** @Global, align 8
  %2 = getelementptr inbounds %struct.GlobalMemory* %1, i32 0, i32 0
  %3 = load i64* %2, align 8
  store i64 %3, i64* %MyNum, align 8
  %4 = load %struct.GlobalMemory** @Global, align 8
  %5 = getelementptr inbounds %struct.GlobalMemory* %4, i32 0, i32 0
  %6 = load i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = load i64* @rootN, align 8
  %9 = sub nsw i64 %8, 1
  %10 = mul nsw i64 2, %9
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #7
  %13 = bitcast i8* %12 to double*
  store double* %13, double** %upriv, align 8
  %14 = load double** %upriv, align 8
  %15 = icmp eq double* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %0
  %17 = load %struct._IO_FILE** @stderr, align 8
  %18 = load i64* %MyNum, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([44 x i8]* @.str36, i32 0, i32 0), i64 %18)
  call void @exit(i32 -1) #9
  unreachable

; <label>:20                                      ; preds = %0
  store i64 0, i64* %i, align 8
  br label %21

; <label>:21                                      ; preds = %35, %20
  %22 = load i64* %i, align 8
  %23 = load i64* @rootN, align 8
  %24 = sub nsw i64 %23, 1
  %25 = mul nsw i64 2, %24
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %38

; <label>:27                                      ; preds = %21
  %28 = load i64* %i, align 8
  %29 = load double** @umain, align 8
  %30 = getelementptr inbounds double* %29, i64 %28
  %31 = load double* %30, align 8
  %32 = load i64* %i, align 8
  %33 = load double** %upriv, align 8
  %34 = getelementptr inbounds double* %33, i64 %32
  store double %31, double* %34, align 8
  br label %35

; <label>:35                                      ; preds = %27
  %36 = load i64* %i, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %i, align 8
  br label %21

; <label>:38                                      ; preds = %21
  %39 = load i64* @rootN, align 8
  %40 = load i64* %MyNum, align 8
  %41 = mul nsw i64 %39, %40
  %42 = load i64* @P, align 8
  %43 = sdiv i64 %41, %42
  store i64 %43, i64* %MyFirst, align 8
  %44 = load i64* @rootN, align 8
  %45 = load i64* %MyNum, align 8
  %46 = add nsw i64 %45, 1
  %47 = mul nsw i64 %44, %46
  %48 = load i64* @P, align 8
  %49 = sdiv i64 %47, %48
  store i64 %49, i64* %MyLast, align 8
  %50 = load double** @x, align 8
  %51 = load double** @trans, align 8
  %52 = load double** @umain2, align 8
  %53 = load double** %upriv, align 8
  %54 = load i64* %MyFirst, align 8
  %55 = load i64* %MyLast, align 8
  %56 = call double @_Z10TouchArrayPdS_S_S_ll(double* %50, double* %51, double* %52, double* %53, i64 %54, i64 %55)
  %57 = load i64* @M, align 8
  %58 = load i64* @N, align 8
  %59 = load double** @x, align 8
  %60 = load double** @trans, align 8
  %61 = load double** %upriv, align 8
  %62 = load double** @umain2, align 8
  %63 = load i64* %MyNum, align 8
  %64 = load i64* %MyFirst, align 8
  %65 = load i64* %MyLast, align 8
  %66 = load i64* @pad_length, align 8
  %67 = load i64* @test_result, align 8
  %68 = load i64* @dostats, align 8
  call void @_Z5FFT1DlllPdS_S_S_lPllllll(i64 1, i64 %57, i64 %58, double* %59, double* %60, double* %61, double* %62, i64 %63, i64* %l_transtime, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %69 = load i64* @test_result, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

; <label>:71                                      ; preds = %38
  %72 = load i64* @M, align 8
  %73 = load i64* @N, align 8
  %74 = load double** @x, align 8
  %75 = load double** @trans, align 8
  %76 = load double** %upriv, align 8
  %77 = load double** @umain2, align 8
  %78 = load i64* %MyNum, align 8
  %79 = load i64* %MyFirst, align 8
  %80 = load i64* %MyLast, align 8
  %81 = load i64* @pad_length, align 8
  %82 = load i64* @test_result, align 8
  %83 = load i64* @dostats, align 8
  call void @_Z5FFT1DlllPdS_S_S_lPllllll(i64 -1, i64 %72, i64 %73, double* %74, double* %75, double* %76, double* %77, i64 %78, i64* %l_transtime, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83)
  br label %84

; <label>:84                                      ; preds = %71, %38
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define double @_Z10TouchArrayPdS_S_S_ll(double* %x, double* %scratch, double* %u, double* %upriv, i64 %MyFirst, i64 %MyLast) #4 {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %tot = alloca double, align 8
  store double* %x, double** %1, align 8
  store double* %scratch, double** %2, align 8
  store double* %u, double** %3, align 8
  store double* %upriv, double** %4, align 8
  store i64 %MyFirst, i64* %5, align 8
  store i64 %MyLast, i64* %6, align 8
  store double 0.000000e+00, double* %tot, align 8
  store i64 0, i64* %j, align 8
  br label %7

; <label>:7                                       ; preds = %20, %0
  %8 = load i64* %j, align 8
  %9 = load i64* @rootN, align 8
  %10 = sub nsw i64 %9, 1
  %11 = mul nsw i64 2, %10
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %7
  %14 = load i64* %j, align 8
  %15 = load double** %4, align 8
  %16 = getelementptr inbounds double* %15, i64 %14
  %17 = load double* %16, align 8
  %18 = load double* %tot, align 8
  %19 = fadd double %18, %17
  store double %19, double* %tot, align 8
  br label %20

; <label>:20                                      ; preds = %13
  %21 = load i64* %j, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %j, align 8
  br label %7

; <label>:23                                      ; preds = %7
  %24 = load i64* %5, align 8
  store i64 %24, i64* %j, align 8
  br label %25

; <label>:25                                      ; preds = %96, %23
  %26 = load i64* %j, align 8
  %27 = load i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %99

; <label>:29                                      ; preds = %25
  %30 = load i64* %j, align 8
  %31 = load i64* @rootN, align 8
  %32 = load i64* @pad_length, align 8
  %33 = add nsw i64 %31, %32
  %34 = mul nsw i64 %30, %33
  store i64 %34, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %35

; <label>:35                                      ; preds = %92, %29
  %36 = load i64* %i, align 8
  %37 = load i64* @rootN, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %95

; <label>:39                                      ; preds = %35
  %40 = load i64* %k, align 8
  %41 = load i64* %i, align 8
  %42 = add nsw i64 %40, %41
  %43 = mul nsw i64 2, %42
  %44 = load double** %1, align 8
  %45 = getelementptr inbounds double* %44, i64 %43
  %46 = load double* %45, align 8
  %47 = load i64* %k, align 8
  %48 = load i64* %i, align 8
  %49 = add nsw i64 %47, %48
  %50 = mul nsw i64 2, %49
  %51 = add nsw i64 %50, 1
  %52 = load double** %1, align 8
  %53 = getelementptr inbounds double* %52, i64 %51
  %54 = load double* %53, align 8
  %55 = fadd double %46, %54
  %56 = load i64* %k, align 8
  %57 = load i64* %i, align 8
  %58 = add nsw i64 %56, %57
  %59 = mul nsw i64 2, %58
  %60 = load double** %2, align 8
  %61 = getelementptr inbounds double* %60, i64 %59
  %62 = load double* %61, align 8
  %63 = fadd double %55, %62
  %64 = load i64* %k, align 8
  %65 = load i64* %i, align 8
  %66 = add nsw i64 %64, %65
  %67 = mul nsw i64 2, %66
  %68 = add nsw i64 %67, 1
  %69 = load double** %2, align 8
  %70 = getelementptr inbounds double* %69, i64 %68
  %71 = load double* %70, align 8
  %72 = fadd double %63, %71
  %73 = load i64* %k, align 8
  %74 = load i64* %i, align 8
  %75 = add nsw i64 %73, %74
  %76 = mul nsw i64 2, %75
  %77 = load double** %3, align 8
  %78 = getelementptr inbounds double* %77, i64 %76
  %79 = load double* %78, align 8
  %80 = fadd double %72, %79
  %81 = load i64* %k, align 8
  %82 = load i64* %i, align 8
  %83 = add nsw i64 %81, %82
  %84 = mul nsw i64 2, %83
  %85 = add nsw i64 %84, 1
  %86 = load double** %3, align 8
  %87 = getelementptr inbounds double* %86, i64 %85
  %88 = load double* %87, align 8
  %89 = fadd double %80, %88
  %90 = load double* %tot, align 8
  %91 = fadd double %90, %89
  store double %91, double* %tot, align 8
  br label %92

; <label>:92                                      ; preds = %39
  %93 = load i64* %i, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %i, align 8
  br label %35

; <label>:95                                      ; preds = %35
  br label %96

; <label>:96                                      ; preds = %95
  %97 = load i64* %j, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %j, align 8
  br label %25

; <label>:99                                      ; preds = %25
  %100 = load double* %tot, align 8
  ret double %100
}

; Function Attrs: uwtable
define void @_Z5FFT1DlllPdS_S_S_lPllllll(i64 %direction, i64 %M, i64 %N, double* %x, double* %scratch, double* %upriv, double* %umain2, i64 %MyNum, i64* %l_transtime, i64 %MyFirst, i64 %MyLast, i64 %pad_length, i64 %test_result, i64 %dostats) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %j = alloca i64, align 8
  %m1 = alloca i64, align 8
  %n1 = alloca i64, align 8
  %clocktime1 = alloca i64, align 8
  %clocktime2 = alloca i64, align 8
  store i64 %direction, i64* %1, align 8
  store i64 %M, i64* %2, align 8
  store i64 %N, i64* %3, align 8
  store double* %x, double** %4, align 8
  store double* %scratch, double** %5, align 8
  store double* %upriv, double** %6, align 8
  store double* %umain2, double** %7, align 8
  store i64 %MyNum, i64* %8, align 8
  store i64* %l_transtime, i64** %9, align 8
  store i64 %MyFirst, i64* %10, align 8
  store i64 %MyLast, i64* %11, align 8
  store i64 %pad_length, i64* %12, align 8
  store i64 %test_result, i64* %13, align 8
  store i64 %dostats, i64* %14, align 8
  %15 = load i64* %2, align 8
  %16 = sdiv i64 %15, 2
  store i64 %16, i64* %m1, align 8
  %17 = load i64* %m1, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %n1, align 8
  %21 = load i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %0
  %24 = load i64* %14, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23, %0
  br label %27

; <label>:27                                      ; preds = %26, %23
  %28 = load i64* %n1, align 8
  %29 = load double** %4, align 8
  %30 = load double** %5, align 8
  %31 = load i64* %8, align 8
  %32 = load i64* %10, align 8
  %33 = load i64* %11, align 8
  %34 = load i64* %12, align 8
  call void @_Z9TransposelPdS_llll(i64 %28, double* %29, double* %30, i64 %31, i64 %32, i64 %33, i64 %34)
  %35 = load i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %40, label %37

; <label>:37                                      ; preds = %27
  %38 = load i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %37, %27
  %41 = load i64* %clocktime2, align 8
  %42 = load i64* %clocktime1, align 8
  %43 = sub i64 %41, %42
  %44 = load i64** %9, align 8
  %45 = load i64* %44, align 8
  %46 = add i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %47

; <label>:47                                      ; preds = %40, %37
  %48 = load i64* %10, align 8
  store i64 %48, i64* %j, align 8
  br label %49

; <label>:49                                      ; preds = %79, %47
  %50 = load i64* %j, align 8
  %51 = load i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %82

; <label>:53                                      ; preds = %49
  %54 = load i64* %1, align 8
  %55 = load i64* %m1, align 8
  %56 = load i64* %n1, align 8
  %57 = load double** %6, align 8
  %58 = load i64* %j, align 8
  %59 = mul nsw i64 2, %58
  %60 = load i64* %n1, align 8
  %61 = load i64* %12, align 8
  %62 = add nsw i64 %60, %61
  %63 = mul nsw i64 %59, %62
  %64 = load double** %5, align 8
  %65 = getelementptr inbounds double* %64, i64 %63
  call void @_Z9FFT1DOncelllPdS_(i64 %54, i64 %55, i64 %56, double* %57, double* %65)
  %66 = load i64* %1, align 8
  %67 = load i64* %n1, align 8
  %68 = load i64* %j, align 8
  %69 = load double** %7, align 8
  %70 = load i64* %j, align 8
  %71 = mul nsw i64 2, %70
  %72 = load i64* %n1, align 8
  %73 = load i64* %12, align 8
  %74 = add nsw i64 %72, %73
  %75 = mul nsw i64 %71, %74
  %76 = load double** %5, align 8
  %77 = getelementptr inbounds double* %76, i64 %75
  %78 = load i64* %12, align 8
  call void @_Z13TwiddleOneCollllPdS_l(i64 %66, i64 %67, i64 %68, double* %69, double* %77, i64 %78)
  br label %79

; <label>:79                                      ; preds = %53
  %80 = load i64* %j, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %j, align 8
  br label %49

; <label>:82                                      ; preds = %49
  %83 = load i64* %8, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %88, label %85

; <label>:85                                      ; preds = %82
  %86 = load i64* %14, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %85, %82
  br label %89

; <label>:89                                      ; preds = %88, %85
  %90 = load i64* %n1, align 8
  %91 = load double** %5, align 8
  %92 = load double** %4, align 8
  %93 = load i64* %8, align 8
  %94 = load i64* %10, align 8
  %95 = load i64* %11, align 8
  %96 = load i64* %12, align 8
  call void @_Z9TransposelPdS_llll(i64 %90, double* %91, double* %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %97 = load i64* %8, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

; <label>:99                                      ; preds = %89
  %100 = load i64* %14, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

; <label>:102                                     ; preds = %99, %89
  %103 = load i64* %clocktime2, align 8
  %104 = load i64* %clocktime1, align 8
  %105 = sub i64 %103, %104
  %106 = load i64** %9, align 8
  %107 = load i64* %106, align 8
  %108 = add i64 %107, %105
  store i64 %108, i64* %106, align 8
  br label %109

; <label>:109                                     ; preds = %102, %99
  %110 = load i64* %10, align 8
  store i64 %110, i64* %j, align 8
  br label %111

; <label>:111                                     ; preds = %142, %109
  %112 = load i64* %j, align 8
  %113 = load i64* %11, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %145

; <label>:115                                     ; preds = %111
  %116 = load i64* %1, align 8
  %117 = load i64* %m1, align 8
  %118 = load i64* %n1, align 8
  %119 = load double** %6, align 8
  %120 = load i64* %j, align 8
  %121 = mul nsw i64 2, %120
  %122 = load i64* %n1, align 8
  %123 = load i64* %12, align 8
  %124 = add nsw i64 %122, %123
  %125 = mul nsw i64 %121, %124
  %126 = load double** %4, align 8
  %127 = getelementptr inbounds double* %126, i64 %125
  call void @_Z9FFT1DOncelllPdS_(i64 %116, i64 %117, i64 %118, double* %119, double* %127)
  %128 = load i64* %1, align 8
  %129 = icmp eq i64 %128, -1
  br i1 %129, label %130, label %141

; <label>:130                                     ; preds = %115
  %131 = load i64* %n1, align 8
  %132 = load i64* %3, align 8
  %133 = load i64* %j, align 8
  %134 = mul nsw i64 2, %133
  %135 = load i64* %n1, align 8
  %136 = load i64* %12, align 8
  %137 = add nsw i64 %135, %136
  %138 = mul nsw i64 %134, %137
  %139 = load double** %4, align 8
  %140 = getelementptr inbounds double* %139, i64 %138
  call void @_Z5ScalellPd(i64 %131, i64 %132, double* %140)
  br label %141

; <label>:141                                     ; preds = %130, %115
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i64* %j, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %j, align 8
  br label %111

; <label>:145                                     ; preds = %111
  %146 = load i64* %8, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %151, label %148

; <label>:148                                     ; preds = %145
  %149 = load i64* %14, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %148, %145
  br label %152

; <label>:152                                     ; preds = %151, %148
  %153 = load i64* %n1, align 8
  %154 = load double** %4, align 8
  %155 = load double** %5, align 8
  %156 = load i64* %8, align 8
  %157 = load i64* %10, align 8
  %158 = load i64* %11, align 8
  %159 = load i64* %12, align 8
  call void @_Z9TransposelPdS_llll(i64 %153, double* %154, double* %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %160 = load i64* %8, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %165, label %162

; <label>:162                                     ; preds = %152
  %163 = load i64* %14, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

; <label>:165                                     ; preds = %162, %152
  %166 = load i64* %clocktime2, align 8
  %167 = load i64* %clocktime1, align 8
  %168 = sub i64 %166, %167
  %169 = load i64** %9, align 8
  %170 = load i64* %169, align 8
  %171 = add i64 %170, %168
  store i64 %171, i64* %169, align 8
  br label %172

; <label>:172                                     ; preds = %165, %162
  %173 = load i64* %13, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %178, label %175

; <label>:175                                     ; preds = %172
  %176 = load i64* @doprint, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %206

; <label>:178                                     ; preds = %175, %172
  %179 = load i64* %10, align 8
  store i64 %179, i64* %j, align 8
  br label %180

; <label>:180                                     ; preds = %202, %178
  %181 = load i64* %j, align 8
  %182 = load i64* %11, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %205

; <label>:184                                     ; preds = %180
  %185 = load i64* %n1, align 8
  %186 = load i64* %j, align 8
  %187 = mul nsw i64 2, %186
  %188 = load i64* %n1, align 8
  %189 = load i64* %12, align 8
  %190 = add nsw i64 %188, %189
  %191 = mul nsw i64 %187, %190
  %192 = load double** %5, align 8
  %193 = getelementptr inbounds double* %192, i64 %191
  %194 = load i64* %j, align 8
  %195 = mul nsw i64 2, %194
  %196 = load i64* %n1, align 8
  %197 = load i64* %12, align 8
  %198 = add nsw i64 %196, %197
  %199 = mul nsw i64 %195, %198
  %200 = load double** %4, align 8
  %201 = getelementptr inbounds double* %200, i64 %199
  call void @_Z10CopyColumnlPdS_(i64 %185, double* %193, double* %201)
  br label %202

; <label>:202                                     ; preds = %184
  %203 = load i64* %j, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %j, align 8
  br label %180

; <label>:205                                     ; preds = %180
  br label %206

; <label>:206                                     ; preds = %205, %175
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define i64 @_Z10BitReversell(i64 %M, i64 %k) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %M, i64* %1, align 8
  store i64 %k, i64* %2, align 8
  store i64 0, i64* %j, align 8
  %3 = load i64* %2, align 8
  store i64 %3, i64* %tmp, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %16, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %1, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %4
  %9 = load i64* %j, align 8
  %10 = mul nsw i64 2, %9
  %11 = load i64* %tmp, align 8
  %12 = and i64 %11, 1
  %13 = add nsw i64 %10, %12
  store i64 %13, i64* %j, align 8
  %14 = load i64* %tmp, align 8
  %15 = ashr i64 %14, 1
  store i64 %15, i64* %tmp, align 8
  br label %16

; <label>:16                                      ; preds = %8
  %17 = load i64* %i, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %i, align 8
  br label %4

; <label>:19                                      ; preds = %4
  %20 = load i64* %j, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define void @_Z9TransposelPdS_llll(i64 %n1, double* %src, double* %dest, i64 %MyNum, i64 %MyFirst, i64 %MyLast, i64 %pad_length) #4 {
  %1 = alloca i64, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %l = alloca i64, align 8
  %m = alloca i64, align 8
  %blksize = alloca i64, align 8
  %numblks = alloca i64, align 8
  %firstfirst = alloca i64, align 8
  %h_off = alloca i64, align 8
  %v_off = alloca i64, align 8
  %v = alloca i64, align 8
  %h = alloca i64, align 8
  %n1p = alloca i64, align 8
  %row_count = alloca i64, align 8
  store i64 %n1, i64* %1, align 8
  store double* %src, double** %2, align 8
  store double* %dest, double** %3, align 8
  store i64 %MyNum, i64* %4, align 8
  store i64 %MyFirst, i64* %5, align 8
  store i64 %MyLast, i64* %6, align 8
  store i64 %pad_length, i64* %7, align 8
  %8 = load i64* %6, align 8
  %9 = load i64* %5, align 8
  %10 = sub nsw i64 %8, %9
  store i64 %10, i64* %blksize, align 8
  %11 = load i64* %blksize, align 8
  %12 = mul nsw i64 2, %11
  %13 = load i64* @num_cache_lines, align 8
  %14 = sdiv i64 %12, %13
  store i64 %14, i64* %numblks, align 8
  %15 = load i64* %numblks, align 8
  %16 = load i64* @num_cache_lines, align 8
  %17 = mul nsw i64 %15, %16
  %18 = load i64* %blksize, align 8
  %19 = mul nsw i64 2, %18
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %0
  %22 = load i64* %numblks, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %numblks, align 8
  br label %24

; <label>:24                                      ; preds = %21, %0
  %25 = load i64* %blksize, align 8
  %26 = load i64* %numblks, align 8
  %27 = sdiv i64 %25, %26
  store i64 %27, i64* %blksize, align 8
  %28 = load i64* %5, align 8
  store i64 %28, i64* %firstfirst, align 8
  %29 = load i64* %1, align 8
  %30 = load i64* @P, align 8
  %31 = sdiv i64 %29, %30
  store i64 %31, i64* %row_count, align 8
  %32 = load i64* %1, align 8
  %33 = load i64* %7, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %n1p, align 8
  %35 = load i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %l, align 8
  br label %37

; <label>:37                                      ; preds = %130, %24
  %38 = load i64* %l, align 8
  %39 = load i64* @P, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %133

; <label>:41                                      ; preds = %37
  %42 = load i64* %l, align 8
  %43 = load i64* %row_count, align 8
  %44 = mul nsw i64 %42, %43
  store i64 %44, i64* %v_off, align 8
  store i64 0, i64* %k, align 8
  br label %45

; <label>:45                                      ; preds = %126, %41
  %46 = load i64* %k, align 8
  %47 = load i64* %numblks, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %129

; <label>:49                                      ; preds = %45
  %50 = load i64* %firstfirst, align 8
  store i64 %50, i64* %h_off, align 8
  store i64 0, i64* %m, align 8
  br label %51

; <label>:51                                      ; preds = %119, %49
  %52 = load i64* %m, align 8
  %53 = load i64* %numblks, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %122

; <label>:55                                      ; preds = %51
  store i64 0, i64* %i, align 8
  br label %56

; <label>:56                                      ; preds = %112, %55
  %57 = load i64* %i, align 8
  %58 = load i64* %blksize, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %115

; <label>:60                                      ; preds = %56
  %61 = load i64* %v_off, align 8
  %62 = load i64* %i, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %v, align 8
  store i64 0, i64* %j, align 8
  br label %64

; <label>:64                                      ; preds = %108, %60
  %65 = load i64* %j, align 8
  %66 = load i64* %blksize, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %111

; <label>:68                                      ; preds = %64
  %69 = load i64* %h_off, align 8
  %70 = load i64* %j, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %h, align 8
  %72 = load i64* %v, align 8
  %73 = load i64* %n1p, align 8
  %74 = mul nsw i64 %72, %73
  %75 = load i64* %h, align 8
  %76 = add nsw i64 %74, %75
  %77 = mul nsw i64 2, %76
  %78 = load double** %2, align 8
  %79 = getelementptr inbounds double* %78, i64 %77
  %80 = load double* %79, align 8
  %81 = load i64* %h, align 8
  %82 = load i64* %n1p, align 8
  %83 = mul nsw i64 %81, %82
  %84 = load i64* %v, align 8
  %85 = add nsw i64 %83, %84
  %86 = mul nsw i64 2, %85
  %87 = load double** %3, align 8
  %88 = getelementptr inbounds double* %87, i64 %86
  store double %80, double* %88, align 8
  %89 = load i64* %v, align 8
  %90 = load i64* %n1p, align 8
  %91 = mul nsw i64 %89, %90
  %92 = load i64* %h, align 8
  %93 = add nsw i64 %91, %92
  %94 = mul nsw i64 2, %93
  %95 = add nsw i64 %94, 1
  %96 = load double** %2, align 8
  %97 = getelementptr inbounds double* %96, i64 %95
  %98 = load double* %97, align 8
  %99 = load i64* %h, align 8
  %100 = load i64* %n1p, align 8
  %101 = mul nsw i64 %99, %100
  %102 = load i64* %v, align 8
  %103 = add nsw i64 %101, %102
  %104 = mul nsw i64 2, %103
  %105 = add nsw i64 %104, 1
  %106 = load double** %3, align 8
  %107 = getelementptr inbounds double* %106, i64 %105
  store double %98, double* %107, align 8
  br label %108

; <label>:108                                     ; preds = %68
  %109 = load i64* %j, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %j, align 8
  br label %64

; <label>:111                                     ; preds = %64
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load i64* %i, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %i, align 8
  br label %56

; <label>:115                                     ; preds = %56
  %116 = load i64* %blksize, align 8
  %117 = load i64* %h_off, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %h_off, align 8
  br label %119

; <label>:119                                     ; preds = %115
  %120 = load i64* %m, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %m, align 8
  br label %51

; <label>:122                                     ; preds = %51
  %123 = load i64* %blksize, align 8
  %124 = load i64* %v_off, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %v_off, align 8
  br label %126

; <label>:126                                     ; preds = %122
  %127 = load i64* %k, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %k, align 8
  br label %45

; <label>:129                                     ; preds = %45
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i64* %l, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %l, align 8
  br label %37

; <label>:133                                     ; preds = %37
  store i64 0, i64* %l, align 8
  br label %134

; <label>:134                                     ; preds = %227, %133
  %135 = load i64* %l, align 8
  %136 = load i64* %4, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %230

; <label>:138                                     ; preds = %134
  %139 = load i64* %l, align 8
  %140 = load i64* %row_count, align 8
  %141 = mul nsw i64 %139, %140
  store i64 %141, i64* %v_off, align 8
  store i64 0, i64* %k, align 8
  br label %142

; <label>:142                                     ; preds = %223, %138
  %143 = load i64* %k, align 8
  %144 = load i64* %numblks, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %226

; <label>:146                                     ; preds = %142
  %147 = load i64* %firstfirst, align 8
  store i64 %147, i64* %h_off, align 8
  store i64 0, i64* %m, align 8
  br label %148

; <label>:148                                     ; preds = %216, %146
  %149 = load i64* %m, align 8
  %150 = load i64* %numblks, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %219

; <label>:152                                     ; preds = %148
  store i64 0, i64* %i, align 8
  br label %153

; <label>:153                                     ; preds = %209, %152
  %154 = load i64* %i, align 8
  %155 = load i64* %blksize, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %212

; <label>:157                                     ; preds = %153
  %158 = load i64* %v_off, align 8
  %159 = load i64* %i, align 8
  %160 = add nsw i64 %158, %159
  store i64 %160, i64* %v, align 8
  store i64 0, i64* %j, align 8
  br label %161

; <label>:161                                     ; preds = %205, %157
  %162 = load i64* %j, align 8
  %163 = load i64* %blksize, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %208

; <label>:165                                     ; preds = %161
  %166 = load i64* %h_off, align 8
  %167 = load i64* %j, align 8
  %168 = add nsw i64 %166, %167
  store i64 %168, i64* %h, align 8
  %169 = load i64* %v, align 8
  %170 = load i64* %n1p, align 8
  %171 = mul nsw i64 %169, %170
  %172 = load i64* %h, align 8
  %173 = add nsw i64 %171, %172
  %174 = mul nsw i64 2, %173
  %175 = load double** %2, align 8
  %176 = getelementptr inbounds double* %175, i64 %174
  %177 = load double* %176, align 8
  %178 = load i64* %h, align 8
  %179 = load i64* %n1p, align 8
  %180 = mul nsw i64 %178, %179
  %181 = load i64* %v, align 8
  %182 = add nsw i64 %180, %181
  %183 = mul nsw i64 2, %182
  %184 = load double** %3, align 8
  %185 = getelementptr inbounds double* %184, i64 %183
  store double %177, double* %185, align 8
  %186 = load i64* %v, align 8
  %187 = load i64* %n1p, align 8
  %188 = mul nsw i64 %186, %187
  %189 = load i64* %h, align 8
  %190 = add nsw i64 %188, %189
  %191 = mul nsw i64 2, %190
  %192 = add nsw i64 %191, 1
  %193 = load double** %2, align 8
  %194 = getelementptr inbounds double* %193, i64 %192
  %195 = load double* %194, align 8
  %196 = load i64* %h, align 8
  %197 = load i64* %n1p, align 8
  %198 = mul nsw i64 %196, %197
  %199 = load i64* %v, align 8
  %200 = add nsw i64 %198, %199
  %201 = mul nsw i64 2, %200
  %202 = add nsw i64 %201, 1
  %203 = load double** %3, align 8
  %204 = getelementptr inbounds double* %203, i64 %202
  store double %195, double* %204, align 8
  br label %205

; <label>:205                                     ; preds = %165
  %206 = load i64* %j, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %j, align 8
  br label %161

; <label>:208                                     ; preds = %161
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i64* %i, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %i, align 8
  br label %153

; <label>:212                                     ; preds = %153
  %213 = load i64* %blksize, align 8
  %214 = load i64* %h_off, align 8
  %215 = add nsw i64 %214, %213
  store i64 %215, i64* %h_off, align 8
  br label %216

; <label>:216                                     ; preds = %212
  %217 = load i64* %m, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %m, align 8
  br label %148

; <label>:219                                     ; preds = %148
  %220 = load i64* %blksize, align 8
  %221 = load i64* %v_off, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, i64* %v_off, align 8
  br label %223

; <label>:223                                     ; preds = %219
  %224 = load i64* %k, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %k, align 8
  br label %142

; <label>:226                                     ; preds = %142
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i64* %l, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %l, align 8
  br label %134

; <label>:230                                     ; preds = %134
  %231 = load i64* %4, align 8
  %232 = load i64* %row_count, align 8
  %233 = mul nsw i64 %231, %232
  store i64 %233, i64* %v_off, align 8
  store i64 0, i64* %k, align 8
  br label %234

; <label>:234                                     ; preds = %315, %230
  %235 = load i64* %k, align 8
  %236 = load i64* %numblks, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %318

; <label>:238                                     ; preds = %234
  %239 = load i64* %firstfirst, align 8
  store i64 %239, i64* %h_off, align 8
  store i64 0, i64* %m, align 8
  br label %240

; <label>:240                                     ; preds = %308, %238
  %241 = load i64* %m, align 8
  %242 = load i64* %numblks, align 8
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %311

; <label>:244                                     ; preds = %240
  store i64 0, i64* %i, align 8
  br label %245

; <label>:245                                     ; preds = %301, %244
  %246 = load i64* %i, align 8
  %247 = load i64* %blksize, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %304

; <label>:249                                     ; preds = %245
  %250 = load i64* %v_off, align 8
  %251 = load i64* %i, align 8
  %252 = add nsw i64 %250, %251
  store i64 %252, i64* %v, align 8
  store i64 0, i64* %j, align 8
  br label %253

; <label>:253                                     ; preds = %297, %249
  %254 = load i64* %j, align 8
  %255 = load i64* %blksize, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %300

; <label>:257                                     ; preds = %253
  %258 = load i64* %h_off, align 8
  %259 = load i64* %j, align 8
  %260 = add nsw i64 %258, %259
  store i64 %260, i64* %h, align 8
  %261 = load i64* %v, align 8
  %262 = load i64* %n1p, align 8
  %263 = mul nsw i64 %261, %262
  %264 = load i64* %h, align 8
  %265 = add nsw i64 %263, %264
  %266 = mul nsw i64 2, %265
  %267 = load double** %2, align 8
  %268 = getelementptr inbounds double* %267, i64 %266
  %269 = load double* %268, align 8
  %270 = load i64* %h, align 8
  %271 = load i64* %n1p, align 8
  %272 = mul nsw i64 %270, %271
  %273 = load i64* %v, align 8
  %274 = add nsw i64 %272, %273
  %275 = mul nsw i64 2, %274
  %276 = load double** %3, align 8
  %277 = getelementptr inbounds double* %276, i64 %275
  store double %269, double* %277, align 8
  %278 = load i64* %v, align 8
  %279 = load i64* %n1p, align 8
  %280 = mul nsw i64 %278, %279
  %281 = load i64* %h, align 8
  %282 = add nsw i64 %280, %281
  %283 = mul nsw i64 2, %282
  %284 = add nsw i64 %283, 1
  %285 = load double** %2, align 8
  %286 = getelementptr inbounds double* %285, i64 %284
  %287 = load double* %286, align 8
  %288 = load i64* %h, align 8
  %289 = load i64* %n1p, align 8
  %290 = mul nsw i64 %288, %289
  %291 = load i64* %v, align 8
  %292 = add nsw i64 %290, %291
  %293 = mul nsw i64 2, %292
  %294 = add nsw i64 %293, 1
  %295 = load double** %3, align 8
  %296 = getelementptr inbounds double* %295, i64 %294
  store double %287, double* %296, align 8
  br label %297

; <label>:297                                     ; preds = %257
  %298 = load i64* %j, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %j, align 8
  br label %253

; <label>:300                                     ; preds = %253
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load i64* %i, align 8
  %303 = add nsw i64 %302, 1
  store i64 %303, i64* %i, align 8
  br label %245

; <label>:304                                     ; preds = %245
  %305 = load i64* %blksize, align 8
  %306 = load i64* %h_off, align 8
  %307 = add nsw i64 %306, %305
  store i64 %307, i64* %h_off, align 8
  br label %308

; <label>:308                                     ; preds = %304
  %309 = load i64* %m, align 8
  %310 = add nsw i64 %309, 1
  store i64 %310, i64* %m, align 8
  br label %240

; <label>:311                                     ; preds = %240
  %312 = load i64* %blksize, align 8
  %313 = load i64* %v_off, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %v_off, align 8
  br label %315

; <label>:315                                     ; preds = %311
  %316 = load i64* %k, align 8
  %317 = add nsw i64 %316, 1
  store i64 %317, i64* %k, align 8
  br label %234

; <label>:318                                     ; preds = %234
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z9FFT1DOncelllPdS_(i64 %direction, i64 %M, i64 %N, double* %u, double* %x) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %q = alloca i64, align 8
  %L = alloca i64, align 8
  %r = alloca i64, align 8
  %Lstar = alloca i64, align 8
  %u1 = alloca double*, align 8
  %x1 = alloca double*, align 8
  %x2 = alloca double*, align 8
  %omega_r = alloca double, align 8
  %omega_c = alloca double, align 8
  %tau_r = alloca double, align 8
  %tau_c = alloca double, align 8
  %x_r = alloca double, align 8
  %x_c = alloca double, align 8
  store i64 %direction, i64* %1, align 8
  store i64 %M, i64* %2, align 8
  store i64 %N, i64* %3, align 8
  store double* %u, double** %4, align 8
  store double* %x, double** %5, align 8
  %6 = load i64* %3, align 8
  %7 = load i64* %2, align 8
  %8 = load double** %5, align 8
  call void @_Z7ReversellPd(i64 %6, i64 %7, double* %8)
  store i64 1, i64* %q, align 8
  br label %9

; <label>:9                                       ; preds = %140, %0
  %10 = load i64* %q, align 8
  %11 = load i64* %2, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %143

; <label>:13                                      ; preds = %9
  %14 = load i64* %q, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 1, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %L, align 8
  %18 = load i64* %3, align 8
  %19 = load i64* %L, align 8
  %20 = sdiv i64 %18, %19
  store i64 %20, i64* %r, align 8
  %21 = load i64* %L, align 8
  %22 = sdiv i64 %21, 2
  store i64 %22, i64* %Lstar, align 8
  %23 = load i64* %Lstar, align 8
  %24 = sub nsw i64 %23, 1
  %25 = mul nsw i64 2, %24
  %26 = load double** %4, align 8
  %27 = getelementptr inbounds double* %26, i64 %25
  store double* %27, double** %u1, align 8
  store i64 0, i64* %k, align 8
  br label %28

; <label>:28                                      ; preds = %136, %13
  %29 = load i64* %k, align 8
  %30 = load i64* %r, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %139

; <label>:32                                      ; preds = %28
  %33 = load i64* %k, align 8
  %34 = load i64* %L, align 8
  %35 = mul nsw i64 %33, %34
  %36 = mul nsw i64 2, %35
  %37 = load double** %5, align 8
  %38 = getelementptr inbounds double* %37, i64 %36
  store double* %38, double** %x1, align 8
  %39 = load i64* %k, align 8
  %40 = load i64* %L, align 8
  %41 = mul nsw i64 %39, %40
  %42 = load i64* %Lstar, align 8
  %43 = add nsw i64 %41, %42
  %44 = mul nsw i64 2, %43
  %45 = load double** %5, align 8
  %46 = getelementptr inbounds double* %45, i64 %44
  store double* %46, double** %x2, align 8
  store i64 0, i64* %j, align 8
  br label %47

; <label>:47                                      ; preds = %132, %32
  %48 = load i64* %j, align 8
  %49 = load i64* %Lstar, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %135

; <label>:51                                      ; preds = %47
  %52 = load i64* %j, align 8
  %53 = mul nsw i64 2, %52
  %54 = load double** %u1, align 8
  %55 = getelementptr inbounds double* %54, i64 %53
  %56 = load double* %55, align 8
  store double %56, double* %omega_r, align 8
  %57 = load i64* %1, align 8
  %58 = sitofp i64 %57 to double
  %59 = load i64* %j, align 8
  %60 = mul nsw i64 2, %59
  %61 = add nsw i64 %60, 1
  %62 = load double** %u1, align 8
  %63 = getelementptr inbounds double* %62, i64 %61
  %64 = load double* %63, align 8
  %65 = fmul double %58, %64
  store double %65, double* %omega_c, align 8
  %66 = load i64* %j, align 8
  %67 = mul nsw i64 2, %66
  %68 = load double** %x2, align 8
  %69 = getelementptr inbounds double* %68, i64 %67
  %70 = load double* %69, align 8
  store double %70, double* %x_r, align 8
  %71 = load i64* %j, align 8
  %72 = mul nsw i64 2, %71
  %73 = add nsw i64 %72, 1
  %74 = load double** %x2, align 8
  %75 = getelementptr inbounds double* %74, i64 %73
  %76 = load double* %75, align 8
  store double %76, double* %x_c, align 8
  %77 = load double* %omega_r, align 8
  %78 = load double* %x_r, align 8
  %79 = fmul double %77, %78
  %80 = load double* %omega_c, align 8
  %81 = load double* %x_c, align 8
  %82 = fmul double %80, %81
  %83 = fsub double %79, %82
  store double %83, double* %tau_r, align 8
  %84 = load double* %omega_r, align 8
  %85 = load double* %x_c, align 8
  %86 = fmul double %84, %85
  %87 = load double* %omega_c, align 8
  %88 = load double* %x_r, align 8
  %89 = fmul double %87, %88
  %90 = fadd double %86, %89
  store double %90, double* %tau_c, align 8
  %91 = load i64* %j, align 8
  %92 = mul nsw i64 2, %91
  %93 = load double** %x1, align 8
  %94 = getelementptr inbounds double* %93, i64 %92
  %95 = load double* %94, align 8
  store double %95, double* %x_r, align 8
  %96 = load i64* %j, align 8
  %97 = mul nsw i64 2, %96
  %98 = add nsw i64 %97, 1
  %99 = load double** %x1, align 8
  %100 = getelementptr inbounds double* %99, i64 %98
  %101 = load double* %100, align 8
  store double %101, double* %x_c, align 8
  %102 = load double* %x_r, align 8
  %103 = load double* %tau_r, align 8
  %104 = fsub double %102, %103
  %105 = load i64* %j, align 8
  %106 = mul nsw i64 2, %105
  %107 = load double** %x2, align 8
  %108 = getelementptr inbounds double* %107, i64 %106
  store double %104, double* %108, align 8
  %109 = load double* %x_c, align 8
  %110 = load double* %tau_c, align 8
  %111 = fsub double %109, %110
  %112 = load i64* %j, align 8
  %113 = mul nsw i64 2, %112
  %114 = add nsw i64 %113, 1
  %115 = load double** %x2, align 8
  %116 = getelementptr inbounds double* %115, i64 %114
  store double %111, double* %116, align 8
  %117 = load double* %x_r, align 8
  %118 = load double* %tau_r, align 8
  %119 = fadd double %117, %118
  %120 = load i64* %j, align 8
  %121 = mul nsw i64 2, %120
  %122 = load double** %x1, align 8
  %123 = getelementptr inbounds double* %122, i64 %121
  store double %119, double* %123, align 8
  %124 = load double* %x_c, align 8
  %125 = load double* %tau_c, align 8
  %126 = fadd double %124, %125
  %127 = load i64* %j, align 8
  %128 = mul nsw i64 2, %127
  %129 = add nsw i64 %128, 1
  %130 = load double** %x1, align 8
  %131 = getelementptr inbounds double* %130, i64 %129
  store double %126, double* %131, align 8
  br label %132

; <label>:132                                     ; preds = %51
  %133 = load i64* %j, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %j, align 8
  br label %47

; <label>:135                                     ; preds = %47
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i64* %k, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %k, align 8
  br label %28

; <label>:139                                     ; preds = %28
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i64* %q, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %q, align 8
  br label %9

; <label>:143                                     ; preds = %9
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z13TwiddleOneCollllPdS_l(i64 %direction, i64 %n1, i64 %j, double* %u, double* %x, i64 %pad_length) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %i = alloca i64, align 8
  %omega_r = alloca double, align 8
  %omega_c = alloca double, align 8
  %x_r = alloca double, align 8
  %x_c = alloca double, align 8
  store i64 %direction, i64* %1, align 8
  store i64 %n1, i64* %2, align 8
  store i64 %j, i64* %3, align 8
  store double* %u, double** %4, align 8
  store double* %x, double** %5, align 8
  store i64 %pad_length, i64* %6, align 8
  store i64 0, i64* %i, align 8
  br label %7

; <label>:7                                       ; preds = %72, %0
  %8 = load i64* %i, align 8
  %9 = load i64* %2, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %75

; <label>:11                                      ; preds = %7
  %12 = load i64* %3, align 8
  %13 = load i64* %2, align 8
  %14 = load i64* %6, align 8
  %15 = add nsw i64 %13, %14
  %16 = mul nsw i64 %12, %15
  %17 = load i64* %i, align 8
  %18 = add nsw i64 %16, %17
  %19 = mul nsw i64 2, %18
  %20 = load double** %4, align 8
  %21 = getelementptr inbounds double* %20, i64 %19
  %22 = load double* %21, align 8
  store double %22, double* %omega_r, align 8
  %23 = load i64* %1, align 8
  %24 = sitofp i64 %23 to double
  %25 = load i64* %3, align 8
  %26 = load i64* %2, align 8
  %27 = load i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = mul nsw i64 %25, %28
  %30 = load i64* %i, align 8
  %31 = add nsw i64 %29, %30
  %32 = mul nsw i64 2, %31
  %33 = add nsw i64 %32, 1
  %34 = load double** %4, align 8
  %35 = getelementptr inbounds double* %34, i64 %33
  %36 = load double* %35, align 8
  %37 = fmul double %24, %36
  store double %37, double* %omega_c, align 8
  %38 = load i64* %i, align 8
  %39 = mul nsw i64 2, %38
  %40 = load double** %5, align 8
  %41 = getelementptr inbounds double* %40, i64 %39
  %42 = load double* %41, align 8
  store double %42, double* %x_r, align 8
  %43 = load i64* %i, align 8
  %44 = mul nsw i64 2, %43
  %45 = add nsw i64 %44, 1
  %46 = load double** %5, align 8
  %47 = getelementptr inbounds double* %46, i64 %45
  %48 = load double* %47, align 8
  store double %48, double* %x_c, align 8
  %49 = load double* %omega_r, align 8
  %50 = load double* %x_r, align 8
  %51 = fmul double %49, %50
  %52 = load double* %omega_c, align 8
  %53 = load double* %x_c, align 8
  %54 = fmul double %52, %53
  %55 = fsub double %51, %54
  %56 = load i64* %i, align 8
  %57 = mul nsw i64 2, %56
  %58 = load double** %5, align 8
  %59 = getelementptr inbounds double* %58, i64 %57
  store double %55, double* %59, align 8
  %60 = load double* %omega_r, align 8
  %61 = load double* %x_c, align 8
  %62 = fmul double %60, %61
  %63 = load double* %omega_c, align 8
  %64 = load double* %x_r, align 8
  %65 = fmul double %63, %64
  %66 = fadd double %62, %65
  %67 = load i64* %i, align 8
  %68 = mul nsw i64 2, %67
  %69 = add nsw i64 %68, 1
  %70 = load double** %5, align 8
  %71 = getelementptr inbounds double* %70, i64 %69
  store double %66, double* %71, align 8
  br label %72

; <label>:72                                      ; preds = %11
  %73 = load i64* %i, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %i, align 8
  br label %7

; <label>:75                                      ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z5ScalellPd(i64 %n1, i64 %N, double* %x) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca double*, align 8
  %i = alloca i64, align 8
  store i64 %n1, i64* %1, align 8
  store i64 %N, i64* %2, align 8
  store double* %x, double** %3, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %26, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %1, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %29

; <label>:8                                       ; preds = %4
  %9 = load i64* %2, align 8
  %10 = sitofp i64 %9 to double
  %11 = load i64* %i, align 8
  %12 = mul nsw i64 2, %11
  %13 = load double** %3, align 8
  %14 = getelementptr inbounds double* %13, i64 %12
  %15 = load double* %14, align 8
  %16 = fdiv double %15, %10
  store double %16, double* %14, align 8
  %17 = load i64* %2, align 8
  %18 = sitofp i64 %17 to double
  %19 = load i64* %i, align 8
  %20 = mul nsw i64 2, %19
  %21 = add nsw i64 %20, 1
  %22 = load double** %3, align 8
  %23 = getelementptr inbounds double* %22, i64 %21
  %24 = load double* %23, align 8
  %25 = fdiv double %24, %18
  store double %25, double* %23, align 8
  br label %26

; <label>:26                                      ; preds = %8
  %27 = load i64* %i, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %i, align 8
  br label %4

; <label>:29                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z10CopyColumnlPdS_(i64 %n1, double* %src, double* %dest) #4 {
  %1 = alloca i64, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %i = alloca i64, align 8
  store i64 %n1, i64* %1, align 8
  store double* %src, double** %2, align 8
  store double* %dest, double** %3, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %29, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %1, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %32

; <label>:8                                       ; preds = %4
  %9 = load i64* %i, align 8
  %10 = mul nsw i64 2, %9
  %11 = load double** %2, align 8
  %12 = getelementptr inbounds double* %11, i64 %10
  %13 = load double* %12, align 8
  %14 = load i64* %i, align 8
  %15 = mul nsw i64 2, %14
  %16 = load double** %3, align 8
  %17 = getelementptr inbounds double* %16, i64 %15
  store double %13, double* %17, align 8
  %18 = load i64* %i, align 8
  %19 = mul nsw i64 2, %18
  %20 = add nsw i64 %19, 1
  %21 = load double** %2, align 8
  %22 = getelementptr inbounds double* %21, i64 %20
  %23 = load double* %22, align 8
  %24 = load i64* %i, align 8
  %25 = mul nsw i64 2, %24
  %26 = add nsw i64 %25, 1
  %27 = load double** %3, align 8
  %28 = getelementptr inbounds double* %27, i64 %26
  store double %23, double* %28, align 8
  br label %29

; <label>:29                                      ; preds = %8
  %30 = load i64* %i, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %i, align 8
  br label %4

; <label>:32                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z7ReversellPd(i64 %N, i64 %M, double* %x) #4 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca double*, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %tmp = alloca double, align 8
  %tmp1 = alloca double, align 8
  store i64 %N, i64* %1, align 8
  store i64 %M, i64* %2, align 8
  store double* %x, double** %3, align 8
  store i64 0, i64* %k, align 8
  br label %4

; <label>:4                                       ; preds = %59, %0
  %5 = load i64* %k, align 8
  %6 = load i64* %1, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %62

; <label>:8                                       ; preds = %4
  %9 = load i64* %2, align 8
  %10 = load i64* %k, align 8
  %11 = call i64 @_Z10BitReversell(i64 %9, i64 %10)
  store i64 %11, i64* %j, align 8
  %12 = load i64* %j, align 8
  %13 = load i64* %k, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %58

; <label>:15                                      ; preds = %8
  %16 = load i64* %j, align 8
  %17 = mul nsw i64 2, %16
  %18 = load double** %3, align 8
  %19 = getelementptr inbounds double* %18, i64 %17
  %20 = load double* %19, align 8
  store double %20, double* %tmp, align 8
  %21 = load i64* %k, align 8
  %22 = mul nsw i64 2, %21
  %23 = load double** %3, align 8
  %24 = getelementptr inbounds double* %23, i64 %22
  %25 = load double* %24, align 8
  %26 = load i64* %j, align 8
  %27 = mul nsw i64 2, %26
  %28 = load double** %3, align 8
  %29 = getelementptr inbounds double* %28, i64 %27
  store double %25, double* %29, align 8
  %30 = load double* %tmp, align 8
  %31 = load i64* %k, align 8
  %32 = mul nsw i64 2, %31
  %33 = load double** %3, align 8
  %34 = getelementptr inbounds double* %33, i64 %32
  store double %30, double* %34, align 8
  %35 = load i64* %j, align 8
  %36 = mul nsw i64 2, %35
  %37 = add nsw i64 %36, 1
  %38 = load double** %3, align 8
  %39 = getelementptr inbounds double* %38, i64 %37
  %40 = load double* %39, align 8
  store double %40, double* %tmp1, align 8
  %41 = load i64* %k, align 8
  %42 = mul nsw i64 2, %41
  %43 = add nsw i64 %42, 1
  %44 = load double** %3, align 8
  %45 = getelementptr inbounds double* %44, i64 %43
  %46 = load double* %45, align 8
  %47 = load i64* %j, align 8
  %48 = mul nsw i64 2, %47
  %49 = add nsw i64 %48, 1
  %50 = load double** %3, align 8
  %51 = getelementptr inbounds double* %50, i64 %49
  store double %46, double* %51, align 8
  %52 = load double* %tmp1, align 8
  %53 = load i64* %k, align 8
  %54 = mul nsw i64 2, %53
  %55 = add nsw i64 %54, 1
  %56 = load double** %3, align 8
  %57 = getelementptr inbounds double* %56, i64 %55
  store double %52, double* %57, align 8
  br label %58

; <label>:58                                      ; preds = %15, %8
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i64* %k, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %k, align 8
  br label %4

; <label>:62                                      ; preds = %4
  ret void
}

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
