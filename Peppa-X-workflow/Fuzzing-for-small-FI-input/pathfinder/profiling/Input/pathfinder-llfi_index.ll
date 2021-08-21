; ModuleID = '/data_hdd/not_backed_up/guanpli/FI/pathfinder/pathfinder-ref/pathfinder.ll'
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
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i8**, align 8, !llfi_index !2
  %n = alloca i32, align 4, !llfi_index !3
  %i = alloca i32, align 4, !llfi_index !4
  %j = alloca i32, align 4, !llfi_index !5
  %j1 = alloca i32, align 4, !llfi_index !6
  %i2 = alloca i32, align 4, !llfi_index !7
  %j3 = alloca i32, align 4, !llfi_index !8
  store i32 %argc, i32* %1, align 4, !llfi_index !9
  store i8** %argv, i8*** %2, align 8, !llfi_index !10
  %3 = load i32* %1, align 4, !llfi_index !11
  %4 = icmp eq i32 %3, 3, !llfi_index !12
  br i1 %4, label %5, label %14, !llfi_index !13

; <label>:5                                       ; preds = %0
  %6 = load i8*** %2, align 8, !llfi_index !14
  %7 = getelementptr inbounds i8** %6, i64 1, !llfi_index !15
  %8 = load i8** %7, align 8, !llfi_index !16
  %9 = call i32 @atoi(i8* %8) #7, !llfi_index !17
  store i32 %9, i32* @cols, align 4, !llfi_index !18
  %10 = load i8*** %2, align 8, !llfi_index !19
  %11 = getelementptr inbounds i8** %10, i64 2, !llfi_index !20
  %12 = load i8** %11, align 8, !llfi_index !21
  %13 = call i32 @atoi(i8* %12) #7, !llfi_index !22
  store i32 %13, i32* @rows, align 4, !llfi_index !23
  br label %16, !llfi_index !24

; <label>:14                                      ; preds = %0
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str, i32 0, i32 0)), !llfi_index !25
  call void @exit(i32 0) #8, !llfi_index !26
  unreachable, !llfi_index !27

; <label>:16                                      ; preds = %5
  %17 = load i32* @rows, align 4, !llfi_index !28
  %18 = load i32* @cols, align 4, !llfi_index !29
  %19 = mul nsw i32 %17, %18, !llfi_index !30
  %20 = sext i32 %19 to i64, !llfi_index !31
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 4), !llfi_index !32
  %22 = extractvalue { i64, i1 } %21, 1, !llfi_index !33
  %23 = extractvalue { i64, i1 } %21, 0, !llfi_index !34
  %24 = select i1 %22, i64 -1, i64 %23, !llfi_index !35
  %25 = call noalias i8* @_Znam(i64 %24) #9, !llfi_index !36
  %26 = bitcast i8* %25 to i32*, !llfi_index !37
  store i32* %26, i32** @data, align 8, !llfi_index !38
  %27 = load i32* @rows, align 4, !llfi_index !39
  %28 = sext i32 %27 to i64, !llfi_index !40
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %28, i64 8), !llfi_index !41
  %30 = extractvalue { i64, i1 } %29, 1, !llfi_index !42
  %31 = extractvalue { i64, i1 } %29, 0, !llfi_index !43
  %32 = select i1 %30, i64 -1, i64 %31, !llfi_index !44
  %33 = call noalias i8* @_Znam(i64 %32) #9, !llfi_index !45
  %34 = bitcast i8* %33 to i32**, !llfi_index !46
  store i32** %34, i32*** @wall, align 8, !llfi_index !47
  store i32 0, i32* %n, align 4, !llfi_index !48
  br label %35, !llfi_index !49

; <label>:35                                      ; preds = %50, %16
  %36 = load i32* %n, align 4, !llfi_index !50
  %37 = load i32* @rows, align 4, !llfi_index !51
  %38 = icmp slt i32 %36, %37, !llfi_index !52
  br i1 %38, label %39, label %53, !llfi_index !53

; <label>:39                                      ; preds = %35
  %40 = load i32** @data, align 8, !llfi_index !54
  %41 = load i32* @cols, align 4, !llfi_index !55
  %42 = load i32* %n, align 4, !llfi_index !56
  %43 = mul nsw i32 %41, %42, !llfi_index !57
  %44 = sext i32 %43 to i64, !llfi_index !58
  %45 = getelementptr inbounds i32* %40, i64 %44, !llfi_index !59
  %46 = load i32* %n, align 4, !llfi_index !60
  %47 = sext i32 %46 to i64, !llfi_index !61
  %48 = load i32*** @wall, align 8, !llfi_index !62
  %49 = getelementptr inbounds i32** %48, i64 %47, !llfi_index !63
  store i32* %45, i32** %49, align 8, !llfi_index !64
  br label %50, !llfi_index !65

