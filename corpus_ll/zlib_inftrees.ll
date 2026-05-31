; ModuleID = 'corpus_src/zlib/inftrees.c'
source_filename = "corpus_src/zlib/inftrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1444 x %struct.code], i32, i32, i32 }

@inflate_copyright = dso_local local_unnamed_addr constant [49 x i8] c" inflate 1.3.2.1 Copyright 1995-2026 Mark Adler \00", align 16
@inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 68, i16 193], align 16
@inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16
@lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @inflate_table(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !5
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4, !tbaa !9
  br label %71

12:                                               ; preds = %6
  %13 = zext i32 %2 to i64
  %14 = and i64 %13, 3
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = and i64 %13, 4294967292
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %48, %18 ]
  %20 = phi i64 [ 0, %16 ], [ %49, %18 ]
  %21 = getelementptr inbounds i16, ptr %1, i64 %19
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !5
  %27 = or disjoint i64 %19, 1
  %28 = getelementptr inbounds i16, ptr %1, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !5
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !5
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 2, !tbaa !5
  %34 = or disjoint i64 %19, 2
  %35 = getelementptr inbounds i16, ptr %1, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !5
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !5
  %40 = add i16 %39, 1
  store i16 %40, ptr %38, align 2, !tbaa !5
  %41 = or disjoint i64 %19, 3
  %42 = getelementptr inbounds i16, ptr %1, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !5
  %48 = add nuw nsw i64 %19, 4
  %49 = add i64 %20, 4
  %50 = icmp eq i64 %49, %17
  br i1 %50, label %51, label %18, !llvm.loop !11

51:                                               ; preds = %18, %12
  %52 = phi i64 [ 0, %12 ], [ %48, %18 ]
  %53 = icmp eq i64 %14, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %63, %54 ], [ %52, %51 ]
  %56 = phi i64 [ %64, %54 ], [ 0, %51 ]
  %57 = getelementptr inbounds i16, ptr %1, i64 %55
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 2, !tbaa !5
  %63 = add nuw nsw i64 %55, 1
  %64 = add i64 %56, 1
  %65 = icmp eq i64 %64, %14
  br i1 %65, label %66, label %54, !llvm.loop !13

66:                                               ; preds = %54, %51
  %67 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  %68 = load i16, ptr %67, align 2, !tbaa !5
  %69 = load i32, ptr %4, align 4, !tbaa !9
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %10, %66
  %72 = phi i32 [ %11, %10 ], [ %69, %66 ]
  %73 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %74 = load i16, ptr %73, align 4, !tbaa !5
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %140

76:                                               ; preds = %71
  %77 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %78 = load i16, ptr %77, align 2, !tbaa !5
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %140

80:                                               ; preds = %76
  %81 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %82 = load i16, ptr %81, align 8, !tbaa !5
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %80
  %85 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %86 = load i16, ptr %85, align 2, !tbaa !5
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %84
  %89 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %90 = load i16, ptr %89, align 4, !tbaa !5
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %88
  %93 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %94 = load i16, ptr %93, align 2, !tbaa !5
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %92
  %97 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %98 = load i16, ptr %97, align 16, !tbaa !5
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %102 = load i16, ptr %101, align 2, !tbaa !5
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %106 = load i16, ptr %105, align 4, !tbaa !5
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %104
  %109 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %110 = load i16, ptr %109, align 2, !tbaa !5
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %108
  %113 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %114 = load i16, ptr %113, align 8, !tbaa !5
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %122 = load i16, ptr %121, align 4, !tbaa !5
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !5
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load ptr, ptr %3, align 8, !tbaa !15
  %130 = getelementptr inbounds %struct.code, ptr %129, i64 1
  store ptr %130, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %129, align 2, !tbaa.struct !17
  %131 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 1, ptr %131, align 1, !tbaa.struct !19
  %132 = getelementptr inbounds i8, ptr %129, i64 2
  store i16 0, ptr %132, align 2, !tbaa.struct !20
  %133 = load ptr, ptr %3, align 8, !tbaa !15
  %134 = getelementptr inbounds %struct.code, ptr %133, i64 1
  store ptr %134, ptr %3, align 8, !tbaa !15
  store i8 64, ptr %133, align 2, !tbaa.struct !17
  %135 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 1, ptr %135, align 1, !tbaa.struct !19
  %136 = getelementptr inbounds i8, ptr %133, i64 2
  store i16 0, ptr %136, align 2, !tbaa.struct !20
  br label %508

