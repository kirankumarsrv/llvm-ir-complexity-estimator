; ModuleID = 'corpus_src/zlib/trees.c'
source_filename = "corpus_src/zlib/trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.static_tree_desc_s = type { ptr, ptr, i32, i32, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i64, i32, ptr, i64, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, i32, i64, i64, i32, i32, i16, i32, i32, i64, i32 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@_dist_code = dso_local local_unnamed_addr constant [512 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\06\07\07\07\07\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\10\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D", align 16
@_length_code = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\0F\0F\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C", align 16
@static_l_desc = internal constant %struct.static_tree_desc_s { ptr @static_ltree, ptr @extra_lbits, i32 257, i32 286, i32 15 }, align 8
@static_d_desc = internal constant %struct.static_tree_desc_s { ptr @static_dtree, ptr @extra_dbits, i32 0, i32 30, i32 15 }, align 8
@static_bl_desc = internal constant %struct.static_tree_desc_s { ptr null, ptr @extra_blbits, i32 0, i32 19, i32 7 }, align 8
@static_ltree = internal constant [288 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 140 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 76 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 204 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 44 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 172 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 108 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 236 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 156 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 92 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 220 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 60 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 188 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 124 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 252 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 130 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 66 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 194 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 34 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 162 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 98 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 226 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 146 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 82 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 210 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 50 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 178 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 114 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 242 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 138 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 74 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 202 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 42 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 170 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 106 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 234 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 154 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 90 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 218 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 58 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 186 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 122 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 250 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 134 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 70 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 198 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 38 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 166 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 102 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 230 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 150 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 86 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 214 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 54 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 182 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 118 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 246 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 142 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 78 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 206 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 46 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 174 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 110 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 238 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 158 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 94 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 222 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 62 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 190 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 126 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 254 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 129 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 65 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 193 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 33 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 161 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 97 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 225 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 145 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 81 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 209 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 49 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 177 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 113 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 241 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 137 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 73 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 201 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 41 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 169 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 105 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 233 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 153 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 89 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 217 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 57 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 185 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 121 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 249 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 133 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 69 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 197 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 37 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 165 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 101 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 229 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 149 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 85 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 213 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 53 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 181 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 117 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 245 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 141 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 77 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 205 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 45 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 173 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 109 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 237 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 157 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 93 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 221 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 61 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 189 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 125 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 253 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 275 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 147 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 403 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 83 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 339 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 211 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 467 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 51 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 307 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 179 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 435 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 115 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 371 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 243 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 499 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 267 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 139 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 395 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 75 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 331 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 203 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 459 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 43 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 299 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 171 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 427 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 107 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 363 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 235 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 491 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 283 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 155 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 411 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 91 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 347 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 219 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 475 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 59 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 315 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 187 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 443 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 123 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 379 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 251 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 507 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 263 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 135 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 391 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 71 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 327 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 199 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 455 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 39 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 295 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 167 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 423 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 103 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 359 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 231 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 487 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 279 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 151 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 407 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 87 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 343 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 215 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 471 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 55 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 311 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 183 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 439 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 119 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 375 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 247 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 503 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 15 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 271 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 143 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 399 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 79 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 335 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 207 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 463 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 47 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 303 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 175 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 431 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 111 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 367 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 239 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 495 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 31 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 287 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 159 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 415 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 95 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 351 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 223 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 479 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 63 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 319 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 191 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 447 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 127 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 383 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 255 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon { i16 511 }, %union.anon.0 { i16 9 } }, %struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 64 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 32 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 96 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 80 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 48 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 112 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 72 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 40 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 104 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 88 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 56 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 120 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 68 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 36 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 100 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 84 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 52 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 116 }, %union.anon.0 { i16 7 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 131 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 67 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 195 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 35 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 163 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 99 }, %union.anon.0 { i16 8 } }, %struct.ct_data_s { %union.anon { i16 227 }, %union.anon.0 { i16 8 } }], align 16
@static_dtree = internal constant [30 x %struct.ct_data_s] [%struct.ct_data_s { %union.anon zeroinitializer, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 16 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 8 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 24 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 4 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 20 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 12 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 28 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 2 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 18 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 10 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 26 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 6 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 22 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 14 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 30 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 1 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 17 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 9 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 25 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 5 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 21 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 13 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 29 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 3 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 19 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 11 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 27 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 7 }, %union.anon.0 { i16 5 } }, %struct.ct_data_s { %union.anon { i16 23 }, %union.anon.0 { i16 5 } }], align 16
@extra_lbits = internal constant [29 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 0], align 16
@extra_dbits = internal constant [30 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], align 16
@extra_blbits = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3, i32 7], align 16
@bl_order = internal unnamed_addr constant [19 x i8] c"\10\11\12\00\08\07\09\06\0A\05\0B\04\0C\03\0D\02\0E\01\0F", align 16
@base_length = internal unnamed_addr constant [29 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 0], align 16
@base_dist = internal unnamed_addr constant [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @_tr_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  store ptr %2, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 2
  store ptr @static_l_desc, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  store ptr %5, ptr %6, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 2
  store ptr @static_d_desc, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42, i32 2
  store ptr @static_bl_desc, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  store i32 0, ptr %12, align 4, !tbaa !20
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 0, ptr %13, align 8, !tbaa !21
  tail call fastcc void @init_block(ptr noundef %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @init_block(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %3
  store i16 0, ptr %4, align 4, !tbaa !22
  %5 = or disjoint i64 %3, 1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %5
  store i16 0, ptr %6, align 4, !tbaa !22
  %7 = add nuw nsw i64 %3, 2
  %8 = icmp eq i64 %7, 286
  br i1 %8, label %9, label %2, !llvm.loop !23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0
  store i16 0, ptr %10, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 1
  store i16 0, ptr %11, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 2
  store i16 0, ptr %12, align 4, !tbaa !22
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 3
  store i16 0, ptr %13, align 4, !tbaa !22
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 4
  store i16 0, ptr %14, align 4, !tbaa !22
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 5
  store i16 0, ptr %15, align 4, !tbaa !22
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 6
  store i16 0, ptr %16, align 4, !tbaa !22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 7
  store i16 0, ptr %17, align 4, !tbaa !22
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 8
  store i16 0, ptr %18, align 4, !tbaa !22
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 9
  store i16 0, ptr %19, align 4, !tbaa !22
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 10
  store i16 0, ptr %20, align 4, !tbaa !22
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 11
  store i16 0, ptr %21, align 4, !tbaa !22
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 12
  store i16 0, ptr %22, align 4, !tbaa !22
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 13
  store i16 0, ptr %23, align 4, !tbaa !22
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 14
  store i16 0, ptr %24, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 15
  store i16 0, ptr %25, align 4, !tbaa !22
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 16
  store i16 0, ptr %26, align 4, !tbaa !22
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 17
  store i16 0, ptr %27, align 4, !tbaa !22
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 18
  store i16 0, ptr %28, align 4, !tbaa !22
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 19
  store i16 0, ptr %29, align 4, !tbaa !22
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 20
  store i16 0, ptr %30, align 4, !tbaa !22
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 21
  store i16 0, ptr %31, align 4, !tbaa !22
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 22
  store i16 0, ptr %32, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 23
  store i16 0, ptr %33, align 4, !tbaa !22
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 24
  store i16 0, ptr %34, align 4, !tbaa !22
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 25
  store i16 0, ptr %35, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 26
  store i16 0, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 27
  store i16 0, ptr %37, align 4, !tbaa !22
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 28
  store i16 0, ptr %38, align 4, !tbaa !22
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 29
  store i16 0, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 0
  store i16 0, ptr %40, align 4, !tbaa !22
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 1
  store i16 0, ptr %41, align 4, !tbaa !22
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 2
  store i16 0, ptr %42, align 4, !tbaa !22
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 3
  store i16 0, ptr %43, align 4, !tbaa !22
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 4
  store i16 0, ptr %44, align 4, !tbaa !22
  %45 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 5
  store i16 0, ptr %45, align 4, !tbaa !22
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 6
  store i16 0, ptr %46, align 4, !tbaa !22
  %47 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 7
  store i16 0, ptr %47, align 4, !tbaa !22
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 8
  store i16 0, ptr %48, align 4, !tbaa !22
  %49 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 9
  store i16 0, ptr %49, align 4, !tbaa !22
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 10
  store i16 0, ptr %50, align 4, !tbaa !22
  %51 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 11
  store i16 0, ptr %51, align 4, !tbaa !22
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 12
  store i16 0, ptr %52, align 4, !tbaa !22
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 13
  store i16 0, ptr %53, align 4, !tbaa !22
  %54 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 14
  store i16 0, ptr %54, align 4, !tbaa !22
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 15
  store i16 0, ptr %55, align 4, !tbaa !22
  %56 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  store i16 0, ptr %56, align 4, !tbaa !22
  %57 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  store i16 0, ptr %57, align 4, !tbaa !22
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  store i16 0, ptr %58, align 4, !tbaa !22
  %59 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 256
  store i16 1, ptr %59, align 4, !tbaa !22
  %60 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  store i32 0, ptr %61, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %60, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_stored_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !20
  %7 = icmp sgt i32 %6, 13
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = and i32 %3, 65535
  %10 = shl i32 %3, %6
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %12 = load i16, ptr %11, align 8, !tbaa !19
  %13 = trunc i32 %10 to i16
  %14 = or i16 %12, %13
  store i16 %14, ptr %11, align 8, !tbaa !19
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !27
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !27
  %21 = getelementptr inbounds i8, ptr %17, i64 %19
  store i8 %15, ptr %21, align 1, !tbaa !22
  %22 = load i16, ptr %11, align 8, !tbaa !19
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  %25 = load ptr, ptr %16, align 8, !tbaa !26
  %26 = load i64, ptr %18, align 8, !tbaa !27
  %27 = add i64 %26, 1
  store i64 %27, ptr %18, align 8, !tbaa !27
  %28 = getelementptr inbounds i8, ptr %25, i64 %26
  store i8 %24, ptr %28, align 1, !tbaa !22
  %29 = load i32, ptr %5, align 4, !tbaa !20
  %30 = sub nsw i32 16, %29
  %31 = lshr i32 %9, %30
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr %11, align 8, !tbaa !19
  %33 = add nsw i32 %29, -13
  br label %41

34:                                               ; preds = %4
  %35 = shl i32 %3, %6
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %37 = load i16, ptr %36, align 8, !tbaa !19
  %38 = trunc i32 %35 to i16
  %39 = or i16 %37, %38
  store i16 %39, ptr %36, align 8, !tbaa !19
  %40 = add nsw i32 %6, 3
  br label %41

41:                                               ; preds = %34, %8
  %42 = phi i16 [ %39, %34 ], [ %32, %8 ]
  %43 = phi i32 [ %40, %34 ], [ %33, %8 ]
  store i32 %43, ptr %5, align 4, !tbaa !20
  %44 = icmp sgt i32 %43, 8
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %47 = trunc i16 %42 to i8
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %51 = load i64, ptr %50, align 8, !tbaa !27
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8, !tbaa !27
  %53 = getelementptr inbounds i8, ptr %49, i64 %51
  store i8 %47, ptr %53, align 1, !tbaa !22
  %54 = load i16, ptr %46, align 8, !tbaa !19
  %55 = lshr i16 %54, 8
  %56 = trunc i16 %55 to i8
  %57 = load ptr, ptr %48, align 8, !tbaa !26
  %58 = load i64, ptr %50, align 8, !tbaa !27
  %59 = add i64 %58, 1
  store i64 %59, ptr %50, align 8, !tbaa !27
  %60 = getelementptr inbounds i8, ptr %57, i64 %58
  store i8 %56, ptr %60, align 1, !tbaa !22
  br label %71

61:                                               ; preds = %41
  %62 = icmp sgt i32 %43, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = trunc i16 %42 to i8
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !26
  %67 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %68 = load i64, ptr %67, align 8, !tbaa !27
  %69 = add i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !27
  %70 = getelementptr inbounds i8, ptr %66, i64 %68
  store i8 %64, ptr %70, align 1, !tbaa !22
  br label %71

71:                                               ; preds = %45, %61, %63
  %72 = load i32, ptr %5, align 4, !tbaa !20
  %73 = add i32 %72, 7
  %74 = and i32 %73, 7
  %75 = add nuw nsw i32 %74, 1
  %76 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 %75, ptr %76, align 8, !tbaa !21
  %77 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %77, align 8, !tbaa !19
  store i32 0, ptr %5, align 4, !tbaa !20
  %78 = trunc i64 %2 to i8
  %79 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !26
  %81 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %82 = load i64, ptr %81, align 8, !tbaa !27
  %83 = add i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !27
  %84 = getelementptr inbounds i8, ptr %80, i64 %82
  store i8 %78, ptr %84, align 1, !tbaa !22
  %85 = lshr i64 %2, 8
  %86 = trunc i64 %85 to i8
  %87 = load ptr, ptr %79, align 8, !tbaa !26
  %88 = load i64, ptr %81, align 8, !tbaa !27
  %89 = add i64 %88, 1
  store i64 %89, ptr %81, align 8, !tbaa !27
  %90 = getelementptr inbounds i8, ptr %87, i64 %88
  store i8 %86, ptr %90, align 1, !tbaa !22
  %91 = trunc i64 %2 to i32
  %92 = and i32 %91, 65535
  %93 = xor i32 %92, 65535
  %94 = trunc i32 %93 to i8
  %95 = load ptr, ptr %79, align 8, !tbaa !26
  %96 = load i64, ptr %81, align 8, !tbaa !27
  %97 = add i64 %96, 1
  store i64 %97, ptr %81, align 8, !tbaa !27
  %98 = getelementptr inbounds i8, ptr %95, i64 %96
  store i8 %94, ptr %98, align 1, !tbaa !22
  %99 = lshr i32 %93, 8
  %100 = trunc i32 %99 to i8
  %101 = load ptr, ptr %79, align 8, !tbaa !26
  %102 = load i64, ptr %81, align 8, !tbaa !27
  %103 = add i64 %102, 1
  store i64 %103, ptr %81, align 8, !tbaa !27
  %104 = getelementptr inbounds i8, ptr %101, i64 %102
  store i8 %100, ptr %104, align 1, !tbaa !22
  %105 = icmp eq i64 %2, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %71
  %107 = load ptr, ptr %79, align 8, !tbaa !26
  %108 = load i64, ptr %81, align 8, !tbaa !27
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %1, i64 %2, i1 false)
  br label %110

110:                                              ; preds = %106, %71
  %111 = load i64, ptr %81, align 8, !tbaa !27
  %112 = add i64 %111, %2
  store i64 %112, ptr %81, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_flush_bits(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !20
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !19
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !27
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !27
  %14 = getelementptr inbounds i8, ptr %10, i64 %12
  store i8 %8, ptr %14, align 1, !tbaa !22
  %15 = load i16, ptr %6, align 8, !tbaa !19
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  %18 = load ptr, ptr %9, align 8, !tbaa !26
  %19 = load i64, ptr %11, align 8, !tbaa !27
  %20 = add i64 %19, 1
  store i64 %20, ptr %11, align 8, !tbaa !27
  %21 = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 %17, ptr %21, align 1, !tbaa !22
  store i16 0, ptr %6, align 8, !tbaa !19
  br label %38

22:                                               ; preds = %1
  %23 = icmp sgt i32 %3, 7
  br i1 %23, label %24, label %40

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %26 = load i16, ptr %25, align 8, !tbaa !19
  %27 = trunc i16 %26 to i8
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !27
  %32 = add i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !27
  %33 = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 %27, ptr %33, align 1, !tbaa !22
  %34 = load i16, ptr %25, align 8, !tbaa !19
  %35 = lshr i16 %34, 8
  store i16 %35, ptr %25, align 8, !tbaa !19
  %36 = load i32, ptr %2, align 4, !tbaa !20
  %37 = add nsw i32 %36, -8
  br label %38

38:                                               ; preds = %24, %5
  %39 = phi i32 [ %37, %24 ], [ 0, %5 ]
  store i32 %39, ptr %2, align 4, !tbaa !20
  br label %40

40:                                               ; preds = %22, %38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_align(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %3 = load i32, ptr %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 13
  %5 = shl i32 2, %3
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %7 = load i16, ptr %6, align 8, !tbaa !19
  %8 = trunc i32 %5 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %6, align 8, !tbaa !19
  br i1 %4, label %10, label %30

10:                                               ; preds = %1
  %11 = trunc i16 %9 to i8
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !27
  %17 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 %11, ptr %17, align 1, !tbaa !22
  %18 = load i16, ptr %6, align 8, !tbaa !19
  %19 = lshr i16 %18, 8
  %20 = trunc i16 %19 to i8
  %21 = load ptr, ptr %12, align 8, !tbaa !26
  %22 = load i64, ptr %14, align 8, !tbaa !27
  %23 = add i64 %22, 1
  store i64 %23, ptr %14, align 8, !tbaa !27
  %24 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 %20, ptr %24, align 1, !tbaa !22
  %25 = load i32, ptr %2, align 4, !tbaa !20
  %26 = sub nsw i32 16, %25
  %27 = lshr i32 2, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %6, align 8, !tbaa !19
  %29 = add nsw i32 %25, -13
  br label %32

30:                                               ; preds = %1
  %31 = add nsw i32 %3, 3
  br label %32

32:                                               ; preds = %30, %10
  %33 = phi i16 [ %9, %30 ], [ %28, %10 ]
  %34 = phi i32 [ %31, %30 ], [ %29, %10 ]
  store i32 %34, ptr %2, align 4, !tbaa !20
  %35 = icmp sgt i32 %34, 9
  %36 = trunc i16 %33 to i8
  br i1 %35, label %37, label %54

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !27
  %44 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 %36, ptr %44, align 1, !tbaa !22
  %45 = load i16, ptr %38, align 8, !tbaa !19
  %46 = lshr i16 %45, 8
  %47 = trunc i16 %46 to i8
  %48 = load ptr, ptr %39, align 8, !tbaa !26
  %49 = load i64, ptr %41, align 8, !tbaa !27
  %50 = add i64 %49, 1
  store i64 %50, ptr %41, align 8, !tbaa !27
  %51 = getelementptr inbounds i8, ptr %48, i64 %49
  store i8 %47, ptr %51, align 1, !tbaa !22
  store i16 0, ptr %38, align 8, !tbaa !19
  %52 = load i32, ptr %2, align 4, !tbaa !20
  %53 = add nsw i32 %52, -9
  br label %56

54:                                               ; preds = %32
  %55 = add nsw i32 %34, 7
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i8 [ %36, %54 ], [ 0, %37 ]
  %58 = phi i32 [ %55, %54 ], [ %53, %37 ]
  store i32 %58, ptr %2, align 4, !tbaa !20
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %62 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  %64 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !27
  %66 = add i64 %65, 1
  store i64 %66, ptr %64, align 8, !tbaa !27
  %67 = getelementptr inbounds i8, ptr %63, i64 %65
  store i8 %57, ptr %67, align 1, !tbaa !22
  %68 = load i16, ptr %61, align 8, !tbaa !19
  %69 = lshr i16 %68, 8
  %70 = trunc i16 %69 to i8
  %71 = load ptr, ptr %62, align 8, !tbaa !26
  %72 = load i64, ptr %64, align 8, !tbaa !27
  %73 = add i64 %72, 1
  store i64 %73, ptr %64, align 8, !tbaa !27
  %74 = getelementptr inbounds i8, ptr %71, i64 %72
  store i8 %70, ptr %74, align 1, !tbaa !22
  store i16 0, ptr %61, align 8, !tbaa !19
  br label %89

75:                                               ; preds = %56
  %76 = icmp sgt i32 %58, 7
  br i1 %76, label %77, label %91

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %79 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !26
  %81 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %82 = load i64, ptr %81, align 8, !tbaa !27
  %83 = add i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !27
  %84 = getelementptr inbounds i8, ptr %80, i64 %82
  store i8 %57, ptr %84, align 1, !tbaa !22
  %85 = load i16, ptr %78, align 8, !tbaa !19
  %86 = lshr i16 %85, 8
  store i16 %86, ptr %78, align 8, !tbaa !19
  %87 = load i32, ptr %2, align 4, !tbaa !20
  %88 = add nsw i32 %87, -8
  br label %89

89:                                               ; preds = %77, %60
  %90 = phi i32 [ %88, %77 ], [ 0, %60 ]
  store i32 %90, ptr %2, align 4, !tbaa !20
  br label %91

91:                                               ; preds = %75, %89
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_tr_flush_block(ptr noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %6 = load i32, ptr %5, align 4, !tbaa !28
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %307

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.z_stream_s, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %71

13:                                               ; preds = %8, %31
  %14 = phi i64 [ %32, %31 ], [ 0, %8 ]
  %15 = phi i64 [ %23, %31 ], [ 4093624447, %8 ]
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %14
  %20 = load i16, ptr %19, align 4, !tbaa !22
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %18, %13
  %23 = lshr i64 %15, 2
  %24 = and i64 %15, 2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = or disjoint i64 %14, 1
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %27
  %29 = load i16, ptr %28, align 4, !tbaa !22
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %26, %22
  %32 = add nuw nsw i64 %14, 2
  %33 = icmp eq i64 %32, 32
  br i1 %33, label %34, label %13, !llvm.loop !32

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 9
  %36 = load i16, ptr %35, align 4, !tbaa !22
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 10
  %40 = load i16, ptr %39, align 4, !tbaa !22
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 13
  %44 = load i16, ptr %43, align 4, !tbaa !22
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %64, label %69

46:                                               ; preds = %64
  %47 = or disjoint i64 %65, 1
  %48 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %47
  %49 = load i16, ptr %48, align 4, !tbaa !22
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = or disjoint i64 %65, 2
  %53 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %52
  %54 = load i16, ptr %53, align 4, !tbaa !22
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = or disjoint i64 %65, 3
  %58 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %57
  %59 = load i16, ptr %58, align 4, !tbaa !22
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = add nuw nsw i64 %65, 4
  %63 = icmp eq i64 %62, 256
  br i1 %63, label %69, label %64, !llvm.loop !33

64:                                               ; preds = %42, %61
  %65 = phi i64 [ %62, %61 ], [ 32, %42 ]
  %66 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %65
  %67 = load i16, ptr %66, align 4, !tbaa !22
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %46, label %69

69:                                               ; preds = %18, %26, %64, %46, %51, %56, %61, %34, %38, %42
  %70 = phi i32 [ 1, %42 ], [ 1, %38 ], [ 1, %34 ], [ 1, %64 ], [ 1, %46 ], [ 1, %51 ], [ 1, %56 ], [ 0, %61 ], [ 0, %26 ], [ 0, %18 ]
  store i32 %70, ptr %10, align 8, !tbaa !30
  br label %71

71:                                               ; preds = %69, %8
  %72 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %72)
  %73 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %73)
  %74 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  %75 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 0, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !22
  %79 = sext i32 %76 to i64
  %80 = getelementptr %struct.ct_data_s, ptr %74, i64 %79
  %81 = getelementptr %struct.ct_data_s, ptr %80, i64 1, i32 1
  store i16 -1, ptr %81, align 2, !tbaa !22
  %82 = icmp slt i32 %76, 0
  br i1 %82, label %147, label %83

83:                                               ; preds = %71
  %84 = icmp eq i16 %78, 0
  %85 = select i1 %84, i32 3, i32 4
  %86 = select i1 %84, i32 138, i32 7
  %87 = zext i16 %78 to i32
  %88 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %89 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %90 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %91 = add nuw i32 %76, 1
  %92 = zext i32 %91 to i64
  br label %93

93:                                               ; preds = %141, %83
  %94 = phi i64 [ 0, %83 ], [ %100, %141 ]
  %95 = phi i32 [ %85, %83 ], [ %145, %141 ]
  %96 = phi i32 [ %86, %83 ], [ %144, %141 ]
  %97 = phi i32 [ 0, %83 ], [ %143, %141 ]
  %98 = phi i32 [ %87, %83 ], [ %103, %141 ]
  %99 = phi i32 [ -1, %83 ], [ %142, %141 ]
  %100 = add nuw nsw i64 %94, 1
  %101 = getelementptr inbounds %struct.ct_data_s, ptr %74, i64 %100, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !22
  %103 = zext i16 %102 to i32
  %104 = add nsw i32 %97, 1
  %105 = icmp slt i32 %104, %96
  %106 = icmp eq i32 %98, %103
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %141, label %108

108:                                              ; preds = %93
  %109 = icmp slt i32 %104, %95
  br i1 %109, label %110, label %116

110:                                              ; preds = %108
  %111 = zext nneg i32 %98 to i64
  %112 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %111
  %113 = load i16, ptr %112, align 4, !tbaa !22
  %114 = trunc i32 %104 to i16
  %115 = add i16 %113, %114
  store i16 %115, ptr %112, align 4, !tbaa !22
  br label %136

116:                                              ; preds = %108
  %117 = icmp eq i32 %98, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %116
  %119 = icmp eq i32 %98, %99
  br i1 %119, label %125, label %120

120:                                              ; preds = %118
  %121 = zext nneg i32 %98 to i64
  %122 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %121
  %123 = load i16, ptr %122, align 4, !tbaa !22
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4, !tbaa !22
  br label %125

125:                                              ; preds = %120, %118
  %126 = load i16, ptr %88, align 4, !tbaa !22
  %127 = add i16 %126, 1
  store i16 %127, ptr %88, align 4, !tbaa !22
  br label %136

128:                                              ; preds = %116
  %129 = icmp slt i32 %97, 10
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i16, ptr %90, align 4, !tbaa !22
  %132 = add i16 %131, 1
  store i16 %132, ptr %90, align 4, !tbaa !22
  br label %136

133:                                              ; preds = %128
  %134 = load i16, ptr %89, align 4, !tbaa !22
  %135 = add i16 %134, 1
  store i16 %135, ptr %89, align 4, !tbaa !22
  br label %136

136:                                              ; preds = %133, %130, %125, %110
  %137 = icmp eq i16 %102, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = select i1 %106, i32 6, i32 7
  %140 = select i1 %106, i32 3, i32 4
  br label %141

141:                                              ; preds = %138, %136, %93
  %142 = phi i32 [ %99, %93 ], [ %98, %136 ], [ %98, %138 ]
  %143 = phi i32 [ %104, %93 ], [ 0, %136 ], [ 0, %138 ]
  %144 = phi i32 [ %96, %93 ], [ 138, %136 ], [ %139, %138 ]
  %145 = phi i32 [ %95, %93 ], [ 3, %136 ], [ %140, %138 ]
  %146 = icmp eq i64 %100, %92
  br i1 %146, label %147, label %93, !llvm.loop !35

147:                                              ; preds = %141, %71
  %148 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  %149 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !36
  %151 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 0, i32 1
  %152 = load i16, ptr %151, align 2, !tbaa !22
  %153 = sext i32 %150 to i64
  %154 = getelementptr %struct.ct_data_s, ptr %148, i64 %153
  %155 = getelementptr %struct.ct_data_s, ptr %154, i64 1, i32 1
  store i16 -1, ptr %155, align 2, !tbaa !22
  %156 = icmp slt i32 %150, 0
  br i1 %156, label %221, label %157

157:                                              ; preds = %147
  %158 = icmp eq i16 %152, 0
  %159 = select i1 %158, i32 3, i32 4
  %160 = select i1 %158, i32 138, i32 7
  %161 = zext i16 %152 to i32
  %162 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %163 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %164 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %165 = add nuw i32 %150, 1
  %166 = zext i32 %165 to i64
  br label %167

167:                                              ; preds = %215, %157
  %168 = phi i64 [ 0, %157 ], [ %174, %215 ]
  %169 = phi i32 [ %159, %157 ], [ %219, %215 ]
  %170 = phi i32 [ %160, %157 ], [ %218, %215 ]
  %171 = phi i32 [ 0, %157 ], [ %217, %215 ]
  %172 = phi i32 [ %161, %157 ], [ %177, %215 ]
  %173 = phi i32 [ -1, %157 ], [ %216, %215 ]
  %174 = add nuw nsw i64 %168, 1
  %175 = getelementptr inbounds %struct.ct_data_s, ptr %148, i64 %174, i32 1
  %176 = load i16, ptr %175, align 2, !tbaa !22
  %177 = zext i16 %176 to i32
  %178 = add nsw i32 %171, 1
  %179 = icmp slt i32 %178, %170
  %180 = icmp eq i32 %172, %177
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %215, label %182

182:                                              ; preds = %167
  %183 = icmp slt i32 %178, %169
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  %185 = zext nneg i32 %172 to i64
  %186 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %185
  %187 = load i16, ptr %186, align 4, !tbaa !22
  %188 = trunc i32 %178 to i16
  %189 = add i16 %187, %188
  store i16 %189, ptr %186, align 4, !tbaa !22
  br label %210

190:                                              ; preds = %182
  %191 = icmp eq i32 %172, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %190
  %193 = icmp eq i32 %172, %173
  br i1 %193, label %199, label %194

194:                                              ; preds = %192
  %195 = zext nneg i32 %172 to i64
  %196 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %195
  %197 = load i16, ptr %196, align 4, !tbaa !22
  %198 = add i16 %197, 1
  store i16 %198, ptr %196, align 4, !tbaa !22
  br label %199

199:                                              ; preds = %194, %192
  %200 = load i16, ptr %162, align 4, !tbaa !22
  %201 = add i16 %200, 1
  store i16 %201, ptr %162, align 4, !tbaa !22
  br label %210

202:                                              ; preds = %190
  %203 = icmp slt i32 %171, 10
  br i1 %203, label %204, label %207

204:                                              ; preds = %202
  %205 = load i16, ptr %164, align 4, !tbaa !22
  %206 = add i16 %205, 1
  store i16 %206, ptr %164, align 4, !tbaa !22
  br label %210

207:                                              ; preds = %202
  %208 = load i16, ptr %163, align 4, !tbaa !22
  %209 = add i16 %208, 1
  store i16 %209, ptr %163, align 4, !tbaa !22
  br label %210

210:                                              ; preds = %207, %204, %199, %184
  %211 = icmp eq i16 %176, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %210
  %213 = select i1 %180, i32 6, i32 7
  %214 = select i1 %180, i32 3, i32 4
  br label %215

215:                                              ; preds = %212, %210, %167
  %216 = phi i32 [ %173, %167 ], [ %172, %210 ], [ %172, %212 ]
  %217 = phi i32 [ %178, %167 ], [ 0, %210 ], [ 0, %212 ]
  %218 = phi i32 [ %170, %167 ], [ 138, %210 ], [ %213, %212 ]
  %219 = phi i32 [ %169, %167 ], [ 3, %210 ], [ %214, %212 ]
  %220 = icmp eq i64 %174, %166
  br i1 %220, label %221, label %167, !llvm.loop !35

221:                                              ; preds = %215, %147
  %222 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 42
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %222)
  %223 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 15, i32 1
  %224 = load i16, ptr %223, align 2, !tbaa !22
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %287

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 1, i32 1
  %228 = load i16, ptr %227, align 2, !tbaa !22
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %230, label %287

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 14, i32 1
  %232 = load i16, ptr %231, align 2, !tbaa !22
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %287

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 2, i32 1
  %236 = load i16, ptr %235, align 2, !tbaa !22
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %238, label %287

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 13, i32 1
  %240 = load i16, ptr %239, align 2, !tbaa !22
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %242, label %287

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 3, i32 1
  %244 = load i16, ptr %243, align 2, !tbaa !22
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %246, label %287

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 12, i32 1
  %248 = load i16, ptr %247, align 2, !tbaa !22
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %287

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 4, i32 1
  %252 = load i16, ptr %251, align 2, !tbaa !22
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %254, label %287

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 11, i32 1
  %256 = load i16, ptr %255, align 2, !tbaa !22
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %287

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 5, i32 1
  %260 = load i16, ptr %259, align 2, !tbaa !22
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %262, label %287

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 10, i32 1
  %264 = load i16, ptr %263, align 2, !tbaa !22
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %266, label %287

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 6, i32 1
  %268 = load i16, ptr %267, align 2, !tbaa !22
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 9, i32 1
  %272 = load i16, ptr %271, align 2, !tbaa !22
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 7, i32 1
  %276 = load i16, ptr %275, align 2, !tbaa !22
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 8, i32 1
  %280 = load i16, ptr %279, align 2, !tbaa !22
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !22
  %285 = icmp eq i16 %284, 0
  %286 = select i1 %285, i32 2, i32 3
  br label %287

287:                                              ; preds = %221, %226, %230, %234, %238, %242, %246, %250, %254, %258, %262, %266, %270, %274, %278, %282
  %288 = phi i32 [ 18, %221 ], [ 17, %226 ], [ 16, %230 ], [ 15, %234 ], [ 14, %238 ], [ 13, %242 ], [ 12, %246 ], [ 11, %250 ], [ 10, %254 ], [ 9, %258 ], [ 8, %262 ], [ 7, %266 ], [ 6, %270 ], [ 5, %274 ], [ 4, %278 ], [ %286, %282 ]
  %289 = mul nuw nsw i32 %288, 3
  %290 = add nuw nsw i32 %289, 17
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %293 = load i64, ptr %292, align 8, !tbaa !37
  %294 = add i64 %293, %291
  store i64 %294, ptr %292, align 8, !tbaa !37
  %295 = add i64 %294, 10
  %296 = lshr i64 %295, 3
  %297 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %298 = load i64, ptr %297, align 8, !tbaa !38
  %299 = add i64 %298, 10
  %300 = lshr i64 %299, 3
  %301 = icmp ugt i64 %300, %296
  br i1 %301, label %302, label %306

302:                                              ; preds = %287
  %303 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %304 = load i32, ptr %303, align 8, !tbaa !39
  %305 = icmp eq i32 %304, 4
  br i1 %305, label %306, label %309

306:                                              ; preds = %302, %287
  br label %309

307:                                              ; preds = %4
  %308 = add i64 %2, 5
  br label %309

309:                                              ; preds = %302, %306, %307
  %310 = phi i32 [ %288, %306 ], [ %288, %302 ], [ 0, %307 ]
  %311 = phi i64 [ %300, %306 ], [ %300, %302 ], [ %308, %307 ]
  %312 = phi i64 [ %300, %306 ], [ %296, %302 ], [ %308, %307 ]
  %313 = add i64 %2, 4
  %314 = icmp ule i64 %313, %312
  %315 = icmp ne ptr %1, null
  %316 = and i1 %315, %314
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %553

318:                                              ; preds = %309
  %319 = icmp eq i64 %311, %312
  %320 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %321 = load i32, ptr %320, align 4, !tbaa !20
  %322 = icmp sgt i32 %321, 13
  br i1 %319, label %323, label %360

323:                                              ; preds = %318
  %324 = add i32 %3, 2
  br i1 %322, label %325, label %351

325:                                              ; preds = %323
  %326 = and i32 %324, 65535
  %327 = shl i32 %324, %321
  %328 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %329 = load i16, ptr %328, align 8, !tbaa !19
  %330 = trunc i32 %327 to i16
  %331 = or i16 %329, %330
  store i16 %331, ptr %328, align 8, !tbaa !19
  %332 = trunc i16 %331 to i8
  %333 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !26
  %335 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %336 = load i64, ptr %335, align 8, !tbaa !27
  %337 = add i64 %336, 1
  store i64 %337, ptr %335, align 8, !tbaa !27
  %338 = getelementptr inbounds i8, ptr %334, i64 %336
  store i8 %332, ptr %338, align 1, !tbaa !22
  %339 = load i16, ptr %328, align 8, !tbaa !19
  %340 = lshr i16 %339, 8
  %341 = trunc i16 %340 to i8
  %342 = load ptr, ptr %333, align 8, !tbaa !26
  %343 = load i64, ptr %335, align 8, !tbaa !27
  %344 = add i64 %343, 1
  store i64 %344, ptr %335, align 8, !tbaa !27
  %345 = getelementptr inbounds i8, ptr %342, i64 %343
  store i8 %341, ptr %345, align 1, !tbaa !22
  %346 = load i32, ptr %320, align 4, !tbaa !20
  %347 = sub nsw i32 16, %346
  %348 = lshr i32 %326, %347
  %349 = trunc i32 %348 to i16
  store i16 %349, ptr %328, align 8, !tbaa !19
  %350 = add nsw i32 %346, -13
  br label %358

351:                                              ; preds = %323
  %352 = shl i32 %324, %321
  %353 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %354 = load i16, ptr %353, align 8, !tbaa !19
  %355 = trunc i32 %352 to i16
  %356 = or i16 %354, %355
  store i16 %356, ptr %353, align 8, !tbaa !19
  %357 = add nsw i32 %321, 3
  br label %358

358:                                              ; preds = %351, %325
  %359 = phi i32 [ %357, %351 ], [ %350, %325 ]
  store i32 %359, ptr %320, align 4, !tbaa !20
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %553

360:                                              ; preds = %318
  %361 = add i32 %3, 4
  br i1 %322, label %362, label %388

362:                                              ; preds = %360
  %363 = and i32 %361, 65535
  %364 = shl i32 %361, %321
  %365 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %366 = load i16, ptr %365, align 8, !tbaa !19
  %367 = trunc i32 %364 to i16
  %368 = or i16 %366, %367
  store i16 %368, ptr %365, align 8, !tbaa !19
  %369 = trunc i16 %368 to i8
  %370 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !26
  %372 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %373 = load i64, ptr %372, align 8, !tbaa !27
  %374 = add i64 %373, 1
  store i64 %374, ptr %372, align 8, !tbaa !27
  %375 = getelementptr inbounds i8, ptr %371, i64 %373
  store i8 %369, ptr %375, align 1, !tbaa !22
  %376 = load i16, ptr %365, align 8, !tbaa !19
  %377 = lshr i16 %376, 8
  %378 = trunc i16 %377 to i8
  %379 = load ptr, ptr %370, align 8, !tbaa !26
  %380 = load i64, ptr %372, align 8, !tbaa !27
  %381 = add i64 %380, 1
  store i64 %381, ptr %372, align 8, !tbaa !27
  %382 = getelementptr inbounds i8, ptr %379, i64 %380
  store i8 %378, ptr %382, align 1, !tbaa !22
  %383 = load i32, ptr %320, align 4, !tbaa !20
  %384 = sub nsw i32 16, %383
  %385 = lshr i32 %363, %384
  %386 = trunc i32 %385 to i16
  %387 = add nsw i32 %383, -13
  br label %395

388:                                              ; preds = %360
  %389 = shl i32 %361, %321
  %390 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %391 = load i16, ptr %390, align 8, !tbaa !19
  %392 = trunc i32 %389 to i16
  %393 = or i16 %391, %392
  %394 = add nsw i32 %321, 3
  br label %395

395:                                              ; preds = %388, %362
  %396 = phi i16 [ %393, %388 ], [ %386, %362 ]
  %397 = phi i32 [ %394, %388 ], [ %387, %362 ]
  store i32 %397, ptr %320, align 4, !tbaa !20
  %398 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 40, i32 1
  %399 = load i32, ptr %398, align 8, !tbaa !34
  %400 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 41, i32 1
  %401 = load i32, ptr %400, align 8, !tbaa !36
  %402 = add nuw nsw i32 %310, 1
  %403 = icmp sgt i32 %397, 11
  %404 = add i32 %399, 65280
  br i1 %403, label %405, label %430

405:                                              ; preds = %395
  %406 = and i32 %404, 65535
  %407 = shl i32 %404, %397
  %408 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %409 = trunc i32 %407 to i16
  %410 = or i16 %396, %409
  store i16 %410, ptr %408, align 8, !tbaa !19
  %411 = trunc i16 %410 to i8
  %412 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !26
  %414 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %415 = load i64, ptr %414, align 8, !tbaa !27
  %416 = add i64 %415, 1
  store i64 %416, ptr %414, align 8, !tbaa !27
  %417 = getelementptr inbounds i8, ptr %413, i64 %415
  store i8 %411, ptr %417, align 1, !tbaa !22
  %418 = load i16, ptr %408, align 8, !tbaa !19
  %419 = lshr i16 %418, 8
  %420 = trunc i16 %419 to i8
  %421 = load ptr, ptr %412, align 8, !tbaa !26
  %422 = load i64, ptr %414, align 8, !tbaa !27
  %423 = add i64 %422, 1
  store i64 %423, ptr %414, align 8, !tbaa !27
  %424 = getelementptr inbounds i8, ptr %421, i64 %422
  store i8 %420, ptr %424, align 1, !tbaa !22
  %425 = load i32, ptr %320, align 4, !tbaa !20
  %426 = sub nsw i32 16, %425
  %427 = lshr i32 %406, %426
  %428 = trunc i32 %427 to i16
  %429 = add nsw i32 %425, -11
  br label %435

430:                                              ; preds = %395
  %431 = shl i32 %404, %397
  %432 = trunc i32 %431 to i16
  %433 = or i16 %396, %432
  %434 = add nsw i32 %397, 5
  br label %435

435:                                              ; preds = %430, %405
  %436 = phi i16 [ %433, %430 ], [ %428, %405 ]
  %437 = phi i32 [ %434, %430 ], [ %429, %405 ]
  store i32 %437, ptr %320, align 4, !tbaa !20
  %438 = icmp sgt i32 %437, 11
  br i1 %438, label %439, label %464

439:                                              ; preds = %435
  %440 = and i32 %401, 65535
  %441 = shl i32 %401, %437
  %442 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %443 = trunc i32 %441 to i16
  %444 = or i16 %436, %443
  store i16 %444, ptr %442, align 8, !tbaa !19
  %445 = trunc i16 %444 to i8
  %446 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !26
  %448 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %449 = load i64, ptr %448, align 8, !tbaa !27
  %450 = add i64 %449, 1
  store i64 %450, ptr %448, align 8, !tbaa !27
  %451 = getelementptr inbounds i8, ptr %447, i64 %449
  store i8 %445, ptr %451, align 1, !tbaa !22
  %452 = load i16, ptr %442, align 8, !tbaa !19
  %453 = lshr i16 %452, 8
  %454 = trunc i16 %453 to i8
  %455 = load ptr, ptr %446, align 8, !tbaa !26
  %456 = load i64, ptr %448, align 8, !tbaa !27
  %457 = add i64 %456, 1
  store i64 %457, ptr %448, align 8, !tbaa !27
  %458 = getelementptr inbounds i8, ptr %455, i64 %456
  store i8 %454, ptr %458, align 1, !tbaa !22
  %459 = load i32, ptr %320, align 4, !tbaa !20
  %460 = sub nsw i32 16, %459
  %461 = lshr i32 %440, %460
  %462 = trunc i32 %461 to i16
  %463 = add nsw i32 %459, -11
  br label %469

464:                                              ; preds = %435
  %465 = shl i32 %401, %437
  %466 = trunc i32 %465 to i16
  %467 = or i16 %436, %466
  %468 = add nsw i32 %437, 5
  br label %469

469:                                              ; preds = %464, %439
  %470 = phi i16 [ %467, %464 ], [ %462, %439 ]
  %471 = phi i32 [ %468, %464 ], [ %463, %439 ]
  store i32 %471, ptr %320, align 4, !tbaa !20
  %472 = icmp sgt i32 %471, 12
  %473 = add nuw nsw i32 %310, 65533
  br i1 %472, label %474, label %499

474:                                              ; preds = %469
  %475 = and i32 %473, 65535
  %476 = shl i32 %473, %471
  %477 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %478 = trunc i32 %476 to i16
  %479 = or i16 %470, %478
  store i16 %479, ptr %477, align 8, !tbaa !19
  %480 = trunc i16 %479 to i8
  %481 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %482 = load ptr, ptr %481, align 8, !tbaa !26
  %483 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %484 = load i64, ptr %483, align 8, !tbaa !27
  %485 = add i64 %484, 1
  store i64 %485, ptr %483, align 8, !tbaa !27
  %486 = getelementptr inbounds i8, ptr %482, i64 %484
  store i8 %480, ptr %486, align 1, !tbaa !22
  %487 = load i16, ptr %477, align 8, !tbaa !19
  %488 = lshr i16 %487, 8
  %489 = trunc i16 %488 to i8
  %490 = load ptr, ptr %481, align 8, !tbaa !26
  %491 = load i64, ptr %483, align 8, !tbaa !27
  %492 = add i64 %491, 1
  store i64 %492, ptr %483, align 8, !tbaa !27
  %493 = getelementptr inbounds i8, ptr %490, i64 %491
  store i8 %489, ptr %493, align 1, !tbaa !22
  %494 = load i32, ptr %320, align 4, !tbaa !20
  %495 = sub nsw i32 16, %494
  %496 = lshr i32 %475, %495
  %497 = trunc i32 %496 to i16
  %498 = add nsw i32 %494, -12
  br label %504

499:                                              ; preds = %469
  %500 = shl nuw nsw i32 %473, %471
  %501 = trunc i32 %500 to i16
  %502 = or i16 %470, %501
  %503 = add nsw i32 %471, 4
  br label %504

504:                                              ; preds = %474, %499
  %505 = phi i16 [ %502, %499 ], [ %497, %474 ]
  %506 = phi i32 [ %503, %499 ], [ %498, %474 ]
  store i32 %506, ptr %320, align 4, !tbaa !20
  %507 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %508 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %509 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %510 = zext nneg i32 %402 to i64
  br label %511

511:                                              ; preds = %545, %504
  %512 = phi i16 [ %505, %504 ], [ %546, %545 ]
  %513 = phi i32 [ %506, %504 ], [ %547, %545 ]
  %514 = phi i64 [ 0, %504 ], [ %548, %545 ]
  %515 = icmp sgt i32 %513, 13
  %516 = getelementptr inbounds [19 x i8], ptr @bl_order, i64 0, i64 %514
  %517 = load i8, ptr %516, align 1, !tbaa !22
  %518 = zext i8 %517 to i64
  %519 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %518, i32 1
  %520 = load i16, ptr %519, align 2, !tbaa !22
  %521 = zext i16 %520 to i32
  %522 = shl i32 %521, %513
  %523 = trunc i32 %522 to i16
  %524 = or i16 %512, %523
  store i16 %524, ptr %507, align 8, !tbaa !19
  br i1 %515, label %525, label %543

525:                                              ; preds = %511
  %526 = trunc i16 %524 to i8
  %527 = load ptr, ptr %508, align 8, !tbaa !26
  %528 = load i64, ptr %509, align 8, !tbaa !27
  %529 = add i64 %528, 1
  store i64 %529, ptr %509, align 8, !tbaa !27
  %530 = getelementptr inbounds i8, ptr %527, i64 %528
  store i8 %526, ptr %530, align 1, !tbaa !22
  %531 = load i16, ptr %507, align 8, !tbaa !19
  %532 = lshr i16 %531, 8
  %533 = trunc i16 %532 to i8
  %534 = load ptr, ptr %508, align 8, !tbaa !26
  %535 = load i64, ptr %509, align 8, !tbaa !27
  %536 = add i64 %535, 1
  store i64 %536, ptr %509, align 8, !tbaa !27
  %537 = getelementptr inbounds i8, ptr %534, i64 %535
  store i8 %533, ptr %537, align 1, !tbaa !22
  %538 = load i32, ptr %320, align 4, !tbaa !20
  %539 = sub nsw i32 16, %538
  %540 = lshr i32 %521, %539
  %541 = trunc i32 %540 to i16
  store i16 %541, ptr %507, align 8, !tbaa !19
  %542 = add nsw i32 %538, -13
  br label %545

543:                                              ; preds = %511
  %544 = add nsw i32 %513, 3
  br label %545

545:                                              ; preds = %543, %525
  %546 = phi i16 [ %524, %543 ], [ %541, %525 ]
  %547 = phi i32 [ %544, %543 ], [ %542, %525 ]
  store i32 %547, ptr %320, align 4, !tbaa !20
  %548 = add nuw nsw i64 %514, 1
  %549 = icmp eq i64 %548, %510
  br i1 %549, label %550, label %511, !llvm.loop !40

550:                                              ; preds = %545
  %551 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %551, i32 noundef %399)
  %552 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %552, i32 noundef %401)
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %551, ptr noundef nonnull %552)
  br label %553