; <label>:50                                      ; preds = %39
  %51 = load i32* %n, align 4, !llfi_index !66
  %52 = add nsw i32 %51, 1, !llfi_index !67
  store i32 %52, i32* %n, align 4, !llfi_index !68
  br label %35, !llfi_index !69

; <label>:53                                      ; preds = %35
  %54 = load i32* @cols, align 4, !llfi_index !70
  %55 = sext i32 %54 to i64, !llfi_index !71
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 4), !llfi_index !72
  %57 = extractvalue { i64, i1 } %56, 1, !llfi_index !73
  %58 = extractvalue { i64, i1 } %56, 0, !llfi_index !74
  %59 = select i1 %57, i64 -1, i64 %58, !llfi_index !75
  %60 = call noalias i8* @_Znam(i64 %59) #9, !llfi_index !76
  %61 = bitcast i8* %60 to i32*, !llfi_index !77
  store i32* %61, i32** @result, align 8, !llfi_index !78
  store i32 0, i32* %i, align 4, !llfi_index !79
  br label %62, !llfi_index !80

; <label>:62                                      ; preds = %84, %53
  %63 = load i32* %i, align 4, !llfi_index !81
  %64 = load i32* @rows, align 4, !llfi_index !82
  %65 = icmp slt i32 %63, %64, !llfi_index !83
  br i1 %65, label %66, label %87, !llfi_index !84

; <label>:66                                      ; preds = %62
  store i32 0, i32* %j, align 4, !llfi_index !85
  br label %67, !llfi_index !86

; <label>:67                                      ; preds = %80, %66
  %68 = load i32* %j, align 4, !llfi_index !87
  %69 = load i32* @cols, align 4, !llfi_index !88
  %70 = icmp slt i32 %68, %69, !llfi_index !89
  br i1 %70, label %71, label %83, !llfi_index !90

; <label>:71                                      ; preds = %67
  %72 = load i32* %j, align 4, !llfi_index !91
  %73 = sext i32 %72 to i64, !llfi_index !92
  %74 = load i32* %i, align 4, !llfi_index !93
  %75 = sext i32 %74 to i64, !llfi_index !94
  %76 = load i32*** @wall, align 8, !llfi_index !95
  %77 = getelementptr inbounds i32** %76, i64 %75, !llfi_index !96
  %78 = load i32** %77, align 8, !llfi_index !97
  %79 = getelementptr inbounds i32* %78, i64 %73, !llfi_index !98
  store i32 7, i32* %79, align 4, !llfi_index !99
  br label %80, !llfi_index !100

; <label>:80                                      ; preds = %71
  %81 = load i32* %j, align 4, !llfi_index !101
  %82 = add nsw i32 %81, 1, !llfi_index !102
  store i32 %82, i32* %j, align 4, !llfi_index !103
  br label %67, !llfi_index !104

; <label>:83                                      ; preds = %67
  br label %84, !llfi_index !105

; <label>:84                                      ; preds = %83
  %85 = load i32* %i, align 4, !llfi_index !106
  %86 = add nsw i32 %85, 1, !llfi_index !107
  store i32 %86, i32* %i, align 4, !llfi_index !108
  br label %62, !llfi_index !109

; <label>:87                                      ; preds = %62
  store i32 0, i32* %j1, align 4, !llfi_index !110
  br label %88, !llfi_index !111

; <label>:88                                      ; preds = %104, %87
  %89 = load i32* %j1, align 4, !llfi_index !112
  %90 = load i32* @cols, align 4, !llfi_index !113
  %91 = icmp slt i32 %89, %90, !llfi_index !114
  br i1 %91, label %92, label %107, !llfi_index !115

; <label>:92                                      ; preds = %88
  %93 = load i32* %j1, align 4, !llfi_index !116
  %94 = sext i32 %93 to i64, !llfi_index !117
  %95 = load i32*** @wall, align 8, !llfi_index !118
  %96 = getelementptr inbounds i32** %95, i64 0, !llfi_index !119
  %97 = load i32** %96, align 8, !llfi_index !120
  %98 = getelementptr inbounds i32* %97, i64 %94, !llfi_index !121
  %99 = load i32* %98, align 4, !llfi_index !122
  %100 = load i32* %j1, align 4, !llfi_index !123
  %101 = sext i32 %100 to i64, !llfi_index !124
  %102 = load i32** @result, align 8, !llfi_index !125
  %103 = getelementptr inbounds i32* %102, i64 %101, !llfi_index !126
  store i32 %99, i32* %103, align 4, !llfi_index !127
  br label %104, !llfi_index !128