137:                                              ; preds = %124
  %138 = icmp ne i32 %72, 0
  %139 = zext i1 %138 to i32
  br label %156

140:                                              ; preds = %66, %71, %76, %80, %84, %88, %92, %96, %100, %104, %108, %112, %116, %120
  %141 = phi i32 [ %72, %120 ], [ %72, %116 ], [ %72, %112 ], [ %72, %108 ], [ %72, %104 ], [ %72, %100 ], [ %72, %96 ], [ %72, %92 ], [ %72, %88 ], [ %72, %84 ], [ %72, %80 ], [ %72, %76 ], [ %72, %71 ], [ %69, %66 ]
  %142 = phi i16 [ 0, %120 ], [ 0, %116 ], [ 0, %112 ], [ 0, %108 ], [ 0, %104 ], [ 0, %100 ], [ 0, %96 ], [ 0, %92 ], [ 0, %88 ], [ 0, %84 ], [ 0, %80 ], [ 0, %76 ], [ 0, %71 ], [ %68, %66 ]
  %143 = phi i32 [ 2, %120 ], [ 3, %116 ], [ 4, %112 ], [ 5, %108 ], [ 6, %104 ], [ 7, %100 ], [ 8, %96 ], [ 9, %92 ], [ 10, %88 ], [ 11, %84 ], [ 12, %80 ], [ 13, %76 ], [ 14, %71 ], [ 15, %66 ]
  %144 = tail call i32 @llvm.umin.i32(i32 %141, i32 %143)
  %145 = zext nneg i32 %143 to i64
  br label %146

146:                                              ; preds = %140, %151
  %147 = phi i64 [ 1, %140 ], [ %152, %151 ]
  %148 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !5
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = add nuw nsw i64 %147, 1
  %153 = icmp eq i64 %152, %145
  br i1 %153, label %156, label %146, !llvm.loop !21

154:                                              ; preds = %146
  %155 = trunc i64 %147 to i32
  br label %156

156:                                              ; preds = %151, %154, %137
  %157 = phi i32 [ %139, %137 ], [ %144, %154 ], [ %144, %151 ]
  %158 = phi i32 [ 1, %137 ], [ %143, %154 ], [ %143, %151 ]
  %159 = phi i1 [ false, %137 ], [ true, %154 ], [ true, %151 ]
  %160 = phi i16 [ 0, %137 ], [ %142, %154 ], [ %142, %151 ]
  %161 = phi i32 [ 1, %137 ], [ %155, %154 ], [ %143, %151 ]
  %162 = tail call i32 @llvm.umax.i32(i32 %157, i32 %161)
  %163 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 1
  %164 = load i16, ptr %163, align 2, !tbaa !5
  %165 = icmp ugt i16 %164, 2
  br i1 %165, label %510, label %166

166:                                              ; preds = %156
  %167 = shl nuw nsw i16 %164, 1
  %168 = zext nneg i16 %167 to i32
  %169 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 2
  %170 = load i16, ptr %169, align 4, !tbaa !5
  %171 = zext i16 %170 to i32
  %172 = add nuw nsw i32 %168, %171
  %173 = icmp ugt i32 %172, 4
  br i1 %173, label %510, label %174

174:                                              ; preds = %166
  %175 = shl nuw nsw i32 %172, 1
  %176 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 3
  %177 = load i16, ptr %176, align 2, !tbaa !5
  %178 = zext i16 %177 to i32
  %179 = add nuw nsw i32 %175, %178
  %180 = icmp ugt i32 %179, 8
  br i1 %180, label %510, label %181

181:                                              ; preds = %174
  %182 = shl nuw nsw i32 %179, 1
  %183 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 4
  %184 = load i16, ptr %183, align 8, !tbaa !5
  %185 = zext i16 %184 to i32
  %186 = add nuw nsw i32 %182, %185
  %187 = icmp ugt i32 %186, 16
  br i1 %187, label %510, label %188

