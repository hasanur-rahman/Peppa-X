; ModuleID = '/home/hasan/github-projects/SC21/Peppa-X/Peppa-X-workflow/FI-simulation-And-Evaluation/Simulation/FI-for-initial-study/xsbench-baseline-best-input-fi-200-gen/llfi/xsbench-llfi_index.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Generating Unionized Energy Grid...\0A\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"Copying and Sorting all nuclide grids...\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Assigning energies to unionized grid...\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"Assigning pointers to Unionized Energy Grid...\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0DAligning Unionized Grid...(%.0lf%% complete)\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str7 = private unnamed_addr constant [488 x i8] c"                   __   __ ___________                 _                        \0A                   \5C \5C / //  ___| ___ \5C               | |                       \0A                    \5C V / \5C `--.| |_/ / ___ _ __   ___| |__                     \0A                    /   \5C  `--. \5C ___ \5C/ _ \5C '_ \5C / __| '_ \5C                    \0A                   / /^\5C \5C/\5C__/ / |_/ /  __/ | | | (__| | | |                   \0A                   \5C/   \5C/\5C____/\5C____/ \5C___|_| |_|\5C___|_| |_|                   \0A\0A\00", align 1
@.str18 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@.str310 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external global %struct._IO_FILE*
@.str411 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str512 = private unnamed_addr constant [8 x i8] c"RESULTS\00", align 1
@.str613 = private unnamed_addr constant [17 x i8] c"Threads:     %d\0A\00", align 1
@.str714 = private unnamed_addr constant [14 x i8] c"Lookups:     \00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"Verification checksum: %llu\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"results.txt\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"%d\09%d\0A\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"Verification Mode:            on\0A\00", align 1
@.str14 = private unnamed_addr constant [34 x i8] c"Materials:                    %d\0A\00", align 1
@.str15 = private unnamed_addr constant [34 x i8] c"H-M Benchmark Size:           %s\0A\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"Total Nuclides:               %ld\0A\00", align 1
@.str17 = private unnamed_addr constant [31 x i8] c"Gridpoints (per Nuclide):     \00", align 1
@.str1815 = private unnamed_addr constant [31 x i8] c"Unionized Energy Gridpoints:  \00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"XS Lookups:                   \00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"Threads:                      %d\0A\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"Est. Memory Usage (MB):       \00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str23 = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"%ld,%03ld\0A\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"%ld,%03ld,%03ld\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"%ld,%03ld,%03ld,%03ld\0A\00", align 1
@.str28 = private unnamed_addr constant [28 x i8] c"Usage: ./XSBench <options>\0A\00", align 1
@.str2916 = private unnamed_addr constant [18 x i8] c"Options include:\0A\00", align 1
@.str30 = private unnamed_addr constant [52 x i8] c"  -t <threads>     Number of OpenMP threads to run\0A\00", align 1
@.str31 = private unnamed_addr constant [73 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large, XL, XXL)\0A\00", align 1
@.str32 = private unnamed_addr constant [77 x i8] c"  -g <gridpoints>  Number of gridpoints per nuclide (overrides -s defaults)\0A\00", align 1
@.str33 = private unnamed_addr constant [57 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\0A\00", align 1
@.str34 = private unnamed_addr constant [48 x i8] c"Default is equivalent to: -s large -l 15000000\0A\00", align 1
@.str35 = private unnamed_addr constant [55 x i8] c"See readme for full description of default run values\0A\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"XXL\00", align 1
@.str44 = private unnamed_addr constant [36 x i8] c"Generating Nuclide Energy Grids...\0A\00", align 1
@.str145 = private unnamed_addr constant [33 x i8] c"Sorting Nuclide Energy Grids...\0A\00", align 1
@.str246 = private unnamed_addr constant [17 x i8] c"Loading Mats...\0A\00", align 1
@.str347 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str448 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str549 = private unnamed_addr constant [41 x i8] c"\0DCalculating XS's... (%.0lf%% completed)\00", align 1
@.str650 = private unnamed_addr constant [39 x i8] c"%.5lf %d %.5lf %.5lf %.5lf %.5lf %.5lf\00", align 1
@.str751 = private unnamed_addr constant [22 x i8] c"Simulation complete.\0A\00", align 1
@load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@load_mats.mats0_Lrg = private unnamed_addr constant [321 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@load_mats.mats2 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@load_mats.mats5 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats6 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats7 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats8 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats10 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@rn_v.seed = internal global i64 1337, align 8
@.str60 = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str161 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str262 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@load_namestr = internal constant [5 x i8] c"load\00"
@getelementptr_namestr = internal constant [14 x i8] c"getelementptr\00"
@bitcast_namestr = internal constant [8 x i8] c"bitcast\00"
@sitofp_namestr = internal constant [7 x i8] c"sitofp\00"
@fdiv_namestr = internal constant [5 x i8] c"fdiv\00"
@fadd_namestr = internal constant [5 x i8] c"fadd\00"
@sext_namestr = internal constant [5 x i8] c"sext\00"
@sub_namestr = internal constant [4 x i8] c"sub\00"
@icmp_namestr = internal constant [5 x i8] c"icmp\00"
@fsub_namestr = internal constant [5 x i8] c"fsub\00"
@fmul_namestr = internal constant [5 x i8] c"fmul\00"
@add_namestr = internal constant [4 x i8] c"add\00"
@mul_namestr = internal constant [4 x i8] c"mul\00"
@trunc_namestr = internal constant [6 x i8] c"trunc\00"
@sdiv_namestr = internal constant [5 x i8] c"sdiv\00"
@fcmp_namestr = internal constant [5 x i8] c"fcmp\00"
@fptosi_namestr = internal constant [7 x i8] c"fptosi\00"
@srem_namestr = internal constant [5 x i8] c"srem\00"
@zext_namestr = internal constant [5 x i8] c"zext\00"
@urem_namestr = internal constant [5 x i8] c"urem\00"
@uitofp_namestr = internal constant [7 x i8] c"uitofp\00"
@shl_namestr = internal constant [4 x i8] c"shl\00"
@udiv_namestr = internal constant [5 x i8] c"udiv\00"

; Function Attrs: nounwind uwtable
define void @calculate_micro_xs(double %p_energy, i32 %nuc, i64 %n_isotopes, i64 %n_gridpoints, %struct.GridPoint* noalias %energy_grid, %struct.NuclideGridPoint** noalias %nuclide_grids, i32 %idx, double* noalias %xs_vector) #0 {
  %1 = alloca double, align 8, !llfi_index !1
  %2 = alloca i32, align 4, !llfi_index !2
  %3 = alloca i64, align 8, !llfi_index !3
  %4 = alloca i64, align 8, !llfi_index !4
  %5 = alloca %struct.GridPoint*, align 8, !llfi_index !5
  %6 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !6
  %7 = alloca i32, align 4, !llfi_index !7
  %8 = alloca double*, align 8, !llfi_index !8
  %f = alloca double, align 8, !llfi_index !9
  %low = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !10
  %high = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !11
  store double %p_energy, double* %1, align 8, !llfi_index !12
  store i32 %nuc, i32* %2, align 4, !llfi_index !13
  store i64 %n_isotopes, i64* %3, align 8, !llfi_index !14
  store i64 %n_gridpoints, i64* %4, align 8, !llfi_index !15
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %5, align 8, !llfi_index !16
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %6, align 8, !llfi_index !17
  store i32 %idx, i32* %7, align 4, !llfi_index !18
  store double* %xs_vector, double** %8, align 8, !llfi_index !19
  %9 = load i32* %2, align 4, !llfi_index !20
  %fi10 = call i32 @injectFault9(i64 20, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = sext i32 %fi10 to i64, !llfi_index !22
  %fi11 = call i64 @injectFault0(i64 21, i64 %10, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load i32* %7, align 4, !llfi_index !23
  %fi12 = call i32 @injectFault9(i64 22, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = sext i32 %fi12 to i64, !llfi_index !24
  %fi13 = call i64 @injectFault0(i64 23, i64 %12, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load %struct.GridPoint** %5, align 8, !llfi_index !25
  %fi14 = call %struct.GridPoint* @injectFault1(i64 24, %struct.GridPoint* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = getelementptr %struct.GridPoint* %fi14, i64 %fi13, !llfi_index !26
  %fi15 = call %struct.GridPoint* @injectFault1(i64 25, %struct.GridPoint* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = getelementptr %struct.GridPoint* %fi15, i32 0, i32 1, !llfi_index !27
  %fi16 = call i32** @injectFault2(i64 26, i32** %15, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i32** %fi16, align 8, !llfi_index !28
  %fi17 = call i32* @injectFault3(i64 27, i32* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = getelementptr i32* %fi17, i64 %fi11, !llfi_index !29
  %fi9 = call i32* @injectFault3(i64 28, i32* %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load i32* %fi9, align 4, !llfi_index !30
  %fi19 = call i32 @injectFault9(i64 29, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = sext i32 %fi19 to i64, !llfi_index !31
  %fi20 = call i64 @injectFault0(i64 30, i64 %19, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = load i64* %4, align 8, !llfi_index !32
  %fi21 = call i64 @injectFault0(i64 31, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = sub nsw i64 %fi21, 1, !llfi_index !33
  %fi22 = call i64 @injectFault0(i64 32, i64 %21, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = icmp eq i64 %fi20, %fi22, !llfi_index !34
  %fi23 = call i1 @injectFault10(i64 33, i1 %22, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi23, label %23, label %42, !llfi_index !35

; <label>:23                                      ; preds = %0
  %24 = load i32* %2, align 4, !llfi_index !36
  %fi24 = call i32 @injectFault9(i64 35, i32 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = sext i32 %fi24 to i64, !llfi_index !37
  %fi25 = call i64 @injectFault0(i64 36, i64 %25, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load i32* %7, align 4, !llfi_index !38
  %fi26 = call i32 @injectFault9(i64 37, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = sext i32 %fi26 to i64, !llfi_index !39
  %fi27 = call i64 @injectFault0(i64 38, i64 %27, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = load %struct.GridPoint** %5, align 8, !llfi_index !40
  %fi28 = call %struct.GridPoint* @injectFault1(i64 39, %struct.GridPoint* %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = getelementptr %struct.GridPoint* %fi28, i64 %fi27, !llfi_index !41
  %fi29 = call %struct.GridPoint* @injectFault1(i64 40, %struct.GridPoint* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = getelementptr %struct.GridPoint* %fi29, i32 0, i32 1, !llfi_index !42
  %fi30 = call i32** @injectFault2(i64 41, i32** %30, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32** %fi30, align 8, !llfi_index !43
  %fi31 = call i32* @injectFault3(i64 42, i32* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = getelementptr i32* %fi31, i64 %fi25, !llfi_index !44
  %fi32 = call i32* @injectFault3(i64 43, i32* %32, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i32* %fi32, align 4, !llfi_index !45
  %fi18 = call i32 @injectFault9(i64 44, i32 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = sub nsw i32 %fi18, 1, !llfi_index !46
  %fi36 = call i32 @injectFault9(i64 45, i32 %34, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = sext i32 %fi36 to i64, !llfi_index !47
  %fi37 = call i64 @injectFault0(i64 46, i64 %35, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load i32* %2, align 4, !llfi_index !48
  %fi38 = call i32 @injectFault9(i64 47, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = sext i32 %fi38 to i64, !llfi_index !49
  %fi39 = call i64 @injectFault0(i64 48, i64 %37, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = load %struct.NuclideGridPoint*** %6, align 8, !llfi_index !50
  %fi = call %struct.NuclideGridPoint** @injectFault7(i64 49, %struct.NuclideGridPoint** %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = getelementptr %struct.NuclideGridPoint** %fi, i64 %fi39, !llfi_index !51
  %fi1 = call %struct.NuclideGridPoint** @injectFault7(i64 50, %struct.NuclideGridPoint** %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load %struct.NuclideGridPoint** %fi1, align 8, !llfi_index !52
  %fi2 = call %struct.NuclideGridPoint* @injectFault8(i64 51, %struct.NuclideGridPoint* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = getelementptr %struct.NuclideGridPoint* %fi2, i64 %fi37, !llfi_index !53
  %fi3 = call %struct.NuclideGridPoint* @injectFault8(i64 52, %struct.NuclideGridPoint* %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi3, %struct.NuclideGridPoint** %low, align 8, !llfi_index !54
  br label %60, !llfi_index !55

; <label>:42                                      ; preds = %0
  %43 = load i32* %2, align 4, !llfi_index !56
  %fi4 = call i32 @injectFault9(i64 55, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = sext i32 %fi4 to i64, !llfi_index !57
  %fi5 = call i64 @injectFault0(i64 56, i64 %44, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = load i32* %7, align 4, !llfi_index !58
  %fi6 = call i32 @injectFault9(i64 57, i32 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = sext i32 %fi6 to i64, !llfi_index !59
  %fi7 = call i64 @injectFault0(i64 58, i64 %46, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = load %struct.GridPoint** %5, align 8, !llfi_index !60
  %fi8 = call %struct.GridPoint* @injectFault1(i64 59, %struct.GridPoint* %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = getelementptr %struct.GridPoint* %fi8, i64 %fi7, !llfi_index !61
  %fi62 = call %struct.GridPoint* @injectFault1(i64 60, %struct.GridPoint* %48, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = getelementptr %struct.GridPoint* %fi62, i32 0, i32 1, !llfi_index !62
  %fi63 = call i32** @injectFault2(i64 61, i32** %49, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load i32** %fi63, align 8, !llfi_index !63
  %fi64 = call i32* @injectFault3(i64 62, i32* %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = getelementptr i32* %fi64, i64 %fi5, !llfi_index !64
  %fi65 = call i32* @injectFault3(i64 63, i32* %51, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = load i32* %fi65, align 4, !llfi_index !65
  %fi66 = call i32 @injectFault9(i64 64, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %53 = sext i32 %fi66 to i64, !llfi_index !66
  %fi67 = call i64 @injectFault0(i64 65, i64 %53, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = load i32* %2, align 4, !llfi_index !67
  %fi68 = call i32 @injectFault9(i64 66, i32 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = sext i32 %fi68 to i64, !llfi_index !68
  %fi69 = call i64 @injectFault0(i64 67, i64 %55, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %56 = load %struct.NuclideGridPoint*** %6, align 8, !llfi_index !69
  %fi70 = call %struct.NuclideGridPoint** @injectFault7(i64 68, %struct.NuclideGridPoint** %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = getelementptr %struct.NuclideGridPoint** %fi70, i64 %fi69, !llfi_index !70
  %fi71 = call %struct.NuclideGridPoint** @injectFault7(i64 69, %struct.NuclideGridPoint** %57, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = load %struct.NuclideGridPoint** %fi71, align 8, !llfi_index !71
  %fi72 = call %struct.NuclideGridPoint* @injectFault8(i64 70, %struct.NuclideGridPoint* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = getelementptr %struct.NuclideGridPoint* %fi72, i64 %fi67, !llfi_index !72
  %fi73 = call %struct.NuclideGridPoint* @injectFault8(i64 71, %struct.NuclideGridPoint* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi73, %struct.NuclideGridPoint** %low, align 8, !llfi_index !73
  br label %60, !llfi_index !74

; <label>:60                                      ; preds = %42, %23
  %61 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !75
  %fi74 = call %struct.NuclideGridPoint* @injectFault8(i64 74, %struct.NuclideGridPoint* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = getelementptr %struct.NuclideGridPoint* %fi74, i64 1, !llfi_index !76
  %fi75 = call %struct.NuclideGridPoint* @injectFault8(i64 75, %struct.NuclideGridPoint* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi75, %struct.NuclideGridPoint** %high, align 8, !llfi_index !77
  %63 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !78
  %fi76 = call %struct.NuclideGridPoint* @injectFault8(i64 77, %struct.NuclideGridPoint* %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %64 = getelementptr %struct.NuclideGridPoint* %fi76, i32 0, i32 0, !llfi_index !79
  %fi77 = call double* @injectFault11(i64 78, double* %64, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %65 = load double* %fi77, align 8, !llfi_index !80
  %fi33 = call double @injectFault5(i64 79, double %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %66 = load double* %1, align 8, !llfi_index !81
  %fi34 = call double @injectFault5(i64 80, double %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %67 = fsub double %fi33, %fi34, !llfi_index !82
  %fi35 = call double @injectFault5(i64 81, double %67, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %68 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !83
  %fi84 = call %struct.NuclideGridPoint* @injectFault8(i64 82, %struct.NuclideGridPoint* %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %69 = getelementptr %struct.NuclideGridPoint* %fi84, i32 0, i32 0, !llfi_index !84
  %fi85 = call double* @injectFault11(i64 83, double* %69, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %70 = load double* %fi85, align 8, !llfi_index !85
  %fi86 = call double @injectFault5(i64 84, double %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %71 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !86
  %fi87 = call %struct.NuclideGridPoint* @injectFault8(i64 85, %struct.NuclideGridPoint* %71, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %72 = getelementptr %struct.NuclideGridPoint* %fi87, i32 0, i32 0, !llfi_index !87
  %fi88 = call double* @injectFault11(i64 86, double* %72, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %73 = load double* %fi88, align 8, !llfi_index !88
  %fi89 = call double @injectFault5(i64 87, double %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %74 = fsub double %fi86, %fi89, !llfi_index !89
  %fi90 = call double @injectFault5(i64 88, double %74, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %75 = fdiv double %fi35, %fi90, !llfi_index !90
  %fi91 = call double @injectFault5(i64 89, double %75, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi91, double* %f, align 8, !llfi_index !91
  %76 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !92
  %fi92 = call %struct.NuclideGridPoint* @injectFault8(i64 91, %struct.NuclideGridPoint* %76, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %77 = getelementptr %struct.NuclideGridPoint* %fi92, i32 0, i32 1, !llfi_index !93
  %fi93 = call double* @injectFault11(i64 92, double* %77, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %78 = load double* %fi93, align 8, !llfi_index !94
  %fi94 = call double @injectFault5(i64 93, double %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %79 = load double* %f, align 8, !llfi_index !95
  %fi95 = call double @injectFault5(i64 94, double %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %80 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !96
  %fi96 = call %struct.NuclideGridPoint* @injectFault8(i64 95, %struct.NuclideGridPoint* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %81 = getelementptr %struct.NuclideGridPoint* %fi96, i32 0, i32 1, !llfi_index !97
  %fi97 = call double* @injectFault11(i64 96, double* %81, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %82 = load double* %fi97, align 8, !llfi_index !98
  %fi40 = call double @injectFault5(i64 97, double %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %83 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !99
  %fi41 = call %struct.NuclideGridPoint* @injectFault8(i64 98, %struct.NuclideGridPoint* %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %84 = getelementptr %struct.NuclideGridPoint* %fi41, i32 0, i32 1, !llfi_index !100
  %fi42 = call double* @injectFault11(i64 99, double* %84, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %85 = load double* %fi42, align 8, !llfi_index !101
  %fi43 = call double @injectFault5(i64 100, double %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %86 = fsub double %fi40, %fi43, !llfi_index !102
  %fi44 = call double @injectFault5(i64 101, double %86, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %87 = fmul double %fi95, %fi44, !llfi_index !103
  %fi45 = call double @injectFault5(i64 102, double %87, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %88 = fsub double %fi94, %fi45, !llfi_index !104
  %fi46 = call double @injectFault5(i64 103, double %88, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %89 = load double** %8, align 8, !llfi_index !105
  %fi47 = call double* @injectFault11(i64 104, double* %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %90 = getelementptr double* %fi47, i64 0, !llfi_index !106
  %fi48 = call double* @injectFault11(i64 105, double* %90, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi46, double* %fi48, align 8, !llfi_index !107
  %91 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !108
  %fi49 = call %struct.NuclideGridPoint* @injectFault8(i64 107, %struct.NuclideGridPoint* %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %92 = getelementptr %struct.NuclideGridPoint* %fi49, i32 0, i32 2, !llfi_index !109
  %fi50 = call double* @injectFault11(i64 108, double* %92, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %93 = load double* %fi50, align 8, !llfi_index !110
  %fi51 = call double @injectFault5(i64 109, double %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %94 = load double* %f, align 8, !llfi_index !111
  %fi52 = call double @injectFault5(i64 110, double %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %95 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !112
  %fi53 = call %struct.NuclideGridPoint* @injectFault8(i64 111, %struct.NuclideGridPoint* %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %96 = getelementptr %struct.NuclideGridPoint* %fi53, i32 0, i32 2, !llfi_index !113
  %fi54 = call double* @injectFault11(i64 112, double* %96, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %97 = load double* %fi54, align 8, !llfi_index !114
  %fi55 = call double @injectFault5(i64 113, double %97, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %98 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !115
  %fi56 = call %struct.NuclideGridPoint* @injectFault8(i64 114, %struct.NuclideGridPoint* %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %99 = getelementptr %struct.NuclideGridPoint* %fi56, i32 0, i32 2, !llfi_index !116
  %fi57 = call double* @injectFault11(i64 115, double* %99, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %100 = load double* %fi57, align 8, !llfi_index !117
  %fi58 = call double @injectFault5(i64 116, double %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %101 = fsub double %fi55, %fi58, !llfi_index !118
  %fi59 = call double @injectFault5(i64 117, double %101, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %102 = fmul double %fi52, %fi59, !llfi_index !119
  %fi60 = call double @injectFault5(i64 118, double %102, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %103 = fsub double %fi51, %fi60, !llfi_index !120
  %fi61 = call double @injectFault5(i64 119, double %103, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %104 = load double** %8, align 8, !llfi_index !121
  %fi98 = call double* @injectFault11(i64 120, double* %104, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %105 = getelementptr double* %fi98, i64 1, !llfi_index !122
  %fi99 = call double* @injectFault11(i64 121, double* %105, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi61, double* %fi99, align 8, !llfi_index !123
  %106 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !124
  %fi100 = call %struct.NuclideGridPoint* @injectFault8(i64 123, %struct.NuclideGridPoint* %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %107 = getelementptr %struct.NuclideGridPoint* %fi100, i32 0, i32 3, !llfi_index !125
  %fi101 = call double* @injectFault11(i64 124, double* %107, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %108 = load double* %fi101, align 8, !llfi_index !126
  %fi102 = call double @injectFault5(i64 125, double %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %109 = load double* %f, align 8, !llfi_index !127
  %fi103 = call double @injectFault5(i64 126, double %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %110 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !128
  %fi104 = call %struct.NuclideGridPoint* @injectFault8(i64 127, %struct.NuclideGridPoint* %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %111 = getelementptr %struct.NuclideGridPoint* %fi104, i32 0, i32 3, !llfi_index !129
  %fi105 = call double* @injectFault11(i64 128, double* %111, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %112 = load double* %fi105, align 8, !llfi_index !130
  %fi106 = call double @injectFault5(i64 129, double %112, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %113 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !131
  %fi107 = call %struct.NuclideGridPoint* @injectFault8(i64 130, %struct.NuclideGridPoint* %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %114 = getelementptr %struct.NuclideGridPoint* %fi107, i32 0, i32 3, !llfi_index !132
  %fi108 = call double* @injectFault11(i64 131, double* %114, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %115 = load double* %fi108, align 8, !llfi_index !133
  %fi109 = call double @injectFault5(i64 132, double %115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %116 = fsub double %fi106, %fi109, !llfi_index !134
  %fi110 = call double @injectFault5(i64 133, double %116, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %117 = fmul double %fi103, %fi110, !llfi_index !135
  %fi111 = call double @injectFault5(i64 134, double %117, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %118 = fsub double %fi102, %fi111, !llfi_index !136
  %fi112 = call double @injectFault5(i64 135, double %118, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %119 = load double** %8, align 8, !llfi_index !137
  %fi113 = call double* @injectFault11(i64 136, double* %119, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %120 = getelementptr double* %fi113, i64 2, !llfi_index !138
  %fi114 = call double* @injectFault11(i64 137, double* %120, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi112, double* %fi114, align 8, !llfi_index !139
  %121 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !140
  %fi115 = call %struct.NuclideGridPoint* @injectFault8(i64 139, %struct.NuclideGridPoint* %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %122 = getelementptr %struct.NuclideGridPoint* %fi115, i32 0, i32 4, !llfi_index !141
  %fi116 = call double* @injectFault11(i64 140, double* %122, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %123 = load double* %fi116, align 8, !llfi_index !142
  %fi117 = call double @injectFault5(i64 141, double %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %124 = load double* %f, align 8, !llfi_index !143
  %fi118 = call double @injectFault5(i64 142, double %124, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %125 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !144
  %fi119 = call %struct.NuclideGridPoint* @injectFault8(i64 143, %struct.NuclideGridPoint* %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %126 = getelementptr %struct.NuclideGridPoint* %fi119, i32 0, i32 4, !llfi_index !145
  %fi120 = call double* @injectFault11(i64 144, double* %126, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %127 = load double* %fi120, align 8, !llfi_index !146
  %fi121 = call double @injectFault5(i64 145, double %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %128 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !147
  %fi122 = call %struct.NuclideGridPoint* @injectFault8(i64 146, %struct.NuclideGridPoint* %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %129 = getelementptr %struct.NuclideGridPoint* %fi122, i32 0, i32 4, !llfi_index !148
  %fi78 = call double* @injectFault11(i64 147, double* %129, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %130 = load double* %fi78, align 8, !llfi_index !149
  %fi79 = call double @injectFault5(i64 148, double %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %131 = fsub double %fi121, %fi79, !llfi_index !150
  %fi80 = call double @injectFault5(i64 149, double %131, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %132 = fmul double %fi118, %fi80, !llfi_index !151
  %fi81 = call double @injectFault5(i64 150, double %132, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %133 = fsub double %fi117, %fi81, !llfi_index !152
  %fi82 = call double @injectFault5(i64 151, double %133, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %134 = load double** %8, align 8, !llfi_index !153
  %fi83 = call double* @injectFault11(i64 152, double* %134, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %135 = getelementptr double* %fi83, i64 3, !llfi_index !154
  %fi123 = call double* @injectFault11(i64 153, double* %135, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi82, double* %fi123, align 8, !llfi_index !155
  %136 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !156
  %fi124 = call %struct.NuclideGridPoint* @injectFault8(i64 155, %struct.NuclideGridPoint* %136, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %137 = getelementptr %struct.NuclideGridPoint* %fi124, i32 0, i32 5, !llfi_index !157
  %fi125 = call double* @injectFault11(i64 156, double* %137, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %138 = load double* %fi125, align 8, !llfi_index !158
  %fi126 = call double @injectFault5(i64 157, double %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %139 = load double* %f, align 8, !llfi_index !159
  %fi127 = call double @injectFault5(i64 158, double %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %140 = load %struct.NuclideGridPoint** %high, align 8, !llfi_index !160
  %fi128 = call %struct.NuclideGridPoint* @injectFault8(i64 159, %struct.NuclideGridPoint* %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %141 = getelementptr %struct.NuclideGridPoint* %fi128, i32 0, i32 5, !llfi_index !161
  %fi129 = call double* @injectFault11(i64 160, double* %141, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %142 = load double* %fi129, align 8, !llfi_index !162
  %fi130 = call double @injectFault5(i64 161, double %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %143 = load %struct.NuclideGridPoint** %low, align 8, !llfi_index !163
  %fi131 = call %struct.NuclideGridPoint* @injectFault8(i64 162, %struct.NuclideGridPoint* %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %144 = getelementptr %struct.NuclideGridPoint* %fi131, i32 0, i32 5, !llfi_index !164
  %fi132 = call double* @injectFault11(i64 163, double* %144, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %145 = load double* %fi132, align 8, !llfi_index !165
  %fi133 = call double @injectFault5(i64 164, double %145, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %146 = fsub double %fi130, %fi133, !llfi_index !166
  %fi134 = call double @injectFault5(i64 165, double %146, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %147 = fmul double %fi127, %fi134, !llfi_index !167
  %fi135 = call double @injectFault5(i64 166, double %147, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %148 = fsub double %fi126, %fi135, !llfi_index !168
  %fi136 = call double @injectFault5(i64 167, double %148, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %149 = load double** %8, align 8, !llfi_index !169
  %fi137 = call double* @injectFault11(i64 168, double* %149, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %150 = getelementptr double* %fi137, i64 4, !llfi_index !170
  %fi138 = call double* @injectFault11(i64 169, double* %150, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi136, double* %fi138, align 8, !llfi_index !171
  ret void, !llfi_index !172
}

; Function Attrs: nounwind uwtable
define void @calculate_macro_xs(double %p_energy, i32 %mat, i64 %n_isotopes, i64 %n_gridpoints, i32* noalias %num_nucs, double** noalias %concs, %struct.GridPoint* noalias %energy_grid, %struct.NuclideGridPoint** noalias %nuclide_grids, i32** noalias %mats, double* noalias %macro_xs_vector) #0 {
  %1 = alloca double, align 8, !llfi_index !173
  %2 = alloca i32, align 4, !llfi_index !174
  %3 = alloca i64, align 8, !llfi_index !175
  %4 = alloca i64, align 8, !llfi_index !176
  %5 = alloca i32*, align 8, !llfi_index !177
  %6 = alloca double**, align 8, !llfi_index !178
  %7 = alloca %struct.GridPoint*, align 8, !llfi_index !179
  %8 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !180
  %9 = alloca i32**, align 8, !llfi_index !181
  %10 = alloca double*, align 8, !llfi_index !182
  %xs_vector = alloca [5 x double], align 16, !llfi_index !183
  %p_nuc = alloca i32, align 4, !llfi_index !184
  %idx = alloca i64, align 8, !llfi_index !185
  %conc = alloca double, align 8, !llfi_index !186
  %k = alloca i32, align 4, !llfi_index !187
  %j = alloca i32, align 4, !llfi_index !188
  %k1 = alloca i32, align 4, !llfi_index !189
  store double %p_energy, double* %1, align 8, !llfi_index !190
  store i32 %mat, i32* %2, align 4, !llfi_index !191
  store i64 %n_isotopes, i64* %3, align 8, !llfi_index !192
  store i64 %n_gridpoints, i64* %4, align 8, !llfi_index !193
  store i32* %num_nucs, i32** %5, align 8, !llfi_index !194
  store double** %concs, double*** %6, align 8, !llfi_index !195
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %7, align 8, !llfi_index !196
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %8, align 8, !llfi_index !197
  store i32** %mats, i32*** %9, align 8, !llfi_index !198
  store double* %macro_xs_vector, double** %10, align 8, !llfi_index !199
  store i64 0, i64* %idx, align 8, !llfi_index !200
  store i32 0, i32* %k, align 4, !llfi_index !201
  br label %11, !llfi_index !202

; <label>:11                                      ; preds = %19, %0
  %12 = load i32* %k, align 4, !llfi_index !203
  %fi = call i32 @injectFault9(i64 202, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = icmp slt i32 %fi, 5, !llfi_index !204
  %fi1 = call i1 @injectFault10(i64 203, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi1, label %14, label %22, !llfi_index !205

; <label>:14                                      ; preds = %11
  %15 = load i32* %k, align 4, !llfi_index !206
  %fi2 = call i32 @injectFault9(i64 205, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = sext i32 %fi2 to i64, !llfi_index !207
  %fi3 = call i64 @injectFault0(i64 206, i64 %16, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load double** %10, align 8, !llfi_index !208
  %fi13 = call double* @injectFault11(i64 207, double* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = getelementptr double* %fi13, i64 %fi3, !llfi_index !209
  %fi5 = call double* @injectFault11(i64 208, double* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 0.000000e+00, double* %fi5, align 8, !llfi_index !210
  br label %19, !llfi_index !211

; <label>:19                                      ; preds = %14
  %20 = load i32* %k, align 4, !llfi_index !212
  %fi6 = call i32 @injectFault9(i64 211, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = add nsw i32 %fi6, 1, !llfi_index !213
  %fi7 = call i32 @injectFault9(i64 212, i32 %21, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi7, i32* %k, align 4, !llfi_index !214
  br label %11, !llfi_index !215

; <label>:22                                      ; preds = %11
  %23 = load i64* %3, align 8, !llfi_index !216
  %fi8 = call i64 @injectFault0(i64 215, i64 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = load i64* %4, align 8, !llfi_index !217
  %fi9 = call i64 @injectFault0(i64 216, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = mul nsw i64 %fi8, %fi9, !llfi_index !218
  %fi10 = call i64 @injectFault0(i64 217, i64 %25, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load double* %1, align 8, !llfi_index !219
  %fi11 = call double @injectFault5(i64 218, double %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = load %struct.GridPoint** %7, align 8, !llfi_index !220
  %fi12 = call %struct.GridPoint* @injectFault1(i64 219, %struct.GridPoint* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = call i64 @grid_search(i64 %fi10, double %fi11, %struct.GridPoint* %fi12), !llfi_index !221
  store i64 %28, i64* %idx, align 8, !llfi_index !222
  store i32 0, i32* %j, align 4, !llfi_index !223
  br label %29, !llfi_index !224

; <label>:29                                      ; preds = %85, %22
  %30 = load i32* %j, align 4, !llfi_index !225
  %fi14 = call i32 @injectFault9(i64 224, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32* %2, align 4, !llfi_index !226
  %fi15 = call i32 @injectFault9(i64 225, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = sext i32 %fi15 to i64, !llfi_index !227
  %fi16 = call i64 @injectFault0(i64 226, i64 %32, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i32** %5, align 8, !llfi_index !228
  %fi4 = call i32* @injectFault3(i64 227, i32* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr i32* %fi4, i64 %fi16, !llfi_index !229
  %fi17 = call i32* @injectFault3(i64 228, i32* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = load i32* %fi17, align 4, !llfi_index !230
  %fi18 = call i32 @injectFault9(i64 229, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = icmp slt i32 %fi14, %fi18, !llfi_index !231
  %fi19 = call i1 @injectFault10(i64 230, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi19, label %37, label %88, !llfi_index !232

; <label>:37                                      ; preds = %29
  %38 = load i32* %j, align 4, !llfi_index !233
  %fi20 = call i32 @injectFault9(i64 232, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = sext i32 %fi20 to i64, !llfi_index !234
  %fi21 = call i64 @injectFault0(i64 233, i64 %39, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load i32* %2, align 4, !llfi_index !235
  %fi22 = call i32 @injectFault9(i64 234, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = sext i32 %fi22 to i64, !llfi_index !236
  %fi23 = call i64 @injectFault0(i64 235, i64 %41, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = load i32*** %9, align 8, !llfi_index !237
  %fi24 = call i32** @injectFault2(i64 236, i32** %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = getelementptr i32** %fi24, i64 %fi23, !llfi_index !238
  %fi25 = call i32** @injectFault2(i64 237, i32** %43, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = load i32** %fi25, align 8, !llfi_index !239
  %fi26 = call i32* @injectFault3(i64 238, i32* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = getelementptr i32* %fi26, i64 %fi21, !llfi_index !240
  %fi27 = call i32* @injectFault3(i64 239, i32* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load i32* %fi27, align 4, !llfi_index !241
  %fi28 = call i32 @injectFault9(i64 240, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi28, i32* %p_nuc, align 4, !llfi_index !242
  %47 = load i32* %j, align 4, !llfi_index !243
  %fi29 = call i32 @injectFault9(i64 242, i32 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = sext i32 %fi29 to i64, !llfi_index !244
  %fi30 = call i64 @injectFault0(i64 243, i64 %48, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = load i32* %2, align 4, !llfi_index !245
  %fi31 = call i32 @injectFault9(i64 244, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = sext i32 %fi31 to i64, !llfi_index !246
  %fi32 = call i64 @injectFault0(i64 245, i64 %50, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = load double*** %6, align 8, !llfi_index !247
  %fi33 = call double** @injectFault12(i64 246, double** %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = getelementptr double** %fi33, i64 %fi32, !llfi_index !248
  %fi34 = call double** @injectFault12(i64 247, double** %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %53 = load double** %fi34, align 8, !llfi_index !249
  %fi35 = call double* @injectFault11(i64 248, double* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = getelementptr double* %fi35, i64 %fi30, !llfi_index !250
  %fi36 = call double* @injectFault11(i64 249, double* %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = load double* %fi36, align 8, !llfi_index !251
  %fi37 = call double @injectFault5(i64 250, double %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi37, double* %conc, align 8, !llfi_index !252
  %56 = load double* %1, align 8, !llfi_index !253
  %fi38 = call double @injectFault5(i64 252, double %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = load i32* %p_nuc, align 4, !llfi_index !254
  %fi39 = call i32 @injectFault9(i64 253, i32 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = load i64* %3, align 8, !llfi_index !255
  %fi40 = call i64 @injectFault0(i64 254, i64 %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = load i64* %4, align 8, !llfi_index !256
  %fi41 = call i64 @injectFault0(i64 255, i64 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = load %struct.GridPoint** %7, align 8, !llfi_index !257
  %fi42 = call %struct.GridPoint* @injectFault1(i64 256, %struct.GridPoint* %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = load %struct.NuclideGridPoint*** %8, align 8, !llfi_index !258
  %fi43 = call %struct.NuclideGridPoint** @injectFault7(i64 257, %struct.NuclideGridPoint** %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = load i64* %idx, align 8, !llfi_index !259
  %fi44 = call i64 @injectFault0(i64 258, i64 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %63 = trunc i64 %fi44 to i32, !llfi_index !260
  %fi45 = call i32 @injectFault9(i64 259, i32 %63, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %64 = getelementptr [5 x double]* %xs_vector, i32 0, i32 0, !llfi_index !261
  %fi46 = call double* @injectFault11(i64 260, double* %64, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @calculate_micro_xs(double %fi38, i32 %fi39, i64 %fi40, i64 %fi41, %struct.GridPoint* %fi42, %struct.NuclideGridPoint** %fi43, i32 %fi45, double* %fi46), !llfi_index !262
  store i32 0, i32* %k1, align 4, !llfi_index !263
  br label %65, !llfi_index !264

; <label>:65                                      ; preds = %81, %37
  %66 = load i32* %k1, align 4, !llfi_index !265
  %fi47 = call i32 @injectFault9(i64 264, i32 %66, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %67 = icmp slt i32 %fi47, 5, !llfi_index !266
  %fi48 = call i1 @injectFault10(i64 265, i1 %67, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi48, label %68, label %84, !llfi_index !267

; <label>:68                                      ; preds = %65
  %69 = load i32* %k1, align 4, !llfi_index !268
  %fi49 = call i32 @injectFault9(i64 267, i32 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %70 = sext i32 %fi49 to i64, !llfi_index !269
  %fi50 = call i64 @injectFault0(i64 268, i64 %70, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %71 = getelementptr [5 x double]* %xs_vector, i32 0, i64 %fi50, !llfi_index !270
  %fi51 = call double* @injectFault11(i64 269, double* %71, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %72 = load double* %fi51, align 8, !llfi_index !271
  %fi52 = call double @injectFault5(i64 270, double %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %73 = load double* %conc, align 8, !llfi_index !272
  %fi53 = call double @injectFault5(i64 271, double %73, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %74 = fmul double %fi52, %fi53, !llfi_index !273
  %fi54 = call double @injectFault5(i64 272, double %74, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %75 = load i32* %k1, align 4, !llfi_index !274
  %fi55 = call i32 @injectFault9(i64 273, i32 %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %76 = sext i32 %fi55 to i64, !llfi_index !275
  %fi56 = call i64 @injectFault0(i64 274, i64 %76, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %77 = load double** %10, align 8, !llfi_index !276
  %fi57 = call double* @injectFault11(i64 275, double* %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %78 = getelementptr double* %fi57, i64 %fi56, !llfi_index !277
  %fi58 = call double* @injectFault11(i64 276, double* %78, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %79 = load double* %fi58, align 8, !llfi_index !278
  %fi59 = call double @injectFault5(i64 277, double %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %80 = fadd double %fi59, %fi54, !llfi_index !279
  %fi60 = call double @injectFault5(i64 278, double %80, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi60, double* %fi58, align 8, !llfi_index !280
  br label %81, !llfi_index !281

; <label>:81                                      ; preds = %68
  %82 = load i32* %k1, align 4, !llfi_index !282
  %fi61 = call i32 @injectFault9(i64 281, i32 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %83 = add nsw i32 %fi61, 1, !llfi_index !283
  %fi62 = call i32 @injectFault9(i64 282, i32 %83, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi62, i32* %k1, align 4, !llfi_index !284
  br label %65, !llfi_index !285

; <label>:84                                      ; preds = %65
  br label %85, !llfi_index !286

; <label>:85                                      ; preds = %84
  %86 = load i32* %j, align 4, !llfi_index !287
  %fi63 = call i32 @injectFault9(i64 286, i32 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %87 = add nsw i32 %fi63, 1, !llfi_index !288
  %fi64 = call i32 @injectFault9(i64 287, i32 %87, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi64, i32* %j, align 4, !llfi_index !289
  br label %29, !llfi_index !290

; <label>:88                                      ; preds = %29
  ret void, !llfi_index !291
}

; Function Attrs: nounwind uwtable
define i64 @grid_search(i64 %n, double %quarry, %struct.GridPoint* %A) #0 {
  %1 = alloca i64, align 8, !llfi_index !292
  %2 = alloca double, align 8, !llfi_index !293
  %3 = alloca %struct.GridPoint*, align 8, !llfi_index !294
  %lowerLimit = alloca i64, align 8, !llfi_index !295
  %upperLimit = alloca i64, align 8, !llfi_index !296
  %examinationPoint = alloca i64, align 8, !llfi_index !297
  %length = alloca i64, align 8, !llfi_index !298
  store i64 %n, i64* %1, align 8, !llfi_index !299
  store double %quarry, double* %2, align 8, !llfi_index !300
  store %struct.GridPoint* %A, %struct.GridPoint** %3, align 8, !llfi_index !301
  store i64 0, i64* %lowerLimit, align 8, !llfi_index !302
  %4 = load i64* %1, align 8, !llfi_index !303
  %fi = call i64 @injectFault0(i64 302, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = sub nsw i64 %fi, 1, !llfi_index !304
  %fi1 = call i64 @injectFault0(i64 303, i64 %5, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi1, i64* %upperLimit, align 8, !llfi_index !305
  %6 = load i64* %upperLimit, align 8, !llfi_index !306
  %fi2 = call i64 @injectFault0(i64 305, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = load i64* %lowerLimit, align 8, !llfi_index !307
  %fi3 = call i64 @injectFault0(i64 306, i64 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = sub nsw i64 %fi2, %fi3, !llfi_index !308
  %fi4 = call i64 @injectFault0(i64 307, i64 %8, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi4, i64* %length, align 8, !llfi_index !309
  br label %9, !llfi_index !310

; <label>:9                                       ; preds = %28, %0
  %10 = load i64* %length, align 8, !llfi_index !311
  %fi5 = call i64 @injectFault0(i64 310, i64 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = icmp sgt i64 %fi5, 1, !llfi_index !312
  %fi6 = call i1 @injectFault10(i64 311, i1 %11, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi6, label %12, label %32, !llfi_index !313

; <label>:12                                      ; preds = %9
  %13 = load i64* %lowerLimit, align 8, !llfi_index !314
  %fi7 = call i64 @injectFault0(i64 313, i64 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = load i64* %length, align 8, !llfi_index !315
  %fi8 = call i64 @injectFault0(i64 314, i64 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = sdiv i64 %fi8, 2, !llfi_index !316
  %fi9 = call i64 @injectFault0(i64 315, i64 %15, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = add nsw i64 %fi7, %fi9, !llfi_index !317
  %fi10 = call i64 @injectFault0(i64 316, i64 %16, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi10, i64* %examinationPoint, align 8, !llfi_index !318
  %17 = load i64* %examinationPoint, align 8, !llfi_index !319
  %fi12 = call i64 @injectFault0(i64 318, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load %struct.GridPoint** %3, align 8, !llfi_index !320
  %fi13 = call %struct.GridPoint* @injectFault1(i64 319, %struct.GridPoint* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = getelementptr %struct.GridPoint* %fi13, i64 %fi12, !llfi_index !321
  %fi14 = call %struct.GridPoint* @injectFault1(i64 320, %struct.GridPoint* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.GridPoint* %fi14, i32 0, i32 0, !llfi_index !322
  %fi15 = call double* @injectFault11(i64 321, double* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = load double* %fi15, align 8, !llfi_index !323
  %fi16 = call double @injectFault5(i64 322, double %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load double* %2, align 8, !llfi_index !324
  %fi17 = call double @injectFault5(i64 323, double %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = fcmp ogt double %fi16, %fi17, !llfi_index !325
  %fi18 = call i1 @injectFault10(i64 324, i1 %23, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi18, label %24, label %26, !llfi_index !326

; <label>:24                                      ; preds = %12
  %25 = load i64* %examinationPoint, align 8, !llfi_index !327
  %fi19 = call i64 @injectFault0(i64 326, i64 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi19, i64* %upperLimit, align 8, !llfi_index !328
  br label %28, !llfi_index !329

; <label>:26                                      ; preds = %12
  %27 = load i64* %examinationPoint, align 8, !llfi_index !330
  %fi20 = call i64 @injectFault0(i64 329, i64 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi20, i64* %lowerLimit, align 8, !llfi_index !331
  br label %28, !llfi_index !332

; <label>:28                                      ; preds = %26, %24
  %29 = load i64* %upperLimit, align 8, !llfi_index !333
  %fi21 = call i64 @injectFault0(i64 332, i64 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = load i64* %lowerLimit, align 8, !llfi_index !334
  %fi22 = call i64 @injectFault0(i64 333, i64 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = sub nsw i64 %fi21, %fi22, !llfi_index !335
  %fi23 = call i64 @injectFault0(i64 334, i64 %31, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi23, i64* %length, align 8, !llfi_index !336
  br label %9, !llfi_index !337

; <label>:32                                      ; preds = %9
  %33 = load i64* %lowerLimit, align 8, !llfi_index !338
  %fi11 = call i64 @injectFault0(i64 337, i64 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i64 %fi11, !llfi_index !339
}

; Function Attrs: nounwind uwtable
define void @generate_grids(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !340
  %2 = alloca i64, align 8, !llfi_index !341
  %3 = alloca i64, align 8, !llfi_index !342
  %i = alloca i64, align 8, !llfi_index !343
  %j = alloca i64, align 8, !llfi_index !344
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8, !llfi_index !345
  store i64 %n_isotopes, i64* %2, align 8, !llfi_index !346
  store i64 %n_gridpoints, i64* %3, align 8, !llfi_index !347
  store i64 0, i64* %i, align 8, !llfi_index !348
  br label %4, !llfi_index !349

; <label>:4                                       ; preds = %60, %0
  %5 = load i64* %i, align 8, !llfi_index !350
  %fi23 = call i64 @injectFault0(i64 349, i64 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %2, align 8, !llfi_index !351
  %fi24 = call i64 @injectFault0(i64 350, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = icmp slt i64 %fi23, %fi24, !llfi_index !352
  %fi25 = call i1 @injectFault10(i64 351, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi25, label %8, label %63, !llfi_index !353

; <label>:8                                       ; preds = %4
  store i64 0, i64* %j, align 8, !llfi_index !354
  br label %9, !llfi_index !355

; <label>:9                                       ; preds = %56, %8
  %10 = load i64* %j, align 8, !llfi_index !356
  %fi27 = call i64 @injectFault0(i64 355, i64 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load i64* %3, align 8, !llfi_index !357
  %fi28 = call i64 @injectFault0(i64 356, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = icmp slt i64 %fi27, %fi28, !llfi_index !358
  %fi29 = call i1 @injectFault10(i64 357, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi29, label %13, label %59, !llfi_index !359

; <label>:13                                      ; preds = %9
  %14 = load i64* %j, align 8, !llfi_index !360
  %fi30 = call i64 @injectFault0(i64 359, i64 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = load i64* %i, align 8, !llfi_index !361
  %fi31 = call i64 @injectFault0(i64 360, i64 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !362
  %fi32 = call %struct.NuclideGridPoint** @injectFault7(i64 361, %struct.NuclideGridPoint** %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = getelementptr %struct.NuclideGridPoint** %fi32, i64 %fi31, !llfi_index !363
  %fi26 = call %struct.NuclideGridPoint** @injectFault7(i64 362, %struct.NuclideGridPoint** %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load %struct.NuclideGridPoint** %fi26, align 8, !llfi_index !364
  %fi34 = call %struct.NuclideGridPoint* @injectFault8(i64 363, %struct.NuclideGridPoint* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = getelementptr %struct.NuclideGridPoint* %fi34, i64 %fi30, !llfi_index !365
  %fi35 = call %struct.NuclideGridPoint* @injectFault8(i64 364, %struct.NuclideGridPoint* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.NuclideGridPoint* %fi35, i32 0, i32 0, !llfi_index !366
  %fi36 = call double* @injectFault11(i64 365, double* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 3.240000e+02, double* %fi36, align 8, !llfi_index !367
  %21 = load i64* %j, align 8, !llfi_index !368
  %fi37 = call i64 @injectFault0(i64 367, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load i64* %i, align 8, !llfi_index !369
  %fi38 = call i64 @injectFault0(i64 368, i64 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !370
  %fi39 = call %struct.NuclideGridPoint** @injectFault7(i64 369, %struct.NuclideGridPoint** %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = getelementptr %struct.NuclideGridPoint** %fi39, i64 %fi38, !llfi_index !371
  %fi40 = call %struct.NuclideGridPoint** @injectFault7(i64 370, %struct.NuclideGridPoint** %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = load %struct.NuclideGridPoint** %fi40, align 8, !llfi_index !372
  %fi41 = call %struct.NuclideGridPoint* @injectFault8(i64 371, %struct.NuclideGridPoint* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = getelementptr %struct.NuclideGridPoint* %fi41, i64 %fi37, !llfi_index !373
  %fi42 = call %struct.NuclideGridPoint* @injectFault8(i64 372, %struct.NuclideGridPoint* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = getelementptr %struct.NuclideGridPoint* %fi42, i32 0, i32 1, !llfi_index !374
  %fi43 = call double* @injectFault11(i64 373, double* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 5.200000e+02, double* %fi43, align 8, !llfi_index !375
  %28 = load i64* %j, align 8, !llfi_index !376
  %fi44 = call i64 @injectFault0(i64 375, i64 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = load i64* %i, align 8, !llfi_index !377
  %fi45 = call i64 @injectFault0(i64 376, i64 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !378
  %fi46 = call %struct.NuclideGridPoint** @injectFault7(i64 377, %struct.NuclideGridPoint** %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = getelementptr %struct.NuclideGridPoint** %fi46, i64 %fi45, !llfi_index !379
  %fi47 = call %struct.NuclideGridPoint** @injectFault7(i64 378, %struct.NuclideGridPoint** %31, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = load %struct.NuclideGridPoint** %fi47, align 8, !llfi_index !380
  %fi48 = call %struct.NuclideGridPoint* @injectFault8(i64 379, %struct.NuclideGridPoint* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = getelementptr %struct.NuclideGridPoint* %fi48, i64 %fi44, !llfi_index !381
  %fi33 = call %struct.NuclideGridPoint* @injectFault8(i64 380, %struct.NuclideGridPoint* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr %struct.NuclideGridPoint* %fi33, i32 0, i32 2, !llfi_index !382
  %fi49 = call double* @injectFault11(i64 381, double* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 3.450000e+02, double* %fi49, align 8, !llfi_index !383
  %35 = load i64* %j, align 8, !llfi_index !384
  %fi50 = call i64 @injectFault0(i64 383, i64 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load i64* %i, align 8, !llfi_index !385
  %fi51 = call i64 @injectFault0(i64 384, i64 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !386
  %fi = call %struct.NuclideGridPoint** @injectFault7(i64 385, %struct.NuclideGridPoint** %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = getelementptr %struct.NuclideGridPoint** %fi, i64 %fi51, !llfi_index !387
  %fi1 = call %struct.NuclideGridPoint** @injectFault7(i64 386, %struct.NuclideGridPoint** %38, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = load %struct.NuclideGridPoint** %fi1, align 8, !llfi_index !388
  %fi2 = call %struct.NuclideGridPoint* @injectFault8(i64 387, %struct.NuclideGridPoint* %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = getelementptr %struct.NuclideGridPoint* %fi2, i64 %fi50, !llfi_index !389
  %fi3 = call %struct.NuclideGridPoint* @injectFault8(i64 388, %struct.NuclideGridPoint* %40, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = getelementptr %struct.NuclideGridPoint* %fi3, i32 0, i32 3, !llfi_index !390
  %fi4 = call double* @injectFault11(i64 389, double* %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 3.260000e+02, double* %fi4, align 8, !llfi_index !391
  %42 = load i64* %j, align 8, !llfi_index !392
  %fi5 = call i64 @injectFault0(i64 391, i64 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load i64* %i, align 8, !llfi_index !393
  %fi6 = call i64 @injectFault0(i64 392, i64 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !394
  %fi7 = call %struct.NuclideGridPoint** @injectFault7(i64 393, %struct.NuclideGridPoint** %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = getelementptr %struct.NuclideGridPoint** %fi7, i64 %fi6, !llfi_index !395
  %fi8 = call %struct.NuclideGridPoint** @injectFault7(i64 394, %struct.NuclideGridPoint** %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load %struct.NuclideGridPoint** %fi8, align 8, !llfi_index !396
  %fi9 = call %struct.NuclideGridPoint* @injectFault8(i64 395, %struct.NuclideGridPoint* %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = getelementptr %struct.NuclideGridPoint* %fi9, i64 %fi5, !llfi_index !397
  %fi10 = call %struct.NuclideGridPoint* @injectFault8(i64 396, %struct.NuclideGridPoint* %47, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = getelementptr %struct.NuclideGridPoint* %fi10, i32 0, i32 4, !llfi_index !398
  %fi11 = call double* @injectFault11(i64 397, double* %48, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 4.560000e+02, double* %fi11, align 8, !llfi_index !399
  %49 = load i64* %j, align 8, !llfi_index !400
  %fi12 = call i64 @injectFault0(i64 399, i64 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load i64* %i, align 8, !llfi_index !401
  %fi13 = call i64 @injectFault0(i64 400, i64 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !402
  %fi14 = call %struct.NuclideGridPoint** @injectFault7(i64 401, %struct.NuclideGridPoint** %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = getelementptr %struct.NuclideGridPoint** %fi14, i64 %fi13, !llfi_index !403
  %fi15 = call %struct.NuclideGridPoint** @injectFault7(i64 402, %struct.NuclideGridPoint** %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %53 = load %struct.NuclideGridPoint** %fi15, align 8, !llfi_index !404
  %fi16 = call %struct.NuclideGridPoint* @injectFault8(i64 403, %struct.NuclideGridPoint* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = getelementptr %struct.NuclideGridPoint* %fi16, i64 %fi12, !llfi_index !405
  %fi17 = call %struct.NuclideGridPoint* @injectFault8(i64 404, %struct.NuclideGridPoint* %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = getelementptr %struct.NuclideGridPoint* %fi17, i32 0, i32 5, !llfi_index !406
  %fi18 = call double* @injectFault11(i64 405, double* %55, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 5.120000e+02, double* %fi18, align 8, !llfi_index !407
  br label %56, !llfi_index !408

; <label>:56                                      ; preds = %13
  %57 = load i64* %j, align 8, !llfi_index !409
  %fi19 = call i64 @injectFault0(i64 408, i64 %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = add nsw i64 %fi19, 1, !llfi_index !410
  %fi20 = call i64 @injectFault0(i64 409, i64 %58, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi20, i64* %j, align 8, !llfi_index !411
  br label %9, !llfi_index !412

; <label>:59                                      ; preds = %9
  br label %60, !llfi_index !413

; <label>:60                                      ; preds = %59
  %61 = load i64* %i, align 8, !llfi_index !414
  %fi21 = call i64 @injectFault0(i64 413, i64 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = add nsw i64 %fi21, 1, !llfi_index !415
  %fi22 = call i64 @injectFault0(i64 414, i64 %62, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi22, i64* %i, align 8, !llfi_index !416
  br label %4, !llfi_index !417

; <label>:63                                      ; preds = %4
  ret void, !llfi_index !418
}

; Function Attrs: nounwind uwtable
define void @generate_grids_v(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !419
  %2 = alloca i64, align 8, !llfi_index !420
  %3 = alloca i64, align 8, !llfi_index !421
  %i = alloca i64, align 8, !llfi_index !422
  %j = alloca i64, align 8, !llfi_index !423
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8, !llfi_index !424
  store i64 %n_isotopes, i64* %2, align 8, !llfi_index !425
  store i64 %n_gridpoints, i64* %3, align 8, !llfi_index !426
  store i64 0, i64* %i, align 8, !llfi_index !427
  br label %4, !llfi_index !428

; <label>:4                                       ; preds = %66, %0
  %5 = load i64* %i, align 8, !llfi_index !429
  %fi = call i64 @injectFault0(i64 428, i64 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %2, align 8, !llfi_index !430
  %fi1 = call i64 @injectFault0(i64 429, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = icmp slt i64 %fi, %fi1, !llfi_index !431
  %fi2 = call i1 @injectFault10(i64 430, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %8, label %69, !llfi_index !432

; <label>:8                                       ; preds = %4
  store i64 0, i64* %j, align 8, !llfi_index !433
  br label %9, !llfi_index !434

; <label>:9                                       ; preds = %62, %8
  %10 = load i64* %j, align 8, !llfi_index !435
  %fi4 = call i64 @injectFault0(i64 434, i64 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load i64* %3, align 8, !llfi_index !436
  %fi5 = call i64 @injectFault0(i64 435, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = icmp slt i64 %fi4, %fi5, !llfi_index !437
  %fi6 = call i1 @injectFault10(i64 436, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi6, label %13, label %65, !llfi_index !438

; <label>:13                                      ; preds = %9
  %14 = call double @rn_v(), !llfi_index !439
  %15 = load i64* %j, align 8, !llfi_index !440
  %fi7 = call i64 @injectFault0(i64 439, i64 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %i, align 8, !llfi_index !441
  %fi8 = call i64 @injectFault0(i64 440, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !442
  %fi3 = call %struct.NuclideGridPoint** @injectFault7(i64 441, %struct.NuclideGridPoint** %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = getelementptr %struct.NuclideGridPoint** %fi3, i64 %fi8, !llfi_index !443
  %fi10 = call %struct.NuclideGridPoint** @injectFault7(i64 442, %struct.NuclideGridPoint** %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load %struct.NuclideGridPoint** %fi10, align 8, !llfi_index !444
  %fi11 = call %struct.NuclideGridPoint* @injectFault8(i64 443, %struct.NuclideGridPoint* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.NuclideGridPoint* %fi11, i64 %fi7, !llfi_index !445
  %fi12 = call %struct.NuclideGridPoint* @injectFault8(i64 444, %struct.NuclideGridPoint* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = getelementptr %struct.NuclideGridPoint* %fi12, i32 0, i32 0, !llfi_index !446
  %fi13 = call double* @injectFault11(i64 445, double* %21, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %14, double* %fi13, align 8, !llfi_index !447
  %22 = call double @rn_v(), !llfi_index !448
  %23 = load i64* %j, align 8, !llfi_index !449
  %fi14 = call i64 @injectFault0(i64 448, i64 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = load i64* %i, align 8, !llfi_index !450
  %fi15 = call i64 @injectFault0(i64 449, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !451
  %fi16 = call %struct.NuclideGridPoint** @injectFault7(i64 450, %struct.NuclideGridPoint** %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = getelementptr %struct.NuclideGridPoint** %fi16, i64 %fi15, !llfi_index !452
  %fi17 = call %struct.NuclideGridPoint** @injectFault7(i64 451, %struct.NuclideGridPoint** %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = load %struct.NuclideGridPoint** %fi17, align 8, !llfi_index !453
  %fi18 = call %struct.NuclideGridPoint* @injectFault8(i64 452, %struct.NuclideGridPoint* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = getelementptr %struct.NuclideGridPoint* %fi18, i64 %fi14, !llfi_index !454
  %fi19 = call %struct.NuclideGridPoint* @injectFault8(i64 453, %struct.NuclideGridPoint* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = getelementptr %struct.NuclideGridPoint* %fi19, i32 0, i32 1, !llfi_index !455
  %fi20 = call double* @injectFault11(i64 454, double* %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %22, double* %fi20, align 8, !llfi_index !456
  %30 = call double @rn_v(), !llfi_index !457
  %31 = load i64* %j, align 8, !llfi_index !458
  %fi21 = call i64 @injectFault0(i64 457, i64 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = load i64* %i, align 8, !llfi_index !459
  %fi22 = call i64 @injectFault0(i64 458, i64 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !460
  %fi9 = call %struct.NuclideGridPoint** @injectFault7(i64 459, %struct.NuclideGridPoint** %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr %struct.NuclideGridPoint** %fi9, i64 %fi22, !llfi_index !461
  %fi23 = call %struct.NuclideGridPoint** @injectFault7(i64 460, %struct.NuclideGridPoint** %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = load %struct.NuclideGridPoint** %fi23, align 8, !llfi_index !462
  %fi24 = call %struct.NuclideGridPoint* @injectFault8(i64 461, %struct.NuclideGridPoint* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = getelementptr %struct.NuclideGridPoint* %fi24, i64 %fi21, !llfi_index !463
  %fi25 = call %struct.NuclideGridPoint* @injectFault8(i64 462, %struct.NuclideGridPoint* %36, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = getelementptr %struct.NuclideGridPoint* %fi25, i32 0, i32 2, !llfi_index !464
  %fi26 = call double* @injectFault11(i64 463, double* %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %30, double* %fi26, align 8, !llfi_index !465
  %38 = call double @rn_v(), !llfi_index !466
  %39 = load i64* %j, align 8, !llfi_index !467
  %fi27 = call i64 @injectFault0(i64 466, i64 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load i64* %i, align 8, !llfi_index !468
  %fi28 = call i64 @injectFault0(i64 467, i64 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !469
  %fi29 = call %struct.NuclideGridPoint** @injectFault7(i64 468, %struct.NuclideGridPoint** %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = getelementptr %struct.NuclideGridPoint** %fi29, i64 %fi28, !llfi_index !470
  %fi30 = call %struct.NuclideGridPoint** @injectFault7(i64 469, %struct.NuclideGridPoint** %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load %struct.NuclideGridPoint** %fi30, align 8, !llfi_index !471
  %fi31 = call %struct.NuclideGridPoint* @injectFault8(i64 470, %struct.NuclideGridPoint* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = getelementptr %struct.NuclideGridPoint* %fi31, i64 %fi27, !llfi_index !472
  %fi32 = call %struct.NuclideGridPoint* @injectFault8(i64 471, %struct.NuclideGridPoint* %44, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = getelementptr %struct.NuclideGridPoint* %fi32, i32 0, i32 3, !llfi_index !473
  %fi33 = call double* @injectFault11(i64 472, double* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %38, double* %fi33, align 8, !llfi_index !474
  %46 = call double @rn_v(), !llfi_index !475
  %47 = load i64* %j, align 8, !llfi_index !476
  %fi34 = call i64 @injectFault0(i64 475, i64 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = load i64* %i, align 8, !llfi_index !477
  %fi35 = call i64 @injectFault0(i64 476, i64 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !478
  %fi36 = call %struct.NuclideGridPoint** @injectFault7(i64 477, %struct.NuclideGridPoint** %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = getelementptr %struct.NuclideGridPoint** %fi36, i64 %fi35, !llfi_index !479
  %fi37 = call %struct.NuclideGridPoint** @injectFault7(i64 478, %struct.NuclideGridPoint** %50, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = load %struct.NuclideGridPoint** %fi37, align 8, !llfi_index !480
  %fi38 = call %struct.NuclideGridPoint* @injectFault8(i64 479, %struct.NuclideGridPoint* %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = getelementptr %struct.NuclideGridPoint* %fi38, i64 %fi34, !llfi_index !481
  %fi39 = call %struct.NuclideGridPoint* @injectFault8(i64 480, %struct.NuclideGridPoint* %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %53 = getelementptr %struct.NuclideGridPoint* %fi39, i32 0, i32 4, !llfi_index !482
  %fi40 = call double* @injectFault11(i64 481, double* %53, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %46, double* %fi40, align 8, !llfi_index !483
  %54 = call double @rn_v(), !llfi_index !484
  %55 = load i64* %j, align 8, !llfi_index !485
  %fi41 = call i64 @injectFault0(i64 484, i64 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %56 = load i64* %i, align 8, !llfi_index !486
  %fi42 = call i64 @injectFault0(i64 485, i64 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !487
  %fi43 = call %struct.NuclideGridPoint** @injectFault7(i64 486, %struct.NuclideGridPoint** %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = getelementptr %struct.NuclideGridPoint** %fi43, i64 %fi42, !llfi_index !488
  %fi44 = call %struct.NuclideGridPoint** @injectFault7(i64 487, %struct.NuclideGridPoint** %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = load %struct.NuclideGridPoint** %fi44, align 8, !llfi_index !489
  %fi45 = call %struct.NuclideGridPoint* @injectFault8(i64 488, %struct.NuclideGridPoint* %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = getelementptr %struct.NuclideGridPoint* %fi45, i64 %fi41, !llfi_index !490
  %fi46 = call %struct.NuclideGridPoint* @injectFault8(i64 489, %struct.NuclideGridPoint* %60, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = getelementptr %struct.NuclideGridPoint* %fi46, i32 0, i32 5, !llfi_index !491
  %fi47 = call double* @injectFault11(i64 490, double* %61, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %54, double* %fi47, align 8, !llfi_index !492
  br label %62, !llfi_index !493

; <label>:62                                      ; preds = %13
  %63 = load i64* %j, align 8, !llfi_index !494
  %fi48 = call i64 @injectFault0(i64 493, i64 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %64 = add nsw i64 %fi48, 1, !llfi_index !495
  %fi49 = call i64 @injectFault0(i64 494, i64 %64, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi49, i64* %j, align 8, !llfi_index !496
  br label %9, !llfi_index !497

; <label>:65                                      ; preds = %9
  br label %66, !llfi_index !498

; <label>:66                                      ; preds = %65
  %67 = load i64* %i, align 8, !llfi_index !499
  %fi50 = call i64 @injectFault0(i64 498, i64 %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %68 = add nsw i64 %fi50, 1, !llfi_index !500
  %fi51 = call i64 @injectFault0(i64 499, i64 %68, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi51, i64* %i, align 8, !llfi_index !501
  br label %4, !llfi_index !502

; <label>:69                                      ; preds = %4
  ret void, !llfi_index !503
}

; Function Attrs: nounwind uwtable
define void @sort_nuclide_grids(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !504
  %2 = alloca i64, align 8, !llfi_index !505
  %3 = alloca i64, align 8, !llfi_index !506
  %cmp = alloca i32 (i8*, i8*)*, align 8, !llfi_index !507
  %i = alloca i64, align 8, !llfi_index !508
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8, !llfi_index !509
  store i64 %n_isotopes, i64* %2, align 8, !llfi_index !510
  store i64 %n_gridpoints, i64* %3, align 8, !llfi_index !511
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %cmp, align 8, !llfi_index !512
  store i64 0, i64* %i, align 8, !llfi_index !513
  br label %4, !llfi_index !514

; <label>:4                                       ; preds = %16, %0
  %5 = load i64* %i, align 8, !llfi_index !515
  %fi = call i64 @injectFault0(i64 514, i64 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %2, align 8, !llfi_index !516
  %fi1 = call i64 @injectFault0(i64 515, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = icmp slt i64 %fi, %fi1, !llfi_index !517
  %fi2 = call i1 @injectFault10(i64 516, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %8, label %19, !llfi_index !518

; <label>:8                                       ; preds = %4
  %9 = load i64* %i, align 8, !llfi_index !519
  %fi4 = call i64 @injectFault0(i64 518, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !520
  %fi5 = call %struct.NuclideGridPoint** @injectFault7(i64 519, %struct.NuclideGridPoint** %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = getelementptr %struct.NuclideGridPoint** %fi5, i64 %fi4, !llfi_index !521
  %fi6 = call %struct.NuclideGridPoint** @injectFault7(i64 520, %struct.NuclideGridPoint** %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load %struct.NuclideGridPoint** %fi6, align 8, !llfi_index !522
  %fi7 = call %struct.NuclideGridPoint* @injectFault8(i64 521, %struct.NuclideGridPoint* %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = bitcast %struct.NuclideGridPoint* %fi7 to i8*, !llfi_index !523
  %fi8 = call i8* @injectFault4(i64 522, i8* %13, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = load i64* %3, align 8, !llfi_index !524
  %fi9 = call i64 @injectFault0(i64 523, i64 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = load i32 (i8*, i8*)** %cmp, align 8, !llfi_index !525
  %fi10 = call i32 (i8*, i8*)* (i64, i32 (i8*, i8*)*, i32, i32, i32, i32, i8*)* @injectFault14(i64 524, i32 (i8*, i8*)* %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @qsort(i8* %fi8, i64 %fi9, i64 48, i32 (i8*, i8*)* %fi10), !llfi_index !526
  br label %16, !llfi_index !527

; <label>:16                                      ; preds = %8
  %17 = load i64* %i, align 8, !llfi_index !528
  %fi3 = call i64 @injectFault0(i64 527, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = add nsw i64 %fi3, 1, !llfi_index !529
  %fi11 = call i64 @injectFault0(i64 528, i64 %18, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi11, i64* %i, align 8, !llfi_index !530
  br label %4, !llfi_index !531

; <label>:19                                      ; preds = %4
  ret void, !llfi_index !532
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.GridPoint* @generate_energy_grid(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids) #0 {
  %1 = alloca i64, align 8, !llfi_index !533
  %2 = alloca i64, align 8, !llfi_index !534
  %3 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !535
  %mype = alloca i32, align 4, !llfi_index !536
  %n_unionized_grid_points = alloca i64, align 8, !llfi_index !537
  %cmp = alloca i32 (i8*, i8*)*, align 8, !llfi_index !538
  %energy_grid = alloca %struct.GridPoint*, align 8, !llfi_index !539
  %n_grid_sorted = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !540
  %i = alloca i64, align 8, !llfi_index !541
  %full = alloca i32*, align 8, !llfi_index !542
  %i1 = alloca i64, align 8, !llfi_index !543
  store i64 %n_isotopes, i64* %1, align 8, !llfi_index !544
  store i64 %n_gridpoints, i64* %2, align 8, !llfi_index !545
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8, !llfi_index !546
  store i32 0, i32* %mype, align 4, !llfi_index !547
  %4 = load i32* %mype, align 4, !llfi_index !548
  %fi = call i32 @injectFault9(i64 547, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = icmp eq i32 %fi, 0, !llfi_index !549
  %fi1 = call i1 @injectFault10(i64 548, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi1, label %6, label %8, !llfi_index !550

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0)), !llfi_index !551
  br label %8, !llfi_index !552

; <label>:8                                       ; preds = %6, %0
  %9 = load i64* %1, align 8, !llfi_index !553
  %fi3 = call i64 @injectFault0(i64 552, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load i64* %2, align 8, !llfi_index !554
  %fi4 = call i64 @injectFault0(i64 553, i64 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = mul nsw i64 %fi3, %fi4, !llfi_index !555
  %fi5 = call i64 @injectFault0(i64 554, i64 %11, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi5, i64* %n_unionized_grid_points, align 8, !llfi_index !556
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %cmp, align 8, !llfi_index !557
  %12 = load i64* %n_unionized_grid_points, align 8, !llfi_index !558
  %fi6 = call i64 @injectFault0(i64 557, i64 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = mul i64 %fi6, 16, !llfi_index !559
  %fi7 = call i64 @injectFault0(i64 558, i64 %13, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = call noalias i8* @malloc(i64 %fi7) #3, !llfi_index !560
  %15 = bitcast i8* %14 to %struct.GridPoint*, !llfi_index !561
  %fi8 = call %struct.GridPoint* @injectFault1(i64 560, %struct.GridPoint* %15, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.GridPoint* %fi8, %struct.GridPoint** %energy_grid, align 8, !llfi_index !562
  %16 = load i32* %mype, align 4, !llfi_index !563
  %fi9 = call i32 @injectFault9(i64 562, i32 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = icmp eq i32 %fi9, 0, !llfi_index !564
  %fi2 = call i1 @injectFault10(i64 563, i1 %17, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %18, label %20, !llfi_index !565

; <label>:18                                      ; preds = %8
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str1, i32 0, i32 0)), !llfi_index !566
  br label %20, !llfi_index !567

; <label>:20                                      ; preds = %18, %8
  %21 = load i64* %1, align 8, !llfi_index !568
  %fi11 = call i64 @injectFault0(i64 567, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load i64* %2, align 8, !llfi_index !569
  %fi12 = call i64 @injectFault0(i64 568, i64 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = call %struct.NuclideGridPoint** @gpmatrix(i64 %fi11, i64 %fi12), !llfi_index !570
  store %struct.NuclideGridPoint** %23, %struct.NuclideGridPoint*** %n_grid_sorted, align 8, !llfi_index !571
  %24 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8, !llfi_index !572
  %fi13 = call %struct.NuclideGridPoint** @injectFault7(i64 571, %struct.NuclideGridPoint** %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = getelementptr %struct.NuclideGridPoint** %fi13, i64 0, !llfi_index !573
  %fi14 = call %struct.NuclideGridPoint** @injectFault7(i64 572, %struct.NuclideGridPoint** %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load %struct.NuclideGridPoint** %fi14, align 8, !llfi_index !574
  %fi15 = call %struct.NuclideGridPoint* @injectFault8(i64 573, %struct.NuclideGridPoint* %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = bitcast %struct.NuclideGridPoint* %fi15 to i8*, !llfi_index !575
  %fi16 = call i8* @injectFault4(i64 574, i8* %27, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = load %struct.NuclideGridPoint*** %3, align 8, !llfi_index !576
  %fi17 = call %struct.NuclideGridPoint** @injectFault7(i64 575, %struct.NuclideGridPoint** %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = getelementptr %struct.NuclideGridPoint** %fi17, i64 0, !llfi_index !577
  %fi18 = call %struct.NuclideGridPoint** @injectFault7(i64 576, %struct.NuclideGridPoint** %29, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = load %struct.NuclideGridPoint** %fi18, align 8, !llfi_index !578
  %fi19 = call %struct.NuclideGridPoint* @injectFault8(i64 577, %struct.NuclideGridPoint* %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = bitcast %struct.NuclideGridPoint* %fi19 to i8*, !llfi_index !579
  %fi20 = call i8* @injectFault4(i64 578, i8* %31, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = load i64* %1, align 8, !llfi_index !580
  %fi21 = call i64 @injectFault0(i64 579, i64 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i64* %2, align 8, !llfi_index !581
  %fi10 = call i64 @injectFault0(i64 580, i64 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = mul nsw i64 %fi21, %fi10, !llfi_index !582
  %fi24 = call i64 @injectFault0(i64 581, i64 %34, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = mul i64 %fi24, 48, !llfi_index !583
  %fi25 = call i64 @injectFault0(i64 582, i64 %35, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi16, i8* %fi20, i64 %fi25, i32 8, i1 false), !llfi_index !584
  %36 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8, !llfi_index !585
  %fi26 = call %struct.NuclideGridPoint** @injectFault7(i64 584, %struct.NuclideGridPoint** %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = getelementptr %struct.NuclideGridPoint** %fi26, i64 0, !llfi_index !586
  %fi27 = call %struct.NuclideGridPoint** @injectFault7(i64 585, %struct.NuclideGridPoint** %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = load %struct.NuclideGridPoint** %fi27, align 8, !llfi_index !587
  %fi28 = call %struct.NuclideGridPoint* @injectFault8(i64 586, %struct.NuclideGridPoint* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = getelementptr %struct.NuclideGridPoint* %fi28, i64 0, !llfi_index !588
  %fi29 = call %struct.NuclideGridPoint* @injectFault8(i64 587, %struct.NuclideGridPoint* %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = bitcast %struct.NuclideGridPoint* %fi29 to i8*, !llfi_index !589
  %fi30 = call i8* @injectFault4(i64 588, i8* %40, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = load i64* %n_unionized_grid_points, align 8, !llfi_index !590
  %fi31 = call i64 @injectFault0(i64 589, i64 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = load i32 (i8*, i8*)** %cmp, align 8, !llfi_index !591
  %fi32 = call i32 (i8*, i8*)* (i64, i32 (i8*, i8*)*, i32, i32, i32, i32, i8*)* @injectFault14(i64 590, i32 (i8*, i8*)* %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @qsort(i8* %fi30, i64 %fi31, i64 48, i32 (i8*, i8*)* %fi32), !llfi_index !592
  %43 = load i32* %mype, align 4, !llfi_index !593
  %fi33 = call i32 @injectFault9(i64 592, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = icmp eq i32 %fi33, 0, !llfi_index !594
  %fi34 = call i1 @injectFault10(i64 593, i1 %44, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi34, label %45, label %47, !llfi_index !595

; <label>:45                                      ; preds = %20
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str2, i32 0, i32 0)), !llfi_index !596
  br label %47, !llfi_index !597

; <label>:47                                      ; preds = %45, %20
  store i64 0, i64* %i, align 8, !llfi_index !598
  br label %48, !llfi_index !599

; <label>:48                                      ; preds = %64, %47
  %49 = load i64* %i, align 8, !llfi_index !600
  %fi35 = call i64 @injectFault0(i64 599, i64 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load i64* %n_unionized_grid_points, align 8, !llfi_index !601
  %fi36 = call i64 @injectFault0(i64 600, i64 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = icmp slt i64 %fi35, %fi36, !llfi_index !602
  %fi37 = call i1 @injectFault10(i64 601, i1 %51, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi37, label %52, label %67, !llfi_index !603

; <label>:52                                      ; preds = %48
  %53 = load i64* %i, align 8, !llfi_index !604
  %fi38 = call i64 @injectFault0(i64 603, i64 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8, !llfi_index !605
  %fi39 = call %struct.NuclideGridPoint** @injectFault7(i64 604, %struct.NuclideGridPoint** %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = getelementptr %struct.NuclideGridPoint** %fi39, i64 0, !llfi_index !606
  %fi40 = call %struct.NuclideGridPoint** @injectFault7(i64 605, %struct.NuclideGridPoint** %55, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %56 = load %struct.NuclideGridPoint** %fi40, align 8, !llfi_index !607
  %fi41 = call %struct.NuclideGridPoint* @injectFault8(i64 606, %struct.NuclideGridPoint* %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = getelementptr %struct.NuclideGridPoint* %fi41, i64 %fi38, !llfi_index !608
  %fi42 = call %struct.NuclideGridPoint* @injectFault8(i64 607, %struct.NuclideGridPoint* %57, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = getelementptr %struct.NuclideGridPoint* %fi42, i32 0, i32 0, !llfi_index !609
  %fi43 = call double* @injectFault11(i64 608, double* %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = load double* %fi43, align 8, !llfi_index !610
  %fi44 = call double @injectFault5(i64 609, double %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = load i64* %i, align 8, !llfi_index !611
  %fi45 = call i64 @injectFault0(i64 610, i64 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = load %struct.GridPoint** %energy_grid, align 8, !llfi_index !612
  %fi46 = call %struct.GridPoint* @injectFault1(i64 611, %struct.GridPoint* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = getelementptr %struct.GridPoint* %fi46, i64 %fi45, !llfi_index !613
  %fi47 = call %struct.GridPoint* @injectFault1(i64 612, %struct.GridPoint* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %63 = getelementptr %struct.GridPoint* %fi47, i32 0, i32 0, !llfi_index !614
  %fi48 = call double* @injectFault11(i64 613, double* %63, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi44, double* %fi48, align 8, !llfi_index !615
  br label %64, !llfi_index !616

; <label>:64                                      ; preds = %52
  %65 = load i64* %i, align 8, !llfi_index !617
  %fi22 = call i64 @injectFault0(i64 616, i64 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %66 = add nsw i64 %fi22, 1, !llfi_index !618
  %fi23 = call i64 @injectFault0(i64 617, i64 %66, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi23, i64* %i, align 8, !llfi_index !619
  br label %48, !llfi_index !620

; <label>:67                                      ; preds = %48
  %68 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8, !llfi_index !621
  %fi49 = call %struct.NuclideGridPoint** @injectFault7(i64 620, %struct.NuclideGridPoint** %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @gpmatrix_free(%struct.NuclideGridPoint** %fi49), !llfi_index !622
  %69 = load i64* %1, align 8, !llfi_index !623
  %fi50 = call i64 @injectFault0(i64 622, i64 %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %70 = load i64* %n_unionized_grid_points, align 8, !llfi_index !624
  %fi51 = call i64 @injectFault0(i64 623, i64 %70, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %71 = mul nsw i64 %fi50, %fi51, !llfi_index !625
  %fi52 = call i64 @injectFault0(i64 624, i64 %71, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %72 = mul i64 %fi52, 4, !llfi_index !626
  %fi53 = call i64 @injectFault0(i64 625, i64 %72, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %73 = call noalias i8* @malloc(i64 %fi53) #3, !llfi_index !627
  %74 = bitcast i8* %73 to i32*, !llfi_index !628
  %fi54 = call i32* @injectFault3(i64 627, i32* %74, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32* %fi54, i32** %full, align 8, !llfi_index !629
  %75 = load i32** %full, align 8, !llfi_index !630
  %fi55 = call i32* @injectFault3(i64 629, i32* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %76 = icmp eq i32* %fi55, null, !llfi_index !631
  %fi56 = call i1 @injectFault10(i64 630, i1 %76, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi56, label %77, label %80, !llfi_index !632

; <label>:77                                      ; preds = %67
  %78 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !633
  %fi57 = call %struct._IO_FILE* @injectFault13(i64 632, %struct._IO_FILE* %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi57, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0)), !llfi_index !634
  call void @postInjections()
  call void @exit(i32 1) #7, !llfi_index !635
  unreachable, !llfi_index !636

; <label>:80                                      ; preds = %67
  store i64 0, i64* %i1, align 8, !llfi_index !637
  br label %81, !llfi_index !638

; <label>:81                                      ; preds = %95, %80
  %82 = load i64* %i1, align 8, !llfi_index !639
  %fi58 = call i64 @injectFault0(i64 638, i64 %82, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %83 = load i64* %n_unionized_grid_points, align 8, !llfi_index !640
  %fi59 = call i64 @injectFault0(i64 639, i64 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %84 = icmp slt i64 %fi58, %fi59, !llfi_index !641
  %fi60 = call i1 @injectFault10(i64 640, i1 %84, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi60, label %85, label %98, !llfi_index !642

; <label>:85                                      ; preds = %81
  %86 = load i64* %1, align 8, !llfi_index !643
  %fi61 = call i64 @injectFault0(i64 642, i64 %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %87 = load i64* %i1, align 8, !llfi_index !644
  %fi62 = call i64 @injectFault0(i64 643, i64 %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %88 = mul nsw i64 %fi61, %fi62, !llfi_index !645
  %fi63 = call i64 @injectFault0(i64 644, i64 %88, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %89 = load i32** %full, align 8, !llfi_index !646
  %fi64 = call i32* @injectFault3(i64 645, i32* %89, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %90 = getelementptr i32* %fi64, i64 %fi63, !llfi_index !647
  %fi65 = call i32* @injectFault3(i64 646, i32* %90, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %91 = load i64* %i1, align 8, !llfi_index !648
  %fi66 = call i64 @injectFault0(i64 647, i64 %91, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %92 = load %struct.GridPoint** %energy_grid, align 8, !llfi_index !649
  %fi67 = call %struct.GridPoint* @injectFault1(i64 648, %struct.GridPoint* %92, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %93 = getelementptr %struct.GridPoint* %fi67, i64 %fi66, !llfi_index !650
  %fi68 = call %struct.GridPoint* @injectFault1(i64 649, %struct.GridPoint* %93, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %94 = getelementptr %struct.GridPoint* %fi68, i32 0, i32 1, !llfi_index !651
  %fi69 = call i32** @injectFault2(i64 650, i32** %94, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32* %fi65, i32** %fi69, align 8, !llfi_index !652
  br label %95, !llfi_index !653

; <label>:95                                      ; preds = %85
  %96 = load i64* %i1, align 8, !llfi_index !654
  %fi70 = call i64 @injectFault0(i64 653, i64 %96, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %97 = add nsw i64 %fi70, 1, !llfi_index !655
  %fi71 = call i64 @injectFault0(i64 654, i64 %97, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi71, i64* %i1, align 8, !llfi_index !656
  br label %81, !llfi_index !657

; <label>:98                                      ; preds = %81
  %99 = load %struct.GridPoint** %energy_grid, align 8, !llfi_index !658
  %fi72 = call %struct.GridPoint* @injectFault1(i64 657, %struct.GridPoint* %99, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret %struct.GridPoint* %fi72, !llfi_index !659
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @set_grid_ptrs(%struct.GridPoint* %energy_grid, %struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.GridPoint*, align 8, !llfi_index !660
  %2 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !661
  %3 = alloca i64, align 8, !llfi_index !662
  %4 = alloca i64, align 8, !llfi_index !663
  %mype = alloca i32, align 4, !llfi_index !664
  %i = alloca i64, align 8, !llfi_index !665
  %quarry = alloca double, align 8, !llfi_index !666
  %j = alloca i64, align 8, !llfi_index !667
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %1, align 8, !llfi_index !668
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %2, align 8, !llfi_index !669
  store i64 %n_isotopes, i64* %3, align 8, !llfi_index !670
  store i64 %n_gridpoints, i64* %4, align 8, !llfi_index !671
  store i32 0, i32* %mype, align 4, !llfi_index !672
  %5 = load i32* %mype, align 4, !llfi_index !673
  %fi6 = call i32 @injectFault9(i64 672, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = icmp eq i32 %fi6, 0, !llfi_index !674
  %fi7 = call i1 @injectFault10(i64 673, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi7, label %7, label %9, !llfi_index !675

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str4, i32 0, i32 0)), !llfi_index !676
  br label %9, !llfi_index !677

; <label>:9                                       ; preds = %7, %0
  store i64 0, i64* %i, align 8, !llfi_index !678
  br label %10, !llfi_index !679

; <label>:10                                      ; preds = %64, %9
  %11 = load i64* %i, align 8, !llfi_index !680
  %fi9 = call i64 @injectFault0(i64 679, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i64* %3, align 8, !llfi_index !681
  %fi10 = call i64 @injectFault0(i64 680, i64 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load i64* %4, align 8, !llfi_index !682
  %fi11 = call i64 @injectFault0(i64 681, i64 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = mul nsw i64 %fi10, %fi11, !llfi_index !683
  %fi12 = call i64 @injectFault0(i64 682, i64 %14, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = icmp slt i64 %fi9, %fi12, !llfi_index !684
  %fi13 = call i1 @injectFault10(i64 683, i1 %15, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi13, label %16, label %67, !llfi_index !685

; <label>:16                                      ; preds = %10
  %17 = load i64* %i, align 8, !llfi_index !686
  %fi8 = call i64 @injectFault0(i64 685, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load %struct.GridPoint** %1, align 8, !llfi_index !687
  %fi15 = call %struct.GridPoint* @injectFault1(i64 686, %struct.GridPoint* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = getelementptr %struct.GridPoint* %fi15, i64 %fi8, !llfi_index !688
  %fi16 = call %struct.GridPoint* @injectFault1(i64 687, %struct.GridPoint* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.GridPoint* %fi16, i32 0, i32 0, !llfi_index !689
  %fi17 = call double* @injectFault11(i64 688, double* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = load double* %fi17, align 8, !llfi_index !690
  %fi18 = call double @injectFault5(i64 689, double %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi18, double* %quarry, align 8, !llfi_index !691
  %22 = load i32* %mype, align 4, !llfi_index !692
  %fi19 = call i32 @injectFault9(i64 691, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = icmp eq i32 %fi19, 0, !llfi_index !693
  %fi20 = call i1 @injectFault10(i64 692, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi20, label %24, label %39, !llfi_index !694

; <label>:24                                      ; preds = %16
  %25 = load i64* %i, align 8, !llfi_index !695
  %fi21 = call i64 @injectFault0(i64 694, i64 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = srem i64 %fi21, 200, !llfi_index !696
  %fi22 = call i64 @injectFault0(i64 695, i64 %26, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = icmp eq i64 %fi22, 0, !llfi_index !697
  %fi23 = call i1 @injectFault10(i64 696, i1 %27, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi23, label %28, label %39, !llfi_index !698

; <label>:28                                      ; preds = %24
  %29 = load i64* %i, align 8, !llfi_index !699
  %fi24 = call i64 @injectFault0(i64 698, i64 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = sitofp i64 %fi24 to double, !llfi_index !700
  %fi25 = call double @injectFault5(i64 699, double %30, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = fmul double 1.000000e+02, %fi25, !llfi_index !701
  %fi26 = call double @injectFault5(i64 700, double %31, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = load i64* %3, align 8, !llfi_index !702
  %fi27 = call i64 @injectFault0(i64 701, i64 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i64* %4, align 8, !llfi_index !703
  %fi14 = call i64 @injectFault0(i64 702, i64 %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = mul nsw i64 %fi27, %fi14, !llfi_index !704
  %fi30 = call i64 @injectFault0(i64 703, i64 %34, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = sdiv i64 %fi30, 1, !llfi_index !705
  %fi31 = call i64 @injectFault0(i64 704, i64 %35, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = sitofp i64 %fi31 to double, !llfi_index !706
  %fi32 = call double @injectFault5(i64 705, double %36, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = fdiv double %fi26, %fi32, !llfi_index !707
  %fi33 = call double @injectFault5(i64 706, double %37, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str5, i32 0, i32 0), double %fi33), !llfi_index !708
  br label %39, !llfi_index !709

; <label>:39                                      ; preds = %28, %24, %16
  store i64 0, i64* %j, align 8, !llfi_index !710
  br label %40, !llfi_index !711

; <label>:40                                      ; preds = %60, %39
  %41 = load i64* %j, align 8, !llfi_index !712
  %fi34 = call i64 @injectFault0(i64 711, i64 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = load i64* %3, align 8, !llfi_index !713
  %fi35 = call i64 @injectFault0(i64 712, i64 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = icmp slt i64 %fi34, %fi35, !llfi_index !714
  %fi36 = call i1 @injectFault10(i64 713, i1 %43, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi36, label %44, label %63, !llfi_index !715

; <label>:44                                      ; preds = %40
  %45 = load i64* %j, align 8, !llfi_index !716
  %fi37 = call i64 @injectFault0(i64 715, i64 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load %struct.NuclideGridPoint*** %2, align 8, !llfi_index !717
  %fi38 = call %struct.NuclideGridPoint** @injectFault7(i64 716, %struct.NuclideGridPoint** %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = getelementptr %struct.NuclideGridPoint** %fi38, i64 %fi37, !llfi_index !718
  %fi39 = call %struct.NuclideGridPoint** @injectFault7(i64 717, %struct.NuclideGridPoint** %47, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = load %struct.NuclideGridPoint** %fi39, align 8, !llfi_index !719
  %fi40 = call %struct.NuclideGridPoint* @injectFault8(i64 718, %struct.NuclideGridPoint* %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = load double* %quarry, align 8, !llfi_index !720
  %fi41 = call double @injectFault5(i64 719, double %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load i64* %4, align 8, !llfi_index !721
  %fi42 = call i64 @injectFault0(i64 720, i64 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = trunc i64 %fi42 to i32, !llfi_index !722
  %fi43 = call i32 @injectFault9(i64 721, i32 %51, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = call i32 @binary_search(%struct.NuclideGridPoint* %fi40, double %fi41, i32 %fi43), !llfi_index !723
  %53 = load i64* %j, align 8, !llfi_index !724
  %fi = call i64 @injectFault0(i64 723, i64 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = load i64* %i, align 8, !llfi_index !725
  %fi1 = call i64 @injectFault0(i64 724, i64 %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = load %struct.GridPoint** %1, align 8, !llfi_index !726
  %fi2 = call %struct.GridPoint* @injectFault1(i64 725, %struct.GridPoint* %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %56 = getelementptr %struct.GridPoint* %fi2, i64 %fi1, !llfi_index !727
  %fi3 = call %struct.GridPoint* @injectFault1(i64 726, %struct.GridPoint* %56, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = getelementptr %struct.GridPoint* %fi3, i32 0, i32 1, !llfi_index !728
  %fi4 = call i32** @injectFault2(i64 727, i32** %57, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = load i32** %fi4, align 8, !llfi_index !729
  %fi5 = call i32* @injectFault3(i64 728, i32* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = getelementptr i32* %fi5, i64 %fi, !llfi_index !730
  %fi44 = call i32* @injectFault3(i64 729, i32* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %52, i32* %fi44, align 4, !llfi_index !731
  br label %60, !llfi_index !732

; <label>:60                                      ; preds = %44
  %61 = load i64* %j, align 8, !llfi_index !733
  %fi45 = call i64 @injectFault0(i64 732, i64 %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = add nsw i64 %fi45, 1, !llfi_index !734
  %fi46 = call i64 @injectFault0(i64 733, i64 %62, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi46, i64* %j, align 8, !llfi_index !735
  br label %40, !llfi_index !736

; <label>:63                                      ; preds = %40
  br label %64, !llfi_index !737

; <label>:64                                      ; preds = %63
  %65 = load i64* %i, align 8, !llfi_index !738
  %fi28 = call i64 @injectFault0(i64 737, i64 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %66 = add nsw i64 %fi28, 1, !llfi_index !739
  %fi29 = call i64 @injectFault0(i64 738, i64 %66, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi29, i64* %i, align 8, !llfi_index !740
  br label %10, !llfi_index !741

; <label>:67                                      ; preds = %10
  %68 = load i32* %mype, align 4, !llfi_index !742
  %fi47 = call i32 @injectFault9(i64 741, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %69 = icmp eq i32 %fi47, 0, !llfi_index !743
  %fi48 = call i1 @injectFault10(i64 742, i1 %69, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi48, label %70, label %72, !llfi_index !744

; <label>:70                                      ; preds = %67
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !llfi_index !745
  br label %72, !llfi_index !746

; <label>:72                                      ; preds = %70, %67
  ret void, !llfi_index !747
}

; Function Attrs: nounwind uwtable
define void @logo(i32 %version) #0 {
  %1 = alloca i32, align 4, !llfi_index !748
  %v = alloca [100 x i8], align 16, !llfi_index !749
  store i32 %version, i32* %1, align 4, !llfi_index !750
  call void @border_print(), !llfi_index !751
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([488 x i8]* @.str7, i32 0, i32 0)), !llfi_index !752
  call void @border_print(), !llfi_index !753
  call void @center_print(i8* getelementptr inbounds ([41 x i8]* @.str18, i32 0, i32 0), i32 79), !llfi_index !754
  %3 = getelementptr [100 x i8]* %v, i32 0, i32 0, !llfi_index !755
  %fi = call i8* @injectFault4(i64 754, i8* %3, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = load i32* %1, align 4, !llfi_index !756
  %fi1 = call i32 @injectFault9(i64 755, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = call i32 (i8*, i8*, ...)* @sprintf(i8* %fi, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i32 %fi1) #3, !llfi_index !757
  %6 = getelementptr [100 x i8]* %v, i32 0, i32 0, !llfi_index !758
  %fi2 = call i8* @injectFault4(i64 757, i8* %6, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @center_print(i8* %fi2, i32 79), !llfi_index !759
  call void @border_print(), !llfi_index !760
  ret void, !llfi_index !761
}

; Function Attrs: nounwind uwtable
define void @border_print() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([82 x i8]* @.str23, i32 0, i32 0)), !llfi_index !762
  ret void, !llfi_index !763
}

; Function Attrs: nounwind uwtable
define void @center_print(i8* %s, i32 %width) #0 {
  %1 = alloca i8*, align 8, !llfi_index !764
  %2 = alloca i32, align 4, !llfi_index !765
  %length = alloca i32, align 4, !llfi_index !766
  %i = alloca i32, align 4, !llfi_index !767
  store i8* %s, i8** %1, align 8, !llfi_index !768
  store i32 %width, i32* %2, align 4, !llfi_index !769
  %3 = load i8** %1, align 8, !llfi_index !770
  %fi = call i8* @injectFault4(i64 769, i8* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = call i64 @strlen(i8* %fi) #8, !llfi_index !771
  %5 = trunc i64 %4 to i32, !llfi_index !772
  %fi1 = call i32 @injectFault9(i64 771, i32 %5, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi1, i32* %length, align 4, !llfi_index !773
  store i32 0, i32* %i, align 4, !llfi_index !774
  br label %6, !llfi_index !775

; <label>:6                                       ; preds = %16, %0
  %7 = load i32* %i, align 4, !llfi_index !776
  %fi2 = call i32 @injectFault9(i64 775, i32 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = load i32* %2, align 4, !llfi_index !777
  %fi3 = call i32 @injectFault9(i64 776, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = load i32* %length, align 4, !llfi_index !778
  %fi5 = call i32 @injectFault9(i64 777, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = sub nsw i32 %fi3, %fi5, !llfi_index !779
  %fi6 = call i32 @injectFault9(i64 778, i32 %10, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = sdiv i32 %fi6, 2, !llfi_index !780
  %fi7 = call i32 @injectFault9(i64 779, i32 %11, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = icmp sle i32 %fi2, %fi7, !llfi_index !781
  %fi8 = call i1 @injectFault10(i64 780, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi8, label %13, label %19, !llfi_index !782

; <label>:13                                      ; preds = %6
  %14 = load %struct._IO_FILE** @stdout, align 8, !llfi_index !783
  %fi9 = call %struct._IO_FILE* @injectFault13(i64 782, %struct._IO_FILE* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8]* @.str310, i32 0, i32 0), %struct._IO_FILE* %fi9), !llfi_index !784
  br label %16, !llfi_index !785

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4, !llfi_index !786
  %fi4 = call i32 @injectFault9(i64 785, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = add nsw i32 %fi4, 1, !llfi_index !787
  %fi10 = call i32 @injectFault9(i64 786, i32 %18, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi10, i32* %i, align 4, !llfi_index !788
  br label %6, !llfi_index !789

; <label>:19                                      ; preds = %6
  %20 = load i8** %1, align 8, !llfi_index !790
  %fi11 = call i8* @injectFault4(i64 789, i8* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = load %struct._IO_FILE** @stdout, align 8, !llfi_index !791
  %fi12 = call %struct._IO_FILE* @injectFault13(i64 790, %struct._IO_FILE* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = call i32 @fputs(i8* %fi11, %struct._IO_FILE* %fi12), !llfi_index !792
  %23 = load %struct._IO_FILE** @stdout, align 8, !llfi_index !793
  %fi13 = call %struct._IO_FILE* @injectFault13(i64 792, %struct._IO_FILE* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8]* @.str411, i32 0, i32 0), %struct._IO_FILE* %fi13), !llfi_index !794
  ret void, !llfi_index !795
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_results(%struct.Inputs* byval align 8 %in, i32 %mype, double %runtime, i32 %nprocs, i64 %vhash) #0 {
  %1 = alloca i32, align 4, !llfi_index !796
  %2 = alloca double, align 8, !llfi_index !797
  %3 = alloca i32, align 4, !llfi_index !798
  %4 = alloca i64, align 8, !llfi_index !799
  %lookups_per_sec = alloca i32, align 4, !llfi_index !800
  %out = alloca %struct._IO_FILE*, align 8, !llfi_index !801
  store i32 %mype, i32* %1, align 4, !llfi_index !802
  store double %runtime, double* %2, align 8, !llfi_index !803
  store i32 %nprocs, i32* %3, align 4, !llfi_index !804
  store i64 %vhash, i64* %4, align 8, !llfi_index !805
  %5 = getelementptr %struct.Inputs* %in, i32 0, i32 3, !llfi_index !806
  %fi = call i32* @injectFault3(i64 805, i32* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i32* %fi, align 4, !llfi_index !807
  %fi1 = call i32 @injectFault9(i64 806, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = sitofp i32 %fi1 to double, !llfi_index !808
  %fi2 = call double @injectFault5(i64 807, double %7, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = load double* %2, align 8, !llfi_index !809
  %fi3 = call double @injectFault5(i64 808, double %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = fdiv double %fi2, %fi3, !llfi_index !810
  %fi4 = call double @injectFault5(i64 809, double %9, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = fptosi double %fi4 to i32, !llfi_index !811
  %fi5 = call i32 @injectFault9(i64 810, i32 %10, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi5, i32* %lookups_per_sec, align 4, !llfi_index !812
  %11 = load i32* %1, align 4, !llfi_index !813
  %fi6 = call i32 @injectFault9(i64 812, i32 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = icmp eq i32 %fi6, 0, !llfi_index !814
  %fi7 = call i1 @injectFault10(i64 813, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi7, label %13, label %31, !llfi_index !815

; <label>:13                                      ; preds = %0
  call void @border_print(), !llfi_index !816
  call void @center_print(i8* getelementptr inbounds ([8 x i8]* @.str512, i32 0, i32 0), i32 79), !llfi_index !817
  call void @border_print(), !llfi_index !818
  %14 = getelementptr %struct.Inputs* %in, i32 0, i32 0, !llfi_index !819
  %fi8 = call i32* @injectFault3(i64 818, i32* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = load i32* %fi8, align 4, !llfi_index !820
  %fi9 = call i32 @injectFault9(i64 819, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str613, i32 0, i32 0), i32 %fi9), !llfi_index !821
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str714, i32 0, i32 0)), !llfi_index !822
  %18 = getelementptr %struct.Inputs* %in, i32 0, i32 3, !llfi_index !823
  %fi10 = call i32* @injectFault3(i64 822, i32* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load i32* %fi10, align 4, !llfi_index !824
  %fi11 = call i32 @injectFault9(i64 823, i32 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = sext i32 %fi11 to i64, !llfi_index !825
  %fi12 = call i64 @injectFault0(i64 824, i64 %20, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @fancy_int(i64 %fi12), !llfi_index !826
  %21 = load i64* %4, align 8, !llfi_index !827
  %fi13 = call i64 @injectFault0(i64 826, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str8, i32 0, i32 0), i64 %fi13), !llfi_index !828
  call void @border_print(), !llfi_index !829
  %23 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0)), !llfi_index !830
  store %struct._IO_FILE* %23, %struct._IO_FILE** %out, align 8, !llfi_index !831
  %24 = load %struct._IO_FILE** %out, align 8, !llfi_index !832
  %fi14 = call %struct._IO_FILE* @injectFault13(i64 831, %struct._IO_FILE* %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = getelementptr %struct.Inputs* %in, i32 0, i32 0, !llfi_index !833
  %fi15 = call i32* @injectFault3(i64 832, i32* %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load i32* %fi15, align 4, !llfi_index !834
  %fi16 = call i32 @injectFault9(i64 833, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = load i32* %lookups_per_sec, align 4, !llfi_index !835
  %fi17 = call i32 @injectFault9(i64 834, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fi14, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i32 %fi16, i32 %fi17), !llfi_index !836
  %29 = load %struct._IO_FILE** %out, align 8, !llfi_index !837
  %fi18 = call %struct._IO_FILE* @injectFault13(i64 836, %struct._IO_FILE* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = call i32 @fclose(%struct._IO_FILE* %fi18), !llfi_index !838
  br label %31, !llfi_index !839

; <label>:31                                      ; preds = %13, %0
  ret void, !llfi_index !840
}

; Function Attrs: nounwind uwtable
define void @fancy_int(i64 %a) #0 {
  %1 = alloca i64, align 8, !llfi_index !841
  store i64 %a, i64* %1, align 8, !llfi_index !842
  %2 = load i64* %1, align 8, !llfi_index !843
  %fi = call i64 @injectFault0(i64 842, i64 %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = icmp slt i64 %fi, 1000, !llfi_index !844
  %fi1 = call i1 @injectFault10(i64 843, i1 %3, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi1, label %4, label %7, !llfi_index !845

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8, !llfi_index !846
  %fi2 = call i64 @injectFault0(i64 845, i64 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i64 %fi2), !llfi_index !847
  br label %55, !llfi_index !848

; <label>:7                                       ; preds = %0
  %8 = load i64* %1, align 8, !llfi_index !849
  %fi3 = call i64 @injectFault0(i64 848, i64 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = icmp sge i64 %fi3, 1000, !llfi_index !850
  %fi5 = call i1 @injectFault10(i64 849, i1 %9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi5, label %10, label %19, !llfi_index !851

; <label>:10                                      ; preds = %7
  %11 = load i64* %1, align 8, !llfi_index !852
  %fi6 = call i64 @injectFault0(i64 851, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = icmp slt i64 %fi6, 1000000, !llfi_index !853
  %fi7 = call i1 @injectFault10(i64 852, i1 %12, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi7, label %13, label %19, !llfi_index !854

; <label>:13                                      ; preds = %10
  %14 = load i64* %1, align 8, !llfi_index !855
  %fi8 = call i64 @injectFault0(i64 854, i64 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = sdiv i64 %fi8, 1000, !llfi_index !856
  %fi9 = call i64 @injectFault0(i64 855, i64 %15, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %1, align 8, !llfi_index !857
  %fi10 = call i64 @injectFault0(i64 856, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = srem i64 %fi10, 1000, !llfi_index !858
  %fi4 = call i64 @injectFault0(i64 857, i64 %17, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i64 %fi9, i64 %fi4), !llfi_index !859
  br label %54, !llfi_index !860

; <label>:19                                      ; preds = %10, %7
  %20 = load i64* %1, align 8, !llfi_index !861
  %fi11 = call i64 @injectFault0(i64 860, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = icmp sge i64 %fi11, 1000000, !llfi_index !862
  %fi12 = call i1 @injectFault10(i64 861, i1 %21, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi12, label %22, label %34, !llfi_index !863

; <label>:22                                      ; preds = %19
  %23 = load i64* %1, align 8, !llfi_index !864
  %fi13 = call i64 @injectFault0(i64 863, i64 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = icmp slt i64 %fi13, 1000000000, !llfi_index !865
  %fi14 = call i1 @injectFault10(i64 864, i1 %24, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi14, label %25, label %34, !llfi_index !866

; <label>:25                                      ; preds = %22
  %26 = load i64* %1, align 8, !llfi_index !867
  %fi15 = call i64 @injectFault0(i64 866, i64 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = sdiv i64 %fi15, 1000000, !llfi_index !868
  %fi16 = call i64 @injectFault0(i64 867, i64 %27, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = load i64* %1, align 8, !llfi_index !869
  %fi17 = call i64 @injectFault0(i64 868, i64 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = srem i64 %fi17, 1000000, !llfi_index !870
  %fi18 = call i64 @injectFault0(i64 869, i64 %29, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = sdiv i64 %fi18, 1000, !llfi_index !871
  %fi19 = call i64 @injectFault0(i64 870, i64 %30, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i64* %1, align 8, !llfi_index !872
  %fi20 = call i64 @injectFault0(i64 871, i64 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = srem i64 %fi20, 1000, !llfi_index !873
  %fi21 = call i64 @injectFault0(i64 872, i64 %32, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str26, i32 0, i32 0), i64 %fi16, i64 %fi19, i64 %fi21), !llfi_index !874
  br label %53, !llfi_index !875

; <label>:34                                      ; preds = %22, %19
  %35 = load i64* %1, align 8, !llfi_index !876
  %fi22 = call i64 @injectFault0(i64 875, i64 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = icmp sge i64 %fi22, 1000000000, !llfi_index !877
  %fi23 = call i1 @injectFault10(i64 876, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi23, label %37, label %49, !llfi_index !878

; <label>:37                                      ; preds = %34
  %38 = load i64* %1, align 8, !llfi_index !879
  %fi24 = call i64 @injectFault0(i64 878, i64 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = sdiv i64 %fi24, 1000000000, !llfi_index !880
  %fi25 = call i64 @injectFault0(i64 879, i64 %39, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load i64* %1, align 8, !llfi_index !881
  %fi26 = call i64 @injectFault0(i64 880, i64 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = srem i64 %fi26, 1000000000, !llfi_index !882
  %fi27 = call i64 @injectFault0(i64 881, i64 %41, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = sdiv i64 %fi27, 1000000, !llfi_index !883
  %fi28 = call i64 @injectFault0(i64 882, i64 %42, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load i64* %1, align 8, !llfi_index !884
  %fi29 = call i64 @injectFault0(i64 883, i64 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = srem i64 %fi29, 1000000, !llfi_index !885
  %fi30 = call i64 @injectFault0(i64 884, i64 %44, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = sdiv i64 %fi30, 1000, !llfi_index !886
  %fi31 = call i64 @injectFault0(i64 885, i64 %45, i32 15, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load i64* %1, align 8, !llfi_index !887
  %fi32 = call i64 @injectFault0(i64 886, i64 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = srem i64 %fi32, 1000, !llfi_index !888
  %fi33 = call i64 @injectFault0(i64 887, i64 %47, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str27, i32 0, i32 0), i64 %fi25, i64 %fi28, i64 %fi31, i64 %fi33), !llfi_index !889
  br label %52, !llfi_index !890

; <label>:49                                      ; preds = %34
  %50 = load i64* %1, align 8, !llfi_index !891
  %fi34 = call i64 @injectFault0(i64 890, i64 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i64 %fi34), !llfi_index !892
  br label %52, !llfi_index !893

; <label>:52                                      ; preds = %49, %37
  br label %53, !llfi_index !894

; <label>:53                                      ; preds = %52, %25
  br label %54, !llfi_index !895

; <label>:54                                      ; preds = %53, %13
  br label %55, !llfi_index !896

; <label>:55                                      ; preds = %54, %4
  ret void, !llfi_index !897
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %nprocs, i32 %version) #0 {
  %1 = alloca i32, align 4, !llfi_index !898
  %2 = alloca i32, align 4, !llfi_index !899
  %mem_tot = alloca i32, align 4, !llfi_index !900
  store i32 %nprocs, i32* %1, align 4, !llfi_index !901
  store i32 %version, i32* %2, align 4, !llfi_index !902
  %3 = call i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in), !llfi_index !903
  %4 = trunc i64 %3 to i32, !llfi_index !904
  %fi = call i32 @injectFault9(i64 903, i32 %4, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi, i32* %mem_tot, align 4, !llfi_index !905
  %5 = load i32* %2, align 4, !llfi_index !906
  %fi1 = call i32 @injectFault9(i64 905, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @logo(i32 %fi1), !llfi_index !907
  call void @center_print(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0), i32 79), !llfi_index !908
  call void @border_print(), !llfi_index !909
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i32 0, i32 0)), !llfi_index !910
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str14, i32 0, i32 0), i32 12), !llfi_index !911
  %8 = getelementptr %struct.Inputs* %in, i32 0, i32 4, !llfi_index !912
  %fi2 = call i8** @injectFault15(i64 911, i8** %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = load i8** %fi2, align 8, !llfi_index !913
  %fi3 = call i8* @injectFault4(i64 912, i8* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str15, i32 0, i32 0), i8* %fi3), !llfi_index !914
  %11 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !915
  %fi4 = call i64* @injectFault6(i64 914, i64* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i64* %fi4, align 8, !llfi_index !916
  %fi5 = call i64 @injectFault0(i64 915, i64 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str16, i32 0, i32 0), i64 %fi5), !llfi_index !917
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str17, i32 0, i32 0)), !llfi_index !918
  %15 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !919
  %fi6 = call i64* @injectFault6(i64 918, i64* %15, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %fi6, align 8, !llfi_index !920
  %fi7 = call i64 @injectFault0(i64 919, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @fancy_int(i64 %fi7), !llfi_index !921
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1815, i32 0, i32 0)), !llfi_index !922
  %18 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !923
  %fi8 = call i64* @injectFault6(i64 922, i64* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load i64* %fi8, align 8, !llfi_index !924
  %fi9 = call i64 @injectFault0(i64 923, i64 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !925
  %fi10 = call i64* @injectFault6(i64 924, i64* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = load i64* %fi10, align 8, !llfi_index !926
  %fi11 = call i64 @injectFault0(i64 925, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = mul nsw i64 %fi9, %fi11, !llfi_index !927
  %fi12 = call i64 @injectFault0(i64 926, i64 %22, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @fancy_int(i64 %fi12), !llfi_index !928
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str19, i32 0, i32 0)), !llfi_index !929
  %24 = getelementptr %struct.Inputs* %in, i32 0, i32 3, !llfi_index !930
  %fi13 = call i32* @injectFault3(i64 929, i32* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = load i32* %fi13, align 4, !llfi_index !931
  %fi14 = call i32 @injectFault9(i64 930, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = sext i32 %fi14 to i64, !llfi_index !932
  %fi15 = call i64 @injectFault0(i64 931, i64 %26, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @fancy_int(i64 %fi15), !llfi_index !933
  %27 = getelementptr %struct.Inputs* %in, i32 0, i32 0, !llfi_index !934
  %fi16 = call i32* @injectFault3(i64 933, i32* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = load i32* %fi16, align 4, !llfi_index !935
  %fi17 = call i32 @injectFault9(i64 934, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str20, i32 0, i32 0), i32 %fi17), !llfi_index !936
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str21, i32 0, i32 0)), !llfi_index !937
  %31 = load i32* %mem_tot, align 4, !llfi_index !938
  %fi18 = call i32 @injectFault9(i64 937, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = sext i32 %fi18 to i64, !llfi_index !939
  %fi19 = call i64 @injectFault0(i64 938, i64 %32, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @fancy_int(i64 %fi19), !llfi_index !940
  call void @border_print(), !llfi_index !941
  call void @center_print(i8* getelementptr inbounds ([15 x i8]* @.str22, i32 0, i32 0), i32 79), !llfi_index !942
  call void @border_print(), !llfi_index !943
  ret void, !llfi_index !944
}

; Function Attrs: nounwind uwtable
define void @print_CLI_error() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str28, i32 0, i32 0)), !llfi_index !945
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str2916, i32 0, i32 0)), !llfi_index !946
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str30, i32 0, i32 0)), !llfi_index !947
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([73 x i8]* @.str31, i32 0, i32 0)), !llfi_index !948
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str32, i32 0, i32 0)), !llfi_index !949
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str33, i32 0, i32 0)), !llfi_index !950
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str34, i32 0, i32 0)), !llfi_index !951
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str35, i32 0, i32 0)), !llfi_index !952
  call void @postInjections()
  call void @exit(i32 4) #7, !llfi_index !953
  unreachable, !llfi_index !954
                                                  ; No predecessors!
  ret void, !llfi_index !955
}

; Function Attrs: nounwind uwtable
define void @read_CLI(%struct.Inputs* noalias sret %agg.result, i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !956
  %2 = alloca i8**, align 8, !llfi_index !957
  %input = alloca %struct.Inputs, align 8, !llfi_index !958
  %user_g = alloca i32, align 4, !llfi_index !959
  %i = alloca i32, align 4, !llfi_index !960
  %arg = alloca i8*, align 8, !llfi_index !961
  store i32 %argc, i32* %1, align 4, !llfi_index !962
  store i8** %argv, i8*** %2, align 8, !llfi_index !963
  %3 = getelementptr %struct.Inputs* %input, i32 0, i32 0, !llfi_index !964
  %fi2 = call i32* @injectFault3(i64 963, i32* %3, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 1, i32* %fi2, align 4, !llfi_index !965
  %4 = getelementptr %struct.Inputs* %input, i32 0, i32 1, !llfi_index !966
  %fi3 = call i64* @injectFault6(i64 965, i64* %4, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 355, i64* %fi3, align 8, !llfi_index !967
  %5 = getelementptr %struct.Inputs* %input, i32 0, i32 2, !llfi_index !968
  %fi4 = call i64* @injectFault6(i64 967, i64* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 11303, i64* %fi4, align 8, !llfi_index !969
  %6 = getelementptr %struct.Inputs* %input, i32 0, i32 3, !llfi_index !970
  %fi5 = call i32* @injectFault3(i64 969, i32* %6, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 15000000, i32* %fi5, align 4, !llfi_index !971
  %7 = call noalias i8* @malloc(i64 6) #3, !llfi_index !972
  %8 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !973
  %fi6 = call i8** @injectFault15(i64 972, i8** %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8* %7, i8** %fi6, align 8, !llfi_index !974
  %9 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !975
  %fi8 = call i8** @injectFault15(i64 974, i8** %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load i8** %fi8, align 8, !llfi_index !976
  %fi9 = call i8* @injectFault4(i64 975, i8* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = getelementptr i8* %fi9, i64 0, !llfi_index !977
  %fi10 = call i8* @injectFault4(i64 976, i8* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 108, i8* %fi10, align 1, !llfi_index !978
  %12 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !979
  %fi11 = call i8** @injectFault15(i64 978, i8** %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load i8** %fi11, align 8, !llfi_index !980
  %fi12 = call i8* @injectFault4(i64 979, i8* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = getelementptr i8* %fi12, i64 1, !llfi_index !981
  %fi13 = call i8* @injectFault4(i64 980, i8* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 97, i8* %fi13, align 1, !llfi_index !982
  %15 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !983
  %fi14 = call i8** @injectFault15(i64 982, i8** %15, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i8** %fi14, align 8, !llfi_index !984
  %fi15 = call i8* @injectFault4(i64 983, i8* %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = getelementptr i8* %fi15, i64 2, !llfi_index !985
  %fi7 = call i8* @injectFault4(i64 984, i8* %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 114, i8* %fi7, align 1, !llfi_index !986
  %18 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !987
  %fi17 = call i8** @injectFault15(i64 986, i8** %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load i8** %fi17, align 8, !llfi_index !988
  %fi18 = call i8* @injectFault4(i64 987, i8* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr i8* %fi18, i64 3, !llfi_index !989
  %fi19 = call i8* @injectFault4(i64 988, i8* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 103, i8* %fi19, align 1, !llfi_index !990
  %21 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !991
  %fi20 = call i8** @injectFault15(i64 990, i8** %21, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load i8** %fi20, align 8, !llfi_index !992
  %fi21 = call i8* @injectFault4(i64 991, i8* %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = getelementptr i8* %fi21, i64 4, !llfi_index !993
  %fi22 = call i8* @injectFault4(i64 992, i8* %23, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 101, i8* %fi22, align 1, !llfi_index !994
  %24 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !995
  %fi23 = call i8** @injectFault15(i64 994, i8** %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = load i8** %fi23, align 8, !llfi_index !996
  %fi24 = call i8* @injectFault4(i64 995, i8* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = getelementptr i8* %fi24, i64 5, !llfi_index !997
  %fi25 = call i8* @injectFault4(i64 996, i8* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8 0, i8* %fi25, align 1, !llfi_index !998
  store i32 0, i32* %user_g, align 4, !llfi_index !999
  store i32 1, i32* %i, align 4, !llfi_index !1000
  br label %27, !llfi_index !1001

; <label>:27                                      ; preds = %116, %0
  %28 = load i32* %i, align 4, !llfi_index !1002
  %fi26 = call i32 @injectFault9(i64 1001, i32 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = load i32* %1, align 4, !llfi_index !1003
  %fi27 = call i32 @injectFault9(i64 1002, i32 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = icmp slt i32 %fi26, %fi27, !llfi_index !1004
  %fi28 = call i1 @injectFault10(i64 1003, i1 %30, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi28, label %31, label %119, !llfi_index !1005

; <label>:31                                      ; preds = %27
  %32 = load i32* %i, align 4, !llfi_index !1006
  %fi29 = call i32 @injectFault9(i64 1005, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = sext i32 %fi29 to i64, !llfi_index !1007
  %fi16 = call i64 @injectFault0(i64 1006, i64 %33, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = load i8*** %2, align 8, !llfi_index !1008
  %fi32 = call i8** @injectFault15(i64 1007, i8** %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = getelementptr i8** %fi32, i64 %fi16, !llfi_index !1009
  %fi33 = call i8** @injectFault15(i64 1008, i8** %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load i8** %fi33, align 8, !llfi_index !1010
  %fi34 = call i8* @injectFault4(i64 1009, i8* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8* %fi34, i8** %arg, align 8, !llfi_index !1011
  %37 = load i8** %arg, align 8, !llfi_index !1012
  %fi35 = call i8* @injectFault4(i64 1011, i8* %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = call i32 @strcmp(i8* %fi35, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0)) #8, !llfi_index !1013
  %39 = icmp eq i32 %38, 0, !llfi_index !1014
  %fi36 = call i1 @injectFault10(i64 1013, i1 %39, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi36, label %40, label %55, !llfi_index !1015

; <label>:40                                      ; preds = %31
  %41 = load i32* %i, align 4, !llfi_index !1016
  %fi37 = call i32 @injectFault9(i64 1015, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = add nsw i32 %fi37, 1, !llfi_index !1017
  %fi38 = call i32 @injectFault9(i64 1016, i32 %42, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi38, i32* %i, align 4, !llfi_index !1018
  %43 = load i32* %1, align 4, !llfi_index !1019
  %fi39 = call i32 @injectFault9(i64 1018, i32 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = icmp slt i32 %fi38, %fi39, !llfi_index !1020
  %fi40 = call i1 @injectFault10(i64 1019, i1 %44, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi40, label %45, label %53, !llfi_index !1021

; <label>:45                                      ; preds = %40
  %46 = load i32* %i, align 4, !llfi_index !1022
  %fi41 = call i32 @injectFault9(i64 1021, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = sext i32 %fi41 to i64, !llfi_index !1023
  %fi42 = call i64 @injectFault0(i64 1022, i64 %47, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = load i8*** %2, align 8, !llfi_index !1024
  %fi43 = call i8** @injectFault15(i64 1023, i8** %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = getelementptr i8** %fi43, i64 %fi42, !llfi_index !1025
  %fi44 = call i8** @injectFault15(i64 1024, i8** %49, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load i8** %fi44, align 8, !llfi_index !1026
  %fi45 = call i8* @injectFault4(i64 1025, i8* %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = call i32 @atoi(i8* %fi45) #8, !llfi_index !1027
  %52 = getelementptr %struct.Inputs* %input, i32 0, i32 0, !llfi_index !1028
  %fi46 = call i32* @injectFault3(i64 1027, i32* %52, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %51, i32* %fi46, align 4, !llfi_index !1029
  br label %54, !llfi_index !1030

; <label>:53                                      ; preds = %40
  call void @print_CLI_error(), !llfi_index !1031
  br label %54, !llfi_index !1032

; <label>:54                                      ; preds = %53, %45
  br label %115, !llfi_index !1033

; <label>:55                                      ; preds = %31
  %56 = load i8** %arg, align 8, !llfi_index !1034
  %fi47 = call i8* @injectFault4(i64 1033, i8* %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = call i32 @strcmp(i8* %fi47, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0)) #8, !llfi_index !1035
  %58 = icmp eq i32 %57, 0, !llfi_index !1036
  %fi48 = call i1 @injectFault10(i64 1035, i1 %58, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi48, label %59, label %74, !llfi_index !1037

; <label>:59                                      ; preds = %55
  %60 = load i32* %i, align 4, !llfi_index !1038
  %fi49 = call i32 @injectFault9(i64 1037, i32 %60, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = add nsw i32 %fi49, 1, !llfi_index !1039
  %fi50 = call i32 @injectFault9(i64 1038, i32 %61, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi50, i32* %i, align 4, !llfi_index !1040
  %62 = load i32* %1, align 4, !llfi_index !1041
  %fi51 = call i32 @injectFault9(i64 1040, i32 %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %63 = icmp slt i32 %fi50, %fi51, !llfi_index !1042
  %fi52 = call i1 @injectFault10(i64 1041, i1 %63, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi52, label %64, label %72, !llfi_index !1043

; <label>:64                                      ; preds = %59
  store i32 1, i32* %user_g, align 4, !llfi_index !1044
  %65 = load i32* %i, align 4, !llfi_index !1045
  %fi30 = call i32 @injectFault9(i64 1044, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %66 = sext i32 %fi30 to i64, !llfi_index !1046
  %fi31 = call i64 @injectFault0(i64 1045, i64 %66, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %67 = load i8*** %2, align 8, !llfi_index !1047
  %fi56 = call i8** @injectFault15(i64 1046, i8** %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %68 = getelementptr i8** %fi56, i64 %fi31, !llfi_index !1048
  %fi57 = call i8** @injectFault15(i64 1047, i8** %68, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %69 = load i8** %fi57, align 8, !llfi_index !1049
  %fi58 = call i8* @injectFault4(i64 1048, i8* %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %70 = call i64 @atol(i8* %fi58) #8, !llfi_index !1050
  %71 = getelementptr %struct.Inputs* %input, i32 0, i32 2, !llfi_index !1051
  %fi59 = call i64* @injectFault6(i64 1050, i64* %71, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %70, i64* %fi59, align 8, !llfi_index !1052
  br label %73, !llfi_index !1053

; <label>:72                                      ; preds = %59
  call void @print_CLI_error(), !llfi_index !1054
  br label %73, !llfi_index !1055

; <label>:73                                      ; preds = %72, %64
  br label %114, !llfi_index !1056

; <label>:74                                      ; preds = %55
  %75 = load i8** %arg, align 8, !llfi_index !1057
  %fi60 = call i8* @injectFault4(i64 1056, i8* %75, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %76 = call i32 @strcmp(i8* %fi60, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0)) #8, !llfi_index !1058
  %77 = icmp eq i32 %76, 0, !llfi_index !1059
  %fi61 = call i1 @injectFault10(i64 1058, i1 %77, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi61, label %78, label %93, !llfi_index !1060

; <label>:78                                      ; preds = %74
  %79 = load i32* %i, align 4, !llfi_index !1061
  %fi62 = call i32 @injectFault9(i64 1060, i32 %79, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %80 = add nsw i32 %fi62, 1, !llfi_index !1062
  %fi63 = call i32 @injectFault9(i64 1061, i32 %80, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi63, i32* %i, align 4, !llfi_index !1063
  %81 = load i32* %1, align 4, !llfi_index !1064
  %fi64 = call i32 @injectFault9(i64 1063, i32 %81, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %82 = icmp slt i32 %fi63, %fi64, !llfi_index !1065
  %fi65 = call i1 @injectFault10(i64 1064, i1 %82, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi65, label %83, label %91, !llfi_index !1066

; <label>:83                                      ; preds = %78
  %84 = load i32* %i, align 4, !llfi_index !1067
  %fi66 = call i32 @injectFault9(i64 1066, i32 %84, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %85 = sext i32 %fi66 to i64, !llfi_index !1068
  %fi67 = call i64 @injectFault0(i64 1067, i64 %85, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %86 = load i8*** %2, align 8, !llfi_index !1069
  %fi68 = call i8** @injectFault15(i64 1068, i8** %86, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %87 = getelementptr i8** %fi68, i64 %fi67, !llfi_index !1070
  %fi69 = call i8** @injectFault15(i64 1069, i8** %87, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %88 = load i8** %fi69, align 8, !llfi_index !1071
  %fi70 = call i8* @injectFault4(i64 1070, i8* %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %89 = call i32 @atoi(i8* %fi70) #8, !llfi_index !1072
  %90 = getelementptr %struct.Inputs* %input, i32 0, i32 3, !llfi_index !1073
  %fi71 = call i32* @injectFault3(i64 1072, i32* %90, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %89, i32* %fi71, align 4, !llfi_index !1074
  br label %92, !llfi_index !1075

; <label>:91                                      ; preds = %78
  call void @print_CLI_error(), !llfi_index !1076
  br label %92, !llfi_index !1077

; <label>:92                                      ; preds = %91, %83
  br label %113, !llfi_index !1078

; <label>:93                                      ; preds = %74
  %94 = load i8** %arg, align 8, !llfi_index !1079
  %fi72 = call i8* @injectFault4(i64 1078, i8* %94, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %95 = call i32 @strcmp(i8* %fi72, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0)) #8, !llfi_index !1080
  %96 = icmp eq i32 %95, 0, !llfi_index !1081
  %fi73 = call i1 @injectFault10(i64 1080, i1 %96, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi73, label %97, label %111, !llfi_index !1082

; <label>:97                                      ; preds = %93
  %98 = load i32* %i, align 4, !llfi_index !1083
  %fi74 = call i32 @injectFault9(i64 1082, i32 %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %99 = add nsw i32 %fi74, 1, !llfi_index !1084
  %fi75 = call i32 @injectFault9(i64 1083, i32 %99, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi75, i32* %i, align 4, !llfi_index !1085
  %100 = load i32* %1, align 4, !llfi_index !1086
  %fi76 = call i32 @injectFault9(i64 1085, i32 %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %101 = icmp slt i32 %fi75, %fi76, !llfi_index !1087
  %fi77 = call i1 @injectFault10(i64 1086, i1 %101, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi77, label %102, label %109, !llfi_index !1088

; <label>:102                                     ; preds = %97
  %103 = load i32* %i, align 4, !llfi_index !1089
  %fi78 = call i32 @injectFault9(i64 1088, i32 %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %104 = sext i32 %fi78 to i64, !llfi_index !1090
  %fi79 = call i64 @injectFault0(i64 1089, i64 %104, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %105 = load i8*** %2, align 8, !llfi_index !1091
  %fi80 = call i8** @injectFault15(i64 1090, i8** %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %106 = getelementptr i8** %fi80, i64 %fi79, !llfi_index !1092
  %fi81 = call i8** @injectFault15(i64 1091, i8** %106, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %107 = load i8** %fi81, align 8, !llfi_index !1093
  %fi82 = call i8* @injectFault4(i64 1092, i8* %107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %108 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1094
  %fi83 = call i8** @injectFault15(i64 1093, i8** %108, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8* %fi82, i8** %fi83, align 8, !llfi_index !1095
  br label %110, !llfi_index !1096

; <label>:109                                     ; preds = %97
  call void @print_CLI_error(), !llfi_index !1097
  br label %110, !llfi_index !1098

; <label>:110                                     ; preds = %109, %102
  br label %112, !llfi_index !1099

; <label>:111                                     ; preds = %93
  call void @print_CLI_error(), !llfi_index !1100
  br label %112, !llfi_index !1101

; <label>:112                                     ; preds = %111, %110
  br label %113, !llfi_index !1102

; <label>:113                                     ; preds = %112, %92
  br label %114, !llfi_index !1103

; <label>:114                                     ; preds = %113, %73
  br label %115, !llfi_index !1104

; <label>:115                                     ; preds = %114, %54
  br label %116, !llfi_index !1105

; <label>:116                                     ; preds = %115
  %117 = load i32* %i, align 4, !llfi_index !1106
  %fi84 = call i32 @injectFault9(i64 1105, i32 %117, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %118 = add nsw i32 %fi84, 1, !llfi_index !1107
  %fi85 = call i32 @injectFault9(i64 1106, i32 %118, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi85, i32* %i, align 4, !llfi_index !1108
  br label %27, !llfi_index !1109

; <label>:119                                     ; preds = %27
  %120 = getelementptr %struct.Inputs* %input, i32 0, i32 0, !llfi_index !1110
  %fi86 = call i32* @injectFault3(i64 1109, i32* %120, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %121 = load i32* %fi86, align 4, !llfi_index !1111
  %fi87 = call i32 @injectFault9(i64 1110, i32 %121, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %122 = icmp slt i32 %fi87, 1, !llfi_index !1112
  %fi88 = call i1 @injectFault10(i64 1111, i1 %122, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi88, label %123, label %124, !llfi_index !1113

; <label>:123                                     ; preds = %119
  call void @print_CLI_error(), !llfi_index !1114
  br label %124, !llfi_index !1115

; <label>:124                                     ; preds = %123, %119
  %125 = getelementptr %struct.Inputs* %input, i32 0, i32 1, !llfi_index !1116
  %fi89 = call i64* @injectFault6(i64 1115, i64* %125, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %126 = load i64* %fi89, align 8, !llfi_index !1117
  %fi90 = call i64 @injectFault0(i64 1116, i64 %126, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %127 = icmp slt i64 %fi90, 1, !llfi_index !1118
  %fi91 = call i1 @injectFault10(i64 1117, i1 %127, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi91, label %128, label %129, !llfi_index !1119

; <label>:128                                     ; preds = %124
  call void @print_CLI_error(), !llfi_index !1120
  br label %129, !llfi_index !1121

; <label>:129                                     ; preds = %128, %124
  %130 = getelementptr %struct.Inputs* %input, i32 0, i32 2, !llfi_index !1122
  %fi53 = call i64* @injectFault6(i64 1121, i64* %130, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %131 = load i64* %fi53, align 8, !llfi_index !1123
  %fi54 = call i64 @injectFault0(i64 1122, i64 %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %132 = icmp slt i64 %fi54, 1, !llfi_index !1124
  %fi55 = call i1 @injectFault10(i64 1123, i1 %132, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi55, label %133, label %134, !llfi_index !1125

; <label>:133                                     ; preds = %129
  call void @print_CLI_error(), !llfi_index !1126
  br label %134, !llfi_index !1127

; <label>:134                                     ; preds = %133, %129
  %135 = getelementptr %struct.Inputs* %input, i32 0, i32 3, !llfi_index !1128
  %fi92 = call i32* @injectFault3(i64 1127, i32* %135, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %136 = load i32* %fi92, align 4, !llfi_index !1129
  %fi93 = call i32 @injectFault9(i64 1128, i32 %136, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %137 = icmp slt i32 %fi93, 1, !llfi_index !1130
  %fi94 = call i1 @injectFault10(i64 1129, i1 %137, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi94, label %138, label %139, !llfi_index !1131

; <label>:138                                     ; preds = %134
  call void @print_CLI_error(), !llfi_index !1132
  br label %139, !llfi_index !1133

; <label>:139                                     ; preds = %138, %134
  %140 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1134
  %fi95 = call i8** @injectFault15(i64 1133, i8** %140, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %141 = load i8** %fi95, align 8, !llfi_index !1135
  %fi96 = call i8* @injectFault4(i64 1134, i8* %141, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %142 = call i32 @strcasecmp(i8* %fi96, i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0)) #8, !llfi_index !1136
  %143 = icmp ne i32 %142, 0, !llfi_index !1137
  %fi97 = call i1 @injectFault10(i64 1136, i1 %143, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi97, label %144, label %160, !llfi_index !1138

; <label>:144                                     ; preds = %139
  %145 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1139
  %fi98 = call i8** @injectFault15(i64 1138, i8** %145, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %146 = load i8** %fi98, align 8, !llfi_index !1140
  %fi99 = call i8* @injectFault4(i64 1139, i8* %146, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %147 = call i32 @strcasecmp(i8* %fi99, i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0)) #8, !llfi_index !1141
  %148 = icmp ne i32 %147, 0, !llfi_index !1142
  %fi100 = call i1 @injectFault10(i64 1141, i1 %148, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi100, label %149, label %160, !llfi_index !1143

; <label>:149                                     ; preds = %144
  %150 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1144
  %fi101 = call i8** @injectFault15(i64 1143, i8** %150, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %151 = load i8** %fi101, align 8, !llfi_index !1145
  %fi102 = call i8* @injectFault4(i64 1144, i8* %151, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %152 = call i32 @strcasecmp(i8* %fi102, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) #8, !llfi_index !1146
  %153 = icmp ne i32 %152, 0, !llfi_index !1147
  %fi103 = call i1 @injectFault10(i64 1146, i1 %153, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi103, label %154, label %160, !llfi_index !1148

; <label>:154                                     ; preds = %149
  %155 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1149
  %fi104 = call i8** @injectFault15(i64 1148, i8** %155, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %156 = load i8** %fi104, align 8, !llfi_index !1150
  %fi105 = call i8* @injectFault4(i64 1149, i8* %156, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %157 = call i32 @strcasecmp(i8* %fi105, i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)) #8, !llfi_index !1151
  %158 = icmp ne i32 %157, 0, !llfi_index !1152
  %fi106 = call i1 @injectFault10(i64 1151, i1 %158, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi106, label %159, label %160, !llfi_index !1153

; <label>:159                                     ; preds = %154
  call void @print_CLI_error(), !llfi_index !1154
  br label %160, !llfi_index !1155

; <label>:160                                     ; preds = %159, %154, %149, %144, %139
  %161 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1156
  %fi107 = call i8** @injectFault15(i64 1155, i8** %161, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %162 = load i8** %fi107, align 8, !llfi_index !1157
  %fi108 = call i8* @injectFault4(i64 1156, i8* %162, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %163 = call i32 @strcasecmp(i8* %fi108, i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0)) #8, !llfi_index !1158
  %164 = icmp eq i32 %163, 0, !llfi_index !1159
  %fi109 = call i1 @injectFault10(i64 1158, i1 %164, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi109, label %165, label %167, !llfi_index !1160

; <label>:165                                     ; preds = %160
  %166 = getelementptr %struct.Inputs* %input, i32 0, i32 1, !llfi_index !1161
  %fi110 = call i64* @injectFault6(i64 1160, i64* %166, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 68, i64* %fi110, align 8, !llfi_index !1162
  br label %189, !llfi_index !1163

; <label>:167                                     ; preds = %160
  %168 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1164
  %fi111 = call i8** @injectFault15(i64 1163, i8** %168, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %169 = load i8** %fi111, align 8, !llfi_index !1165
  %fi112 = call i8* @injectFault4(i64 1164, i8* %169, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %170 = call i32 @strcasecmp(i8* %fi112, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) #8, !llfi_index !1166
  %171 = icmp eq i32 %170, 0, !llfi_index !1167
  %fi113 = call i1 @injectFault10(i64 1166, i1 %171, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi113, label %172, label %177, !llfi_index !1168

; <label>:172                                     ; preds = %167
  %173 = load i32* %user_g, align 4, !llfi_index !1169
  %fi114 = call i32 @injectFault9(i64 1168, i32 %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %174 = icmp eq i32 %fi114, 0, !llfi_index !1170
  %fi115 = call i1 @injectFault10(i64 1169, i1 %174, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi115, label %175, label %177, !llfi_index !1171

; <label>:175                                     ; preds = %172
  %176 = getelementptr %struct.Inputs* %input, i32 0, i32 2, !llfi_index !1172
  %fi116 = call i64* @injectFault6(i64 1171, i64* %176, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 238847, i64* %fi116, align 8, !llfi_index !1173
  br label %188, !llfi_index !1174

; <label>:177                                     ; preds = %172, %167
  %178 = getelementptr %struct.Inputs* %input, i32 0, i32 4, !llfi_index !1175
  %fi117 = call i8** @injectFault15(i64 1174, i8** %178, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %179 = load i8** %fi117, align 8, !llfi_index !1176
  %fi118 = call i8* @injectFault4(i64 1175, i8* %179, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %180 = call i32 @strcasecmp(i8* %fi118, i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)) #8, !llfi_index !1177
  %181 = icmp eq i32 %180, 0, !llfi_index !1178
  %fi119 = call i1 @injectFault10(i64 1177, i1 %181, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi119, label %182, label %187, !llfi_index !1179

; <label>:182                                     ; preds = %177
  %183 = load i32* %user_g, align 4, !llfi_index !1180
  %fi120 = call i32 @injectFault9(i64 1179, i32 %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %184 = icmp eq i32 %fi120, 0, !llfi_index !1181
  %fi121 = call i1 @injectFault10(i64 1180, i1 %184, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi121, label %185, label %187, !llfi_index !1182

; <label>:185                                     ; preds = %182
  %186 = getelementptr %struct.Inputs* %input, i32 0, i32 2, !llfi_index !1183
  %fi122 = call i64* @injectFault6(i64 1182, i64* %186, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 501578, i64* %fi122, align 8, !llfi_index !1184
  br label %187, !llfi_index !1185

; <label>:187                                     ; preds = %185, %182, %177
  br label %188, !llfi_index !1186

; <label>:188                                     ; preds = %187, %175
  br label %189, !llfi_index !1187

; <label>:189                                     ; preds = %188, %165
  %190 = bitcast %struct.Inputs* %agg.result to i8*, !llfi_index !1188
  %fi = call i8* @injectFault4(i64 1187, i8* %190, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %191 = bitcast %struct.Inputs* %input to i8*, !llfi_index !1189
  %fi1 = call i8* @injectFault4(i64 1188, i8* %191, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi, i8* %fi1, i64 40, i32 8, i1 false), !llfi_index !1190
  ret void, !llfi_index !1191
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define double @get_wtime() #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !1192
  %ret = alloca double, align 8, !llfi_index !1193
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #3, !llfi_index !1194
  %2 = getelementptr %struct.timeval* %tv, i32 0, i32 0, !llfi_index !1195
  %fi1 = call i64* @injectFault6(i64 1194, i64* %2, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = load i64* %fi1, align 8, !llfi_index !1196
  %fi2 = call i64 @injectFault0(i64 1195, i64 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = sitofp i64 %fi2 to double, !llfi_index !1197
  %fi3 = call double @injectFault5(i64 1196, double %4, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = getelementptr %struct.timeval* %tv, i32 0, i32 1, !llfi_index !1198
  %fi4 = call i64* @injectFault6(i64 1197, i64* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %fi4, align 8, !llfi_index !1199
  %fi5 = call i64 @injectFault0(i64 1198, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = sitofp i64 %fi5 to double, !llfi_index !1200
  %fi6 = call double @injectFault5(i64 1199, double %7, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = fdiv double %fi6, 1.000000e+06, !llfi_index !1201
  %fi7 = call double @injectFault5(i64 1200, double %8, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = fadd double %fi3, %fi7, !llfi_index !1202
  %fi8 = call double @injectFault5(i64 1201, double %9, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi8, double* %ret, align 8, !llfi_index !1203
  %10 = load double* %ret, align 8, !llfi_index !1204
  %fi = call double @injectFault5(i64 1203, double %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret double %fi, !llfi_index !1205
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  call void @initInjections()
  %1 = alloca i32, align 4, !llfi_index !1206
  %2 = alloca i32, align 4, !llfi_index !1207
  %3 = alloca i8**, align 8, !llfi_index !1208
  %version = alloca i32, align 4, !llfi_index !1209
  %mype = alloca i32, align 4, !llfi_index !1210
  %i = alloca i32, align 4, !llfi_index !1211
  %thread = alloca i32, align 4, !llfi_index !1212
  %mat = alloca i32, align 4, !llfi_index !1213
  %seed = alloca i64, align 8, !llfi_index !1214
  %omp_start = alloca double, align 8, !llfi_index !1215
  %omp_end = alloca double, align 8, !llfi_index !1216
  %p_energy = alloca double, align 8, !llfi_index !1217
  %vhash = alloca i64, align 8, !llfi_index !1218
  %nprocs = alloca i32, align 4, !llfi_index !1219
  %in = alloca %struct.Inputs, align 8, !llfi_index !1220
  %nuclide_grids = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !1221
  %energy_grid = alloca %struct.GridPoint*, align 8, !llfi_index !1222
  %num_nucs = alloca i32*, align 8, !llfi_index !1223
  %mats = alloca i32**, align 8, !llfi_index !1224
  %concs = alloca double**, align 8, !llfi_index !1225
  %macro_xs_vector = alloca [5 x double], align 16, !llfi_index !1226
  %xs = alloca double*, align 8, !llfi_index !1227
  %line = alloca [256 x i8], align 16, !llfi_index !1228
  %vhash_local = alloca i64, align 8, !llfi_index !1229
  store i32 0, i32* %1, !llfi_index !1230
  store i32 %argc, i32* %2, align 4, !llfi_index !1231
  store i8** %argv, i8*** %3, align 8, !llfi_index !1232
  store i32 13, i32* %version, align 4, !llfi_index !1233
  store i32 0, i32* %mype, align 4, !llfi_index !1234
  store i64 0, i64* %vhash, align 8, !llfi_index !1235
  %4 = load i32* %2, align 4, !llfi_index !1236
  %fi = call i32 @injectFault9(i64 1235, i32 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = load i8*** %3, align 8, !llfi_index !1237
  %fi1 = call i8** @injectFault15(i64 1236, i8** %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @read_CLI(%struct.Inputs* sret %in, i32 %fi, i8** %fi1), !llfi_index !1238
  %6 = load i32* %mype, align 4, !llfi_index !1239
  %fi2 = call i32 @injectFault9(i64 1238, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = icmp eq i32 %fi2, 0, !llfi_index !1240
  %fi3 = call i1 @injectFault10(i64 1239, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi3, label %8, label %11, !llfi_index !1241

; <label>:8                                       ; preds = %0
  %9 = load i32* %nprocs, align 4, !llfi_index !1242
  %fi5 = call i32 @injectFault9(i64 1241, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load i32* %version, align 4, !llfi_index !1243
  %fi6 = call i32 @injectFault9(i64 1242, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %fi5, i32 %fi6), !llfi_index !1244
  br label %11, !llfi_index !1245

; <label>:11                                      ; preds = %8, %0
  %12 = load i32* %mype, align 4, !llfi_index !1246
  %fi7 = call i32 @injectFault9(i64 1245, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = icmp eq i32 %fi7, 0, !llfi_index !1247
  %fi8 = call i1 @injectFault10(i64 1246, i1 %13, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi8, label %14, label %16, !llfi_index !1248

; <label>:14                                      ; preds = %11
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str44, i32 0, i32 0)), !llfi_index !1249
  br label %16, !llfi_index !1250

; <label>:16                                      ; preds = %14, %11
  %17 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1251
  %fi10 = call i64* @injectFault6(i64 1250, i64* %17, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load i64* %fi10, align 8, !llfi_index !1252
  %fi4 = call i64 @injectFault0(i64 1251, i64 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1253
  %fi11 = call i64* @injectFault6(i64 1252, i64* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = load i64* %fi11, align 8, !llfi_index !1254
  %fi12 = call i64 @injectFault0(i64 1253, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = call %struct.NuclideGridPoint** @gpmatrix(i64 %fi4, i64 %fi12), !llfi_index !1255
  store %struct.NuclideGridPoint** %21, %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1256
  %22 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1257
  %fi13 = call %struct.NuclideGridPoint** @injectFault7(i64 1256, %struct.NuclideGridPoint** %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1258
  %fi14 = call i64* @injectFault6(i64 1257, i64* %23, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = load i64* %fi14, align 8, !llfi_index !1259
  %fi15 = call i64 @injectFault0(i64 1258, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1260
  %fi16 = call i64* @injectFault6(i64 1259, i64* %25, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load i64* %fi16, align 8, !llfi_index !1261
  %fi17 = call i64 @injectFault0(i64 1260, i64 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @generate_grids_v(%struct.NuclideGridPoint** %fi13, i64 %fi15, i64 %fi17), !llfi_index !1262
  %27 = load i32* %mype, align 4, !llfi_index !1263
  %fi18 = call i32 @injectFault9(i64 1262, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = icmp eq i32 %fi18, 0, !llfi_index !1264
  %fi19 = call i1 @injectFault10(i64 1263, i1 %28, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi19, label %29, label %31, !llfi_index !1265

; <label>:29                                      ; preds = %16
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str145, i32 0, i32 0)), !llfi_index !1266
  br label %31, !llfi_index !1267

; <label>:31                                      ; preds = %29, %16
  %32 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1268
  %fi20 = call %struct.NuclideGridPoint** @injectFault7(i64 1267, %struct.NuclideGridPoint** %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1269
  %fi9 = call i64* @injectFault6(i64 1268, i64* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = load i64* %fi9, align 8, !llfi_index !1270
  %fi21 = call i64 @injectFault0(i64 1269, i64 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1271
  %fi22 = call i64* @injectFault6(i64 1270, i64* %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load i64* %fi22, align 8, !llfi_index !1272
  %fi23 = call i64 @injectFault0(i64 1271, i64 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @sort_nuclide_grids(%struct.NuclideGridPoint** %fi20, i64 %fi21, i64 %fi23), !llfi_index !1273
  %37 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1274
  %fi24 = call i64* @injectFault6(i64 1273, i64* %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = load i64* %fi24, align 8, !llfi_index !1275
  %fi25 = call i64 @injectFault0(i64 1274, i64 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1276
  %fi26 = call i64* @injectFault6(i64 1275, i64* %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load i64* %fi26, align 8, !llfi_index !1277
  %fi27 = call i64 @injectFault0(i64 1276, i64 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1278
  %fi28 = call %struct.NuclideGridPoint** @injectFault7(i64 1277, %struct.NuclideGridPoint** %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = call %struct.GridPoint* @generate_energy_grid(i64 %fi25, i64 %fi27, %struct.NuclideGridPoint** %fi28), !llfi_index !1279
  store %struct.GridPoint* %42, %struct.GridPoint** %energy_grid, align 8, !llfi_index !1280
  %43 = load %struct.GridPoint** %energy_grid, align 8, !llfi_index !1281
  %fi29 = call %struct.GridPoint* @injectFault1(i64 1280, %struct.GridPoint* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1282
  %fi30 = call %struct.NuclideGridPoint** @injectFault7(i64 1281, %struct.NuclideGridPoint** %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1283
  %fi31 = call i64* @injectFault6(i64 1282, i64* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load i64* %fi31, align 8, !llfi_index !1284
  %fi32 = call i64 @injectFault0(i64 1283, i64 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1285
  %fi33 = call i64* @injectFault6(i64 1284, i64* %47, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = load i64* %fi33, align 8, !llfi_index !1286
  %fi34 = call i64 @injectFault0(i64 1285, i64 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @set_grid_ptrs(%struct.GridPoint* %fi29, %struct.NuclideGridPoint** %fi30, i64 %fi32, i64 %fi34), !llfi_index !1287
  %49 = load i32* %mype, align 4, !llfi_index !1288
  %fi35 = call i32 @injectFault9(i64 1287, i32 %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = icmp eq i32 %fi35, 0, !llfi_index !1289
  %fi36 = call i1 @injectFault10(i64 1288, i1 %50, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi36, label %51, label %53, !llfi_index !1290

; <label>:51                                      ; preds = %31
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str246, i32 0, i32 0)), !llfi_index !1291
  br label %53, !llfi_index !1292

; <label>:53                                      ; preds = %51, %31
  %54 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1293
  %fi37 = call i64* @injectFault6(i64 1292, i64* %54, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %55 = load i64* %fi37, align 8, !llfi_index !1294
  %fi38 = call i64 @injectFault0(i64 1293, i64 %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %56 = call i32* @load_num_nucs(i64 %fi38), !llfi_index !1295
  store i32* %56, i32** %num_nucs, align 8, !llfi_index !1296
  %57 = load i32** %num_nucs, align 8, !llfi_index !1297
  %fi39 = call i32* @injectFault3(i64 1296, i32* %57, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1298
  %fi40 = call i64* @injectFault6(i64 1297, i64* %58, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = load i64* %fi40, align 8, !llfi_index !1299
  %fi41 = call i64 @injectFault0(i64 1298, i64 %59, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = call i32** @load_mats(i32* %fi39, i64 %fi41), !llfi_index !1300
  store i32** %60, i32*** %mats, align 8, !llfi_index !1301
  %61 = load i32** %num_nucs, align 8, !llfi_index !1302
  %fi42 = call i32* @injectFault3(i64 1301, i32* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = call double** @load_concs_v(i32* %fi42), !llfi_index !1303
  store double** %62, double*** %concs, align 8, !llfi_index !1304
  %63 = load i32* %mype, align 4, !llfi_index !1305
  %fi43 = call i32 @injectFault9(i64 1304, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %64 = icmp eq i32 %fi43, 0, !llfi_index !1306
  %fi44 = call i1 @injectFault10(i64 1305, i1 %64, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi44, label %65, label %67, !llfi_index !1307

; <label>:65                                      ; preds = %53
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str347, i32 0, i32 0)), !llfi_index !1308
  call void @border_print(), !llfi_index !1309
  call void @center_print(i8* getelementptr inbounds ([11 x i8]* @.str448, i32 0, i32 0), i32 79), !llfi_index !1310
  call void @border_print(), !llfi_index !1311
  br label %67, !llfi_index !1312

; <label>:67                                      ; preds = %65, %53
  %68 = call double @get_wtime(), !llfi_index !1313
  store double %68, double* %omp_start, align 8, !llfi_index !1314
  %69 = call noalias i8* @calloc(i64 5, i64 8) #3, !llfi_index !1315
  %70 = bitcast i8* %69 to double*, !llfi_index !1316
  %fi50 = call double* @injectFault11(i64 1315, double* %70, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double* %fi50, double** %xs, align 8, !llfi_index !1317
  store i32 0, i32* %thread, align 4, !llfi_index !1318
  store i64 36, i64* %seed, align 8, !llfi_index !1319
  store i32 0, i32* %i, align 4, !llfi_index !1320
  br label %71, !llfi_index !1321

; <label>:71                                      ; preds = %141, %67
  %72 = load i32* %i, align 4, !llfi_index !1322
  %fi51 = call i32 @injectFault9(i64 1321, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %73 = getelementptr %struct.Inputs* %in, i32 0, i32 3, !llfi_index !1323
  %fi52 = call i32* @injectFault3(i64 1322, i32* %73, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %74 = load i32* %fi52, align 4, !llfi_index !1324
  %fi53 = call i32 @injectFault9(i64 1323, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %75 = icmp slt i32 %fi51, %fi53, !llfi_index !1325
  %fi54 = call i1 @injectFault10(i64 1324, i1 %75, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi54, label %76, label %144, !llfi_index !1326

; <label>:76                                      ; preds = %71
  %77 = load i32* %mype, align 4, !llfi_index !1327
  %fi55 = call i32 @injectFault9(i64 1326, i32 %77, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %78 = icmp eq i32 %fi55, 0, !llfi_index !1328
  %fi56 = call i1 @injectFault10(i64 1327, i1 %78, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi56, label %79, label %103, !llfi_index !1329

; <label>:79                                      ; preds = %76
  %80 = load i32* %thread, align 4, !llfi_index !1330
  %fi57 = call i32 @injectFault9(i64 1329, i32 %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %81 = icmp eq i32 %fi57, 0, !llfi_index !1331
  %fi58 = call i1 @injectFault10(i64 1330, i1 %81, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi58, label %82, label %103, !llfi_index !1332

; <label>:82                                      ; preds = %79
  %83 = load i32* %i, align 4, !llfi_index !1333
  %fi59 = call i32 @injectFault9(i64 1332, i32 %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %84 = srem i32 %fi59, 1000, !llfi_index !1334
  %fi60 = call i32 @injectFault9(i64 1333, i32 %84, i32 18, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @srem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %85 = icmp eq i32 %fi60, 0, !llfi_index !1335
  %fi61 = call i1 @injectFault10(i64 1334, i1 %85, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi61, label %86, label %103, !llfi_index !1336

; <label>:86                                      ; preds = %82
  %87 = load i32* %i, align 4, !llfi_index !1337
  %fi62 = call i32 @injectFault9(i64 1336, i32 %87, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %88 = sitofp i32 %fi62 to double, !llfi_index !1338
  %fi63 = call double @injectFault5(i64 1337, double %88, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %89 = getelementptr %struct.Inputs* %in, i32 0, i32 3, !llfi_index !1339
  %fi64 = call i32* @injectFault3(i64 1338, i32* %89, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %90 = load i32* %fi64, align 4, !llfi_index !1340
  %fi65 = call i32 @injectFault9(i64 1339, i32 %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %91 = sitofp i32 %fi65 to double, !llfi_index !1341
  %fi66 = call double @injectFault5(i64 1340, double %91, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %92 = getelementptr %struct.Inputs* %in, i32 0, i32 0, !llfi_index !1342
  %fi67 = call i32* @injectFault3(i64 1341, i32* %92, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %93 = load i32* %fi67, align 4, !llfi_index !1343
  %fi68 = call i32 @injectFault9(i64 1342, i32 %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %94 = sitofp i32 %fi68 to double, !llfi_index !1344
  %fi69 = call double @injectFault5(i64 1343, double %94, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %95 = fdiv double %fi66, %fi69, !llfi_index !1345
  %fi70 = call double @injectFault5(i64 1344, double %95, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %96 = fdiv double %fi63, %fi70, !llfi_index !1346
  %fi71 = call double @injectFault5(i64 1345, double %96, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %97 = getelementptr %struct.Inputs* %in, i32 0, i32 0, !llfi_index !1347
  %fi72 = call i32* @injectFault3(i64 1346, i32* %97, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %98 = load i32* %fi72, align 4, !llfi_index !1348
  %fi73 = call i32 @injectFault9(i64 1347, i32 %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %99 = sitofp i32 %fi73 to double, !llfi_index !1349
  %fi74 = call double @injectFault5(i64 1348, double %99, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %100 = fdiv double %fi71, %fi74, !llfi_index !1350
  %fi75 = call double @injectFault5(i64 1349, double %100, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %101 = fmul double %fi75, 1.000000e+02, !llfi_index !1351
  %fi76 = call double @injectFault5(i64 1350, double %101, i32 13, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fmul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str549, i32 0, i32 0), double %fi76), !llfi_index !1352
  br label %103, !llfi_index !1353

; <label>:103                                     ; preds = %86, %82, %79, %76
  %104 = call double @rn_v(), !llfi_index !1354
  store double %104, double* %p_energy, align 8, !llfi_index !1355
  %105 = call i32 @pick_mat(i64* %seed), !llfi_index !1356
  store i32 %105, i32* %mat, align 4, !llfi_index !1357
  %106 = load double* %p_energy, align 8, !llfi_index !1358
  %fi77 = call double @injectFault5(i64 1357, double %106, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %107 = load i32* %mat, align 4, !llfi_index !1359
  %fi78 = call i32 @injectFault9(i64 1358, i32 %107, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %108 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !1360
  %fi79 = call i64* @injectFault6(i64 1359, i64* %108, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %109 = load i64* %fi79, align 8, !llfi_index !1361
  %fi80 = call i64 @injectFault0(i64 1360, i64 %109, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %110 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !1362
  %fi81 = call i64* @injectFault6(i64 1361, i64* %110, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %111 = load i64* %fi81, align 8, !llfi_index !1363
  %fi82 = call i64 @injectFault0(i64 1362, i64 %111, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %112 = load i32** %num_nucs, align 8, !llfi_index !1364
  %fi83 = call i32* @injectFault3(i64 1363, i32* %112, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %113 = load double*** %concs, align 8, !llfi_index !1365
  %fi84 = call double** @injectFault12(i64 1364, double** %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %114 = load %struct.GridPoint** %energy_grid, align 8, !llfi_index !1366
  %fi85 = call %struct.GridPoint* @injectFault1(i64 1365, %struct.GridPoint* %114, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %115 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8, !llfi_index !1367
  %fi86 = call %struct.NuclideGridPoint** @injectFault7(i64 1366, %struct.NuclideGridPoint** %115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %116 = load i32*** %mats, align 8, !llfi_index !1368
  %fi87 = call i32** @injectFault2(i64 1367, i32** %116, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %117 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i32 0, !llfi_index !1369
  %fi88 = call double* @injectFault11(i64 1368, double* %117, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @calculate_macro_xs(double %fi77, i32 %fi78, i64 %fi80, i64 %fi82, i32* %fi83, double** %fi84, %struct.GridPoint* %fi85, %struct.NuclideGridPoint** %fi86, i32** %fi87, double* %fi88), !llfi_index !1370
  %118 = load double** %xs, align 8, !llfi_index !1371
  %fi89 = call double* @injectFault11(i64 1370, double* %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %119 = bitcast double* %fi89 to i8*, !llfi_index !1372
  %fi90 = call i8* @injectFault4(i64 1371, i8* %119, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %120 = bitcast [5 x double]* %macro_xs_vector to i8*, !llfi_index !1373
  %fi91 = call i8* @injectFault4(i64 1372, i8* %120, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi90, i8* %fi91, i64 40, i32 8, i1 false), !llfi_index !1374
  %121 = getelementptr [256 x i8]* %line, i32 0, i32 0, !llfi_index !1375
  %fi92 = call i8* @injectFault4(i64 1374, i8* %121, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %122 = load double* %p_energy, align 8, !llfi_index !1376
  %fi93 = call double @injectFault5(i64 1375, double %122, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %123 = load i32* %mat, align 4, !llfi_index !1377
  %fi94 = call i32 @injectFault9(i64 1376, i32 %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %124 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i64 0, !llfi_index !1378
  %fi95 = call double* @injectFault11(i64 1377, double* %124, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %125 = load double* %fi95, align 8, !llfi_index !1379
  %fi96 = call double @injectFault5(i64 1378, double %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %126 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i64 1, !llfi_index !1380
  %fi97 = call double* @injectFault11(i64 1379, double* %126, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %127 = load double* %fi97, align 8, !llfi_index !1381
  %fi98 = call double @injectFault5(i64 1380, double %127, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %128 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i64 2, !llfi_index !1382
  %fi99 = call double* @injectFault11(i64 1381, double* %128, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %129 = load double* %fi99, align 8, !llfi_index !1383
  %fi45 = call double @injectFault5(i64 1382, double %129, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %130 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i64 3, !llfi_index !1384
  %fi46 = call double* @injectFault11(i64 1383, double* %130, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %131 = load double* %fi46, align 8, !llfi_index !1385
  %fi47 = call double @injectFault5(i64 1384, double %131, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %132 = getelementptr [5 x double]* %macro_xs_vector, i32 0, i64 4, !llfi_index !1386
  %fi48 = call double* @injectFault11(i64 1385, double* %132, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %133 = load double* %fi48, align 8, !llfi_index !1387
  %fi49 = call double @injectFault5(i64 1386, double %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %134 = call i32 (i8*, i8*, ...)* @sprintf(i8* %fi92, i8* getelementptr inbounds ([39 x i8]* @.str650, i32 0, i32 0), double %fi93, i32 %fi94, double %fi96, double %fi98, double %fi45, double %fi47, double %fi49) #3, !llfi_index !1388
  %135 = getelementptr [256 x i8]* %line, i32 0, i32 0, !llfi_index !1389
  %fi100 = call i8* @injectFault4(i64 1388, i8* %135, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %136 = call i32 @hash(i8* %fi100, i32 10000), !llfi_index !1390
  %137 = zext i32 %136 to i64, !llfi_index !1391
  %fi101 = call i64 @injectFault0(i64 1390, i64 %137, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi101, i64* %vhash_local, align 8, !llfi_index !1392
  %138 = load i64* %vhash_local, align 8, !llfi_index !1393
  %fi102 = call i64 @injectFault0(i64 1392, i64 %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %139 = load i64* %vhash, align 8, !llfi_index !1394
  %fi103 = call i64 @injectFault0(i64 1393, i64 %139, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %140 = add i64 %fi103, %fi102, !llfi_index !1395
  %fi104 = call i64 @injectFault0(i64 1394, i64 %140, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi104, i64* %vhash, align 8, !llfi_index !1396
  br label %141, !llfi_index !1397

; <label>:141                                     ; preds = %103
  %142 = load i32* %i, align 4, !llfi_index !1398
  %fi105 = call i32 @injectFault9(i64 1397, i32 %142, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %143 = add nsw i32 %fi105, 1, !llfi_index !1399
  %fi106 = call i32 @injectFault9(i64 1398, i32 %143, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi106, i32* %i, align 4, !llfi_index !1400
  br label %71, !llfi_index !1401

; <label>:144                                     ; preds = %71
  %145 = load i32* %mype, align 4, !llfi_index !1402
  %fi107 = call i32 @injectFault9(i64 1401, i32 %145, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %146 = icmp eq i32 %fi107, 0, !llfi_index !1403
  %fi108 = call i1 @injectFault10(i64 1402, i1 %146, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi108, label %147, label %150, !llfi_index !1404

; <label>:147                                     ; preds = %144
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str347, i32 0, i32 0)), !llfi_index !1405
  %149 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str751, i32 0, i32 0)), !llfi_index !1406
  br label %150, !llfi_index !1407

; <label>:150                                     ; preds = %147, %144
  %151 = call double @get_wtime(), !llfi_index !1408
  store double %151, double* %omp_end, align 8, !llfi_index !1409
  %152 = load i32* %mype, align 4, !llfi_index !1410
  %fi109 = call i32 @injectFault9(i64 1409, i32 %152, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %153 = load double* %omp_end, align 8, !llfi_index !1411
  %fi110 = call double @injectFault5(i64 1410, double %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %154 = load double* %omp_start, align 8, !llfi_index !1412
  %fi111 = call double @injectFault5(i64 1411, double %154, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %155 = fsub double %fi110, %fi111, !llfi_index !1413
  %fi112 = call double @injectFault5(i64 1412, double %155, i32 11, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fsub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %156 = load i32* %nprocs, align 4, !llfi_index !1414
  %fi113 = call i32 @injectFault9(i64 1413, i32 %156, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %157 = load i64* %vhash, align 8, !llfi_index !1415
  %fi114 = call i64 @injectFault0(i64 1414, i64 %157, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @print_results(%struct.Inputs* byval align 8 %in, i32 %fi109, double %fi112, i32 %fi113, i64 %fi114), !llfi_index !1416
  call void @postInjections()
  ret i32 0, !llfi_index !1417
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32* @load_num_nucs(i64 %n_isotopes) #0 {
  %1 = alloca i64, align 8, !llfi_index !1418
  %num_nucs = alloca i32*, align 8, !llfi_index !1419
  store i64 %n_isotopes, i64* %1, align 8, !llfi_index !1420
  %2 = call noalias i8* @malloc(i64 48) #3, !llfi_index !1421
  %3 = bitcast i8* %2 to i32*, !llfi_index !1422
  %fi = call i32* @injectFault3(i64 1421, i32* %3, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32* %fi, i32** %num_nucs, align 8, !llfi_index !1423
  %4 = load i64* %1, align 8, !llfi_index !1424
  %fi1 = call i64 @injectFault0(i64 1423, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = icmp eq i64 %fi1, 68, !llfi_index !1425
  %fi2 = call i1 @injectFault10(i64 1424, i1 %5, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %6, label %9, !llfi_index !1426

; <label>:6                                       ; preds = %0
  %7 = load i32** %num_nucs, align 8, !llfi_index !1427
  %fi3 = call i32* @injectFault3(i64 1426, i32* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = getelementptr i32* %fi3, i64 0, !llfi_index !1428
  %fi4 = call i32* @injectFault3(i64 1427, i32* %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 34, i32* %fi4, align 4, !llfi_index !1429
  br label %12, !llfi_index !1430

; <label>:9                                       ; preds = %0
  %10 = load i32** %num_nucs, align 8, !llfi_index !1431
  %fi5 = call i32* @injectFault3(i64 1430, i32* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = getelementptr i32* %fi5, i64 0, !llfi_index !1432
  %fi6 = call i32* @injectFault3(i64 1431, i32* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 321, i32* %fi6, align 4, !llfi_index !1433
  br label %12, !llfi_index !1434

; <label>:12                                      ; preds = %9, %6
  %13 = load i32** %num_nucs, align 8, !llfi_index !1435
  %fi7 = call i32* @injectFault3(i64 1434, i32* %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = getelementptr i32* %fi7, i64 1, !llfi_index !1436
  %fi8 = call i32* @injectFault3(i64 1435, i32* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 5, i32* %fi8, align 4, !llfi_index !1437
  %15 = load i32** %num_nucs, align 8, !llfi_index !1438
  %fi9 = call i32* @injectFault3(i64 1437, i32* %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = getelementptr i32* %fi9, i64 2, !llfi_index !1439
  %fi10 = call i32* @injectFault3(i64 1438, i32* %16, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 4, i32* %fi10, align 4, !llfi_index !1440
  %17 = load i32** %num_nucs, align 8, !llfi_index !1441
  %fi11 = call i32* @injectFault3(i64 1440, i32* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = getelementptr i32* %fi11, i64 3, !llfi_index !1442
  %fi12 = call i32* @injectFault3(i64 1441, i32* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 4, i32* %fi12, align 4, !llfi_index !1443
  %19 = load i32** %num_nucs, align 8, !llfi_index !1444
  %fi13 = call i32* @injectFault3(i64 1443, i32* %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr i32* %fi13, i64 4, !llfi_index !1445
  %fi14 = call i32* @injectFault3(i64 1444, i32* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 27, i32* %fi14, align 4, !llfi_index !1446
  %21 = load i32** %num_nucs, align 8, !llfi_index !1447
  %fi15 = call i32* @injectFault3(i64 1446, i32* %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = getelementptr i32* %fi15, i64 5, !llfi_index !1448
  %fi16 = call i32* @injectFault3(i64 1447, i32* %22, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 21, i32* %fi16, align 4, !llfi_index !1449
  %23 = load i32** %num_nucs, align 8, !llfi_index !1450
  %fi17 = call i32* @injectFault3(i64 1449, i32* %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = getelementptr i32* %fi17, i64 6, !llfi_index !1451
  %fi18 = call i32* @injectFault3(i64 1450, i32* %24, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 21, i32* %fi18, align 4, !llfi_index !1452
  %25 = load i32** %num_nucs, align 8, !llfi_index !1453
  %fi19 = call i32* @injectFault3(i64 1452, i32* %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = getelementptr i32* %fi19, i64 7, !llfi_index !1454
  %fi20 = call i32* @injectFault3(i64 1453, i32* %26, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 21, i32* %fi20, align 4, !llfi_index !1455
  %27 = load i32** %num_nucs, align 8, !llfi_index !1456
  %fi21 = call i32* @injectFault3(i64 1455, i32* %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = getelementptr i32* %fi21, i64 8, !llfi_index !1457
  %fi22 = call i32* @injectFault3(i64 1456, i32* %28, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 21, i32* %fi22, align 4, !llfi_index !1458
  %29 = load i32** %num_nucs, align 8, !llfi_index !1459
  %fi23 = call i32* @injectFault3(i64 1458, i32* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = getelementptr i32* %fi23, i64 9, !llfi_index !1460
  %fi24 = call i32* @injectFault3(i64 1459, i32* %30, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 21, i32* %fi24, align 4, !llfi_index !1461
  %31 = load i32** %num_nucs, align 8, !llfi_index !1462
  %fi25 = call i32* @injectFault3(i64 1461, i32* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = getelementptr i32* %fi25, i64 10, !llfi_index !1463
  %fi26 = call i32* @injectFault3(i64 1462, i32* %32, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 9, i32* %fi26, align 4, !llfi_index !1464
  %33 = load i32** %num_nucs, align 8, !llfi_index !1465
  %fi27 = call i32* @injectFault3(i64 1464, i32* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr i32* %fi27, i64 11, !llfi_index !1466
  %fi28 = call i32* @injectFault3(i64 1465, i32* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 9, i32* %fi28, align 4, !llfi_index !1467
  %35 = load i32** %num_nucs, align 8, !llfi_index !1468
  %fi29 = call i32* @injectFault3(i64 1467, i32* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32* %fi29, !llfi_index !1469
}

; Function Attrs: nounwind uwtable
define i32** @load_mats(i32* %num_nucs, i64 %n_isotopes) #0 {
  %1 = alloca i32*, align 8, !llfi_index !1470
  %2 = alloca i64, align 8, !llfi_index !1471
  %mats = alloca i32**, align 8, !llfi_index !1472
  %i = alloca i32, align 4, !llfi_index !1473
  %mats0_Sml = alloca [34 x i32], align 16, !llfi_index !1474
  %mats0_Lrg = alloca [321 x i32], align 16, !llfi_index !1475
  %i1 = alloca i32, align 4, !llfi_index !1476
  %mats1 = alloca [5 x i32], align 16, !llfi_index !1477
  %mats2 = alloca [4 x i32], align 16, !llfi_index !1478
  %mats3 = alloca [4 x i32], align 16, !llfi_index !1479
  %mats4 = alloca [27 x i32], align 16, !llfi_index !1480
  %mats5 = alloca [21 x i32], align 16, !llfi_index !1481
  %mats6 = alloca [21 x i32], align 16, !llfi_index !1482
  %mats7 = alloca [21 x i32], align 16, !llfi_index !1483
  %mats8 = alloca [21 x i32], align 16, !llfi_index !1484
  %mats9 = alloca [21 x i32], align 16, !llfi_index !1485
  %mats10 = alloca [9 x i32], align 16, !llfi_index !1486
  %mats11 = alloca [9 x i32], align 16, !llfi_index !1487
  store i32* %num_nucs, i32** %1, align 8, !llfi_index !1488
  store i64 %n_isotopes, i64* %2, align 8, !llfi_index !1489
  %3 = call noalias i8* @malloc(i64 96) #3, !llfi_index !1490
  %4 = bitcast i8* %3 to i32**, !llfi_index !1491
  %fi142 = call i32** @injectFault2(i64 1490, i32** %4, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32** %fi142, i32*** %mats, align 8, !llfi_index !1492
  store i32 0, i32* %i, align 4, !llfi_index !1493
  br label %5, !llfi_index !1494

; <label>:5                                       ; preds = %22, %0
  %6 = load i32* %i, align 4, !llfi_index !1495
  %fi143 = call i32 @injectFault9(i64 1494, i32 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = icmp slt i32 %fi143, 12, !llfi_index !1496
  %fi144 = call i1 @injectFault10(i64 1495, i1 %7, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi144, label %8, label %25, !llfi_index !1497

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4, !llfi_index !1498
  %fi146 = call i32 @injectFault9(i64 1497, i32 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = sext i32 %fi146 to i64, !llfi_index !1499
  %fi147 = call i64 @injectFault0(i64 1498, i64 %10, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load i32** %1, align 8, !llfi_index !1500
  %fi148 = call i32* @injectFault3(i64 1499, i32* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = getelementptr i32* %fi148, i64 %fi147, !llfi_index !1501
  %fi149 = call i32* @injectFault3(i64 1500, i32* %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load i32* %fi149, align 4, !llfi_index !1502
  %fi150 = call i32 @injectFault9(i64 1501, i32 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = sext i32 %fi150 to i64, !llfi_index !1503
  %fi151 = call i64 @injectFault0(i64 1502, i64 %14, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = mul i64 %fi151, 4, !llfi_index !1504
  %fi152 = call i64 @injectFault0(i64 1503, i64 %15, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = call noalias i8* @malloc(i64 %fi152) #3, !llfi_index !1505
  %17 = bitcast i8* %16 to i32*, !llfi_index !1506
  %fi145 = call i32* @injectFault3(i64 1505, i32* %17, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load i32* %i, align 4, !llfi_index !1507
  %fi154 = call i32 @injectFault9(i64 1506, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = sext i32 %fi154 to i64, !llfi_index !1508
  %fi155 = call i64 @injectFault0(i64 1507, i64 %19, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = load i32*** %mats, align 8, !llfi_index !1509
  %fi156 = call i32** @injectFault2(i64 1508, i32** %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = getelementptr i32** %fi156, i64 %fi155, !llfi_index !1510
  %fi157 = call i32** @injectFault2(i64 1509, i32** %21, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32* %fi145, i32** %fi157, align 8, !llfi_index !1511
  br label %22, !llfi_index !1512

; <label>:22                                      ; preds = %8
  %23 = load i32* %i, align 4, !llfi_index !1513
  %fi158 = call i32 @injectFault9(i64 1512, i32 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = add nsw i32 %fi158, 1, !llfi_index !1514
  %fi159 = call i32 @injectFault9(i64 1513, i32 %24, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi159, i32* %i, align 4, !llfi_index !1515
  br label %5, !llfi_index !1516

; <label>:25                                      ; preds = %5
  %26 = bitcast [34 x i32]* %mats0_Sml to i8*, !llfi_index !1517
  %fi160 = call i8* @injectFault4(i64 1516, i8* %26, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi160, i8* bitcast ([34 x i32]* @load_mats.mats0_Sml to i8*), i64 136, i32 16, i1 false), !llfi_index !1518
  %27 = bitcast [321 x i32]* %mats0_Lrg to i8*, !llfi_index !1519
  %fi161 = call i8* @injectFault4(i64 1518, i8* %27, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi161, i8* bitcast ([321 x i32]* @load_mats.mats0_Lrg to i8*), i64 1284, i32 16, i1 false), !llfi_index !1520
  store i32 0, i32* %i1, align 4, !llfi_index !1521
  br label %28, !llfi_index !1522

; <label>:28                                      ; preds = %38, %25
  %29 = load i32* %i1, align 4, !llfi_index !1523
  %fi162 = call i32 @injectFault9(i64 1522, i32 %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = icmp slt i32 %fi162, 287, !llfi_index !1524
  %fi163 = call i1 @injectFault10(i64 1523, i1 %30, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi163, label %31, label %41, !llfi_index !1525

; <label>:31                                      ; preds = %28
  %32 = load i32* %i1, align 4, !llfi_index !1526
  %fi164 = call i32 @injectFault9(i64 1525, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = add nsw i32 68, %fi164, !llfi_index !1527
  %fi153 = call i32 @injectFault9(i64 1526, i32 %33, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = load i32* %i1, align 4, !llfi_index !1528
  %fi167 = call i32 @injectFault9(i64 1527, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = add nsw i32 34, %fi167, !llfi_index !1529
  %fi168 = call i32 @injectFault9(i64 1528, i32 %35, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = sext i32 %fi168 to i64, !llfi_index !1530
  %fi169 = call i64 @injectFault0(i64 1529, i64 %36, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = getelementptr [321 x i32]* %mats0_Lrg, i32 0, i64 %fi169, !llfi_index !1531
  %fi170 = call i32* @injectFault3(i64 1530, i32* %37, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi153, i32* %fi170, align 4, !llfi_index !1532
  br label %38, !llfi_index !1533

; <label>:38                                      ; preds = %31
  %39 = load i32* %i1, align 4, !llfi_index !1534
  %fi171 = call i32 @injectFault9(i64 1533, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = add nsw i32 %fi171, 1, !llfi_index !1535
  %fi172 = call i32 @injectFault9(i64 1534, i32 %40, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi172, i32* %i1, align 4, !llfi_index !1536
  br label %28, !llfi_index !1537

; <label>:41                                      ; preds = %28
  %42 = bitcast [5 x i32]* %mats1 to i8*, !llfi_index !1538
  %fi = call i8* @injectFault4(i64 1537, i8* %42, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi, i8* bitcast ([5 x i32]* @load_mats.mats1 to i8*), i64 20, i32 16, i1 false), !llfi_index !1539
  %43 = bitcast [4 x i32]* %mats2 to i8*, !llfi_index !1540
  %fi1 = call i8* @injectFault4(i64 1539, i8* %43, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi1, i8* bitcast ([4 x i32]* @load_mats.mats2 to i8*), i64 16, i32 16, i1 false), !llfi_index !1541
  %44 = bitcast [4 x i32]* %mats3 to i8*, !llfi_index !1542
  %fi2 = call i8* @injectFault4(i64 1541, i8* %44, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi2, i8* bitcast ([4 x i32]* @load_mats.mats3 to i8*), i64 16, i32 16, i1 false), !llfi_index !1543
  %45 = bitcast [27 x i32]* %mats4 to i8*, !llfi_index !1544
  %fi3 = call i8* @injectFault4(i64 1543, i8* %45, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi3, i8* bitcast ([27 x i32]* @load_mats.mats4 to i8*), i64 108, i32 16, i1 false), !llfi_index !1545
  %46 = bitcast [21 x i32]* %mats5 to i8*, !llfi_index !1546
  %fi4 = call i8* @injectFault4(i64 1545, i8* %46, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi4, i8* bitcast ([21 x i32]* @load_mats.mats5 to i8*), i64 84, i32 16, i1 false), !llfi_index !1547
  %47 = bitcast [21 x i32]* %mats6 to i8*, !llfi_index !1548
  %fi5 = call i8* @injectFault4(i64 1547, i8* %47, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi5, i8* bitcast ([21 x i32]* @load_mats.mats6 to i8*), i64 84, i32 16, i1 false), !llfi_index !1549
  %48 = bitcast [21 x i32]* %mats7 to i8*, !llfi_index !1550
  %fi6 = call i8* @injectFault4(i64 1549, i8* %48, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi6, i8* bitcast ([21 x i32]* @load_mats.mats7 to i8*), i64 84, i32 16, i1 false), !llfi_index !1551
  %49 = bitcast [21 x i32]* %mats8 to i8*, !llfi_index !1552
  %fi7 = call i8* @injectFault4(i64 1551, i8* %49, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi7, i8* bitcast ([21 x i32]* @load_mats.mats8 to i8*), i64 84, i32 16, i1 false), !llfi_index !1553
  %50 = bitcast [21 x i32]* %mats9 to i8*, !llfi_index !1554
  %fi8 = call i8* @injectFault4(i64 1553, i8* %50, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi8, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 84, i32 16, i1 false), !llfi_index !1555
  %51 = bitcast [9 x i32]* %mats10 to i8*, !llfi_index !1556
  %fi9 = call i8* @injectFault4(i64 1555, i8* %51, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi9, i8* bitcast ([9 x i32]* @load_mats.mats10 to i8*), i64 36, i32 16, i1 false), !llfi_index !1557
  %52 = bitcast [9 x i32]* %mats11 to i8*, !llfi_index !1558
  %fi10 = call i8* @injectFault4(i64 1557, i8* %52, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi10, i8* bitcast ([9 x i32]* @load_mats.mats11 to i8*), i64 36, i32 16, i1 false), !llfi_index !1559
  %53 = load i64* %2, align 8, !llfi_index !1560
  %fi11 = call i64 @injectFault0(i64 1559, i64 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = icmp eq i64 %fi11, 68, !llfi_index !1561
  %fi12 = call i1 @injectFault10(i64 1560, i1 %54, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi12, label %55, label %66, !llfi_index !1562

; <label>:55                                      ; preds = %41
  %56 = load i32*** %mats, align 8, !llfi_index !1563
  %fi13 = call i32** @injectFault2(i64 1562, i32** %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = getelementptr i32** %fi13, i64 0, !llfi_index !1564
  %fi14 = call i32** @injectFault2(i64 1563, i32** %57, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = load i32** %fi14, align 8, !llfi_index !1565
  %fi15 = call i32* @injectFault3(i64 1564, i32* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = bitcast i32* %fi15 to i8*, !llfi_index !1566
  %fi16 = call i8* @injectFault4(i64 1565, i8* %59, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = bitcast [34 x i32]* %mats0_Sml to i8*, !llfi_index !1567
  %fi17 = call i8* @injectFault4(i64 1566, i8* %60, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = load i32** %1, align 8, !llfi_index !1568
  %fi18 = call i32* @injectFault3(i64 1567, i32* %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = getelementptr i32* %fi18, i64 0, !llfi_index !1569
  %fi19 = call i32* @injectFault3(i64 1568, i32* %62, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %63 = load i32* %fi19, align 4, !llfi_index !1570
  %fi20 = call i32 @injectFault9(i64 1569, i32 %63, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %64 = sext i32 %fi20 to i64, !llfi_index !1571
  %fi21 = call i64 @injectFault0(i64 1570, i64 %64, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %65 = mul i64 %fi21, 4, !llfi_index !1572
  %fi165 = call i64 @injectFault0(i64 1571, i64 %65, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi16, i8* %fi17, i64 %fi165, i32 4, i1 false), !llfi_index !1573
  br label %77, !llfi_index !1574

; <label>:66                                      ; preds = %41
  %67 = load i32*** %mats, align 8, !llfi_index !1575
  %fi28 = call i32** @injectFault2(i64 1574, i32** %67, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %68 = getelementptr i32** %fi28, i64 0, !llfi_index !1576
  %fi29 = call i32** @injectFault2(i64 1575, i32** %68, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %69 = load i32** %fi29, align 8, !llfi_index !1577
  %fi30 = call i32* @injectFault3(i64 1576, i32* %69, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %70 = bitcast i32* %fi30 to i8*, !llfi_index !1578
  %fi31 = call i8* @injectFault4(i64 1577, i8* %70, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %71 = bitcast [321 x i32]* %mats0_Lrg to i8*, !llfi_index !1579
  %fi32 = call i8* @injectFault4(i64 1578, i8* %71, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %72 = load i32** %1, align 8, !llfi_index !1580
  %fi33 = call i32* @injectFault3(i64 1579, i32* %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %73 = getelementptr i32* %fi33, i64 0, !llfi_index !1581
  %fi34 = call i32* @injectFault3(i64 1580, i32* %73, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %74 = load i32* %fi34, align 4, !llfi_index !1582
  %fi35 = call i32 @injectFault9(i64 1581, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %75 = sext i32 %fi35 to i64, !llfi_index !1583
  %fi36 = call i64 @injectFault0(i64 1582, i64 %75, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %76 = mul i64 %fi36, 4, !llfi_index !1584
  %fi37 = call i64 @injectFault0(i64 1583, i64 %76, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi31, i8* %fi32, i64 %fi37, i32 4, i1 false), !llfi_index !1585
  br label %77, !llfi_index !1586

; <label>:77                                      ; preds = %66, %55
  %78 = load i32*** %mats, align 8, !llfi_index !1587
  %fi38 = call i32** @injectFault2(i64 1586, i32** %78, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %79 = getelementptr i32** %fi38, i64 1, !llfi_index !1588
  %fi39 = call i32** @injectFault2(i64 1587, i32** %79, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %80 = load i32** %fi39, align 8, !llfi_index !1589
  %fi40 = call i32* @injectFault3(i64 1588, i32* %80, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %81 = bitcast i32* %fi40 to i8*, !llfi_index !1590
  %fi41 = call i8* @injectFault4(i64 1589, i8* %81, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %82 = bitcast [5 x i32]* %mats1 to i8*, !llfi_index !1591
  %fi42 = call i8* @injectFault4(i64 1590, i8* %82, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %83 = load i32** %1, align 8, !llfi_index !1592
  %fi43 = call i32* @injectFault3(i64 1591, i32* %83, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %84 = getelementptr i32* %fi43, i64 1, !llfi_index !1593
  %fi44 = call i32* @injectFault3(i64 1592, i32* %84, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %85 = load i32* %fi44, align 4, !llfi_index !1594
  %fi45 = call i32 @injectFault9(i64 1593, i32 %85, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %86 = sext i32 %fi45 to i64, !llfi_index !1595
  %fi46 = call i64 @injectFault0(i64 1594, i64 %86, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %87 = mul i64 %fi46, 4, !llfi_index !1596
  %fi47 = call i64 @injectFault0(i64 1595, i64 %87, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi41, i8* %fi42, i64 %fi47, i32 4, i1 false), !llfi_index !1597
  %88 = load i32*** %mats, align 8, !llfi_index !1598
  %fi48 = call i32** @injectFault2(i64 1597, i32** %88, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %89 = getelementptr i32** %fi48, i64 2, !llfi_index !1599
  %fi49 = call i32** @injectFault2(i64 1598, i32** %89, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %90 = load i32** %fi49, align 8, !llfi_index !1600
  %fi50 = call i32* @injectFault3(i64 1599, i32* %90, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %91 = bitcast i32* %fi50 to i8*, !llfi_index !1601
  %fi51 = call i8* @injectFault4(i64 1600, i8* %91, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %92 = bitcast [4 x i32]* %mats2 to i8*, !llfi_index !1602
  %fi52 = call i8* @injectFault4(i64 1601, i8* %92, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %93 = load i32** %1, align 8, !llfi_index !1603
  %fi53 = call i32* @injectFault3(i64 1602, i32* %93, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %94 = getelementptr i32* %fi53, i64 2, !llfi_index !1604
  %fi54 = call i32* @injectFault3(i64 1603, i32* %94, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %95 = load i32* %fi54, align 4, !llfi_index !1605
  %fi55 = call i32 @injectFault9(i64 1604, i32 %95, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %96 = sext i32 %fi55 to i64, !llfi_index !1606
  %fi56 = call i64 @injectFault0(i64 1605, i64 %96, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %97 = mul i64 %fi56, 4, !llfi_index !1607
  %fi57 = call i64 @injectFault0(i64 1606, i64 %97, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi51, i8* %fi52, i64 %fi57, i32 4, i1 false), !llfi_index !1608
  %98 = load i32*** %mats, align 8, !llfi_index !1609
  %fi58 = call i32** @injectFault2(i64 1608, i32** %98, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %99 = getelementptr i32** %fi58, i64 3, !llfi_index !1610
  %fi59 = call i32** @injectFault2(i64 1609, i32** %99, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %100 = load i32** %fi59, align 8, !llfi_index !1611
  %fi60 = call i32* @injectFault3(i64 1610, i32* %100, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %101 = bitcast i32* %fi60 to i8*, !llfi_index !1612
  %fi61 = call i8* @injectFault4(i64 1611, i8* %101, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %102 = bitcast [4 x i32]* %mats3 to i8*, !llfi_index !1613
  %fi62 = call i8* @injectFault4(i64 1612, i8* %102, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %103 = load i32** %1, align 8, !llfi_index !1614
  %fi63 = call i32* @injectFault3(i64 1613, i32* %103, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %104 = getelementptr i32* %fi63, i64 3, !llfi_index !1615
  %fi64 = call i32* @injectFault3(i64 1614, i32* %104, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %105 = load i32* %fi64, align 4, !llfi_index !1616
  %fi65 = call i32 @injectFault9(i64 1615, i32 %105, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %106 = sext i32 %fi65 to i64, !llfi_index !1617
  %fi66 = call i64 @injectFault0(i64 1616, i64 %106, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %107 = mul i64 %fi66, 4, !llfi_index !1618
  %fi67 = call i64 @injectFault0(i64 1617, i64 %107, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi61, i8* %fi62, i64 %fi67, i32 4, i1 false), !llfi_index !1619
  %108 = load i32*** %mats, align 8, !llfi_index !1620
  %fi68 = call i32** @injectFault2(i64 1619, i32** %108, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %109 = getelementptr i32** %fi68, i64 4, !llfi_index !1621
  %fi69 = call i32** @injectFault2(i64 1620, i32** %109, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %110 = load i32** %fi69, align 8, !llfi_index !1622
  %fi70 = call i32* @injectFault3(i64 1621, i32* %110, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %111 = bitcast i32* %fi70 to i8*, !llfi_index !1623
  %fi71 = call i8* @injectFault4(i64 1622, i8* %111, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %112 = bitcast [27 x i32]* %mats4 to i8*, !llfi_index !1624
  %fi72 = call i8* @injectFault4(i64 1623, i8* %112, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %113 = load i32** %1, align 8, !llfi_index !1625
  %fi73 = call i32* @injectFault3(i64 1624, i32* %113, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %114 = getelementptr i32* %fi73, i64 4, !llfi_index !1626
  %fi74 = call i32* @injectFault3(i64 1625, i32* %114, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %115 = load i32* %fi74, align 4, !llfi_index !1627
  %fi75 = call i32 @injectFault9(i64 1626, i32 %115, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %116 = sext i32 %fi75 to i64, !llfi_index !1628
  %fi76 = call i64 @injectFault0(i64 1627, i64 %116, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %117 = mul i64 %fi76, 4, !llfi_index !1629
  %fi77 = call i64 @injectFault0(i64 1628, i64 %117, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi71, i8* %fi72, i64 %fi77, i32 4, i1 false), !llfi_index !1630
  %118 = load i32*** %mats, align 8, !llfi_index !1631
  %fi78 = call i32** @injectFault2(i64 1630, i32** %118, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %119 = getelementptr i32** %fi78, i64 5, !llfi_index !1632
  %fi79 = call i32** @injectFault2(i64 1631, i32** %119, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %120 = load i32** %fi79, align 8, !llfi_index !1633
  %fi80 = call i32* @injectFault3(i64 1632, i32* %120, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %121 = bitcast i32* %fi80 to i8*, !llfi_index !1634
  %fi81 = call i8* @injectFault4(i64 1633, i8* %121, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %122 = bitcast [21 x i32]* %mats5 to i8*, !llfi_index !1635
  %fi82 = call i8* @injectFault4(i64 1634, i8* %122, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %123 = load i32** %1, align 8, !llfi_index !1636
  %fi83 = call i32* @injectFault3(i64 1635, i32* %123, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %124 = getelementptr i32* %fi83, i64 5, !llfi_index !1637
  %fi84 = call i32* @injectFault3(i64 1636, i32* %124, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %125 = load i32* %fi84, align 4, !llfi_index !1638
  %fi85 = call i32 @injectFault9(i64 1637, i32 %125, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %126 = sext i32 %fi85 to i64, !llfi_index !1639
  %fi86 = call i64 @injectFault0(i64 1638, i64 %126, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %127 = mul i64 %fi86, 4, !llfi_index !1640
  %fi87 = call i64 @injectFault0(i64 1639, i64 %127, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi81, i8* %fi82, i64 %fi87, i32 4, i1 false), !llfi_index !1641
  %128 = load i32*** %mats, align 8, !llfi_index !1642
  %fi88 = call i32** @injectFault2(i64 1641, i32** %128, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %129 = getelementptr i32** %fi88, i64 6, !llfi_index !1643
  %fi166 = call i32** @injectFault2(i64 1642, i32** %129, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %130 = load i32** %fi166, align 8, !llfi_index !1644
  %fi22 = call i32* @injectFault3(i64 1643, i32* %130, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %131 = bitcast i32* %fi22 to i8*, !llfi_index !1645
  %fi23 = call i8* @injectFault4(i64 1644, i8* %131, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %132 = bitcast [21 x i32]* %mats6 to i8*, !llfi_index !1646
  %fi24 = call i8* @injectFault4(i64 1645, i8* %132, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %133 = load i32** %1, align 8, !llfi_index !1647
  %fi25 = call i32* @injectFault3(i64 1646, i32* %133, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %134 = getelementptr i32* %fi25, i64 6, !llfi_index !1648
  %fi26 = call i32* @injectFault3(i64 1647, i32* %134, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %135 = load i32* %fi26, align 4, !llfi_index !1649
  %fi27 = call i32 @injectFault9(i64 1648, i32 %135, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %136 = sext i32 %fi27 to i64, !llfi_index !1650
  %fi89 = call i64 @injectFault0(i64 1649, i64 %136, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %137 = mul i64 %fi89, 4, !llfi_index !1651
  %fi90 = call i64 @injectFault0(i64 1650, i64 %137, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi23, i8* %fi24, i64 %fi90, i32 4, i1 false), !llfi_index !1652
  %138 = load i32*** %mats, align 8, !llfi_index !1653
  %fi91 = call i32** @injectFault2(i64 1652, i32** %138, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %139 = getelementptr i32** %fi91, i64 7, !llfi_index !1654
  %fi92 = call i32** @injectFault2(i64 1653, i32** %139, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %140 = load i32** %fi92, align 8, !llfi_index !1655
  %fi93 = call i32* @injectFault3(i64 1654, i32* %140, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %141 = bitcast i32* %fi93 to i8*, !llfi_index !1656
  %fi94 = call i8* @injectFault4(i64 1655, i8* %141, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %142 = bitcast [21 x i32]* %mats7 to i8*, !llfi_index !1657
  %fi95 = call i8* @injectFault4(i64 1656, i8* %142, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %143 = load i32** %1, align 8, !llfi_index !1658
  %fi96 = call i32* @injectFault3(i64 1657, i32* %143, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %144 = getelementptr i32* %fi96, i64 7, !llfi_index !1659
  %fi97 = call i32* @injectFault3(i64 1658, i32* %144, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %145 = load i32* %fi97, align 4, !llfi_index !1660
  %fi98 = call i32 @injectFault9(i64 1659, i32 %145, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %146 = sext i32 %fi98 to i64, !llfi_index !1661
  %fi99 = call i64 @injectFault0(i64 1660, i64 %146, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %147 = mul i64 %fi99, 4, !llfi_index !1662
  %fi100 = call i64 @injectFault0(i64 1661, i64 %147, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi94, i8* %fi95, i64 %fi100, i32 4, i1 false), !llfi_index !1663
  %148 = load i32*** %mats, align 8, !llfi_index !1664
  %fi101 = call i32** @injectFault2(i64 1663, i32** %148, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %149 = getelementptr i32** %fi101, i64 8, !llfi_index !1665
  %fi102 = call i32** @injectFault2(i64 1664, i32** %149, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %150 = load i32** %fi102, align 8, !llfi_index !1666
  %fi103 = call i32* @injectFault3(i64 1665, i32* %150, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %151 = bitcast i32* %fi103 to i8*, !llfi_index !1667
  %fi104 = call i8* @injectFault4(i64 1666, i8* %151, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %152 = bitcast [21 x i32]* %mats8 to i8*, !llfi_index !1668
  %fi105 = call i8* @injectFault4(i64 1667, i8* %152, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %153 = load i32** %1, align 8, !llfi_index !1669
  %fi106 = call i32* @injectFault3(i64 1668, i32* %153, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %154 = getelementptr i32* %fi106, i64 8, !llfi_index !1670
  %fi107 = call i32* @injectFault3(i64 1669, i32* %154, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %155 = load i32* %fi107, align 4, !llfi_index !1671
  %fi108 = call i32 @injectFault9(i64 1670, i32 %155, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %156 = sext i32 %fi108 to i64, !llfi_index !1672
  %fi109 = call i64 @injectFault0(i64 1671, i64 %156, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %157 = mul i64 %fi109, 4, !llfi_index !1673
  %fi110 = call i64 @injectFault0(i64 1672, i64 %157, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi104, i8* %fi105, i64 %fi110, i32 4, i1 false), !llfi_index !1674
  %158 = load i32*** %mats, align 8, !llfi_index !1675
  %fi111 = call i32** @injectFault2(i64 1674, i32** %158, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %159 = getelementptr i32** %fi111, i64 9, !llfi_index !1676
  %fi112 = call i32** @injectFault2(i64 1675, i32** %159, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %160 = load i32** %fi112, align 8, !llfi_index !1677
  %fi113 = call i32* @injectFault3(i64 1676, i32* %160, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %161 = bitcast i32* %fi113 to i8*, !llfi_index !1678
  %fi114 = call i8* @injectFault4(i64 1677, i8* %161, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %162 = bitcast [21 x i32]* %mats9 to i8*, !llfi_index !1679
  %fi115 = call i8* @injectFault4(i64 1678, i8* %162, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %163 = load i32** %1, align 8, !llfi_index !1680
  %fi116 = call i32* @injectFault3(i64 1679, i32* %163, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %164 = getelementptr i32* %fi116, i64 9, !llfi_index !1681
  %fi117 = call i32* @injectFault3(i64 1680, i32* %164, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %165 = load i32* %fi117, align 4, !llfi_index !1682
  %fi118 = call i32 @injectFault9(i64 1681, i32 %165, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %166 = sext i32 %fi118 to i64, !llfi_index !1683
  %fi119 = call i64 @injectFault0(i64 1682, i64 %166, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %167 = mul i64 %fi119, 4, !llfi_index !1684
  %fi120 = call i64 @injectFault0(i64 1683, i64 %167, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi114, i8* %fi115, i64 %fi120, i32 4, i1 false), !llfi_index !1685
  %168 = load i32*** %mats, align 8, !llfi_index !1686
  %fi121 = call i32** @injectFault2(i64 1685, i32** %168, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %169 = getelementptr i32** %fi121, i64 10, !llfi_index !1687
  %fi122 = call i32** @injectFault2(i64 1686, i32** %169, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %170 = load i32** %fi122, align 8, !llfi_index !1688
  %fi123 = call i32* @injectFault3(i64 1687, i32* %170, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %171 = bitcast i32* %fi123 to i8*, !llfi_index !1689
  %fi124 = call i8* @injectFault4(i64 1688, i8* %171, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %172 = bitcast [9 x i32]* %mats10 to i8*, !llfi_index !1690
  %fi125 = call i8* @injectFault4(i64 1689, i8* %172, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %173 = load i32** %1, align 8, !llfi_index !1691
  %fi126 = call i32* @injectFault3(i64 1690, i32* %173, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %174 = getelementptr i32* %fi126, i64 10, !llfi_index !1692
  %fi127 = call i32* @injectFault3(i64 1691, i32* %174, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %175 = load i32* %fi127, align 4, !llfi_index !1693
  %fi128 = call i32 @injectFault9(i64 1692, i32 %175, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %176 = sext i32 %fi128 to i64, !llfi_index !1694
  %fi129 = call i64 @injectFault0(i64 1693, i64 %176, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %177 = mul i64 %fi129, 4, !llfi_index !1695
  %fi130 = call i64 @injectFault0(i64 1694, i64 %177, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi124, i8* %fi125, i64 %fi130, i32 4, i1 false), !llfi_index !1696
  %178 = load i32*** %mats, align 8, !llfi_index !1697
  %fi131 = call i32** @injectFault2(i64 1696, i32** %178, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %179 = getelementptr i32** %fi131, i64 11, !llfi_index !1698
  %fi132 = call i32** @injectFault2(i64 1697, i32** %179, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %180 = load i32** %fi132, align 8, !llfi_index !1699
  %fi133 = call i32* @injectFault3(i64 1698, i32* %180, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %181 = bitcast i32* %fi133 to i8*, !llfi_index !1700
  %fi134 = call i8* @injectFault4(i64 1699, i8* %181, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %182 = bitcast [9 x i32]* %mats11 to i8*, !llfi_index !1701
  %fi135 = call i8* @injectFault4(i64 1700, i8* %182, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %183 = load i32** %1, align 8, !llfi_index !1702
  %fi136 = call i32* @injectFault3(i64 1701, i32* %183, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %184 = getelementptr i32* %fi136, i64 11, !llfi_index !1703
  %fi137 = call i32* @injectFault3(i64 1702, i32* %184, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %185 = load i32* %fi137, align 4, !llfi_index !1704
  %fi138 = call i32 @injectFault9(i64 1703, i32 %185, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %186 = sext i32 %fi138 to i64, !llfi_index !1705
  %fi139 = call i64 @injectFault0(i64 1704, i64 %186, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %187 = mul i64 %fi139, 4, !llfi_index !1706
  %fi140 = call i64 @injectFault0(i64 1705, i64 %187, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %fi134, i8* %fi135, i64 %fi140, i32 4, i1 false), !llfi_index !1707
  %188 = load i32*** %mats, align 8, !llfi_index !1708
  %fi141 = call i32** @injectFault2(i64 1707, i32** %188, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32** %fi141, !llfi_index !1709
}

; Function Attrs: nounwind uwtable
define double** @load_concs(i32* %num_nucs) #0 {
  %1 = alloca i32*, align 8, !llfi_index !1710
  %concs = alloca double**, align 8, !llfi_index !1711
  %i = alloca i32, align 4, !llfi_index !1712
  %i1 = alloca i32, align 4, !llfi_index !1713
  %j = alloca i32, align 4, !llfi_index !1714
  store i32* %num_nucs, i32** %1, align 8, !llfi_index !1715
  %2 = call noalias i8* @malloc(i64 96) #3, !llfi_index !1716
  %3 = bitcast i8* %2 to double**, !llfi_index !1717
  %fi = call double** @injectFault12(i64 1716, double** %3, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double** %fi, double*** %concs, align 8, !llfi_index !1718
  store i32 0, i32* %i, align 4, !llfi_index !1719
  br label %4, !llfi_index !1720

; <label>:4                                       ; preds = %21, %0
  %5 = load i32* %i, align 4, !llfi_index !1721
  %fi1 = call i32 @injectFault9(i64 1720, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = icmp slt i32 %fi1, 12, !llfi_index !1722
  %fi2 = call i1 @injectFault10(i64 1721, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %7, label %24, !llfi_index !1723

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !llfi_index !1724
  %fi3 = call i32 @injectFault9(i64 1723, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = sext i32 %fi3 to i64, !llfi_index !1725
  %fi5 = call i64 @injectFault0(i64 1724, i64 %9, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load i32** %1, align 8, !llfi_index !1726
  %fi6 = call i32* @injectFault3(i64 1725, i32* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = getelementptr i32* %fi6, i64 %fi5, !llfi_index !1727
  %fi7 = call i32* @injectFault3(i64 1726, i32* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i32* %fi7, align 4, !llfi_index !1728
  %fi8 = call i32 @injectFault9(i64 1727, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = sext i32 %fi8 to i64, !llfi_index !1729
  %fi9 = call i64 @injectFault0(i64 1728, i64 %13, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = mul i64 %fi9, 8, !llfi_index !1730
  %fi10 = call i64 @injectFault0(i64 1729, i64 %14, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = call noalias i8* @malloc(i64 %fi10) #3, !llfi_index !1731
  %16 = bitcast i8* %15 to double*, !llfi_index !1732
  %fi11 = call double* @injectFault11(i64 1731, double* %16, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load i32* %i, align 4, !llfi_index !1733
  %fi4 = call i32 @injectFault9(i64 1732, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = sext i32 %fi4 to i64, !llfi_index !1734
  %fi13 = call i64 @injectFault0(i64 1733, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load double*** %concs, align 8, !llfi_index !1735
  %fi14 = call double** @injectFault12(i64 1734, double** %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr double** %fi14, i64 %fi13, !llfi_index !1736
  %fi15 = call double** @injectFault12(i64 1735, double** %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double* %fi11, double** %fi15, align 8, !llfi_index !1737
  br label %21, !llfi_index !1738

; <label>:21                                      ; preds = %7
  %22 = load i32* %i, align 4, !llfi_index !1739
  %fi16 = call i32 @injectFault9(i64 1738, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = add nsw i32 %fi16, 1, !llfi_index !1740
  %fi17 = call i32 @injectFault9(i64 1739, i32 %23, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi17, i32* %i, align 4, !llfi_index !1741
  br label %4, !llfi_index !1742

; <label>:24                                      ; preds = %4
  store i32 0, i32* %i1, align 4, !llfi_index !1743
  br label %25, !llfi_index !1744

; <label>:25                                      ; preds = %50, %24
  %26 = load i32* %i1, align 4, !llfi_index !1745
  %fi18 = call i32 @injectFault9(i64 1744, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = icmp slt i32 %fi18, 12, !llfi_index !1746
  %fi19 = call i1 @injectFault10(i64 1745, i1 %27, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi19, label %28, label %53, !llfi_index !1747

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j, align 4, !llfi_index !1748
  br label %29, !llfi_index !1749

; <label>:29                                      ; preds = %46, %28
  %30 = load i32* %j, align 4, !llfi_index !1750
  %fi20 = call i32 @injectFault9(i64 1749, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32* %i1, align 4, !llfi_index !1751
  %fi21 = call i32 @injectFault9(i64 1750, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = sext i32 %fi21 to i64, !llfi_index !1752
  %fi22 = call i64 @injectFault0(i64 1751, i64 %32, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i32** %1, align 8, !llfi_index !1753
  %fi12 = call i32* @injectFault3(i64 1752, i32* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr i32* %fi12, i64 %fi22, !llfi_index !1754
  %fi23 = call i32* @injectFault3(i64 1753, i32* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = load i32* %fi23, align 4, !llfi_index !1755
  %fi24 = call i32 @injectFault9(i64 1754, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = icmp slt i32 %fi20, %fi24, !llfi_index !1756
  %fi25 = call i1 @injectFault10(i64 1755, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi25, label %37, label %49, !llfi_index !1757

; <label>:37                                      ; preds = %29
  %38 = load i32* %j, align 4, !llfi_index !1758
  %fi26 = call i32 @injectFault9(i64 1757, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = sext i32 %fi26 to i64, !llfi_index !1759
  %fi27 = call i64 @injectFault0(i64 1758, i64 %39, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load i32* %i1, align 4, !llfi_index !1760
  %fi28 = call i32 @injectFault9(i64 1759, i32 %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = sext i32 %fi28 to i64, !llfi_index !1761
  %fi29 = call i64 @injectFault0(i64 1760, i64 %41, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = load double*** %concs, align 8, !llfi_index !1762
  %fi30 = call double** @injectFault12(i64 1761, double** %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = getelementptr double** %fi30, i64 %fi29, !llfi_index !1763
  %fi31 = call double** @injectFault12(i64 1762, double** %43, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = load double** %fi31, align 8, !llfi_index !1764
  %fi32 = call double* @injectFault11(i64 1763, double* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = getelementptr double* %fi32, i64 %fi27, !llfi_index !1765
  %fi33 = call double* @injectFault11(i64 1764, double* %45, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.140000e+02, double* %fi33, align 8, !llfi_index !1766
  br label %46, !llfi_index !1767

; <label>:46                                      ; preds = %37
  %47 = load i32* %j, align 4, !llfi_index !1768
  %fi34 = call i32 @injectFault9(i64 1767, i32 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = add nsw i32 %fi34, 1, !llfi_index !1769
  %fi35 = call i32 @injectFault9(i64 1768, i32 %48, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi35, i32* %j, align 4, !llfi_index !1770
  br label %29, !llfi_index !1771

; <label>:49                                      ; preds = %29
  br label %50, !llfi_index !1772

; <label>:50                                      ; preds = %49
  %51 = load i32* %i1, align 4, !llfi_index !1773
  %fi36 = call i32 @injectFault9(i64 1772, i32 %51, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %52 = add nsw i32 %fi36, 1, !llfi_index !1774
  %fi37 = call i32 @injectFault9(i64 1773, i32 %52, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi37, i32* %i1, align 4, !llfi_index !1775
  br label %25, !llfi_index !1776

; <label>:53                                      ; preds = %25
  %54 = load double*** %concs, align 8, !llfi_index !1777
  %fi38 = call double** @injectFault12(i64 1776, double** %54, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret double** %fi38, !llfi_index !1778
}

; Function Attrs: nounwind uwtable
define double** @load_concs_v(i32* %num_nucs) #0 {
  %1 = alloca i32*, align 8, !llfi_index !1779
  %concs = alloca double**, align 8, !llfi_index !1780
  %i = alloca i32, align 4, !llfi_index !1781
  %i1 = alloca i32, align 4, !llfi_index !1782
  %j = alloca i32, align 4, !llfi_index !1783
  store i32* %num_nucs, i32** %1, align 8, !llfi_index !1784
  %2 = call noalias i8* @malloc(i64 96) #3, !llfi_index !1785
  %3 = bitcast i8* %2 to double**, !llfi_index !1786
  %fi = call double** @injectFault12(i64 1785, double** %3, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double** %fi, double*** %concs, align 8, !llfi_index !1787
  store i32 0, i32* %i, align 4, !llfi_index !1788
  br label %4, !llfi_index !1789

; <label>:4                                       ; preds = %21, %0
  %5 = load i32* %i, align 4, !llfi_index !1790
  %fi1 = call i32 @injectFault9(i64 1789, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = icmp slt i32 %fi1, 12, !llfi_index !1791
  %fi2 = call i1 @injectFault10(i64 1790, i1 %6, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi2, label %7, label %24, !llfi_index !1792

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !llfi_index !1793
  %fi3 = call i32 @injectFault9(i64 1792, i32 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = sext i32 %fi3 to i64, !llfi_index !1794
  %fi5 = call i64 @injectFault0(i64 1793, i64 %9, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load i32** %1, align 8, !llfi_index !1795
  %fi6 = call i32* @injectFault3(i64 1794, i32* %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = getelementptr i32* %fi6, i64 %fi5, !llfi_index !1796
  %fi7 = call i32* @injectFault3(i64 1795, i32* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i32* %fi7, align 4, !llfi_index !1797
  %fi8 = call i32 @injectFault9(i64 1796, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = sext i32 %fi8 to i64, !llfi_index !1798
  %fi9 = call i64 @injectFault0(i64 1797, i64 %13, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = mul i64 %fi9, 8, !llfi_index !1799
  %fi10 = call i64 @injectFault0(i64 1798, i64 %14, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = call noalias i8* @malloc(i64 %fi10) #3, !llfi_index !1800
  %16 = bitcast i8* %15 to double*, !llfi_index !1801
  %fi11 = call double* @injectFault11(i64 1800, double* %16, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load i32* %i, align 4, !llfi_index !1802
  %fi4 = call i32 @injectFault9(i64 1801, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = sext i32 %fi4 to i64, !llfi_index !1803
  %fi13 = call i64 @injectFault0(i64 1802, i64 %18, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load double*** %concs, align 8, !llfi_index !1804
  %fi14 = call double** @injectFault12(i64 1803, double** %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr double** %fi14, i64 %fi13, !llfi_index !1805
  %fi15 = call double** @injectFault12(i64 1804, double** %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double* %fi11, double** %fi15, align 8, !llfi_index !1806
  br label %21, !llfi_index !1807

; <label>:21                                      ; preds = %7
  %22 = load i32* %i, align 4, !llfi_index !1808
  %fi16 = call i32 @injectFault9(i64 1807, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = add nsw i32 %fi16, 1, !llfi_index !1809
  %fi17 = call i32 @injectFault9(i64 1808, i32 %23, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi17, i32* %i, align 4, !llfi_index !1810
  br label %4, !llfi_index !1811

; <label>:24                                      ; preds = %4
  store i32 0, i32* %i1, align 4, !llfi_index !1812
  br label %25, !llfi_index !1813

; <label>:25                                      ; preds = %51, %24
  %26 = load i32* %i1, align 4, !llfi_index !1814
  %fi18 = call i32 @injectFault9(i64 1813, i32 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = icmp slt i32 %fi18, 12, !llfi_index !1815
  %fi19 = call i1 @injectFault10(i64 1814, i1 %27, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi19, label %28, label %54, !llfi_index !1816

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j, align 4, !llfi_index !1817
  br label %29, !llfi_index !1818

; <label>:29                                      ; preds = %47, %28
  %30 = load i32* %j, align 4, !llfi_index !1819
  %fi20 = call i32 @injectFault9(i64 1818, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32* %i1, align 4, !llfi_index !1820
  %fi21 = call i32 @injectFault9(i64 1819, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = sext i32 %fi21 to i64, !llfi_index !1821
  %fi22 = call i64 @injectFault0(i64 1820, i64 %32, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = load i32** %1, align 8, !llfi_index !1822
  %fi12 = call i32* @injectFault3(i64 1821, i32* %33, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr i32* %fi12, i64 %fi22, !llfi_index !1823
  %fi23 = call i32* @injectFault3(i64 1822, i32* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = load i32* %fi23, align 4, !llfi_index !1824
  %fi24 = call i32 @injectFault9(i64 1823, i32 %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = icmp slt i32 %fi20, %fi24, !llfi_index !1825
  %fi25 = call i1 @injectFault10(i64 1824, i1 %36, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi25, label %37, label %50, !llfi_index !1826

; <label>:37                                      ; preds = %29
  %38 = call double @rn_v(), !llfi_index !1827
  %39 = load i32* %j, align 4, !llfi_index !1828
  %fi26 = call i32 @injectFault9(i64 1827, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = sext i32 %fi26 to i64, !llfi_index !1829
  %fi27 = call i64 @injectFault0(i64 1828, i64 %40, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = load i32* %i1, align 4, !llfi_index !1830
  %fi28 = call i32 @injectFault9(i64 1829, i32 %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = sext i32 %fi28 to i64, !llfi_index !1831
  %fi29 = call i64 @injectFault0(i64 1830, i64 %42, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load double*** %concs, align 8, !llfi_index !1832
  %fi30 = call double** @injectFault12(i64 1831, double** %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = getelementptr double** %fi30, i64 %fi29, !llfi_index !1833
  %fi31 = call double** @injectFault12(i64 1832, double** %44, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = load double** %fi31, align 8, !llfi_index !1834
  %fi32 = call double* @injectFault11(i64 1833, double* %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = getelementptr double* %fi32, i64 %fi27, !llfi_index !1835
  %fi33 = call double* @injectFault11(i64 1834, double* %46, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %38, double* %fi33, align 8, !llfi_index !1836
  br label %47, !llfi_index !1837

; <label>:47                                      ; preds = %37
  %48 = load i32* %j, align 4, !llfi_index !1838
  %fi34 = call i32 @injectFault9(i64 1837, i32 %48, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = add nsw i32 %fi34, 1, !llfi_index !1839
  %fi35 = call i32 @injectFault9(i64 1838, i32 %49, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi35, i32* %j, align 4, !llfi_index !1840
  br label %29, !llfi_index !1841

; <label>:50                                      ; preds = %29
  br label %51, !llfi_index !1842

; <label>:51                                      ; preds = %50
  %52 = load i32* %i1, align 4, !llfi_index !1843
  %fi36 = call i32 @injectFault9(i64 1842, i32 %52, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %53 = add nsw i32 %fi36, 1, !llfi_index !1844
  %fi37 = call i32 @injectFault9(i64 1843, i32 %53, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi37, i32* %i1, align 4, !llfi_index !1845
  br label %25, !llfi_index !1846

; <label>:54                                      ; preds = %25
  %55 = load double*** %concs, align 8, !llfi_index !1847
  %fi38 = call double** @injectFault12(i64 1846, double** %55, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret double** %fi38, !llfi_index !1848
}

; Function Attrs: nounwind uwtable
define i32 @pick_mat(i64* %seed) #0 {
  %1 = alloca i32, align 4, !llfi_index !1849
  %2 = alloca i64*, align 8, !llfi_index !1850
  %dist = alloca [12 x double], align 16, !llfi_index !1851
  %roll = alloca double, align 8, !llfi_index !1852
  %i = alloca i32, align 4, !llfi_index !1853
  %running = alloca double, align 8, !llfi_index !1854
  %j = alloca i32, align 4, !llfi_index !1855
  store i64* %seed, i64** %2, align 8, !llfi_index !1856
  %3 = getelementptr [12 x double]* %dist, i32 0, i64 0, !llfi_index !1857
  %fi = call double* @injectFault11(i64 1856, double* %3, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.400000e-01, double* %fi, align 8, !llfi_index !1858
  %4 = getelementptr [12 x double]* %dist, i32 0, i64 1, !llfi_index !1859
  %fi1 = call double* @injectFault11(i64 1858, double* %4, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 5.200000e-02, double* %fi1, align 8, !llfi_index !1860
  %5 = getelementptr [12 x double]* %dist, i32 0, i64 2, !llfi_index !1861
  %fi2 = call double* @injectFault11(i64 1860, double* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 2.750000e-01, double* %fi2, align 8, !llfi_index !1862
  %6 = getelementptr [12 x double]* %dist, i32 0, i64 3, !llfi_index !1863
  %fi3 = call double* @injectFault11(i64 1862, double* %6, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.340000e-01, double* %fi3, align 8, !llfi_index !1864
  %7 = getelementptr [12 x double]* %dist, i32 0, i64 4, !llfi_index !1865
  %fi4 = call double* @injectFault11(i64 1864, double* %7, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.540000e-01, double* %fi4, align 8, !llfi_index !1866
  %8 = getelementptr [12 x double]* %dist, i32 0, i64 5, !llfi_index !1867
  %fi5 = call double* @injectFault11(i64 1866, double* %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 6.400000e-02, double* %fi5, align 8, !llfi_index !1868
  %9 = getelementptr [12 x double]* %dist, i32 0, i64 6, !llfi_index !1869
  %fi7 = call double* @injectFault11(i64 1868, double* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 6.600000e-02, double* %fi7, align 8, !llfi_index !1870
  %10 = getelementptr [12 x double]* %dist, i32 0, i64 7, !llfi_index !1871
  %fi8 = call double* @injectFault11(i64 1870, double* %10, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 5.500000e-02, double* %fi8, align 8, !llfi_index !1872
  %11 = getelementptr [12 x double]* %dist, i32 0, i64 8, !llfi_index !1873
  %fi9 = call double* @injectFault11(i64 1872, double* %11, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 8.000000e-03, double* %fi9, align 8, !llfi_index !1874
  %12 = getelementptr [12 x double]* %dist, i32 0, i64 9, !llfi_index !1875
  %fi10 = call double* @injectFault11(i64 1874, double* %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.500000e-02, double* %fi10, align 8, !llfi_index !1876
  %13 = getelementptr [12 x double]* %dist, i32 0, i64 10, !llfi_index !1877
  %fi11 = call double* @injectFault11(i64 1876, double* %13, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 2.500000e-02, double* %fi11, align 8, !llfi_index !1878
  %14 = getelementptr [12 x double]* %dist, i32 0, i64 11, !llfi_index !1879
  %fi12 = call double* @injectFault11(i64 1878, double* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double 1.300000e-02, double* %fi12, align 8, !llfi_index !1880
  %15 = call double @rn_v(), !llfi_index !1881
  store double %15, double* %roll, align 8, !llfi_index !1882
  store i32 0, i32* %i, align 4, !llfi_index !1883
  br label %16, !llfi_index !1884

; <label>:16                                      ; preds = %41, %0
  %17 = load i32* %i, align 4, !llfi_index !1885
  %fi6 = call i32 @injectFault9(i64 1884, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = icmp slt i32 %fi6, 12, !llfi_index !1886
  %fi14 = call i1 @injectFault10(i64 1885, i1 %18, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi14, label %19, label %44, !llfi_index !1887

; <label>:19                                      ; preds = %16
  store double 0.000000e+00, double* %running, align 8, !llfi_index !1888
  %20 = load i32* %i, align 4, !llfi_index !1889
  %fi15 = call i32 @injectFault9(i64 1888, i32 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi15, i32* %j, align 4, !llfi_index !1890
  br label %21, !llfi_index !1891

; <label>:21                                      ; preds = %31, %19
  %22 = load i32* %j, align 4, !llfi_index !1892
  %fi16 = call i32 @injectFault9(i64 1891, i32 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = icmp sgt i32 %fi16, 0, !llfi_index !1893
  %fi17 = call i1 @injectFault10(i64 1892, i1 %23, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi17, label %24, label %34, !llfi_index !1894

; <label>:24                                      ; preds = %21
  %25 = load i32* %j, align 4, !llfi_index !1895
  %fi18 = call i32 @injectFault9(i64 1894, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = sext i32 %fi18 to i64, !llfi_index !1896
  %fi19 = call i64 @injectFault0(i64 1895, i64 %26, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = getelementptr [12 x double]* %dist, i32 0, i64 %fi19, !llfi_index !1897
  %fi20 = call double* @injectFault11(i64 1896, double* %27, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = load double* %fi20, align 8, !llfi_index !1898
  %fi21 = call double @injectFault5(i64 1897, double %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = load double* %running, align 8, !llfi_index !1899
  %fi22 = call double @injectFault5(i64 1898, double %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = fadd double %fi22, %fi21, !llfi_index !1900
  %fi23 = call double @injectFault5(i64 1899, double %30, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi23, double* %running, align 8, !llfi_index !1901
  br label %31, !llfi_index !1902

; <label>:31                                      ; preds = %24
  %32 = load i32* %j, align 4, !llfi_index !1903
  %fi24 = call i32 @injectFault9(i64 1902, i32 %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = add nsw i32 %fi24, -1, !llfi_index !1904
  %fi13 = call i32 @injectFault9(i64 1903, i32 %33, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi13, i32* %j, align 4, !llfi_index !1905
  br label %21, !llfi_index !1906

; <label>:34                                      ; preds = %21
  %35 = load double* %roll, align 8, !llfi_index !1907
  %fi25 = call double @injectFault5(i64 1906, double %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load double* %running, align 8, !llfi_index !1908
  %fi26 = call double @injectFault5(i64 1907, double %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = fcmp olt double %fi25, %fi26, !llfi_index !1909
  %fi27 = call i1 @injectFault10(i64 1908, i1 %37, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi27, label %38, label %40, !llfi_index !1910

; <label>:38                                      ; preds = %34
  %39 = load i32* %i, align 4, !llfi_index !1911
  %fi28 = call i32 @injectFault9(i64 1910, i32 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi28, i32* %1, !llfi_index !1912
  br label %45, !llfi_index !1913

; <label>:40                                      ; preds = %34
  br label %41, !llfi_index !1914

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4, !llfi_index !1915
  %fi29 = call i32 @injectFault9(i64 1914, i32 %42, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = add nsw i32 %fi29, 1, !llfi_index !1916
  %fi30 = call i32 @injectFault9(i64 1915, i32 %43, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi30, i32* %i, align 4, !llfi_index !1917
  br label %16, !llfi_index !1918

; <label>:44                                      ; preds = %16
  store i32 0, i32* %1, !llfi_index !1919
  br label %45, !llfi_index !1920

; <label>:45                                      ; preds = %44, %38
  %46 = load i32* %1, !llfi_index !1921
  %fi31 = call i32 @injectFault9(i64 1920, i32 %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32 %fi31, !llfi_index !1922
}

; Function Attrs: nounwind uwtable
define %struct.NuclideGridPoint** @gpmatrix(i64 %m, i64 %n) #0 {
  %1 = alloca i64, align 8, !llfi_index !1923
  %2 = alloca i64, align 8, !llfi_index !1924
  %i = alloca i32, align 4, !llfi_index !1925
  %j = alloca i32, align 4, !llfi_index !1926
  %full = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !1927
  %M = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !1928
  store i64 %m, i64* %1, align 8, !llfi_index !1929
  store i64 %n, i64* %2, align 8, !llfi_index !1930
  %3 = load i64* %1, align 8, !llfi_index !1931
  %fi = call i64 @injectFault0(i64 1930, i64 %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = load i64* %2, align 8, !llfi_index !1932
  %fi1 = call i64 @injectFault0(i64 1931, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = mul i64 %fi, %fi1, !llfi_index !1933
  %fi2 = call i64 @injectFault0(i64 1932, i64 %5, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = mul i64 %fi2, 48, !llfi_index !1934
  %fi3 = call i64 @injectFault0(i64 1933, i64 %6, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = call noalias i8* @malloc(i64 %fi3) #3, !llfi_index !1935
  %8 = bitcast i8* %7 to %struct.NuclideGridPoint*, !llfi_index !1936
  %fi4 = call %struct.NuclideGridPoint* @injectFault8(i64 1935, %struct.NuclideGridPoint* %8, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi4, %struct.NuclideGridPoint** %full, align 8, !llfi_index !1937
  %9 = load i64* %1, align 8, !llfi_index !1938
  %fi6 = call i64 @injectFault0(i64 1937, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = mul i64 %fi6, 8, !llfi_index !1939
  %fi7 = call i64 @injectFault0(i64 1938, i64 %10, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = call noalias i8* @malloc(i64 %fi7) #3, !llfi_index !1940
  %12 = bitcast i8* %11 to %struct.NuclideGridPoint**, !llfi_index !1941
  %fi8 = call %struct.NuclideGridPoint** @injectFault7(i64 1940, %struct.NuclideGridPoint** %12, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint** %fi8, %struct.NuclideGridPoint*** %M, align 8, !llfi_index !1942
  store i32 0, i32* %i, align 4, !llfi_index !1943
  store i32 0, i32* %j, align 4, !llfi_index !1944
  br label %13, !llfi_index !1945

; <label>:13                                      ; preds = %37, %0
  %14 = load i32* %i, align 4, !llfi_index !1946
  %fi9 = call i32 @injectFault9(i64 1945, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = sext i32 %fi9 to i64, !llfi_index !1947
  %fi10 = call i64 @injectFault0(i64 1946, i64 %15, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %1, align 8, !llfi_index !1948
  %fi11 = call i64 @injectFault0(i64 1947, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load i64* %2, align 8, !llfi_index !1949
  %fi5 = call i64 @injectFault0(i64 1948, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = mul i64 %fi11, %fi5, !llfi_index !1950
  %fi12 = call i64 @injectFault0(i64 1949, i64 %18, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = icmp ult i64 %fi10, %fi12, !llfi_index !1951
  %fi13 = call i1 @injectFault10(i64 1950, i1 %19, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi13, label %20, label %40, !llfi_index !1952

; <label>:20                                      ; preds = %13
  %21 = load i32* %i, align 4, !llfi_index !1953
  %fi14 = call i32 @injectFault9(i64 1952, i32 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = sext i32 %fi14 to i64, !llfi_index !1954
  %fi15 = call i64 @injectFault0(i64 1953, i64 %22, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = load i64* %2, align 8, !llfi_index !1955
  %fi16 = call i64 @injectFault0(i64 1954, i64 %23, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %24 = urem i64 %fi15, %fi16, !llfi_index !1956
  %fi17 = call i64 @injectFault0(i64 1955, i64 %24, i32 17, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @urem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = icmp eq i64 %fi17, 0, !llfi_index !1957
  %fi18 = call i1 @injectFault10(i64 1956, i1 %25, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi18, label %26, label %36, !llfi_index !1958

; <label>:26                                      ; preds = %20
  %27 = load i32* %i, align 4, !llfi_index !1959
  %fi19 = call i32 @injectFault9(i64 1958, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = sext i32 %fi19 to i64, !llfi_index !1960
  %fi20 = call i64 @injectFault0(i64 1959, i64 %28, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = load %struct.NuclideGridPoint** %full, align 8, !llfi_index !1961
  %fi21 = call %struct.NuclideGridPoint* @injectFault8(i64 1960, %struct.NuclideGridPoint* %29, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %30 = getelementptr %struct.NuclideGridPoint* %fi21, i64 %fi20, !llfi_index !1962
  %fi22 = call %struct.NuclideGridPoint* @injectFault8(i64 1961, %struct.NuclideGridPoint* %30, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32* %j, align 4, !llfi_index !1963
  %fi23 = call i32 @injectFault9(i64 1962, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = add nsw i32 %fi23, 1, !llfi_index !1964
  %fi24 = call i32 @injectFault9(i64 1963, i32 %32, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi24, i32* %j, align 4, !llfi_index !1965
  %33 = sext i32 %fi23 to i64, !llfi_index !1966
  %fi25 = call i64 @injectFault0(i64 1965, i64 %33, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = load %struct.NuclideGridPoint*** %M, align 8, !llfi_index !1967
  %fi26 = call %struct.NuclideGridPoint** @injectFault7(i64 1966, %struct.NuclideGridPoint** %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = getelementptr %struct.NuclideGridPoint** %fi26, i64 %fi25, !llfi_index !1968
  %fi27 = call %struct.NuclideGridPoint** @injectFault7(i64 1967, %struct.NuclideGridPoint** %35, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi22, %struct.NuclideGridPoint** %fi27, align 8, !llfi_index !1969
  br label %36, !llfi_index !1970

; <label>:36                                      ; preds = %26, %20
  br label %37, !llfi_index !1971

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !llfi_index !1972
  %fi28 = call i32 @injectFault9(i64 1971, i32 %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = add nsw i32 %fi28, 1, !llfi_index !1973
  %fi29 = call i32 @injectFault9(i64 1972, i32 %39, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi29, i32* %i, align 4, !llfi_index !1974
  br label %13, !llfi_index !1975

; <label>:40                                      ; preds = %13
  %41 = load %struct.NuclideGridPoint*** %M, align 8, !llfi_index !1976
  %fi30 = call %struct.NuclideGridPoint** @injectFault7(i64 1975, %struct.NuclideGridPoint** %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret %struct.NuclideGridPoint** %fi30, !llfi_index !1977
}

; Function Attrs: nounwind uwtable
define void @gpmatrix_free(%struct.NuclideGridPoint** %M) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !1978
  store %struct.NuclideGridPoint** %M, %struct.NuclideGridPoint*** %1, align 8, !llfi_index !1979
  %2 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !1980
  %fi = call %struct.NuclideGridPoint** @injectFault7(i64 1979, %struct.NuclideGridPoint** %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = load %struct.NuclideGridPoint** %fi, align 8, !llfi_index !1981
  %fi1 = call %struct.NuclideGridPoint* @injectFault8(i64 1980, %struct.NuclideGridPoint* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = bitcast %struct.NuclideGridPoint* %fi1 to i8*, !llfi_index !1982
  %fi2 = call i8* @injectFault4(i64 1981, i8* %4, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @free(i8* %fi2) #3, !llfi_index !1983
  %5 = load %struct.NuclideGridPoint*** %1, align 8, !llfi_index !1984
  %fi3 = call %struct.NuclideGridPoint** @injectFault7(i64 1983, %struct.NuclideGridPoint** %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = bitcast %struct.NuclideGridPoint** %fi3 to i8*, !llfi_index !1985
  %fi4 = call i8* @injectFault4(i64 1984, i8* %6, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  call void @free(i8* %fi4) #3, !llfi_index !1986
  ret void, !llfi_index !1987
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @NGP_compare(i8* %a, i8* %b) #0 {
  %1 = alloca i32, align 4, !llfi_index !1988
  %2 = alloca i8*, align 8, !llfi_index !1989
  %3 = alloca i8*, align 8, !llfi_index !1990
  %i = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !1991
  %j = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !1992
  store i8* %a, i8** %2, align 8, !llfi_index !1993
  store i8* %b, i8** %3, align 8, !llfi_index !1994
  %4 = load i8** %2, align 8, !llfi_index !1995
  %fi = call i8* @injectFault4(i64 1994, i8* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = bitcast i8* %fi to %struct.NuclideGridPoint*, !llfi_index !1996
  %fi1 = call %struct.NuclideGridPoint* @injectFault8(i64 1995, %struct.NuclideGridPoint* %5, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi1, %struct.NuclideGridPoint** %i, align 8, !llfi_index !1997
  %6 = load i8** %3, align 8, !llfi_index !1998
  %fi2 = call i8* @injectFault4(i64 1997, i8* %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = bitcast i8* %fi2 to %struct.NuclideGridPoint*, !llfi_index !1999
  %fi3 = call %struct.NuclideGridPoint* @injectFault8(i64 1998, %struct.NuclideGridPoint* %7, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store %struct.NuclideGridPoint* %fi3, %struct.NuclideGridPoint** %j, align 8, !llfi_index !2000
  %8 = load %struct.NuclideGridPoint** %i, align 8, !llfi_index !2001
  %fi4 = call %struct.NuclideGridPoint* @injectFault8(i64 2000, %struct.NuclideGridPoint* %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = getelementptr %struct.NuclideGridPoint* %fi4, i32 0, i32 0, !llfi_index !2002
  %fi6 = call double* @injectFault11(i64 2001, double* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load double* %fi6, align 8, !llfi_index !2003
  %fi7 = call double @injectFault5(i64 2002, double %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load %struct.NuclideGridPoint** %j, align 8, !llfi_index !2004
  %fi8 = call %struct.NuclideGridPoint* @injectFault8(i64 2003, %struct.NuclideGridPoint* %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = getelementptr %struct.NuclideGridPoint* %fi8, i32 0, i32 0, !llfi_index !2005
  %fi9 = call double* @injectFault11(i64 2004, double* %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load double* %fi9, align 8, !llfi_index !2006
  %fi10 = call double @injectFault5(i64 2005, double %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = fcmp ogt double %fi7, %fi10, !llfi_index !2007
  %fi11 = call i1 @injectFault10(i64 2006, i1 %14, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi11, label %15, label %16, !llfi_index !2008

; <label>:15                                      ; preds = %0
  store i32 1, i32* %1, !llfi_index !2009
  br label %26, !llfi_index !2010

; <label>:16                                      ; preds = %0
  %17 = load %struct.NuclideGridPoint** %i, align 8, !llfi_index !2011
  %fi5 = call %struct.NuclideGridPoint* @injectFault8(i64 2010, %struct.NuclideGridPoint* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = getelementptr %struct.NuclideGridPoint* %fi5, i32 0, i32 0, !llfi_index !2012
  %fi12 = call double* @injectFault11(i64 2011, double* %18, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = load double* %fi12, align 8, !llfi_index !2013
  %fi13 = call double @injectFault5(i64 2012, double %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = load %struct.NuclideGridPoint** %j, align 8, !llfi_index !2014
  %fi14 = call %struct.NuclideGridPoint* @injectFault8(i64 2013, %struct.NuclideGridPoint* %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = getelementptr %struct.NuclideGridPoint* %fi14, i32 0, i32 0, !llfi_index !2015
  %fi15 = call double* @injectFault11(i64 2014, double* %21, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load double* %fi15, align 8, !llfi_index !2016
  %fi16 = call double @injectFault5(i64 2015, double %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = fcmp olt double %fi13, %fi16, !llfi_index !2017
  %fi17 = call i1 @injectFault10(i64 2016, i1 %23, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi17, label %24, label %25, !llfi_index !2018

; <label>:24                                      ; preds = %16
  store i32 -1, i32* %1, !llfi_index !2019
  br label %26, !llfi_index !2020

; <label>:25                                      ; preds = %16
  store i32 0, i32* %1, !llfi_index !2021
  br label %26, !llfi_index !2022

; <label>:26                                      ; preds = %25, %24, %15
  %27 = load i32* %1, !llfi_index !2023
  %fi18 = call i32 @injectFault9(i64 2022, i32 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32 %fi18, !llfi_index !2024
}

; Function Attrs: nounwind uwtable
define i32 @binary_search(%struct.NuclideGridPoint* %A, double %quarry, i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !2025
  %2 = alloca %struct.NuclideGridPoint*, align 8, !llfi_index !2026
  %3 = alloca double, align 8, !llfi_index !2027
  %4 = alloca i32, align 4, !llfi_index !2028
  %min = alloca i32, align 4, !llfi_index !2029
  %max = alloca i32, align 4, !llfi_index !2030
  %mid = alloca i32, align 4, !llfi_index !2031
  store %struct.NuclideGridPoint* %A, %struct.NuclideGridPoint** %2, align 8, !llfi_index !2032
  store double %quarry, double* %3, align 8, !llfi_index !2033
  store i32 %n, i32* %4, align 4, !llfi_index !2034
  store i32 0, i32* %min, align 4, !llfi_index !2035
  %5 = load i32* %4, align 4, !llfi_index !2036
  %fi = call i32 @injectFault9(i64 2035, i32 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = sub nsw i32 %fi, 1, !llfi_index !2037
  %fi1 = call i32 @injectFault9(i64 2036, i32 %6, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi1, i32* %max, align 4, !llfi_index !2038
  %7 = load %struct.NuclideGridPoint** %2, align 8, !llfi_index !2039
  %fi2 = call %struct.NuclideGridPoint* @injectFault8(i64 2038, %struct.NuclideGridPoint* %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = getelementptr %struct.NuclideGridPoint* %fi2, i64 0, !llfi_index !2040
  %fi3 = call %struct.NuclideGridPoint* @injectFault8(i64 2039, %struct.NuclideGridPoint* %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = getelementptr %struct.NuclideGridPoint* %fi3, i32 0, i32 0, !llfi_index !2041
  %fi5 = call double* @injectFault11(i64 2040, double* %9, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = load double* %fi5, align 8, !llfi_index !2042
  %fi6 = call double @injectFault5(i64 2041, double %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = load double* %3, align 8, !llfi_index !2043
  %fi7 = call double @injectFault5(i64 2042, double %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = fcmp ogt double %fi6, %fi7, !llfi_index !2044
  %fi8 = call i1 @injectFault10(i64 2043, i1 %12, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi8, label %13, label %14, !llfi_index !2045

; <label>:13                                      ; preds = %0
  store i32 0, i32* %1, !llfi_index !2046
  br label %73, !llfi_index !2047

; <label>:14                                      ; preds = %0
  %15 = load i32* %4, align 4, !llfi_index !2048
  %fi9 = call i32 @injectFault9(i64 2047, i32 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = sub nsw i32 %fi9, 1, !llfi_index !2049
  %fi10 = call i32 @injectFault9(i64 2048, i32 %16, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = sext i32 %fi10 to i64, !llfi_index !2050
  %fi4 = call i64 @injectFault0(i64 2049, i64 %17, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load %struct.NuclideGridPoint** %2, align 8, !llfi_index !2051
  %fi11 = call %struct.NuclideGridPoint* @injectFault8(i64 2050, %struct.NuclideGridPoint* %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = getelementptr %struct.NuclideGridPoint* %fi11, i64 %fi4, !llfi_index !2052
  %fi12 = call %struct.NuclideGridPoint* @injectFault8(i64 2051, %struct.NuclideGridPoint* %19, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = getelementptr %struct.NuclideGridPoint* %fi12, i32 0, i32 0, !llfi_index !2053
  %fi13 = call double* @injectFault11(i64 2052, double* %20, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = load double* %fi13, align 8, !llfi_index !2054
  %fi14 = call double @injectFault5(i64 2053, double %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = load double* %3, align 8, !llfi_index !2055
  %fi15 = call double @injectFault5(i64 2054, double %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = fcmp olt double %fi14, %fi15, !llfi_index !2056
  %fi16 = call i1 @injectFault10(i64 2055, i1 %23, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi16, label %24, label %27, !llfi_index !2057

; <label>:24                                      ; preds = %14
  %25 = load i32* %4, align 4, !llfi_index !2058
  %fi17 = call i32 @injectFault9(i64 2057, i32 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = sub nsw i32 %fi17, 2, !llfi_index !2059
  %fi18 = call i32 @injectFault9(i64 2058, i32 %26, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi18, i32* %1, !llfi_index !2060
  br label %73, !llfi_index !2061

; <label>:27                                      ; preds = %14
  br label %28, !llfi_index !2062

; <label>:28                                      ; preds = %27
  br label %29, !llfi_index !2063

; <label>:29                                      ; preds = %70, %28
  %30 = load i32* %max, align 4, !llfi_index !2064
  %fi19 = call i32 @injectFault9(i64 2063, i32 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load i32* %min, align 4, !llfi_index !2065
  %fi20 = call i32 @injectFault9(i64 2064, i32 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = icmp sge i32 %fi19, %fi20, !llfi_index !2066
  %fi21 = call i1 @injectFault10(i64 2065, i1 %32, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi21, label %33, label %71, !llfi_index !2067

; <label>:33                                      ; preds = %29
  %34 = load i32* %min, align 4, !llfi_index !2068
  %fi24 = call i32 @injectFault9(i64 2067, i32 %34, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = sitofp i32 %fi24 to double, !llfi_index !2069
  %fi25 = call double @injectFault5(i64 2068, double %35, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load i32* %max, align 4, !llfi_index !2070
  %fi26 = call i32 @injectFault9(i64 2069, i32 %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = load i32* %min, align 4, !llfi_index !2071
  %fi27 = call i32 @injectFault9(i64 2070, i32 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = sub nsw i32 %fi26, %fi27, !llfi_index !2072
  %fi28 = call i32 @injectFault9(i64 2071, i32 %38, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = sitofp i32 %fi28 to double, !llfi_index !2073
  %fi29 = call double @injectFault5(i64 2072, double %39, i32 39, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @sitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = fdiv double %fi29, 2.000000e+00, !llfi_index !2074
  %fi30 = call double @injectFault5(i64 2073, double %40, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = call double @floor(double %fi30) #9, !llfi_index !2075
  %42 = fadd double %fi25, %41, !llfi_index !2076
  %fi31 = call double @injectFault5(i64 2075, double %42, i32 9, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fadd_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = fptosi double %fi31 to i32, !llfi_index !2077
  %fi32 = call i32 @injectFault9(i64 2076, i32 %43, i32 37, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @fptosi_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi32, i32* %mid, align 4, !llfi_index !2078
  %44 = load i32* %mid, align 4, !llfi_index !2079
  %fi33 = call i32 @injectFault9(i64 2078, i32 %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = sext i32 %fi33 to i64, !llfi_index !2080
  %fi34 = call i64 @injectFault0(i64 2079, i64 %45, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load %struct.NuclideGridPoint** %2, align 8, !llfi_index !2081
  %fi35 = call %struct.NuclideGridPoint* @injectFault8(i64 2080, %struct.NuclideGridPoint* %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = getelementptr %struct.NuclideGridPoint* %fi35, i64 %fi34, !llfi_index !2082
  %fi36 = call %struct.NuclideGridPoint* @injectFault8(i64 2081, %struct.NuclideGridPoint* %47, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = getelementptr %struct.NuclideGridPoint* %fi36, i32 0, i32 0, !llfi_index !2083
  %fi37 = call double* @injectFault11(i64 2082, double* %48, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %49 = load double* %fi37, align 8, !llfi_index !2084
  %fi38 = call double @injectFault5(i64 2083, double %49, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %50 = load double* %3, align 8, !llfi_index !2085
  %fi39 = call double @injectFault5(i64 2084, double %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = fcmp olt double %fi38, %fi39, !llfi_index !2086
  %fi40 = call i1 @injectFault10(i64 2085, i1 %51, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi40, label %52, label %55, !llfi_index !2087

; <label>:52                                      ; preds = %33
  %53 = load i32* %mid, align 4, !llfi_index !2088
  %fi41 = call i32 @injectFault9(i64 2087, i32 %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = add nsw i32 %fi41, 1, !llfi_index !2089
  %fi42 = call i32 @injectFault9(i64 2088, i32 %54, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi42, i32* %min, align 4, !llfi_index !2090
  br label %70, !llfi_index !2091

; <label>:55                                      ; preds = %33
  %56 = load i32* %mid, align 4, !llfi_index !2092
  %fi43 = call i32 @injectFault9(i64 2091, i32 %56, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %57 = sext i32 %fi43 to i64, !llfi_index !2093
  %fi44 = call i64 @injectFault0(i64 2092, i64 %57, i32 35, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @sext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %58 = load %struct.NuclideGridPoint** %2, align 8, !llfi_index !2094
  %fi45 = call %struct.NuclideGridPoint* @injectFault8(i64 2093, %struct.NuclideGridPoint* %58, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %59 = getelementptr %struct.NuclideGridPoint* %fi45, i64 %fi44, !llfi_index !2095
  %fi46 = call %struct.NuclideGridPoint* @injectFault8(i64 2094, %struct.NuclideGridPoint* %59, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %60 = getelementptr %struct.NuclideGridPoint* %fi46, i32 0, i32 0, !llfi_index !2096
  %fi47 = call double* @injectFault11(i64 2095, double* %60, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %61 = load double* %fi47, align 8, !llfi_index !2097
  %fi48 = call double @injectFault5(i64 2096, double %61, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %62 = load double* %3, align 8, !llfi_index !2098
  %fi49 = call double @injectFault5(i64 2097, double %62, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %63 = fcmp ogt double %fi48, %fi49, !llfi_index !2099
  %fi50 = call i1 @injectFault10(i64 2098, i1 %63, i32 47, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fcmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi50, label %64, label %67, !llfi_index !2100

; <label>:64                                      ; preds = %55
  %65 = load i32* %mid, align 4, !llfi_index !2101
  %fi22 = call i32 @injectFault9(i64 2100, i32 %65, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %66 = sub nsw i32 %fi22, 1, !llfi_index !2102
  %fi23 = call i32 @injectFault9(i64 2101, i32 %66, i32 10, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @sub_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi23, i32* %max, align 4, !llfi_index !2103
  br label %69, !llfi_index !2104

; <label>:67                                      ; preds = %55
  %68 = load i32* %mid, align 4, !llfi_index !2105
  %fi51 = call i32 @injectFault9(i64 2104, i32 %68, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi51, i32* %1, !llfi_index !2106
  br label %73, !llfi_index !2107

; <label>:69                                      ; preds = %64
  br label %70, !llfi_index !2108

; <label>:70                                      ; preds = %69, %52
  br label %29, !llfi_index !2109

; <label>:71                                      ; preds = %29
  %72 = load i32* %max, align 4, !llfi_index !2110
  %fi52 = call i32 @injectFault9(i64 2109, i32 %72, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi52, i32* %1, !llfi_index !2111
  br label %73, !llfi_index !2112

; <label>:73                                      ; preds = %71, %67, %24, %13
  %74 = load i32* %1, !llfi_index !2113
  %fi53 = call i32 @injectFault9(i64 2112, i32 %74, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32 %fi53, !llfi_index !2114
}

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind uwtable
define double @rn(i64* %seed) #0 {
  %1 = alloca i64*, align 8, !llfi_index !2115
  %ret = alloca double, align 8, !llfi_index !2116
  %n1 = alloca i64, align 8, !llfi_index !2117
  %a = alloca i64, align 8, !llfi_index !2118
  %m = alloca i64, align 8, !llfi_index !2119
  store i64* %seed, i64** %1, align 8, !llfi_index !2120
  store i64 16807, i64* %a, align 8, !llfi_index !2121
  store i64 2147483647, i64* %m, align 8, !llfi_index !2122
  %2 = load i64* %a, align 8, !llfi_index !2123
  %fi = call i64 @injectFault0(i64 2122, i64 %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = load i64** %1, align 8, !llfi_index !2124
  %fi1 = call i64* @injectFault6(i64 2123, i64* %3, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = load i64* %fi1, align 8, !llfi_index !2125
  %fi2 = call i64 @injectFault0(i64 2124, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = mul i64 %fi, %fi2, !llfi_index !2126
  %fi3 = call i64 @injectFault0(i64 2125, i64 %5, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %m, align 8, !llfi_index !2127
  %fi4 = call i64 @injectFault0(i64 2126, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = urem i64 %fi3, %fi4, !llfi_index !2128
  %fi5 = call i64 @injectFault0(i64 2127, i64 %7, i32 17, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @urem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi5, i64* %n1, align 8, !llfi_index !2129
  %8 = load i64* %n1, align 8, !llfi_index !2130
  %fi6 = call i64 @injectFault0(i64 2129, i64 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = load i64** %1, align 8, !llfi_index !2131
  %fi7 = call i64* @injectFault6(i64 2130, i64* %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi6, i64* %fi7, align 8, !llfi_index !2132
  %10 = load i64* %n1, align 8, !llfi_index !2133
  %fi8 = call i64 @injectFault0(i64 2132, i64 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = uitofp i64 %fi8 to double, !llfi_index !2134
  %fi9 = call double @injectFault5(i64 2133, double %11, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i64* %m, align 8, !llfi_index !2135
  %fi10 = call i64 @injectFault0(i64 2134, i64 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = uitofp i64 %fi10 to double, !llfi_index !2136
  %fi11 = call double @injectFault5(i64 2135, double %13, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = fdiv double %fi9, %fi11, !llfi_index !2137
  %fi12 = call double @injectFault5(i64 2136, double %14, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi12, double* %ret, align 8, !llfi_index !2138
  %15 = load double* %ret, align 8, !llfi_index !2139
  %fi13 = call double @injectFault5(i64 2138, double %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret double %fi13, !llfi_index !2140
}

; Function Attrs: nounwind uwtable
define double @rn_v() #0 {
  %ret = alloca double, align 8, !llfi_index !2141
  %n1 = alloca i64, align 8, !llfi_index !2142
  %a = alloca i64, align 8, !llfi_index !2143
  %m = alloca i64, align 8, !llfi_index !2144
  store i64 16807, i64* %a, align 8, !llfi_index !2145
  store i64 2147483647, i64* %m, align 8, !llfi_index !2146
  %1 = load i64* %a, align 8, !llfi_index !2147
  %fi = call i64 @injectFault0(i64 2146, i64 %1, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %2 = load i64* @rn_v.seed, align 8, !llfi_index !2148
  %fi1 = call i64 @injectFault0(i64 2147, i64 %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = mul i64 %fi, %fi1, !llfi_index !2149
  %fi2 = call i64 @injectFault0(i64 2148, i64 %3, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %4 = load i64* %m, align 8, !llfi_index !2150
  %fi3 = call i64 @injectFault0(i64 2149, i64 %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = urem i64 %fi2, %fi3, !llfi_index !2151
  %fi4 = call i64 @injectFault0(i64 2150, i64 %5, i32 17, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @urem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi4, i64* %n1, align 8, !llfi_index !2152
  %6 = load i64* %n1, align 8, !llfi_index !2153
  %fi5 = call i64 @injectFault0(i64 2152, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi5, i64* @rn_v.seed, align 8, !llfi_index !2154
  %7 = load i64* %n1, align 8, !llfi_index !2155
  %fi6 = call i64 @injectFault0(i64 2154, i64 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = uitofp i64 %fi6 to double, !llfi_index !2156
  %fi7 = call double @injectFault5(i64 2155, double %8, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = load i64* %m, align 8, !llfi_index !2157
  %fi8 = call i64 @injectFault0(i64 2156, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = uitofp i64 %fi8 to double, !llfi_index !2158
  %fi9 = call double @injectFault5(i64 2157, double %10, i32 38, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8]* @uitofp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = fdiv double %fi7, %fi9, !llfi_index !2159
  %fi10 = call double @injectFault5(i64 2158, double %11, i32 16, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @fdiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store double %fi10, double* %ret, align 8, !llfi_index !2160
  %12 = load double* %ret, align 8, !llfi_index !2161
  %fi11 = call double @injectFault5(i64 2160, double %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret double %fi11, !llfi_index !2162
}

; Function Attrs: nounwind uwtable
define i32 @hash(i8* %str, i32 %nbins) #0 {
  %1 = alloca i8*, align 8, !llfi_index !2163
  %2 = alloca i32, align 4, !llfi_index !2164
  %hash = alloca i32, align 4, !llfi_index !2165
  %c = alloca i32, align 4, !llfi_index !2166
  store i8* %str, i8** %1, align 8, !llfi_index !2167
  store i32 %nbins, i32* %2, align 4, !llfi_index !2168
  store i32 5381, i32* %hash, align 4, !llfi_index !2169
  br label %3, !llfi_index !2170

; <label>:3                                       ; preds = %9, %0
  %4 = load i8** %1, align 8, !llfi_index !2171
  %fi = call i8* @injectFault4(i64 2170, i8* %4, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = getelementptr i8* %fi, i32 1, !llfi_index !2172
  %fi1 = call i8* @injectFault4(i64 2171, i8* %5, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i8* %fi1, i8** %1, align 8, !llfi_index !2173
  %6 = load i8* %fi, align 1, !llfi_index !2174
  %fi2 = call i8 @injectFault16(i64 2173, i8 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = zext i8 %fi2 to i32, !llfi_index !2175
  %fi3 = call i32 @injectFault9(i64 2174, i32 %7, i32 34, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @zext_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi3, i32* %c, align 4, !llfi_index !2176
  %8 = icmp ne i32 %fi3, 0, !llfi_index !2177
  %fi4 = call i1 @injectFault10(i64 2176, i1 %8, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi4, label %9, label %16, !llfi_index !2178

; <label>:9                                       ; preds = %3
  %10 = load i32* %hash, align 4, !llfi_index !2179
  %fi6 = call i32 @injectFault9(i64 2178, i32 %10, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = shl i32 %fi6, 5, !llfi_index !2180
  %fi7 = call i32 @injectFault9(i64 2179, i32 %11, i32 20, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @shl_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load i32* %hash, align 4, !llfi_index !2181
  %fi8 = call i32 @injectFault9(i64 2180, i32 %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = add i32 %fi7, %fi8, !llfi_index !2182
  %fi9 = call i32 @injectFault9(i64 2181, i32 %13, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = load i32* %c, align 4, !llfi_index !2183
  %fi10 = call i32 @injectFault9(i64 2182, i32 %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = add i32 %fi9, %fi10, !llfi_index !2184
  %fi11 = call i32 @injectFault9(i64 2183, i32 %15, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi11, i32* %hash, align 4, !llfi_index !2185
  br label %3, !llfi_index !2186

; <label>:16                                      ; preds = %3
  %17 = load i32* %hash, align 4, !llfi_index !2187
  %fi5 = call i32 @injectFault9(i64 2186, i32 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = load i32* %2, align 4, !llfi_index !2188
  %fi12 = call i32 @injectFault9(i64 2187, i32 %18, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %19 = urem i32 %fi5, %fi12, !llfi_index !2189
  %fi13 = call i32 @injectFault9(i64 2188, i32 %19, i32 17, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @urem_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i32 %fi13, !llfi_index !2190
}

; Function Attrs: nounwind uwtable
define i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in) #0 {
  %single_nuclide_grid = alloca i64, align 8, !llfi_index !2191
  %all_nuclide_grids = alloca i64, align 8, !llfi_index !2192
  %size_GridPoint = alloca i64, align 8, !llfi_index !2193
  %size_UEG = alloca i64, align 8, !llfi_index !2194
  %memtotal = alloca i64, align 8, !llfi_index !2195
  %1 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !2196
  %fi = call i64* @injectFault6(i64 2195, i64* %1, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %2 = load i64* %fi, align 8, !llfi_index !2197
  %fi1 = call i64 @injectFault0(i64 2196, i64 %2, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %3 = mul i64 %fi1, 48, !llfi_index !2198
  %fi2 = call i64 @injectFault0(i64 2197, i64 %3, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi2, i64* %single_nuclide_grid, align 8, !llfi_index !2199
  %4 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !2200
  %fi3 = call i64* @injectFault6(i64 2199, i64* %4, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %5 = load i64* %fi3, align 8, !llfi_index !2201
  %fi4 = call i64 @injectFault0(i64 2200, i64 %5, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %6 = load i64* %single_nuclide_grid, align 8, !llfi_index !2202
  %fi5 = call i64 @injectFault0(i64 2201, i64 %6, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %7 = mul i64 %fi4, %fi5, !llfi_index !2203
  %fi6 = call i64 @injectFault0(i64 2202, i64 %7, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi6, i64* %all_nuclide_grids, align 8, !llfi_index !2204
  %8 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !2205
  %fi7 = call i64* @injectFault6(i64 2204, i64* %8, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = load i64* %fi7, align 8, !llfi_index !2206
  %fi9 = call i64 @injectFault0(i64 2205, i64 %9, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %10 = mul i64 %fi9, 4, !llfi_index !2207
  %fi10 = call i64 @injectFault0(i64 2206, i64 %10, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %11 = add i64 16, %fi10, !llfi_index !2208
  %fi11 = call i64 @injectFault0(i64 2207, i64 %11, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi11, i64* %size_GridPoint, align 8, !llfi_index !2209
  %12 = getelementptr %struct.Inputs* %in, i32 0, i32 1, !llfi_index !2210
  %fi12 = call i64* @injectFault6(i64 2209, i64* %12, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = load i64* %fi12, align 8, !llfi_index !2211
  %fi13 = call i64 @injectFault0(i64 2210, i64 %13, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = getelementptr %struct.Inputs* %in, i32 0, i32 2, !llfi_index !2212
  %fi14 = call i64* @injectFault6(i64 2211, i64* %14, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = load i64* %fi14, align 8, !llfi_index !2213
  %fi15 = call i64 @injectFault0(i64 2212, i64 %15, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = mul nsw i64 %fi13, %fi15, !llfi_index !2214
  %fi16 = call i64 @injectFault0(i64 2213, i64 %16, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load i64* %size_GridPoint, align 8, !llfi_index !2215
  %fi8 = call i64 @injectFault0(i64 2214, i64 %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = mul i64 %fi16, %fi8, !llfi_index !2216
  %fi17 = call i64 @injectFault0(i64 2215, i64 %18, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi17, i64* %size_UEG, align 8, !llfi_index !2217
  %19 = load i64* %all_nuclide_grids, align 8, !llfi_index !2218
  %fi18 = call i64 @injectFault0(i64 2217, i64 %19, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %20 = load i64* %size_UEG, align 8, !llfi_index !2219
  %fi19 = call i64 @injectFault0(i64 2218, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = add i64 %fi18, %fi19, !llfi_index !2220
  %fi20 = call i64 @injectFault0(i64 2219, i64 %21, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi20, i64* %memtotal, align 8, !llfi_index !2221
  %22 = load i64* %all_nuclide_grids, align 8, !llfi_index !2222
  %fi21 = call i64 @injectFault0(i64 2221, i64 %22, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %23 = udiv i64 %fi21, 1048576, !llfi_index !2223
  %fi22 = call i64 @injectFault0(i64 2222, i64 %23, i32 14, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @udiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi22, i64* %all_nuclide_grids, align 8, !llfi_index !2224
  %24 = load i64* %size_UEG, align 8, !llfi_index !2225
  %fi23 = call i64 @injectFault0(i64 2224, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = udiv i64 %fi23, 1048576, !llfi_index !2226
  %fi24 = call i64 @injectFault0(i64 2225, i64 %25, i32 14, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @udiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi24, i64* %size_UEG, align 8, !llfi_index !2227
  %26 = load i64* %memtotal, align 8, !llfi_index !2228
  %fi25 = call i64 @injectFault0(i64 2227, i64 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = udiv i64 %fi25, 1048576, !llfi_index !2229
  %fi26 = call i64 @injectFault0(i64 2228, i64 %27, i32 14, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @udiv_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi26, i64* %memtotal, align 8, !llfi_index !2230
  %28 = load i64* %memtotal, align 8, !llfi_index !2231
  %fi27 = call i64 @injectFault0(i64 2230, i64 %28, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  ret i64 %fi27, !llfi_index !2232
}

; Function Attrs: nounwind uwtable
define void @binary_dump(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids, %struct.GridPoint* %energy_grid) #0 {
  %1 = alloca i64, align 8, !llfi_index !2233
  %2 = alloca i64, align 8, !llfi_index !2234
  %3 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !2235
  %4 = alloca %struct.GridPoint*, align 8, !llfi_index !2236
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !2237
  %i = alloca i64, align 8, !llfi_index !2238
  %i1 = alloca i64, align 8, !llfi_index !2239
  store i64 %n_isotopes, i64* %1, align 8, !llfi_index !2240
  store i64 %n_gridpoints, i64* %2, align 8, !llfi_index !2241
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8, !llfi_index !2242
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %4, align 8, !llfi_index !2243
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str161, i32 0, i32 0)), !llfi_index !2244
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8, !llfi_index !2245
  store i64 0, i64* %i, align 8, !llfi_index !2246
  br label %6, !llfi_index !2247

; <label>:6                                       ; preds = %19, %0
  %7 = load i64* %i, align 8, !llfi_index !2248
  %fi = call i64 @injectFault0(i64 2247, i64 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = load i64* %1, align 8, !llfi_index !2249
  %fi1 = call i64 @injectFault0(i64 2248, i64 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = icmp slt i64 %fi, %fi1, !llfi_index !2250
  %fi3 = call i1 @injectFault10(i64 2249, i1 %9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi3, label %10, label %22, !llfi_index !2251

; <label>:10                                      ; preds = %6
  %11 = load i64* %i, align 8, !llfi_index !2252
  %fi4 = call i64 @injectFault0(i64 2251, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load %struct.NuclideGridPoint*** %3, align 8, !llfi_index !2253
  %fi5 = call %struct.NuclideGridPoint** @injectFault7(i64 2252, %struct.NuclideGridPoint** %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = getelementptr %struct.NuclideGridPoint** %fi5, i64 %fi4, !llfi_index !2254
  %fi6 = call %struct.NuclideGridPoint** @injectFault7(i64 2253, %struct.NuclideGridPoint** %13, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = load %struct.NuclideGridPoint** %fi6, align 8, !llfi_index !2255
  %fi7 = call %struct.NuclideGridPoint* @injectFault8(i64 2254, %struct.NuclideGridPoint* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = bitcast %struct.NuclideGridPoint* %fi7 to i8*, !llfi_index !2256
  %fi8 = call i8* @injectFault4(i64 2255, i8* %15, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %2, align 8, !llfi_index !2257
  %fi9 = call i64 @injectFault0(i64 2256, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2258
  %fi2 = call %struct._IO_FILE* @injectFault13(i64 2257, %struct._IO_FILE* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = call i64 @fwrite(i8* %fi8, i64 48, i64 %fi9, %struct._IO_FILE* %fi2), !llfi_index !2259
  br label %19, !llfi_index !2260

; <label>:19                                      ; preds = %10
  %20 = load i64* %i, align 8, !llfi_index !2261
  %fi11 = call i64 @injectFault0(i64 2260, i64 %20, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %21 = add nsw i64 %fi11, 1, !llfi_index !2262
  %fi12 = call i64 @injectFault0(i64 2261, i64 %21, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi12, i64* %i, align 8, !llfi_index !2263
  br label %6, !llfi_index !2264

; <label>:22                                      ; preds = %6
  store i64 0, i64* %i1, align 8, !llfi_index !2265
  br label %23, !llfi_index !2266

; <label>:23                                      ; preds = %46, %22
  %24 = load i64* %i1, align 8, !llfi_index !2267
  %fi13 = call i64 @injectFault0(i64 2266, i64 %24, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %25 = load i64* %1, align 8, !llfi_index !2268
  %fi14 = call i64 @injectFault0(i64 2267, i64 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load i64* %2, align 8, !llfi_index !2269
  %fi15 = call i64 @injectFault0(i64 2268, i64 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = mul nsw i64 %fi14, %fi15, !llfi_index !2270
  %fi16 = call i64 @injectFault0(i64 2269, i64 %27, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = icmp slt i64 %fi13, %fi16, !llfi_index !2271
  %fi17 = call i1 @injectFault10(i64 2270, i1 %28, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi17, label %29, label %49, !llfi_index !2272

; <label>:29                                      ; preds = %23
  %30 = load i64* %i1, align 8, !llfi_index !2273
  %fi18 = call i64 @injectFault0(i64 2272, i64 %30, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %31 = load %struct.GridPoint** %4, align 8, !llfi_index !2274
  %fi19 = call %struct.GridPoint* @injectFault1(i64 2273, %struct.GridPoint* %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = getelementptr %struct.GridPoint* %fi19, i64 %fi18, !llfi_index !2275
  %fi20 = call %struct.GridPoint* @injectFault1(i64 2274, %struct.GridPoint* %32, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = getelementptr %struct.GridPoint* %fi20, i32 0, i32 0, !llfi_index !2276
  %fi10 = call double* @injectFault11(i64 2275, double* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = bitcast double* %fi10 to i8*, !llfi_index !2277
  %fi21 = call i8* @injectFault4(i64 2276, i8* %34, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2278
  %fi22 = call %struct._IO_FILE* @injectFault13(i64 2277, %struct._IO_FILE* %35, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = call i64 @fwrite(i8* %fi21, i64 8, i64 1, %struct._IO_FILE* %fi22), !llfi_index !2279
  %37 = load i64* %i1, align 8, !llfi_index !2280
  %fi23 = call i64 @injectFault0(i64 2279, i64 %37, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %38 = load %struct.GridPoint** %4, align 8, !llfi_index !2281
  %fi24 = call %struct.GridPoint* @injectFault1(i64 2280, %struct.GridPoint* %38, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %39 = getelementptr %struct.GridPoint* %fi24, i64 %fi23, !llfi_index !2282
  %fi25 = call %struct.GridPoint* @injectFault1(i64 2281, %struct.GridPoint* %39, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = getelementptr %struct.GridPoint* %fi25, i32 0, i32 1, !llfi_index !2283
  %fi26 = call i32** @injectFault2(i64 2282, i32** %40, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = load i32** %fi26, align 8, !llfi_index !2284
  %fi27 = call i32* @injectFault3(i64 2283, i32* %41, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = bitcast i32* %fi27 to i8*, !llfi_index !2285
  %fi28 = call i8* @injectFault4(i64 2284, i8* %42, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load i64* %1, align 8, !llfi_index !2286
  %fi29 = call i64 @injectFault0(i64 2285, i64 %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2287
  %fi30 = call %struct._IO_FILE* @injectFault13(i64 2286, %struct._IO_FILE* %44, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = call i64 @fwrite(i8* %fi28, i64 4, i64 %fi29, %struct._IO_FILE* %fi30), !llfi_index !2288
  br label %46, !llfi_index !2289

; <label>:46                                      ; preds = %29
  %47 = load i64* %i1, align 8, !llfi_index !2290
  %fi31 = call i64 @injectFault0(i64 2289, i64 %47, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %48 = add nsw i64 %fi31, 1, !llfi_index !2291
  %fi32 = call i64 @injectFault0(i64 2290, i64 %48, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi32, i64* %i1, align 8, !llfi_index !2292
  br label %23, !llfi_index !2293

; <label>:49                                      ; preds = %23
  %50 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2294
  %fi33 = call %struct._IO_FILE* @injectFault13(i64 2293, %struct._IO_FILE* %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = call i32 @fclose(%struct._IO_FILE* %fi33), !llfi_index !2295
  ret void, !llfi_index !2296
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @binary_read(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids, %struct.GridPoint* %energy_grid) #0 {
  %1 = alloca i64, align 8, !llfi_index !2297
  %2 = alloca i64, align 8, !llfi_index !2298
  %3 = alloca %struct.NuclideGridPoint**, align 8, !llfi_index !2299
  %4 = alloca %struct.GridPoint*, align 8, !llfi_index !2300
  %stat = alloca i32, align 4, !llfi_index !2301
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !2302
  %i = alloca i64, align 8, !llfi_index !2303
  %i1 = alloca i64, align 8, !llfi_index !2304
  store i64 %n_isotopes, i64* %1, align 8, !llfi_index !2305
  store i64 %n_gridpoints, i64* %2, align 8, !llfi_index !2306
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8, !llfi_index !2307
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %4, align 8, !llfi_index !2308
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str262, i32 0, i32 0)), !llfi_index !2309
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8, !llfi_index !2310
  store i64 0, i64* %i, align 8, !llfi_index !2311
  br label %6, !llfi_index !2312

; <label>:6                                       ; preds = %20, %0
  %7 = load i64* %i, align 8, !llfi_index !2313
  %fi = call i64 @injectFault0(i64 2312, i64 %7, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %8 = load i64* %1, align 8, !llfi_index !2314
  %fi1 = call i64 @injectFault0(i64 2313, i64 %8, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %9 = icmp slt i64 %fi, %fi1, !llfi_index !2315
  %fi3 = call i1 @injectFault10(i64 2314, i1 %9, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi3, label %10, label %23, !llfi_index !2316

; <label>:10                                      ; preds = %6
  %11 = load i64* %i, align 8, !llfi_index !2317
  %fi4 = call i64 @injectFault0(i64 2316, i64 %11, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %12 = load %struct.NuclideGridPoint*** %3, align 8, !llfi_index !2318
  %fi5 = call %struct.NuclideGridPoint** @injectFault7(i64 2317, %struct.NuclideGridPoint** %12, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %13 = getelementptr %struct.NuclideGridPoint** %fi5, i64 %fi4, !llfi_index !2319
  %fi6 = call %struct.NuclideGridPoint** @injectFault7(i64 2318, %struct.NuclideGridPoint** %13, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %14 = load %struct.NuclideGridPoint** %fi6, align 8, !llfi_index !2320
  %fi7 = call %struct.NuclideGridPoint* @injectFault8(i64 2319, %struct.NuclideGridPoint* %14, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %15 = bitcast %struct.NuclideGridPoint* %fi7 to i8*, !llfi_index !2321
  %fi8 = call i8* @injectFault4(i64 2320, i8* %15, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %16 = load i64* %2, align 8, !llfi_index !2322
  %fi9 = call i64 @injectFault0(i64 2321, i64 %16, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %17 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2323
  %fi2 = call %struct._IO_FILE* @injectFault13(i64 2322, %struct._IO_FILE* %17, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %18 = call i64 @fread(i8* %fi8, i64 48, i64 %fi9, %struct._IO_FILE* %fi2), !llfi_index !2324
  %19 = trunc i64 %18 to i32, !llfi_index !2325
  %fi11 = call i32 @injectFault9(i64 2324, i32 %19, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi11, i32* %stat, align 4, !llfi_index !2326
  br label %20, !llfi_index !2327

; <label>:20                                      ; preds = %10
  %21 = load i64* %i, align 8, !llfi_index !2328
  %fi12 = call i64 @injectFault0(i64 2327, i64 %21, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %22 = add nsw i64 %fi12, 1, !llfi_index !2329
  %fi13 = call i64 @injectFault0(i64 2328, i64 %22, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi13, i64* %i, align 8, !llfi_index !2330
  br label %6, !llfi_index !2331

; <label>:23                                      ; preds = %6
  store i64 0, i64* %i1, align 8, !llfi_index !2332
  br label %24, !llfi_index !2333

; <label>:24                                      ; preds = %49, %23
  %25 = load i64* %i1, align 8, !llfi_index !2334
  %fi14 = call i64 @injectFault0(i64 2333, i64 %25, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %26 = load i64* %1, align 8, !llfi_index !2335
  %fi15 = call i64 @injectFault0(i64 2334, i64 %26, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %27 = load i64* %2, align 8, !llfi_index !2336
  %fi16 = call i64 @injectFault0(i64 2335, i64 %27, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %28 = mul nsw i64 %fi15, %fi16, !llfi_index !2337
  %fi17 = call i64 @injectFault0(i64 2336, i64 %28, i32 12, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @mul_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %29 = icmp slt i64 %fi14, %fi17, !llfi_index !2338
  %fi18 = call i1 @injectFault10(i64 2337, i1 %29, i32 46, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @icmp_namestr, i32 0, i32 0)), !llfi_injectfault !21
  br i1 %fi18, label %30, label %52, !llfi_index !2339

; <label>:30                                      ; preds = %24
  %31 = load i64* %i1, align 8, !llfi_index !2340
  %fi19 = call i64 @injectFault0(i64 2339, i64 %31, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %32 = load %struct.GridPoint** %4, align 8, !llfi_index !2341
  %fi20 = call %struct.GridPoint* @injectFault1(i64 2340, %struct.GridPoint* %32, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %33 = getelementptr %struct.GridPoint* %fi20, i64 %fi19, !llfi_index !2342
  %fi10 = call %struct.GridPoint* @injectFault1(i64 2341, %struct.GridPoint* %33, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %34 = getelementptr %struct.GridPoint* %fi10, i32 0, i32 0, !llfi_index !2343
  %fi21 = call double* @injectFault11(i64 2342, double* %34, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %35 = bitcast double* %fi21 to i8*, !llfi_index !2344
  %fi22 = call i8* @injectFault4(i64 2343, i8* %35, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %36 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2345
  %fi23 = call %struct._IO_FILE* @injectFault13(i64 2344, %struct._IO_FILE* %36, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %37 = call i64 @fread(i8* %fi22, i64 8, i64 1, %struct._IO_FILE* %fi23), !llfi_index !2346
  %38 = trunc i64 %37 to i32, !llfi_index !2347
  %fi24 = call i32 @injectFault9(i64 2346, i32 %38, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi24, i32* %stat, align 4, !llfi_index !2348
  %39 = load i64* %i1, align 8, !llfi_index !2349
  %fi25 = call i64 @injectFault0(i64 2348, i64 %39, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %40 = load %struct.GridPoint** %4, align 8, !llfi_index !2350
  %fi26 = call %struct.GridPoint* @injectFault1(i64 2349, %struct.GridPoint* %40, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %41 = getelementptr %struct.GridPoint* %fi26, i64 %fi25, !llfi_index !2351
  %fi27 = call %struct.GridPoint* @injectFault1(i64 2350, %struct.GridPoint* %41, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %42 = getelementptr %struct.GridPoint* %fi27, i32 0, i32 1, !llfi_index !2352
  %fi28 = call i32** @injectFault2(i64 2351, i32** %42, i32 29, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @getelementptr_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %43 = load i32** %fi28, align 8, !llfi_index !2353
  %fi29 = call i32* @injectFault3(i64 2352, i32* %43, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %44 = bitcast i32* %fi29 to i8*, !llfi_index !2354
  %fi30 = call i8* @injectFault4(i64 2353, i8* %44, i32 44, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([8 x i8]* @bitcast_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %45 = load i64* %1, align 8, !llfi_index !2355
  %fi31 = call i64 @injectFault0(i64 2354, i64 %45, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %46 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2356
  %fi32 = call %struct._IO_FILE* @injectFault13(i64 2355, %struct._IO_FILE* %46, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %47 = call i64 @fread(i8* %fi30, i64 4, i64 %fi31, %struct._IO_FILE* %fi32), !llfi_index !2357
  %48 = trunc i64 %47 to i32, !llfi_index !2358
  %fi33 = call i32 @injectFault9(i64 2357, i32 %48, i32 33, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @trunc_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i32 %fi33, i32* %stat, align 4, !llfi_index !2359
  br label %49, !llfi_index !2360

; <label>:49                                      ; preds = %30
  %50 = load i64* %i1, align 8, !llfi_index !2361
  %fi34 = call i64 @injectFault0(i64 2360, i64 %50, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %51 = add nsw i64 %fi34, 1, !llfi_index !2362
  %fi35 = call i64 @injectFault0(i64 2361, i64 %51, i32 8, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([4 x i8]* @add_namestr, i32 0, i32 0)), !llfi_injectfault !21
  store i64 %fi35, i64* %i1, align 8, !llfi_index !2363
  br label %24, !llfi_index !2364

; <label>:52                                      ; preds = %24
  %53 = load %struct._IO_FILE** %fp, align 8, !llfi_index !2365
  %fi36 = call %struct._IO_FILE* @injectFault13(i64 2364, %struct._IO_FILE* %53, i32 27, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @load_namestr, i32 0, i32 0)), !llfi_injectfault !21
  %54 = call i32 @fclose(%struct._IO_FILE* %fi36), !llfi_index !2366
  ret void, !llfi_index !2367
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

define i64 @injectFault0(i64, i64, i32, i32, i32, i32, i8*) {
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

define %struct.GridPoint* @injectFault1(i64, %struct.GridPoint*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.GridPoint*
  store %struct.GridPoint* %1, %struct.GridPoint** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.GridPoint** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.GridPoint** %tmploc
  ret %struct.GridPoint* %updateval
}

define i32** @injectFault2(i64, i32**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32**
  store i32** %1, i32*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32*** %tmploc
  ret i32** %updateval
}

define i32* @injectFault3(i64, i32*, i32, i32, i32, i32, i8*) {
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

define i8* @injectFault4(i64, i8*, i32, i32, i32, i32, i8*) {
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

define double @injectFault5(i64, double, i32, i32, i32, i32, i8*) {
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

define i64* @injectFault6(i64, i64*, i32, i32, i32, i32, i8*) {
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

define %struct.NuclideGridPoint** @injectFault7(i64, %struct.NuclideGridPoint**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.NuclideGridPoint**
  store %struct.NuclideGridPoint** %1, %struct.NuclideGridPoint*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.NuclideGridPoint*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.NuclideGridPoint*** %tmploc
  ret %struct.NuclideGridPoint** %updateval
}

define %struct.NuclideGridPoint* @injectFault8(i64, %struct.NuclideGridPoint*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %1, %struct.NuclideGridPoint** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct.NuclideGridPoint** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct.NuclideGridPoint** %tmploc
  ret %struct.NuclideGridPoint* %updateval
}

define i32 @injectFault9(i64, i32, i32, i32, i32, i32, i8*) {
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

define i1 @injectFault10(i64, i1, i32, i32, i32, i32, i8*) {
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

define double* @injectFault11(i64, double*, i32, i32, i32, i32, i8*) {
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

define double** @injectFault12(i64, double**, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca double**
  store double** %1, double*** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast double*** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load double*** %tmploc
  ret double** %updateval
}

define %struct._IO_FILE* @injectFault13(i64, %struct._IO_FILE*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast %struct._IO_FILE** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load %struct._IO_FILE** %tmploc
  ret %struct._IO_FILE* %updateval
}

define i32 (i8*, i8*)* @injectFault14(i64, i32 (i8*, i8*)*, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i32 (i8*, i8*)*
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i32 (i8*, i8*)** %tmploc to i8*
  call void @injectFunc(i64 %0, i32 64, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i32 (i8*, i8*)** %tmploc
  ret i32 (i8*, i8*)* %updateval
}

define i8** @injectFault15(i64, i8**, i32, i32, i32, i32, i8*) {
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

define i8 @injectFault16(i64, i8, i32, i32, i32, i32, i8*) {
entry:
  %tmploc = alloca i8
  store i8 %1, i8* %tmploc
  %pre_cond = call i1 @preFunc(i64 %0, i32 %2, i32 %3, i32 %4)
  br i1 %pre_cond, label %inject, label %exit

inject:                                           ; preds = %entry
  %tmploc_cast = bitcast i8* %tmploc to i8*
  call void @injectFunc(i64 %0, i32 8, i8* %tmploc_cast, i32 %3, i32 %5, i8* %6)
  br label %exit

exit:                                             ; preds = %inject, %entry
  %updateval = load i8* %tmploc
  ret i8 %updateval
}

declare void @initInjections()

declare void @postInjections()

declare i1 @preFunc(i64, i32, i32, i32)

declare void @injectFunc(i64, i32, i8*, i32, i32, i8*)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{i64 8}
!9 = metadata !{i64 9}
!10 = metadata !{i64 10}
!11 = metadata !{i64 11}
!12 = metadata !{i64 12}
!13 = metadata !{i64 13}
!14 = metadata !{i64 14}
!15 = metadata !{i64 15}
!16 = metadata !{i64 16}
!17 = metadata !{i64 17}
!18 = metadata !{i64 18}
!19 = metadata !{i64 19}
!20 = metadata !{i64 20}
!21 = metadata !{metadata !"after"}
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
!2015 = metadata !{i64 2014}
!2016 = metadata !{i64 2015}
!2017 = metadata !{i64 2016}
!2018 = metadata !{i64 2017}
!2019 = metadata !{i64 2018}
!2020 = metadata !{i64 2019}
!2021 = metadata !{i64 2020}
!2022 = metadata !{i64 2021}
!2023 = metadata !{i64 2022}
!2024 = metadata !{i64 2023}
!2025 = metadata !{i64 2024}
!2026 = metadata !{i64 2025}
!2027 = metadata !{i64 2026}
!2028 = metadata !{i64 2027}
!2029 = metadata !{i64 2028}
!2030 = metadata !{i64 2029}
!2031 = metadata !{i64 2030}
!2032 = metadata !{i64 2031}
!2033 = metadata !{i64 2032}
!2034 = metadata !{i64 2033}
!2035 = metadata !{i64 2034}
!2036 = metadata !{i64 2035}
!2037 = metadata !{i64 2036}
!2038 = metadata !{i64 2037}
!2039 = metadata !{i64 2038}
!2040 = metadata !{i64 2039}
!2041 = metadata !{i64 2040}
!2042 = metadata !{i64 2041}
!2043 = metadata !{i64 2042}
!2044 = metadata !{i64 2043}
!2045 = metadata !{i64 2044}
!2046 = metadata !{i64 2045}
!2047 = metadata !{i64 2046}
!2048 = metadata !{i64 2047}
!2049 = metadata !{i64 2048}
!2050 = metadata !{i64 2049}
!2051 = metadata !{i64 2050}
!2052 = metadata !{i64 2051}
!2053 = metadata !{i64 2052}
!2054 = metadata !{i64 2053}
!2055 = metadata !{i64 2054}
!2056 = metadata !{i64 2055}
!2057 = metadata !{i64 2056}
!2058 = metadata !{i64 2057}
!2059 = metadata !{i64 2058}
!2060 = metadata !{i64 2059}
!2061 = metadata !{i64 2060}
!2062 = metadata !{i64 2061}
!2063 = metadata !{i64 2062}
!2064 = metadata !{i64 2063}
!2065 = metadata !{i64 2064}
!2066 = metadata !{i64 2065}
!2067 = metadata !{i64 2066}
!2068 = metadata !{i64 2067}
!2069 = metadata !{i64 2068}
!2070 = metadata !{i64 2069}
!2071 = metadata !{i64 2070}
!2072 = metadata !{i64 2071}
!2073 = metadata !{i64 2072}
!2074 = metadata !{i64 2073}
!2075 = metadata !{i64 2074}
!2076 = metadata !{i64 2075}
!2077 = metadata !{i64 2076}
!2078 = metadata !{i64 2077}
!2079 = metadata !{i64 2078}
!2080 = metadata !{i64 2079}
!2081 = metadata !{i64 2080}
!2082 = metadata !{i64 2081}
!2083 = metadata !{i64 2082}
!2084 = metadata !{i64 2083}
!2085 = metadata !{i64 2084}
!2086 = metadata !{i64 2085}
!2087 = metadata !{i64 2086}
!2088 = metadata !{i64 2087}
!2089 = metadata !{i64 2088}
!2090 = metadata !{i64 2089}
!2091 = metadata !{i64 2090}
!2092 = metadata !{i64 2091}
!2093 = metadata !{i64 2092}
!2094 = metadata !{i64 2093}
!2095 = metadata !{i64 2094}
!2096 = metadata !{i64 2095}
!2097 = metadata !{i64 2096}
!2098 = metadata !{i64 2097}
!2099 = metadata !{i64 2098}
!2100 = metadata !{i64 2099}
!2101 = metadata !{i64 2100}
!2102 = metadata !{i64 2101}
!2103 = metadata !{i64 2102}
!2104 = metadata !{i64 2103}
!2105 = metadata !{i64 2104}
!2106 = metadata !{i64 2105}
!2107 = metadata !{i64 2106}
!2108 = metadata !{i64 2107}
!2109 = metadata !{i64 2108}
!2110 = metadata !{i64 2109}
!2111 = metadata !{i64 2110}
!2112 = metadata !{i64 2111}
!2113 = metadata !{i64 2112}
!2114 = metadata !{i64 2113}
!2115 = metadata !{i64 2114}
!2116 = metadata !{i64 2115}
!2117 = metadata !{i64 2116}
!2118 = metadata !{i64 2117}
!2119 = metadata !{i64 2118}
!2120 = metadata !{i64 2119}
!2121 = metadata !{i64 2120}
!2122 = metadata !{i64 2121}
!2123 = metadata !{i64 2122}
!2124 = metadata !{i64 2123}
!2125 = metadata !{i64 2124}
!2126 = metadata !{i64 2125}
!2127 = metadata !{i64 2126}
!2128 = metadata !{i64 2127}
!2129 = metadata !{i64 2128}
!2130 = metadata !{i64 2129}
!2131 = metadata !{i64 2130}
!2132 = metadata !{i64 2131}
!2133 = metadata !{i64 2132}
!2134 = metadata !{i64 2133}
!2135 = metadata !{i64 2134}
!2136 = metadata !{i64 2135}
!2137 = metadata !{i64 2136}
!2138 = metadata !{i64 2137}
!2139 = metadata !{i64 2138}
!2140 = metadata !{i64 2139}
!2141 = metadata !{i64 2140}
!2142 = metadata !{i64 2141}
!2143 = metadata !{i64 2142}
!2144 = metadata !{i64 2143}
!2145 = metadata !{i64 2144}
!2146 = metadata !{i64 2145}
!2147 = metadata !{i64 2146}
!2148 = metadata !{i64 2147}
!2149 = metadata !{i64 2148}
!2150 = metadata !{i64 2149}
!2151 = metadata !{i64 2150}
!2152 = metadata !{i64 2151}
!2153 = metadata !{i64 2152}
!2154 = metadata !{i64 2153}
!2155 = metadata !{i64 2154}
!2156 = metadata !{i64 2155}
!2157 = metadata !{i64 2156}
!2158 = metadata !{i64 2157}
!2159 = metadata !{i64 2158}
!2160 = metadata !{i64 2159}
!2161 = metadata !{i64 2160}
!2162 = metadata !{i64 2161}
!2163 = metadata !{i64 2162}
!2164 = metadata !{i64 2163}
!2165 = metadata !{i64 2164}
!2166 = metadata !{i64 2165}
!2167 = metadata !{i64 2166}
!2168 = metadata !{i64 2167}
!2169 = metadata !{i64 2168}
!2170 = metadata !{i64 2169}
!2171 = metadata !{i64 2170}
!2172 = metadata !{i64 2171}
!2173 = metadata !{i64 2172}
!2174 = metadata !{i64 2173}
!2175 = metadata !{i64 2174}
!2176 = metadata !{i64 2175}
!2177 = metadata !{i64 2176}
!2178 = metadata !{i64 2177}
!2179 = metadata !{i64 2178}
!2180 = metadata !{i64 2179}
!2181 = metadata !{i64 2180}
!2182 = metadata !{i64 2181}
!2183 = metadata !{i64 2182}
!2184 = metadata !{i64 2183}
!2185 = metadata !{i64 2184}
!2186 = metadata !{i64 2185}
!2187 = metadata !{i64 2186}
!2188 = metadata !{i64 2187}
!2189 = metadata !{i64 2188}
!2190 = metadata !{i64 2189}
!2191 = metadata !{i64 2190}
!2192 = metadata !{i64 2191}
!2193 = metadata !{i64 2192}
!2194 = metadata !{i64 2193}
!2195 = metadata !{i64 2194}
!2196 = metadata !{i64 2195}
!2197 = metadata !{i64 2196}
!2198 = metadata !{i64 2197}
!2199 = metadata !{i64 2198}
!2200 = metadata !{i64 2199}
!2201 = metadata !{i64 2200}
!2202 = metadata !{i64 2201}
!2203 = metadata !{i64 2202}
!2204 = metadata !{i64 2203}
!2205 = metadata !{i64 2204}
!2206 = metadata !{i64 2205}
!2207 = metadata !{i64 2206}
!2208 = metadata !{i64 2207}
!2209 = metadata !{i64 2208}
!2210 = metadata !{i64 2209}
!2211 = metadata !{i64 2210}
!2212 = metadata !{i64 2211}
!2213 = metadata !{i64 2212}
!2214 = metadata !{i64 2213}
!2215 = metadata !{i64 2214}
!2216 = metadata !{i64 2215}
!2217 = metadata !{i64 2216}
!2218 = metadata !{i64 2217}
!2219 = metadata !{i64 2218}
!2220 = metadata !{i64 2219}
!2221 = metadata !{i64 2220}
!2222 = metadata !{i64 2221}
!2223 = metadata !{i64 2222}
!2224 = metadata !{i64 2223}
!2225 = metadata !{i64 2224}
!2226 = metadata !{i64 2225}
!2227 = metadata !{i64 2226}
!2228 = metadata !{i64 2227}
!2229 = metadata !{i64 2228}
!2230 = metadata !{i64 2229}
!2231 = metadata !{i64 2230}
!2232 = metadata !{i64 2231}
!2233 = metadata !{i64 2232}
!2234 = metadata !{i64 2233}
!2235 = metadata !{i64 2234}
!2236 = metadata !{i64 2235}
!2237 = metadata !{i64 2236}
!2238 = metadata !{i64 2237}
!2239 = metadata !{i64 2238}
!2240 = metadata !{i64 2239}
!2241 = metadata !{i64 2240}
!2242 = metadata !{i64 2241}
!2243 = metadata !{i64 2242}
!2244 = metadata !{i64 2243}
!2245 = metadata !{i64 2244}
!2246 = metadata !{i64 2245}
!2247 = metadata !{i64 2246}
!2248 = metadata !{i64 2247}
!2249 = metadata !{i64 2248}
!2250 = metadata !{i64 2249}
!2251 = metadata !{i64 2250}
!2252 = metadata !{i64 2251}
!2253 = metadata !{i64 2252}
!2254 = metadata !{i64 2253}
!2255 = metadata !{i64 2254}
!2256 = metadata !{i64 2255}
!2257 = metadata !{i64 2256}
!2258 = metadata !{i64 2257}
!2259 = metadata !{i64 2258}
!2260 = metadata !{i64 2259}
!2261 = metadata !{i64 2260}
!2262 = metadata !{i64 2261}
!2263 = metadata !{i64 2262}
!2264 = metadata !{i64 2263}
!2265 = metadata !{i64 2264}
!2266 = metadata !{i64 2265}
!2267 = metadata !{i64 2266}
!2268 = metadata !{i64 2267}
!2269 = metadata !{i64 2268}
!2270 = metadata !{i64 2269}
!2271 = metadata !{i64 2270}
!2272 = metadata !{i64 2271}
!2273 = metadata !{i64 2272}
!2274 = metadata !{i64 2273}
!2275 = metadata !{i64 2274}
!2276 = metadata !{i64 2275}
!2277 = metadata !{i64 2276}
!2278 = metadata !{i64 2277}
!2279 = metadata !{i64 2278}
!2280 = metadata !{i64 2279}
!2281 = metadata !{i64 2280}
!2282 = metadata !{i64 2281}
!2283 = metadata !{i64 2282}
!2284 = metadata !{i64 2283}
!2285 = metadata !{i64 2284}
!2286 = metadata !{i64 2285}
!2287 = metadata !{i64 2286}
!2288 = metadata !{i64 2287}
!2289 = metadata !{i64 2288}
!2290 = metadata !{i64 2289}
!2291 = metadata !{i64 2290}
!2292 = metadata !{i64 2291}
!2293 = metadata !{i64 2292}
!2294 = metadata !{i64 2293}
!2295 = metadata !{i64 2294}
!2296 = metadata !{i64 2295}
!2297 = metadata !{i64 2296}
!2298 = metadata !{i64 2297}
!2299 = metadata !{i64 2298}
!2300 = metadata !{i64 2299}
!2301 = metadata !{i64 2300}
!2302 = metadata !{i64 2301}
!2303 = metadata !{i64 2302}
!2304 = metadata !{i64 2303}
!2305 = metadata !{i64 2304}
!2306 = metadata !{i64 2305}
!2307 = metadata !{i64 2306}
!2308 = metadata !{i64 2307}
!2309 = metadata !{i64 2308}
!2310 = metadata !{i64 2309}
!2311 = metadata !{i64 2310}
!2312 = metadata !{i64 2311}
!2313 = metadata !{i64 2312}
!2314 = metadata !{i64 2313}
!2315 = metadata !{i64 2314}
!2316 = metadata !{i64 2315}
!2317 = metadata !{i64 2316}
!2318 = metadata !{i64 2317}
!2319 = metadata !{i64 2318}
!2320 = metadata !{i64 2319}
!2321 = metadata !{i64 2320}
!2322 = metadata !{i64 2321}
!2323 = metadata !{i64 2322}
!2324 = metadata !{i64 2323}
!2325 = metadata !{i64 2324}
!2326 = metadata !{i64 2325}
!2327 = metadata !{i64 2326}
!2328 = metadata !{i64 2327}
!2329 = metadata !{i64 2328}
!2330 = metadata !{i64 2329}
!2331 = metadata !{i64 2330}
!2332 = metadata !{i64 2331}
!2333 = metadata !{i64 2332}
!2334 = metadata !{i64 2333}
!2335 = metadata !{i64 2334}
!2336 = metadata !{i64 2335}
!2337 = metadata !{i64 2336}
!2338 = metadata !{i64 2337}
!2339 = metadata !{i64 2338}
!2340 = metadata !{i64 2339}
!2341 = metadata !{i64 2340}
!2342 = metadata !{i64 2341}
!2343 = metadata !{i64 2342}
!2344 = metadata !{i64 2343}
!2345 = metadata !{i64 2344}
!2346 = metadata !{i64 2345}
!2347 = metadata !{i64 2346}
!2348 = metadata !{i64 2347}
!2349 = metadata !{i64 2348}
!2350 = metadata !{i64 2349}
!2351 = metadata !{i64 2350}
!2352 = metadata !{i64 2351}
!2353 = metadata !{i64 2352}
!2354 = metadata !{i64 2353}
!2355 = metadata !{i64 2354}
!2356 = metadata !{i64 2355}
!2357 = metadata !{i64 2356}
!2358 = metadata !{i64 2357}
!2359 = metadata !{i64 2358}
!2360 = metadata !{i64 2359}
!2361 = metadata !{i64 2360}
!2362 = metadata !{i64 2361}
!2363 = metadata !{i64 2362}
!2364 = metadata !{i64 2363}
!2365 = metadata !{i64 2364}
!2366 = metadata !{i64 2365}
!2367 = metadata !{i64 2366}