; <label>:104                                     ; preds = %92
  %105 = load i32* %j1, align 4, !llfi_index !129
  %106 = add nsw i32 %105, 1, !llfi_index !130
  store i32 %106, i32* %j1, align 4, !llfi_index !131
  br label %88, !llfi_index !132

; <label>:107                                     ; preds = %88
  store i32 0, i32* %i2, align 4, !llfi_index !133
  br label %108, !llfi_index !134

; <label>:108                                     ; preds = %133, %107
  %109 = load i32* %i2, align 4, !llfi_index !135
  %110 = load i32* @rows, align 4, !llfi_index !136
  %111 = icmp slt i32 %109, %110, !llfi_index !137
  br i1 %111, label %112, label %136, !llfi_index !138

; <label>:112                                     ; preds = %108
  store i32 0, i32* %j3, align 4, !llfi_index !139
  br label %113, !llfi_index !140

; <label>:113                                     ; preds = %128, %112
  %114 = load i32* %j3, align 4, !llfi_index !141
  %115 = load i32* @cols, align 4, !llfi_index !142
  %116 = icmp slt i32 %114, %115, !llfi_index !143
  br i1 %116, label %117, label %131, !llfi_index !144

; <label>:117                                     ; preds = %113
  %118 = load i32* %j3, align 4, !llfi_index !145
  %119 = sext i32 %118 to i64, !llfi_index !146
  %120 = load i32* %i2, align 4, !llfi_index !147
  %121 = sext i32 %120 to i64, !llfi_index !148
  %122 = load i32*** @wall, align 8, !llfi_index !149
  %123 = getelementptr inbounds i32** %122, i64 %121, !llfi_index !150
  %124 = load i32** %123, align 8, !llfi_index !151
  %125 = getelementptr inbounds i32* %124, i64 %119, !llfi_index !152
  %126 = load i32* %125, align 4, !llfi_index !153
  %127 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %126), !llfi_index !154
  br label %128, !llfi_index !155

; <label>:128                                     ; preds = %117
  %129 = load i32* %j3, align 4, !llfi_index !156
  %130 = add nsw i32 %129, 1, !llfi_index !157
  store i32 %130, i32* %j3, align 4, !llfi_index !158
  br label %113, !llfi_index !159

; <label>:131                                     ; preds = %113
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !160
  br label %133, !llfi_index !161

; <label>:133                                     ; preds = %131
  %134 = load i32* %i2, align 4, !llfi_index !162
  %135 = add nsw i32 %134, 1, !llfi_index !163
  store i32 %135, i32* %i2, align 4, !llfi_index !164
  br label %108, !llfi_index !165

; <label>:136                                     ; preds = %108
  ret void, !llfi_index !166
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
  %1 = alloca i8*, align 8, !llfi_index !167
  store i8* %s, i8** %1, align 8, !llfi_index !168
  %2 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !169
  %3 = load i8** %1, align 8, !llfi_index !170
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i8* %3), !llfi_index !171
  ret void, !llfi_index !172
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !173
  %2 = alloca i32, align 4, !llfi_index !174
  %3 = alloca i8**, align 8, !llfi_index !175
  store i32 0, i32* %1, !llfi_index !176
  store i32 %argc, i32* %2, align 4, !llfi_index !177
  store i8** %argv, i8*** %3, align 8, !llfi_index !178
  %4 = load i32* %2, align 4, !llfi_index !179
  %5 = load i8*** %3, align 8, !llfi_index !180
  call void @_Z3runiPPc(i32 %4, i8** %5), !llfi_index !181
  ret i32 0, !llfi_index !182
}

