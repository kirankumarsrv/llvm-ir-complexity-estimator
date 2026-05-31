; ModuleID = 'corpus_src/zlib/contrib/infback9/infback9.c'
source_filename = "corpus_src/zlib/contrib/infback9/infback9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { ptr, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [1446 x %struct.code] }

@inflateBack9.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@inflateBack9.lenfix = internal unnamed_addr constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 -124, i8 8, i16 115 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 -123, i8 8, i16 227 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 -123, i8 8, i16 163 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 65, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 -123, i8 8, i16 131 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 -112, i8 8, i16 3 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 -123, i8 8, i16 195 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 77, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 -124, i8 8, i16 115 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 -123, i8 8, i16 227 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 -123, i8 8, i16 163 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 65, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 -123, i8 8, i16 131 }, %struct.code { i8 -126, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 -128, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 -128, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 -125, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 -127, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 -128, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 -112, i8 8, i16 3 }, %struct.code { i8 -125, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 -127, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 -128, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 -124, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 -126, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 -128, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 -123, i8 8, i16 195 }, %struct.code { i8 -125, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 -127, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 -128, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 -124, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 -126, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 -128, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 77, i8 8, i16 0 }, %struct.code { i8 -125, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 -127, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 -128, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 -124, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 -126, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 16
@inflateBack9.distfix = internal unnamed_addr constant [32 x %struct.code] [%struct.code { i8 -128, i8 5, i16 1 }, %struct.code { i8 -121, i8 5, i16 257 }, %struct.code { i8 -125, i8 5, i16 17 }, %struct.code { i8 -117, i8 5, i16 4097 }, %struct.code { i8 -127, i8 5, i16 5 }, %struct.code { i8 -119, i8 5, i16 1025 }, %struct.code { i8 -123, i8 5, i16 65 }, %struct.code { i8 -115, i8 5, i16 16385 }, %struct.code { i8 -128, i8 5, i16 3 }, %struct.code { i8 -120, i8 5, i16 513 }, %struct.code { i8 -124, i8 5, i16 33 }, %struct.code { i8 -116, i8 5, i16 8193 }, %struct.code { i8 -126, i8 5, i16 9 }, %struct.code { i8 -118, i8 5, i16 2049 }, %struct.code { i8 -122, i8 5, i16 129 }, %struct.code { i8 -114, i8 5, i16 -32767 }, %struct.code { i8 -128, i8 5, i16 2 }, %struct.code { i8 -121, i8 5, i16 385 }, %struct.code { i8 -125, i8 5, i16 25 }, %struct.code { i8 -117, i8 5, i16 6145 }, %struct.code { i8 -127, i8 5, i16 7 }, %struct.code { i8 -119, i8 5, i16 1537 }, %struct.code { i8 -123, i8 5, i16 97 }, %struct.code { i8 -115, i8 5, i16 24577 }, %struct.code { i8 -128, i8 5, i16 4 }, %struct.code { i8 -120, i8 5, i16 769 }, %struct.code { i8 -124, i8 5, i16 49 }, %struct.code { i8 -116, i8 5, i16 12289 }, %struct.code { i8 -126, i8 5, i16 13 }, %struct.code { i8 -118, i8 5, i16 3073 }, %struct.code { i8 -122, i8 5, i16 193 }, %struct.code { i8 -114, i8 5, i16 -16383 }], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"too many length symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBack9Init_(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !5
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  %13 = icmp eq ptr %1, null
  %14 = or i1 %12, %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %16, align 8, !tbaa !8
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  store ptr @zcalloc, ptr %17, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %21, align 8, !tbaa !14
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ @zcalloc, %20 ], [ %18, %15 ]
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store ptr @zcfree, ptr %24, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = tail call ptr %23(ptr noundef %30, i32 noundef 1, i32 noundef 7032) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %31, ptr %34, align 8, !tbaa !16
  store ptr %1, ptr %31, align 8, !tbaa !17
  br label %35