188:                                              ; preds = %181
  %189 = shl nuw nsw i32 %186, 1
  %190 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 5
  %191 = load i16, ptr %190, align 2, !tbaa !5
  %192 = zext i16 %191 to i32
  %193 = add nuw nsw i32 %189, %192
  %194 = icmp ugt i32 %193, 32
  br i1 %194, label %510, label %195

195:                                              ; preds = %188
  %196 = shl nuw nsw i32 %193, 1
  %197 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 6
  %198 = load i16, ptr %197, align 4, !tbaa !5
  %199 = zext i16 %198 to i32
  %200 = add nuw nsw i32 %196, %199
  %201 = icmp ugt i32 %200, 64
  br i1 %201, label %510, label %202

202:                                              ; preds = %195
  %203 = shl nuw nsw i32 %200, 1
  %204 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 7
  %205 = load i16, ptr %204, align 2, !tbaa !5
  %206 = zext i16 %205 to i32
  %207 = add nuw nsw i32 %203, %206
  %208 = icmp ugt i32 %207, 128
  br i1 %208, label %510, label %209

209:                                              ; preds = %202
  %210 = shl nuw nsw i32 %207, 1
  %211 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 8
  %212 = load i16, ptr %211, align 16, !tbaa !5
  %213 = zext i16 %212 to i32
  %214 = add nuw nsw i32 %210, %213
  %215 = icmp ugt i32 %214, 256
  br i1 %215, label %510, label %216

216:                                              ; preds = %209
  %217 = shl nuw nsw i32 %214, 1
  %218 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 9
  %219 = load i16, ptr %218, align 2, !tbaa !5
  %220 = zext i16 %219 to i32
  %221 = add nuw nsw i32 %217, %220
  %222 = icmp ugt i32 %221, 512
  br i1 %222, label %510, label %223

223:                                              ; preds = %216
  %224 = shl nuw nsw i32 %221, 1
  %225 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 10
  %226 = load i16, ptr %225, align 4, !tbaa !5
  %227 = zext i16 %226 to i32
  %228 = add nuw nsw i32 %224, %227
  %229 = icmp ugt i32 %228, 1024
  br i1 %229, label %510, label %230

230:                                              ; preds = %223
  %231 = shl nuw nsw i32 %228, 1
  %232 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 11
  %233 = load i16, ptr %232, align 2, !tbaa !5
  %234 = zext i16 %233 to i32
  %235 = add nuw nsw i32 %231, %234
  %236 = icmp ugt i32 %235, 2048
  br i1 %236, label %510, label %237

237:                                              ; preds = %230
  %238 = shl nuw nsw i32 %235, 1
  %239 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 12
  %240 = load i16, ptr %239, align 8, !tbaa !5
  %241 = zext i16 %240 to i32
  %242 = add nuw nsw i32 %238, %241
  %243 = icmp ugt i32 %242, 4096
  br i1 %243, label %510, label %244

244:                                              ; preds = %237
  %245 = shl nuw nsw i32 %242, 1
  %246 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 13
  %247 = load i16, ptr %246, align 2, !tbaa !5
  %248 = zext i16 %247 to i32
  %249 = add nuw nsw i32 %245, %248
  %250 = icmp ugt i32 %249, 8192
  br i1 %250, label %510, label %251

251:                                              ; preds = %244
  %252 = shl nuw nsw i32 %249, 1
  %253 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 14
  %254 = load i16, ptr %253, align 4, !tbaa !5
  %255 = zext i16 %254 to i32
  %256 = add nuw nsw i32 %252, %255
  %257 = icmp ugt i32 %256, 16384
  br i1 %257, label %510, label %258

258:                                              ; preds = %251
  %259 = shl nuw nsw i32 %256, 1
  %260 = zext i16 %160 to i32
  %261 = add nuw nsw i32 %259, %260
  %262 = icmp ugt i32 %261, 32768
  br i1 %262, label %510, label %263

