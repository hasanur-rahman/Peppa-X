; ModuleID = 'CalculateXS.ll'
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

; Function Attrs: nounwind uwtable
define void @calculate_micro_xs(double %p_energy, i32 %nuc, i64 %n_isotopes, i64 %n_gridpoints, %struct.GridPoint* noalias %energy_grid, %struct.NuclideGridPoint** noalias %nuclide_grids, i32 %idx, double* noalias %xs_vector) #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.GridPoint*, align 8
  %6 = alloca %struct.NuclideGridPoint**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %f = alloca double, align 8
  %low = alloca %struct.NuclideGridPoint*, align 8
  %high = alloca %struct.NuclideGridPoint*, align 8
  store double %p_energy, double* %1, align 8
  store i32 %nuc, i32* %2, align 4
  store i64 %n_isotopes, i64* %3, align 8
  store i64 %n_gridpoints, i64* %4, align 8
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %5, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %6, align 8
  store i32 %idx, i32* %7, align 4
  store double* %xs_vector, double** %8, align 8
  %9 = load i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.GridPoint** %5, align 8
  %14 = getelementptr inbounds %struct.GridPoint* %13, i64 %12
  %15 = getelementptr inbounds %struct.GridPoint* %14, i32 0, i32 1
  %16 = load i32** %15, align 8
  %17 = getelementptr inbounds i32* %16, i64 %10
  %18 = load i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64* %4, align 8
  %21 = sub nsw i64 %20, 1
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %42

; <label>:23                                      ; preds = %0
  %24 = load i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.GridPoint** %5, align 8
  %29 = getelementptr inbounds %struct.GridPoint* %28, i64 %27
  %30 = getelementptr inbounds %struct.GridPoint* %29, i32 0, i32 1
  %31 = load i32** %30, align 8
  %32 = getelementptr inbounds i32* %31, i64 %25
  %33 = load i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.NuclideGridPoint*** %6, align 8
  %39 = getelementptr inbounds %struct.NuclideGridPoint** %38, i64 %37
  %40 = load %struct.NuclideGridPoint** %39, align 8
  %41 = getelementptr inbounds %struct.NuclideGridPoint* %40, i64 %35
  store %struct.NuclideGridPoint* %41, %struct.NuclideGridPoint** %low, align 8
  br label %60

; <label>:42                                      ; preds = %0
  %43 = load i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.GridPoint** %5, align 8
  %48 = getelementptr inbounds %struct.GridPoint* %47, i64 %46
  %49 = getelementptr inbounds %struct.GridPoint* %48, i32 0, i32 1
  %50 = load i32** %49, align 8
  %51 = getelementptr inbounds i32* %50, i64 %44
  %52 = load i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.NuclideGridPoint*** %6, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint** %56, i64 %55
  %58 = load %struct.NuclideGridPoint** %57, align 8
  %59 = getelementptr inbounds %struct.NuclideGridPoint* %58, i64 %53
  store %struct.NuclideGridPoint* %59, %struct.NuclideGridPoint** %low, align 8
  br label %60

; <label>:60                                      ; preds = %42, %23
  %61 = load %struct.NuclideGridPoint** %low, align 8
  %62 = getelementptr inbounds %struct.NuclideGridPoint* %61, i64 1
  store %struct.NuclideGridPoint* %62, %struct.NuclideGridPoint** %high, align 8
  %63 = load %struct.NuclideGridPoint** %high, align 8
  %64 = getelementptr inbounds %struct.NuclideGridPoint* %63, i32 0, i32 0
  %65 = load double* %64, align 8
  %66 = load double* %1, align 8
  %67 = fsub double %65, %66
  %68 = load %struct.NuclideGridPoint** %high, align 8
  %69 = getelementptr inbounds %struct.NuclideGridPoint* %68, i32 0, i32 0
  %70 = load double* %69, align 8
  %71 = load %struct.NuclideGridPoint** %low, align 8
  %72 = getelementptr inbounds %struct.NuclideGridPoint* %71, i32 0, i32 0
  %73 = load double* %72, align 8
  %74 = fsub double %70, %73
  %75 = fdiv double %67, %74
  store double %75, double* %f, align 8
  %76 = load %struct.NuclideGridPoint** %high, align 8
  %77 = getelementptr inbounds %struct.NuclideGridPoint* %76, i32 0, i32 1
  %78 = load double* %77, align 8
  %79 = load double* %f, align 8
  %80 = load %struct.NuclideGridPoint** %high, align 8
  %81 = getelementptr inbounds %struct.NuclideGridPoint* %80, i32 0, i32 1
  %82 = load double* %81, align 8
  %83 = load %struct.NuclideGridPoint** %low, align 8
  %84 = getelementptr inbounds %struct.NuclideGridPoint* %83, i32 0, i32 1
  %85 = load double* %84, align 8
  %86 = fsub double %82, %85
  %87 = fmul double %79, %86
  %88 = fsub double %78, %87
  %89 = load double** %8, align 8
  %90 = getelementptr inbounds double* %89, i64 0
  store double %88, double* %90, align 8
  %91 = load %struct.NuclideGridPoint** %high, align 8
  %92 = getelementptr inbounds %struct.NuclideGridPoint* %91, i32 0, i32 2
  %93 = load double* %92, align 8
  %94 = load double* %f, align 8
  %95 = load %struct.NuclideGridPoint** %high, align 8
  %96 = getelementptr inbounds %struct.NuclideGridPoint* %95, i32 0, i32 2
  %97 = load double* %96, align 8
  %98 = load %struct.NuclideGridPoint** %low, align 8
  %99 = getelementptr inbounds %struct.NuclideGridPoint* %98, i32 0, i32 2
  %100 = load double* %99, align 8
  %101 = fsub double %97, %100
  %102 = fmul double %94, %101
  %103 = fsub double %93, %102
  %104 = load double** %8, align 8
  %105 = getelementptr inbounds double* %104, i64 1
  store double %103, double* %105, align 8
  %106 = load %struct.NuclideGridPoint** %high, align 8
  %107 = getelementptr inbounds %struct.NuclideGridPoint* %106, i32 0, i32 3
  %108 = load double* %107, align 8
  %109 = load double* %f, align 8
  %110 = load %struct.NuclideGridPoint** %high, align 8
  %111 = getelementptr inbounds %struct.NuclideGridPoint* %110, i32 0, i32 3
  %112 = load double* %111, align 8
  %113 = load %struct.NuclideGridPoint** %low, align 8
  %114 = getelementptr inbounds %struct.NuclideGridPoint* %113, i32 0, i32 3
  %115 = load double* %114, align 8
  %116 = fsub double %112, %115
  %117 = fmul double %109, %116
  %118 = fsub double %108, %117
  %119 = load double** %8, align 8
  %120 = getelementptr inbounds double* %119, i64 2
  store double %118, double* %120, align 8
  %121 = load %struct.NuclideGridPoint** %high, align 8
  %122 = getelementptr inbounds %struct.NuclideGridPoint* %121, i32 0, i32 4
  %123 = load double* %122, align 8
  %124 = load double* %f, align 8
  %125 = load %struct.NuclideGridPoint** %high, align 8
  %126 = getelementptr inbounds %struct.NuclideGridPoint* %125, i32 0, i32 4
  %127 = load double* %126, align 8
  %128 = load %struct.NuclideGridPoint** %low, align 8
  %129 = getelementptr inbounds %struct.NuclideGridPoint* %128, i32 0, i32 4
  %130 = load double* %129, align 8
  %131 = fsub double %127, %130
  %132 = fmul double %124, %131
  %133 = fsub double %123, %132
  %134 = load double** %8, align 8
  %135 = getelementptr inbounds double* %134, i64 3
  store double %133, double* %135, align 8
  %136 = load %struct.NuclideGridPoint** %high, align 8
  %137 = getelementptr inbounds %struct.NuclideGridPoint* %136, i32 0, i32 5
  %138 = load double* %137, align 8
  %139 = load double* %f, align 8
  %140 = load %struct.NuclideGridPoint** %high, align 8
  %141 = getelementptr inbounds %struct.NuclideGridPoint* %140, i32 0, i32 5
  %142 = load double* %141, align 8
  %143 = load %struct.NuclideGridPoint** %low, align 8
  %144 = getelementptr inbounds %struct.NuclideGridPoint* %143, i32 0, i32 5
  %145 = load double* %144, align 8
  %146 = fsub double %142, %145
  %147 = fmul double %139, %146
  %148 = fsub double %138, %147
  %149 = load double** %8, align 8
  %150 = getelementptr inbounds double* %149, i64 4
  store double %148, double* %150, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @calculate_macro_xs(double %p_energy, i32 %mat, i64 %n_isotopes, i64 %n_gridpoints, i32* noalias %num_nucs, double** noalias %concs, %struct.GridPoint* noalias %energy_grid, %struct.NuclideGridPoint** noalias %nuclide_grids, i32** noalias %mats, double* noalias %macro_xs_vector) #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double**, align 8
  %7 = alloca %struct.GridPoint*, align 8
  %8 = alloca %struct.NuclideGridPoint**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca double*, align 8
  %xs_vector = alloca [5 x double], align 16
  %p_nuc = alloca i32, align 4
  %idx = alloca i64, align 8
  %conc = alloca double, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  store double %p_energy, double* %1, align 8
  store i32 %mat, i32* %2, align 4
  store i64 %n_isotopes, i64* %3, align 8
  store i64 %n_gridpoints, i64* %4, align 8
  store i32* %num_nucs, i32** %5, align 8
  store double** %concs, double*** %6, align 8
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %7, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %8, align 8
  store i32** %mats, i32*** %9, align 8
  store double* %macro_xs_vector, double** %10, align 8
  store i64 0, i64* %idx, align 8
  store i32 0, i32* %k, align 4
  br label %11

; <label>:11                                      ; preds = %19, %0
  %12 = load i32* %k, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %11
  %15 = load i32* %k, align 4
  %16 = sext i32 %15 to i64
  %17 = load double** %10, align 8
  %18 = getelementptr inbounds double* %17, i64 %16
  store double 0.000000e+00, double* %18, align 8
  br label %19

; <label>:19                                      ; preds = %14
  %20 = load i32* %k, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %k, align 4
  br label %11

; <label>:22                                      ; preds = %11
  %23 = load i64* %3, align 8
  %24 = load i64* %4, align 8
  %25 = mul nsw i64 %23, %24
  %26 = load double* %1, align 8
  %27 = load %struct.GridPoint** %7, align 8
  %28 = call i64 @grid_search(i64 %25, double %26, %struct.GridPoint* %27)
  store i64 %28, i64* %idx, align 8
  store i32 0, i32* %j, align 4
  br label %29

; <label>:29                                      ; preds = %85, %22
  %30 = load i32* %j, align 4
  %31 = load i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32** %5, align 8
  %34 = getelementptr inbounds i32* %33, i64 %32
  %35 = load i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %88

; <label>:37                                      ; preds = %29
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32*** %9, align 8
  %43 = getelementptr inbounds i32** %42, i64 %41
  %44 = load i32** %43, align 8
  %45 = getelementptr inbounds i32* %44, i64 %39
  %46 = load i32* %45, align 4
  store i32 %46, i32* %p_nuc, align 4
  %47 = load i32* %j, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = load double*** %6, align 8
  %52 = getelementptr inbounds double** %51, i64 %50
  %53 = load double** %52, align 8
  %54 = getelementptr inbounds double* %53, i64 %48
  %55 = load double* %54, align 8
  store double %55, double* %conc, align 8
  %56 = load double* %1, align 8
  %57 = load i32* %p_nuc, align 4
  %58 = load i64* %3, align 8
  %59 = load i64* %4, align 8
  %60 = load %struct.GridPoint** %7, align 8
  %61 = load %struct.NuclideGridPoint*** %8, align 8
  %62 = load i64* %idx, align 8
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds [5 x double]* %xs_vector, i32 0, i32 0
  call void @calculate_micro_xs(double %56, i32 %57, i64 %58, i64 %59, %struct.GridPoint* %60, %struct.NuclideGridPoint** %61, i32 %63, double* %64)
  store i32 0, i32* %k1, align 4
  br label %65