553:                                              ; preds = %358, %550, %317
  tail call fastcc void @init_block(ptr noundef nonnull %0)
  %554 = icmp eq i32 %3, 0
  br i1 %554, label %595, label %555

555:                                              ; preds = %553
  %556 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %557 = load i32, ptr %556, align 4, !tbaa !20
  %558 = icmp sgt i32 %557, 8
  br i1 %558, label %559, label %576

559:                                              ; preds = %555
  %560 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %561 = load i16, ptr %560, align 8, !tbaa !19
  %562 = trunc i16 %561 to i8
  %563 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %564 = load ptr, ptr %563, align 8, !tbaa !26
  %565 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %566 = load i64, ptr %565, align 8, !tbaa !27
  %567 = add i64 %566, 1
  store i64 %567, ptr %565, align 8, !tbaa !27
  %568 = getelementptr inbounds i8, ptr %564, i64 %566
  store i8 %562, ptr %568, align 1, !tbaa !22
  %569 = load i16, ptr %560, align 8, !tbaa !19
  %570 = lshr i16 %569, 8
  %571 = trunc i16 %570 to i8
  %572 = load ptr, ptr %563, align 8, !tbaa !26
  %573 = load i64, ptr %565, align 8, !tbaa !27
  %574 = add i64 %573, 1
  store i64 %574, ptr %565, align 8, !tbaa !27
  %575 = getelementptr inbounds i8, ptr %572, i64 %573
  store i8 %571, ptr %575, align 1, !tbaa !22
  br label %588