263:                                              ; preds = %258
  %264 = icmp ne i32 %261, 32768
  %265 = icmp eq i32 %0, 0
  %266 = or i1 %265, %159
  %267 = and i1 %264, %266
  br i1 %267, label %510, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %269, align 2, !tbaa !5
  %270 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 2
  store i16 %164, ptr %270, align 4, !tbaa !5
  %271 = add i16 %170, %164
  %272 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 3
  store i16 %271, ptr %272, align 2, !tbaa !5
  %273 = add i16 %177, %271
  %274 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 4
  store i16 %273, ptr %274, align 8, !tbaa !5
  %275 = add i16 %184, %273
  %276 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 5
  store i16 %275, ptr %276, align 2, !tbaa !5
  %277 = add i16 %191, %275
  %278 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 6
  store i16 %277, ptr %278, align 4, !tbaa !5
  %279 = add i16 %198, %277
  %280 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 7
  store i16 %279, ptr %280, align 2, !tbaa !5
  %281 = add i16 %205, %279
  %282 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 8
  store i16 %281, ptr %282, align 16, !tbaa !5
  %283 = add i16 %212, %281
  %284 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 9
  store i16 %283, ptr %284, align 2, !tbaa !5
  %285 = add i16 %219, %283
  %286 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 10
  store i16 %285, ptr %286, align 4, !tbaa !5
  %287 = add i16 %226, %285
  %288 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 11
  store i16 %287, ptr %288, align 2, !tbaa !5
  %289 = add i16 %233, %287
  %290 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 12
  store i16 %289, ptr %290, align 8, !tbaa !5
  %291 = add i16 %240, %289
  %292 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 13
  store i16 %291, ptr %292, align 2, !tbaa !5
  %293 = add i16 %247, %291
  %294 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 14
  store i16 %293, ptr %294, align 4, !tbaa !5
  %295 = add i16 %254, %293
  %296 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 15
  store i16 %295, ptr %296, align 2, !tbaa !5
  br i1 %9, label %349, label %297

297:                                              ; preds = %268
  %298 = zext i32 %2 to i64
  %299 = and i64 %298, 1
  %300 = icmp eq i32 %2, 1
  br i1 %300, label %334, label %301

301:                                              ; preds = %297
  %302 = and i64 %298, 4294967294
  br label %303

303:                                              ; preds = %330, %301
  %304 = phi i64 [ 0, %301 ], [ %331, %330 ]
  %305 = phi i64 [ 0, %301 ], [ %332, %330 ]
  %306 = getelementptr inbounds i16, ptr %1, i64 %304
  %307 = load i16, ptr %306, align 2, !tbaa !5
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %303
  %310 = trunc i64 %304 to i16
  %311 = zext i16 %307 to i64
  %312 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !5
  %314 = add i16 %313, 1
  store i16 %314, ptr %312, align 2, !tbaa !5
  %315 = zext i16 %313 to i64
  %316 = getelementptr inbounds i16, ptr %5, i64 %315
  store i16 %310, ptr %316, align 2, !tbaa !5
  br label %317

317:                                              ; preds = %303, %309
  %318 = or disjoint i64 %304, 1
  %319 = getelementptr inbounds i16, ptr %1, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !5
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %330, label %322

322:                                              ; preds = %317
  %323 = trunc i64 %318 to i16
  %324 = zext i16 %320 to i64
  %325 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !5
  %327 = add i16 %326, 1
  store i16 %327, ptr %325, align 2, !tbaa !5
  %328 = zext i16 %326 to i64
  %329 = getelementptr inbounds i16, ptr %5, i64 %328
  store i16 %323, ptr %329, align 2, !tbaa !5
  br label %330

330:                                              ; preds = %322, %317
  %331 = add nuw nsw i64 %304, 2
  %332 = add i64 %305, 2
  %333 = icmp eq i64 %332, %302
  br i1 %333, label %334, label %303, !llvm.loop !22

334:                                              ; preds = %330, %297
  %335 = phi i64 [ 0, %297 ], [ %331, %330 ]
  %336 = icmp eq i64 %299, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds i16, ptr %1, i64 %335
  %339 = load i16, ptr %338, align 2, !tbaa !5
  %340 = icmp eq i16 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %337
  %342 = trunc i64 %335 to i16
  %343 = zext i16 %339 to i64
  %344 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %343
  %345 = load i16, ptr %344, align 2, !tbaa !5
  %346 = add i16 %345, 1
  store i16 %346, ptr %344, align 2, !tbaa !5
  %347 = zext i16 %345 to i64
  %348 = getelementptr inbounds i16, ptr %5, i64 %347
  store i16 %342, ptr %348, align 2, !tbaa !5
  br label %349