; <label>:65                                      ; preds = %81, %37
  %66 = load i32* %k1, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %84

; <label>:68                                      ; preds = %65
  %69 = load i32* %k1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x double]* %xs_vector, i32 0, i64 %70
  %72 = load double* %71, align 8
  %73 = load double* %conc, align 8
  %74 = fmul double %72, %73
  %75 = load i32* %k1, align 4
  %76 = sext i32 %75 to i64
  %77 = load double** %10, align 8
  %78 = getelementptr inbounds double* %77, i64 %76
  %79 = load double* %78, align 8
  %80 = fadd double %79, %74
  store double %80, double* %78, align 8
  br label %81

; <label>:81                                      ; preds = %68
  %82 = load i32* %k1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %k1, align 4
  br label %65

; <label>:84                                      ; preds = %65
  br label %85

; <label>:85                                      ; preds = %84
  %86 = load i32* %j, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %j, align 4
  br label %29

; <label>:88                                      ; preds = %29
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @grid_search(i64 %n, double %quarry, %struct.GridPoint* %A) #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  %3 = alloca %struct.GridPoint*, align 8
  %lowerLimit = alloca i64, align 8
  %upperLimit = alloca i64, align 8
  %examinationPoint = alloca i64, align 8
  %length = alloca i64, align 8
  store i64 %n, i64* %1, align 8
  store double %quarry, double* %2, align 8
  store %struct.GridPoint* %A, %struct.GridPoint** %3, align 8
  store i64 0, i64* %lowerLimit, align 8
  %4 = load i64* %1, align 8
  %5 = sub nsw i64 %4, 1
  store i64 %5, i64* %upperLimit, align 8
  %6 = load i64* %upperLimit, align 8
  %7 = load i64* %lowerLimit, align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %length, align 8
  br label %9

; <label>:9                                       ; preds = %28, %0
  %10 = load i64* %length, align 8
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %9
  %13 = load i64* %lowerLimit, align 8
  %14 = load i64* %length, align 8
  %15 = sdiv i64 %14, 2
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %examinationPoint, align 8
  %17 = load i64* %examinationPoint, align 8
  %18 = load %struct.GridPoint** %3, align 8
  %19 = getelementptr inbounds %struct.GridPoint* %18, i64 %17
  %20 = getelementptr inbounds %struct.GridPoint* %19, i32 0, i32 0
  %21 = load double* %20, align 8
  %22 = load double* %2, align 8
  %23 = fcmp ogt double %21, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %12
  %25 = load i64* %examinationPoint, align 8
  store i64 %25, i64* %upperLimit, align 8
  br label %28

; <label>:26                                      ; preds = %12
  %27 = load i64* %examinationPoint, align 8
  store i64 %27, i64* %lowerLimit, align 8
  br label %28

; <label>:28                                      ; preds = %26, %24
  %29 = load i64* %upperLimit, align 8
  %30 = load i64* %lowerLimit, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %length, align 8
  br label %9

; <label>:32                                      ; preds = %9
  %33 = load i64* %lowerLimit, align 8
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define void @generate_grids(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8
  store i64 %n_isotopes, i64* %2, align 8
  store i64 %n_gridpoints, i64* %3, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %60, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %2, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %63

; <label>:8                                       ; preds = %4
  store i64 0, i64* %j, align 8
  br label %9

; <label>:9                                       ; preds = %56, %8
  %10 = load i64* %j, align 8
  %11 = load i64* %3, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %59

; <label>:13                                      ; preds = %9
  %14 = load i64* %j, align 8
  %15 = load i64* %i, align 8
  %16 = load %struct.NuclideGridPoint*** %1, align 8
  %17 = getelementptr inbounds %struct.NuclideGridPoint** %16, i64 %15
  %18 = load %struct.NuclideGridPoint** %17, align 8
  %19 = getelementptr inbounds %struct.NuclideGridPoint* %18, i64 %14
  %20 = getelementptr inbounds %struct.NuclideGridPoint* %19, i32 0, i32 0
  store double 3.240000e+02, double* %20, align 8
  %21 = load i64* %j, align 8
  %22 = load i64* %i, align 8
  %23 = load %struct.NuclideGridPoint*** %1, align 8
  %24 = getelementptr inbounds %struct.NuclideGridPoint** %23, i64 %22
  %25 = load %struct.NuclideGridPoint** %24, align 8
  %26 = getelementptr inbounds %struct.NuclideGridPoint* %25, i64 %21
  %27 = getelementptr inbounds %struct.NuclideGridPoint* %26, i32 0, i32 1
  store double 5.200000e+02, double* %27, align 8
  %28 = load i64* %j, align 8
  %29 = load i64* %i, align 8
  %30 = load %struct.NuclideGridPoint*** %1, align 8
  %31 = getelementptr inbounds %struct.NuclideGridPoint** %30, i64 %29
  %32 = load %struct.NuclideGridPoint** %31, align 8
  %33 = getelementptr inbounds %struct.NuclideGridPoint* %32, i64 %28
  %34 = getelementptr inbounds %struct.NuclideGridPoint* %33, i32 0, i32 2
  store double 3.450000e+02, double* %34, align 8
  %35 = load i64* %j, align 8
  %36 = load i64* %i, align 8
  %37 = load %struct.NuclideGridPoint*** %1, align 8
  %38 = getelementptr inbounds %struct.NuclideGridPoint** %37, i64 %36
  %39 = load %struct.NuclideGridPoint** %38, align 8
  %40 = getelementptr inbounds %struct.NuclideGridPoint* %39, i64 %35
  %41 = getelementptr inbounds %struct.NuclideGridPoint* %40, i32 0, i32 3
  store double 3.260000e+02, double* %41, align 8
  %42 = load i64* %j, align 8
  %43 = load i64* %i, align 8
  %44 = load %struct.NuclideGridPoint*** %1, align 8
  %45 = getelementptr inbounds %struct.NuclideGridPoint** %44, i64 %43
  %46 = load %struct.NuclideGridPoint** %45, align 8
  %47 = getelementptr inbounds %struct.NuclideGridPoint* %46, i64 %42
  %48 = getelementptr inbounds %struct.NuclideGridPoint* %47, i32 0, i32 4
  store double 4.560000e+02, double* %48, align 8
  %49 = load i64* %j, align 8
  %50 = load i64* %i, align 8
  %51 = load %struct.NuclideGridPoint*** %1, align 8
  %52 = getelementptr inbounds %struct.NuclideGridPoint** %51, i64 %50
  %53 = load %struct.NuclideGridPoint** %52, align 8
  %54 = getelementptr inbounds %struct.NuclideGridPoint* %53, i64 %49
  %55 = getelementptr inbounds %struct.NuclideGridPoint* %54, i32 0, i32 5
  store double 5.120000e+02, double* %55, align 8
  br label %56

; <label>:56                                      ; preds = %13
  %57 = load i64* %j, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %j, align 8
  br label %9

; <label>:59                                      ; preds = %9
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i64* %i, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %i, align 8
  br label %4

; <label>:63                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @generate_grids_v(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8
  store i64 %n_isotopes, i64* %2, align 8
  store i64 %n_gridpoints, i64* %3, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %66, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %2, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %69

; <label>:8                                       ; preds = %4
  store i64 0, i64* %j, align 8
  br label %9

; <label>:9                                       ; preds = %62, %8
  %10 = load i64* %j, align 8
  %11 = load i64* %3, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %65

; <label>:13                                      ; preds = %9
  %14 = call double @rn_v()
  %15 = load i64* %j, align 8
  %16 = load i64* %i, align 8
  %17 = load %struct.NuclideGridPoint*** %1, align 8
  %18 = getelementptr inbounds %struct.NuclideGridPoint** %17, i64 %16
  %19 = load %struct.NuclideGridPoint** %18, align 8
  %20 = getelementptr inbounds %struct.NuclideGridPoint* %19, i64 %15
  %21 = getelementptr inbounds %struct.NuclideGridPoint* %20, i32 0, i32 0
  store double %14, double* %21, align 8
  %22 = call double @rn_v()
  %23 = load i64* %j, align 8
  %24 = load i64* %i, align 8
  %25 = load %struct.NuclideGridPoint*** %1, align 8
  %26 = getelementptr inbounds %struct.NuclideGridPoint** %25, i64 %24
  %27 = load %struct.NuclideGridPoint** %26, align 8
  %28 = getelementptr inbounds %struct.NuclideGridPoint* %27, i64 %23
  %29 = getelementptr inbounds %struct.NuclideGridPoint* %28, i32 0, i32 1
  store double %22, double* %29, align 8
  %30 = call double @rn_v()
  %31 = load i64* %j, align 8
  %32 = load i64* %i, align 8
  %33 = load %struct.NuclideGridPoint*** %1, align 8
  %34 = getelementptr inbounds %struct.NuclideGridPoint** %33, i64 %32
  %35 = load %struct.NuclideGridPoint** %34, align 8
  %36 = getelementptr inbounds %struct.NuclideGridPoint* %35, i64 %31
  %37 = getelementptr inbounds %struct.NuclideGridPoint* %36, i32 0, i32 2
  store double %30, double* %37, align 8
  %38 = call double @rn_v()
  %39 = load i64* %j, align 8
  %40 = load i64* %i, align 8
  %41 = load %struct.NuclideGridPoint*** %1, align 8
  %42 = getelementptr inbounds %struct.NuclideGridPoint** %41, i64 %40
  %43 = load %struct.NuclideGridPoint** %42, align 8
  %44 = getelementptr inbounds %struct.NuclideGridPoint* %43, i64 %39
  %45 = getelementptr inbounds %struct.NuclideGridPoint* %44, i32 0, i32 3
  store double %38, double* %45, align 8
  %46 = call double @rn_v()
  %47 = load i64* %j, align 8
  %48 = load i64* %i, align 8
  %49 = load %struct.NuclideGridPoint*** %1, align 8
  %50 = getelementptr inbounds %struct.NuclideGridPoint** %49, i64 %48
  %51 = load %struct.NuclideGridPoint** %50, align 8
  %52 = getelementptr inbounds %struct.NuclideGridPoint* %51, i64 %47
  %53 = getelementptr inbounds %struct.NuclideGridPoint* %52, i32 0, i32 4
  store double %46, double* %53, align 8
  %54 = call double @rn_v()
  %55 = load i64* %j, align 8
  %56 = load i64* %i, align 8
  %57 = load %struct.NuclideGridPoint*** %1, align 8
  %58 = getelementptr inbounds %struct.NuclideGridPoint** %57, i64 %56
  %59 = load %struct.NuclideGridPoint** %58, align 8
  %60 = getelementptr inbounds %struct.NuclideGridPoint* %59, i64 %55
  %61 = getelementptr inbounds %struct.NuclideGridPoint* %60, i32 0, i32 5
  store double %54, double* %61, align 8
  br label %62

; <label>:62                                      ; preds = %13
  %63 = load i64* %j, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %j, align 8
  br label %9

; <label>:65                                      ; preds = %9
  br label %66

; <label>:66                                      ; preds = %65
  %67 = load i64* %i, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %i, align 8
  br label %4

; <label>:69                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_nuclide_grids(%struct.NuclideGridPoint** %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %cmp = alloca i32 (i8*, i8*)*, align 8
  %i = alloca i64, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %1, align 8
  store i64 %n_isotopes, i64* %2, align 8
  store i64 %n_gridpoints, i64* %3, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %cmp, align 8
  store i64 0, i64* %i, align 8
  br label %4

; <label>:4                                       ; preds = %16, %0
  %5 = load i64* %i, align 8
  %6 = load i64* %2, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %4
  %9 = load i64* %i, align 8
  %10 = load %struct.NuclideGridPoint*** %1, align 8
  %11 = getelementptr inbounds %struct.NuclideGridPoint** %10, i64 %9
  %12 = load %struct.NuclideGridPoint** %11, align 8
  %13 = bitcast %struct.NuclideGridPoint* %12 to i8*
  %14 = load i64* %3, align 8
  %15 = load i32 (i8*, i8*)** %cmp, align 8
  call void @qsort(i8* %13, i64 %14, i64 48, i32 (i8*, i8*)* %15)
  br label %16

; <label>:16                                      ; preds = %8
  %17 = load i64* %i, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %i, align 8
  br label %4

; <label>:19                                      ; preds = %4
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct.GridPoint* @generate_energy_grid(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.NuclideGridPoint**, align 8
  %mype = alloca i32, align 4
  %n_unionized_grid_points = alloca i64, align 8
  %cmp = alloca i32 (i8*, i8*)*, align 8
  %energy_grid = alloca %struct.GridPoint*, align 8
  %n_grid_sorted = alloca %struct.NuclideGridPoint**, align 8
  %i = alloca i64, align 8
  %full = alloca i32*, align 8
  %i1 = alloca i64, align 8
  store i64 %n_isotopes, i64* %1, align 8
  store i64 %n_gridpoints, i64* %2, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8
  store i32 0, i32* %mype, align 4
  %4 = load i32* %mype, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %6, %0
  %9 = load i64* %1, align 8
  %10 = load i64* %2, align 8
  %11 = mul nsw i64 %9, %10
  store i64 %11, i64* %n_unionized_grid_points, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %cmp, align 8
  %12 = load i64* %n_unionized_grid_points, align 8
  %13 = mul i64 %12, 16
  %14 = call noalias i8* @malloc(i64 %13) #3
  %15 = bitcast i8* %14 to %struct.GridPoint*
  store %struct.GridPoint* %15, %struct.GridPoint** %energy_grid, align 8
  %16 = load i32* %mype, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %8
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str1, i32 0, i32 0))
  br label %20

; <label>:20                                      ; preds = %18, %8
  %21 = load i64* %1, align 8
  %22 = load i64* %2, align 8
  %23 = call %struct.NuclideGridPoint** @gpmatrix(i64 %21, i64 %22)
  store %struct.NuclideGridPoint** %23, %struct.NuclideGridPoint*** %n_grid_sorted, align 8
  %24 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint** %24, i64 0
  %26 = load %struct.NuclideGridPoint** %25, align 8
  %27 = bitcast %struct.NuclideGridPoint* %26 to i8*
  %28 = load %struct.NuclideGridPoint*** %3, align 8
  %29 = getelementptr inbounds %struct.NuclideGridPoint** %28, i64 0
  %30 = load %struct.NuclideGridPoint** %29, align 8
  %31 = bitcast %struct.NuclideGridPoint* %30 to i8*
  %32 = load i64* %1, align 8
  %33 = load i64* %2, align 8
  %34 = mul nsw i64 %32, %33
  %35 = mul i64 %34, 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %31, i64 %35, i32 8, i1 false)
  %36 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8
  %37 = getelementptr inbounds %struct.NuclideGridPoint** %36, i64 0
  %38 = load %struct.NuclideGridPoint** %37, align 8
  %39 = getelementptr inbounds %struct.NuclideGridPoint* %38, i64 0
  %40 = bitcast %struct.NuclideGridPoint* %39 to i8*
  %41 = load i64* %n_unionized_grid_points, align 8
  %42 = load i32 (i8*, i8*)** %cmp, align 8
  call void @qsort(i8* %40, i64 %41, i64 48, i32 (i8*, i8*)* %42)
  %43 = load i32* %mype, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %20
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str2, i32 0, i32 0))
  br label %47