; Function Attrs: uwtable
define void @_Z3runiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !183
  %2 = alloca i8**, align 8, !llfi_index !184
  %cycles = alloca i64, align 8, !llfi_index !185
  %src = alloca i32*, align 8, !llfi_index !186
  %dst = alloca i32*, align 8, !llfi_index !187
  %temp = alloca i32*, align 8, !llfi_index !188
  %min = alloca i32, align 4, !llfi_index !189
  %t = alloca i32, align 4, !llfi_index !190
  %n = alloca i32, align 4, !llfi_index !191
  %i = alloca i32, align 4, !llfi_index !192
  %i1 = alloca i32, align 4, !llfi_index !193
  store i32 %argc, i32* %1, align 4, !llfi_index !194
  store i8** %argv, i8*** %2, align 8, !llfi_index !195
  %3 = load i32* %1, align 4, !llfi_index !196
  %4 = load i8*** %2, align 8, !llfi_index !197
  call void @_Z4initiPPc(i32 %3, i8** %4), !llfi_index !198
  %5 = load i32** @result, align 8, !llfi_index !199
  store i32* %5, i32** %dst, align 8, !llfi_index !200
  %6 = load i32* @cols, align 4, !llfi_index !201
  %7 = sext i32 %6 to i64, !llfi_index !202
  %8 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %7, i64 4), !llfi_index !203
  %9 = extractvalue { i64, i1 } %8, 1, !llfi_index !204
  %10 = extractvalue { i64, i1 } %8, 0, !llfi_index !205
  %11 = select i1 %9, i64 -1, i64 %10, !llfi_index !206
  %12 = call noalias i8* @_Znam(i64 %11) #9, !llfi_index !207
  %13 = bitcast i8* %12 to i32*, !llfi_index !208
  store i32* %13, i32** %src, align 8, !llfi_index !209
  store i32 0, i32* %t, align 4, !llfi_index !210
  br label %14, !llfi_index !211

; <label>:14                                      ; preds = %101, %0
  %15 = load i32* %t, align 4, !llfi_index !212
  %16 = load i32* @rows, align 4, !llfi_index !213
  %17 = sub nsw i32 %16, 1, !llfi_index !214
  %18 = icmp slt i32 %15, %17, !llfi_index !215
  br i1 %18, label %19, label %104, !llfi_index !216

; <label>:19                                      ; preds = %14
  %20 = load i32** %src, align 8, !llfi_index !217
  store i32* %20, i32** %temp, align 8, !llfi_index !218
  %21 = load i32** %dst, align 8, !llfi_index !219
  store i32* %21, i32** %src, align 8, !llfi_index !220
  %22 = load i32** %temp, align 8, !llfi_index !221
  store i32* %22, i32** %dst, align 8, !llfi_index !222
  store i32 0, i32* %n, align 4, !llfi_index !223
  br label %23, !llfi_index !224

; <label>:23                                      ; preds = %97, %19
  %24 = load i32* %n, align 4, !llfi_index !225
  %25 = load i32* @cols, align 4, !llfi_index !226
  %26 = icmp slt i32 %24, %25, !llfi_index !227
  br i1 %26, label %27, label %100, !llfi_index !228

; <label>:27                                      ; preds = %23
  %28 = load i32* %n, align 4, !llfi_index !229
  %29 = sext i32 %28 to i64, !llfi_index !230
  %30 = load i32** %src, align 8, !llfi_index !231
  %31 = getelementptr inbounds i32* %30, i64 %29, !llfi_index !232
  %32 = load i32* %31, align 4, !llfi_index !233
  store i32 %32, i32* %min, align 4, !llfi_index !234
  %33 = load i32* %n, align 4, !llfi_index !235
  %34 = icmp sgt i32 %33, 0, !llfi_index !236
  br i1 %34, label %35, label %55, !llfi_index !237

; <label>:35                                      ; preds = %27
  %36 = load i32* %min, align 4, !llfi_index !238
  %37 = load i32* %n, align 4, !llfi_index !239
  %38 = sub nsw i32 %37, 1, !llfi_index !240
  %39 = sext i32 %38 to i64, !llfi_index !241
  %40 = load i32** %src, align 8, !llfi_index !242
  %41 = getelementptr inbounds i32* %40, i64 %39, !llfi_index !243
  %42 = load i32* %41, align 4, !llfi_index !244
  %43 = icmp sle i32 %36, %42, !llfi_index !245
  br i1 %43, label %44, label %46, !llfi_index !246

; <label>:44                                      ; preds = %35
  %45 = load i32* %min, align 4, !llfi_index !247
  br label %53, !llfi_index !248

; <label>:46                                      ; preds = %35
  %47 = load i32* %n, align 4, !llfi_index !249
  %48 = sub nsw i32 %47, 1, !llfi_index !250
  %49 = sext i32 %48 to i64, !llfi_index !251
  %50 = load i32** %src, align 8, !llfi_index !252
  %51 = getelementptr inbounds i32* %50, i64 %49, !llfi_index !253
  %52 = load i32* %51, align 4, !llfi_index !254
  br label %53, !llfi_index !255

; <label>:53                                      ; preds = %46, %44
  %54 = phi i32 [ %45, %44 ], [ %52, %46 ], !llfi_index !256
  store i32 %54, i32* %min, align 4, !llfi_index !257
  br label %55, !llfi_index !258