349:                                              ; preds = %334, %341, %337, %268
  switch i32 %0, label %355 [
    i32 0, label %350
    i32 1, label %351
    i32 2, label %353
  ]

350:                                              ; preds = %349
  br label %355

351:                                              ; preds = %349
  %352 = icmp ugt i32 %162, 9
  br i1 %352, label %510, label %355

353:                                              ; preds = %349
  %354 = icmp ugt i32 %162, 9
  br i1 %354, label %510, label %355

355:                                              ; preds = %349, %350, %351, %353
  %356 = phi i1 [ true, %353 ], [ false, %351 ], [ false, %350 ], [ false, %349 ]
  %357 = phi ptr [ @inflate_table.dbase, %353 ], [ @inflate_table.lbase, %351 ], [ null, %350 ], [ null, %349 ]
  %358 = phi ptr [ @inflate_table.dext, %353 ], [ @inflate_table.lext, %351 ], [ null, %350 ], [ null, %349 ]
  %359 = phi i32 [ 0, %353 ], [ 257, %351 ], [ 20, %350 ], [ 0, %349 ]
  %360 = phi i1 [ false, %353 ], [ true, %351 ], [ false, %350 ], [ false, %349 ]
  %361 = shl nuw i32 1, %162
  %362 = add i32 %361, -1
  %363 = load ptr, ptr %3, align 8, !tbaa !15
  %364 = trunc i32 %162 to i8
  br label %365

365:                                              ; preds = %485, %355
  %366 = phi i32 [ %442, %485 ], [ %161, %355 ]
  %367 = phi i32 [ %425, %485 ], [ 0, %355 ]
  %368 = phi i32 [ %478, %485 ], [ %162, %355 ]
  %369 = phi i32 [ %450, %485 ], [ 0, %355 ]
  %370 = phi i32 [ %479, %485 ], [ %361, %355 ]
  %371 = phi i32 [ %424, %485 ], [ 0, %355 ]
  %372 = phi i32 [ %445, %485 ], [ -1, %355 ]
  %373 = phi ptr [ %452, %485 ], [ %363, %355 ]
  %374 = shl nuw i32 1, %368
  br label %375

375:                                              ; preds = %447, %365
  %376 = phi i32 [ %366, %365 ], [ %442, %447 ]
  %377 = phi i32 [ %367, %365 ], [ %425, %447 ]
  %378 = phi i32 [ %371, %365 ], [ %424, %447 ]
  %379 = sub i32 %376, %369
  %380 = trunc i32 %379 to i8
  %381 = zext i32 %377 to i64
  %382 = getelementptr inbounds i16, ptr %5, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !5
  %384 = zext i16 %383 to i32
  %385 = add nuw nsw i32 %384, 1
  %386 = icmp ult i32 %385, %359
  br i1 %386, label %397, label %387

387:                                              ; preds = %375
  %388 = icmp ugt i32 %359, %384
  br i1 %388, label %397, label %389

389:                                              ; preds = %387
  %390 = sub nsw i32 %384, %359
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds i16, ptr %358, i64 %391
  %393 = load i16, ptr %392, align 2, !tbaa !5
  %394 = trunc i16 %393 to i8
  %395 = getelementptr inbounds i16, ptr %357, i64 %391
  %396 = load i16, ptr %395, align 2, !tbaa !5
  br label %397

397:                                              ; preds = %387, %375, %389
  %398 = phi i16 [ %396, %389 ], [ %383, %375 ], [ 0, %387 ]
  %399 = phi i8 [ %394, %389 ], [ 0, %375 ], [ 96, %387 ]
  %400 = shl nsw i32 -1, %379
  %401 = lshr i32 %378, %369
  br label %402