; <label>:47                                      ; preds = %45, %20
  store i64 0, i64* %i, align 8
  br label %48

; <label>:48                                      ; preds = %64, %47
  %49 = load i64* %i, align 8
  %50 = load i64* %n_unionized_grid_points, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %67

; <label>:52                                      ; preds = %48
  %53 = load i64* %i, align 8
  %54 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8
  %55 = getelementptr inbounds %struct.NuclideGridPoint** %54, i64 0
  %56 = load %struct.NuclideGridPoint** %55, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint* %56, i64 %53
  %58 = getelementptr inbounds %struct.NuclideGridPoint* %57, i32 0, i32 0
  %59 = load double* %58, align 8
  %60 = load i64* %i, align 8
  %61 = load %struct.GridPoint** %energy_grid, align 8
  %62 = getelementptr inbounds %struct.GridPoint* %61, i64 %60
  %63 = getelementptr inbounds %struct.GridPoint* %62, i32 0, i32 0
  store double %59, double* %63, align 8
  br label %64

; <label>:64                                      ; preds = %52
  %65 = load i64* %i, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %i, align 8
  br label %48

; <label>:67                                      ; preds = %48
  %68 = load %struct.NuclideGridPoint*** %n_grid_sorted, align 8
  call void @gpmatrix_free(%struct.NuclideGridPoint** %68)
  %69 = load i64* %1, align 8
  %70 = load i64* %n_unionized_grid_points, align 8
  %71 = mul nsw i64 %69, %70
  %72 = mul i64 %71, 4
  %73 = call noalias i8* @malloc(i64 %72) #3
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %full, align 8
  %75 = load i32** %full, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

; <label>:77                                      ; preds = %67
  %78 = load %struct._IO_FILE** @stderr, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:80                                      ; preds = %67
  store i64 0, i64* %i1, align 8
  br label %81

; <label>:81                                      ; preds = %95, %80
  %82 = load i64* %i1, align 8
  %83 = load i64* %n_unionized_grid_points, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %98

; <label>:85                                      ; preds = %81
  %86 = load i64* %1, align 8
  %87 = load i64* %i1, align 8
  %88 = mul nsw i64 %86, %87
  %89 = load i32** %full, align 8
  %90 = getelementptr inbounds i32* %89, i64 %88
  %91 = load i64* %i1, align 8
  %92 = load %struct.GridPoint** %energy_grid, align 8
  %93 = getelementptr inbounds %struct.GridPoint* %92, i64 %91
  %94 = getelementptr inbounds %struct.GridPoint* %93, i32 0, i32 1
  store i32* %90, i32** %94, align 8
  br label %95

; <label>:95                                      ; preds = %85
  %96 = load i64* %i1, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %i1, align 8
  br label %81

; <label>:98                                      ; preds = %81
  %99 = load %struct.GridPoint** %energy_grid, align 8
  ret %struct.GridPoint* %99
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
  %1 = alloca %struct.GridPoint*, align 8
  %2 = alloca %struct.NuclideGridPoint**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %mype = alloca i32, align 4
  %i = alloca i64, align 8
  %quarry = alloca double, align 8
  %j = alloca i64, align 8
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %1, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %2, align 8
  store i64 %n_isotopes, i64* %3, align 8
  store i64 %n_gridpoints, i64* %4, align 8
  store i32 0, i32* %mype, align 4
  %5 = load i32* %mype, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str4, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %7, %0
  store i64 0, i64* %i, align 8
  br label %10

; <label>:10                                      ; preds = %64, %9
  %11 = load i64* %i, align 8
  %12 = load i64* %3, align 8
  %13 = load i64* %4, align 8
  %14 = mul nsw i64 %12, %13
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %67

; <label>:16                                      ; preds = %10
  %17 = load i64* %i, align 8
  %18 = load %struct.GridPoint** %1, align 8
  %19 = getelementptr inbounds %struct.GridPoint* %18, i64 %17
  %20 = getelementptr inbounds %struct.GridPoint* %19, i32 0, i32 0
  %21 = load double* %20, align 8
  store double %21, double* %quarry, align 8
  %22 = load i32* %mype, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

; <label>:24                                      ; preds = %16
  %25 = load i64* %i, align 8
  %26 = srem i64 %25, 200
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

; <label>:28                                      ; preds = %24
  %29 = load i64* %i, align 8
  %30 = sitofp i64 %29 to double
  %31 = fmul double 1.000000e+02, %30
  %32 = load i64* %3, align 8
  %33 = load i64* %4, align 8
  %34 = mul nsw i64 %32, %33
  %35 = sdiv i64 %34, 1
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %31, %36
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str5, i32 0, i32 0), double %37)
  br label %39

; <label>:39                                      ; preds = %28, %24, %16
  store i64 0, i64* %j, align 8
  br label %40

; <label>:40                                      ; preds = %60, %39
  %41 = load i64* %j, align 8
  %42 = load i64* %3, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %63

; <label>:44                                      ; preds = %40
  %45 = load i64* %j, align 8
  %46 = load %struct.NuclideGridPoint*** %2, align 8
  %47 = getelementptr inbounds %struct.NuclideGridPoint** %46, i64 %45
  %48 = load %struct.NuclideGridPoint** %47, align 8
  %49 = load double* %quarry, align 8
  %50 = load i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @binary_search(%struct.NuclideGridPoint* %48, double %49, i32 %51)
  %53 = load i64* %j, align 8
  %54 = load i64* %i, align 8
  %55 = load %struct.GridPoint** %1, align 8
  %56 = getelementptr inbounds %struct.GridPoint* %55, i64 %54
  %57 = getelementptr inbounds %struct.GridPoint* %56, i32 0, i32 1
  %58 = load i32** %57, align 8
  %59 = getelementptr inbounds i32* %58, i64 %53
  store i32 %52, i32* %59, align 4
  br label %60

; <label>:60                                      ; preds = %44
  %61 = load i64* %j, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %j, align 8
  br label %40

; <label>:63                                      ; preds = %40
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load i64* %i, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %i, align 8
  br label %10

; <label>:67                                      ; preds = %10
  %68 = load i32* %mype, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %67
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0))
  br label %72

; <label>:72                                      ; preds = %70, %67
  ret void
}

; Function Attrs: nounwind uwtable
define void @logo(i32 %version) #0 {
  %1 = alloca i32, align 4
  %v = alloca [100 x i8], align 16
  store i32 %version, i32* %1, align 4
  call void @border_print()
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([488 x i8]* @.str7, i32 0, i32 0))
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([41 x i8]* @.str18, i32 0, i32 0), i32 79)
  %3 = getelementptr inbounds [100 x i8]* %v, i32 0, i32 0
  %4 = load i32* %1, align 4
  %5 = call i32 (i8*, i8*, ...)* @sprintf(i8* %3, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i32 %4) #3
  %6 = getelementptr inbounds [100 x i8]* %v, i32 0, i32 0
  call void @center_print(i8* %6, i32 79)
  call void @border_print()
  ret void
}

; Function Attrs: nounwind uwtable
define void @border_print() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([82 x i8]* @.str23, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @center_print(i8* %s, i32 %width) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 %width, i32* %2, align 4
  %3 = load i8** %1, align 8
  %4 = call i64 @strlen(i8* %3) #8
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %16, %0
  %7 = load i32* %i, align 4
  %8 = load i32* %2, align 4
  %9 = load i32* %length, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sdiv i32 %10, 2
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %6
  %14 = load %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8]* @.str310, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %16

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %6