; <label>:55                                      ; preds = %53, %27
  %56 = load i32* %n, align 4, !llfi_index !259
  %57 = load i32* @cols, align 4, !llfi_index !260
  %58 = sub nsw i32 %57, 1, !llfi_index !261
  %59 = icmp slt i32 %56, %58, !llfi_index !262
  br i1 %59, label %60, label %80, !llfi_index !263

; <label>:60                                      ; preds = %55
  %61 = load i32* %min, align 4, !llfi_index !264
  %62 = load i32* %n, align 4, !llfi_index !265
  %63 = add nsw i32 %62, 1, !llfi_index !266
  %64 = sext i32 %63 to i64, !llfi_index !267
  %65 = load i32** %src, align 8, !llfi_index !268
  %66 = getelementptr inbounds i32* %65, i64 %64, !llfi_index !269
  %67 = load i32* %66, align 4, !llfi_index !270
  %68 = icmp sle i32 %61, %67, !llfi_index !271
  br i1 %68, label %69, label %71, !llfi_index !272

; <label>:69                                      ; preds = %60
  %70 = load i32* %min, align 4, !llfi_index !273
  br label %78, !llfi_index !274

; <label>:71                                      ; preds = %60
  %72 = load i32* %n, align 4, !llfi_index !275
  %73 = add nsw i32 %72, 1, !llfi_index !276
  %74 = sext i32 %73 to i64, !llfi_index !277
  %75 = load i32** %src, align 8, !llfi_index !278
  %76 = getelementptr inbounds i32* %75, i64 %74, !llfi_index !279
  %77 = load i32* %76, align 4, !llfi_index !280
  br label %78, !llfi_index !281

; <label>:78                                      ; preds = %71, %69
  %79 = phi i32 [ %70, %69 ], [ %77, %71 ], !llfi_index !282
  store i32 %79, i32* %min, align 4, !llfi_index !283
  br label %80, !llfi_index !284

; <label>:80                                      ; preds = %78, %55
  %81 = load i32* %n, align 4, !llfi_index !285
  %82 = sext i32 %81 to i64, !llfi_index !286
  %83 = load i32* %t, align 4, !llfi_index !287
  %84 = add nsw i32 %83, 1, !llfi_index !288
  %85 = sext i32 %84 to i64, !llfi_index !289
  %86 = load i32*** @wall, align 8, !llfi_index !290
  %87 = getelementptr inbounds i32** %86, i64 %85, !llfi_index !291
  %88 = load i32** %87, align 8, !llfi_index !292
  %89 = getelementptr inbounds i32* %88, i64 %82, !llfi_index !293
  %90 = load i32* %89, align 4, !llfi_index !294
  %91 = load i32* %min, align 4, !llfi_index !295
  %92 = add nsw i32 %90, %91, !llfi_index !296
  %93 = load i32* %n, align 4, !llfi_index !297
  %94 = sext i32 %93 to i64, !llfi_index !298
  %95 = load i32** %dst, align 8, !llfi_index !299
  %96 = getelementptr inbounds i32* %95, i64 %94, !llfi_index !300
  store i32 %92, i32* %96, align 4, !llfi_index !301
  br label %97, !llfi_index !302

; <label>:97                                      ; preds = %80
  %98 = load i32* %n, align 4, !llfi_index !303
  %99 = add nsw i32 %98, 1, !llfi_index !304
  store i32 %99, i32* %n, align 4, !llfi_index !305
  br label %23, !llfi_index !306

; <label>:100                                     ; preds = %23
  br label %101, !llfi_index !307

; <label>:101                                     ; preds = %100
  %102 = load i32* %t, align 4, !llfi_index !308
  %103 = add nsw i32 %102, 1, !llfi_index !309
  store i32 %103, i32* %t, align 4, !llfi_index !310
  br label %14, !llfi_index !311

; <label>:104                                     ; preds = %14
  store i32 0, i32* %i, align 4, !llfi_index !312
  br label %105, !llfi_index !313

; <label>:105                                     ; preds = %116, %104
  %106 = load i32* %i, align 4, !llfi_index !314
  %107 = load i32* @cols, align 4, !llfi_index !315
  %108 = icmp slt i32 %106, %107, !llfi_index !316
  br i1 %108, label %109, label %119, !llfi_index !317

; <label>:109                                     ; preds = %105
  %110 = load i32* %i, align 4, !llfi_index !318
  %111 = sext i32 %110 to i64, !llfi_index !319
  %112 = load i32** @data, align 8, !llfi_index !320
  %113 = getelementptr inbounds i32* %112, i64 %111, !llfi_index !321
  %114 = load i32* %113, align 4, !llfi_index !322
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %114), !llfi_index !323
  br label %116, !llfi_index !324