35:                                               ; preds = %28, %11, %4, %6, %33
  %36 = phi i32 [ 0, %33 ], [ -6, %6 ], [ -6, %4 ], [ -2, %11 ], [ -4, %28 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @inflateBack9(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %1189, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %1189, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %15, align 8, !tbaa !8
  %16 = load ptr, ptr %12, align 8, !tbaa !17
  %17 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %17, ptr %6, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !21
  br label %22

22:                                               ; preds = %14, %19
  %23 = phi i32 [ %21, %19 ], [ 0, %14 ]
  %24 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 2
  %25 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 3
  %26 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 1
  %27 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 4
  %28 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 8
  %29 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 5
  %30 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6
  %31 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 7
  %32 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 256
  br label %33

33:                                               ; preds = %132, %22
  %34 = phi ptr [ %16, %22 ], [ %133, %132 ]
  %35 = phi i32 [ %23, %22 ], [ %134, %132 ]
  %36 = phi i64 [ 65536, %22 ], [ %135, %132 ]
  %37 = phi i32 [ 0, %22 ], [ %136, %132 ]
  %38 = phi i32 [ 0, %22 ], [ %137, %132 ]
  %39 = phi i32 [ 0, %22 ], [ %138, %132 ]
  %40 = phi i64 [ 0, %22 ], [ %139, %132 ]
  %41 = phi i32 [ 0, %22 ], [ %140, %132 ]
  %42 = phi ptr [ null, %22 ], [ %141, %132 ]
  %43 = phi ptr [ null, %22 ], [ %142, %132 ]
  switch i32 %37, label %1183 [
    i32 0, label %48
    i32 1, label %91
    i32 2, label %44
    i32 3, label %663
    i32 4, label %1174
    i32 5, label %1184
  ]

44:                                               ; preds = %33
  %45 = icmp ult i32 %41, 14
  br i1 %45, label %46, label %199

46:                                               ; preds = %44
  %47 = zext nneg i32 %41 to i64
  br label %177

48:                                               ; preds = %33
  %49 = icmp eq i32 %38, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = icmp ult i32 %41, 3
  br i1 %51, label %52, label %74

52:                                               ; preds = %50
  %53 = or disjoint i32 %41, 8
  %54 = icmp eq i32 %35, 0
  br i1 %54, label %60, label %64

55:                                               ; preds = %48
  %56 = and i32 %41, 7
  %57 = zext nneg i32 %56 to i64
  %58 = lshr i64 %40, %57
  %59 = and i32 %41, -8
  br label %132

60:                                               ; preds = %52
  %61 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

64:                                               ; preds = %60, %52
  %65 = phi i32 [ %61, %60 ], [ %35, %52 ]
  %66 = add i32 %65, -1
  %67 = load ptr, ptr %6, align 8, !tbaa !20
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  store ptr %68, ptr %6, align 8, !tbaa !20
  %69 = load i8, ptr %67, align 1, !tbaa !5
  %70 = zext i8 %69 to i64
  %71 = zext nneg i32 %41 to i64
  %72 = shl nuw nsw i64 %70, %71
  %73 = add i64 %72, %40
  br label %74

74:                                               ; preds = %64, %50
  %75 = phi i32 [ %66, %64 ], [ %35, %50 ]
  %76 = phi i64 [ %73, %64 ], [ %40, %50 ]
  %77 = phi i32 [ %53, %64 ], [ %41, %50 ]
  %78 = trunc i64 %76 to i32
  %79 = and i32 %78, 1
  %80 = lshr i32 %78, 1
  %81 = and i32 %80, 3
  switch i32 %81, label %1182 [
    i32 0, label %85
    i32 1, label %82
    i32 2, label %83
    i32 3, label %84
  ]

82:                                               ; preds = %74
  store i32 9, ptr %7, align 4, !tbaa !22
  store i32 5, ptr %8, align 4, !tbaa !22
  br label %85

83:                                               ; preds = %74
  br label %85

84:                                               ; preds = %74
  store ptr @.str.1, ptr %15, align 8, !tbaa !8
  br label %85

85:                                               ; preds = %74, %82, %83, %84
  %86 = phi i32 [ 5, %84 ], [ 2, %83 ], [ 3, %82 ], [ 1, %74 ]
  %87 = phi ptr [ %42, %84 ], [ %42, %83 ], [ @inflateBack9.lenfix, %82 ], [ %42, %74 ]
  %88 = phi ptr [ %43, %84 ], [ %43, %83 ], [ @inflateBack9.distfix, %82 ], [ %43, %74 ]
  %89 = lshr i64 %76, 3
  %90 = add i32 %77, -3
  br label %132

91:                                               ; preds = %33
  %92 = and i32 %41, 7
  %93 = zext nneg i32 %92 to i64
  %94 = lshr i64 %40, %93
  %95 = and i32 %41, -8
  %96 = icmp ult i32 %95, 32
  br i1 %96, label %97, label %122

97:                                               ; preds = %91
  %98 = and i32 %41, -8
  %99 = zext i32 %98 to i64
  br label %100

100:                                              ; preds = %97, %109
  %101 = phi i64 [ %99, %97 ], [ %118, %109 ]
  %102 = phi i64 [ %94, %97 ], [ %117, %109 ]
  %103 = phi i32 [ %35, %97 ], [ %111, %109 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

109:                                              ; preds = %105, %100
  %110 = phi i32 [ %106, %105 ], [ %103, %100 ]
  %111 = add i32 %110, -1
  %112 = load ptr, ptr %6, align 8, !tbaa !20
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %113, ptr %6, align 8, !tbaa !20
  %114 = load i8, ptr %112, align 1, !tbaa !5
  %115 = zext i8 %114 to i64
  %116 = shl nuw nsw i64 %115, %101
  %117 = add i64 %116, %102
  %118 = add nuw nsw i64 %101, 8
  %119 = icmp ult i64 %101, 24
  br i1 %119, label %100, label %120, !llvm.loop !23

120:                                              ; preds = %109
  %121 = trunc i64 %118 to i32
  br label %122

122:                                              ; preds = %120, %91
  %123 = phi i32 [ %35, %91 ], [ %111, %120 ]
  %124 = phi i64 [ %94, %91 ], [ %117, %120 ]
  %125 = phi i32 [ %95, %91 ], [ %121, %120 ]
  %126 = and i64 %124, 65535
  %127 = lshr i64 %124, 16
  %128 = xor i64 %127, %126
  %129 = icmp eq i64 %128, 65535
  br i1 %129, label %130, label %143

130:                                              ; preds = %122
  %131 = icmp eq i64 %126, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %1170, %161, %130, %614, %440, %820, %1074, %1015, %826, %813, %662, %653, %649, %282, %215, %143, %85, %55
  %133 = phi ptr [ %818, %813 ], [ %34, %826 ], [ %34, %1015 ], [ %34, %1074 ], [ %34, %215 ], [ %34, %282 ], [ %34, %649 ], [ %34, %653 ], [ %34, %662 ], [ %34, %143 ], [ %34, %55 ], [ %34, %85 ], [ %34, %820 ], [ %34, %440 ], [ %34, %614 ], [ %34, %130 ], [ %174, %161 ], [ %1171, %1170 ]
  %134 = phi i32 [ %795, %813 ], [ %795, %826 ], [ %1002, %1015 ], [ %1063, %1074 ], [ %200, %215 ], [ %255, %282 ], [ %644, %649 ], [ %644, %653 ], [ %644, %662 ], [ %123, %143 ], [ %35, %55 ], [ %75, %85 ], [ %795, %820 ], [ %432, %440 ], [ %517, %614 ], [ %123, %130 ], [ %170, %161 ], [ %1063, %1170 ]
  %135 = phi i64 [ %819, %813 ], [ %36, %826 ], [ %36, %1015 ], [ %36, %1074 ], [ %36, %215 ], [ %36, %282 ], [ %36, %649 ], [ %36, %653 ], [ %36, %662 ], [ %36, %143 ], [ %36, %55 ], [ %36, %85 ], [ %36, %820 ], [ %36, %440 ], [ %36, %614 ], [ %36, %130 ], [ %173, %161 ], [ %1172, %1170 ]
  %136 = phi i32 [ 3, %813 ], [ 5, %826 ], [ 5, %1015 ], [ 5, %1074 ], [ 5, %215 ], [ 5, %282 ], [ 5, %649 ], [ 5, %653 ], [ 5, %662 ], [ 5, %143 ], [ 4, %55 ], [ %86, %85 ], [ 0, %820 ], [ 5, %440 ], [ 5, %614 ], [ 0, %130 ], [ 0, %161 ], [ 3, %1170 ]
  %137 = phi i32 [ %38, %813 ], [ %38, %826 ], [ %38, %1015 ], [ %38, %1074 ], [ %38, %215 ], [ %38, %282 ], [ %38, %649 ], [ %38, %653 ], [ %38, %662 ], [ %38, %143 ], [ 1, %55 ], [ %79, %85 ], [ %38, %820 ], [ %38, %440 ], [ %38, %614 ], [ %38, %130 ], [ %38, %161 ], [ %38, %1170 ]
  %138 = phi i32 [ %816, %813 ], [ %39, %826 ], [ %39, %1015 ], [ %39, %1074 ], [ %39, %215 ], [ %39, %282 ], [ %39, %649 ], [ %39, %653 ], [ %39, %662 ], [ %39, %143 ], [ %39, %55 ], [ %39, %85 ], [ %39, %820 ], [ %39, %440 ], [ %39, %614 ], [ %39, %130 ], [ %164, %161 ], [ %1087, %1170 ]
  %139 = phi i64 [ %803, %813 ], [ %803, %826 ], [ %1010, %1015 ], [ %1064, %1074 ], [ %212, %215 ], [ %266, %282 ], [ %645, %649 ], [ %645, %653 ], [ %645, %662 ], [ %124, %143 ], [ %58, %55 ], [ %89, %85 ], [ %803, %820 ], [ %436, %440 ], [ %518, %614 ], [ 0, %130 ], [ 0, %161 ], [ %1064, %1170 ]
  %140 = phi i32 [ %804, %813 ], [ %804, %826 ], [ %1011, %1015 ], [ %1065, %1074 ], [ %213, %215 ], [ %267, %282 ], [ %646, %649 ], [ %646, %653 ], [ %646, %662 ], [ %125, %143 ], [ %59, %55 ], [ %90, %85 ], [ %804, %820 ], [ %437, %440 ], [ %519, %614 ], [ 0, %130 ], [ 0, %161 ], [ %1065, %1170 ]
  %141 = phi ptr [ %667, %813 ], [ %667, %826 ], [ %667, %1015 ], [ %667, %1074 ], [ %42, %215 ], [ %28, %282 ], [ %28, %649 ], [ %28, %653 ], [ %28, %662 ], [ %42, %143 ], [ %42, %55 ], [ %87, %85 ], [ %667, %820 ], [ %28, %440 ], [ %28, %614 ], [ %42, %130 ], [ %42, %161 ], [ %667, %1170 ]
  %142 = phi ptr [ %668, %813 ], [ %668, %826 ], [ %668, %1015 ], [ %668, %1074 ], [ %43, %215 ], [ %43, %282 ], [ %43, %649 ], [ %43, %653 ], [ %655, %662 ], [ %43, %143 ], [ %43, %55 ], [ %88, %85 ], [ %668, %820 ], [ %43, %440 ], [ %43, %614 ], [ %43, %130 ], [ %43, %161 ], [ %668, %1170 ]
  br label %33

143:                                              ; preds = %122
  store ptr @.str.2, ptr %15, align 8, !tbaa !8
  br label %132

144:                                              ; preds = %130, %161
  %145 = phi i64 [ %175, %161 ], [ %126, %130 ]
  %146 = phi i32 [ %164, %161 ], [ %39, %130 ]
  %147 = phi i64 [ %173, %161 ], [ %36, %130 ]
  %148 = phi i32 [ %170, %161 ], [ %123, %130 ]
  %149 = phi ptr [ %174, %161 ], [ %34, %130 ]
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

155:                                              ; preds = %144, %151
  %156 = phi i32 [ %152, %151 ], [ %148, %144 ]
  %157 = icmp eq i64 %147, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = call i32 %3(ptr noundef %4, ptr noundef %16, i32 noundef 65536) #5
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %1184

161:                                              ; preds = %158, %155
  %162 = phi ptr [ %16, %158 ], [ %149, %155 ]
  %163 = phi i64 [ 65536, %158 ], [ %147, %155 ]
  %164 = phi i32 [ 1, %158 ], [ %146, %155 ]
  %165 = zext i32 %156 to i64
  %166 = call i64 @llvm.umin.i64(i64 %145, i64 %165)
  %167 = call i64 @llvm.umin.i64(i64 %166, i64 %163)
  %168 = load ptr, ptr %6, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %162, ptr noundef nonnull align 1 dereferenceable(1) %168, i64 %167, i1 false)
  %169 = trunc i64 %167 to i32
  %170 = sub i32 %156, %169
  %171 = load ptr, ptr %6, align 8, !tbaa !20
  %172 = getelementptr inbounds i8, ptr %171, i64 %167
  store ptr %172, ptr %6, align 8, !tbaa !20
  %173 = sub i64 %163, %167
  %174 = getelementptr inbounds i8, ptr %162, i64 %167
  %175 = sub i64 %145, %167
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %132, label %144, !llvm.loop !25

177:                                              ; preds = %46, %186
  %178 = phi i64 [ %47, %46 ], [ %195, %186 ]
  %179 = phi i64 [ %40, %46 ], [ %194, %186 ]
  %180 = phi i32 [ %35, %46 ], [ %188, %186 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

186:                                              ; preds = %182, %177
  %187 = phi i32 [ %183, %182 ], [ %180, %177 ]
  %188 = add i32 %187, -1
  %189 = load ptr, ptr %6, align 8, !tbaa !20
  %190 = getelementptr inbounds i8, ptr %189, i64 1
  store ptr %190, ptr %6, align 8, !tbaa !20
  %191 = load i8, ptr %189, align 1, !tbaa !5
  %192 = zext i8 %191 to i64
  %193 = shl nuw nsw i64 %192, %178
  %194 = add i64 %193, %179
  %195 = add nuw nsw i64 %178, 8
  %196 = icmp ult i64 %178, 6
  br i1 %196, label %177, label %197, !llvm.loop !26

197:                                              ; preds = %186
  %198 = trunc i64 %195 to i32
  br label %199

199:                                              ; preds = %197, %44
  %200 = phi i32 [ %35, %44 ], [ %188, %197 ]
  %201 = phi i64 [ %40, %44 ], [ %194, %197 ]
  %202 = phi i32 [ %41, %44 ], [ %198, %197 ]
  %203 = trunc i64 %201 to i32
  %204 = and i32 %203, 31
  %205 = add nuw nsw i32 %204, 257
  store i32 %205, ptr %24, align 4, !tbaa !27
  %206 = lshr i32 %203, 5
  %207 = and i32 %206, 31
  %208 = add nuw nsw i32 %207, 1
  store i32 %208, ptr %25, align 8, !tbaa !28
  %209 = lshr i32 %203, 10
  %210 = and i32 %209, 15
  %211 = add nuw nsw i32 %210, 4
  store i32 %211, ptr %26, align 8, !tbaa !29
  %212 = lshr i64 %201, 14
  %213 = add i32 %202, -14
  %214 = icmp ugt i32 %204, 29
  br i1 %214, label %215, label %216

215:                                              ; preds = %199
  store ptr @.str.3, ptr %15, align 8, !tbaa !8
  br label %132

216:                                              ; preds = %199
  store i32 0, ptr %27, align 4, !tbaa !30
  br label %221

217:                                              ; preds = %251
  %218 = icmp ult i32 %260, 19
  br i1 %218, label %219, label %279

219:                                              ; preds = %217
  %220 = zext nneg i32 %260 to i64
  br label %269

221:                                              ; preds = %216, %251
  %222 = phi i32 [ %252, %251 ], [ %211, %216 ]
  %223 = phi i32 [ %253, %251 ], [ %211, %216 ]
  %224 = phi i32 [ %260, %251 ], [ 0, %216 ]
  %225 = phi i32 [ %267, %251 ], [ %213, %216 ]
  %226 = phi i64 [ %266, %251 ], [ %212, %216 ]
  %227 = phi i32 [ %255, %251 ], [ %200, %216 ]
  %228 = icmp ult i32 %225, 3
  br i1 %228, label %229, label %251

229:                                              ; preds = %221
  %230 = or disjoint i32 %225, 8
  %231 = icmp eq i32 %227, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, ptr %27, align 4, !tbaa !30
  %237 = load i32, ptr %26, align 8, !tbaa !29
  br label %239

238:                                              ; preds = %232
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

239:                                              ; preds = %235, %229
  %240 = phi i32 [ %237, %235 ], [ %222, %229 ]
  %241 = phi i32 [ %236, %235 ], [ %224, %229 ]
  %242 = phi i32 [ %233, %235 ], [ %227, %229 ]
  %243 = add i32 %242, -1
  %244 = load ptr, ptr %6, align 8, !tbaa !20
  %245 = getelementptr inbounds i8, ptr %244, i64 1
  store ptr %245, ptr %6, align 8, !tbaa !20
  %246 = load i8, ptr %244, align 1, !tbaa !5
  %247 = zext i8 %246 to i64
  %248 = zext nneg i32 %225 to i64
  %249 = shl nuw nsw i64 %247, %248
  %250 = add nuw nsw i64 %249, %226
  br label %251

251:                                              ; preds = %239, %221
  %252 = phi i32 [ %240, %239 ], [ %222, %221 ]
  %253 = phi i32 [ %240, %239 ], [ %223, %221 ]
  %254 = phi i32 [ %241, %239 ], [ %224, %221 ]
  %255 = phi i32 [ %243, %239 ], [ %227, %221 ]
  %256 = phi i64 [ %250, %239 ], [ %226, %221 ]
  %257 = phi i32 [ %230, %239 ], [ %225, %221 ]
  %258 = trunc i64 %256 to i16
  %259 = and i16 %258, 7
  %260 = add i32 %254, 1
  store i32 %260, ptr %27, align 4, !tbaa !30
  %261 = zext i32 %254 to i64
  %262 = getelementptr inbounds [19 x i16], ptr @inflateBack9.order, i64 0, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !31
  %264 = zext i16 %263 to i64
  %265 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %264
  store i16 %259, ptr %265, align 2, !tbaa !31
  %266 = lshr i64 %256, 3
  %267 = add i32 %257, -3
  %268 = icmp ult i32 %260, %253
  br i1 %268, label %221, label %217, !llvm.loop !33

269:                                              ; preds = %219, %269
  %270 = phi i64 [ %220, %219 ], [ %271, %269 ]
  %271 = add nuw nsw i64 %270, 1
  %272 = getelementptr inbounds [19 x i16], ptr @inflateBack9.order, i64 0, i64 %270
  %273 = load i16, ptr %272, align 2, !tbaa !31
  %274 = zext i16 %273 to i64
  %275 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %274
  store i16 0, ptr %275, align 2, !tbaa !31
  %276 = and i64 %271, 4294967295
  %277 = icmp eq i64 %276, 19
  br i1 %277, label %278, label %269, !llvm.loop !34

278:                                              ; preds = %269
  store i32 19, ptr %27, align 4, !tbaa !30
  br label %279

279:                                              ; preds = %278, %217
  store ptr %28, ptr %29, align 8, !tbaa !35
  store i32 7, ptr %7, align 4, !tbaa !22
  %280 = call i32 @inflate_table9(i32 noundef 0, ptr noundef nonnull %30, i32 noundef 19, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %31) #5
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %279
  store ptr @.str.4, ptr %15, align 8, !tbaa !8
  br label %132

283:                                              ; preds = %279
  store i32 0, ptr %27, align 4, !tbaa !30
  %284 = load i32, ptr %24, align 4, !tbaa !27
  %285 = load i32, ptr %25, align 8, !tbaa !28
  %286 = sub i32 0, %284
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %642, label %288

288:                                              ; preds = %283, %634
  %289 = phi i32 [ %640, %634 ], [ %267, %283 ]
  %290 = phi i64 [ %639, %634 ], [ %266, %283 ]
  %291 = phi i32 [ %638, %634 ], [ %255, %283 ]
  %292 = trunc i64 %290 to i32
  %293 = load i32, ptr %7, align 4, !tbaa !22
  %294 = shl nsw i32 -1, %293
  %295 = xor i32 %294, -1
  %296 = and i32 %295, %292
  %297 = zext nneg i32 %296 to i64
  %298 = getelementptr inbounds %struct.code, ptr %28, i64 %297, i32 1
  %299 = load i8, ptr %298, align 1, !tbaa.struct !36
  %300 = zext i8 %299 to i32
  %301 = icmp ult i32 %289, %300
  br i1 %301, label %302, label %339

302:                                              ; preds = %288
  %303 = zext nneg i32 %289 to i64
  br label %304

304:                                              ; preds = %302, %316
  %305 = phi i32 [ %293, %302 ], [ %317, %316 ]
  %306 = phi i64 [ %303, %302 ], [ %326, %316 ]
  %307 = phi i64 [ %290, %302 ], [ %325, %316 ]
  %308 = phi i32 [ %291, %302 ], [ %319, %316 ]
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %315, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %7, align 4, !tbaa !22
  br label %316

315:                                              ; preds = %310
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

316:                                              ; preds = %313, %304
  %317 = phi i32 [ %314, %313 ], [ %305, %304 ]
  %318 = phi i32 [ %311, %313 ], [ %308, %304 ]
  %319 = add i32 %318, -1
  %320 = load ptr, ptr %6, align 8, !tbaa !20
  %321 = getelementptr inbounds i8, ptr %320, i64 1
  store ptr %321, ptr %6, align 8, !tbaa !20
  %322 = load i8, ptr %320, align 1, !tbaa !5
  %323 = zext i8 %322 to i64
  %324 = shl i64 %323, %306
  %325 = add i64 %324, %307
  %326 = add nuw nsw i64 %306, 8
  %327 = trunc i64 %325 to i32
  %328 = shl nsw i32 -1, %317
  %329 = xor i32 %328, -1
  %330 = and i32 %329, %327
  %331 = zext nneg i32 %330 to i64
  %332 = getelementptr inbounds %struct.code, ptr %28, i64 %331, i32 1
  %333 = load i8, ptr %332, align 1, !tbaa.struct !36
  %334 = zext i8 %333 to i64
  %335 = icmp ult i64 %326, %334
  br i1 %335, label %304, label %336

336:                                              ; preds = %316
  %337 = zext i8 %333 to i32
  %338 = trunc i64 %326 to i32
  br label %339

339:                                              ; preds = %336, %288
  %340 = phi i32 [ %300, %288 ], [ %337, %336 ]
  %341 = phi i32 [ %291, %288 ], [ %319, %336 ]
  %342 = phi i64 [ %290, %288 ], [ %325, %336 ]
  %343 = phi i32 [ %289, %288 ], [ %338, %336 ]
  %344 = phi i8 [ %299, %288 ], [ %333, %336 ]
  %345 = phi i64 [ %297, %288 ], [ %331, %336 ]
  %346 = getelementptr inbounds %struct.code, ptr %28, i64 %345, i32 2
  %347 = load i16, ptr %346, align 2
  %348 = icmp ult i16 %347, 16
  br i1 %348, label %349, label %390

349:                                              ; preds = %339
  %350 = icmp ult i32 %343, %340
  br i1 %350, label %351, label %376

351:                                              ; preds = %349
  %352 = zext nneg i32 %343 to i64
  %353 = zext nneg i32 %340 to i64
  br label %354

354:                                              ; preds = %351, %363
  %355 = phi i64 [ %352, %351 ], [ %372, %363 ]
  %356 = phi i64 [ %342, %351 ], [ %371, %363 ]
  %357 = phi i32 [ %341, %351 ], [ %365, %363 ]
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %354
  %360 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

363:                                              ; preds = %359, %354
  %364 = phi i32 [ %360, %359 ], [ %357, %354 ]
  %365 = add i32 %364, -1
  %366 = load ptr, ptr %6, align 8, !tbaa !20
  %367 = getelementptr inbounds i8, ptr %366, i64 1
  store ptr %367, ptr %6, align 8, !tbaa !20
  %368 = load i8, ptr %366, align 1, !tbaa !5
  %369 = zext i8 %368 to i64
  %370 = shl i64 %369, %355
  %371 = add i64 %370, %356
  %372 = add nuw nsw i64 %355, 8
  %373 = icmp ult i64 %372, %353
  br i1 %373, label %354, label %374, !llvm.loop !37

374:                                              ; preds = %363
  %375 = trunc i64 %372 to i32
  br label %376

376:                                              ; preds = %374, %349
  %377 = phi i32 [ %341, %349 ], [ %365, %374 ]
  %378 = phi i64 [ %342, %349 ], [ %371, %374 ]
  %379 = phi i32 [ %343, %349 ], [ %375, %374 ]
  %380 = zext nneg i8 %344 to i64
  %381 = lshr i64 %378, %380
  %382 = sub i32 %379, %340
  %383 = load i32, ptr %27, align 4, !tbaa !30
  %384 = add i32 %383, 1
  store i32 %384, ptr %27, align 4, !tbaa !30
  %385 = zext i32 %383 to i64
  %386 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %385
  store i16 %347, ptr %386, align 2, !tbaa !31
  %387 = load i32, ptr %24, align 4, !tbaa !27
  %388 = load i32, ptr %25, align 8, !tbaa !28
  %389 = add i32 %388, %387
  br label %634

390:                                              ; preds = %339
  switch i16 %347, label %403 [
    i16 16, label %397
    i16 17, label %391
  ]

391:                                              ; preds = %390
  %392 = add nuw nsw i32 %340, 3
  %393 = icmp ult i32 %343, %392
  br i1 %393, label %394, label %472

394:                                              ; preds = %391
  %395 = zext nneg i32 %343 to i64
  %396 = zext nneg i32 %392 to i64
  br label %450

397:                                              ; preds = %390
  %398 = add nuw nsw i32 %340, 2
  %399 = icmp ult i32 %343, %398
  br i1 %399, label %400, label %431

400:                                              ; preds = %397
  %401 = zext nneg i32 %343 to i64
  %402 = zext nneg i32 %398 to i64
  br label %409

403:                                              ; preds = %390
  %404 = add nuw nsw i32 %340, 7
  %405 = icmp ult i32 %343, %404
  br i1 %405, label %406, label %505

406:                                              ; preds = %403
  %407 = zext nneg i32 %343 to i64
  %408 = zext nneg i32 %404 to i64
  br label %483

409:                                              ; preds = %400, %418
  %410 = phi i64 [ %401, %400 ], [ %427, %418 ]
  %411 = phi i64 [ %342, %400 ], [ %426, %418 ]
  %412 = phi i32 [ %341, %400 ], [ %420, %418 ]
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %409
  %415 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

418:                                              ; preds = %414, %409
  %419 = phi i32 [ %415, %414 ], [ %412, %409 ]
  %420 = add i32 %419, -1
  %421 = load ptr, ptr %6, align 8, !tbaa !20
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  store ptr %422, ptr %6, align 8, !tbaa !20
  %423 = load i8, ptr %421, align 1, !tbaa !5
  %424 = zext i8 %423 to i64
  %425 = shl i64 %424, %410
  %426 = add i64 %425, %411
  %427 = add nuw nsw i64 %410, 8
  %428 = icmp ult i64 %427, %402
  br i1 %428, label %409, label %429, !llvm.loop !38

429:                                              ; preds = %418
  %430 = trunc i64 %427 to i32
  br label %431

431:                                              ; preds = %429, %397
  %432 = phi i32 [ %341, %397 ], [ %420, %429 ]
  %433 = phi i64 [ %342, %397 ], [ %426, %429 ]
  %434 = phi i32 [ %343, %397 ], [ %430, %429 ]
  %435 = zext nneg i8 %344 to i64
  %436 = lshr i64 %433, %435
  %437 = sub i32 %434, %340
  %438 = load i32, ptr %27, align 4, !tbaa !30
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %431
  store ptr @.str.5, ptr %15, align 8, !tbaa !8
  br label %132

441:                                              ; preds = %431
  %442 = add i32 %438, -1
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !31
  %446 = and i64 %436, 3
  %447 = add nuw nsw i64 %446, 3
  %448 = lshr i64 %436, 2
  %449 = add i32 %437, -2
  br label %516

450:                                              ; preds = %394, %459
  %451 = phi i64 [ %395, %394 ], [ %468, %459 ]
  %452 = phi i64 [ %342, %394 ], [ %467, %459 ]
  %453 = phi i32 [ %341, %394 ], [ %461, %459 ]
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %450
  %456 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

459:                                              ; preds = %455, %450
  %460 = phi i32 [ %456, %455 ], [ %453, %450 ]
  %461 = add i32 %460, -1
  %462 = load ptr, ptr %6, align 8, !tbaa !20
  %463 = getelementptr inbounds i8, ptr %462, i64 1
  store ptr %463, ptr %6, align 8, !tbaa !20
  %464 = load i8, ptr %462, align 1, !tbaa !5
  %465 = zext i8 %464 to i64
  %466 = shl i64 %465, %451
  %467 = add i64 %466, %452
  %468 = add nuw nsw i64 %451, 8
  %469 = icmp ult i64 %468, %396
  br i1 %469, label %450, label %470, !llvm.loop !39

470:                                              ; preds = %459
  %471 = trunc i64 %468 to i32
  br label %472

472:                                              ; preds = %470, %391
  %473 = phi i32 [ %341, %391 ], [ %461, %470 ]
  %474 = phi i64 [ %342, %391 ], [ %467, %470 ]
  %475 = phi i32 [ %343, %391 ], [ %471, %470 ]
  %476 = zext nneg i8 %344 to i64
  %477 = lshr i64 %474, %476
  %478 = and i64 %477, 7
  %479 = add nuw nsw i64 %478, 3
  %480 = lshr i64 %477, 3
  %481 = sub i32 %475, %340
  %482 = add i32 %481, -3
  br label %516

483:                                              ; preds = %406, %492
  %484 = phi i64 [ %407, %406 ], [ %501, %492 ]
  %485 = phi i64 [ %342, %406 ], [ %500, %492 ]
  %486 = phi i32 [ %341, %406 ], [ %494, %492 ]
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %483
  %489 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %488
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

492:                                              ; preds = %488, %483
  %493 = phi i32 [ %489, %488 ], [ %486, %483 ]
  %494 = add i32 %493, -1
  %495 = load ptr, ptr %6, align 8, !tbaa !20
  %496 = getelementptr inbounds i8, ptr %495, i64 1
  store ptr %496, ptr %6, align 8, !tbaa !20
  %497 = load i8, ptr %495, align 1, !tbaa !5
  %498 = zext i8 %497 to i64
  %499 = shl i64 %498, %484
  %500 = add i64 %499, %485
  %501 = add nuw nsw i64 %484, 8
  %502 = icmp ult i64 %501, %408
  br i1 %502, label %483, label %503, !llvm.loop !40

503:                                              ; preds = %492
  %504 = trunc i64 %501 to i32
  br label %505

505:                                              ; preds = %503, %403
  %506 = phi i32 [ %341, %403 ], [ %494, %503 ]
  %507 = phi i64 [ %342, %403 ], [ %500, %503 ]
  %508 = phi i32 [ %343, %403 ], [ %504, %503 ]
  %509 = zext nneg i8 %344 to i64
  %510 = lshr i64 %507, %509
  %511 = and i64 %510, 127
  %512 = add nuw nsw i64 %511, 11
  %513 = lshr i64 %510, 7
  %514 = sub i32 %508, %340
  %515 = add i32 %514, -7
  br label %516

516:                                              ; preds = %472, %505, %441
  %517 = phi i32 [ %432, %441 ], [ %473, %472 ], [ %506, %505 ]
  %518 = phi i64 [ %448, %441 ], [ %480, %472 ], [ %513, %505 ]
  %519 = phi i32 [ %449, %441 ], [ %482, %472 ], [ %515, %505 ]
  %520 = phi i64 [ %447, %441 ], [ %479, %472 ], [ %512, %505 ]
  %521 = phi i16 [ %445, %441 ], [ 0, %472 ], [ 0, %505 ]
  %522 = load i32, ptr %27, align 4, !tbaa !30
  %523 = zext i32 %522 to i64
  %524 = add nuw nsw i64 %520, %523
  %525 = load i32, ptr %24, align 4, !tbaa !27
  %526 = load i32, ptr %25, align 8, !tbaa !28
  %527 = add i32 %526, %525
  %528 = zext i32 %527 to i64
  %529 = icmp ugt i64 %524, %528
  br i1 %529, label %614, label %530

530:                                              ; preds = %516
  %531 = icmp ult i64 %520, 16
  br i1 %531, label %593, label %532

532:                                              ; preds = %530
  %533 = add nsw i64 %520, -1
  %534 = trunc i64 %533 to i32
  %535 = xor i32 %522, -1
  %536 = icmp ult i32 %535, %534
  %537 = icmp ugt i64 %533, 4294967295
  %538 = or i1 %536, %537
  br i1 %538, label %593, label %539

539:                                              ; preds = %532
  %540 = and i64 %520, -16
  %541 = and i64 %520, 15
  %542 = trunc i64 %540 to i32
  %543 = add i32 %522, %542
  %544 = insertelement <8 x i16> poison, i16 %521, i64 0
  %545 = shufflevector <8 x i16> %544, <8 x i16> poison, <8 x i32> zeroinitializer
  %546 = zext i32 %522 to i64
  %547 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %546
  %548 = getelementptr inbounds i16, ptr %547, i64 8
  store <8 x i16> %545, ptr %547, align 2, !tbaa !31
  store <8 x i16> %545, ptr %548, align 2, !tbaa !31
  %549 = icmp eq i64 %540, 16
  br i1 %549, label %591, label %550, !llvm.loop !41

550:                                              ; preds = %539
  %551 = add i32 %522, 16
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %552
  %554 = getelementptr inbounds i16, ptr %553, i64 8
  store <8 x i16> %545, ptr %553, align 2, !tbaa !31
  store <8 x i16> %545, ptr %554, align 2, !tbaa !31
  %555 = icmp eq i64 %540, 32
  br i1 %555, label %591, label %556, !llvm.loop !41

556:                                              ; preds = %550
  %557 = add i32 %522, 32
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %558
  %560 = getelementptr inbounds i16, ptr %559, i64 8
  store <8 x i16> %545, ptr %559, align 2, !tbaa !31
  store <8 x i16> %545, ptr %560, align 2, !tbaa !31
  %561 = icmp eq i64 %540, 48
  br i1 %561, label %591, label %562, !llvm.loop !41

562:                                              ; preds = %556
  %563 = add i32 %522, 48
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %564
  %566 = getelementptr inbounds i16, ptr %565, i64 8
  store <8 x i16> %545, ptr %565, align 2, !tbaa !31
  store <8 x i16> %545, ptr %566, align 2, !tbaa !31
  %567 = icmp eq i64 %540, 64
  br i1 %567, label %591, label %568, !llvm.loop !41

568:                                              ; preds = %562
  %569 = add i32 %522, 64
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %570
  %572 = getelementptr inbounds i16, ptr %571, i64 8
  store <8 x i16> %545, ptr %571, align 2, !tbaa !31
  store <8 x i16> %545, ptr %572, align 2, !tbaa !31
  %573 = icmp eq i64 %540, 80
  br i1 %573, label %591, label %574, !llvm.loop !41

574:                                              ; preds = %568
  %575 = add i32 %522, 80
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %576
  %578 = getelementptr inbounds i16, ptr %577, i64 8
  store <8 x i16> %545, ptr %577, align 2, !tbaa !31
  store <8 x i16> %545, ptr %578, align 2, !tbaa !31
  %579 = icmp eq i64 %540, 96
  br i1 %579, label %591, label %580, !llvm.loop !41

580:                                              ; preds = %574
  %581 = add i32 %522, 96
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %582
  %584 = getelementptr inbounds i16, ptr %583, i64 8
  store <8 x i16> %545, ptr %583, align 2, !tbaa !31
  store <8 x i16> %545, ptr %584, align 2, !tbaa !31
  %585 = icmp eq i64 %540, 112
  br i1 %585, label %591, label %586, !llvm.loop !41

586:                                              ; preds = %580
  %587 = add i32 %522, 112
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %588
  %590 = getelementptr inbounds i16, ptr %589, i64 8
  store <8 x i16> %545, ptr %589, align 2, !tbaa !31
  store <8 x i16> %545, ptr %590, align 2, !tbaa !31
  br label %591

591:                                              ; preds = %586, %580, %574, %568, %562, %556, %550, %539
  %592 = icmp eq i64 %520, %540
  br i1 %592, label %632, label %593

593:                                              ; preds = %532, %530, %591
  %594 = phi i64 [ %520, %532 ], [ %520, %530 ], [ %541, %591 ]
  %595 = phi i32 [ %522, %532 ], [ %522, %530 ], [ %543, %591 ]
  %596 = add nsw i64 %594, -1
  %597 = and i64 %594, 3
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %609, label %599

599:                                              ; preds = %593, %599
  %600 = phi i64 [ %603, %599 ], [ %594, %593 ]
  %601 = phi i32 [ %604, %599 ], [ %595, %593 ]
  %602 = phi i64 [ %607, %599 ], [ 0, %593 ]
  %603 = add nsw i64 %600, -1
  %604 = add i32 %601, 1
  %605 = zext i32 %601 to i64
  %606 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %605
  store i16 %521, ptr %606, align 2, !tbaa !31
  %607 = add i64 %602, 1
  %608 = icmp eq i64 %607, %597
  br i1 %608, label %609, label %599, !llvm.loop !44

609:                                              ; preds = %599, %593
  %610 = phi i32 [ undef, %593 ], [ %604, %599 ]
  %611 = phi i64 [ %594, %593 ], [ %603, %599 ]
  %612 = phi i32 [ %595, %593 ], [ %604, %599 ]
  %613 = icmp ult i64 %596, 3
  br i1 %613, label %632, label %615

614:                                              ; preds = %516
  store ptr @.str.5, ptr %15, align 8, !tbaa !8
  br label %132

615:                                              ; preds = %609, %615
  %616 = phi i64 [ %627, %615 ], [ %611, %609 ]
  %617 = phi i32 [ %628, %615 ], [ %612, %609 ]
  %618 = add i32 %617, 1
  %619 = zext i32 %617 to i64
  %620 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %619
  store i16 %521, ptr %620, align 2, !tbaa !31
  %621 = add i32 %617, 2
  %622 = zext i32 %618 to i64
  %623 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %622
  store i16 %521, ptr %623, align 2, !tbaa !31
  %624 = add i32 %617, 3
  %625 = zext i32 %621 to i64
  %626 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %625
  store i16 %521, ptr %626, align 2, !tbaa !31
  %627 = add nsw i64 %616, -4
  %628 = add i32 %617, 4
  %629 = zext i32 %624 to i64
  %630 = getelementptr inbounds %struct.inflate_state, ptr %12, i64 0, i32 6, i64 %629
  store i16 %521, ptr %630, align 2, !tbaa !31
  %631 = icmp eq i64 %627, 0
  br i1 %631, label %632, label %615, !llvm.loop !46

632:                                              ; preds = %609, %615, %591
  %633 = phi i32 [ %543, %591 ], [ %610, %609 ], [ %628, %615 ]
  store i32 %633, ptr %27, align 4, !tbaa !30
  br label %634

634:                                              ; preds = %632, %376
  %635 = phi i32 [ %527, %632 ], [ %389, %376 ]
  %636 = phi i32 [ %525, %632 ], [ %387, %376 ]
  %637 = phi i32 [ %633, %632 ], [ %384, %376 ]
  %638 = phi i32 [ %517, %632 ], [ %377, %376 ]
  %639 = phi i64 [ %518, %632 ], [ %381, %376 ]
  %640 = phi i32 [ %519, %632 ], [ %382, %376 ]
  %641 = icmp ult i32 %637, %635
  br i1 %641, label %288, label %642, !llvm.loop !47

642:                                              ; preds = %634, %283
  %643 = phi i32 [ %284, %283 ], [ %636, %634 ]
  %644 = phi i32 [ %255, %283 ], [ %638, %634 ]
  %645 = phi i64 [ %266, %283 ], [ %639, %634 ]
  %646 = phi i32 [ %267, %283 ], [ %640, %634 ]
  %647 = load i16, ptr %32, align 8, !tbaa !31
  %648 = icmp eq i16 %647, 0
  br i1 %648, label %649, label %650

649:                                              ; preds = %642
  store ptr @.str.6, ptr %15, align 8, !tbaa !8
  br label %132

650:                                              ; preds = %642
  store ptr %28, ptr %29, align 8, !tbaa !35
  store i32 9, ptr %7, align 4, !tbaa !22
  %651 = call i32 @inflate_table9(i32 noundef 1, ptr noundef nonnull %30, i32 noundef %643, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %31) #5
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %650
  store ptr @.str.7, ptr %15, align 8, !tbaa !8
  br label %132

654:                                              ; preds = %650
  %655 = load ptr, ptr %29, align 8, !tbaa !35
  store i32 6, ptr %8, align 4, !tbaa !22
  %656 = load i32, ptr %24, align 4, !tbaa !27
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds i16, ptr %30, i64 %657
  %659 = load i32, ptr %25, align 8, !tbaa !28
  %660 = call i32 @inflate_table9(i32 noundef 2, ptr noundef nonnull %658, i32 noundef %659, ptr noundef nonnull %29, ptr noundef nonnull %8, ptr noundef nonnull %31) #5
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %654
  store ptr @.str.8, ptr %15, align 8, !tbaa !8
  br label %132

663:                                              ; preds = %654, %33
  %664 = phi i32 [ %35, %33 ], [ %644, %654 ]
  %665 = phi i64 [ %40, %33 ], [ %645, %654 ]
  %666 = phi i32 [ %41, %33 ], [ %646, %654 ]
  %667 = phi ptr [ %42, %33 ], [ %28, %654 ]
  %668 = phi ptr [ %43, %33 ], [ %655, %654 ]
  %669 = trunc i64 %665 to i32
  %670 = load i32, ptr %7, align 4, !tbaa !22
  %671 = shl nsw i32 -1, %670
  %672 = xor i32 %671, -1
  %673 = and i32 %672, %669
  %674 = zext nneg i32 %673 to i64
  %675 = getelementptr inbounds %struct.code, ptr %667, i64 %674
  %676 = getelementptr inbounds i8, ptr %675, i64 1
  %677 = load i8, ptr %676, align 1, !tbaa.struct !36
  %678 = zext i8 %677 to i32
  %679 = icmp ult i32 %666, %678
  br i1 %679, label %680, label %718

680:                                              ; preds = %663
  %681 = zext nneg i32 %666 to i64
  br label %682

682:                                              ; preds = %680, %694
  %683 = phi i32 [ %670, %680 ], [ %695, %694 ]
  %684 = phi i64 [ %681, %680 ], [ %704, %694 ]
  %685 = phi i64 [ %665, %680 ], [ %703, %694 ]
  %686 = phi i32 [ %664, %680 ], [ %697, %694 ]
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %694

688:                                              ; preds = %682
  %689 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %693, label %691

691:                                              ; preds = %688
  %692 = load i32, ptr %7, align 4, !tbaa !22
  br label %694

693:                                              ; preds = %688
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

694:                                              ; preds = %691, %682
  %695 = phi i32 [ %692, %691 ], [ %683, %682 ]
  %696 = phi i32 [ %689, %691 ], [ %686, %682 ]
  %697 = add i32 %696, -1
  %698 = load ptr, ptr %6, align 8, !tbaa !20
  %699 = getelementptr inbounds i8, ptr %698, i64 1
  store ptr %699, ptr %6, align 8, !tbaa !20
  %700 = load i8, ptr %698, align 1, !tbaa !5
  %701 = zext i8 %700 to i64
  %702 = shl i64 %701, %684
  %703 = add i64 %702, %685
  %704 = add nuw nsw i64 %684, 8
  %705 = trunc i64 %703 to i32
  %706 = shl nsw i32 -1, %695
  %707 = xor i32 %706, -1
  %708 = and i32 %707, %705
  %709 = zext nneg i32 %708 to i64
  %710 = getelementptr inbounds %struct.code, ptr %667, i64 %709
  %711 = getelementptr inbounds i8, ptr %710, i64 1
  %712 = load i8, ptr %711, align 1, !tbaa.struct !36
  %713 = zext i8 %712 to i64
  %714 = icmp ult i64 %704, %713
  br i1 %714, label %682, label %715

715:                                              ; preds = %694
  %716 = zext i8 %712 to i32
  %717 = trunc i64 %704 to i32
  br label %718

718:                                              ; preds = %715, %663
  %719 = phi i32 [ %664, %663 ], [ %697, %715 ]
  %720 = phi i64 [ %665, %663 ], [ %703, %715 ]
  %721 = phi i32 [ %666, %663 ], [ %717, %715 ]
  %722 = phi ptr [ %675, %663 ], [ %710, %715 ]
  %723 = phi i8 [ %677, %663 ], [ %712, %715 ]
  %724 = phi i32 [ %678, %663 ], [ %716, %715 ]
  %725 = getelementptr inbounds i8, ptr %722, i64 2
  %726 = load i16, ptr %725, align 2
  %727 = load i8, ptr %722, align 2, !tbaa.struct !48
  %728 = add i8 %727, -1
  %729 = icmp ult i8 %728, 15
  br i1 %729, label %730, label %794

730:                                              ; preds = %718
  %731 = zext nneg i8 %727 to i32
  %732 = zext i16 %726 to i32
  %733 = add nuw nsw i32 %724, %731
  %734 = shl nsw i32 -1, %733
  %735 = xor i32 %734, -1
  %736 = trunc i64 %720 to i32
  %737 = and i32 %736, %735
  %738 = lshr i32 %737, %724
  %739 = add nuw i32 %738, %732
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds %struct.code, ptr %667, i64 %740
  %742 = getelementptr inbounds i8, ptr %741, i64 1
  %743 = load i8, ptr %742, align 1, !tbaa.struct !36
  %744 = zext i8 %743 to i32
  %745 = add nuw nsw i32 %724, %744
  %746 = icmp ugt i32 %745, %721
  br i1 %746, label %747, label %782

747:                                              ; preds = %730
  %748 = zext nneg i32 %721 to i64
  br label %749

749:                                              ; preds = %747, %758
  %750 = phi i64 [ %748, %747 ], [ %767, %758 ]
  %751 = phi i64 [ %720, %747 ], [ %766, %758 ]
  %752 = phi i32 [ %719, %747 ], [ %760, %758 ]
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %758

754:                                              ; preds = %749
  %755 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %758

757:                                              ; preds = %754
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

758:                                              ; preds = %754, %749
  %759 = phi i32 [ %755, %754 ], [ %752, %749 ]
  %760 = add i32 %759, -1
  %761 = load ptr, ptr %6, align 8, !tbaa !20
  %762 = getelementptr inbounds i8, ptr %761, i64 1
  store ptr %762, ptr %6, align 8, !tbaa !20
  %763 = load i8, ptr %761, align 1, !tbaa !5
  %764 = zext i8 %763 to i64
  %765 = shl i64 %764, %750
  %766 = add i64 %765, %751
  %767 = add nuw nsw i64 %750, 8
  %768 = trunc i64 %766 to i32
  %769 = and i32 %768, %735
  %770 = lshr i32 %769, %724
  %771 = add nuw i32 %770, %732
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds %struct.code, ptr %667, i64 %772
  %774 = getelementptr inbounds i8, ptr %773, i64 1
  %775 = load i8, ptr %774, align 1, !tbaa.struct !36
  %776 = zext i8 %775 to i32
  %777 = add nuw nsw i32 %724, %776
  %778 = zext nneg i32 %777 to i64
  %779 = icmp ult i64 %767, %778
  br i1 %779, label %749, label %780

780:                                              ; preds = %758
  %781 = trunc i64 %767 to i32
  br label %782

782:                                              ; preds = %780, %730
  %783 = phi i32 [ %719, %730 ], [ %760, %780 ]
  %784 = phi i64 [ %720, %730 ], [ %766, %780 ]
  %785 = phi i32 [ %721, %730 ], [ %781, %780 ]
  %786 = phi ptr [ %741, %730 ], [ %773, %780 ]
  %787 = phi i8 [ %743, %730 ], [ %775, %780 ]
  %788 = getelementptr inbounds i8, ptr %786, i64 2
  %789 = load i16, ptr %788, align 2, !tbaa.struct !49
  %790 = load i8, ptr %786, align 2, !tbaa.struct !48
  %791 = zext nneg i8 %723 to i64
  %792 = lshr i64 %784, %791
  %793 = sub i32 %785, %724
  br label %794

794:                                              ; preds = %718, %782
  %795 = phi i32 [ %783, %782 ], [ %719, %718 ]
  %796 = phi i64 [ %792, %782 ], [ %720, %718 ]
  %797 = phi i32 [ %793, %782 ], [ %721, %718 ]
  %798 = phi i16 [ %789, %782 ], [ %726, %718 ]
  %799 = phi i8 [ %787, %782 ], [ %723, %718 ]
  %800 = phi i8 [ %790, %782 ], [ %727, %718 ]
  %801 = zext i8 %799 to i32
  %802 = zext nneg i8 %799 to i64
  %803 = lshr i64 %796, %802
  %804 = sub i32 %797, %801
  %805 = zext i16 %798 to i64
  %806 = zext i8 %800 to i32
  %807 = icmp eq i8 %800, 0
  br i1 %807, label %808, label %820

808:                                              ; preds = %794
  %809 = icmp eq i64 %36, 0
  br i1 %809, label %810, label %813

810:                                              ; preds = %808
  %811 = call i32 %3(ptr noundef %4, ptr noundef %16, i32 noundef 65536) #5
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %1184

813:                                              ; preds = %810, %808
  %814 = phi ptr [ %16, %810 ], [ %34, %808 ]
  %815 = phi i64 [ 65536, %810 ], [ %36, %808 ]
  %816 = phi i32 [ 1, %810 ], [ %39, %808 ]
  %817 = trunc i16 %798 to i8
  %818 = getelementptr inbounds i8, ptr %814, i64 1
  store i8 %817, ptr %814, align 1, !tbaa !5
  %819 = add i64 %815, -1
  br label %132

820:                                              ; preds = %794
  %821 = and i32 %806, 32
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %132

823:                                              ; preds = %820
  %824 = and i32 %806, 64
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %827, label %826

826:                                              ; preds = %823
  store ptr @.str.9, ptr %15, align 8, !tbaa !8
  br label %132

827:                                              ; preds = %823
  %828 = and i32 %806, 31
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %872, label %830

830:                                              ; preds = %827
  %831 = icmp ult i32 %804, %828
  br i1 %831, label %834, label %832

832:                                              ; preds = %830
  %833 = zext nneg i32 %828 to i64
  br label %859

834:                                              ; preds = %830
  %835 = zext nneg i32 %804 to i64
  %836 = zext nneg i32 %828 to i64
  br label %837

837:                                              ; preds = %834, %846
  %838 = phi i64 [ %835, %834 ], [ %855, %846 ]
  %839 = phi i64 [ %803, %834 ], [ %854, %846 ]
  %840 = phi i32 [ %795, %834 ], [ %848, %846 ]
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %846

842:                                              ; preds = %837
  %843 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %846

845:                                              ; preds = %842
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

846:                                              ; preds = %842, %837
  %847 = phi i32 [ %843, %842 ], [ %840, %837 ]
  %848 = add i32 %847, -1
  %849 = load ptr, ptr %6, align 8, !tbaa !20
  %850 = getelementptr inbounds i8, ptr %849, i64 1
  store ptr %850, ptr %6, align 8, !tbaa !20
  %851 = load i8, ptr %849, align 1, !tbaa !5
  %852 = zext i8 %851 to i64
  %853 = shl nuw nsw i64 %852, %838
  %854 = add i64 %853, %839
  %855 = add nuw nsw i64 %838, 8
  %856 = icmp ult i64 %855, %836
  br i1 %856, label %837, label %857, !llvm.loop !50

857:                                              ; preds = %846
  %858 = trunc i64 %855 to i32
  br label %859

859:                                              ; preds = %832, %857
  %860 = phi i64 [ %833, %832 ], [ %836, %857 ]
  %861 = phi i32 [ %795, %832 ], [ %848, %857 ]
  %862 = phi i64 [ %803, %832 ], [ %854, %857 ]
  %863 = phi i32 [ %804, %832 ], [ %858, %857 ]
  %864 = trunc i64 %862 to i32
  %865 = shl nsw i32 -1, %828
  %866 = xor i32 %865, -1
  %867 = and i32 %864, %866
  %868 = zext nneg i32 %867 to i64
  %869 = add nuw nsw i64 %868, %805
  %870 = lshr i64 %862, %860
  %871 = sub i32 %863, %828
  br label %872

872:                                              ; preds = %859, %827
  %873 = phi i32 [ %861, %859 ], [ %795, %827 ]
  %874 = phi i64 [ %870, %859 ], [ %803, %827 ]
  %875 = phi i32 [ %871, %859 ], [ %804, %827 ]
  %876 = phi i64 [ %869, %859 ], [ %805, %827 ]
  %877 = trunc i64 %874 to i32
  %878 = load i32, ptr %8, align 4, !tbaa !22
  %879 = shl nsw i32 -1, %878
  %880 = xor i32 %879, -1
  %881 = and i32 %880, %877
  %882 = zext nneg i32 %881 to i64
  %883 = getelementptr inbounds %struct.code, ptr %668, i64 %882
  %884 = getelementptr inbounds i8, ptr %883, i64 1
  %885 = load i8, ptr %884, align 1, !tbaa.struct !36
  %886 = zext i8 %885 to i32
  %887 = icmp ult i32 %875, %886
  br i1 %887, label %888, label %926

888:                                              ; preds = %872
  %889 = zext nneg i32 %875 to i64
  br label %890

890:                                              ; preds = %888, %902
  %891 = phi i32 [ %878, %888 ], [ %903, %902 ]
  %892 = phi i64 [ %889, %888 ], [ %912, %902 ]
  %893 = phi i64 [ %874, %888 ], [ %911, %902 ]
  %894 = phi i32 [ %873, %888 ], [ %905, %902 ]
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %902

896:                                              ; preds = %890
  %897 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %896
  %900 = load i32, ptr %8, align 4, !tbaa !22
  br label %902

901:                                              ; preds = %896
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

902:                                              ; preds = %899, %890
  %903 = phi i32 [ %900, %899 ], [ %891, %890 ]
  %904 = phi i32 [ %897, %899 ], [ %894, %890 ]
  %905 = add i32 %904, -1
  %906 = load ptr, ptr %6, align 8, !tbaa !20
  %907 = getelementptr inbounds i8, ptr %906, i64 1
  store ptr %907, ptr %6, align 8, !tbaa !20
  %908 = load i8, ptr %906, align 1, !tbaa !5
  %909 = zext i8 %908 to i64
  %910 = shl i64 %909, %892
  %911 = add i64 %910, %893
  %912 = add nuw nsw i64 %892, 8
  %913 = trunc i64 %911 to i32
  %914 = shl nsw i32 -1, %903
  %915 = xor i32 %914, -1
  %916 = and i32 %915, %913
  %917 = zext nneg i32 %916 to i64
  %918 = getelementptr inbounds %struct.code, ptr %668, i64 %917
  %919 = getelementptr inbounds i8, ptr %918, i64 1
  %920 = load i8, ptr %919, align 1, !tbaa.struct !36
  %921 = zext i8 %920 to i64
  %922 = icmp ult i64 %912, %921
  br i1 %922, label %890, label %923

923:                                              ; preds = %902
  %924 = zext i8 %920 to i32
  %925 = trunc i64 %912 to i32
  br label %926

926:                                              ; preds = %923, %872
  %927 = phi i32 [ %873, %872 ], [ %905, %923 ]
  %928 = phi i64 [ %874, %872 ], [ %911, %923 ]
  %929 = phi i32 [ %875, %872 ], [ %925, %923 ]
  %930 = phi ptr [ %883, %872 ], [ %918, %923 ]
  %931 = phi i8 [ %885, %872 ], [ %920, %923 ]
  %932 = phi i32 [ %886, %872 ], [ %924, %923 ]
  %933 = getelementptr inbounds i8, ptr %930, i64 2
  %934 = load i16, ptr %933, align 2
  %935 = load i8, ptr %930, align 2, !tbaa.struct !48
  %936 = icmp ult i8 %935, 16
  br i1 %936, label %937, label %1001

937:                                              ; preds = %926
  %938 = zext nneg i8 %935 to i32
  %939 = zext i16 %934 to i32
  %940 = add nuw nsw i32 %932, %938
  %941 = shl nsw i32 -1, %940
  %942 = xor i32 %941, -1
  %943 = trunc i64 %928 to i32
  %944 = and i32 %943, %942
  %945 = lshr i32 %944, %932
  %946 = add nuw i32 %945, %939
  %947 = zext i32 %946 to i64
  %948 = getelementptr inbounds %struct.code, ptr %668, i64 %947
  %949 = getelementptr inbounds i8, ptr %948, i64 1
  %950 = load i8, ptr %949, align 1, !tbaa.struct !36
  %951 = zext i8 %950 to i32
  %952 = add nuw nsw i32 %932, %951
  %953 = icmp ugt i32 %952, %929
  br i1 %953, label %954, label %989

954:                                              ; preds = %937
  %955 = zext nneg i32 %929 to i64
  br label %956

956:                                              ; preds = %954, %965
  %957 = phi i64 [ %955, %954 ], [ %974, %965 ]
  %958 = phi i64 [ %928, %954 ], [ %973, %965 ]
  %959 = phi i32 [ %927, %954 ], [ %967, %965 ]
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %965

961:                                              ; preds = %956
  %962 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %965

964:                                              ; preds = %961
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

965:                                              ; preds = %961, %956
  %966 = phi i32 [ %962, %961 ], [ %959, %956 ]
  %967 = add i32 %966, -1
  %968 = load ptr, ptr %6, align 8, !tbaa !20
  %969 = getelementptr inbounds i8, ptr %968, i64 1
  store ptr %969, ptr %6, align 8, !tbaa !20
  %970 = load i8, ptr %968, align 1, !tbaa !5
  %971 = zext i8 %970 to i64
  %972 = shl i64 %971, %957
  %973 = add i64 %972, %958
  %974 = add nuw nsw i64 %957, 8
  %975 = trunc i64 %973 to i32
  %976 = and i32 %975, %942
  %977 = lshr i32 %976, %932
  %978 = add nuw i32 %977, %939
  %979 = zext i32 %978 to i64
  %980 = getelementptr inbounds %struct.code, ptr %668, i64 %979
  %981 = getelementptr inbounds i8, ptr %980, i64 1
  %982 = load i8, ptr %981, align 1, !tbaa.struct !36
  %983 = zext i8 %982 to i32
  %984 = add nuw nsw i32 %932, %983
  %985 = zext nneg i32 %984 to i64
  %986 = icmp ult i64 %974, %985
  br i1 %986, label %956, label %987

987:                                              ; preds = %965
  %988 = trunc i64 %974 to i32
  br label %989

989:                                              ; preds = %987, %937
  %990 = phi i32 [ %927, %937 ], [ %967, %987 ]
  %991 = phi i64 [ %928, %937 ], [ %973, %987 ]
  %992 = phi i32 [ %929, %937 ], [ %988, %987 ]
  %993 = phi ptr [ %948, %937 ], [ %980, %987 ]
  %994 = phi i8 [ %950, %937 ], [ %982, %987 ]
  %995 = getelementptr inbounds i8, ptr %993, i64 2
  %996 = load i16, ptr %995, align 2, !tbaa.struct !49
  %997 = load i8, ptr %993, align 2, !tbaa.struct !48
  %998 = zext nneg i8 %931 to i64
  %999 = lshr i64 %991, %998
  %1000 = sub i32 %992, %932
  br label %1001

1001:                                             ; preds = %926, %989
  %1002 = phi i32 [ %990, %989 ], [ %927, %926 ]
  %1003 = phi i64 [ %999, %989 ], [ %928, %926 ]
  %1004 = phi i32 [ %1000, %989 ], [ %929, %926 ]
  %1005 = phi i16 [ %996, %989 ], [ %934, %926 ]
  %1006 = phi i8 [ %994, %989 ], [ %931, %926 ]
  %1007 = phi i8 [ %997, %989 ], [ %935, %926 ]
  %1008 = zext i8 %1006 to i32
  %1009 = zext nneg i8 %1006 to i64
  %1010 = lshr i64 %1003, %1009
  %1011 = sub i32 %1004, %1008
  %1012 = zext i8 %1007 to i32
  %1013 = and i32 %1012, 64
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1016, label %1015

1015:                                             ; preds = %1001
  store ptr @.str.10, ptr %15, align 8, !tbaa !8
  br label %132

1016:                                             ; preds = %1001
  %1017 = zext i16 %1005 to i64
  %1018 = and i32 %1012, 15
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1062, label %1020

1020:                                             ; preds = %1016
  %1021 = icmp ult i32 %1011, %1018
  br i1 %1021, label %1024, label %1022

1022:                                             ; preds = %1020
  %1023 = zext nneg i32 %1018 to i64
  br label %1049

1024:                                             ; preds = %1020
  %1025 = zext nneg i32 %1011 to i64
  %1026 = zext nneg i32 %1018 to i64
  br label %1027

1027:                                             ; preds = %1024, %1036
  %1028 = phi i64 [ %1025, %1024 ], [ %1045, %1036 ]
  %1029 = phi i64 [ %1010, %1024 ], [ %1044, %1036 ]
  %1030 = phi i32 [ %1002, %1024 ], [ %1038, %1036 ]
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1027
  %1033 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1032
  store ptr null, ptr %6, align 8, !tbaa !20
  br label %1184

1036:                                             ; preds = %1032, %1027
  %1037 = phi i32 [ %1033, %1032 ], [ %1030, %1027 ]
  %1038 = add i32 %1037, -1
  %1039 = load ptr, ptr %6, align 8, !tbaa !20
  %1040 = getelementptr inbounds i8, ptr %1039, i64 1
  store ptr %1040, ptr %6, align 8, !tbaa !20
  %1041 = load i8, ptr %1039, align 1, !tbaa !5
  %1042 = zext i8 %1041 to i64
  %1043 = shl nuw nsw i64 %1042, %1028
  %1044 = add i64 %1043, %1029
  %1045 = add nuw nsw i64 %1028, 8
  %1046 = icmp ult i64 %1045, %1026
  br i1 %1046, label %1027, label %1047, !llvm.loop !51

1047:                                             ; preds = %1036
  %1048 = trunc i64 %1045 to i32
  br label %1049

1049:                                             ; preds = %1022, %1047
  %1050 = phi i64 [ %1023, %1022 ], [ %1026, %1047 ]
  %1051 = phi i32 [ %1002, %1022 ], [ %1038, %1047 ]
  %1052 = phi i64 [ %1010, %1022 ], [ %1044, %1047 ]
  %1053 = phi i32 [ %1011, %1022 ], [ %1048, %1047 ]
  %1054 = trunc i64 %1052 to i32
  %1055 = shl nsw i32 -1, %1018
  %1056 = xor i32 %1055, -1
  %1057 = and i32 %1054, %1056
  %1058 = zext nneg i32 %1057 to i64
  %1059 = add nuw nsw i64 %1058, %1017
  %1060 = lshr i64 %1052, %1050
  %1061 = sub i32 %1053, %1018
  br label %1062

1062:                                             ; preds = %1049, %1016
  %1063 = phi i32 [ %1051, %1049 ], [ %1002, %1016 ]
  %1064 = phi i64 [ %1060, %1049 ], [ %1010, %1016 ]
  %1065 = phi i32 [ %1061, %1049 ], [ %1011, %1016 ]
  %1066 = phi i64 [ %1059, %1049 ], [ %1017, %1016 ]
  %1067 = icmp eq i32 %39, 0
  %1068 = sub i64 65536, %36
  %1069 = select i1 %1067, i64 %1068, i64 65536
  %1070 = icmp ugt i64 %1066, %1069
  br i1 %1070, label %1074, label %1071

1071:                                             ; preds = %1062
  %1072 = sub nsw i64 65536, %1066
  %1073 = sub nsw i64 0, %1066
  br label %1075

1074:                                             ; preds = %1062
  store ptr @.str.11, ptr %15, align 8, !tbaa !8
  br label %132

1075:                                             ; preds = %1071, %1170
  %1076 = phi ptr [ %1171, %1170 ], [ %34, %1071 ]
  %1077 = phi i64 [ %1172, %1170 ], [ %36, %1071 ]
  %1078 = phi i32 [ %1087, %1170 ], [ %39, %1071 ]
  %1079 = phi i64 [ %1094, %1170 ], [ %876, %1071 ]
  %1080 = icmp eq i64 %1077, 0
  br i1 %1080, label %1081, label %1084

1081:                                             ; preds = %1075
  %1082 = call i32 %3(ptr noundef %4, ptr noundef %16, i32 noundef 65536) #5
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1184

1084:                                             ; preds = %1081, %1075
  %1085 = phi ptr [ %16, %1081 ], [ %1076, %1075 ]
  %1086 = phi i64 [ 65536, %1081 ], [ %1077, %1075 ]
  %1087 = phi i32 [ 1, %1081 ], [ %1078, %1075 ]
  %1088 = icmp ult i64 %1072, %1086
  %1089 = select i1 %1088, i64 %1072, i64 0
  %1090 = sub i64 %1086, %1089
  %1091 = select i1 %1088, i64 %1072, i64 %1073
  %1092 = getelementptr i8, ptr %1085, i64 %1091
  %1093 = call i64 @llvm.umin.i64(i64 %1090, i64 %1079)
  %1094 = sub i64 %1079, %1093
  %1095 = icmp ult i64 %1093, 32
  %1096 = add nsw i64 %1091, 31
  %1097 = icmp ult i64 %1096, 32
  %1098 = select i1 %1095, i1 true, i1 %1097
  br i1 %1098, label %1116, label %1099

1099:                                             ; preds = %1084
  %1100 = and i64 %1093, -32
  %1101 = getelementptr i8, ptr %1085, i64 %1100
  %1102 = and i64 %1093, 31
  %1103 = getelementptr i8, ptr %1092, i64 %1100
  br label %1104

1104:                                             ; preds = %1104, %1099
  %1105 = phi i64 [ 0, %1099 ], [ %1112, %1104 ]
  %1106 = getelementptr i8, ptr %1085, i64 %1105
  %1107 = getelementptr i8, ptr %1092, i64 %1105
  %1108 = getelementptr i8, ptr %1107, i64 16
  %1109 = load <16 x i8>, ptr %1107, align 1, !tbaa !5
  %1110 = load <16 x i8>, ptr %1108, align 1, !tbaa !5
  %1111 = getelementptr i8, ptr %1106, i64 16
  store <16 x i8> %1109, ptr %1106, align 1, !tbaa !5
  store <16 x i8> %1110, ptr %1111, align 1, !tbaa !5
  %1112 = add nuw i64 %1105, 32
  %1113 = icmp eq i64 %1112, %1100
  br i1 %1113, label %1114, label %1104, !llvm.loop !52

1114:                                             ; preds = %1104
  %1115 = icmp eq i64 %1093, %1100
  br i1 %1115, label %1170, label %1116

1116:                                             ; preds = %1084, %1114
  %1117 = phi ptr [ %1085, %1084 ], [ %1101, %1114 ]
  %1118 = phi i64 [ %1093, %1084 ], [ %1102, %1114 ]
  %1119 = phi ptr [ %1092, %1084 ], [ %1103, %1114 ]
  %1120 = add i64 %1118, -1
  %1121 = and i64 %1118, 7
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1134, label %1123

1123:                                             ; preds = %1116, %1123
  %1124 = phi ptr [ %1130, %1123 ], [ %1117, %1116 ]
  %1125 = phi i64 [ %1131, %1123 ], [ %1118, %1116 ]
  %1126 = phi ptr [ %1128, %1123 ], [ %1119, %1116 ]
  %1127 = phi i64 [ %1132, %1123 ], [ 0, %1116 ]
  %1128 = getelementptr inbounds i8, ptr %1126, i64 1
  %1129 = load i8, ptr %1126, align 1, !tbaa !5
  %1130 = getelementptr inbounds i8, ptr %1124, i64 1
  store i8 %1129, ptr %1124, align 1, !tbaa !5
  %1131 = add i64 %1125, -1
  %1132 = add i64 %1127, 1
  %1133 = icmp eq i64 %1132, %1121
  br i1 %1133, label %1134, label %1123, !llvm.loop !53

1134:                                             ; preds = %1123, %1116
  %1135 = phi ptr [ undef, %1116 ], [ %1130, %1123 ]
  %1136 = phi ptr [ %1117, %1116 ], [ %1130, %1123 ]
  %1137 = phi i64 [ %1118, %1116 ], [ %1131, %1123 ]
  %1138 = phi ptr [ %1119, %1116 ], [ %1128, %1123 ]
  %1139 = icmp ult i64 %1120, 7
  br i1 %1139, label %1170, label %1140

1140:                                             ; preds = %1134, %1140
  %1141 = phi ptr [ %1167, %1140 ], [ %1136, %1134 ]
  %1142 = phi i64 [ %1168, %1140 ], [ %1137, %1134 ]
  %1143 = phi ptr [ %1165, %1140 ], [ %1138, %1134 ]
  %1144 = getelementptr inbounds i8, ptr %1143, i64 1
  %1145 = load i8, ptr %1143, align 1, !tbaa !5
  %1146 = getelementptr inbounds i8, ptr %1141, i64 1
  store i8 %1145, ptr %1141, align 1, !tbaa !5
  %1147 = getelementptr inbounds i8, ptr %1143, i64 2
  %1148 = load i8, ptr %1144, align 1, !tbaa !5
  %1149 = getelementptr inbounds i8, ptr %1141, i64 2
  store i8 %1148, ptr %1146, align 1, !tbaa !5
  %1150 = getelementptr inbounds i8, ptr %1143, i64 3
  %1151 = load i8, ptr %1147, align 1, !tbaa !5
  %1152 = getelementptr inbounds i8, ptr %1141, i64 3
  store i8 %1151, ptr %1149, align 1, !tbaa !5
  %1153 = getelementptr inbounds i8, ptr %1143, i64 4
  %1154 = load i8, ptr %1150, align 1, !tbaa !5
  %1155 = getelementptr inbounds i8, ptr %1141, i64 4
  store i8 %1154, ptr %1152, align 1, !tbaa !5
  %1156 = getelementptr inbounds i8, ptr %1143, i64 5
  %1157 = load i8, ptr %1153, align 1, !tbaa !5
  %1158 = getelementptr inbounds i8, ptr %1141, i64 5
  store i8 %1157, ptr %1155, align 1, !tbaa !5
  %1159 = getelementptr inbounds i8, ptr %1143, i64 6
  %1160 = load i8, ptr %1156, align 1, !tbaa !5
  %1161 = getelementptr inbounds i8, ptr %1141, i64 6
  store i8 %1160, ptr %1158, align 1, !tbaa !5
  %1162 = getelementptr inbounds i8, ptr %1143, i64 7
  %1163 = load i8, ptr %1159, align 1, !tbaa !5
  %1164 = getelementptr inbounds i8, ptr %1141, i64 7
  store i8 %1163, ptr %1161, align 1, !tbaa !5
  %1165 = getelementptr inbounds i8, ptr %1143, i64 8
  %1166 = load i8, ptr %1162, align 1, !tbaa !5
  %1167 = getelementptr inbounds i8, ptr %1141, i64 8
  store i8 %1166, ptr %1164, align 1, !tbaa !5
  %1168 = add i64 %1142, -8
  %1169 = icmp eq i64 %1168, 0
  br i1 %1169, label %1170, label %1140, !llvm.loop !54

1170:                                             ; preds = %1134, %1140, %1114
  %1171 = phi ptr [ %1101, %1114 ], [ %1135, %1134 ], [ %1167, %1140 ]
  %1172 = sub i64 %1086, %1093
  %1173 = icmp eq i64 %1094, 0
  br i1 %1173, label %132, label %1075, !llvm.loop !55

1174:                                             ; preds = %33
  %1175 = icmp ult i64 %36, 65536
  br i1 %1175, label %1176, label %1184

1176:                                             ; preds = %1174
  %1177 = trunc i64 %36 to i32
  %1178 = sub nuw nsw i32 65536, %1177
  %1179 = call i32 %3(ptr noundef %4, ptr noundef %16, i32 noundef %1178) #5
  %1180 = icmp eq i32 %1179, 0
  %1181 = select i1 %1180, i32 1, i32 -5
  br label %1184

1182:                                             ; preds = %74
  unreachable

1183:                                             ; preds = %33
  unreachable

1184:                                             ; preds = %33, %810, %1081, %158, %1176, %1174, %1035, %964, %901, %845, %757, %693, %491, %458, %417, %362, %315, %238, %185, %154, %108, %63
  %1185 = phi i32 [ %35, %1174 ], [ 0, %845 ], [ 0, %1035 ], [ 0, %964 ], [ 0, %901 ], [ 0, %757 ], [ 0, %693 ], [ 0, %185 ], [ 0, %238 ], [ 0, %362 ], [ 0, %417 ], [ 0, %458 ], [ 0, %491 ], [ 0, %315 ], [ 0, %108 ], [ 0, %154 ], [ 0, %63 ], [ %35, %1176 ], [ %156, %158 ], [ %1063, %1081 ], [ %35, %33 ], [ %795, %810 ]
  %1186 = phi i32 [ 1, %1174 ], [ -5, %845 ], [ -5, %1035 ], [ -5, %964 ], [ -5, %901 ], [ -5, %757 ], [ -5, %693 ], [ -5, %185 ], [ -5, %238 ], [ -5, %362 ], [ -5, %417 ], [ -5, %458 ], [ -5, %491 ], [ -5, %315 ], [ -5, %108 ], [ -5, %154 ], [ -5, %63 ], [ %1181, %1176 ], [ -5, %158 ], [ -5, %1081 ], [ -3, %33 ], [ -5, %810 ]
  %1187 = load ptr, ptr %6, align 8, !tbaa !20
  store ptr %1187, ptr %0, align 8, !tbaa !19
  %1188 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  store i32 %1185, ptr %1188, align 8, !tbaa !21
  br label %1189

1189:                                             ; preds = %5, %10, %1184
  %1190 = phi i32 [ %1186, %1184 ], [ -2, %10 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret i32 %1190
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @inflate_table9(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflateBack9End(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #5
  store ptr null, ptr %4, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !11, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !12, i64 96, !12, i64 104}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 64}
!14 = !{!9, !10, i64 80}
!15 = !{!9, !10, i64 72}
!16 = !{!9, !10, i64 56}
!17 = !{!18, !10, i64 0}
!18 = !{!"inflate_state", !10, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !10, i64 24, !6, i64 32, !6, i64 672, !6, i64 1248}
!19 = !{!9, !10, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!9, !11, i64 8}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = !{!18, !11, i64 12}
!28 = !{!18, !11, i64 16}
!29 = !{!18, !11, i64 8}
!30 = !{!18, !11, i64 20}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = !{!18, !10, i64 24}
!36 = !{i64 0, i64 1, !5, i64 1, i64 2, !31}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !24, !42}
!47 = distinct !{!47, !24}
!48 = !{i64 0, i64 1, !5, i64 1, i64 1, !5, i64 2, i64 2, !31}
!49 = !{i64 0, i64 2, !31}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24, !42, !43}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !24, !42}
!55 = distinct !{!55, !24}