; <label>:19                                      ; preds = %6
  %20 = load i8** %1, align 8
  %21 = load %struct._IO_FILE** @stdout, align 8
  %22 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8]* @.str411, i32 0, i32 0), %struct._IO_FILE* %23)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_results(%struct.Inputs* byval align 8 %in, i32 %mype, double %runtime, i32 %nprocs, i64 %vhash) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %lookups_per_sec = alloca i32, align 4
  %out = alloca %struct._IO_FILE*, align 8
  store i32 %mype, i32* %1, align 4
  store double %runtime, double* %2, align 8
  store i32 %nprocs, i32* %3, align 4
  store i64 %vhash, i64* %4, align 8
  %5 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 3
  %6 = load i32* %5, align 4
  %7 = sitofp i32 %6 to double
  %8 = load double* %2, align 8
  %9 = fdiv double %7, %8
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %lookups_per_sec, align 4
  %11 = load i32* %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %0
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([8 x i8]* @.str512, i32 0, i32 0), i32 79)
  call void @border_print()
  %14 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 0
  %15 = load i32* %14, align 4
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str613, i32 0, i32 0), i32 %15)
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str714, i32 0, i32 0))
  %18 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 3
  %19 = load i32* %18, align 4
  %20 = sext i32 %19 to i64
  call void @fancy_int(i64 %20)
  %21 = load i64* %4, align 8
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str8, i32 0, i32 0), i64 %21)
  call void @border_print()
  %23 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i32 0, i32 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** %out, align 8
  %24 = load %struct._IO_FILE** %out, align 8
  %25 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 0
  %26 = load i32* %25, align 4
  %27 = load i32* %lookups_per_sec, align 4
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i32 %26, i32 %27)
  %29 = load %struct._IO_FILE** %out, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %31

; <label>:31                                      ; preds = %13, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @fancy_int(i64 %a) #0 {
  %1 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp slt i64 %2, 1000
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i64 %5)
  br label %55

; <label>:7                                       ; preds = %0
  %8 = load i64* %1, align 8
  %9 = icmp sge i64 %8, 1000
  br i1 %9, label %10, label %19

; <label>:10                                      ; preds = %7
  %11 = load i64* %1, align 8
  %12 = icmp slt i64 %11, 1000000
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %10
  %14 = load i64* %1, align 8
  %15 = sdiv i64 %14, 1000
  %16 = load i64* %1, align 8
  %17 = srem i64 %16, 1000
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i64 %15, i64 %17)
  br label %54

; <label>:19                                      ; preds = %10, %7
  %20 = load i64* %1, align 8
  %21 = icmp sge i64 %20, 1000000
  br i1 %21, label %22, label %34

; <label>:22                                      ; preds = %19
  %23 = load i64* %1, align 8
  %24 = icmp slt i64 %23, 1000000000
  br i1 %24, label %25, label %34

; <label>:25                                      ; preds = %22
  %26 = load i64* %1, align 8
  %27 = sdiv i64 %26, 1000000
  %28 = load i64* %1, align 8
  %29 = srem i64 %28, 1000000
  %30 = sdiv i64 %29, 1000
  %31 = load i64* %1, align 8
  %32 = srem i64 %31, 1000
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str26, i32 0, i32 0), i64 %27, i64 %30, i64 %32)
  br label %53

; <label>:34                                      ; preds = %22, %19
  %35 = load i64* %1, align 8
  %36 = icmp sge i64 %35, 1000000000
  br i1 %36, label %37, label %49

; <label>:37                                      ; preds = %34
  %38 = load i64* %1, align 8
  %39 = sdiv i64 %38, 1000000000
  %40 = load i64* %1, align 8
  %41 = srem i64 %40, 1000000000
  %42 = sdiv i64 %41, 1000000
  %43 = load i64* %1, align 8
  %44 = srem i64 %43, 1000000
  %45 = sdiv i64 %44, 1000
  %46 = load i64* %1, align 8
  %47 = srem i64 %46, 1000
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str27, i32 0, i32 0), i64 %39, i64 %42, i64 %45, i64 %47)
  br label %52

; <label>:49                                      ; preds = %34
  %50 = load i64* %1, align 8
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i64 %50)
  br label %52

; <label>:52                                      ; preds = %49, %37
  br label %53

; <label>:53                                      ; preds = %52, %25
  br label %54

; <label>:54                                      ; preds = %53, %13
  br label %55

; <label>:55                                      ; preds = %54, %4
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %nprocs, i32 %version) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %mem_tot = alloca i32, align 4
  store i32 %nprocs, i32* %1, align 4
  store i32 %version, i32* %2, align 4
  %3 = call i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in)
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %mem_tot, align 4
  %5 = load i32* %2, align 4
  call void @logo(i32 %5)
  call void @center_print(i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0), i32 79)
  call void @border_print()
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str14, i32 0, i32 0), i32 12)
  %8 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 4
  %9 = load i8** %8, align 8
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str15, i32 0, i32 0), i8* %9)
  %11 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %12 = load i64* %11, align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str16, i32 0, i32 0), i64 %12)
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str17, i32 0, i32 0))
  %15 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %16 = load i64* %15, align 8
  call void @fancy_int(i64 %16)
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1815, i32 0, i32 0))
  %18 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %19 = load i64* %18, align 8
  %20 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %21 = load i64* %20, align 8
  %22 = mul nsw i64 %19, %21
  call void @fancy_int(i64 %22)
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str19, i32 0, i32 0))
  %24 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 3
  %25 = load i32* %24, align 4
  %26 = sext i32 %25 to i64
  call void @fancy_int(i64 %26)
  %27 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 0
  %28 = load i32* %27, align 4
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str20, i32 0, i32 0), i32 %28)
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str21, i32 0, i32 0))
  %31 = load i32* %mem_tot, align 4
  %32 = sext i32 %31 to i64
  call void @fancy_int(i64 %32)
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([15 x i8]* @.str22, i32 0, i32 0), i32 79)
  call void @border_print()
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_CLI_error() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str28, i32 0, i32 0))
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str2916, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str30, i32 0, i32 0))
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([73 x i8]* @.str31, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str32, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([57 x i8]* @.str33, i32 0, i32 0))
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str34, i32 0, i32 0))
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str35, i32 0, i32 0))
  call void @exit(i32 4) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @read_CLI(%struct.Inputs* noalias sret %agg.result, i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %input = alloca %struct.Inputs, align 8
  %user_g = alloca i32, align 4
  %i = alloca i32, align 4
  %arg = alloca i8*, align 8
  store i32 %argc, i32* %1, align 4
  store i8** %argv, i8*** %2, align 8
  %3 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 0
  store i32 1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 1
  store i64 355, i64* %4, align 8
  %5 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 2
  store i64 11303, i64* %5, align 8
  %6 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 3
  store i32 15000000, i32* %6, align 4
  %7 = call noalias i8* @malloc(i64 6) #3
  %8 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %10 = load i8** %9, align 8
  %11 = getelementptr inbounds i8* %10, i64 0
  store i8 108, i8* %11, align 1
  %12 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %13 = load i8** %12, align 8
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8 97, i8* %14, align 1
  %15 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %16 = load i8** %15, align 8
  %17 = getelementptr inbounds i8* %16, i64 2
  store i8 114, i8* %17, align 1
  %18 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %19 = load i8** %18, align 8
  %20 = getelementptr inbounds i8* %19, i64 3
  store i8 103, i8* %20, align 1
  %21 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %22 = load i8** %21, align 8
  %23 = getelementptr inbounds i8* %22, i64 4
  store i8 101, i8* %23, align 1
  %24 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %25 = load i8** %24, align 8
  %26 = getelementptr inbounds i8* %25, i64 5
  store i8 0, i8* %26, align 1
  store i32 0, i32* %user_g, align 4
  store i32 1, i32* %i, align 4
  br label %27

; <label>:27                                      ; preds = %116, %0
  %28 = load i32* %i, align 4
  %29 = load i32* %1, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %119

; <label>:31                                      ; preds = %27
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = load i8*** %2, align 8
  %35 = getelementptr inbounds i8** %34, i64 %33
  %36 = load i8** %35, align 8
  store i8* %36, i8** %arg, align 8
  %37 = load i8** %arg, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0)) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

; <label>:40                                      ; preds = %31
  %41 = load i32* %i, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4
  %43 = load i32* %1, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

; <label>:45                                      ; preds = %40
  %46 = load i32* %i, align 4
  %47 = sext i32 %46 to i64
  %48 = load i8*** %2, align 8
  %49 = getelementptr inbounds i8** %48, i64 %47
  %50 = load i8** %49, align 8
  %51 = call i32 @atoi(i8* %50) #8
  %52 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  br label %54

; <label>:53                                      ; preds = %40
  call void @print_CLI_error()
  br label %54

; <label>:54                                      ; preds = %53, %45
  br label %115

; <label>:55                                      ; preds = %31
  %56 = load i8** %arg, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0)) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

; <label>:59                                      ; preds = %55
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  %62 = load i32* %1, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

; <label>:64                                      ; preds = %59
  store i32 1, i32* %user_g, align 4
  %65 = load i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8*** %2, align 8
  %68 = getelementptr inbounds i8** %67, i64 %66
  %69 = load i8** %68, align 8
  %70 = call i64 @atol(i8* %69) #8
  %71 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  br label %73

; <label>:72                                      ; preds = %59
  call void @print_CLI_error()
  br label %73

; <label>:73                                      ; preds = %72, %64
  br label %114

; <label>:74                                      ; preds = %55
  %75 = load i8** %arg, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0)) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %93

; <label>:78                                      ; preds = %74
  %79 = load i32* %i, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %i, align 4
  %81 = load i32* %1, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

; <label>:83                                      ; preds = %78
  %84 = load i32* %i, align 4
  %85 = sext i32 %84 to i64
  %86 = load i8*** %2, align 8
  %87 = getelementptr inbounds i8** %86, i64 %85
  %88 = load i8** %87, align 8
  %89 = call i32 @atoi(i8* %88) #8
  %90 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  br label %92

; <label>:91                                      ; preds = %78
  call void @print_CLI_error()
  br label %92

; <label>:92                                      ; preds = %91, %83
  br label %113

; <label>:93                                      ; preds = %74
  %94 = load i8** %arg, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0)) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %111

; <label>:97                                      ; preds = %93
  %98 = load i32* %i, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %i, align 4
  %100 = load i32* %1, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %109

; <label>:102                                     ; preds = %97
  %103 = load i32* %i, align 4
  %104 = sext i32 %103 to i64
  %105 = load i8*** %2, align 8
  %106 = getelementptr inbounds i8** %105, i64 %104
  %107 = load i8** %106, align 8
  %108 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  store i8* %107, i8** %108, align 8
  br label %110

; <label>:109                                     ; preds = %97
  call void @print_CLI_error()
  br label %110

; <label>:110                                     ; preds = %109, %102
  br label %112

; <label>:111                                     ; preds = %93
  call void @print_CLI_error()
  br label %112

; <label>:112                                     ; preds = %111, %110
  br label %113

; <label>:113                                     ; preds = %112, %92
  br label %114

; <label>:114                                     ; preds = %113, %73
  br label %115

; <label>:115                                     ; preds = %114, %54
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32* %i, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4
  br label %27

; <label>:119                                     ; preds = %27
  %120 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 0
  %121 = load i32* %120, align 4
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %119
  call void @print_CLI_error()
  br label %124

; <label>:124                                     ; preds = %123, %119
  %125 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 1
  %126 = load i64* %125, align 8
  %127 = icmp slt i64 %126, 1
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %124
  call void @print_CLI_error()
  br label %129

; <label>:129                                     ; preds = %128, %124
  %130 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 2
  %131 = load i64* %130, align 8
  %132 = icmp slt i64 %131, 1
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %129
  call void @print_CLI_error()
  br label %134

; <label>:134                                     ; preds = %133, %129
  %135 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 3
  %136 = load i32* %135, align 4
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %134
  call void @print_CLI_error()
  br label %139

; <label>:139                                     ; preds = %138, %134
  %140 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %141 = load i8** %140, align 8
  %142 = call i32 @strcasecmp(i8* %141, i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0)) #8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

; <label>:144                                     ; preds = %139
  %145 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %146 = load i8** %145, align 8
  %147 = call i32 @strcasecmp(i8* %146, i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0)) #8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

; <label>:149                                     ; preds = %144
  %150 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %151 = load i8** %150, align 8
  %152 = call i32 @strcasecmp(i8* %151, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) #8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %149
  %155 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %156 = load i8** %155, align 8
  %157 = call i32 @strcasecmp(i8* %156, i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)) #8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