; <label>:116                                     ; preds = %109
  %117 = load i32* %i, align 4, !llfi_index !325
  %118 = add nsw i32 %117, 1, !llfi_index !326
  store i32 %118, i32* %i, align 4, !llfi_index !327
  br label %105, !llfi_index !328

; <label>:119                                     ; preds = %105
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !329
  store i32 0, i32* %i1, align 4, !llfi_index !330
  br label %121, !llfi_index !331

; <label>:121                                     ; preds = %132, %119
  %122 = load i32* %i1, align 4, !llfi_index !332
  %123 = load i32* @cols, align 4, !llfi_index !333
  %124 = icmp slt i32 %122, %123, !llfi_index !334
  br i1 %124, label %125, label %135, !llfi_index !335

; <label>:125                                     ; preds = %121
  %126 = load i32* %i1, align 4, !llfi_index !336
  %127 = sext i32 %126 to i64, !llfi_index !337
  %128 = load i32** %dst, align 8, !llfi_index !338
  %129 = getelementptr inbounds i32* %128, i64 %127, !llfi_index !339
  %130 = load i32* %129, align 4, !llfi_index !340
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %130), !llfi_index !341
  br label %132, !llfi_index !342

; <label>:132                                     ; preds = %125
  %133 = load i32* %i1, align 4, !llfi_index !343
  %134 = add nsw i32 %133, 1, !llfi_index !344
  store i32 %134, i32* %i1, align 4, !llfi_index !345
  br label %121, !llfi_index !346

; <label>:135                                     ; preds = %121
  %136 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !347
  %137 = load i32** @data, align 8, !llfi_index !348
  %138 = icmp eq i32* %137, null, !llfi_index !349
  br i1 %138, label %141, label %139, !llfi_index !350

; <label>:139                                     ; preds = %135
  %140 = bitcast i32* %137 to i8*, !llfi_index !351
  call void @_ZdaPv(i8* %140) #10, !llfi_index !352
  br label %141, !llfi_index !353

; <label>:141                                     ; preds = %139, %135
  %142 = load i32*** @wall, align 8, !llfi_index !354
  %143 = icmp eq i32** %142, null, !llfi_index !355
  br i1 %143, label %146, label %144, !llfi_index !356

; <label>:144                                     ; preds = %141
  %145 = bitcast i32** %142 to i8*, !llfi_index !357
  call void @_ZdaPv(i8* %145) #10, !llfi_index !358
  br label %146, !llfi_index !359

; <label>:146                                     ; preds = %144, %141
  %147 = load i32** %dst, align 8, !llfi_index !360
  %148 = icmp eq i32* %147, null, !llfi_index !361
  br i1 %148, label %151, label %149, !llfi_index !362

; <label>:149                                     ; preds = %146
  %150 = bitcast i32* %147 to i8*, !llfi_index !363
  call void @_ZdaPv(i8* %150) #10, !llfi_index !364
  br label %151, !llfi_index !365

; <label>:151                                     ; preds = %149, %146
  %152 = load i32** %src, align 8, !llfi_index !366
  %153 = icmp eq i32* %152, null, !llfi_index !367
  br i1 %153, label %156, label %154, !llfi_index !368

; <label>:154                                     ; preds = %151
  %155 = bitcast i32* %152 to i8*, !llfi_index !369
  call void @_ZdaPv(i8* %155) #10, !llfi_index !370
  br label %156, !llfi_index !371