576:                                              ; preds = %555
  %577 = icmp sgt i32 %557, 0
  br i1 %577, label %578, label %588

578:                                              ; preds = %576
  %579 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %580 = load i16, ptr %579, align 8, !tbaa !19
  %581 = trunc i16 %580 to i8
  %582 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !26
  %584 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %585 = load i64, ptr %584, align 8, !tbaa !27
  %586 = add i64 %585, 1
  store i64 %586, ptr %584, align 8, !tbaa !27
  %587 = getelementptr inbounds i8, ptr %583, i64 %585
  store i8 %581, ptr %587, align 1, !tbaa !22
  br label %588

588:                                              ; preds = %559, %576, %578
  %589 = load i32, ptr %556, align 4, !tbaa !20
  %590 = add i32 %589, 7
  %591 = and i32 %590, 7
  %592 = add nuw nsw i32 %591, 1
  %593 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  store i32 %592, ptr %593, align 8, !tbaa !21
  %594 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  store i16 0, ptr %594, align 8, !tbaa !19
  store i32 0, ptr %556, align 4, !tbaa !20
  br label %595

595:                                              ; preds = %588, %553
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @build_tree(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = alloca [16 x i16], align 16
  %4 = load ptr, ptr %1, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.static_tree_desc_s, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 45
  store i32 0, ptr %10, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 46
  store i32 573, ptr %11, align 8, !tbaa !47
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = zext nneg i32 %9 to i64
  br label %24

15:                                               ; preds = %39
  %16 = load i32, ptr %10, align 4, !tbaa !46
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %67

18:                                               ; preds = %2, %15
  %19 = phi i32 [ %40, %15 ], [ -1, %2 ]
  %20 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %22 = icmp eq ptr %7, null
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  br label %43

24:                                               ; preds = %13, %39
  %25 = phi i64 [ 0, %13 ], [ %41, %39 ]
  %26 = phi i32 [ -1, %13 ], [ %40, %39 ]
  %27 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %25
  %28 = load i16, ptr %27, align 2, !tbaa !22
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %10, align 4, !tbaa !46
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %10, align 4, !tbaa !46
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %33
  %35 = trunc i64 %25 to i32
  store i32 %35, ptr %34, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %25
  store i8 0, ptr %36, align 1, !tbaa !22
  br label %39

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %25, i32 1
  store i16 0, ptr %38, align 2, !tbaa !22
  br label %39

39:                                               ; preds = %30, %37
  %40 = phi i32 [ %35, %30 ], [ %26, %37 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %14
  br i1 %42, label %15, label %24, !llvm.loop !49

43:                                               ; preds = %18, %64
  %44 = phi i32 [ %20, %18 ], [ %65, %64 ]
  %45 = phi i32 [ %19, %18 ], [ %48, %64 ]
  %46 = icmp slt i32 %45, 2
  %47 = add nsw i32 %45, 1
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = select i1 %46, i32 %47, i32 0
  %50 = add nsw i32 %44, 1
  store i32 %50, ptr %10, align 4, !tbaa !46
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %51
  store i32 %49, ptr %52, align 4, !tbaa !48
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %53
  store i16 1, ptr %54, align 2, !tbaa !22
  %55 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %53
  store i8 0, ptr %55, align 1, !tbaa !22
  %56 = load i64, ptr %21, align 8, !tbaa !37
  %57 = add i64 %56, -1
  store i64 %57, ptr %21, align 8, !tbaa !37
  br i1 %22, label %64, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.ct_data_s, ptr %7, i64 %53, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !22
  %61 = zext i16 %60 to i64
  %62 = load i64, ptr %23, align 8, !tbaa !38
  %63 = sub i64 %62, %61
  store i64 %63, ptr %23, align 8, !tbaa !38
  br label %64

64:                                               ; preds = %58, %43
  %65 = load i32, ptr %10, align 4, !tbaa !46
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %43, label %67, !llvm.loop !50

67:                                               ; preds = %64, %15
  %68 = phi i32 [ %40, %15 ], [ %48, %64 ]
  %69 = phi i32 [ %16, %15 ], [ %65, %64 ]
  %70 = getelementptr inbounds %struct.tree_desc_s, ptr %1, i64 0, i32 1
  store i32 %68, ptr %70, align 8, !tbaa !51
  %71 = lshr i32 %69, 1
  %72 = zext nneg i32 %71 to i64
  br label %77

73:                                               ; preds = %143
  %74 = load i32, ptr %10, align 4, !tbaa !46
  %75 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 1
  %76 = sext i32 %9 to i64
  br label %149

77:                                               ; preds = %67, %143
  %78 = phi i64 [ %72, %67 ], [ %147, %143 ]
  %79 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !48
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %81
  %83 = trunc i64 %78 to i32
  %84 = shl nuw i32 %83, 1
  %85 = load i32, ptr %10, align 4, !tbaa !46
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %143, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %81
  br label %89

89:                                               ; preds = %137, %87
  %90 = phi i32 [ %85, %87 ], [ %141, %137 ]
  %91 = phi i32 [ %84, %87 ], [ %140, %137 ]
  %92 = phi i32 [ %83, %87 ], [ %122, %137 ]
  %93 = icmp slt i32 %91, %90
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = sext i32 %91 to i64
  br label %120

96:                                               ; preds = %89
  %97 = or disjoint i32 %91, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !48
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !22
  %104 = sext i32 %91 to i64
  %105 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !48
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !22
  %110 = icmp ult i16 %103, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %96
  %112 = icmp eq i16 %103, %109
  br i1 %112, label %113, label %120

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %101
  %115 = load i8, ptr %114, align 1, !tbaa !22
  %116 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %107
  %117 = load i8, ptr %116, align 1, !tbaa !22
  %118 = icmp ugt i8 %115, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %113, %96
  br label %120

120:                                              ; preds = %119, %113, %111, %94
  %121 = phi i64 [ %95, %94 ], [ %98, %119 ], [ %104, %113 ], [ %104, %111 ]
  %122 = phi i32 [ %91, %94 ], [ %97, %119 ], [ %91, %113 ], [ %91, %111 ]
  %123 = load i16, ptr %88, align 2, !tbaa !22
  %124 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %121
  %125 = load i32, ptr %124, align 4, !tbaa !48
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !22
  %129 = icmp ult i16 %123, %128
  br i1 %129, label %143, label %130

130:                                              ; preds = %120
  %131 = icmp eq i16 %123, %128
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i8, ptr %82, align 1, !tbaa !22
  %134 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %126
  %135 = load i8, ptr %134, align 1, !tbaa !22
  %136 = icmp ugt i8 %133, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132, %130
  %138 = sext i32 %92 to i64
  %139 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %138
  store i32 %125, ptr %139, align 4, !tbaa !48
  %140 = shl i32 %122, 1
  %141 = load i32, ptr %10, align 4, !tbaa !46
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %89, !llvm.loop !52

143:                                              ; preds = %120, %132, %137, %77
  %144 = phi i32 [ %83, %77 ], [ %122, %137 ], [ %92, %132 ], [ %92, %120 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %145
  store i32 %80, ptr %146, align 4, !tbaa !48
  %147 = add nsw i64 %78, -1
  %148 = icmp sgt i64 %78, 1
  br i1 %148, label %77, label %73, !llvm.loop !53

149:                                              ; preds = %73, %305
  %150 = phi i32 [ %74, %73 ], [ %309, %305 ]
  %151 = phi i64 [ %76, %73 ], [ %248, %305 ]
  %152 = load i32, ptr %75, align 4, !tbaa !48
  %153 = add nsw i32 %150, -1
  store i32 %153, ptr %10, align 4, !tbaa !46
  %154 = sext i32 %150 to i64
  %155 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !48
  store i32 %156, ptr %75, align 4, !tbaa !48
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %157
  %159 = icmp slt i32 %150, 3
  br i1 %159, label %216, label %160

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %157
  br label %162

162:                                              ; preds = %210, %160
  %163 = phi i32 [ %153, %160 ], [ %214, %210 ]
  %164 = phi i32 [ 2, %160 ], [ %213, %210 ]
  %165 = phi i32 [ 1, %160 ], [ %195, %210 ]
  %166 = icmp slt i32 %164, %163
  br i1 %166, label %169, label %167

167:                                              ; preds = %162
  %168 = sext i32 %164 to i64
  br label %193

169:                                              ; preds = %162
  %170 = or disjoint i32 %164, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !48
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !22
  %177 = sext i32 %164 to i64
  %178 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !48
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !22
  %183 = icmp ult i16 %176, %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %169
  %185 = icmp eq i16 %176, %182
  br i1 %185, label %186, label %193

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %174
  %188 = load i8, ptr %187, align 1, !tbaa !22
  %189 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %180
  %190 = load i8, ptr %189, align 1, !tbaa !22
  %191 = icmp ugt i8 %188, %190
  br i1 %191, label %193, label %192

192:                                              ; preds = %186, %169
  br label %193

193:                                              ; preds = %192, %186, %184, %167
  %194 = phi i64 [ %168, %167 ], [ %171, %192 ], [ %177, %186 ], [ %177, %184 ]
  %195 = phi i32 [ %164, %167 ], [ %170, %192 ], [ %164, %186 ], [ %164, %184 ]
  %196 = load i16, ptr %161, align 2, !tbaa !22
  %197 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %194
  %198 = load i32, ptr %197, align 4, !tbaa !48
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !22
  %202 = icmp ult i16 %196, %201
  br i1 %202, label %216, label %203

203:                                              ; preds = %193
  %204 = icmp eq i16 %196, %201
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = load i8, ptr %158, align 1, !tbaa !22
  %207 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %199
  %208 = load i8, ptr %207, align 1, !tbaa !22
  %209 = icmp ugt i8 %206, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %205, %203
  %211 = sext i32 %165 to i64
  %212 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %211
  store i32 %198, ptr %212, align 4, !tbaa !48
  %213 = shl i32 %195, 1
  %214 = load i32, ptr %10, align 4, !tbaa !46
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %162, !llvm.loop !52

216:                                              ; preds = %193, %205, %210, %149
  %217 = phi i32 [ 1, %149 ], [ %195, %210 ], [ %165, %205 ], [ %165, %193 ]
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %218
  store i32 %156, ptr %219, align 4, !tbaa !48
  %220 = load i32, ptr %75, align 4, !tbaa !48
  %221 = load i32, ptr %11, align 8, !tbaa !47
  %222 = add nsw i32 %221, -1
  store i32 %222, ptr %11, align 8, !tbaa !47
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %223
  store i32 %152, ptr %224, align 4, !tbaa !48
  %225 = load i32, ptr %11, align 8, !tbaa !47
  %226 = add nsw i32 %225, -1
  store i32 %226, ptr %11, align 8, !tbaa !47
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %227
  store i32 %220, ptr %228, align 4, !tbaa !48
  %229 = sext i32 %152 to i64
  %230 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %229
  %231 = load i16, ptr %230, align 2, !tbaa !22
  %232 = sext i32 %220 to i64
  %233 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !22
  %235 = add i16 %234, %231
  %236 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %151
  store i16 %235, ptr %236, align 2, !tbaa !22
  %237 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %229
  %238 = load i8, ptr %237, align 1, !tbaa !22
  %239 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %232
  %240 = load i8, ptr %239, align 1, !tbaa !22
  %241 = tail call i8 @llvm.umax.i8(i8 %238, i8 %240)
  %242 = add i8 %241, 1
  %243 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %151
  store i8 %242, ptr %243, align 1, !tbaa !22
  %244 = trunc i64 %151 to i32
  %245 = trunc i64 %151 to i16
  %246 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %232, i32 1
  store i16 %245, ptr %246, align 2, !tbaa !22
  %247 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %229, i32 1
  store i16 %245, ptr %247, align 2, !tbaa !22
  %248 = add i64 %151, 1
  store i32 %244, ptr %75, align 4, !tbaa !48
  %249 = load i32, ptr %10, align 4, !tbaa !46
  %250 = icmp slt i32 %249, 2
  br i1 %250, label %305, label %251

251:                                              ; preds = %216, %299
  %252 = phi i32 [ %303, %299 ], [ %249, %216 ]
  %253 = phi i32 [ %302, %299 ], [ 2, %216 ]
  %254 = phi i32 [ %284, %299 ], [ 1, %216 ]
  %255 = icmp slt i32 %253, %252
  br i1 %255, label %258, label %256

256:                                              ; preds = %251
  %257 = sext i32 %253 to i64
  br label %282

258:                                              ; preds = %251
  %259 = or disjoint i32 %253, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !48
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %263
  %265 = load i16, ptr %264, align 2, !tbaa !22
  %266 = sext i32 %253 to i64
  %267 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !48
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !22
  %272 = icmp ult i16 %265, %271
  br i1 %272, label %281, label %273

273:                                              ; preds = %258
  %274 = icmp eq i16 %265, %271
  br i1 %274, label %275, label %282

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %263
  %277 = load i8, ptr %276, align 1, !tbaa !22
  %278 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %269
  %279 = load i8, ptr %278, align 1, !tbaa !22
  %280 = icmp ugt i8 %277, %279
  br i1 %280, label %282, label %281

281:                                              ; preds = %275, %258
  br label %282

282:                                              ; preds = %281, %275, %273, %256
  %283 = phi i64 [ %257, %256 ], [ %260, %281 ], [ %266, %275 ], [ %266, %273 ]
  %284 = phi i32 [ %253, %256 ], [ %259, %281 ], [ %253, %275 ], [ %253, %273 ]
  %285 = load i16, ptr %236, align 2, !tbaa !22
  %286 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %283
  %287 = load i32, ptr %286, align 4, !tbaa !48
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !22
  %291 = icmp ult i16 %285, %290
  br i1 %291, label %305, label %292

292:                                              ; preds = %282
  %293 = icmp eq i16 %285, %290
  br i1 %293, label %294, label %299

294:                                              ; preds = %292
  %295 = load i8, ptr %243, align 1, !tbaa !22
  %296 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 47, i64 %288
  %297 = load i8, ptr %296, align 1, !tbaa !22
  %298 = icmp ugt i8 %295, %297
  br i1 %298, label %299, label %305

299:                                              ; preds = %294, %292
  %300 = sext i32 %254 to i64
  %301 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %300
  store i32 %287, ptr %301, align 4, !tbaa !48
  %302 = shl i32 %284, 1
  %303 = load i32, ptr %10, align 4, !tbaa !46
  %304 = icmp sgt i32 %302, %303
  br i1 %304, label %305, label %251, !llvm.loop !52

305:                                              ; preds = %282, %294, %299, %216
  %306 = phi i32 [ 1, %216 ], [ %284, %299 ], [ %254, %294 ], [ %254, %282 ]
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %307
  store i32 %244, ptr %308, align 4, !tbaa !48
  %309 = load i32, ptr %10, align 4, !tbaa !46
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %149, label %311, !llvm.loop !54

311:                                              ; preds = %305
  %312 = load i32, ptr %75, align 4, !tbaa !48
  %313 = load i32, ptr %11, align 8, !tbaa !47
  %314 = add nsw i32 %313, -1
  store i32 %314, ptr %11, align 8, !tbaa !47
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %315
  store i32 %312, ptr %316, align 4, !tbaa !48
  %317 = load ptr, ptr %1, align 8, !tbaa !41
  %318 = load i32, ptr %70, align 8, !tbaa !51
  %319 = load ptr, ptr %5, align 8, !tbaa !42
  %320 = load ptr, ptr %319, align 8, !tbaa !43
  %321 = getelementptr inbounds %struct.static_tree_desc_s, ptr %319, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !55
  %323 = getelementptr inbounds %struct.static_tree_desc_s, ptr %319, i64 0, i32 2
  %324 = load i32, ptr %323, align 8, !tbaa !56
  %325 = getelementptr inbounds %struct.static_tree_desc_s, ptr %319, i64 0, i32 4
  %326 = load i32, ptr %325, align 8, !tbaa !57
  %327 = getelementptr i8, ptr %0, i64 2976
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %327, i8 0, i64 32, i1 false), !tbaa !58
  %328 = load i32, ptr %11, align 8, !tbaa !47
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %329
  %331 = load i32, ptr %330, align 4, !tbaa !48
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %332, i32 1
  store i16 0, ptr %333, align 2, !tbaa !22
  %334 = load i32, ptr %11, align 8, !tbaa !47
  %335 = icmp slt i32 %334, 572
  br i1 %335, label %336, label %466

336:                                              ; preds = %311
  %337 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 52
  %338 = icmp eq ptr %320, null
  %339 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 53
  %340 = sext i32 %334 to i64
  %341 = add nsw i64 %340, 1
  br label %342

342:                                              ; preds = %391, %336
  %343 = phi i64 [ %341, %336 ], [ %392, %391 ]
  %344 = phi i32 [ 0, %336 ], [ %359, %391 ]
  %345 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %343
  %346 = load i32, ptr %345, align 4, !tbaa !48
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %347
  %349 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %347, i32 1
  %350 = load i16, ptr %349, align 2, !tbaa !22
  %351 = zext i16 %350 to i64
  %352 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %351, i32 1
  %353 = load i16, ptr %352, align 2, !tbaa !22
  %354 = zext i16 %353 to i32
  %355 = add nuw nsw i32 %354, 1
  %356 = icmp sle i32 %326, %354
  %357 = select i1 %356, i32 %326, i32 %355
  %358 = zext i1 %356 to i32
  %359 = add nuw nsw i32 %344, %358
  %360 = trunc i32 %357 to i16
  store i16 %360, ptr %349, align 2, !tbaa !22
  %361 = icmp sgt i32 %346, %318
  br i1 %361, label %391, label %362

362:                                              ; preds = %342
  %363 = sext i32 %357 to i64
  %364 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %363
  %365 = load i16, ptr %364, align 2, !tbaa !58
  %366 = add i16 %365, 1
  store i16 %366, ptr %364, align 2, !tbaa !58
  %367 = icmp slt i32 %346, %324
  br i1 %367, label %373, label %368

368:                                              ; preds = %362
  %369 = sub nsw i32 %346, %324
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, ptr %322, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !48
  br label %373

373:                                              ; preds = %368, %362
  %374 = phi i32 [ %372, %368 ], [ 0, %362 ]
  %375 = load i16, ptr %348, align 2, !tbaa !22
  %376 = zext i16 %375 to i64
  %377 = add nsw i32 %374, %357
  %378 = zext i32 %377 to i64
  %379 = mul nuw nsw i64 %376, %378
  %380 = load i64, ptr %337, align 8, !tbaa !37
  %381 = add i64 %379, %380
  store i64 %381, ptr %337, align 8, !tbaa !37
  br i1 %338, label %391, label %382

382:                                              ; preds = %373
  %383 = getelementptr inbounds %struct.ct_data_s, ptr %320, i64 %347, i32 1
  %384 = load i16, ptr %383, align 2, !tbaa !22
  %385 = zext i16 %384 to i32
  %386 = add nsw i32 %374, %385
  %387 = zext i32 %386 to i64
  %388 = mul nuw nsw i64 %387, %376
  %389 = load i64, ptr %339, align 8, !tbaa !38
  %390 = add i64 %388, %389
  store i64 %390, ptr %339, align 8, !tbaa !38
  br label %391

391:                                              ; preds = %382, %373, %342
  %392 = add nsw i64 %343, 1
  %393 = and i64 %392, 4294967295
  %394 = icmp eq i64 %393, 573
  br i1 %394, label %395, label %342, !llvm.loop !59

395:                                              ; preds = %391
  %396 = icmp eq i32 %359, 0
  br i1 %396, label %466, label %397

397:                                              ; preds = %395
  %398 = sext i32 %326 to i64
  %399 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %398
  br label %400

400:                                              ; preds = %408, %397
  %401 = phi i32 [ %418, %408 ], [ %359, %397 ]
  br label %402

402:                                              ; preds = %402, %400
  %403 = phi i64 [ %404, %402 ], [ %398, %400 ]
  %404 = add i64 %403, -1
  %405 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %404
  %406 = load i16, ptr %405, align 2, !tbaa !58
  %407 = icmp eq i16 %406, 0
  br i1 %407, label %402, label %408, !llvm.loop !60

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %404
  %410 = add i16 %406, -1
  store i16 %410, ptr %409, align 2, !tbaa !58
  %411 = shl i64 %403, 32
  %412 = ashr exact i64 %411, 32
  %413 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %412
  %414 = load i16, ptr %413, align 2, !tbaa !58
  %415 = add i16 %414, 2
  store i16 %415, ptr %413, align 2, !tbaa !58
  %416 = load i16, ptr %399, align 2, !tbaa !58
  %417 = add i16 %416, -1
  store i16 %417, ptr %399, align 2, !tbaa !58
  %418 = add nsw i32 %401, -2
  %419 = icmp sgt i32 %401, 2
  br i1 %419, label %400, label %420, !llvm.loop !61

420:                                              ; preds = %408
  %421 = icmp eq i32 %326, 0
  br i1 %421, label %466, label %422

422:                                              ; preds = %420, %461
  %423 = phi i64 [ %463, %461 ], [ %398, %420 ]
  %424 = phi i32 [ %462, %461 ], [ 573, %420 ]
  %425 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 43, i64 %423
  %426 = load i16, ptr %425, align 2, !tbaa !58
  %427 = trunc i64 %423 to i32
  %428 = trunc i64 %423 to i16
  %429 = icmp eq i16 %426, 0
  br i1 %429, label %461, label %430

430:                                              ; preds = %422
  %431 = zext i16 %426 to i32
  br label %432

432:                                              ; preds = %430, %458
  %433 = phi i32 [ %443, %458 ], [ %424, %430 ]
  %434 = phi i32 [ %459, %458 ], [ %431, %430 ]
  %435 = sext i32 %433 to i64
  br label %436

436:                                              ; preds = %436, %432
  %437 = phi i64 [ %435, %432 ], [ %438, %436 ]
  %438 = add i64 %437, -1
  %439 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 44, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !48
  %441 = icmp sgt i32 %440, %318
  br i1 %441, label %436, label %442, !llvm.loop !62

442:                                              ; preds = %436
  %443 = trunc i64 %438 to i32
  %444 = sext i32 %440 to i64
  %445 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %444, i32 1
  %446 = load i16, ptr %445, align 2, !tbaa !22
  %447 = zext i16 %446 to i32
  %448 = icmp eq i32 %427, %447
  br i1 %448, label %458, label %449

449:                                              ; preds = %442
  %450 = getelementptr inbounds %struct.ct_data_s, ptr %317, i64 %444
  %451 = zext i16 %446 to i64
  %452 = sub nsw i64 %423, %451
  %453 = load i16, ptr %450, align 2, !tbaa !22
  %454 = zext i16 %453 to i64
  %455 = mul nsw i64 %452, %454
  %456 = load i64, ptr %337, align 8, !tbaa !37
  %457 = add i64 %455, %456
  store i64 %457, ptr %337, align 8, !tbaa !37
  store i16 %428, ptr %445, align 2, !tbaa !22
  br label %458

458:                                              ; preds = %449, %442
  %459 = add nsw i32 %434, -1
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %432, !llvm.loop !62

461:                                              ; preds = %458, %422
  %462 = phi i32 [ %424, %422 ], [ %443, %458 ]
  %463 = add nsw i64 %423, -1
  %464 = and i64 %463, 4294967295
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %422, !llvm.loop !63

466:                                              ; preds = %461, %311, %395, %420
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %467 = load i16, ptr %327, align 2, !tbaa !58
  %468 = shl i16 %467, 1
  %469 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 1
  store i16 %468, ptr %469, align 2, !tbaa !58
  %470 = getelementptr i8, ptr %0, i64 2978
  %471 = load i16, ptr %470, align 2, !tbaa !58
  %472 = add i16 %471, %468
  %473 = shl i16 %472, 1
  %474 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 2
  store i16 %473, ptr %474, align 4, !tbaa !58
  %475 = getelementptr i8, ptr %0, i64 2980
  %476 = load i16, ptr %475, align 2, !tbaa !58
  %477 = add i16 %476, %473
  %478 = shl i16 %477, 1
  %479 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 3
  store i16 %478, ptr %479, align 2, !tbaa !58
  %480 = getelementptr i8, ptr %0, i64 2982
  %481 = load i16, ptr %480, align 2, !tbaa !58
  %482 = add i16 %481, %478
  %483 = shl i16 %482, 1
  %484 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 4
  store i16 %483, ptr %484, align 8, !tbaa !58
  %485 = getelementptr i8, ptr %0, i64 2984
  %486 = load i16, ptr %485, align 2, !tbaa !58
  %487 = add i16 %486, %483
  %488 = shl i16 %487, 1
  %489 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 5
  store i16 %488, ptr %489, align 2, !tbaa !58
  %490 = getelementptr i8, ptr %0, i64 2986
  %491 = load i16, ptr %490, align 2, !tbaa !58
  %492 = add i16 %491, %488
  %493 = shl i16 %492, 1
  %494 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 6
  store i16 %493, ptr %494, align 4, !tbaa !58
  %495 = getelementptr i8, ptr %0, i64 2988
  %496 = load i16, ptr %495, align 2, !tbaa !58
  %497 = add i16 %496, %493
  %498 = shl i16 %497, 1
  %499 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 7
  store i16 %498, ptr %499, align 2, !tbaa !58
  %500 = getelementptr i8, ptr %0, i64 2990
  %501 = load i16, ptr %500, align 2, !tbaa !58
  %502 = add i16 %501, %498
  %503 = shl i16 %502, 1
  %504 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 8
  store i16 %503, ptr %504, align 16, !tbaa !58
  %505 = getelementptr i8, ptr %0, i64 2992
  %506 = load i16, ptr %505, align 2, !tbaa !58
  %507 = add i16 %506, %503
  %508 = shl i16 %507, 1
  %509 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 9
  store i16 %508, ptr %509, align 2, !tbaa !58
  %510 = getelementptr i8, ptr %0, i64 2994
  %511 = load i16, ptr %510, align 2, !tbaa !58
  %512 = add i16 %511, %508
  %513 = shl i16 %512, 1
  %514 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 10
  store i16 %513, ptr %514, align 4, !tbaa !58
  %515 = getelementptr i8, ptr %0, i64 2996
  %516 = load i16, ptr %515, align 2, !tbaa !58
  %517 = add i16 %516, %513
  %518 = shl i16 %517, 1
  %519 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 11
  store i16 %518, ptr %519, align 2, !tbaa !58
  %520 = getelementptr i8, ptr %0, i64 2998
  %521 = load i16, ptr %520, align 2, !tbaa !58
  %522 = add i16 %521, %518
  %523 = shl i16 %522, 1
  %524 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 12
  store i16 %523, ptr %524, align 8, !tbaa !58
  %525 = getelementptr i8, ptr %0, i64 3000
  %526 = load i16, ptr %525, align 2, !tbaa !58
  %527 = add i16 %526, %523
  %528 = shl i16 %527, 1
  %529 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 13
  store i16 %528, ptr %529, align 2, !tbaa !58
  %530 = getelementptr i8, ptr %0, i64 3002
  %531 = load i16, ptr %530, align 2, !tbaa !58
  %532 = add i16 %531, %528
  %533 = shl i16 %532, 1
  %534 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 14
  store i16 %533, ptr %534, align 4, !tbaa !58
  %535 = getelementptr i8, ptr %0, i64 3004
  %536 = load i16, ptr %535, align 2, !tbaa !58
  %537 = add i16 %536, %533
  %538 = shl i16 %537, 1
  %539 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 15
  store i16 %538, ptr %539, align 2, !tbaa !58
  %540 = icmp slt i32 %68, 0
  br i1 %540, label %600, label %541

541:                                              ; preds = %466
  %542 = add nuw i32 %68, 1
  %543 = zext i32 %542 to i64
  br label %544

544:                                              ; preds = %597, %541
  %545 = phi i64 [ 0, %541 ], [ %598, %597 ]
  %546 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %545, i32 1
  %547 = load i16, ptr %546, align 2, !tbaa !22
  %548 = icmp eq i16 %547, 0
  br i1 %548, label %597, label %549

549:                                              ; preds = %544
  %550 = zext i16 %547 to i32
  %551 = zext i16 %547 to i64
  %552 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %551
  %553 = load i16, ptr %552, align 2, !tbaa !58
  %554 = add i16 %553, 1
  store i16 %554, ptr %552, align 2, !tbaa !58
  %555 = and i32 %550, 3
  %556 = icmp ult i16 %547, 4
  br i1 %556, label %579, label %557

557:                                              ; preds = %549
  %558 = and i32 %550, 65532
  br label %559

559:                                              ; preds = %559, %557
  %560 = phi i16 [ %553, %557 ], [ %575, %559 ]
  %561 = phi i16 [ 0, %557 ], [ %576, %559 ]
  %562 = phi i32 [ 0, %557 ], [ %577, %559 ]
  %563 = and i16 %560, 1
  %564 = or disjoint i16 %561, %563
  %565 = shl i16 %564, 2
  %566 = and i16 %560, 2
  %567 = or disjoint i16 %565, %566
  %568 = lshr i16 %560, 2
  %569 = and i16 %568, 1
  %570 = or disjoint i16 %567, %569
  %571 = lshr i16 %560, 3
  %572 = shl i16 %570, 1
  %573 = and i16 %571, 1
  %574 = or disjoint i16 %572, %573
  %575 = lshr i16 %560, 4
  %576 = shl i16 %574, 1
  %577 = add i32 %562, 4
  %578 = icmp eq i32 %577, %558
  br i1 %578, label %579, label %559, !llvm.loop !64

579:                                              ; preds = %559, %549
  %580 = phi i16 [ undef, %549 ], [ %574, %559 ]
  %581 = phi i16 [ %553, %549 ], [ %575, %559 ]
  %582 = phi i16 [ 0, %549 ], [ %576, %559 ]
  %583 = icmp eq i32 %555, 0
  br i1 %583, label %594, label %584

584:                                              ; preds = %579, %584
  %585 = phi i16 [ %590, %584 ], [ %581, %579 ]
  %586 = phi i16 [ %591, %584 ], [ %582, %579 ]
  %587 = phi i32 [ %592, %584 ], [ 0, %579 ]
  %588 = and i16 %585, 1
  %589 = or disjoint i16 %586, %588
  %590 = lshr i16 %585, 1
  %591 = shl i16 %589, 1
  %592 = add i32 %587, 1
  %593 = icmp eq i32 %592, %555
  br i1 %593, label %594, label %584, !llvm.loop !65

594:                                              ; preds = %584, %579
  %595 = phi i16 [ %580, %579 ], [ %589, %584 ]
  %596 = getelementptr inbounds %struct.ct_data_s, ptr %4, i64 %545
  store i16 %595, ptr %596, align 2, !tbaa !22
  br label %597

597:                                              ; preds = %594, %544
  %598 = add nuw nsw i64 %545, 1
  %599 = icmp eq i64 %598, %543
  br i1 %599, label %600, label %544, !llvm.loop !67

600:                                              ; preds = %597, %466
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compress_block(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %9 = load i32, ptr %8, align 4, !tbaa !20
  br label %246

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  br label %16

16:                                               ; preds = %10, %242
  %17 = phi i32 [ %31, %242 ], [ 0, %10 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !68
  %19 = add nuw i32 %17, 1
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = zext i8 %22 to i32
  %24 = add i32 %17, 2
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !22
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %29, %23
  %31 = add i32 %17, 3
  %32 = zext i32 %24 to i64
  %33 = getelementptr inbounds i8, ptr %18, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !22
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %30, 0
  %37 = zext i8 %34 to i64
  br i1 %36, label %38, label %73

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %37
  %40 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %37, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !22
  %42 = zext i16 %41 to i32
  %43 = load i32, ptr %12, align 4, !tbaa !20
  %44 = sub nsw i32 16, %42
  %45 = icmp sgt i32 %43, %44
  %46 = load i16, ptr %39, align 2, !tbaa !22
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, %43
  %49 = load i16, ptr %13, align 8, !tbaa !19
  %50 = trunc i32 %48 to i16
  %51 = or i16 %49, %50
  store i16 %51, ptr %13, align 8, !tbaa !19
  br i1 %45, label %52, label %71

52:                                               ; preds = %38
  %53 = trunc i16 %51 to i8
  %54 = load ptr, ptr %14, align 8, !tbaa !26
  %55 = load i64, ptr %15, align 8, !tbaa !27
  %56 = add i64 %55, 1
  store i64 %56, ptr %15, align 8, !tbaa !27
  %57 = getelementptr inbounds i8, ptr %54, i64 %55
  store i8 %53, ptr %57, align 1, !tbaa !22
  %58 = load i16, ptr %13, align 8, !tbaa !19
  %59 = lshr i16 %58, 8
  %60 = trunc i16 %59 to i8
  %61 = load ptr, ptr %14, align 8, !tbaa !26
  %62 = load i64, ptr %15, align 8, !tbaa !27
  %63 = add i64 %62, 1
  store i64 %63, ptr %15, align 8, !tbaa !27
  %64 = getelementptr inbounds i8, ptr %61, i64 %62
  store i8 %60, ptr %64, align 1, !tbaa !22
  %65 = load i32, ptr %12, align 4, !tbaa !20
  %66 = sub nsw i32 16, %65
  %67 = lshr i32 %47, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, ptr %13, align 8, !tbaa !19
  %69 = add nsw i32 %42, -16
  %70 = add nsw i32 %69, %65
  br label %240

71:                                               ; preds = %38
  %72 = add nsw i32 %43, %42
  br label %240

73:                                               ; preds = %16
  %74 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %37
  %75 = load i8, ptr %74, align 1, !tbaa !22
  %76 = zext i8 %75 to i64
  %77 = getelementptr %struct.ct_data_s, ptr %1, i64 %76
  %78 = getelementptr %struct.ct_data_s, ptr %77, i64 257
  %79 = getelementptr %struct.ct_data_s, ptr %77, i64 257, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !22
  %81 = zext i16 %80 to i32
  %82 = load i32, ptr %12, align 4, !tbaa !20
  %83 = sub nsw i32 16, %81
  %84 = icmp sgt i32 %82, %83
  %85 = load i16, ptr %78, align 2, !tbaa !22
  %86 = zext i16 %85 to i32
  %87 = shl i32 %86, %82
  %88 = load i16, ptr %13, align 8, !tbaa !19
  %89 = trunc i32 %87 to i16
  %90 = or i16 %88, %89
  store i16 %90, ptr %13, align 8, !tbaa !19
  br i1 %84, label %91, label %110

91:                                               ; preds = %73
  %92 = trunc i16 %90 to i8
  %93 = load ptr, ptr %14, align 8, !tbaa !26
  %94 = load i64, ptr %15, align 8, !tbaa !27
  %95 = add i64 %94, 1
  store i64 %95, ptr %15, align 8, !tbaa !27
  %96 = getelementptr inbounds i8, ptr %93, i64 %94
  store i8 %92, ptr %96, align 1, !tbaa !22
  %97 = load i16, ptr %13, align 8, !tbaa !19
  %98 = lshr i16 %97, 8
  %99 = trunc i16 %98 to i8
  %100 = load ptr, ptr %14, align 8, !tbaa !26
  %101 = load i64, ptr %15, align 8, !tbaa !27
  %102 = add i64 %101, 1
  store i64 %102, ptr %15, align 8, !tbaa !27
  %103 = getelementptr inbounds i8, ptr %100, i64 %101
  store i8 %99, ptr %103, align 1, !tbaa !22
  %104 = load i32, ptr %12, align 4, !tbaa !20
  %105 = sub nsw i32 16, %104
  %106 = lshr i32 %86, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, ptr %13, align 8, !tbaa !19
  %108 = add nsw i32 %81, -16
  %109 = add nsw i32 %108, %104
  br label %112

110:                                              ; preds = %73
  %111 = add nsw i32 %82, %81
  br label %112

112:                                              ; preds = %110, %91
  %113 = phi i16 [ %90, %110 ], [ %107, %91 ]
  %114 = phi i32 [ %111, %110 ], [ %109, %91 ]
  store i32 %114, ptr %12, align 4, !tbaa !20
  %115 = getelementptr inbounds [29 x i32], ptr @extra_lbits, i64 0, i64 %76
  %116 = load i32, ptr %115, align 4, !tbaa !48
  %117 = add nsw i64 %76, -28
  %118 = icmp ult i64 %117, -20
  br i1 %118, label %156, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds [29 x i32], ptr @base_length, i64 0, i64 %76
  %121 = load i32, ptr %120, align 4, !tbaa !48
  %122 = sub nsw i32 %35, %121
  %123 = sub nsw i32 16, %116
  %124 = icmp sgt i32 %114, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = and i32 %122, 65535
  %127 = shl i32 %122, %114
  %128 = trunc i32 %127 to i16
  %129 = or i16 %113, %128
  store i16 %129, ptr %13, align 8, !tbaa !19
  %130 = trunc i16 %129 to i8
  %131 = load ptr, ptr %14, align 8, !tbaa !26
  %132 = load i64, ptr %15, align 8, !tbaa !27
  %133 = add i64 %132, 1
  store i64 %133, ptr %15, align 8, !tbaa !27
  %134 = getelementptr inbounds i8, ptr %131, i64 %132
  store i8 %130, ptr %134, align 1, !tbaa !22
  %135 = load i16, ptr %13, align 8, !tbaa !19
  %136 = lshr i16 %135, 8
  %137 = trunc i16 %136 to i8
  %138 = load ptr, ptr %14, align 8, !tbaa !26
  %139 = load i64, ptr %15, align 8, !tbaa !27
  %140 = add i64 %139, 1
  store i64 %140, ptr %15, align 8, !tbaa !27
  %141 = getelementptr inbounds i8, ptr %138, i64 %139
  store i8 %137, ptr %141, align 1, !tbaa !22
  %142 = load i32, ptr %12, align 4, !tbaa !20
  %143 = sub nsw i32 16, %142
  %144 = lshr i32 %126, %143
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %13, align 8, !tbaa !19
  %146 = add nsw i32 %116, -16
  %147 = add nsw i32 %146, %142
  br label %153

148:                                              ; preds = %119
  %149 = shl i32 %122, %114
  %150 = trunc i32 %149 to i16
  %151 = or i16 %113, %150
  store i16 %151, ptr %13, align 8, !tbaa !19
  %152 = add nsw i32 %116, %114
  br label %153

153:                                              ; preds = %148, %125
  %154 = phi i16 [ %151, %148 ], [ %145, %125 ]
  %155 = phi i32 [ %152, %148 ], [ %147, %125 ]
  store i32 %155, ptr %12, align 4, !tbaa !20
  br label %156

156:                                              ; preds = %153, %112
  %157 = phi i16 [ %154, %153 ], [ %113, %112 ]
  %158 = phi i32 [ %155, %153 ], [ %114, %112 ]
  %159 = add nsw i32 %30, -1
  %160 = icmp ult i32 %30, 257
  %161 = lshr i32 %159, 7
  %162 = add nuw nsw i32 %161, 256
  %163 = select i1 %160, i32 %159, i32 %162
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !22
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %167
  %169 = getelementptr inbounds %struct.ct_data_s, ptr %2, i64 %167, i32 1
  %170 = load i16, ptr %169, align 2, !tbaa !22
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 16, %171
  %173 = icmp sgt i32 %158, %172
  %174 = load i16, ptr %168, align 2, !tbaa !22
  %175 = zext i16 %174 to i32
  %176 = shl i32 %175, %158
  %177 = trunc i32 %176 to i16
  %178 = or i16 %157, %177
  store i16 %178, ptr %13, align 8, !tbaa !19
  br i1 %173, label %179, label %198

179:                                              ; preds = %156
  %180 = trunc i16 %178 to i8
  %181 = load ptr, ptr %14, align 8, !tbaa !26
  %182 = load i64, ptr %15, align 8, !tbaa !27
  %183 = add i64 %182, 1
  store i64 %183, ptr %15, align 8, !tbaa !27
  %184 = getelementptr inbounds i8, ptr %181, i64 %182
  store i8 %180, ptr %184, align 1, !tbaa !22
  %185 = load i16, ptr %13, align 8, !tbaa !19
  %186 = lshr i16 %185, 8
  %187 = trunc i16 %186 to i8
  %188 = load ptr, ptr %14, align 8, !tbaa !26
  %189 = load i64, ptr %15, align 8, !tbaa !27
  %190 = add i64 %189, 1
  store i64 %190, ptr %15, align 8, !tbaa !27
  %191 = getelementptr inbounds i8, ptr %188, i64 %189
  store i8 %187, ptr %191, align 1, !tbaa !22
  %192 = load i32, ptr %12, align 4, !tbaa !20
  %193 = sub nsw i32 16, %192
  %194 = lshr i32 %175, %193
  %195 = trunc i32 %194 to i16
  store i16 %195, ptr %13, align 8, !tbaa !19
  %196 = add nsw i32 %171, -16
  %197 = add nsw i32 %196, %192
  br label %200

198:                                              ; preds = %156
  %199 = add nsw i32 %158, %171
  br label %200

200:                                              ; preds = %198, %179
  %201 = phi i16 [ %178, %198 ], [ %195, %179 ]
  %202 = phi i32 [ %199, %198 ], [ %197, %179 ]
  store i32 %202, ptr %12, align 4, !tbaa !20
  %203 = getelementptr inbounds [30 x i32], ptr @extra_dbits, i64 0, i64 %167
  %204 = load i32, ptr %203, align 4, !tbaa !48
  %205 = icmp ult i8 %166, 4
  br i1 %205, label %242, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds [30 x i32], ptr @base_dist, i64 0, i64 %167
  %208 = load i32, ptr %207, align 4, !tbaa !48
  %209 = sub i32 %159, %208
  %210 = sub nsw i32 16, %204
  %211 = icmp sgt i32 %202, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %206
  %213 = and i32 %209, 65535
  %214 = shl i32 %209, %202
  %215 = trunc i32 %214 to i16
  %216 = or i16 %201, %215
  store i16 %216, ptr %13, align 8, !tbaa !19
  %217 = trunc i16 %216 to i8
  %218 = load ptr, ptr %14, align 8, !tbaa !26
  %219 = load i64, ptr %15, align 8, !tbaa !27
  %220 = add i64 %219, 1
  store i64 %220, ptr %15, align 8, !tbaa !27
  %221 = getelementptr inbounds i8, ptr %218, i64 %219
  store i8 %217, ptr %221, align 1, !tbaa !22
  %222 = load i16, ptr %13, align 8, !tbaa !19
  %223 = lshr i16 %222, 8
  %224 = trunc i16 %223 to i8
  %225 = load ptr, ptr %14, align 8, !tbaa !26
  %226 = load i64, ptr %15, align 8, !tbaa !27
  %227 = add i64 %226, 1
  store i64 %227, ptr %15, align 8, !tbaa !27
  %228 = getelementptr inbounds i8, ptr %225, i64 %226
  store i8 %224, ptr %228, align 1, !tbaa !22
  %229 = load i32, ptr %12, align 4, !tbaa !20
  %230 = sub nsw i32 16, %229
  %231 = lshr i32 %213, %230
  %232 = trunc i32 %231 to i16
  store i16 %232, ptr %13, align 8, !tbaa !19
  %233 = add nsw i32 %204, -16
  %234 = add nsw i32 %233, %229
  br label %240

235:                                              ; preds = %206
  %236 = shl i32 %209, %202
  %237 = trunc i32 %236 to i16
  %238 = or i16 %201, %237
  store i16 %238, ptr %13, align 8, !tbaa !19
  %239 = add nsw i32 %204, %202
  br label %240

240:                                              ; preds = %212, %235, %52, %71
  %241 = phi i32 [ %72, %71 ], [ %70, %52 ], [ %239, %235 ], [ %234, %212 ]
  store i32 %241, ptr %12, align 4, !tbaa !20
  br label %242

242:                                              ; preds = %240, %200
  %243 = phi i32 [ %202, %200 ], [ %241, %240 ]
  %244 = load i32, ptr %4, align 4, !tbaa !25
  %245 = icmp ult i32 %31, %244
  br i1 %245, label %16, label %246, !llvm.loop !69

246:                                              ; preds = %242, %7
  %247 = phi i32 [ %9, %7 ], [ %243, %242 ]
  %248 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256
  %249 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 256, i32 1
  %250 = load i16, ptr %249, align 2, !tbaa !22
  %251 = zext i16 %250 to i32
  %252 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %253 = sub nsw i32 16, %251
  %254 = icmp sgt i32 %247, %253
  %255 = load i16, ptr %248, align 2, !tbaa !22
  %256 = zext i16 %255 to i32
  %257 = shl i32 %256, %247
  %258 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %259 = load i16, ptr %258, align 8, !tbaa !19
  %260 = trunc i32 %257 to i16
  %261 = or i16 %259, %260
  store i16 %261, ptr %258, align 8, !tbaa !19
  br i1 %254, label %262, label %283

262:                                              ; preds = %246
  %263 = trunc i16 %261 to i8
  %264 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !26
  %266 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %267 = load i64, ptr %266, align 8, !tbaa !27
  %268 = add i64 %267, 1
  store i64 %268, ptr %266, align 8, !tbaa !27
  %269 = getelementptr inbounds i8, ptr %265, i64 %267
  store i8 %263, ptr %269, align 1, !tbaa !22
  %270 = load i16, ptr %258, align 8, !tbaa !19
  %271 = lshr i16 %270, 8
  %272 = trunc i16 %271 to i8
  %273 = load ptr, ptr %264, align 8, !tbaa !26
  %274 = load i64, ptr %266, align 8, !tbaa !27
  %275 = add i64 %274, 1
  store i64 %275, ptr %266, align 8, !tbaa !27
  %276 = getelementptr inbounds i8, ptr %273, i64 %274
  store i8 %272, ptr %276, align 1, !tbaa !22
  %277 = load i32, ptr %252, align 4, !tbaa !20
  %278 = sub nsw i32 16, %277
  %279 = lshr i32 %256, %278
  %280 = trunc i32 %279 to i16
  store i16 %280, ptr %258, align 8, !tbaa !19
  %281 = add nsw i32 %251, -16
  %282 = add nsw i32 %281, %277
  br label %285

283:                                              ; preds = %246
  %284 = add nsw i32 %247, %251
  br label %285

285:                                              ; preds = %283, %262
  %286 = phi i32 [ %284, %283 ], [ %282, %262 ]
  store i32 %286, ptr %252, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @_tr_tally(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !25
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !22
  %12 = lshr i32 %1, 8
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %5, align 8, !tbaa !68
  %15 = load i32, ptr %7, align 4, !tbaa !25
  %16 = add i32 %15, 1
  store i32 %16, ptr %7, align 4, !tbaa !25
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !22
  %19 = trunc i32 %2 to i8
  %20 = load ptr, ptr %5, align 8, !tbaa !68
  %21 = load i32, ptr %7, align 4, !tbaa !25
  %22 = add i32 %21, 1
  store i32 %22, ptr %7, align 4, !tbaa !25
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  store i8 %19, ptr %24, align 1, !tbaa !22
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %27
  br label %51

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 54
  %31 = load i32, ptr %30, align 8, !tbaa !70
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !70
  %33 = add i32 %1, -1
  %34 = zext i32 %2 to i64
  %35 = getelementptr inbounds [256 x i8], ptr @_length_code, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !22
  %37 = zext i8 %36 to i64
  %38 = add nuw nsw i64 %37, 257
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %38
  %40 = load i16, ptr %39, align 4, !tbaa !22
  %41 = add i16 %40, 1
  store i16 %41, ptr %39, align 4, !tbaa !22
  %42 = icmp ult i32 %1, 257
  %43 = lshr i32 %33, 7
  %44 = add nuw nsw i32 %43, 256
  %45 = select i1 %42, i32 %33, i32 %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [512 x i8], ptr @_dist_code, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !22
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %49
  br label %51

51:                                               ; preds = %29, %26
  %52 = phi ptr [ %50, %29 ], [ %28, %26 ]
  %53 = load i16, ptr %52, align 4, !tbaa !22
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4, !tbaa !22
  %55 = load i32, ptr %7, align 4, !tbaa !25
  %56 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %57 = load i32, ptr %56, align 8, !tbaa !71
  %58 = icmp eq i32 %55, %57
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @send_tree(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %334, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !22
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 138, i32 7
  %10 = select i1 %8, i32 3, i32 4
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 57
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 56
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 16, i32 1
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 18, i32 1
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 17, i32 1
  %22 = add nuw i32 %2, 1
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %5, %328
  %25 = phi i64 [ 0, %5 ], [ %31, %328 ]
  %26 = phi i32 [ -1, %5 ], [ %332, %328 ]
  %27 = phi i32 [ %11, %5 ], [ %34, %328 ]
  %28 = phi i32 [ 0, %5 ], [ %331, %328 ]
  %29 = phi i32 [ %9, %5 ], [ %330, %328 ]
  %30 = phi i32 [ %10, %5 ], [ %329, %328 ]
  %31 = add nuw nsw i64 %25, 1
  %32 = getelementptr inbounds %struct.ct_data_s, ptr %1, i64 %31, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !22
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %28, 1
  %36 = icmp slt i32 %35, %29
  %37 = icmp eq i32 %27, %34
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %328, label %39

39:                                               ; preds = %24
  %40 = icmp slt i32 %35, %30
  br i1 %40, label %41, label %84

41:                                               ; preds = %39
  %42 = zext nneg i32 %27 to i64
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %42
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %42, i32 1
  %45 = load i32, ptr %12, align 4, !tbaa !20
  br label %46

46:                                               ; preds = %41, %80
  %47 = phi i32 [ %81, %80 ], [ %45, %41 ]
  %48 = phi i32 [ %82, %80 ], [ %35, %41 ]
  %49 = load i16, ptr %44, align 2, !tbaa !22
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 16, %50
  %52 = icmp sgt i32 %47, %51
  %53 = load i16, ptr %43, align 4, !tbaa !22
  %54 = zext i16 %53 to i32
  %55 = shl i32 %54, %47
  %56 = load i16, ptr %13, align 8, !tbaa !19
  %57 = trunc i32 %55 to i16
  %58 = or i16 %56, %57
  store i16 %58, ptr %13, align 8, !tbaa !19
  br i1 %52, label %59, label %78

59:                                               ; preds = %46
  %60 = trunc i16 %58 to i8
  %61 = load ptr, ptr %14, align 8, !tbaa !26
  %62 = load i64, ptr %15, align 8, !tbaa !27
  %63 = add i64 %62, 1
  store i64 %63, ptr %15, align 8, !tbaa !27
  %64 = getelementptr inbounds i8, ptr %61, i64 %62
  store i8 %60, ptr %64, align 1, !tbaa !22
  %65 = load i16, ptr %13, align 8, !tbaa !19
  %66 = lshr i16 %65, 8
  %67 = trunc i16 %66 to i8
  %68 = load ptr, ptr %14, align 8, !tbaa !26
  %69 = load i64, ptr %15, align 8, !tbaa !27
  %70 = add i64 %69, 1
  store i64 %70, ptr %15, align 8, !tbaa !27
  %71 = getelementptr inbounds i8, ptr %68, i64 %69
  store i8 %67, ptr %71, align 1, !tbaa !22
  %72 = load i32, ptr %12, align 4, !tbaa !20
  %73 = sub nsw i32 16, %72
  %74 = lshr i32 %54, %73
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %13, align 8, !tbaa !19
  %76 = add nsw i32 %50, -16
  %77 = add nsw i32 %76, %72
  br label %80

78:                                               ; preds = %46
  %79 = add nsw i32 %47, %50
  br label %80

80:                                               ; preds = %78, %59
  %81 = phi i32 [ %79, %78 ], [ %77, %59 ]
  store i32 %81, ptr %12, align 4, !tbaa !20
  %82 = add nsw i32 %48, -1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %323, label %46, !llvm.loop !72

84:                                               ; preds = %39
  %85 = icmp eq i32 %27, 0
  %86 = load i32, ptr %12, align 4, !tbaa !20
  br i1 %85, label %192, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %27, %26
  br i1 %88, label %126, label %89

89:                                               ; preds = %87
  %90 = zext nneg i32 %27 to i64
  %91 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %90
  %92 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 39, i64 %90, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !22
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 16, %94
  %96 = icmp sgt i32 %86, %95
  %97 = load i16, ptr %91, align 4, !tbaa !22
  %98 = zext i16 %97 to i32
  %99 = shl i32 %98, %86
  %100 = load i16, ptr %13, align 8, !tbaa !19
  %101 = trunc i32 %99 to i16
  %102 = or i16 %100, %101
  store i16 %102, ptr %13, align 8, !tbaa !19
  br i1 %96, label %103, label %122

103:                                              ; preds = %89
  %104 = trunc i16 %102 to i8
  %105 = load ptr, ptr %14, align 8, !tbaa !26
  %106 = load i64, ptr %15, align 8, !tbaa !27
  %107 = add i64 %106, 1
  store i64 %107, ptr %15, align 8, !tbaa !27
  %108 = getelementptr inbounds i8, ptr %105, i64 %106
  store i8 %104, ptr %108, align 1, !tbaa !22
  %109 = load i16, ptr %13, align 8, !tbaa !19
  %110 = lshr i16 %109, 8
  %111 = trunc i16 %110 to i8
  %112 = load ptr, ptr %14, align 8, !tbaa !26
  %113 = load i64, ptr %15, align 8, !tbaa !27
  %114 = add i64 %113, 1
  store i64 %114, ptr %15, align 8, !tbaa !27
  %115 = getelementptr inbounds i8, ptr %112, i64 %113
  store i8 %111, ptr %115, align 1, !tbaa !22
  %116 = load i32, ptr %12, align 4, !tbaa !20
  %117 = sub nsw i32 16, %116
  %118 = lshr i32 %98, %117
  %119 = trunc i32 %118 to i16
  store i16 %119, ptr %13, align 8, !tbaa !19
  %120 = add nsw i32 %94, -16
  %121 = add nsw i32 %120, %116
  br label %124

122:                                              ; preds = %89
  %123 = add nsw i32 %86, %94
  br label %124

124:                                              ; preds = %122, %103
  %125 = phi i32 [ %123, %122 ], [ %121, %103 ]
  store i32 %125, ptr %12, align 4, !tbaa !20
  br label %126

126:                                              ; preds = %124, %87
  %127 = phi i32 [ %125, %124 ], [ %86, %87 ]
  %128 = phi i32 [ %28, %124 ], [ %35, %87 ]
  %129 = load i16, ptr %17, align 2, !tbaa !22
  %130 = zext i16 %129 to i32
  %131 = sub nsw i32 16, %130
  %132 = icmp sgt i32 %127, %131
  %133 = load i16, ptr %16, align 4, !tbaa !22
  %134 = zext i16 %133 to i32
  %135 = shl i32 %134, %127
  %136 = load i16, ptr %13, align 8, !tbaa !19
  %137 = trunc i32 %135 to i16
  %138 = or i16 %136, %137
  br i1 %132, label %139, label %158

139:                                              ; preds = %126
  store i16 %138, ptr %13, align 8, !tbaa !19
  %140 = trunc i16 %138 to i8
  %141 = load ptr, ptr %14, align 8, !tbaa !26
  %142 = load i64, ptr %15, align 8, !tbaa !27
  %143 = add i64 %142, 1
  store i64 %143, ptr %15, align 8, !tbaa !27
  %144 = getelementptr inbounds i8, ptr %141, i64 %142
  store i8 %140, ptr %144, align 1, !tbaa !22
  %145 = load i16, ptr %13, align 8, !tbaa !19
  %146 = lshr i16 %145, 8
  %147 = trunc i16 %146 to i8
  %148 = load ptr, ptr %14, align 8, !tbaa !26
  %149 = load i64, ptr %15, align 8, !tbaa !27
  %150 = add i64 %149, 1
  store i64 %150, ptr %15, align 8, !tbaa !27
  %151 = getelementptr inbounds i8, ptr %148, i64 %149
  store i8 %147, ptr %151, align 1, !tbaa !22
  %152 = load i32, ptr %12, align 4, !tbaa !20
  %153 = sub nsw i32 16, %152
  %154 = lshr i32 %134, %153
  %155 = trunc i32 %154 to i16
  %156 = add nsw i32 %130, -16
  %157 = add nsw i32 %156, %152
  br label %160

158:                                              ; preds = %126
  %159 = add nsw i32 %127, %130
  br label %160

160:                                              ; preds = %158, %139
  %161 = phi i16 [ %138, %158 ], [ %155, %139 ]
  %162 = phi i32 [ %159, %158 ], [ %157, %139 ]
  store i32 %162, ptr %12, align 4, !tbaa !20
  %163 = icmp sgt i32 %162, 14
  %164 = add i32 %128, 65533
  br i1 %163, label %165, label %187

165:                                              ; preds = %160
  %166 = and i32 %164, 65535
  %167 = shl i32 %164, %162
  %168 = trunc i32 %167 to i16
  %169 = or i16 %161, %168
  store i16 %169, ptr %13, align 8, !tbaa !19
  %170 = trunc i16 %169 to i8
  %171 = load ptr, ptr %14, align 8, !tbaa !26
  %172 = load i64, ptr %15, align 8, !tbaa !27
  %173 = add i64 %172, 1
  store i64 %173, ptr %15, align 8, !tbaa !27
  %174 = getelementptr inbounds i8, ptr %171, i64 %172
  store i8 %170, ptr %174, align 1, !tbaa !22
  %175 = load i16, ptr %13, align 8, !tbaa !19
  %176 = lshr i16 %175, 8
  %177 = trunc i16 %176 to i8
  %178 = load ptr, ptr %14, align 8, !tbaa !26
  %179 = load i64, ptr %15, align 8, !tbaa !27
  %180 = add i64 %179, 1
  store i64 %180, ptr %15, align 8, !tbaa !27
  %181 = getelementptr inbounds i8, ptr %178, i64 %179
  store i8 %177, ptr %181, align 1, !tbaa !22
  %182 = load i32, ptr %12, align 4, !tbaa !20
  %183 = sub nsw i32 16, %182
  %184 = lshr i32 %166, %183
  %185 = trunc i32 %184 to i16
  store i16 %185, ptr %13, align 8, !tbaa !19
  %186 = add nsw i32 %182, -14
  br label %321

187:                                              ; preds = %160
  %188 = shl i32 %164, %162
  %189 = trunc i32 %188 to i16
  %190 = or i16 %161, %189
  store i16 %190, ptr %13, align 8, !tbaa !19
  %191 = add nsw i32 %162, 2
  br label %321

192:                                              ; preds = %84
  %193 = icmp slt i32 %28, 10
  %194 = load i16, ptr %13, align 8, !tbaa !19
  br i1 %193, label %195, label %258

195:                                              ; preds = %192
  %196 = load i16, ptr %21, align 2, !tbaa !22
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 16, %197
  %199 = icmp sgt i32 %86, %198
  %200 = load i16, ptr %20, align 4, !tbaa !22
  %201 = zext i16 %200 to i32
  %202 = shl i32 %201, %86
  %203 = trunc i32 %202 to i16
  %204 = or i16 %194, %203
  br i1 %199, label %205, label %224

205:                                              ; preds = %195
  store i16 %204, ptr %13, align 8, !tbaa !19
  %206 = trunc i16 %204 to i8
  %207 = load ptr, ptr %14, align 8, !tbaa !26
  %208 = load i64, ptr %15, align 8, !tbaa !27
  %209 = add i64 %208, 1
  store i64 %209, ptr %15, align 8, !tbaa !27
  %210 = getelementptr inbounds i8, ptr %207, i64 %208
  store i8 %206, ptr %210, align 1, !tbaa !22
  %211 = load i16, ptr %13, align 8, !tbaa !19
  %212 = lshr i16 %211, 8
  %213 = trunc i16 %212 to i8
  %214 = load ptr, ptr %14, align 8, !tbaa !26
  %215 = load i64, ptr %15, align 8, !tbaa !27
  %216 = add i64 %215, 1
  store i64 %216, ptr %15, align 8, !tbaa !27
  %217 = getelementptr inbounds i8, ptr %214, i64 %215
  store i8 %213, ptr %217, align 1, !tbaa !22
  %218 = load i32, ptr %12, align 4, !tbaa !20
  %219 = sub nsw i32 16, %218
  %220 = lshr i32 %201, %219
  %221 = trunc i32 %220 to i16
  %222 = add nsw i32 %197, -16
  %223 = add nsw i32 %222, %218
  br label %226

224:                                              ; preds = %195
  %225 = add nsw i32 %86, %197
  br label %226

226:                                              ; preds = %224, %205
  %227 = phi i16 [ %204, %224 ], [ %221, %205 ]
  %228 = phi i32 [ %225, %224 ], [ %223, %205 ]
  store i32 %228, ptr %12, align 4, !tbaa !20
  %229 = icmp sgt i32 %228, 13
  %230 = add nsw i32 %28, 65534
  br i1 %229, label %231, label %253

231:                                              ; preds = %226
  %232 = and i32 %230, 65535
  %233 = shl i32 %230, %228
  %234 = trunc i32 %233 to i16
  %235 = or i16 %227, %234
  store i16 %235, ptr %13, align 8, !tbaa !19
  %236 = trunc i16 %235 to i8
  %237 = load ptr, ptr %14, align 8, !tbaa !26
  %238 = load i64, ptr %15, align 8, !tbaa !27
  %239 = add i64 %238, 1
  store i64 %239, ptr %15, align 8, !tbaa !27
  %240 = getelementptr inbounds i8, ptr %237, i64 %238
  store i8 %236, ptr %240, align 1, !tbaa !22
  %241 = load i16, ptr %13, align 8, !tbaa !19
  %242 = lshr i16 %241, 8
  %243 = trunc i16 %242 to i8
  %244 = load ptr, ptr %14, align 8, !tbaa !26
  %245 = load i64, ptr %15, align 8, !tbaa !27
  %246 = add i64 %245, 1
  store i64 %246, ptr %15, align 8, !tbaa !27
  %247 = getelementptr inbounds i8, ptr %244, i64 %245
  store i8 %243, ptr %247, align 1, !tbaa !22
  %248 = load i32, ptr %12, align 4, !tbaa !20
  %249 = sub nsw i32 16, %248
  %250 = lshr i32 %232, %249
  %251 = trunc i32 %250 to i16
  store i16 %251, ptr %13, align 8, !tbaa !19
  %252 = add nsw i32 %248, -13
  br label %321

253:                                              ; preds = %226
  %254 = shl i32 %230, %228
  %255 = trunc i32 %254 to i16
  %256 = or i16 %227, %255
  store i16 %256, ptr %13, align 8, !tbaa !19
  %257 = add nsw i32 %228, 3
  br label %321

258:                                              ; preds = %192
  %259 = load i16, ptr %19, align 2, !tbaa !22
  %260 = zext i16 %259 to i32
  %261 = sub nsw i32 16, %260
  %262 = icmp sgt i32 %86, %261
  %263 = load i16, ptr %18, align 4, !tbaa !22
  %264 = zext i16 %263 to i32
  %265 = shl i32 %264, %86
  %266 = trunc i32 %265 to i16
  %267 = or i16 %194, %266
  br i1 %262, label %268, label %287

268:                                              ; preds = %258
  store i16 %267, ptr %13, align 8, !tbaa !19
  %269 = trunc i16 %267 to i8
  %270 = load ptr, ptr %14, align 8, !tbaa !26
  %271 = load i64, ptr %15, align 8, !tbaa !27
  %272 = add i64 %271, 1
  store i64 %272, ptr %15, align 8, !tbaa !27
  %273 = getelementptr inbounds i8, ptr %270, i64 %271
  store i8 %269, ptr %273, align 1, !tbaa !22
  %274 = load i16, ptr %13, align 8, !tbaa !19
  %275 = lshr i16 %274, 8
  %276 = trunc i16 %275 to i8
  %277 = load ptr, ptr %14, align 8, !tbaa !26
  %278 = load i64, ptr %15, align 8, !tbaa !27
  %279 = add i64 %278, 1
  store i64 %279, ptr %15, align 8, !tbaa !27
  %280 = getelementptr inbounds i8, ptr %277, i64 %278
  store i8 %276, ptr %280, align 1, !tbaa !22
  %281 = load i32, ptr %12, align 4, !tbaa !20
  %282 = sub nsw i32 16, %281
  %283 = lshr i32 %264, %282
  %284 = trunc i32 %283 to i16
  %285 = add nsw i32 %260, -16
  %286 = add nsw i32 %285, %281
  br label %289

287:                                              ; preds = %258
  %288 = add nsw i32 %86, %260
  br label %289

289:                                              ; preds = %287, %268
  %290 = phi i16 [ %267, %287 ], [ %284, %268 ]
  %291 = phi i32 [ %288, %287 ], [ %286, %268 ]
  store i32 %291, ptr %12, align 4, !tbaa !20
  %292 = icmp sgt i32 %291, 9
  %293 = add nuw i32 %28, 65526
  br i1 %292, label %294, label %316

294:                                              ; preds = %289
  %295 = and i32 %293, 65535
  %296 = shl i32 %293, %291
  %297 = trunc i32 %296 to i16
  %298 = or i16 %290, %297
  store i16 %298, ptr %13, align 8, !tbaa !19
  %299 = trunc i16 %298 to i8
  %300 = load ptr, ptr %14, align 8, !tbaa !26
  %301 = load i64, ptr %15, align 8, !tbaa !27
  %302 = add i64 %301, 1
  store i64 %302, ptr %15, align 8, !tbaa !27
  %303 = getelementptr inbounds i8, ptr %300, i64 %301
  store i8 %299, ptr %303, align 1, !tbaa !22
  %304 = load i16, ptr %13, align 8, !tbaa !19
  %305 = lshr i16 %304, 8
  %306 = trunc i16 %305 to i8
  %307 = load ptr, ptr %14, align 8, !tbaa !26
  %308 = load i64, ptr %15, align 8, !tbaa !27
  %309 = add i64 %308, 1
  store i64 %309, ptr %15, align 8, !tbaa !27
  %310 = getelementptr inbounds i8, ptr %307, i64 %308
  store i8 %306, ptr %310, align 1, !tbaa !22
  %311 = load i32, ptr %12, align 4, !tbaa !20
  %312 = sub nsw i32 16, %311
  %313 = lshr i32 %295, %312
  %314 = trunc i32 %313 to i16
  store i16 %314, ptr %13, align 8, !tbaa !19
  %315 = add nsw i32 %311, -9
  br label %321

316:                                              ; preds = %289
  %317 = shl i32 %293, %291
  %318 = trunc i32 %317 to i16
  %319 = or i16 %290, %318
  store i16 %319, ptr %13, align 8, !tbaa !19
  %320 = add nsw i32 %291, 7
  br label %321

321:                                              ; preds = %294, %316, %231, %253, %165, %187
  %322 = phi i32 [ %191, %187 ], [ %186, %165 ], [ %257, %253 ], [ %252, %231 ], [ %320, %316 ], [ %315, %294 ]
  store i32 %322, ptr %12, align 4, !tbaa !20
  br label %323

323:                                              ; preds = %80, %321
  %324 = icmp eq i16 %33, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %323
  %326 = select i1 %37, i32 3, i32 4
  %327 = select i1 %37, i32 6, i32 7
  br label %328

328:                                              ; preds = %325, %323, %24
  %329 = phi i32 [ %30, %24 ], [ 3, %323 ], [ %326, %325 ]
  %330 = phi i32 [ %29, %24 ], [ 138, %323 ], [ %327, %325 ]
  %331 = phi i32 [ %35, %24 ], [ 0, %323 ], [ 0, %325 ]
  %332 = phi i32 [ %26, %24 ], [ %27, %323 ], [ %27, %325 ]
  %333 = icmp eq i64 %31, %23
  br i1 %333, label %334, label %24, !llvm.loop !73

334:                                              ; preds = %328, %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 2904}
!6 = !{!"internal_state", !7, i64 0, !10, i64 8, !7, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48, !7, i64 56, !11, i64 64, !8, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !7, i64 96, !11, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !11, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !8, i64 212, !8, i64 2504, !8, i64 2748, !12, i64 2904, !12, i64 2928, !12, i64 2952, !8, i64 2976, !8, i64 3008, !10, i64 5300, !10, i64 5304, !8, i64 5308, !7, i64 5888, !10, i64 5896, !10, i64 5900, !10, i64 5904, !11, i64 5912, !11, i64 5920, !10, i64 5928, !10, i64 5932, !13, i64 5936, !10, i64 5940, !10, i64 5944, !11, i64 5952, !10, i64 5960}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"tree_desc_s", !7, i64 0, !10, i64 8, !7, i64 16}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !7, i64 2920}
!15 = !{!6, !7, i64 2928}
!16 = !{!6, !7, i64 2944}
!17 = !{!6, !7, i64 2952}
!18 = !{!6, !7, i64 2968}
!19 = !{!6, !13, i64 5936}
!20 = !{!6, !10, i64 5940}
!21 = !{!6, !10, i64 5944}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!6, !10, i64 5900}
!26 = !{!6, !7, i64 16}
!27 = !{!6, !11, i64 40}
!28 = !{!6, !10, i64 196}
!29 = !{!6, !7, i64 0}
!30 = !{!31, !10, i64 88}
!31 = !{!"z_stream_s", !7, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !11, i64 96, !11, i64 104}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = !{!6, !10, i64 2912}
!35 = distinct !{!35, !24}
!36 = !{!6, !10, i64 2936}
!37 = !{!6, !11, i64 5912}
!38 = !{!6, !11, i64 5920}
!39 = !{!6, !10, i64 200}
!40 = distinct !{!40, !24}
!41 = !{!12, !7, i64 0}
!42 = !{!12, !7, i64 16}
!43 = !{!44, !7, i64 0}
!44 = !{!"static_tree_desc_s", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!45 = !{!44, !10, i64 20}
!46 = !{!6, !10, i64 5300}
!47 = !{!6, !10, i64 5304}
!48 = !{!10, !10, i64 0}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = !{!12, !10, i64 8}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = !{!44, !7, i64 8}
!56 = !{!44, !10, i64 16}
!57 = !{!44, !10, i64 24}
!58 = !{!13, !13, i64 0}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = distinct !{!67, !24}
!68 = !{!6, !7, i64 5888}
!69 = distinct !{!69, !24}
!70 = !{!6, !10, i64 5928}
!71 = !{!6, !10, i64 5904}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