; <label>:159                                     ; preds = %154
  call void @print_CLI_error()
  br label %160

; <label>:160                                     ; preds = %159, %154, %149, %144, %139
  %161 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %162 = load i8** %161, align 8
  %163 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0)) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

; <label>:165                                     ; preds = %160
  %166 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 1
  store i64 68, i64* %166, align 8
  br label %189

; <label>:167                                     ; preds = %160
  %168 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %169 = load i8** %168, align 8
  %170 = call i32 @strcasecmp(i8* %169, i8* getelementptr inbounds ([3 x i8]* @.str42, i32 0, i32 0)) #8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

; <label>:172                                     ; preds = %167
  %173 = load i32* %user_g, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

; <label>:175                                     ; preds = %172
  %176 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 2
  store i64 238847, i64* %176, align 8
  br label %188

; <label>:177                                     ; preds = %172, %167
  %178 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 4
  %179 = load i8** %178, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([4 x i8]* @.str43, i32 0, i32 0)) #8
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

; <label>:182                                     ; preds = %177
  %183 = load i32* %user_g, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %187

; <label>:185                                     ; preds = %182
  %186 = getelementptr inbounds %struct.Inputs* %input, i32 0, i32 2
  store i64 501578, i64* %186, align 8
  br label %187

; <label>:187                                     ; preds = %185, %182, %177
  br label %188

; <label>:188                                     ; preds = %187, %175
  br label %189

; <label>:189                                     ; preds = %188, %165
  %190 = bitcast %struct.Inputs* %agg.result to i8*
  %191 = bitcast %struct.Inputs* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 40, i32 8, i1 false)
  ret void
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
  %tv = alloca %struct.timeval, align 8
  %ret = alloca double, align 8
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #3
  %2 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0
  %3 = load i64* %2, align 8
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1
  %6 = load i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = fdiv double %7, 1.000000e+06
  %9 = fadd double %4, %8
  store double %9, double* %ret, align 8
  %10 = load double* %ret, align 8
  ret double %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %version = alloca i32, align 4
  %mype = alloca i32, align 4
  %i = alloca i32, align 4
  %thread = alloca i32, align 4
  %mat = alloca i32, align 4
  %seed = alloca i64, align 8
  %omp_start = alloca double, align 8
  %omp_end = alloca double, align 8
  %p_energy = alloca double, align 8
  %vhash = alloca i64, align 8
  %nprocs = alloca i32, align 4
  %in = alloca %struct.Inputs, align 8
  %nuclide_grids = alloca %struct.NuclideGridPoint**, align 8
  %energy_grid = alloca %struct.GridPoint*, align 8
  %num_nucs = alloca i32*, align 8
  %mats = alloca i32**, align 8
  %concs = alloca double**, align 8
  %macro_xs_vector = alloca [5 x double], align 16
  %xs = alloca double*, align 8
  %line = alloca [256 x i8], align 16
  %vhash_local = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 13, i32* %version, align 4
  store i32 0, i32* %mype, align 4
  store i64 0, i64* %vhash, align 8
  %4 = load i32* %2, align 4
  %5 = load i8*** %3, align 8
  call void @read_CLI(%struct.Inputs* sret %in, i32 %4, i8** %5)
  %6 = load i32* %mype, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load i32* %nprocs, align 4
  %10 = load i32* %version, align 4
  call void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %9, i32 %10)
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = load i32* %mype, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %11
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str44, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %14, %11
  %17 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %20 = load i64* %19, align 8
  %21 = call %struct.NuclideGridPoint** @gpmatrix(i64 %18, i64 %20)
  store %struct.NuclideGridPoint** %21, %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %22 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %23 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %24 = load i64* %23, align 8
  %25 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %26 = load i64* %25, align 8
  call void @generate_grids_v(%struct.NuclideGridPoint** %22, i64 %24, i64 %26)
  %27 = load i32* %mype, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %16
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str145, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %29, %16
  %32 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %33 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %34 = load i64* %33, align 8
  %35 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %36 = load i64* %35, align 8
  call void @sort_nuclide_grids(%struct.NuclideGridPoint** %32, i64 %34, i64 %36)
  %37 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %38 = load i64* %37, align 8
  %39 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %40 = load i64* %39, align 8
  %41 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %42 = call %struct.GridPoint* @generate_energy_grid(i64 %38, i64 %40, %struct.NuclideGridPoint** %41)
  store %struct.GridPoint* %42, %struct.GridPoint** %energy_grid, align 8
  %43 = load %struct.GridPoint** %energy_grid, align 8
  %44 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %45 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %46 = load i64* %45, align 8
  %47 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %48 = load i64* %47, align 8
  call void @set_grid_ptrs(%struct.GridPoint* %43, %struct.NuclideGridPoint** %44, i64 %46, i64 %48)
  %49 = load i32* %mype, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %31
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str246, i32 0, i32 0))
  br label %53

; <label>:53                                      ; preds = %51, %31
  %54 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %55 = load i64* %54, align 8
  %56 = call i32* @load_num_nucs(i64 %55)
  store i32* %56, i32** %num_nucs, align 8
  %57 = load i32** %num_nucs, align 8
  %58 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %59 = load i64* %58, align 8
  %60 = call i32** @load_mats(i32* %57, i64 %59)
  store i32** %60, i32*** %mats, align 8
  %61 = load i32** %num_nucs, align 8
  %62 = call double** @load_concs_v(i32* %61)
  store double** %62, double*** %concs, align 8
  %63 = load i32* %mype, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %53
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str347, i32 0, i32 0))
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([11 x i8]* @.str448, i32 0, i32 0), i32 79)
  call void @border_print()
  br label %67

; <label>:67                                      ; preds = %65, %53
  %68 = call double @get_wtime()
  store double %68, double* %omp_start, align 8
  %69 = call noalias i8* @calloc(i64 5, i64 8) #3
  %70 = bitcast i8* %69 to double*
  store double* %70, double** %xs, align 8
  store i32 0, i32* %thread, align 4
  store i64 36, i64* %seed, align 8
  store i32 0, i32* %i, align 4
  br label %71

; <label>:71                                      ; preds = %141, %67
  %72 = load i32* %i, align 4
  %73 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 3
  %74 = load i32* %73, align 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %144

; <label>:76                                      ; preds = %71
  %77 = load i32* %mype, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %103

; <label>:79                                      ; preds = %76
  %80 = load i32* %thread, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %103

; <label>:82                                      ; preds = %79
  %83 = load i32* %i, align 4
  %84 = srem i32 %83, 1000
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %103

; <label>:86                                      ; preds = %82
  %87 = load i32* %i, align 4
  %88 = sitofp i32 %87 to double
  %89 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 3
  %90 = load i32* %89, align 4
  %91 = sitofp i32 %90 to double
  %92 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 0
  %93 = load i32* %92, align 4
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %91, %94
  %96 = fdiv double %88, %95
  %97 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 0
  %98 = load i32* %97, align 4
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %96, %99
  %101 = fmul double %100, 1.000000e+02
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str549, i32 0, i32 0), double %101)
  br label %103

; <label>:103                                     ; preds = %86, %82, %79, %76
  %104 = call double @rn_v()
  store double %104, double* %p_energy, align 8
  %105 = call i32 @pick_mat(i64* %seed)
  store i32 %105, i32* %mat, align 4
  %106 = load double* %p_energy, align 8
  %107 = load i32* %mat, align 4
  %108 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %109 = load i64* %108, align 8
  %110 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %111 = load i64* %110, align 8
  %112 = load i32** %num_nucs, align 8
  %113 = load double*** %concs, align 8
  %114 = load %struct.GridPoint** %energy_grid, align 8
  %115 = load %struct.NuclideGridPoint*** %nuclide_grids, align 8
  %116 = load i32*** %mats, align 8
  %117 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i32 0
  call void @calculate_macro_xs(double %106, i32 %107, i64 %109, i64 %111, i32* %112, double** %113, %struct.GridPoint* %114, %struct.NuclideGridPoint** %115, i32** %116, double* %117)
  %118 = load double** %xs, align 8
  %119 = bitcast double* %118 to i8*
  %120 = bitcast [5 x double]* %macro_xs_vector to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 40, i32 8, i1 false)
  %121 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %122 = load double* %p_energy, align 8
  %123 = load i32* %mat, align 4
  %124 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i64 0
  %125 = load double* %124, align 8
  %126 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i64 1
  %127 = load double* %126, align 8
  %128 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i64 2
  %129 = load double* %128, align 8
  %130 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i64 3
  %131 = load double* %130, align 8
  %132 = getelementptr inbounds [5 x double]* %macro_xs_vector, i32 0, i64 4
  %133 = load double* %132, align 8
  %134 = call i32 (i8*, i8*, ...)* @sprintf(i8* %121, i8* getelementptr inbounds ([39 x i8]* @.str650, i32 0, i32 0), double %122, i32 %123, double %125, double %127, double %129, double %131, double %133) #3
  %135 = getelementptr inbounds [256 x i8]* %line, i32 0, i32 0
  %136 = call i32 @hash(i8* %135, i32 10000)
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %vhash_local, align 8
  %138 = load i64* %vhash_local, align 8
  %139 = load i64* %vhash, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %vhash, align 8
  br label %141

; <label>:141                                     ; preds = %103
  %142 = load i32* %i, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4
  br label %71

; <label>:144                                     ; preds = %71
  %145 = load i32* %mype, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

; <label>:147                                     ; preds = %144
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str347, i32 0, i32 0))
  %149 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str751, i32 0, i32 0))
  br label %150

; <label>:150                                     ; preds = %147, %144
  %151 = call double @get_wtime()
  store double %151, double* %omp_end, align 8
  %152 = load i32* %mype, align 4
  %153 = load double* %omp_end, align 8
  %154 = load double* %omp_start, align 8
  %155 = fsub double %153, %154
  %156 = load i32* %nprocs, align 4
  %157 = load i64* %vhash, align 8
  call void @print_results(%struct.Inputs* byval align 8 %in, i32 %152, double %155, i32 %156, i64 %157)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32* @load_num_nucs(i64 %n_isotopes) #0 {
  %1 = alloca i64, align 8
  %num_nucs = alloca i32*, align 8
  store i64 %n_isotopes, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 48) #3
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %num_nucs, align 8
  %4 = load i64* %1, align 8
  %5 = icmp eq i64 %4, 68
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32** %num_nucs, align 8
  %8 = getelementptr inbounds i32* %7, i64 0
  store i32 34, i32* %8, align 4
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load i32** %num_nucs, align 8
  %11 = getelementptr inbounds i32* %10, i64 0
  store i32 321, i32* %11, align 4
  br label %12

; <label>:12                                      ; preds = %9, %6
  %13 = load i32** %num_nucs, align 8
  %14 = getelementptr inbounds i32* %13, i64 1
  store i32 5, i32* %14, align 4
  %15 = load i32** %num_nucs, align 8
  %16 = getelementptr inbounds i32* %15, i64 2
  store i32 4, i32* %16, align 4
  %17 = load i32** %num_nucs, align 8
  %18 = getelementptr inbounds i32* %17, i64 3
  store i32 4, i32* %18, align 4
  %19 = load i32** %num_nucs, align 8
  %20 = getelementptr inbounds i32* %19, i64 4
  store i32 27, i32* %20, align 4
  %21 = load i32** %num_nucs, align 8
  %22 = getelementptr inbounds i32* %21, i64 5
  store i32 21, i32* %22, align 4
  %23 = load i32** %num_nucs, align 8
  %24 = getelementptr inbounds i32* %23, i64 6
  store i32 21, i32* %24, align 4
  %25 = load i32** %num_nucs, align 8
  %26 = getelementptr inbounds i32* %25, i64 7
  store i32 21, i32* %26, align 4
  %27 = load i32** %num_nucs, align 8
  %28 = getelementptr inbounds i32* %27, i64 8
  store i32 21, i32* %28, align 4
  %29 = load i32** %num_nucs, align 8
  %30 = getelementptr inbounds i32* %29, i64 9
  store i32 21, i32* %30, align 4
  %31 = load i32** %num_nucs, align 8
  %32 = getelementptr inbounds i32* %31, i64 10
  store i32 9, i32* %32, align 4
  %33 = load i32** %num_nucs, align 8
  %34 = getelementptr inbounds i32* %33, i64 11
  store i32 9, i32* %34, align 4
  %35 = load i32** %num_nucs, align 8
  ret i32* %35
}