; <label>:156                                     ; preds = %154, %151
  ret void, !llfi_index !372
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
!21 = metadata !{i64 21}
!22 = metadata !{i64 22}
!23 = metadata !{i64 23}
!24 = metadata !{i64 24}
!25 = metadata !{i64 25}
!26 = metadata !{i64 26}
!27 = metadata !{i64 27}
!28 = metadata !{i64 28}
!29 = metadata !{i64 29}
!30 = metadata !{i64 30}
!31 = metadata !{i64 31}
!32 = metadata !{i64 32}
!33 = metadata !{i64 33}
!34 = metadata !{i64 34}
!35 = metadata !{i64 35}
!36 = metadata !{i64 36}
!37 = metadata !{i64 37}
!38 = metadata !{i64 38}
!39 = metadata !{i64 39}
!40 = metadata !{i64 40}
!41 = metadata !{i64 41}
!42 = metadata !{i64 42}
!43 = metadata !{i64 43}
!44 = metadata !{i64 44}
!45 = metadata !{i64 45}
!46 = metadata !{i64 46}
!47 = metadata !{i64 47}
!48 = metadata !{i64 48}
!49 = metadata !{i64 49}
!50 = metadata !{i64 50}
!51 = metadata !{i64 51}
!52 = metadata !{i64 52}
!53 = metadata !{i64 53}
!54 = metadata !{i64 54}
!55 = metadata !{i64 55}
!56 = metadata !{i64 56}
!57 = metadata !{i64 57}
!58 = metadata !{i64 58}
!59 = metadata !{i64 59}
!60 = metadata !{i64 60}
!61 = metadata !{i64 61}
!62 = metadata !{i64 62}
!63 = metadata !{i64 63}
!64 = metadata !{i64 64}
!65 = metadata !{i64 65}
!66 = metadata !{i64 66}
!67 = metadata !{i64 67}
!68 = metadata !{i64 68}
!69 = metadata !{i64 69}
!70 = metadata !{i64 70}
!71 = metadata !{i64 71}
!72 = metadata !{i64 72}
!73 = metadata !{i64 73}
!74 = metadata !{i64 74}
!75 = metadata !{i64 75}
!76 = metadata !{i64 76}
!77 = metadata !{i64 77}
!78 = metadata !{i64 78}
!79 = metadata !{i64 79}
!80 = metadata !{i64 80}
!81 = metadata !{i64 81}
!82 = metadata !{i64 82}
!83 = metadata !{i64 83}
!84 = metadata !{i64 84}
!85 = metadata !{i64 85}
!86 = metadata !{i64 86}
!87 = metadata !{i64 87}
!88 = metadata !{i64 88}
!89 = metadata !{i64 89}
!90 = metadata !{i64 90}
!91 = metadata !{i64 91}
!92 = metadata !{i64 92}
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}
!169 = metadata !{i64 169}
!170 = metadata !{i64 170}
!171 = metadata !{i64 171}
!172 = metadata !{i64 172}
!173 = metadata !{i64 173}
!174 = metadata !{i64 174}
!175 = metadata !{i64 175}
!176 = metadata !{i64 176}
!177 = metadata !{i64 177}
!178 = metadata !{i64 178}
!179 = metadata !{i64 179}
!180 = metadata !{i64 180}
!181 = metadata !{i64 181}
!182 = metadata !{i64 182}
!183 = metadata !{i64 183}
!184 = metadata !{i64 184}
!185 = metadata !{i64 185}
!186 = metadata !{i64 186}
!187 = metadata !{i64 187}
!188 = metadata !{i64 188}
!189 = metadata !{i64 189}
!190 = metadata !{i64 190}
!191 = metadata !{i64 191}
!192 = metadata !{i64 192}
!193 = metadata !{i64 193}
!194 = metadata !{i64 194}
!195 = metadata !{i64 195}
!196 = metadata !{i64 196}
!197 = metadata !{i64 197}
!198 = metadata !{i64 198}
!199 = metadata !{i64 199}
!200 = metadata !{i64 200}
!201 = metadata !{i64 201}
!202 = metadata !{i64 202}
!203 = metadata !{i64 203}
!204 = metadata !{i64 204}
!205 = metadata !{i64 205}
!206 = metadata !{i64 206}
!207 = metadata !{i64 207}
!208 = metadata !{i64 208}
!209 = metadata !{i64 209}
!210 = metadata !{i64 210}
!211 = metadata !{i64 211}
!212 = metadata !{i64 212}
!213 = metadata !{i64 213}
!214 = metadata !{i64 214}
!215 = metadata !{i64 215}
!216 = metadata !{i64 216}
!217 = metadata !{i64 217}
!218 = metadata !{i64 218}
!219 = metadata !{i64 219}
!220 = metadata !{i64 220}
!221 = metadata !{i64 221}
!222 = metadata !{i64 222}
!223 = metadata !{i64 223}
!224 = metadata !{i64 224}
!225 = metadata !{i64 225}
!226 = metadata !{i64 226}
!227 = metadata !{i64 227}
!228 = metadata !{i64 228}
!229 = metadata !{i64 229}
!230 = metadata !{i64 230}
!231 = metadata !{i64 231}
!232 = metadata !{i64 232}
!233 = metadata !{i64 233}
!234 = metadata !{i64 234}
!235 = metadata !{i64 235}
!236 = metadata !{i64 236}
!237 = metadata !{i64 237}
!238 = metadata !{i64 238}
!239 = metadata !{i64 239}
!240 = metadata !{i64 240}
!241 = metadata !{i64 241}
!242 = metadata !{i64 242}
!243 = metadata !{i64 243}
!244 = metadata !{i64 244}
!245 = metadata !{i64 245}
!246 = metadata !{i64 246}
!247 = metadata !{i64 247}
!248 = metadata !{i64 248}
!249 = metadata !{i64 249}
!250 = metadata !{i64 250}
!251 = metadata !{i64 251}
!252 = metadata !{i64 252}
!253 = metadata !{i64 253}
!254 = metadata !{i64 254}
!255 = metadata !{i64 255}
!256 = metadata !{i64 256}
!257 = metadata !{i64 257}
!258 = metadata !{i64 258}
!259 = metadata !{i64 259}
!260 = metadata !{i64 260}
!261 = metadata !{i64 261}
!262 = metadata !{i64 262}
!263 = metadata !{i64 263}
!264 = metadata !{i64 264}
!265 = metadata !{i64 265}
!266 = metadata !{i64 266}
!267 = metadata !{i64 267}
!268 = metadata !{i64 268}
!269 = metadata !{i64 269}
!270 = metadata !{i64 270}
!271 = metadata !{i64 271}
!272 = metadata !{i64 272}
!273 = metadata !{i64 273}
!274 = metadata !{i64 274}
!275 = metadata !{i64 275}
!276 = metadata !{i64 276}
!277 = metadata !{i64 277}
!278 = metadata !{i64 278}
!279 = metadata !{i64 279}
!280 = metadata !{i64 280}
!281 = metadata !{i64 281}
!282 = metadata !{i64 282}
!283 = metadata !{i64 283}
!284 = metadata !{i64 284}
!285 = metadata !{i64 285}
!286 = metadata !{i64 286}
!287 = metadata !{i64 287}
!288 = metadata !{i64 288}
!289 = metadata !{i64 289}
!290 = metadata !{i64 290}
!291 = metadata !{i64 291}
!292 = metadata !{i64 292}
!293 = metadata !{i64 293}
!294 = metadata !{i64 294}
!295 = metadata !{i64 295}
!296 = metadata !{i64 296}
!297 = metadata !{i64 297}
!298 = metadata !{i64 298}
!299 = metadata !{i64 299}
!300 = metadata !{i64 300}
!301 = metadata !{i64 301}
!302 = metadata !{i64 302}
!303 = metadata !{i64 303}
!304 = metadata !{i64 304}
!305 = metadata !{i64 305}
!306 = metadata !{i64 306}
!307 = metadata !{i64 307}
!308 = metadata !{i64 308}
!309 = metadata !{i64 309}
!310 = metadata !{i64 310}
!311 = metadata !{i64 311}
!312 = metadata !{i64 312}
!313 = metadata !{i64 313}
!314 = metadata !{i64 314}
!315 = metadata !{i64 315}
!316 = metadata !{i64 316}
!317 = metadata !{i64 317}
!318 = metadata !{i64 318}
!319 = metadata !{i64 319}
!320 = metadata !{i64 320}
!321 = metadata !{i64 321}
!322 = metadata !{i64 322}
!323 = metadata !{i64 323}
!324 = metadata !{i64 324}
!325 = metadata !{i64 325}
!326 = metadata !{i64 326}
!327 = metadata !{i64 327}
!328 = metadata !{i64 328}
!329 = metadata !{i64 329}
!330 = metadata !{i64 330}
!331 = metadata !{i64 331}
!332 = metadata !{i64 332}
!333 = metadata !{i64 333}
!334 = metadata !{i64 334}
!335 = metadata !{i64 335}
!336 = metadata !{i64 336}
!337 = metadata !{i64 337}
!338 = metadata !{i64 338}
!339 = metadata !{i64 339}
!340 = metadata !{i64 340}
!341 = metadata !{i64 341}
!342 = metadata !{i64 342}
!343 = metadata !{i64 343}
!344 = metadata !{i64 344}
!345 = metadata !{i64 345}
!346 = metadata !{i64 346}
!347 = metadata !{i64 347}
!348 = metadata !{i64 348}
!349 = metadata !{i64 349}
!350 = metadata !{i64 350}
!351 = metadata !{i64 351}
!352 = metadata !{i64 352}
!353 = metadata !{i64 353}
!354 = metadata !{i64 354}
!355 = metadata !{i64 355}
!356 = metadata !{i64 356}
!357 = metadata !{i64 357}
!358 = metadata !{i64 358}
!359 = metadata !{i64 359}
!360 = metadata !{i64 360}
!361 = metadata !{i64 361}
!362 = metadata !{i64 362}
!363 = metadata !{i64 363}
!364 = metadata !{i64 364}
!365 = metadata !{i64 365}
!366 = metadata !{i64 366}
!367 = metadata !{i64 367}
!368 = metadata !{i64 368}
!369 = metadata !{i64 369}
!370 = metadata !{i64 370}
!371 = metadata !{i64 371}
!372 = metadata !{i64 372}