402:                                              ; preds = %402, %397
  %403 = phi i32 [ %374, %397 ], [ %404, %402 ]
  %404 = add i32 %403, %400
  %405 = add i32 %404, %401
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.code, ptr %373, i64 %406
  store i8 %399, ptr %407, align 2, !tbaa.struct !17
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  store i8 %380, ptr %408, align 1, !tbaa.struct !19
  %409 = getelementptr inbounds i8, ptr %407, i64 2
  store i16 %398, ptr %409, align 2, !tbaa.struct !20
  %410 = icmp eq i32 %404, 0
  br i1 %410, label %411, label %402, !llvm.loop !23

411:                                              ; preds = %402
  %412 = add i32 %376, -1
  %413 = shl nuw i32 1, %412
  br label %414

414:                                              ; preds = %414, %411
  %415 = phi i32 [ %413, %411 ], [ %418, %414 ]
  %416 = and i32 %415, %378
  %417 = icmp eq i32 %416, 0
  %418 = lshr i32 %415, 1
  br i1 %417, label %419, label %414, !llvm.loop !24

419:                                              ; preds = %414
  %420 = icmp eq i32 %415, 0
  %421 = add i32 %415, -1
  %422 = and i32 %421, %378
  %423 = add i32 %422, %415
  %424 = select i1 %420, i32 0, i32 %423
  %425 = add i32 %377, 1
  %426 = zext i32 %376 to i64
  %427 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !5
  %429 = add i16 %428, -1
  store i16 %429, ptr %427, align 2, !tbaa !5
  %430 = icmp eq i16 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %419
  %432 = icmp eq i32 %376, %158
  br i1 %432, label %497, label %433

433:                                              ; preds = %431
  %434 = zext i32 %425 to i64
  %435 = getelementptr inbounds i16, ptr %5, i64 %434
  %436 = load i16, ptr %435, align 2, !tbaa !5
  %437 = zext i16 %436 to i64
  %438 = getelementptr inbounds i16, ptr %1, i64 %437
  %439 = load i16, ptr %438, align 2, !tbaa !5
  %440 = zext i16 %439 to i32
  br label %441

441:                                              ; preds = %433, %419
  %442 = phi i32 [ %440, %433 ], [ %376, %419 ]
  %443 = icmp ugt i32 %442, %162
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = and i32 %424, %362
  %446 = icmp eq i32 %445, %372
  br i1 %446, label %447, label %448

447:                                              ; preds = %444, %441
  br label %375

448:                                              ; preds = %444
  %449 = icmp eq i32 %369, 0
  %450 = select i1 %449, i32 %162, i32 %369
  %451 = zext i32 %374 to i64
  %452 = getelementptr inbounds %struct.code, ptr %373, i64 %451
  %453 = sub i32 %442, %450
  %454 = shl nuw i32 1, %453
  %455 = icmp ult i32 %442, %158
  br i1 %455, label %456, label %476

456:                                              ; preds = %448
  %457 = sub i32 %158, %450
  br label %458

458:                                              ; preds = %456, %468
  %459 = phi i32 [ %471, %468 ], [ %442, %456 ]
  %460 = phi i32 [ %470, %468 ], [ %454, %456 ]
  %461 = phi i32 [ %469, %468 ], [ %453, %456 ]
  %462 = zext i32 %459 to i64
  %463 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %462
  %464 = load i16, ptr %463, align 2, !tbaa !5
  %465 = zext i16 %464 to i32
  %466 = sub nsw i32 %460, %465
  %467 = icmp slt i32 %466, 1
  br i1 %467, label %473, label %468

468:                                              ; preds = %458
  %469 = add i32 %461, 1
  %470 = shl nuw i32 %466, 1
  %471 = add i32 %469, %450
  %472 = icmp ult i32 %471, %158
  br i1 %472, label %458, label %473, !llvm.loop !25

473:                                              ; preds = %458, %468
  %474 = phi i32 [ %457, %468 ], [ %461, %458 ]
  %475 = shl nuw i32 1, %474
  br label %476

476:                                              ; preds = %473, %448
  %477 = phi i32 [ %475, %473 ], [ %454, %448 ]
  %478 = phi i32 [ %474, %473 ], [ %453, %448 ]
  %479 = add i32 %477, %370
  %480 = icmp ugt i32 %479, 852
  %481 = select i1 %360, i1 %480, i1 false
  %482 = icmp ugt i32 %479, 592
  %483 = select i1 %356, i1 %482, i1 false
  %484 = select i1 %481, i1 true, i1 %483
  br i1 %484, label %510, label %485