; Function Attrs: nounwind uwtable
define i32** @load_mats(i32* %num_nucs, i64 %n_isotopes) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %mats = alloca i32**, align 8
  %i = alloca i32, align 4
  %mats0_Sml = alloca [34 x i32], align 16
  %mats0_Lrg = alloca [321 x i32], align 16
  %i1 = alloca i32, align 4
  %mats1 = alloca [5 x i32], align 16
  %mats2 = alloca [4 x i32], align 16
  %mats3 = alloca [4 x i32], align 16
  %mats4 = alloca [27 x i32], align 16
  %mats5 = alloca [21 x i32], align 16
  %mats6 = alloca [21 x i32], align 16
  %mats7 = alloca [21 x i32], align 16
  %mats8 = alloca [21 x i32], align 16
  %mats9 = alloca [21 x i32], align 16
  %mats10 = alloca [9 x i32], align 16
  %mats11 = alloca [9 x i32], align 16
  store i32* %num_nucs, i32** %1, align 8
  store i64 %n_isotopes, i64* %2, align 8
  %3 = call noalias i8* @malloc(i64 96) #3
  %4 = bitcast i8* %3 to i32**
  store i32** %4, i32*** %mats, align 8
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %22, %0
  %6 = load i32* %i, align 4
  %7 = icmp slt i32 %6, 12
  br i1 %7, label %8, label %25

; <label>:8                                       ; preds = %5
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32** %1, align 8
  %12 = getelementptr inbounds i32* %11, i64 %10
  %13 = load i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = call noalias i8* @malloc(i64 %15) #3
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %i, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32*** %mats, align 8
  %21 = getelementptr inbounds i32** %20, i64 %19
  store i32* %17, i32** %21, align 8
  br label %22

; <label>:22                                      ; preds = %8
  %23 = load i32* %i, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4
  br label %5

; <label>:25                                      ; preds = %5
  %26 = bitcast [34 x i32]* %mats0_Sml to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([34 x i32]* @load_mats.mats0_Sml to i8*), i64 136, i32 16, i1 false)
  %27 = bitcast [321 x i32]* %mats0_Lrg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([321 x i32]* @load_mats.mats0_Lrg to i8*), i64 1284, i32 16, i1 false)
  store i32 0, i32* %i1, align 4
  br label %28

; <label>:28                                      ; preds = %38, %25
  %29 = load i32* %i1, align 4
  %30 = icmp slt i32 %29, 287
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %28
  %32 = load i32* %i1, align 4
  %33 = add nsw i32 68, %32
  %34 = load i32* %i1, align 4
  %35 = add nsw i32 34, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [321 x i32]* %mats0_Lrg, i32 0, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

; <label>:38                                      ; preds = %31
  %39 = load i32* %i1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i1, align 4
  br label %28

; <label>:41                                      ; preds = %28
  %42 = bitcast [5 x i32]* %mats1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast ([5 x i32]* @load_mats.mats1 to i8*), i64 20, i32 16, i1 false)
  %43 = bitcast [4 x i32]* %mats2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([4 x i32]* @load_mats.mats2 to i8*), i64 16, i32 16, i1 false)
  %44 = bitcast [4 x i32]* %mats3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast ([4 x i32]* @load_mats.mats3 to i8*), i64 16, i32 16, i1 false)
  %45 = bitcast [27 x i32]* %mats4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* bitcast ([27 x i32]* @load_mats.mats4 to i8*), i64 108, i32 16, i1 false)
  %46 = bitcast [21 x i32]* %mats5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast ([21 x i32]* @load_mats.mats5 to i8*), i64 84, i32 16, i1 false)
  %47 = bitcast [21 x i32]* %mats6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([21 x i32]* @load_mats.mats6 to i8*), i64 84, i32 16, i1 false)
  %48 = bitcast [21 x i32]* %mats7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast ([21 x i32]* @load_mats.mats7 to i8*), i64 84, i32 16, i1 false)
  %49 = bitcast [21 x i32]* %mats8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* bitcast ([21 x i32]* @load_mats.mats8 to i8*), i64 84, i32 16, i1 false)
  %50 = bitcast [21 x i32]* %mats9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 84, i32 16, i1 false)
  %51 = bitcast [9 x i32]* %mats10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast ([9 x i32]* @load_mats.mats10 to i8*), i64 36, i32 16, i1 false)
  %52 = bitcast [9 x i32]* %mats11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast ([9 x i32]* @load_mats.mats11 to i8*), i64 36, i32 16, i1 false)
  %53 = load i64* %2, align 8
  %54 = icmp eq i64 %53, 68
  br i1 %54, label %55, label %66

; <label>:55                                      ; preds = %41
  %56 = load i32*** %mats, align 8
  %57 = getelementptr inbounds i32** %56, i64 0
  %58 = load i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = bitcast [34 x i32]* %mats0_Sml to i8*
  %61 = load i32** %1, align 8
  %62 = getelementptr inbounds i32* %61, i64 0
  %63 = load i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 %65, i32 4, i1 false)
  br label %77

; <label>:66                                      ; preds = %41
  %67 = load i32*** %mats, align 8
  %68 = getelementptr inbounds i32** %67, i64 0
  %69 = load i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = bitcast [321 x i32]* %mats0_Lrg to i8*
  %72 = load i32** %1, align 8
  %73 = getelementptr inbounds i32* %72, i64 0
  %74 = load i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 %76, i32 4, i1 false)
  br label %77

; <label>:77                                      ; preds = %66, %55
  %78 = load i32*** %mats, align 8
  %79 = getelementptr inbounds i32** %78, i64 1
  %80 = load i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = bitcast [5 x i32]* %mats1 to i8*
  %83 = load i32** %1, align 8
  %84 = getelementptr inbounds i32* %83, i64 1
  %85 = load i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 %87, i32 4, i1 false)
  %88 = load i32*** %mats, align 8
  %89 = getelementptr inbounds i32** %88, i64 2
  %90 = load i32** %89, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = bitcast [4 x i32]* %mats2 to i8*
  %93 = load i32** %1, align 8
  %94 = getelementptr inbounds i32* %93, i64 2
  %95 = load i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 %97, i32 4, i1 false)
  %98 = load i32*** %mats, align 8
  %99 = getelementptr inbounds i32** %98, i64 3
  %100 = load i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = bitcast [4 x i32]* %mats3 to i8*
  %103 = load i32** %1, align 8
  %104 = getelementptr inbounds i32* %103, i64 3
  %105 = load i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 %107, i32 4, i1 false)
  %108 = load i32*** %mats, align 8
  %109 = getelementptr inbounds i32** %108, i64 4
  %110 = load i32** %109, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = bitcast [27 x i32]* %mats4 to i8*
  %113 = load i32** %1, align 8
  %114 = getelementptr inbounds i32* %113, i64 4
  %115 = load i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 %117, i32 4, i1 false)
  %118 = load i32*** %mats, align 8
  %119 = getelementptr inbounds i32** %118, i64 5
  %120 = load i32** %119, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = bitcast [21 x i32]* %mats5 to i8*
  %123 = load i32** %1, align 8
  %124 = getelementptr inbounds i32* %123, i64 5
  %125 = load i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 %127, i32 4, i1 false)
  %128 = load i32*** %mats, align 8
  %129 = getelementptr inbounds i32** %128, i64 6
  %130 = load i32** %129, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = bitcast [21 x i32]* %mats6 to i8*
  %133 = load i32** %1, align 8
  %134 = getelementptr inbounds i32* %133, i64 6
  %135 = load i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 %137, i32 4, i1 false)
  %138 = load i32*** %mats, align 8
  %139 = getelementptr inbounds i32** %138, i64 7
  %140 = load i32** %139, align 8
  %141 = bitcast i32* %140 to i8*
  %142 = bitcast [21 x i32]* %mats7 to i8*
  %143 = load i32** %1, align 8
  %144 = getelementptr inbounds i32* %143, i64 7
  %145 = load i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 %147, i32 4, i1 false)
  %148 = load i32*** %mats, align 8
  %149 = getelementptr inbounds i32** %148, i64 8
  %150 = load i32** %149, align 8
  %151 = bitcast i32* %150 to i8*
  %152 = bitcast [21 x i32]* %mats8 to i8*
  %153 = load i32** %1, align 8
  %154 = getelementptr inbounds i32* %153, i64 8
  %155 = load i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 %157, i32 4, i1 false)
  %158 = load i32*** %mats, align 8
  %159 = getelementptr inbounds i32** %158, i64 9
  %160 = load i32** %159, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = bitcast [21 x i32]* %mats9 to i8*
  %163 = load i32** %1, align 8
  %164 = getelementptr inbounds i32* %163, i64 9
  %165 = load i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 %167, i32 4, i1 false)
  %168 = load i32*** %mats, align 8
  %169 = getelementptr inbounds i32** %168, i64 10
  %170 = load i32** %169, align 8
  %171 = bitcast i32* %170 to i8*
  %172 = bitcast [9 x i32]* %mats10 to i8*
  %173 = load i32** %1, align 8
  %174 = getelementptr inbounds i32* %173, i64 10
  %175 = load i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* %172, i64 %177, i32 4, i1 false)
  %178 = load i32*** %mats, align 8
  %179 = getelementptr inbounds i32** %178, i64 11
  %180 = load i32** %179, align 8
  %181 = bitcast i32* %180 to i8*
  %182 = bitcast [9 x i32]* %mats11 to i8*
  %183 = load i32** %1, align 8
  %184 = getelementptr inbounds i32* %183, i64 11
  %185 = load i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* %182, i64 %187, i32 4, i1 false)
  %188 = load i32*** %mats, align 8
  ret i32** %188
}

; Function Attrs: nounwind uwtable
define double** @load_concs(i32* %num_nucs) #0 {
  %1 = alloca i32*, align 8
  %concs = alloca double**, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %num_nucs, i32** %1, align 8
  %2 = call noalias i8* @malloc(i64 96) #3
  %3 = bitcast i8* %2 to double**
  store double** %3, double*** %concs, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %21, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 12
  br i1 %6, label %7, label %24

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32** %1, align 8
  %11 = getelementptr inbounds i32* %10, i64 %9
  %12 = load i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #3
  %16 = bitcast i8* %15 to double*
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load double*** %concs, align 8
  %20 = getelementptr inbounds double** %19, i64 %18
  store double* %16, double** %20, align 8
  br label %21

; <label>:21                                      ; preds = %7
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %4

; <label>:24                                      ; preds = %4
  store i32 0, i32* %i1, align 4
  br label %25

; <label>:25                                      ; preds = %50, %24
  %26 = load i32* %i1, align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %53

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j, align 4
  br label %29

; <label>:29                                      ; preds = %46, %28
  %30 = load i32* %j, align 4
  %31 = load i32* %i1, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32** %1, align 8
  %34 = getelementptr inbounds i32* %33, i64 %32
  %35 = load i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %49

; <label>:37                                      ; preds = %29
  %38 = load i32* %j, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32* %i1, align 4
  %41 = sext i32 %40 to i64
  %42 = load double*** %concs, align 8
  %43 = getelementptr inbounds double** %42, i64 %41
  %44 = load double** %43, align 8
  %45 = getelementptr inbounds double* %44, i64 %39
  store double 1.140000e+02, double* %45, align 8
  br label %46

; <label>:46                                      ; preds = %37
  %47 = load i32* %j, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %j, align 4
  br label %29

; <label>:49                                      ; preds = %29
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load i32* %i1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i1, align 4
  br label %25

; <label>:53                                      ; preds = %25
  %54 = load double*** %concs, align 8
  ret double** %54
}

; Function Attrs: nounwind uwtable
define double** @load_concs_v(i32* %num_nucs) #0 {
  %1 = alloca i32*, align 8
  %concs = alloca double**, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %num_nucs, i32** %1, align 8
  %2 = call noalias i8* @malloc(i64 96) #3
  %3 = bitcast i8* %2 to double**
  store double** %3, double*** %concs, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %21, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 12
  br i1 %6, label %7, label %24

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32** %1, align 8
  %11 = getelementptr inbounds i32* %10, i64 %9
  %12 = load i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #3
  %16 = bitcast i8* %15 to double*
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load double*** %concs, align 8
  %20 = getelementptr inbounds double** %19, i64 %18
  store double* %16, double** %20, align 8
  br label %21

; <label>:21                                      ; preds = %7
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %4

; <label>:24                                      ; preds = %4
  store i32 0, i32* %i1, align 4
  br label %25

; <label>:25                                      ; preds = %51, %24
  %26 = load i32* %i1, align 4
  %27 = icmp slt i32 %26, 12
  br i1 %27, label %28, label %54

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j, align 4
  br label %29

; <label>:29                                      ; preds = %47, %28
  %30 = load i32* %j, align 4
  %31 = load i32* %i1, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32** %1, align 8
  %34 = getelementptr inbounds i32* %33, i64 %32
  %35 = load i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %50

; <label>:37                                      ; preds = %29
  %38 = call double @rn_v()
  %39 = load i32* %j, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32* %i1, align 4
  %42 = sext i32 %41 to i64
  %43 = load double*** %concs, align 8
  %44 = getelementptr inbounds double** %43, i64 %42
  %45 = load double** %44, align 8
  %46 = getelementptr inbounds double* %45, i64 %40
  store double %38, double* %46, align 8
  br label %47

; <label>:47                                      ; preds = %37
  %48 = load i32* %j, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %j, align 4
  br label %29

; <label>:50                                      ; preds = %29
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load i32* %i1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i1, align 4
  br label %25

; <label>:54                                      ; preds = %25
  %55 = load double*** %concs, align 8
  ret double** %55
}

; Function Attrs: nounwind uwtable
define i32 @pick_mat(i64* %seed) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %dist = alloca [12 x double], align 16
  %roll = alloca double, align 8
  %i = alloca i32, align 4
  %running = alloca double, align 8
  %j = alloca i32, align 4
  store i64* %seed, i64** %2, align 8
  %3 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 0
  store double 1.400000e-01, double* %3, align 8
  %4 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 1
  store double 5.200000e-02, double* %4, align 8
  %5 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 2
  store double 2.750000e-01, double* %5, align 8
  %6 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 3
  store double 1.340000e-01, double* %6, align 8
  %7 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 4
  store double 1.540000e-01, double* %7, align 8
  %8 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 5
  store double 6.400000e-02, double* %8, align 8
  %9 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 6
  store double 6.600000e-02, double* %9, align 8
  %10 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 7
  store double 5.500000e-02, double* %10, align 8
  %11 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 8
  store double 8.000000e-03, double* %11, align 8
  %12 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 9
  store double 1.500000e-02, double* %12, align 8
  %13 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 10
  store double 2.500000e-02, double* %13, align 8
  %14 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 11
  store double 1.300000e-02, double* %14, align 8
  %15 = call double @rn_v()
  store double %15, double* %roll, align 8
  store i32 0, i32* %i, align 4
  br label %16

; <label>:16                                      ; preds = %41, %0
  %17 = load i32* %i, align 4
  %18 = icmp slt i32 %17, 12
  br i1 %18, label %19, label %44

; <label>:19                                      ; preds = %16
  store double 0.000000e+00, double* %running, align 8
  %20 = load i32* %i, align 4
  store i32 %20, i32* %j, align 4
  br label %21

; <label>:21                                      ; preds = %31, %19
  %22 = load i32* %j, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

; <label>:24                                      ; preds = %21
  %25 = load i32* %j, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [12 x double]* %dist, i32 0, i64 %26
  %28 = load double* %27, align 8
  %29 = load double* %running, align 8
  %30 = fadd double %29, %28
  store double %30, double* %running, align 8
  br label %31

; <label>:31                                      ; preds = %24
  %32 = load i32* %j, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %j, align 4
  br label %21

; <label>:34                                      ; preds = %21
  %35 = load double* %roll, align 8
  %36 = load double* %running, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %34
  %39 = load i32* %i, align 4
  store i32 %39, i32* %1
  br label %45

; <label>:40                                      ; preds = %34
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4
  br label %16

; <label>:44                                      ; preds = %16
  store i32 0, i32* %1
  br label %45

; <label>:45                                      ; preds = %44, %38
  %46 = load i32* %1
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define %struct.NuclideGridPoint** @gpmatrix(i64 %m, i64 %n) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %full = alloca %struct.NuclideGridPoint*, align 8
  %M = alloca %struct.NuclideGridPoint**, align 8
  store i64 %m, i64* %1, align 8
  store i64 %n, i64* %2, align 8
  %3 = load i64* %1, align 8
  %4 = load i64* %2, align 8
  %5 = mul i64 %3, %4
  %6 = mul i64 %5, 48
  %7 = call noalias i8* @malloc(i64 %6) #3
  %8 = bitcast i8* %7 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %8, %struct.NuclideGridPoint** %full, align 8
  %9 = load i64* %1, align 8
  %10 = mul i64 %9, 8
  %11 = call noalias i8* @malloc(i64 %10) #3
  %12 = bitcast i8* %11 to %struct.NuclideGridPoint**
  store %struct.NuclideGridPoint** %12, %struct.NuclideGridPoint*** %M, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %13

; <label>:13                                      ; preds = %37, %0
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64* %1, align 8
  %17 = load i64* %2, align 8
  %18 = mul i64 %16, %17
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %40

; <label>:20                                      ; preds = %13
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64* %2, align 8
  %24 = urem i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

; <label>:26                                      ; preds = %20
  %27 = load i32* %i, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.NuclideGridPoint** %full, align 8
  %30 = getelementptr inbounds %struct.NuclideGridPoint* %29, i64 %28
  %31 = load i32* %j, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %j, align 4
  %33 = sext i32 %31 to i64
  %34 = load %struct.NuclideGridPoint*** %M, align 8
  %35 = getelementptr inbounds %struct.NuclideGridPoint** %34, i64 %33
  store %struct.NuclideGridPoint* %30, %struct.NuclideGridPoint** %35, align 8
  br label %36

; <label>:36                                      ; preds = %26, %20
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4
  br label %13

; <label>:40                                      ; preds = %13
  %41 = load %struct.NuclideGridPoint*** %M, align 8
  ret %struct.NuclideGridPoint** %41
}

; Function Attrs: nounwind uwtable
define void @gpmatrix_free(%struct.NuclideGridPoint** %M) #0 {
  %1 = alloca %struct.NuclideGridPoint**, align 8
  store %struct.NuclideGridPoint** %M, %struct.NuclideGridPoint*** %1, align 8
  %2 = load %struct.NuclideGridPoint*** %1, align 8
  %3 = load %struct.NuclideGridPoint** %2, align 8
  %4 = bitcast %struct.NuclideGridPoint* %3 to i8*
  call void @free(i8* %4) #3
  %5 = load %struct.NuclideGridPoint*** %1, align 8
  %6 = bitcast %struct.NuclideGridPoint** %5 to i8*
  call void @free(i8* %6) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @NGP_compare(i8* %a, i8* %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %i = alloca %struct.NuclideGridPoint*, align 8
  %j = alloca %struct.NuclideGridPoint*, align 8
  store i8* %a, i8** %2, align 8
  store i8* %b, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %5, %struct.NuclideGridPoint** %i, align 8
  %6 = load i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %7, %struct.NuclideGridPoint** %j, align 8
  %8 = load %struct.NuclideGridPoint** %i, align 8
  %9 = getelementptr inbounds %struct.NuclideGridPoint* %8, i32 0, i32 0
  %10 = load double* %9, align 8
  %11 = load %struct.NuclideGridPoint** %j, align 8
  %12 = getelementptr inbounds %struct.NuclideGridPoint* %11, i32 0, i32 0
  %13 = load double* %12, align 8
  %14 = fcmp ogt double %10, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  store i32 1, i32* %1
  br label %26

; <label>:16                                      ; preds = %0
  %17 = load %struct.NuclideGridPoint** %i, align 8
  %18 = getelementptr inbounds %struct.NuclideGridPoint* %17, i32 0, i32 0
  %19 = load double* %18, align 8
  %20 = load %struct.NuclideGridPoint** %j, align 8
  %21 = getelementptr inbounds %struct.NuclideGridPoint* %20, i32 0, i32 0
  %22 = load double* %21, align 8
  %23 = fcmp olt double %19, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  store i32 -1, i32* %1
  br label %26

; <label>:25                                      ; preds = %16
  store i32 0, i32* %1
  br label %26

; <label>:26                                      ; preds = %25, %24, %15
  %27 = load i32* %1
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @binary_search(%struct.NuclideGridPoint* %A, double %quarry, i32 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.NuclideGridPoint*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %mid = alloca i32, align 4
  store %struct.NuclideGridPoint* %A, %struct.NuclideGridPoint** %2, align 8
  store double %quarry, double* %3, align 8
  store i32 %n, i32* %4, align 4
  store i32 0, i32* %min, align 4
  %5 = load i32* %4, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %max, align 4
  %7 = load %struct.NuclideGridPoint** %2, align 8
  %8 = getelementptr inbounds %struct.NuclideGridPoint* %7, i64 0
  %9 = getelementptr inbounds %struct.NuclideGridPoint* %8, i32 0, i32 0
  %10 = load double* %9, align 8
  %11 = load double* %3, align 8
  %12 = fcmp ogt double %10, %11
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %0
  store i32 0, i32* %1
  br label %73

; <label>:14                                      ; preds = %0
  %15 = load i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = load %struct.NuclideGridPoint** %2, align 8
  %19 = getelementptr inbounds %struct.NuclideGridPoint* %18, i64 %17
  %20 = getelementptr inbounds %struct.NuclideGridPoint* %19, i32 0, i32 0
  %21 = load double* %20, align 8
  %22 = load double* %3, align 8
  %23 = fcmp olt double %21, %22
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %14
  %25 = load i32* %4, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %1
  br label %73

; <label>:27                                      ; preds = %14
  br label %28

; <label>:28                                      ; preds = %27
  br label %29

; <label>:29                                      ; preds = %70, %28
  %30 = load i32* %max, align 4
  %31 = load i32* %min, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %71

; <label>:33                                      ; preds = %29
  %34 = load i32* %min, align 4
  %35 = sitofp i32 %34 to double
  %36 = load i32* %max, align 4
  %37 = load i32* %min, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %39, 2.000000e+00
  %41 = call double @floor(double %40) #9
  %42 = fadd double %35, %41
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %mid, align 4
  %44 = load i32* %mid, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.NuclideGridPoint** %2, align 8
  %47 = getelementptr inbounds %struct.NuclideGridPoint* %46, i64 %45
  %48 = getelementptr inbounds %struct.NuclideGridPoint* %47, i32 0, i32 0
  %49 = load double* %48, align 8
  %50 = load double* %3, align 8
  %51 = fcmp olt double %49, %50
  br i1 %51, label %52, label %55

; <label>:52                                      ; preds = %33
  %53 = load i32* %mid, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %min, align 4
  br label %70

; <label>:55                                      ; preds = %33
  %56 = load i32* %mid, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.NuclideGridPoint** %2, align 8
  %59 = getelementptr inbounds %struct.NuclideGridPoint* %58, i64 %57
  %60 = getelementptr inbounds %struct.NuclideGridPoint* %59, i32 0, i32 0
  %61 = load double* %60, align 8
  %62 = load double* %3, align 8
  %63 = fcmp ogt double %61, %62
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %55
  %65 = load i32* %mid, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %max, align 4
  br label %69

; <label>:67                                      ; preds = %55
  %68 = load i32* %mid, align 4
  store i32 %68, i32* %1
  br label %73

; <label>:69                                      ; preds = %64
  br label %70

; <label>:70                                      ; preds = %69, %52
  br label %29

; <label>:71                                      ; preds = %29
  %72 = load i32* %max, align 4
  store i32 %72, i32* %1
  br label %73

; <label>:73                                      ; preds = %71, %67, %24, %13
  %74 = load i32* %1
  ret i32 %74
}

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind uwtable
define double @rn(i64* %seed) #0 {
  %1 = alloca i64*, align 8
  %ret = alloca double, align 8
  %n1 = alloca i64, align 8
  %a = alloca i64, align 8
  %m = alloca i64, align 8
  store i64* %seed, i64** %1, align 8
  store i64 16807, i64* %a, align 8
  store i64 2147483647, i64* %m, align 8
  %2 = load i64* %a, align 8
  %3 = load i64** %1, align 8
  %4 = load i64* %3, align 8
  %5 = mul i64 %2, %4
  %6 = load i64* %m, align 8
  %7 = urem i64 %5, %6
  store i64 %7, i64* %n1, align 8
  %8 = load i64* %n1, align 8
  %9 = load i64** %1, align 8
  store i64 %8, i64* %9, align 8
  %10 = load i64* %n1, align 8
  %11 = uitofp i64 %10 to double
  %12 = load i64* %m, align 8
  %13 = uitofp i64 %12 to double
  %14 = fdiv double %11, %13
  store double %14, double* %ret, align 8
  %15 = load double* %ret, align 8
  ret double %15
}