485:                                              ; preds = %476
  %486 = trunc i32 %478 to i8
  %487 = load ptr, ptr %3, align 8, !tbaa !15
  %488 = zext i32 %445 to i64
  %489 = getelementptr inbounds %struct.code, ptr %487, i64 %488
  store i8 %486, ptr %489, align 2, !tbaa !26
  %490 = getelementptr inbounds %struct.code, ptr %487, i64 %488, i32 1
  store i8 %364, ptr %490, align 1, !tbaa !28
  %491 = ptrtoint ptr %452 to i64
  %492 = ptrtoint ptr %487 to i64
  %493 = sub i64 %491, %492
  %494 = lshr exact i64 %493, 2
  %495 = trunc i64 %494 to i16
  %496 = getelementptr inbounds %struct.code, ptr %487, i64 %488, i32 2
  store i16 %495, ptr %496, align 2, !tbaa !29
  br label %365

497:                                              ; preds = %431
  %498 = icmp eq i32 %424, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %497
  %500 = zext i32 %424 to i64
  %501 = getelementptr inbounds %struct.code, ptr %373, i64 %500
  store i8 64, ptr %501, align 2, !tbaa.struct !17
  %502 = getelementptr inbounds i8, ptr %501, i64 1
  store i8 %380, ptr %502, align 1, !tbaa.struct !19
  %503 = getelementptr inbounds i8, ptr %501, i64 2
  store i16 0, ptr %503, align 2, !tbaa.struct !20
  br label %504

504:                                              ; preds = %499, %497
  %505 = load ptr, ptr %3, align 8, !tbaa !15
  %506 = zext i32 %370 to i64
  %507 = getelementptr inbounds %struct.code, ptr %505, i64 %506
  store ptr %507, ptr %3, align 8, !tbaa !15
  br label %508

508:                                              ; preds = %128, %504
  %509 = phi i32 [ %162, %504 ], [ 1, %128 ]
  store i32 %509, ptr %4, align 4, !tbaa !9
  br label %510

510:                                              ; preds = %476, %508, %263, %156, %166, %174, %181, %188, %195, %202, %209, %216, %223, %230, %237, %244, %251, %258, %351, %353
  %511 = phi i32 [ 1, %353 ], [ 1, %351 ], [ -1, %258 ], [ -1, %251 ], [ -1, %244 ], [ -1, %237 ], [ -1, %230 ], [ -1, %223 ], [ -1, %216 ], [ -1, %209 ], [ -1, %202 ], [ -1, %195 ], [ -1, %188 ], [ -1, %181 ], [ -1, %174 ], [ -1, %166 ], [ -1, %156 ], [ -1, %263 ], [ 0, %508 ], [ 1, %476 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #5
  ret i32 %511
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @inflate_fixed(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 20
  store ptr @lenfix, ptr %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 22
  store i32 9, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 21
  store ptr @distfix, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.inflate_state, ptr %0, i64 0, i32 23
  store i32 5, ptr %5, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{i64 0, i64 1, !18, i64 1, i64 1, !18, i64 2, i64 2, !5}
!18 = !{!7, !7, i64 0}
!19 = !{i64 0, i64 1, !18, i64 1, i64 2, !5}
!20 = !{i64 0, i64 2, !5}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = !{!27, !7, i64 0}
!27 = !{!"", !7, i64 0, !7, i64 1, !6, i64 2}
!28 = !{!27, !7, i64 1}
!29 = !{!27, !6, i64 2}
!30 = !{!31, !16, i64 104}
!31 = !{!"inflate_state", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !32, i64 32, !32, i64 40, !16, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !16, i64 72, !32, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !16, i64 104, !16, i64 112, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !16, i64 144, !7, i64 152, !7, i64 792, !7, i64 1368, !10, i64 7144, !10, i64 7148, !10, i64 7152}
!32 = !{!"long", !7, i64 0}
!33 = !{!31, !10, i64 120}
!34 = !{!31, !16, i64 112}
!35 = !{!31, !10, i64 124}