; Function Attrs: nounwind uwtable
define double @rn_v() #0 {
  %ret = alloca double, align 8
  %n1 = alloca i64, align 8
  %a = alloca i64, align 8
  %m = alloca i64, align 8
  store i64 16807, i64* %a, align 8
  store i64 2147483647, i64* %m, align 8
  %1 = load i64* %a, align 8
  %2 = load i64* @rn_v.seed, align 8
  %3 = mul i64 %1, %2
  %4 = load i64* %m, align 8
  %5 = urem i64 %3, %4
  store i64 %5, i64* %n1, align 8
  %6 = load i64* %n1, align 8
  store i64 %6, i64* @rn_v.seed, align 8
  %7 = load i64* %n1, align 8
  %8 = uitofp i64 %7 to double
  %9 = load i64* %m, align 8
  %10 = uitofp i64 %9 to double
  %11 = fdiv double %8, %10
  store double %11, double* %ret, align 8
  %12 = load double* %ret, align 8
  ret double %12
}

; Function Attrs: nounwind uwtable
define i32 @hash(i8* %str, i32 %nbins) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %hash = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %str, i8** %1, align 8
  store i32 %nbins, i32* %2, align 4
  store i32 5381, i32* %hash, align 4
  br label %3

; <label>:3                                       ; preds = %9, %0
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds i8* %4, i32 1
  store i8* %5, i8** %1, align 8
  %6 = load i8* %4, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, i32* %c, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %3
  %10 = load i32* %hash, align 4
  %11 = shl i32 %10, 5
  %12 = load i32* %hash, align 4
  %13 = add i32 %11, %12
  %14 = load i32* %c, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %hash, align 4
  br label %3

; <label>:16                                      ; preds = %3
  %17 = load i32* %hash, align 4
  %18 = load i32* %2, align 4
  %19 = urem i32 %17, %18
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in) #0 {
  %single_nuclide_grid = alloca i64, align 8
  %all_nuclide_grids = alloca i64, align 8
  %size_GridPoint = alloca i64, align 8
  %size_UEG = alloca i64, align 8
  %memtotal = alloca i64, align 8
  %1 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %2 = load i64* %1, align 8
  %3 = mul i64 %2, 48
  store i64 %3, i64* %single_nuclide_grid, align 8
  %4 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %5 = load i64* %4, align 8
  %6 = load i64* %single_nuclide_grid, align 8
  %7 = mul i64 %5, %6
  store i64 %7, i64* %all_nuclide_grids, align 8
  %8 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %9 = load i64* %8, align 8
  %10 = mul i64 %9, 4
  %11 = add i64 16, %10
  store i64 %11, i64* %size_GridPoint, align 8
  %12 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 1
  %13 = load i64* %12, align 8
  %14 = getelementptr inbounds %struct.Inputs* %in, i32 0, i32 2
  %15 = load i64* %14, align 8
  %16 = mul nsw i64 %13, %15
  %17 = load i64* %size_GridPoint, align 8
  %18 = mul i64 %16, %17
  store i64 %18, i64* %size_UEG, align 8
  %19 = load i64* %all_nuclide_grids, align 8
  %20 = load i64* %size_UEG, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %memtotal, align 8
  %22 = load i64* %all_nuclide_grids, align 8
  %23 = udiv i64 %22, 1048576
  store i64 %23, i64* %all_nuclide_grids, align 8
  %24 = load i64* %size_UEG, align 8
  %25 = udiv i64 %24, 1048576
  store i64 %25, i64* %size_UEG, align 8
  %26 = load i64* %memtotal, align 8
  %27 = udiv i64 %26, 1048576
  store i64 %27, i64* %memtotal, align 8
  %28 = load i64* %memtotal, align 8
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define void @binary_dump(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids, %struct.GridPoint* %energy_grid) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.NuclideGridPoint**, align 8
  %4 = alloca %struct.GridPoint*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %i1 = alloca i64, align 8
  store i64 %n_isotopes, i64* %1, align 8
  store i64 %n_gridpoints, i64* %2, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %4, align 8
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str161, i32 0, i32 0))
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8
  store i64 0, i64* %i, align 8
  br label %6

; <label>:6                                       ; preds = %19, %0
  %7 = load i64* %i, align 8
  %8 = load i64* %1, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %22

; <label>:10                                      ; preds = %6
  %11 = load i64* %i, align 8
  %12 = load %struct.NuclideGridPoint*** %3, align 8
  %13 = getelementptr inbounds %struct.NuclideGridPoint** %12, i64 %11
  %14 = load %struct.NuclideGridPoint** %13, align 8
  %15 = bitcast %struct.NuclideGridPoint* %14 to i8*
  %16 = load i64* %2, align 8
  %17 = load %struct._IO_FILE** %fp, align 8
  %18 = call i64 @fwrite(i8* %15, i64 48, i64 %16, %struct._IO_FILE* %17)
  br label %19

; <label>:19                                      ; preds = %10
  %20 = load i64* %i, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %i, align 8
  br label %6

; <label>:22                                      ; preds = %6
  store i64 0, i64* %i1, align 8
  br label %23

; <label>:23                                      ; preds = %46, %22
  %24 = load i64* %i1, align 8
  %25 = load i64* %1, align 8
  %26 = load i64* %2, align 8
  %27 = mul nsw i64 %25, %26
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %49

; <label>:29                                      ; preds = %23
  %30 = load i64* %i1, align 8
  %31 = load %struct.GridPoint** %4, align 8
  %32 = getelementptr inbounds %struct.GridPoint* %31, i64 %30
  %33 = getelementptr inbounds %struct.GridPoint* %32, i32 0, i32 0
  %34 = bitcast double* %33 to i8*
  %35 = load %struct._IO_FILE** %fp, align 8
  %36 = call i64 @fwrite(i8* %34, i64 8, i64 1, %struct._IO_FILE* %35)
  %37 = load i64* %i1, align 8
  %38 = load %struct.GridPoint** %4, align 8
  %39 = getelementptr inbounds %struct.GridPoint* %38, i64 %37
  %40 = getelementptr inbounds %struct.GridPoint* %39, i32 0, i32 1
  %41 = load i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i64* %1, align 8
  %44 = load %struct._IO_FILE** %fp, align 8
  %45 = call i64 @fwrite(i8* %42, i64 4, i64 %43, %struct._IO_FILE* %44)
  br label %46

; <label>:46                                      ; preds = %29
  %47 = load i64* %i1, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %i1, align 8
  br label %23

; <label>:49                                      ; preds = %23
  %50 = load %struct._IO_FILE** %fp, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* %50)
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @binary_read(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** %nuclide_grids, %struct.GridPoint* %energy_grid) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.NuclideGridPoint**, align 8
  %4 = alloca %struct.GridPoint*, align 8
  %stat = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i64, align 8
  %i1 = alloca i64, align 8
  store i64 %n_isotopes, i64* %1, align 8
  store i64 %n_gridpoints, i64* %2, align 8
  store %struct.NuclideGridPoint** %nuclide_grids, %struct.NuclideGridPoint*** %3, align 8
  store %struct.GridPoint* %energy_grid, %struct.GridPoint** %4, align 8
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str262, i32 0, i32 0))
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fp, align 8
  store i64 0, i64* %i, align 8
  br label %6

; <label>:6                                       ; preds = %20, %0
  %7 = load i64* %i, align 8
  %8 = load i64* %1, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %23

; <label>:10                                      ; preds = %6
  %11 = load i64* %i, align 8
  %12 = load %struct.NuclideGridPoint*** %3, align 8
  %13 = getelementptr inbounds %struct.NuclideGridPoint** %12, i64 %11
  %14 = load %struct.NuclideGridPoint** %13, align 8
  %15 = bitcast %struct.NuclideGridPoint* %14 to i8*
  %16 = load i64* %2, align 8
  %17 = load %struct._IO_FILE** %fp, align 8
  %18 = call i64 @fread(i8* %15, i64 48, i64 %16, %struct._IO_FILE* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %stat, align 4
  br label %20

; <label>:20                                      ; preds = %10
  %21 = load i64* %i, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %i, align 8
  br label %6

; <label>:23                                      ; preds = %6
  store i64 0, i64* %i1, align 8
  br label %24

; <label>:24                                      ; preds = %49, %23
  %25 = load i64* %i1, align 8
  %26 = load i64* %1, align 8
  %27 = load i64* %2, align 8
  %28 = mul nsw i64 %26, %27
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %52

; <label>:30                                      ; preds = %24
  %31 = load i64* %i1, align 8
  %32 = load %struct.GridPoint** %4, align 8
  %33 = getelementptr inbounds %struct.GridPoint* %32, i64 %31
  %34 = getelementptr inbounds %struct.GridPoint* %33, i32 0, i32 0
  %35 = bitcast double* %34 to i8*
  %36 = load %struct._IO_FILE** %fp, align 8
  %37 = call i64 @fread(i8* %35, i64 8, i64 1, %struct._IO_FILE* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %stat, align 4
  %39 = load i64* %i1, align 8
  %40 = load %struct.GridPoint** %4, align 8
  %41 = getelementptr inbounds %struct.GridPoint* %40, i64 %39
  %42 = getelementptr inbounds %struct.GridPoint* %41, i32 0, i32 1
  %43 = load i32** %42, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i64* %1, align 8
  %46 = load %struct._IO_FILE** %fp, align 8
  %47 = call i64 @fread(i8* %44, i64 4, i64 %45, %struct._IO_FILE* %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %stat, align 4
  br label %49

; <label>:49                                      ; preds = %30
  %50 = load i64* %i1, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %i1, align 8
  br label %24

; <label>:52                                      ; preds = %24
  %53 = load %struct._IO_FILE** %fp, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* %53)
  ret void
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

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
