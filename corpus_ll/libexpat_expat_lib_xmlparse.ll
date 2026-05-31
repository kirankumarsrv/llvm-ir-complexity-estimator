; ModuleID = 'corpus_src/libexpat/expat/lib/xmlparse.c'
source_filename = "corpus_src/libexpat/expat/lib/xmlparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XML_Feature = type { i32, ptr, i64 }
%struct.XML_ParserStruct = type { ptr, ptr, ptr, %struct.XML_Memory_Handling_Suite, ptr, ptr, ptr, i64, ptr, i64, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.INIT_ENCODING, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.prolog_state, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, ptr, i64, i8, %struct.position, %struct.STRING_POOL, %struct.STRING_POOL, ptr, i64, i8, ptr, %struct.XML_ParsingStatus, i8, i8, i32, %struct.sipkey, i8, %struct.accounting, %struct.MALLOC_TRACKER, %struct.entity_stats, i8 }
%struct.XML_Memory_Handling_Suite = type { ptr, ptr, ptr }
%struct.INIT_ENCODING = type { %struct.encoding, ptr }
%struct.encoding = type { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.prolog_state = type { ptr, i32, i32, i32, i32, i32 }
%struct.position = type { i64, i64 }
%struct.STRING_POOL = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.XML_ParsingStatus = type { i32, i8 }
%struct.sipkey = type { [2 x i64] }
%struct.accounting = type { i64, i64, i64, float, i64 }
%struct.MALLOC_TRACKER = type { i64, i64, i64, float, i64 }
%struct.entity_stats = type { i32, i32, i32, i64 }
%struct.DTD = type { %struct.HASH_TABLE, %struct.HASH_TABLE, %struct.HASH_TABLE, %struct.HASH_TABLE, %struct.STRING_POOL, %struct.STRING_POOL, i8, i8, i8, i8, %struct.HASH_TABLE, %struct.prefix, i8, ptr, i32, i32, i32, i32, ptr }
%struct.HASH_TABLE = type { ptr, i8, i64, i64, ptr }
%struct.prefix = type { ptr, ptr }
%struct.tag = type { ptr, ptr, i32, %struct.TAG_NAME, %union.anon, ptr, ptr }
%struct.TAG_NAME = type { ptr, ptr, ptr, i32, i32, i32 }
%union.anon = type { ptr }
%struct.binding = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.open_internal_entity = type { ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.ELEMENT_TYPE = type { ptr, ptr, ptr, i64, i64, ptr, %struct.HASH_TABLE }
%struct.attribute_id = type { ptr, ptr, i8, i8 }
%struct.DEFAULT_ATTRIBUTE = type { ptr, i8, ptr }
%struct.ENTITY = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.XML_Encoding = type { [256 x i32], ptr, ptr, ptr }
%struct.CONTENT_SCAFFOLD = type { i32, i32, ptr, i32, i32, i32, i32 }
%struct.XML_cp = type { i32, i32, ptr, i32, ptr }
%struct.siphash = type { i64, i64, i64, i64, [8 x i8], ptr, i64 }
%struct.ATTRIBUTE = type { ptr, ptr, ptr, i8 }
%struct.NS_ATT = type { i64, i64, ptr }
%struct.block = type { ptr, i32, [0 x i8] }

@g_reparseDeferralEnabledDefault = dso_local local_unnamed_addr constant i8 1, align 1
@.str = private unnamed_addr constant [29 x i8] c"! rootParser->m_parentParser\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"corpus_src/libexpat/expat/lib/xmlparse.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"explicit(8)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"explicit(16)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"s != NULL\00", align 1
@__PRETTY_FUNCTION__.XML_Parse = private unnamed_addr constant [62 x i8] c"enum XML_Status XML_Parse(XML_Parser, const char *, int, int)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__.XML_StopParser = private unnamed_addr constant [53 x i8] c"enum XML_Status XML_StopParser(XML_Parser, XML_Bool)\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"status != NULL\00", align 1
@__PRETTY_FUNCTION__.XML_GetParsingStatus = private unnamed_addr constant [59 x i8] c"void XML_GetParsingStatus(XML_Parser, XML_ParsingStatus *)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"no element found\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"not well-formed (invalid token)\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"unclosed token\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"partial character\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"mismatched tag\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"duplicate attribute\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"junk after document element\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"illegal parameter entity reference\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"undefined entity\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"recursive entity reference\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"asynchronous entity\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"reference to invalid character number\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"reference to binary entity\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"reference to external entity in attribute\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"XML or text declaration not at start of entity\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"unknown encoding\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"encoding specified in XML declaration is incorrect\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"unclosed CDATA section\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"error in processing external entity reference\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"document is not standalone\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"unexpected parser state - please send a bug report\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"entity declared in parameter entity\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"requested feature requires XML_DTD support in Expat\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"cannot change setting once parsing has begun\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"unbound prefix\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"must not undeclare prefix\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"incomplete markup in parameter entity\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"XML declaration not well-formed\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"text declaration not well-formed\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"illegal character(s) in public id\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"parser suspended\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"parser not suspended\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"parsing aborted\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"parsing finished\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"cannot suspend in external parameter entity\00", align 1
@.str.44 = private unnamed_addr constant [80 x i8] c"reserved prefix (xml) must not be undeclared or bound to another namespace name\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"reserved prefix (xmlns) must not be declared or undeclared\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"prefix must not be bound to one of the reserved namespace names\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"a successful prior call to function XML_GetBuffer is required\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"limit on input amplification factor (from DTD and entities) breached\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"parser not started\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"expat_2.8.1\00", align 1
@XML_GetFeatureList.features = internal constant [11 x %struct.XML_Feature] [%struct.XML_Feature { i32 6, ptr @.str.52, i64 1 }, %struct.XML_Feature { i32 7, ptr @.str.53, i64 1 }, %struct.XML_Feature { i32 3, ptr @.str.54, i64 0 }, %struct.XML_Feature { i32 4, ptr @.str.55, i64 1024 }, %struct.XML_Feature { i32 8, ptr @.str.56, i64 0 }, %struct.XML_Feature { i32 11, ptr @.str.57, i64 100 }, %struct.XML_Feature { i32 12, ptr @.str.58, i64 8388608 }, %struct.XML_Feature { i32 13, ptr @.str.59, i64 0 }, %struct.XML_Feature { i32 14, ptr @.str.60, i64 100 }, %struct.XML_Feature { i32 15, ptr @.str.61, i64 67108864 }, %struct.XML_Feature zeroinitializer], align 16
@.str.52 = private unnamed_addr constant [17 x i8] c"sizeof(XML_Char)\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"sizeof(XML_LChar)\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"XML_DTD\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"XML_CONTEXT_BYTES\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"XML_NS\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"XML_BLAP_MAX_AMP\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"XML_BLAP_ACT_THRES\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"XML_GE\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"XML_AT_MAX_AMP\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"XML_AT_ACT_THRES\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"\\x1\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"\\x2\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"\\x3\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"\\x4\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"\\x5\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"\\x6\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"\\x7\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"\\x8\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"\\xB\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"\\xC\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"\\xE\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"\\xF\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"\\x10\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"\\x11\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"\\x12\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"\\x13\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"\\x14\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"\\x15\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"\\x16\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\\x17\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"\\x18\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"\\x19\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"\\x1A\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"\\x1B\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"\\x1C\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"\\x1D\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"\\x1E\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"\\x1F\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.97 = private constant [2 x i8] c"#\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.102 = private constant [2 x i8] c"(\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.149 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.152 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.183 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.185 = private constant [2 x i8] c"|\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.187 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"\\x7F\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"\\x80\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"\\x81\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"\\x82\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"\\x83\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"\\x84\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"\\x85\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"\\x86\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"\\x87\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"\\x88\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"\\x89\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"\\x8A\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"\\x8B\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"\\x8C\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"\\x8D\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"\\x8E\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"\\x8F\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"\\x90\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"\\x91\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"\\x92\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"\\x93\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"\\x94\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"\\x95\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"\\x96\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"\\x97\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"\\x98\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"\\x99\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"\\x9A\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"\\x9B\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"\\x9C\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"\\x9D\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"\\x9E\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"\\x9F\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"\\xA0\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"\\xA1\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"\\xA2\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"\\xA3\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"\\xA4\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"\\xA5\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"\\xA6\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"\\xA7\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"\\xA8\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"\\xA9\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"\\xAA\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"\\xAB\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"\\xAC\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"\\xAD\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"\\xAE\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"\\xAF\00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"\\xB0\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"\\xB1\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"\\xB2\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"\\xB3\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"\\xB4\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"\\xB5\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"\\xB6\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"\\xB7\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"\\xB8\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"\\xB9\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"\\xBA\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"\\xBB\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"\\xBC\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"\\xBD\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"\\xBE\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"\\xBF\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"\\xC0\00", align 1
@.str.254 = private unnamed_addr constant [5 x i8] c"\\xC1\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"\\xC2\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c"\\xC3\00", align 1
@.str.257 = private unnamed_addr constant [5 x i8] c"\\xC4\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"\\xC5\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"\\xC6\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"\\xC7\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"\\xC8\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"\\xC9\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"\\xCA\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"\\xCB\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"\\xCC\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"\\xCD\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"\\xCE\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"\\xCF\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"\\xD0\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"\\xD1\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"\\xD2\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"\\xD3\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"\\xD4\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"\\xD5\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"\\xD6\00", align 1
@.str.276 = private unnamed_addr constant [5 x i8] c"\\xD7\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"\\xD8\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"\\xD9\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"\\xDA\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"\\xDB\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"\\xDC\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"\\xDD\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"\\xDE\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"\\xDF\00", align 1
@.str.285 = private unnamed_addr constant [5 x i8] c"\\xE0\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"\\xE1\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"\\xE2\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"\\xE3\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"\\xE4\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"\\xE5\00", align 1
@.str.291 = private unnamed_addr constant [5 x i8] c"\\xE6\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"\\xE7\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"\\xE8\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"\\xE9\00", align 1
@.str.295 = private unnamed_addr constant [5 x i8] c"\\xEA\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"\\xEB\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"\\xEC\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"\\xED\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"\\xEE\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"\\xEF\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"\\xF0\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"\\xF1\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"\\xF2\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"\\xF3\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"\\xF4\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"\\xF5\00", align 1
@.str.307 = private unnamed_addr constant [5 x i8] c"\\xF6\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"\\xF7\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"\\xF8\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"\\xF9\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"\\xFA\00", align 1
@.str.312 = private unnamed_addr constant [5 x i8] c"\\xFB\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"\\xFC\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"\\xFD\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"\\xFE\00", align 1
@.str.316 = private unnamed_addr constant [5 x i8] c"\\xFF\00", align 1
@.str.317 = private unnamed_addr constant [19 x i8] c"EXPAT_MALLOC_DEBUG\00", align 1
@__PRETTY_FUNCTION__.parserCreate = private unnamed_addr constant [114 x i8] c"XML_Parser parserCreate(const XML_Char *, const XML_Memory_Handling_Suite *, const XML_Char *, DTD *, XML_Parser)\00", align 1
@.str.319 = private unnamed_addr constant [66 x i8] c"SIZE_MAX - rootParser->m_alloc_tracker.bytesAllocated >= increase\00", align 1
@.str.320 = private unnamed_addr constant [19 x i8] c"rootParser != NULL\00", align 1
@__PRETTY_FUNCTION__.expat_heap_increase_tolerable = private unnamed_addr constant [66 x i8] c"_Bool expat_heap_increase_tolerable(XML_Parser, XmlBigCount, int)\00", align 1
@.str.321 = private unnamed_addr constant [13 x i8] c"increase > 0\00", align 1
@.str.322 = private unnamed_addr constant [13 x i8] c"newTotal > 0\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.323 = private unnamed_addr constant [120 x i8] c"expat: Allocations(%p): Direct %10llu, allocated %c%10llu to %10llu (%10llu peak), amplification %8.2f (xmlparse.c:%d)\0A\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"parser != NULL\00", align 1
@__PRETTY_FUNCTION__.expat_free = private unnamed_addr constant [41 x i8] c"void expat_free(XML_Parser, void *, int)\00", align 1
@.str.325 = private unnamed_addr constant [61 x i8] c"rootParser->m_alloc_tracker.bytesAllocated >= bytesAllocated\00", align 1
@.str.326 = private unnamed_addr constant [23 x i8] c"EXPAT_ACCOUNTING_DEBUG\00", align 1
@.str.327 = private unnamed_addr constant [19 x i8] c"EXPAT_ENTITY_DEBUG\00", align 1
@doProlog.atypeCDATA = internal constant [6 x i8] c"CDATA\00", align 1
@doProlog.atypeID = internal constant [3 x i8] c"ID\00", align 1
@doProlog.atypeIDREF = internal constant [6 x i8] c"IDREF\00", align 1
@doProlog.atypeIDREFS = internal constant [7 x i8] c"IDREFS\00", align 1
@doProlog.atypeENTITY = internal constant [7 x i8] c"ENTITY\00", align 1
@doProlog.atypeENTITIES = internal constant [9 x i8] c"ENTITIES\00", align 1
@doProlog.atypeNMTOKEN = internal constant [8 x i8] c"NMTOKEN\00", align 1
@doProlog.atypeNMTOKENS = internal constant [9 x i8] c"NMTOKENS\00", align 1
@doProlog.notationPrefix = internal constant [10 x i8] c"NOTATION(\00", align 1
@.str.328 = private unnamed_addr constant [24 x i8] c"dtd->scaffIndex != NULL\00", align 1
@__PRETTY_FUNCTION__.doProlog = private unnamed_addr constant [154 x i8] c"enum XML_Error doProlog(XML_Parser, const ENCODING *, const char *, const char *, int, const char *, const char **, XML_Bool, XML_Bool, enum XML_Account)\00", align 1
@.str.329 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.330 = private unnamed_addr constant [77 x i8] c"expat: Accounting(%p): Direct %10llu, indirect %10llu, amplification %8.2f%s\00", align 1
@__PRETTY_FUNCTION__.accountingReportDiff = private unnamed_addr constant [114 x i8] c"void accountingReportDiff(XML_Parser, unsigned int, const char *, const char *, ptrdiff_t, int, enum XML_Account)\00", align 1
@.str.331 = private unnamed_addr constant [41 x i8] c" (+%6ld bytes %s|%u, xmlparse.c:%d) %*s\22\00", align 1
@.str.332 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.333 = private unnamed_addr constant [4 x i8] c"EXP\00", align 1
@__const.accountingReportDiff.ellipis = private unnamed_addr constant [5 x i8] c"[..]\00", align 1
@.str.335 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.336 = private unnamed_addr constant [11 x i8] c" ABORTING\0A\00", align 1
@addBinding.xmlNamespace = internal unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 16
@addBinding.xmlnsNamespace = internal unnamed_addr constant [30 x i8] c"http://www.w3.org/2000/xmlns/\00", align 16
@.str.338 = private unnamed_addr constant [46 x i8] c"parser->m_openAttributeEntities == openEntity\00", align 1
@__PRETTY_FUNCTION__.storeAttributeValue = private unnamed_addr constant [136 x i8] c"enum XML_Error storeAttributeValue(XML_Parser, const ENCODING *, XML_Bool, const char *, const char *, STRING_POOL *, enum XML_Account)\00", align 1
@.str.339 = private unnamed_addr constant [42 x i8] c"parser->m_openValueEntities == openEntity\00", align 1
@__PRETTY_FUNCTION__.callStoreEntityValue = private unnamed_addr constant [112 x i8] c"enum XML_Error callStoreEntityValue(XML_Parser, const ENCODING *, const char *, const char *, enum XML_Account)\00", align 1
@__PRETTY_FUNCTION__.expat_realloc = private unnamed_addr constant [53 x i8] c"void *expat_realloc(XML_Parser, void *, size_t, int)\00", align 1
@.str.340 = private unnamed_addr constant [57 x i8] c"SIZE_MAX - sizeof(size_t) - EXPAT_MALLOC_PADDING >= size\00", align 1
@.str.341 = private unnamed_addr constant [72 x i8] c"(XmlBigCount)-1 - rootParser->m_alloc_tracker.bytesAllocated >= absDiff\00", align 1
@.str.342 = private unnamed_addr constant [54 x i8] c"rootParser->m_alloc_tracker.bytesAllocated >= absDiff\00", align 1
@.str.343 = private unnamed_addr constant [45 x i8] c"parser->m_openInternalEntities == openEntity\00", align 1
@__PRETTY_FUNCTION__.internalEntityProcessor = private unnamed_addr constant [94 x i8] c"enum XML_Error internalEntityProcessor(XML_Parser, const char *, const char *, const char **)\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"OPEN \00", align 1
@.str.345 = private unnamed_addr constant [85 x i8] c"expat: Entities(%p): Count %9u, depth %2u/%2u %*s%s%s; %s length %d (xmlparse.c:%d)\0A\00", align 1
@.str.346 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.347 = private unnamed_addr constant [20 x i8] c"EXPAT_ENTROPY_DEBUG\00", align 1
@.str.348 = private unnamed_addr constant [58 x i8] c"expat: Entropy: %s --> [0x%016llx, 0x%016llx] (16 bytes)\0A\00", align 1
@implicitContext = internal constant [41 x i8] c"xml=http://www.w3.org/XML/1998/namespace\00", align 16
@.str.349 = private unnamed_addr constant [15 x i8] c"arc4random_buf\00", align 1
@reltable.XML_ErrorString = private unnamed_addr constant [44 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.30 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.31 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.33 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.34 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.35 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.XML_ErrorString to i64)) to i32)], align 4
@reltable.unsignedCharToPrintable = private unnamed_addr constant [256 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.189 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.190 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.191 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.192 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.193 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.194 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.195 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.196 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.197 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.198 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.199 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.200 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.201 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.202 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.203 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.204 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.205 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.206 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.207 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.208 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.209 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.210 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.211 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.212 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.213 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.214 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.215 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.216 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.217 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.218 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.219 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.220 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.221 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.223 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.224 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.225 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.226 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.227 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.228 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.229 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.230 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.231 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.232 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.233 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.234 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.235 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.236 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.237 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.238 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.239 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.240 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.241 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.242 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.244 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.245 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.246 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.247 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.249 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.250 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.251 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.252 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.253 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.254 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.255 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.256 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.257 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.258 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.259 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.260 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.261 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.262 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.263 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.265 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.266 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.267 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.268 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.270 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.271 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.272 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.273 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.274 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.275 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.276 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.277 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.278 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.279 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.280 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.281 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.282 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.283 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.285 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.286 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.287 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.288 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.289 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.290 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.291 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.292 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.293 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.294 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.295 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.296 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.297 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.298 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.299 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.300 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.301 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.302 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.303 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.304 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.305 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.306 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.307 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.308 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.309 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.310 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.311 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.312 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.313 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.314 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.315 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.316 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.62 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.63 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.64 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.67 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.68 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.69 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.70 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.73 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.74 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.77 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.79 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.80 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.82 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.83 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.85 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.86 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.87 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.88 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.89 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.90 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.91 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.92 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.97 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.98 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.99 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.100 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.101 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.102 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.103 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.104 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.105 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.106 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.107 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.108 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.109 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.110 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.111 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.112 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.113 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.114 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.115 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.117 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.118 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.119 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.120 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.121 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.122 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.123 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.124 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.125 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.126 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.129 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.130 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.131 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.132 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.133 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.134 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.135 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.136 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.137 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.138 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.139 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.140 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.141 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.142 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.143 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.144 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.145 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.146 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.147 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.148 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.149 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.150 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.151 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.152 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.153 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.154 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.155 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.156 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.157 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.158 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.159 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.160 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.161 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.162 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.163 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.164 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.165 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.166 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.167 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.168 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.169 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.170 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.171 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.172 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.173 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.174 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.175 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.176 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.177 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.178 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.179 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.181 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.182 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.183 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.184 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.185 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.186 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.187 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.188 to i64), i64 ptrtoint (ptr @reltable.unsignedCharToPrintable to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_ParserCreate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @parserCreate(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_ParserCreate_MM(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @parserCreate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_ParserCreateNS(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i8 %1, ptr %3, align 1, !tbaa !5
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %4, align 1, !tbaa !5
  %5 = call fastcc ptr @parserCreate(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parserCreate(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %11, %8 ], [ %4, %5 ]
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 91
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !26

13:                                               ; preds = %8
  %14 = tail call fastcc zeroext i1 @expat_heap_increase_tolerable(ptr noundef nonnull %9, i64 noundef 1120, i32 noundef 1263)
  br i1 %14, label %15, label %184

15:                                               ; preds = %13, %5
  %16 = icmp eq ptr %1, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !28
  %19 = tail call ptr %18(i64 noundef 1120) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %184, label %21

21:                                               ; preds = %17
  store i64 1112, ptr %19, align 8, !tbaa !29
  %22 = getelementptr inbounds i8, ptr %19, i64 32
  %23 = load <2 x ptr>, ptr %1, align 8, !tbaa !30
  store <2 x ptr> %23, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.XML_Memory_Handling_Suite, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  br label %32

26:                                               ; preds = %15
  %27 = tail call noalias dereferenceable_or_null(1120) ptr @malloc(i64 noundef 1120) #26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %184, label %29

29:                                               ; preds = %26
  store i64 1112, ptr %27, align 8, !tbaa !29
  %30 = getelementptr inbounds i8, ptr %27, i64 32
  store ptr @malloc, ptr %30, align 8, !tbaa !28
  %31 = getelementptr inbounds i8, ptr %27, i64 40
  store ptr @realloc, ptr %31, align 8, !tbaa !32
  br label %32

32:                                               ; preds = %21, %29
  %33 = phi ptr [ %19, %21 ], [ %27, %29 ]
  %34 = phi ptr [ %25, %21 ], [ @free, %29 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 48
  store ptr %34, ptr %35, align 8, !tbaa !31
  %36 = getelementptr inbounds i8, ptr %33, i64 8
  %37 = getelementptr inbounds i8, ptr %33, i64 1048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %37, i8 0, i64 40, i1 false)
  br i1 %7, label %38, label %62

38:                                               ; preds = %32
  %39 = tail call ptr @getenv(ptr noundef nonnull @.str.317) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @__errno_location() #27
  store i32 0, ptr %42, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr null, ptr %6, align 8, !tbaa !30
  %43 = call i64 @strtoul(ptr noundef nonnull %39, ptr noundef nonnull %6, i32 noundef 10) #25
  %44 = load i32, ptr %42, align 4, !tbaa !33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load ptr, ptr %6, align 8, !tbaa !30
  %48 = icmp eq ptr %47, %39
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1, !tbaa !5
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %46, %41
  store i32 0, ptr %42, align 4, !tbaa !33
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i64 [ 0, %52 ], [ %43, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %55

55:                                               ; preds = %38, %53
  %56 = phi i64 [ %54, %53 ], [ 0, %38 ]
  %57 = getelementptr inbounds i8, ptr %33, i64 1064
  store i64 %56, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds i8, ptr %33, i64 1072
  store float 1.000000e+02, ptr %58, align 8, !tbaa !35
  %59 = getelementptr inbounds i8, ptr %33, i64 1080
  store i64 67108864, ptr %59, align 8, !tbaa !36
  %60 = getelementptr inbounds i8, ptr %33, i64 960
  store ptr null, ptr %60, align 8, !tbaa !8
  %61 = getelementptr inbounds i8, ptr %33, i64 1008
  store i64 0, ptr %61, align 8, !tbaa !37
  br label %64

62:                                               ; preds = %32
  %63 = getelementptr inbounds i8, ptr %33, i64 960
  store ptr %4, ptr %63, align 8, !tbaa !8
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %65
  %66 = phi ptr [ %68, %65 ], [ %36, %64 ]
  %67 = getelementptr inbounds %struct.XML_ParserStruct, ptr %66, i64 0, i32 91
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %65, !llvm.loop !26

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %66, i64 0, i32 99
  %72 = load i64, ptr %71, align 8, !tbaa !38
  %73 = icmp ult i64 %72, -1120
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @__assert_fail(ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.1, i32 noundef 1335, ptr noundef nonnull @__PRETTY_FUNCTION__.parserCreate) #28
  unreachable

75:                                               ; preds = %70
  %76 = add nuw i64 %72, 1120
  store i64 %76, ptr %71, align 8, !tbaa !38
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %66, i64 0, i32 99, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !34
  %79 = icmp ugt i64 %78, 1
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.XML_ParserStruct, ptr %66, i64 0, i32 99, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !39
  %83 = icmp ugt i64 %76, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i64 %76, ptr %81, align 8, !tbaa !39
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i64 [ %76, %84 ], [ %82, %80 ]
  %87 = uitofp i64 %76 to float
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %66, i64 0, i32 98
  %89 = load i64, ptr %88, align 8, !tbaa !37
  %90 = uitofp i64 %89 to float
  %91 = fdiv float %87, %90
  %92 = load ptr, ptr @stderr, align 8, !tbaa !30
  %93 = fpext float %91 to double
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.323, ptr noundef nonnull %66, i64 noundef %89, i32 noundef 43, i64 noundef 1120, i64 noundef %76, i64 noundef %86, double noundef %93, i32 noundef 1348) #29
  br label %95

95:                                               ; preds = %85, %75
  %96 = getelementptr inbounds i8, ptr %33, i64 24
  store ptr null, ptr %96, align 8, !tbaa !40
  %97 = getelementptr inbounds i8, ptr %33, i64 72
  store ptr null, ptr %97, align 8, !tbaa !41
  %98 = getelementptr inbounds i8, ptr %33, i64 776
  store i64 16, ptr %98, align 8, !tbaa !42
  %99 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %36, i64 noundef 512, i32 noundef 1358)
  %100 = getelementptr inbounds i8, ptr %33, i64 792
  store ptr %99, ptr %100, align 8, !tbaa !43
  %101 = icmp eq ptr %99, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef nonnull %36, i32 noundef 1360)
  br label %184

103:                                              ; preds = %95
  %104 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %36, i64 noundef 1024, i32 noundef 1371)
  %105 = getelementptr inbounds i8, ptr %33, i64 112
  store ptr %104, ptr %105, align 8, !tbaa !44
  %106 = icmp eq ptr %104, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load ptr, ptr %100, align 8, !tbaa !43
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef %108, i32 noundef 1373)
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef nonnull %36, i32 noundef 1377)
  br label %184

109:                                              ; preds = %103
  %110 = getelementptr inbounds i8, ptr %104, i64 1024
  %111 = getelementptr inbounds i8, ptr %33, i64 120
  store ptr %110, ptr %111, align 8, !tbaa !45
  %112 = icmp eq ptr %3, null
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %36, i64 noundef 360, i32 noundef 7425)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %143, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 4
  %118 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 4, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %117, i8 0, i64 40, i1 false)
  store ptr %36, ptr %118, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 5
  %120 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 5, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %119, i8 0, i64 40, i1 false)
  store ptr %36, ptr %120, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.HASH_TABLE, ptr %114, i64 0, i32 1
  store i8 0, ptr %121, align 8, !tbaa !47
  %122 = getelementptr inbounds %struct.HASH_TABLE, ptr %114, i64 0, i32 2
  store ptr null, ptr %114, align 8, !tbaa !49
  %123 = getelementptr inbounds %struct.HASH_TABLE, ptr %114, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %122, i8 0, i64 16, i1 false)
  store ptr %36, ptr %123, align 8, !tbaa !50
  %124 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 1
  %125 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 1, i32 1
  store i8 0, ptr %125, align 8, !tbaa !47
  %126 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 1, i32 2
  store ptr null, ptr %124, align 8, !tbaa !49
  %127 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, i8 0, i64 16, i1 false)
  store ptr %36, ptr %127, align 8, !tbaa !50
  %128 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 2
  %129 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 2, i32 1
  store i8 0, ptr %129, align 8, !tbaa !47
  %130 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 2, i32 2
  store ptr null, ptr %128, align 8, !tbaa !49
  %131 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 2, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %130, i8 0, i64 16, i1 false)
  store ptr %36, ptr %131, align 8, !tbaa !50
  %132 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 3
  %133 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 3, i32 1
  store i8 0, ptr %133, align 8, !tbaa !47
  %134 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 3, i32 2
  store ptr null, ptr %132, align 8, !tbaa !49
  %135 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 3, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  store ptr %36, ptr %135, align 8, !tbaa !50
  %136 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 10
  %137 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 10, i32 1
  store i8 0, ptr %137, align 8, !tbaa !47
  %138 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 10, i32 2
  store ptr null, ptr %136, align 8, !tbaa !49
  %139 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 10, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, i8 0, i64 16, i1 false)
  store ptr %36, ptr %139, align 8, !tbaa !50
  %140 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 11
  %141 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 13
  %142 = getelementptr inbounds %struct.DTD, ptr %114, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %140, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %141, i8 0, i64 32, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %142, align 8, !tbaa !5
  br label %147

143:                                              ; preds = %113
  %144 = getelementptr inbounds i8, ptr %33, i64 728
  store ptr null, ptr %144, align 8, !tbaa !51
  %145 = load ptr, ptr %105, align 8, !tbaa !44
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef %145, i32 noundef 1387)
  %146 = load ptr, ptr %100, align 8, !tbaa !43
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef %146, i32 noundef 1388)
  tail call fastcc void @expat_free(ptr noundef nonnull %36, ptr noundef nonnull %36, i32 noundef 1392)
  br label %184

147:                                              ; preds = %109, %116
  %148 = phi ptr [ %114, %116 ], [ %3, %109 ]
  %149 = getelementptr inbounds i8, ptr %33, i64 728
  store ptr %148, ptr %149, align 8, !tbaa !51
  %150 = getelementptr inbounds i8, ptr %33, i64 768
  store ptr null, ptr %150, align 8, !tbaa !52
  %151 = getelementptr inbounds i8, ptr %33, i64 752
  store ptr null, ptr %151, align 8, !tbaa !53
  %152 = getelementptr inbounds i8, ptr %33, i64 600
  store ptr null, ptr %152, align 8, !tbaa !54
  %153 = getelementptr inbounds i8, ptr %33, i64 616
  store ptr null, ptr %153, align 8, !tbaa !55
  %154 = getelementptr inbounds i8, ptr %33, i64 632
  store ptr null, ptr %154, align 8, !tbaa !56
  %155 = getelementptr inbounds i8, ptr %33, i64 936
  %156 = getelementptr inbounds i8, ptr %33, i64 272
  store ptr null, ptr %156, align 8, !tbaa !57
  %157 = getelementptr inbounds i8, ptr %33, i64 504
  store ptr null, ptr %157, align 8, !tbaa !58
  %158 = getelementptr inbounds i8, ptr %33, i64 952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %155, i8 0, i64 16, i1 false)
  store i8 33, ptr %158, align 8, !tbaa !59
  %159 = getelementptr inbounds i8, ptr %33, i64 480
  store i8 0, ptr %159, align 8, !tbaa !60
  %160 = getelementptr inbounds i8, ptr %33, i64 481
  store i8 0, ptr %160, align 1, !tbaa !61
  %161 = getelementptr inbounds i8, ptr %33, i64 800
  %162 = getelementptr inbounds i8, ptr %33, i64 472
  store ptr null, ptr %162, align 8, !tbaa !62
  %163 = getelementptr inbounds i8, ptr %33, i64 840
  %164 = getelementptr inbounds i8, ptr %33, i64 880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %163, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %161, i8 0, i64 17, i1 false)
  store ptr %36, ptr %164, align 8, !tbaa !46
  %165 = getelementptr inbounds i8, ptr %33, i64 888
  %166 = getelementptr inbounds i8, ptr %33, i64 928
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %165, i8 0, i64 40, i1 false)
  store ptr %36, ptr %166, align 8, !tbaa !46
  tail call fastcc void @parserInit(ptr noundef nonnull %36, ptr noundef %0)
  %167 = icmp eq ptr %0, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %147
  %169 = load ptr, ptr %162, align 8, !tbaa !62
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  br i1 %112, label %174, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds i8, ptr %33, i64 728
  store ptr null, ptr %173, align 8, !tbaa !51
  br label %174

174:                                              ; preds = %172, %171
  tail call void @XML_ParserFree(ptr noundef nonnull %36)
  br label %184

175:                                              ; preds = %168, %147
  %176 = icmp eq ptr %2, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %175
  store i8 1, ptr %159, align 8, !tbaa !60
  %178 = tail call ptr @XmlGetUtf8InternalEncodingNS() #25
  %179 = getelementptr inbounds i8, ptr %33, i64 464
  store ptr %178, ptr %179, align 8, !tbaa !63
  %180 = load i8, ptr %2, align 1, !tbaa !5
  store i8 %180, ptr %158, align 8, !tbaa !59
  br label %184

181:                                              ; preds = %175
  %182 = tail call ptr @XmlGetUtf8InternalEncoding() #25
  %183 = getelementptr inbounds i8, ptr %33, i64 464
  store ptr %182, ptr %183, align 8, !tbaa !63
  br label %184

184:                                              ; preds = %26, %17, %102, %107, %143, %174, %181, %177, %13
  %185 = phi ptr [ null, %13 ], [ null, %102 ], [ null, %107 ], [ null, %174 ], [ null, %143 ], [ %36, %181 ], [ %36, %177 ], [ null, %17 ], [ null, %26 ]
  ret ptr %185
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @XML_ParserReset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %307, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %307

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 75
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 77
  %15 = load ptr, ptr %13, align 8, !tbaa !53
  br label %16

16:                                               ; preds = %12, %32
  %17 = phi ptr [ %15, %12 ], [ %18, %32 ]
  %18 = phi ptr [ %10, %12 ], [ %19, %32 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  store ptr %17, ptr %18, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %14, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %24, %23 ], [ %27, %25 ]
  %27 = phi ptr [ %21, %23 ], [ %29, %25 ]
  %28 = getelementptr inbounds %struct.binding, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  store ptr %26, ptr %28, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !71

31:                                               ; preds = %25
  store ptr %27, ptr %14, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %16, %31
  store ptr null, ptr %20, align 8, !tbaa !68
  %33 = icmp eq ptr %19, null
  br i1 %33, label %34, label %16, !llvm.loop !72

34:                                               ; preds = %32
  store ptr %18, ptr %13, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %34, %8
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 54
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %41, %39 ], [ %44, %42 ]
  %44 = phi ptr [ %37, %39 ], [ %46, %42 ]
  %45 = getelementptr inbounds %struct.open_internal_entity, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  store ptr %43, ptr %45, align 8, !tbaa !74
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %42, !llvm.loop !76

48:                                               ; preds = %42
  store ptr %44, ptr %40, align 8, !tbaa !54
  br label %49

49:                                               ; preds = %48, %35
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 55
  %51 = load ptr, ptr %50, align 8, !tbaa !77
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 56
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi ptr [ %55, %53 ], [ %58, %56 ]
  %58 = phi ptr [ %51, %53 ], [ %60, %56 ]
  %59 = getelementptr inbounds %struct.open_internal_entity, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !74
  store ptr %57, ptr %59, align 8, !tbaa !74
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %56, !llvm.loop !78

62:                                               ; preds = %56
  store ptr %58, ptr %54, align 8, !tbaa !55
  br label %63

63:                                               ; preds = %62, %49
  %64 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 57
  %65 = load ptr, ptr %64, align 8, !tbaa !79
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 58
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %69, %67 ], [ %72, %70 ]
  %72 = phi ptr [ %65, %67 ], [ %74, %70 ]
  %73 = getelementptr inbounds %struct.open_internal_entity, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !74
  store ptr %71, ptr %73, align 8, !tbaa !74
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %70, !llvm.loop !80

76:                                               ; preds = %70
  store ptr %72, ptr %68, align 8, !tbaa !56
  br label %77

77:                                               ; preds = %76, %63
  %78 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 76
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 77
  %83 = load ptr, ptr %82, align 8, !tbaa !52
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi ptr [ %83, %81 ], [ %86, %84 ]
  %86 = phi ptr [ %79, %81 ], [ %88, %84 ]
  %87 = getelementptr inbounds %struct.binding, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  store ptr %85, ptr %87, align 8, !tbaa !69
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %84, !llvm.loop !71

90:                                               ; preds = %84
  store ptr %86, ptr %82, align 8, !tbaa !52
  br label %91

91:                                               ; preds = %77, %90
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 43
  %93 = load ptr, ptr %92, align 8, !tbaa !82
  tail call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef %93, i32 noundef 1597)
  %94 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 46
  %95 = load ptr, ptr %94, align 8, !tbaa !83
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 44
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  tail call void %95(ptr noundef %99) #25
  br label %100

100:                                              ; preds = %97, %91
  %101 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %102 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = icmp eq ptr %103, null
  %105 = load ptr, ptr %101, align 8, !tbaa !86
  br i1 %104, label %106, label %107

106:                                              ; preds = %100
  store ptr %105, ptr %102, align 8, !tbaa !85
  br label %114

107:                                              ; preds = %100
  %108 = icmp eq ptr %105, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %107, %109
  %110 = phi ptr [ %111, %109 ], [ %103, %107 ]
  %111 = phi ptr [ %112, %109 ], [ %105, %107 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !30
  store ptr %110, ptr %111, align 8, !tbaa !30
  store ptr %111, ptr %102, align 8, !tbaa !85
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %109, !llvm.loop !87

114:                                              ; preds = %109, %106, %107
  store ptr null, ptr %101, align 8, !tbaa !86
  %115 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %115, i8 0, i64 24, i1 false)
  %116 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %117 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !85
  %119 = icmp eq ptr %118, null
  %120 = load ptr, ptr %116, align 8, !tbaa !86
  br i1 %119, label %121, label %122

121:                                              ; preds = %114
  store ptr %120, ptr %117, align 8, !tbaa !85
  br label %129

122:                                              ; preds = %114
  %123 = icmp eq ptr %120, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %122, %124
  %125 = phi ptr [ %126, %124 ], [ %118, %122 ]
  %126 = phi ptr [ %127, %124 ], [ %120, %122 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  store ptr %125, ptr %126, align 8, !tbaa !30
  store ptr %126, ptr %117, align 8, !tbaa !85
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %124, !llvm.loop !87

129:                                              ; preds = %124, %121, %122
  store ptr null, ptr %116, align 8, !tbaa !86
  %130 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %130, i8 0, i64 24, i1 false)
  %131 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %132 = load ptr, ptr %131, align 8, !tbaa !62
  tail call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef %132, i32 noundef 1602)
  store ptr null, ptr %131, align 8, !tbaa !62
  tail call fastcc void @parserInit(ptr noundef nonnull %0, ptr noundef %1)
  %133 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %134 = load ptr, ptr %133, align 8, !tbaa !51
  %135 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !49
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 1, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !88
  %141 = getelementptr inbounds ptr, ptr %136, i64 %140
  br label %142

142:                                              ; preds = %138, %129
  %143 = phi ptr [ %141, %138 ], [ null, %129 ]
  br label %144

144:                                              ; preds = %151, %142
  %145 = phi ptr [ %136, %142 ], [ %148, %151 ]
  %146 = icmp eq ptr %145, %143
  br i1 %146, label %174, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds ptr, ptr %145, i64 1
  %149 = load ptr, ptr %145, align 8, !tbaa !30
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %168
  br label %144

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %149, i64 0, i32 6
  %154 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %149, i64 0, i32 6, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !88
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %149, i64 0, i32 6, i32 4
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ 0, %157 ], [ %165, %159 ]
  %161 = load ptr, ptr %158, align 8, !tbaa !50
  %162 = load ptr, ptr %153, align 8, !tbaa !49
  %163 = getelementptr inbounds ptr, ptr %162, i64 %160
  %164 = load ptr, ptr %163, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %161, ptr noundef %164, i32 noundef 7874)
  %165 = add nuw i64 %160, 1
  %166 = load i64, ptr %154, align 8, !tbaa !88
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %159, label %168, !llvm.loop !89

168:                                              ; preds = %159, %152
  %169 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %149, i64 0, i32 6, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !50
  %171 = load ptr, ptr %153, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %170, ptr noundef %171, i32 noundef 7875)
  %172 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %149, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !90
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %173, i32 noundef 7464)
  br label %151

174:                                              ; preds = %144
  %175 = getelementptr inbounds %struct.HASH_TABLE, ptr %134, i64 0, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !88
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.HASH_TABLE, ptr %134, i64 0, i32 4
  br label %180

180:                                              ; preds = %180, %178
  %181 = phi i64 [ 0, %178 ], [ %188, %180 ]
  %182 = load ptr, ptr %179, align 8, !tbaa !50
  %183 = load ptr, ptr %134, align 8, !tbaa !49
  %184 = getelementptr inbounds ptr, ptr %183, i64 %181
  %185 = load ptr, ptr %184, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %182, ptr noundef %185, i32 noundef 7864)
  %186 = load ptr, ptr %134, align 8, !tbaa !49
  %187 = getelementptr inbounds ptr, ptr %186, i64 %181
  store ptr null, ptr %187, align 8, !tbaa !30
  %188 = add nuw i64 %181, 1
  %189 = load i64, ptr %175, align 8, !tbaa !88
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %180, label %191, !llvm.loop !92

191:                                              ; preds = %180, %174
  %192 = getelementptr inbounds %struct.HASH_TABLE, ptr %134, i64 0, i32 3
  store i64 0, ptr %192, align 8, !tbaa !93
  %193 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 9
  store i8 0, ptr %193, align 1, !tbaa !94
  %194 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 10
  %195 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 10, i32 2
  %196 = load i64, ptr %195, align 8, !tbaa !88
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %211, label %198

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 10, i32 4
  br label %200

200:                                              ; preds = %200, %198
  %201 = phi i64 [ 0, %198 ], [ %208, %200 ]
  %202 = load ptr, ptr %199, align 8, !tbaa !50
  %203 = load ptr, ptr %194, align 8, !tbaa !49
  %204 = getelementptr inbounds ptr, ptr %203, i64 %201
  %205 = load ptr, ptr %204, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %202, ptr noundef %205, i32 noundef 7864)
  %206 = load ptr, ptr %194, align 8, !tbaa !49
  %207 = getelementptr inbounds ptr, ptr %206, i64 %201
  store ptr null, ptr %207, align 8, !tbaa !30
  %208 = add nuw i64 %201, 1
  %209 = load i64, ptr %195, align 8, !tbaa !88
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %200, label %211, !llvm.loop !92

211:                                              ; preds = %200, %191
  %212 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 10, i32 3
  store i64 0, ptr %212, align 8, !tbaa !93
  %213 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 1, i32 2
  %214 = load i64, ptr %213, align 8, !tbaa !88
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 1, i32 4
  br label %218

218:                                              ; preds = %218, %216
  %219 = phi i64 [ 0, %216 ], [ %226, %218 ]
  %220 = load ptr, ptr %217, align 8, !tbaa !50
  %221 = load ptr, ptr %135, align 8, !tbaa !49
  %222 = getelementptr inbounds ptr, ptr %221, i64 %219
  %223 = load ptr, ptr %222, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %220, ptr noundef %223, i32 noundef 7864)
  %224 = load ptr, ptr %135, align 8, !tbaa !49
  %225 = getelementptr inbounds ptr, ptr %224, i64 %219
  store ptr null, ptr %225, align 8, !tbaa !30
  %226 = add nuw i64 %219, 1
  %227 = load i64, ptr %213, align 8, !tbaa !88
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %218, label %229, !llvm.loop !92

229:                                              ; preds = %218, %211
  %230 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 1, i32 3
  store i64 0, ptr %230, align 8, !tbaa !93
  %231 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 2
  %232 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 2, i32 2
  %233 = load i64, ptr %232, align 8, !tbaa !88
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 2, i32 4
  br label %237

237:                                              ; preds = %237, %235
  %238 = phi i64 [ 0, %235 ], [ %245, %237 ]
  %239 = load ptr, ptr %236, align 8, !tbaa !50
  %240 = load ptr, ptr %231, align 8, !tbaa !49
  %241 = getelementptr inbounds ptr, ptr %240, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %239, ptr noundef %242, i32 noundef 7864)
  %243 = load ptr, ptr %231, align 8, !tbaa !49
  %244 = getelementptr inbounds ptr, ptr %243, i64 %238
  store ptr null, ptr %244, align 8, !tbaa !30
  %245 = add nuw i64 %238, 1
  %246 = load i64, ptr %232, align 8, !tbaa !88
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %237, label %248, !llvm.loop !92

248:                                              ; preds = %237, %229
  %249 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 2, i32 3
  store i64 0, ptr %249, align 8, !tbaa !93
  %250 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 3
  %251 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 3, i32 2
  %252 = load i64, ptr %251, align 8, !tbaa !88
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 3, i32 4
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i64 [ 0, %254 ], [ %264, %256 ]
  %258 = load ptr, ptr %255, align 8, !tbaa !50
  %259 = load ptr, ptr %250, align 8, !tbaa !49
  %260 = getelementptr inbounds ptr, ptr %259, i64 %257
  %261 = load ptr, ptr %260, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %258, ptr noundef %261, i32 noundef 7864)
  %262 = load ptr, ptr %250, align 8, !tbaa !49
  %263 = getelementptr inbounds ptr, ptr %262, i64 %257
  store ptr null, ptr %263, align 8, !tbaa !30
  %264 = add nuw i64 %257, 1
  %265 = load i64, ptr %251, align 8, !tbaa !88
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %256, label %267, !llvm.loop !92

267:                                              ; preds = %256, %248
  %268 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 3, i32 3
  store i64 0, ptr %268, align 8, !tbaa !93
  %269 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 4
  %270 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 4, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !85
  %272 = icmp eq ptr %271, null
  %273 = load ptr, ptr %269, align 8, !tbaa !86
  br i1 %272, label %274, label %275

274:                                              ; preds = %267
  store ptr %273, ptr %270, align 8, !tbaa !85
  br label %282

275:                                              ; preds = %267
  %276 = icmp eq ptr %273, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %275, %277
  %278 = phi ptr [ %279, %277 ], [ %271, %275 ]
  %279 = phi ptr [ %280, %277 ], [ %273, %275 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !30
  store ptr %278, ptr %279, align 8, !tbaa !30
  store ptr %279, ptr %270, align 8, !tbaa !85
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %277, !llvm.loop !87

282:                                              ; preds = %277, %275, %274
  store ptr null, ptr %269, align 8, !tbaa !86
  %283 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 4, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %283, i8 0, i64 24, i1 false)
  %284 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 5
  %285 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 5, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !85
  %287 = icmp eq ptr %286, null
  %288 = load ptr, ptr %284, align 8, !tbaa !86
  br i1 %287, label %289, label %290

289:                                              ; preds = %282
  store ptr %288, ptr %285, align 8, !tbaa !85
  br label %297

290:                                              ; preds = %282
  %291 = icmp eq ptr %288, null
  br i1 %291, label %297, label %292

292:                                              ; preds = %290, %292
  %293 = phi ptr [ %294, %292 ], [ %286, %290 ]
  %294 = phi ptr [ %295, %292 ], [ %288, %290 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !30
  store ptr %293, ptr %294, align 8, !tbaa !30
  store ptr %294, ptr %285, align 8, !tbaa !85
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %292, !llvm.loop !87

297:                                              ; preds = %292, %289, %290
  store ptr null, ptr %284, align 8, !tbaa !86
  %298 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %298, i8 0, i64 24, i1 false)
  %299 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 11
  %300 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %299, i8 0, i64 17, i1 false)
  %301 = load ptr, ptr %300, align 8, !tbaa !97
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %301, i32 noundef 7481)
  store ptr null, ptr %300, align 8, !tbaa !97
  %302 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 13
  %303 = load ptr, ptr %302, align 8, !tbaa !98
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %303, i32 noundef 7483)
  %304 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %302, i8 0, i64 24, i1 false)
  store i8 1, ptr %304, align 8, !tbaa !99
  %305 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 7
  store i8 0, ptr %305, align 1, !tbaa !100
  %306 = getelementptr inbounds %struct.DTD, ptr %134, i64 0, i32 8
  store i8 0, ptr %306, align 2, !tbaa !101
  br label %307

307:                                              ; preds = %4, %2, %297
  %308 = phi i8 [ 1, %297 ], [ 0, %2 ], [ 0, %4 ]
  ret i8 %308
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expat_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.1, i32 noundef 941, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_free) #28
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %11, %8 ], [ %0, %6 ]
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 91
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !26

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %1, i64 -8
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = add i64 %15, 8
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 99
  %18 = load i64, ptr %17, align 8, !tbaa !38
  %19 = icmp ult i64 %18, %16
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void @__assert_fail(ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.1, i32 noundef 957, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_free) #28
  unreachable

21:                                               ; preds = %13
  %22 = sub i64 %18, %16
  store i64 %22, ptr %17, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 99, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !34
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 99, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !39
  %29 = uitofp i64 %22 to float
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %9, i64 0, i32 98
  %31 = load i64, ptr %30, align 8, !tbaa !37
  %32 = uitofp i64 %31 to float
  %33 = fdiv float %29, %32
  %34 = load ptr, ptr @stderr, align 8, !tbaa !30
  %35 = fpext float %33 to double
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.323, ptr noundef nonnull %9, i64 noundef %31, i32 noundef 45, i64 noundef %16, i64 noundef %22, i64 noundef %28, double noundef %35, i32 noundef %2) #29
  br label %37

37:                                               ; preds = %26, %21
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !102
  tail call void %39(ptr noundef nonnull %14) #25
  br label %40

40:                                               ; preds = %6, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parserInit(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @prologInitProcessor, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47
  tail call void @XmlPrologStateInit(ptr noundef nonnull %6) #25
  %7 = icmp eq ptr %1, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %10 = add i64 %9, 1
  %11 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %10, i32 noundef 8420)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 1 %1, i64 %10, i1 false)
  br label %14

14:                                               ; preds = %8, %13
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  store ptr %11, ptr %15, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 73
  store ptr null, ptr %17, align 8, !tbaa !104
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 38
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %20 = tail call i32 @XmlInitEncoding(ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef null) #25
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 14
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %21, i8 0, i64 128, i1 false)
  store ptr %0, ptr %22, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 31
  store ptr null, ptr %23, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 33
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  store ptr %26, ptr %28, align 8, !tbaa !108
  %29 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  store i8 1, ptr %30, align 8, !tbaa !109
  %31 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 11
  store i32 0, ptr %31, align 4, !tbaa !110
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 61
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 0, ptr %34, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 55
  store ptr null, ptr %36, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 57
  store ptr null, ptr %37, align 8, !tbaa !79
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %32, i8 0, i64 74, i1 false)
  store i8 1, ptr %38, align 8, !tbaa !112
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 60
  store i32 0, ptr %39, align 4, !tbaa !113
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  store ptr null, ptr %40, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 76
  store ptr null, ptr %41, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 79
  store i32 0, ptr %42, align 8, !tbaa !114
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 43
  %44 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 46
  store ptr null, ptr %44, align 8, !tbaa !83
  %45 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  store i32 0, ptr %45, align 8, !tbaa !115
  %46 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  store i8 0, ptr %46, align 8, !tbaa !116
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 93
  store i8 0, ptr %47, align 8, !tbaa !117
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 94
  store i8 0, ptr %48, align 1, !tbaa !118
  %49 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 95
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %50, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %49, i8 0, i64 21, i1 false)
  %51 = tail call ptr @getenv(ptr noundef nonnull @.str.326) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %16
  %54 = tail call ptr @__errno_location() #27
  store i32 0, ptr %54, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !30
  %55 = call i64 @strtoul(ptr noundef nonnull %51, ptr noundef nonnull %4, i32 noundef 10) #25
  %56 = load i32, ptr %54, align 4, !tbaa !33
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load ptr, ptr %4, align 8, !tbaa !30
  %60 = icmp eq ptr %59, %51
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %59, align 1, !tbaa !5
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %58, %53
  store i32 0, ptr %54, align 4, !tbaa !33
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i64 [ 0, %64 ], [ %55, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %67

67:                                               ; preds = %16, %65
  %68 = phi i64 [ %66, %65 ], [ 0, %16 ]
  %69 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 2
  store i64 %68, ptr %69, align 8, !tbaa !119
  %70 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 3
  store float 1.000000e+02, ptr %70, align 8, !tbaa !120
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 4
  store i64 8388608, ptr %71, align 8, !tbaa !121
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false)
  %73 = tail call ptr @getenv(ptr noundef nonnull @.str.327) #25
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %67
  %76 = tail call ptr @__errno_location() #27
  store i32 0, ptr %76, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !30
  %77 = call i64 @strtoul(ptr noundef nonnull %73, ptr noundef nonnull %3, i32 noundef 10) #25
  %78 = load i32, ptr %76, align 4, !tbaa !33
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load ptr, ptr %3, align 8, !tbaa !30
  %82 = icmp eq ptr %81, %73
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i8, ptr %81, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %80, %75
  store i32 0, ptr %76, align 4, !tbaa !33
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i64 [ 0, %86 ], [ %77, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %89

89:                                               ; preds = %67, %87
  %90 = phi i64 [ %88, %87 ], [ 0, %67 ]
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 100, i32 3
  store i64 %90, ptr %91, align 8, !tbaa !122
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_SetEncoding(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %57, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %17, %14 ], [ %0, %10 ]
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %15, i64 0, i32 91
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !26

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %12, i64 -8
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = add i64 %21, 8
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %15, i64 0, i32 99
  %24 = load i64, ptr %23, align 8, !tbaa !38
  %25 = icmp ult i64 %24, %22
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @__assert_fail(ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.1, i32 noundef 957, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_free) #28
  unreachable

27:                                               ; preds = %19
  %28 = sub i64 %24, %22
  store i64 %28, ptr %23, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.XML_ParserStruct, ptr %15, i64 0, i32 99, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !34
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %15, i64 0, i32 99, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !39
  %35 = uitofp i64 %28 to float
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %15, i64 0, i32 98
  %37 = load i64, ptr %36, align 8, !tbaa !37
  %38 = uitofp i64 %37 to float
  %39 = fdiv float %35, %38
  %40 = load ptr, ptr @stderr, align 8, !tbaa !30
  %41 = fpext float %39 to double
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.323, ptr noundef nonnull %15, i64 noundef %37, i32 noundef 45, i64 noundef %22, i64 noundef %28, i64 noundef %34, double noundef %41, i32 noundef 1634) #29
  br label %43

43:                                               ; preds = %32, %27
  %44 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !102
  tail call void %45(ptr noundef nonnull %20) #25
  br label %46

46:                                               ; preds = %10, %43
  %47 = icmp eq ptr %1, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %50 = add i64 %49, 1
  %51 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %50, i32 noundef 8420)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %51, ptr nonnull align 1 %1, i64 %50, i1 false)
  br label %54

54:                                               ; preds = %48, %46, %53
  %55 = phi ptr [ %51, %53 ], [ null, %46 ], [ null, %48 ]
  %56 = phi i32 [ 1, %53 ], [ 1, %46 ], [ 0, %48 ]
  store ptr %55, ptr %11, align 8, !tbaa !62
  br label %57

57:                                               ; preds = %54, %4, %2
  %58 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %56, %54 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_ExternalEntityParserCreate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i64], align 8
  %5 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %565, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 14
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !30
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 16
  %13 = load <2 x ptr>, ptr %12, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 18
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 20
  %17 = load <2 x ptr>, ptr %16, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 24
  %19 = load <2 x ptr>, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 26
  %21 = load <2 x ptr>, ptr %20, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 28
  %23 = load <2 x ptr>, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 31
  %25 = load <2 x ptr>, ptr %24, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 45
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 33
  %29 = load <2 x ptr>, ptr %28, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 35
  %31 = load <2 x ptr>, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 68
  %33 = load ptr, ptr %32, align 8, !tbaa !123
  %34 = load ptr, ptr %0, align 8, !tbaa !124
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !125
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 59
  %38 = load i8, ptr %37, align 8, !tbaa !112
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 95
  %42 = load i32, ptr %41, align 4, !tbaa !126
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !127
  %45 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 42
  %46 = load i8, ptr %45, align 1, !tbaa !61
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !128
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 97
  %49 = load i8, ptr %48, align 8, !tbaa !129
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 10
  %51 = load i8, ptr %50, align 8, !tbaa !109
  %52 = icmp eq ptr %1, null
  %53 = select i1 %52, ptr %9, ptr null
  %54 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %55 = load i8, ptr %54, align 8, !tbaa !60
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  %58 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  %59 = load i8, ptr %58, align 8, !tbaa !59
  store i8 %59, ptr %5, align 1, !tbaa !5
  %60 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 0, ptr %60, align 1, !tbaa !5
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %62 = call fastcc ptr @parserCreate(ptr noundef %2, ptr noundef nonnull %61, ptr noundef nonnull %5, ptr noundef %53, ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  br label %66

63:                                               ; preds = %7
  %64 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %65 = tail call fastcc ptr @parserCreate(ptr noundef %2, ptr noundef nonnull %64, ptr noundef null, ptr noundef %53, ptr noundef nonnull %0)
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %62, %57 ], [ %65, %63 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %565, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 14
  store <2 x ptr> %11, ptr %70, align 8, !tbaa !30
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 16
  store <2 x ptr> %13, ptr %71, align 8, !tbaa !30
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 18
  store <2 x ptr> %15, ptr %72, align 8, !tbaa !30
  %73 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 20
  store <2 x ptr> %17, ptr %73, align 8, !tbaa !30
  %74 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 24
  store <2 x ptr> %19, ptr %74, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 26
  store <2 x ptr> %21, ptr %75, align 8, !tbaa !30
  %76 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 28
  store <2 x ptr> %23, ptr %76, align 8, !tbaa !30
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 31
  store <2 x ptr> %25, ptr %77, align 8, !tbaa !30
  %78 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 45
  store ptr %27, ptr %78, align 8, !tbaa !58
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 33
  store <2 x ptr> %29, ptr %79, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 35
  store <2 x ptr> %31, ptr %80, align 8, !tbaa !30
  %81 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 68
  store ptr %33, ptr %81, align 8, !tbaa !123
  store ptr %34, ptr %67, align 8, !tbaa !124
  %82 = icmp eq ptr %34, %36
  %83 = select i1 %82, ptr %34, ptr %67
  %84 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 1
  store ptr %83, ptr %84, align 8
  %85 = icmp eq ptr %40, %0
  br i1 %85, label %88, label %86

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 30
  store ptr %40, ptr %87, align 8, !tbaa !105
  br label %88

88:                                               ; preds = %86, %69
  %89 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 59
  store i8 %38, ptr %89, align 8, !tbaa !112
  %90 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 42
  store i8 %46, ptr %90, align 1, !tbaa !61
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !128
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 97
  store i8 %49, ptr %92, align 8, !tbaa !129
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 10
  store i8 %51, ptr %93, align 8, !tbaa !109
  %94 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 91
  store ptr %0, ptr %94, align 8, !tbaa !8
  %95 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 95
  store i32 %42, ptr %95, align 4, !tbaa !126
  %96 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 47, i32 5
  store i32 %44, ptr %96, align 8, !tbaa !127
  br i1 %52, label %561, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 72
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !49
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 3, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !88
  %106 = getelementptr inbounds ptr, ptr %101, i64 %105
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi ptr [ %106, %103 ], [ null, %97 ]
  %109 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 4
  %110 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 4, i32 2
  %111 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 4, i32 3
  %112 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 4, i32 4
  %113 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 3
  br label %114

114:                                              ; preds = %121, %107
  %115 = phi ptr [ %101, %107 ], [ %118, %121 ]
  %116 = icmp eq ptr %115, %108
  br i1 %116, label %144, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds ptr, ptr %115, i64 1
  %119 = load ptr, ptr %115, align 8, !tbaa !30
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %141
  br label %114

122:                                              ; preds = %117
  %123 = load ptr, ptr %119, align 8, !tbaa !130
  %124 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %123) #30
  %125 = add i64 %124, 1
  br label %126

126:                                              ; preds = %133, %122
  %127 = load ptr, ptr %110, align 8, !tbaa !131
  %128 = load ptr, ptr %111, align 8, !tbaa !132
  %129 = ptrtoint ptr %127 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp ult i64 %131, %125
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %109), !range !133
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %558, label %126

136:                                              ; preds = %126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %123, i64 %125, i1 false)
  %137 = load ptr, ptr %111, align 8, !tbaa !132
  %138 = getelementptr inbounds i8, ptr %137, i64 %125
  store ptr %138, ptr %111, align 8, !tbaa !132
  %139 = load ptr, ptr %112, align 8, !tbaa !134
  store ptr %138, ptr %112, align 8, !tbaa !134
  %140 = icmp eq ptr %139, null
  br i1 %140, label %558, label %141

141:                                              ; preds = %136
  %142 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %113, ptr noundef nonnull %139, i64 noundef 16)
  %143 = icmp eq ptr %142, null
  br i1 %143, label %558, label %121

144:                                              ; preds = %114
  %145 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 2, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !88
  %151 = getelementptr inbounds ptr, ptr %146, i64 %150
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi ptr [ %151, %148 ], [ null, %144 ]
  %154 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 2
  %155 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 11
  %156 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 3, i32 2
  %157 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 3, i32 1
  %158 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 11
  br label %159

159:                                              ; preds = %166, %152
  %160 = phi ptr [ %146, %152 ], [ %163, %166 ]
  %161 = icmp eq ptr %160, %153
  br i1 %161, label %261, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds ptr, ptr %160, i64 1
  %164 = load ptr, ptr %160, align 8, !tbaa !30
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %258, %201
  br label %159

167:                                              ; preds = %162
  %168 = load ptr, ptr %111, align 8, !tbaa !132
  %169 = load ptr, ptr %110, align 8, !tbaa !131
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %109), !range !133
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %558, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr %111, align 8, !tbaa !132
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi ptr [ %175, %174 ], [ %168, %167 ]
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %178, ptr %111, align 8, !tbaa !132
  store i8 0, ptr %177, align 1, !tbaa !5
  %179 = load ptr, ptr %164, align 8, !tbaa !135
  %180 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %179) #30
  %181 = add i64 %180, 1
  br label %182

182:                                              ; preds = %189, %176
  %183 = load ptr, ptr %110, align 8, !tbaa !131
  %184 = load ptr, ptr %111, align 8, !tbaa !132
  %185 = ptrtoint ptr %183 to i64
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %185, %186
  %188 = icmp ult i64 %187, %181
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %109), !range !133
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %558, label %182

192:                                              ; preds = %182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %184, ptr align 1 %179, i64 %181, i1 false)
  %193 = load ptr, ptr %111, align 8, !tbaa !132
  %194 = getelementptr inbounds i8, ptr %193, i64 %181
  store ptr %194, ptr %111, align 8, !tbaa !132
  %195 = load ptr, ptr %112, align 8, !tbaa !134
  store ptr %194, ptr %112, align 8, !tbaa !134
  %196 = icmp eq ptr %195, null
  br i1 %196, label %558, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds i8, ptr %195, i64 1
  %199 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %154, ptr noundef nonnull %198, i64 noundef 24)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %558, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.attribute_id, ptr %164, i64 0, i32 2
  %203 = load i8, ptr %202, align 8, !tbaa !137
  %204 = getelementptr inbounds %struct.attribute_id, ptr %199, i64 0, i32 2
  store i8 %203, ptr %204, align 8, !tbaa !137
  %205 = getelementptr inbounds %struct.attribute_id, ptr %164, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !138
  %207 = icmp eq ptr %206, null
  br i1 %207, label %166, label %208

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.attribute_id, ptr %164, i64 0, i32 3
  %210 = load i8, ptr %209, align 1, !tbaa !139
  %211 = getelementptr inbounds %struct.attribute_id, ptr %199, i64 0, i32 3
  store i8 %210, ptr %211, align 1, !tbaa !139
  %212 = icmp eq ptr %206, %155
  br i1 %212, label %258, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %206, align 8, !tbaa !130
  %215 = load i64, ptr %156, align 8, !tbaa !88
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %258, label %217

217:                                              ; preds = %213
  %218 = call fastcc i64 @hash(ptr noundef %0, ptr noundef %214)
  %219 = load i64, ptr %156, align 8, !tbaa !88
  %220 = add i64 %219, -1
  %221 = and i64 %220, %218
  %222 = load ptr, ptr %113, align 8, !tbaa !49
  %223 = getelementptr inbounds ptr, ptr %222, i64 %221
  %224 = load ptr, ptr %223, align 8, !tbaa !30
  %225 = icmp eq ptr %224, null
  br i1 %225, label %258, label %226

226:                                              ; preds = %217
  %227 = sub i64 0, %219
  %228 = and i64 %218, %227
  %229 = lshr i64 %220, 2
  br label %230

230:                                              ; preds = %248, %226
  %231 = phi ptr [ %224, %226 ], [ %256, %248 ]
  %232 = phi i64 [ %221, %226 ], [ %254, %248 ]
  %233 = phi i8 [ 0, %226 ], [ %249, %248 ]
  %234 = load ptr, ptr %231, align 8, !tbaa !140
  %235 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %214, ptr noundef nonnull dereferenceable(1) %234) #30
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %258, label %237

237:                                              ; preds = %230
  %238 = icmp eq i8 %233, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %237
  %240 = load i8, ptr %157, align 8, !tbaa !47
  %241 = zext i8 %240 to i64
  %242 = add nuw nsw i64 %241, 4294967295
  %243 = and i64 %242, 4294967295
  %244 = lshr i64 %228, %243
  %245 = and i64 %244, %229
  %246 = trunc i64 %245 to i8
  %247 = or i8 %246, 1
  br label %248

248:                                              ; preds = %239, %237
  %249 = phi i8 [ %233, %237 ], [ %247, %239 ]
  %250 = zext i8 %249 to i64
  %251 = icmp ult i64 %232, %250
  %252 = select i1 %251, i64 %219, i64 0
  %253 = sub i64 %232, %250
  %254 = add i64 %252, %253
  %255 = getelementptr inbounds ptr, ptr %222, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !30
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %230, !llvm.loop !142

258:                                              ; preds = %248, %230, %217, %213, %208
  %259 = phi ptr [ %158, %208 ], [ null, %213 ], [ null, %217 ], [ %231, %230 ], [ null, %248 ]
  %260 = getelementptr inbounds %struct.attribute_id, ptr %199, i64 0, i32 1
  store ptr %259, ptr %260, align 8, !tbaa !138
  br label %166

261:                                              ; preds = %159
  %262 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !49
  %264 = icmp eq ptr %263, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 1, i32 2
  %267 = load i64, ptr %266, align 8, !tbaa !88
  %268 = getelementptr inbounds ptr, ptr %263, i64 %267
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi ptr [ %268, %265 ], [ null, %261 ]
  %271 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 1
  %272 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 2, i32 2
  %273 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 2, i32 1
  br label %274

274:                                              ; preds = %281, %269
  %275 = phi ptr [ %263, %269 ], [ %278, %281 ]
  %276 = icmp eq ptr %275, %270
  br i1 %276, label %529, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds ptr, ptr %275, i64 1
  %279 = load ptr, ptr %275, align 8, !tbaa !30
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %525, %277, %431
  br label %274

282:                                              ; preds = %277
  %283 = load ptr, ptr %279, align 8, !tbaa !143
  %284 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %283) #30
  %285 = add i64 %284, 1
  br label %286

286:                                              ; preds = %293, %282
  %287 = load ptr, ptr %110, align 8, !tbaa !131
  %288 = load ptr, ptr %111, align 8, !tbaa !132
  %289 = ptrtoint ptr %287 to i64
  %290 = ptrtoint ptr %288 to i64
  %291 = sub i64 %289, %290
  %292 = icmp ult i64 %291, %285
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %109), !range !133
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %558, label %286

296:                                              ; preds = %286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %288, ptr align 1 %283, i64 %285, i1 false)
  %297 = load ptr, ptr %111, align 8, !tbaa !132
  %298 = getelementptr inbounds i8, ptr %297, i64 %285
  store ptr %298, ptr %111, align 8, !tbaa !132
  %299 = load ptr, ptr %112, align 8, !tbaa !134
  store ptr %298, ptr %112, align 8, !tbaa !134
  %300 = icmp eq ptr %299, null
  br i1 %300, label %558, label %301

301:                                              ; preds = %296
  %302 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %271, ptr noundef nonnull %299, i64 noundef 88)
  %303 = icmp eq ptr %302, null
  br i1 %303, label %558, label %304

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 6
  %306 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 6, i32 4
  %307 = load ptr, ptr %306, align 8, !tbaa !144
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 6, i32 1
  store i8 0, ptr %310, align 8, !tbaa !47
  %311 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 6, i32 2
  store ptr null, ptr %305, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %311, i8 0, i64 16, i1 false)
  store ptr %67, ptr %306, align 8, !tbaa !50
  br label %312

312:                                              ; preds = %309, %304
  %313 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %279, i64 0, i32 3
  %314 = load i64, ptr %313, align 8, !tbaa !145
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %312
  %317 = icmp ugt i64 %314, 768614336404564650
  br i1 %317, label %558, label %318

318:                                              ; preds = %316
  %319 = mul nuw i64 %314, 24
  %320 = call fastcc ptr @expat_malloc(ptr noundef %67, i64 noundef %319, i32 noundef 7606)
  %321 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 5
  store ptr %320, ptr %321, align 8, !tbaa !90
  %322 = icmp eq ptr %320, null
  br i1 %322, label %558, label %323

323:                                              ; preds = %318, %312
  %324 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %279, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !146
  %326 = icmp eq ptr %325, null
  br i1 %326, label %375, label %327

327:                                              ; preds = %323
  %328 = load ptr, ptr %325, align 8, !tbaa !135
  %329 = load i64, ptr %272, align 8, !tbaa !88
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %372, label %331

331:                                              ; preds = %327
  %332 = call fastcc i64 @hash(ptr noundef %0, ptr noundef %328)
  %333 = load i64, ptr %272, align 8, !tbaa !88
  %334 = add i64 %333, -1
  %335 = and i64 %334, %332
  %336 = load ptr, ptr %154, align 8, !tbaa !49
  %337 = getelementptr inbounds ptr, ptr %336, i64 %335
  %338 = load ptr, ptr %337, align 8, !tbaa !30
  %339 = icmp eq ptr %338, null
  br i1 %339, label %372, label %340

340:                                              ; preds = %331
  %341 = sub i64 0, %333
  %342 = and i64 %332, %341
  %343 = lshr i64 %334, 2
  br label %344

344:                                              ; preds = %362, %340
  %345 = phi ptr [ %338, %340 ], [ %370, %362 ]
  %346 = phi i64 [ %335, %340 ], [ %368, %362 ]
  %347 = phi i8 [ 0, %340 ], [ %363, %362 ]
  %348 = load ptr, ptr %345, align 8, !tbaa !140
  %349 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %328, ptr noundef nonnull dereferenceable(1) %348) #30
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %372, label %351

351:                                              ; preds = %344
  %352 = icmp eq i8 %347, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %351
  %354 = load i8, ptr %273, align 8, !tbaa !47
  %355 = zext i8 %354 to i64
  %356 = add nuw nsw i64 %355, 4294967295
  %357 = and i64 %356, 4294967295
  %358 = lshr i64 %342, %357
  %359 = and i64 %358, %343
  %360 = trunc i64 %359 to i8
  %361 = or i8 %360, 1
  br label %362

362:                                              ; preds = %353, %351
  %363 = phi i8 [ %347, %351 ], [ %361, %353 ]
  %364 = zext i8 %363 to i64
  %365 = icmp ult i64 %346, %364
  %366 = select i1 %365, i64 %333, i64 0
  %367 = sub i64 %346, %364
  %368 = add i64 %366, %367
  %369 = getelementptr inbounds ptr, ptr %336, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !30
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %344, !llvm.loop !142

372:                                              ; preds = %362, %344, %331, %327
  %373 = phi ptr [ null, %327 ], [ null, %331 ], [ %345, %344 ], [ null, %362 ]
  %374 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 2
  store ptr %373, ptr %374, align 8, !tbaa !146
  br label %375

375:                                              ; preds = %372, %323
  %376 = load i64, ptr %313, align 8, !tbaa !145
  %377 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 3
  store i64 %376, ptr %377, align 8, !tbaa !145
  %378 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 4
  store i64 %376, ptr %378, align 8, !tbaa !147
  %379 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %279, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !148
  %381 = icmp eq ptr %380, null
  br i1 %381, label %431, label %382

382:                                              ; preds = %375
  %383 = load ptr, ptr %380, align 8, !tbaa !130
  %384 = load i64, ptr %156, align 8, !tbaa !88
  %385 = icmp eq i64 %384, 0
  br i1 %385, label %427, label %386

386:                                              ; preds = %382
  %387 = call fastcc i64 @hash(ptr noundef %0, ptr noundef %383)
  %388 = load i64, ptr %156, align 8, !tbaa !88
  %389 = add i64 %388, -1
  %390 = and i64 %389, %387
  %391 = load ptr, ptr %113, align 8, !tbaa !49
  %392 = getelementptr inbounds ptr, ptr %391, i64 %390
  %393 = load ptr, ptr %392, align 8, !tbaa !30
  %394 = icmp eq ptr %393, null
  br i1 %394, label %427, label %395

395:                                              ; preds = %386
  %396 = sub i64 0, %388
  %397 = and i64 %387, %396
  %398 = lshr i64 %389, 2
  br label %399

399:                                              ; preds = %417, %395
  %400 = phi ptr [ %393, %395 ], [ %425, %417 ]
  %401 = phi i64 [ %390, %395 ], [ %423, %417 ]
  %402 = phi i8 [ 0, %395 ], [ %418, %417 ]
  %403 = load ptr, ptr %400, align 8, !tbaa !140
  %404 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %383, ptr noundef nonnull dereferenceable(1) %403) #30
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %427, label %406

406:                                              ; preds = %399
  %407 = icmp eq i8 %402, 0
  br i1 %407, label %408, label %417

408:                                              ; preds = %406
  %409 = load i8, ptr %157, align 8, !tbaa !47
  %410 = zext i8 %409 to i64
  %411 = add nuw nsw i64 %410, 4294967295
  %412 = and i64 %411, 4294967295
  %413 = lshr i64 %397, %412
  %414 = and i64 %413, %398
  %415 = trunc i64 %414 to i8
  %416 = or i8 %415, 1
  br label %417

417:                                              ; preds = %408, %406
  %418 = phi i8 [ %402, %406 ], [ %416, %408 ]
  %419 = zext i8 %418 to i64
  %420 = icmp ult i64 %401, %419
  %421 = select i1 %420, i64 %388, i64 0
  %422 = sub i64 %401, %419
  %423 = add i64 %421, %422
  %424 = getelementptr inbounds ptr, ptr %391, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !30
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %399, !llvm.loop !142

427:                                              ; preds = %417, %399, %386, %382
  %428 = phi ptr [ null, %382 ], [ null, %386 ], [ %400, %399 ], [ null, %417 ]
  %429 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 1
  store ptr %428, ptr %429, align 8, !tbaa !148
  %430 = load i64, ptr %377, align 8, !tbaa !145
  br label %431

431:                                              ; preds = %427, %375
  %432 = phi i64 [ %430, %427 ], [ %376, %375 ]
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %281, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %279, i64 0, i32 5
  %436 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %302, i64 0, i32 5
  br label %437

437:                                              ; preds = %525, %434
  %438 = phi i64 [ 0, %434 ], [ %526, %525 ]
  %439 = load ptr, ptr %435, align 8, !tbaa !90
  %440 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %439, i64 %438
  %441 = load ptr, ptr %440, align 8, !tbaa !149
  %442 = load ptr, ptr %441, align 8, !tbaa !135
  %443 = load i64, ptr %272, align 8, !tbaa !88
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %486, label %445

445:                                              ; preds = %437
  %446 = call fastcc i64 @hash(ptr noundef %0, ptr noundef %442)
  %447 = load i64, ptr %272, align 8, !tbaa !88
  %448 = add i64 %447, -1
  %449 = and i64 %448, %446
  %450 = load ptr, ptr %154, align 8, !tbaa !49
  %451 = getelementptr inbounds ptr, ptr %450, i64 %449
  %452 = load ptr, ptr %451, align 8, !tbaa !30
  %453 = icmp eq ptr %452, null
  br i1 %453, label %486, label %454

454:                                              ; preds = %445
  %455 = sub i64 0, %447
  %456 = and i64 %446, %455
  %457 = lshr i64 %448, 2
  br label %458

458:                                              ; preds = %476, %454
  %459 = phi ptr [ %452, %454 ], [ %484, %476 ]
  %460 = phi i64 [ %449, %454 ], [ %482, %476 ]
  %461 = phi i8 [ 0, %454 ], [ %477, %476 ]
  %462 = load ptr, ptr %459, align 8, !tbaa !140
  %463 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %442, ptr noundef nonnull dereferenceable(1) %462) #30
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %486, label %465

465:                                              ; preds = %458
  %466 = icmp eq i8 %461, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %465
  %468 = load i8, ptr %273, align 8, !tbaa !47
  %469 = zext i8 %468 to i64
  %470 = add nuw nsw i64 %469, 4294967295
  %471 = and i64 %470, 4294967295
  %472 = lshr i64 %456, %471
  %473 = and i64 %472, %457
  %474 = trunc i64 %473 to i8
  %475 = or i8 %474, 1
  br label %476

476:                                              ; preds = %467, %465
  %477 = phi i8 [ %461, %465 ], [ %475, %467 ]
  %478 = zext i8 %477 to i64
  %479 = icmp ult i64 %460, %478
  %480 = select i1 %479, i64 %447, i64 0
  %481 = sub i64 %460, %478
  %482 = add i64 %480, %481
  %483 = getelementptr inbounds ptr, ptr %450, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !30
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %458, !llvm.loop !142

486:                                              ; preds = %476, %458, %445, %437
  %487 = phi ptr [ null, %437 ], [ null, %445 ], [ %459, %458 ], [ null, %476 ]
  %488 = load ptr, ptr %436, align 8, !tbaa !90
  %489 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %488, i64 %438
  store ptr %487, ptr %489, align 8, !tbaa !149
  %490 = load ptr, ptr %435, align 8, !tbaa !90
  %491 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %490, i64 %438, i32 1
  %492 = load i8, ptr %491, align 8, !tbaa !151
  %493 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %488, i64 %438, i32 1
  store i8 %492, ptr %493, align 8, !tbaa !151
  %494 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %490, i64 %438, i32 2
  %495 = load ptr, ptr %494, align 8, !tbaa !152
  %496 = icmp eq ptr %495, null
  br i1 %496, label %520, label %497

497:                                              ; preds = %486
  %498 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %495) #30
  %499 = add i64 %498, 1
  br label %500

500:                                              ; preds = %507, %497
  %501 = load ptr, ptr %110, align 8, !tbaa !131
  %502 = load ptr, ptr %111, align 8, !tbaa !132
  %503 = ptrtoint ptr %501 to i64
  %504 = ptrtoint ptr %502 to i64
  %505 = sub i64 %503, %504
  %506 = icmp ult i64 %505, %499
  br i1 %506, label %507, label %513

507:                                              ; preds = %500
  %508 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %109), !range !133
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %500

510:                                              ; preds = %507
  %511 = load ptr, ptr %436, align 8, !tbaa !90
  %512 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %511, i64 %438, i32 2
  store ptr null, ptr %512, align 8, !tbaa !152
  br label %558

513:                                              ; preds = %500
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %502, ptr nonnull align 1 %495, i64 %499, i1 false)
  %514 = load ptr, ptr %111, align 8, !tbaa !132
  %515 = getelementptr inbounds i8, ptr %514, i64 %499
  store ptr %515, ptr %111, align 8, !tbaa !132
  %516 = load ptr, ptr %112, align 8, !tbaa !134
  store ptr %515, ptr %112, align 8, !tbaa !134
  %517 = load ptr, ptr %436, align 8, !tbaa !90
  %518 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %517, i64 %438, i32 2
  store ptr %516, ptr %518, align 8, !tbaa !152
  %519 = icmp eq ptr %516, null
  br i1 %519, label %558, label %522

520:                                              ; preds = %486
  %521 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %488, i64 %438, i32 2
  store ptr null, ptr %521, align 8, !tbaa !152
  br label %522

522:                                              ; preds = %520, %513
  %523 = call fastcc ptr @lookup(ptr noundef %67, ptr noundef nonnull %305, ptr noundef %442, i64 noundef 8)
  %524 = icmp eq ptr %523, null
  br i1 %524, label %558, label %525

525:                                              ; preds = %522
  %526 = add nuw i64 %438, 1
  %527 = load i64, ptr %377, align 8, !tbaa !145
  %528 = icmp ult i64 %526, %527
  br i1 %528, label %437, label %281, !llvm.loop !153

529:                                              ; preds = %274
  %530 = call fastcc i32 @copyEntityTable(ptr noundef %0, ptr noundef %99, ptr noundef nonnull %109, ptr noundef %9)
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %558, label %532

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 10
  %534 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 10
  %535 = call fastcc i32 @copyEntityTable(ptr noundef %0, ptr noundef nonnull %533, ptr noundef nonnull %109, ptr noundef nonnull %534)
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %558, label %537

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 6
  %539 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 6
  %540 = load <4 x i8>, ptr %538, align 8, !tbaa !5
  store <4 x i8> %540, ptr %539, align 8, !tbaa !5
  %541 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 12
  %542 = load i8, ptr %541, align 8, !tbaa !154
  %543 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 12
  store i8 %542, ptr %543, align 8, !tbaa !154
  %544 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 13
  %545 = load ptr, ptr %544, align 8, !tbaa !98
  %546 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 13
  store ptr %545, ptr %546, align 8, !tbaa !98
  %547 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 14
  %548 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 14
  %549 = load <2 x i32>, ptr %547, align 8, !tbaa !33
  store <2 x i32> %549, ptr %548, align 8, !tbaa !33
  %550 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 17
  %551 = load i32, ptr %550, align 4, !tbaa !155
  %552 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 17
  store i32 %551, ptr %552, align 4, !tbaa !155
  %553 = getelementptr inbounds %struct.DTD, ptr %9, i64 0, i32 18
  %554 = load ptr, ptr %553, align 8, !tbaa !97
  %555 = getelementptr inbounds %struct.DTD, ptr %99, i64 0, i32 18
  store ptr %554, ptr %555, align 8, !tbaa !97
  %556 = call fastcc zeroext i8 @setContext(ptr noundef %67, ptr noundef nonnull %1)
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %141, %136, %133, %171, %197, %192, %189, %318, %316, %301, %296, %293, %522, %513, %510, %532, %529, %537
  call void @XML_ParserFree(ptr noundef %67)
  br label %565

559:                                              ; preds = %537
  %560 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 48
  store ptr @externalEntityInitProcessor, ptr %560, align 8, !tbaa !103
  br label %565

561:                                              ; preds = %88
  %562 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 47
  %563 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 93
  store i8 1, ptr %563, align 8, !tbaa !117
  call void @XmlPrologStateInitExternalEntity(ptr noundef nonnull %562) #25
  %564 = getelementptr inbounds %struct.XML_ParserStruct, ptr %67, i64 0, i32 48
  store ptr @externalParEntInitProcessor, ptr %564, align 8, !tbaa !103
  br label %565

565:                                              ; preds = %559, %561, %66, %3, %558
  %566 = phi ptr [ null, %558 ], [ null, %3 ], [ null, %66 ], [ %67, %561 ], [ %67, %559 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret ptr %566
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @setContext(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %207, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = load i8, ptr %1, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %207, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %14 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 4
  %15 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 4, i32 3
  %16 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 4, i32 2
  %17 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 4, i32 4
  %18 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 3
  %19 = getelementptr inbounds %struct.DTD, ptr %6, i64 0, i32 11
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 76
  %21 = getelementptr inbounds %struct.HASH_TABLE, ptr %6, i64 0, i32 2
  %22 = getelementptr inbounds %struct.HASH_TABLE, ptr %6, i64 0, i32 1
  br label %23

23:                                               ; preds = %9, %200
  %24 = phi ptr [ %1, %9 ], [ %202, %200 ]
  %25 = phi ptr [ %1, %9 ], [ %201, %200 ]
  %26 = load i8, ptr %25, align 1, !tbaa !5
  switch i8 %26, label %187 [
    i8 12, label %27
    i8 0, label %27
    i8 61, label %91
  ]

27:                                               ; preds = %23, %23
  %28 = load ptr, ptr %11, align 8, !tbaa !132
  %29 = load ptr, ptr %13, align 8, !tbaa !131
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %10), !range !133
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %207, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %11, align 8, !tbaa !132
  br label %36

36:                                               ; preds = %27, %34
  %37 = phi ptr [ %35, %34 ], [ %28, %27 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr %11, align 8, !tbaa !132
  store i8 0, ptr %37, align 1, !tbaa !5
  %39 = load ptr, ptr %12, align 8, !tbaa !156
  %40 = load i64, ptr %21, align 8, !tbaa !88
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %36
  %43 = tail call fastcc i64 @hash(ptr noundef nonnull %0, ptr noundef %39)
  %44 = load i64, ptr %21, align 8, !tbaa !88
  %45 = add i64 %44, -1
  %46 = and i64 %45, %43
  %47 = load ptr, ptr %6, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %42
  %52 = sub i64 0, %44
  %53 = and i64 %43, %52
  %54 = lshr i64 %45, 2
  br label %55

55:                                               ; preds = %73, %51
  %56 = phi ptr [ %49, %51 ], [ %81, %73 ]
  %57 = phi i64 [ %46, %51 ], [ %79, %73 ]
  %58 = phi i8 [ 0, %51 ], [ %74, %73 ]
  %59 = load ptr, ptr %56, align 8, !tbaa !140
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %59) #30
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %55
  %63 = icmp eq i8 %58, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %62
  %65 = load i8, ptr %22, align 8, !tbaa !47
  %66 = zext i8 %65 to i64
  %67 = add nuw nsw i64 %66, 4294967295
  %68 = and i64 %67, 4294967295
  %69 = lshr i64 %53, %68
  %70 = and i64 %69, %54
  %71 = trunc i64 %70 to i8
  %72 = or i8 %71, 1
  br label %73

73:                                               ; preds = %64, %62
  %74 = phi i8 [ %58, %62 ], [ %72, %64 ]
  %75 = zext i8 %74 to i64
  %76 = icmp ult i64 %57, %75
  %77 = select i1 %76, i64 %44, i64 0
  %78 = sub i64 %57, %75
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds ptr, ptr %47, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %55, !llvm.loop !142

83:                                               ; preds = %55
  %84 = getelementptr inbounds %struct.ENTITY, ptr %56, i64 0, i32 8
  store i8 1, ptr %84, align 8, !tbaa !157
  br label %85

85:                                               ; preds = %73, %83, %36, %42
  %86 = load i8, ptr %25, align 1, !tbaa !5
  %87 = icmp ne i8 %86, 0
  %88 = zext i1 %87 to i64
  %89 = getelementptr inbounds i8, ptr %25, i64 %88
  %90 = load ptr, ptr %12, align 8, !tbaa !156
  store ptr %90, ptr %11, align 8, !tbaa !159
  br label %200

91:                                               ; preds = %23
  %92 = load ptr, ptr %11, align 8, !tbaa !132
  %93 = load ptr, ptr %12, align 8, !tbaa !156
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %148, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %13, align 8, !tbaa !131
  %97 = icmp eq ptr %92, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %10), !range !133
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %207, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %11, align 8, !tbaa !132
  br label %103

103:                                              ; preds = %95, %101
  %104 = phi ptr [ %102, %101 ], [ %92, %95 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr %11, align 8, !tbaa !132
  store i8 0, ptr %104, align 1, !tbaa !5
  %106 = load ptr, ptr %12, align 8, !tbaa !156
  br label %107

107:                                              ; preds = %127, %103
  %108 = phi ptr [ %106, %103 ], [ %130, %127 ]
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = load ptr, ptr %15, align 8, !tbaa !132
  %111 = load ptr, ptr %16, align 8, !tbaa !131
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %14), !range !133
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %15, align 8, !tbaa !132
  br label %127

118:                                              ; preds = %113
  %119 = ptrtoint ptr %108 to i64
  %120 = ptrtoint ptr %106 to i64
  %121 = sub i64 %119, %120
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %207

123:                                              ; preds = %118
  %124 = load ptr, ptr %15, align 8, !tbaa !132
  %125 = sub nsw i64 0, %121
  %126 = getelementptr inbounds i8, ptr %124, i64 %125
  br label %205

127:                                              ; preds = %116, %107
  %128 = phi ptr [ %117, %116 ], [ %110, %107 ]
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %129, ptr %15, align 8, !tbaa !132
  store i8 %109, ptr %128, align 1, !tbaa !5
  %130 = getelementptr inbounds i8, ptr %108, i64 1
  %131 = load i8, ptr %108, align 1, !tbaa !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %107, !llvm.loop !160

133:                                              ; preds = %127
  %134 = load ptr, ptr %17, align 8, !tbaa !134
  %135 = icmp eq ptr %134, null
  br i1 %135, label %207, label %136

136:                                              ; preds = %133
  %137 = tail call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %18, ptr noundef nonnull %134, i64 noundef 16)
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load ptr, ptr %17, align 8, !tbaa !161
  br label %205

141:                                              ; preds = %136
  %142 = load ptr, ptr %137, align 8, !tbaa !130
  %143 = icmp eq ptr %142, %134
  %144 = select i1 %143, ptr %15, ptr %17
  %145 = select i1 %143, ptr %17, ptr %15
  %146 = load ptr, ptr %144, align 8, !tbaa !30
  store ptr %146, ptr %145, align 8, !tbaa !30
  %147 = load ptr, ptr %12, align 8, !tbaa !156
  store ptr %147, ptr %11, align 8, !tbaa !159
  br label %148

148:                                              ; preds = %91, %141
  %149 = phi ptr [ %137, %141 ], [ %19, %91 ]
  br label %150

150:                                              ; preds = %163, %148
  %151 = phi ptr [ %25, %148 ], [ %152, %163 ]
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !5
  switch i8 %153, label %154 [
    i8 12, label %166
    i8 0, label %166
  ]

154:                                              ; preds = %150
  %155 = load ptr, ptr %11, align 8, !tbaa !132
  %156 = load ptr, ptr %13, align 8, !tbaa !131
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %10), !range !133
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %207, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %11, align 8, !tbaa !132
  br label %163

163:                                              ; preds = %154, %161
  %164 = phi ptr [ %162, %161 ], [ %155, %154 ]
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %11, align 8, !tbaa !132
  store i8 %153, ptr %164, align 1, !tbaa !5
  br label %150, !llvm.loop !162

166:                                              ; preds = %150, %150
  %167 = load ptr, ptr %11, align 8, !tbaa !132
  %168 = load ptr, ptr %13, align 8, !tbaa !131
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %10), !range !133
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %207, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %11, align 8, !tbaa !132
  br label %175

175:                                              ; preds = %166, %173
  %176 = phi ptr [ %174, %173 ], [ %167, %166 ]
  %177 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %177, ptr %11, align 8, !tbaa !132
  store i8 0, ptr %176, align 1, !tbaa !5
  %178 = load ptr, ptr %12, align 8, !tbaa !156
  %179 = tail call fastcc i32 @addBinding(ptr noundef nonnull %0, ptr noundef nonnull %149, ptr noundef null, ptr noundef %178, ptr noundef nonnull %20), !range !163
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %175
  %182 = load ptr, ptr %12, align 8, !tbaa !156
  store ptr %182, ptr %11, align 8, !tbaa !159
  %183 = load i8, ptr %152, align 1, !tbaa !5
  %184 = icmp eq i8 %183, 0
  %185 = getelementptr inbounds i8, ptr %151, i64 2
  %186 = select i1 %184, ptr %152, ptr %185
  br label %200

187:                                              ; preds = %23
  %188 = load ptr, ptr %11, align 8, !tbaa !132
  %189 = load ptr, ptr %13, align 8, !tbaa !131
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %10), !range !133
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %11, align 8, !tbaa !132
  br label %196

196:                                              ; preds = %187, %194
  %197 = phi ptr [ %195, %194 ], [ %188, %187 ]
  %198 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %198, ptr %11, align 8, !tbaa !132
  store i8 %26, ptr %197, align 1, !tbaa !5
  %199 = getelementptr inbounds i8, ptr %25, i64 1
  br label %200

200:                                              ; preds = %181, %85, %196
  %201 = phi ptr [ %186, %181 ], [ %199, %196 ], [ %89, %85 ]
  %202 = phi ptr [ %186, %181 ], [ %24, %196 ], [ %89, %85 ]
  %203 = load i8, ptr %202, align 1, !tbaa !5
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %207, label %23, !llvm.loop !164

205:                                              ; preds = %139, %123
  %206 = phi ptr [ %126, %123 ], [ %140, %139 ]
  store ptr %206, ptr %15, align 8, !tbaa !132
  br label %207

207:                                              ; preds = %200, %31, %191, %175, %98, %170, %133, %158, %205, %4, %118, %2
  %208 = phi i8 [ 0, %2 ], [ 0, %118 ], [ 1, %4 ], [ 0, %205 ], [ 0, %158 ], [ 1, %200 ], [ 0, %31 ], [ 0, %191 ], [ 0, %175 ], [ 0, %98 ], [ 0, %170 ], [ 0, %133 ]
  ret i8 %208
}

; Function Attrs: nounwind uwtable
define dso_local void @XML_ParserFree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %360, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 75
  br label %7

7:                                                ; preds = %29, %3
  %8 = phi ptr [ %5, %3 ], [ %16, %29 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %6, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  store ptr null, ptr %6, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi ptr [ %11, %13 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.tag, ptr %15, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %18, i32 noundef 1851)
  %19 = getelementptr inbounds %struct.tag, ptr %15, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %14 ]
  %24 = getelementptr inbounds %struct.binding, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.binding, ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %27, i32 noundef 1828)
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 1829)
  %28 = icmp eq ptr %25, null
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %14
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 1853)
  br label %7

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 54
  br label %34

34:                                               ; preds = %41, %30
  %35 = phi ptr [ %32, %30 ], [ %44, %41 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr %33, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  store ptr null, ptr %33, align 8, !tbaa !54
  br label %41

41:                                               ; preds = %34, %40
  %42 = phi ptr [ %38, %40 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.open_internal_entity, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %42, i32 noundef 1867)
  br label %34

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 55
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 56
  br label %49

49:                                               ; preds = %56, %45
  %50 = phi ptr [ %47, %45 ], [ %59, %56 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %48, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  store ptr null, ptr %48, align 8, !tbaa !55
  br label %56

56:                                               ; preds = %49, %55
  %57 = phi ptr [ %53, %55 ], [ %50, %49 ]
  %58 = getelementptr inbounds %struct.open_internal_entity, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %57, i32 noundef 1881)
  br label %49

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 57
  %62 = load ptr, ptr %61, align 8, !tbaa !79
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 58
  br label %64

64:                                               ; preds = %71, %60
  %65 = phi ptr [ %62, %60 ], [ %74, %71 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load ptr, ptr %63, align 8, !tbaa !56
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  store ptr null, ptr %63, align 8, !tbaa !56
  br label %71

71:                                               ; preds = %64, %70
  %72 = phi ptr [ %68, %70 ], [ %65, %64 ]
  %73 = getelementptr inbounds %struct.open_internal_entity, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !74
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %72, i32 noundef 1895)
  br label %64

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 77
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %75, %79
  %80 = phi ptr [ %82, %79 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.binding, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !69
  %83 = getelementptr inbounds %struct.binding, ptr %80, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !165
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %84, i32 noundef 1828)
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %80, i32 noundef 1829)
  %85 = icmp eq ptr %82, null
  br i1 %85, label %86, label %79

86:                                               ; preds = %79, %75
  %87 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 76
  %88 = load ptr, ptr %87, align 8, !tbaa !81
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %86, %90
  %91 = phi ptr [ %93, %90 ], [ %88, %86 ]
  %92 = getelementptr inbounds %struct.binding, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = getelementptr inbounds %struct.binding, ptr %91, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !165
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %95, i32 noundef 1828)
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %91, i32 noundef 1829)
  %96 = icmp eq ptr %93, null
  br i1 %96, label %97, label %90

97:                                               ; preds = %90, %86
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %99 = load ptr, ptr %98, align 8, !tbaa !86
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 5
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi ptr [ %99, %101 ], [ %105, %103 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !30
  %106 = load ptr, ptr %102, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %106, ptr noundef nonnull %104, i32 noundef 7937)
  %107 = icmp eq ptr %105, null
  br i1 %107, label %108, label %103, !llvm.loop !166

108:                                              ; preds = %103, %97
  %109 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !85
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 5
  br label %114

114:                                              ; preds = %114, %112
  %115 = phi ptr [ %110, %112 ], [ %116, %114 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !30
  %117 = load ptr, ptr %113, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %117, ptr noundef nonnull %115, i32 noundef 7943)
  %118 = icmp eq ptr %116, null
  br i1 %118, label %119, label %114, !llvm.loop !167

119:                                              ; preds = %114, %108
  %120 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %121 = load ptr, ptr %120, align 8, !tbaa !86
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 5
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi ptr [ %121, %123 ], [ %127, %125 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  %128 = load ptr, ptr %124, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %128, ptr noundef nonnull %126, i32 noundef 7937)
  %129 = icmp eq ptr %127, null
  br i1 %129, label %130, label %125, !llvm.loop !166

130:                                              ; preds = %125, %119
  %131 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !85
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 5
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi ptr [ %132, %134 ], [ %138, %136 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !30
  %139 = load ptr, ptr %135, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %139, ptr noundef nonnull %137, i32 noundef 7943)
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %136, !llvm.loop !167

141:                                              ; preds = %136, %130
  %142 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %143 = load ptr, ptr %142, align 8, !tbaa !62
  tail call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef %143, i32 noundef 1901)
  %144 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 93
  %145 = load i8, ptr %144, align 8, !tbaa !117
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %338

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %149 = load ptr, ptr %148, align 8, !tbaa !51
  %150 = icmp eq ptr %149, null
  br i1 %150, label %338, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %153 = load ptr, ptr %152, align 8, !tbaa !8
  %154 = icmp eq ptr %153, null
  %155 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !49
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 1, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !88
  %161 = getelementptr inbounds ptr, ptr %156, i64 %160
  br label %162

162:                                              ; preds = %158, %151
  %163 = phi ptr [ %161, %158 ], [ null, %151 ]
  br label %164

164:                                              ; preds = %171, %162
  %165 = phi ptr [ %156, %162 ], [ %168, %171 ]
  %166 = icmp eq ptr %165, %163
  br i1 %166, label %194, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds ptr, ptr %165, i64 1
  %169 = load ptr, ptr %165, align 8, !tbaa !30
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %188
  br label %164

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %169, i64 0, i32 6
  %174 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %169, i64 0, i32 6, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !88
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %169, i64 0, i32 6, i32 4
  br label %179

179:                                              ; preds = %179, %177
  %180 = phi i64 [ 0, %177 ], [ %185, %179 ]
  %181 = load ptr, ptr %178, align 8, !tbaa !50
  %182 = load ptr, ptr %173, align 8, !tbaa !49
  %183 = getelementptr inbounds ptr, ptr %182, i64 %180
  %184 = load ptr, ptr %183, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %181, ptr noundef %184, i32 noundef 7874)
  %185 = add nuw i64 %180, 1
  %186 = load i64, ptr %174, align 8, !tbaa !88
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %179, label %188, !llvm.loop !89

188:                                              ; preds = %179, %172
  %189 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %169, i64 0, i32 6, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !50
  %191 = load ptr, ptr %173, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %190, ptr noundef %191, i32 noundef 7875)
  %192 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %169, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !90
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %193, i32 noundef 7505)
  br label %171

194:                                              ; preds = %164
  %195 = getelementptr inbounds %struct.HASH_TABLE, ptr %149, i64 0, i32 2
  %196 = load i64, ptr %195, align 8, !tbaa !88
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.HASH_TABLE, ptr %149, i64 0, i32 4
  br label %200

200:                                              ; preds = %200, %198
  %201 = phi i64 [ 0, %198 ], [ %206, %200 ]
  %202 = load ptr, ptr %199, align 8, !tbaa !50
  %203 = load ptr, ptr %149, align 8, !tbaa !49
  %204 = getelementptr inbounds ptr, ptr %203, i64 %201
  %205 = load ptr, ptr %204, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %202, ptr noundef %205, i32 noundef 7874)
  %206 = add nuw i64 %201, 1
  %207 = load i64, ptr %195, align 8, !tbaa !88
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %200, label %209, !llvm.loop !89

209:                                              ; preds = %200, %194
  %210 = getelementptr inbounds %struct.HASH_TABLE, ptr %149, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !50
  %212 = load ptr, ptr %149, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %211, ptr noundef %212, i32 noundef 7875)
  %213 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 10
  %214 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 10, i32 2
  %215 = load i64, ptr %214, align 8, !tbaa !88
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 10, i32 4
  br label %219

219:                                              ; preds = %219, %217
  %220 = phi i64 [ 0, %217 ], [ %225, %219 ]
  %221 = load ptr, ptr %218, align 8, !tbaa !50
  %222 = load ptr, ptr %213, align 8, !tbaa !49
  %223 = getelementptr inbounds ptr, ptr %222, i64 %220
  %224 = load ptr, ptr %223, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %221, ptr noundef %224, i32 noundef 7874)
  %225 = add nuw i64 %220, 1
  %226 = load i64, ptr %214, align 8, !tbaa !88
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %219, label %228, !llvm.loop !89

228:                                              ; preds = %219, %209
  %229 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 10, i32 4
  %230 = load ptr, ptr %229, align 8, !tbaa !50
  %231 = load ptr, ptr %213, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %230, ptr noundef %231, i32 noundef 7875)
  %232 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 1, i32 2
  %233 = load i64, ptr %232, align 8, !tbaa !88
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %246, label %235

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 1, i32 4
  br label %237

237:                                              ; preds = %237, %235
  %238 = phi i64 [ 0, %235 ], [ %243, %237 ]
  %239 = load ptr, ptr %236, align 8, !tbaa !50
  %240 = load ptr, ptr %155, align 8, !tbaa !49
  %241 = getelementptr inbounds ptr, ptr %240, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %239, ptr noundef %242, i32 noundef 7874)
  %243 = add nuw i64 %238, 1
  %244 = load i64, ptr %232, align 8, !tbaa !88
  %245 = icmp ult i64 %243, %244
  br i1 %245, label %237, label %246, !llvm.loop !89

246:                                              ; preds = %237, %228
  %247 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 1, i32 4
  %248 = load ptr, ptr %247, align 8, !tbaa !50
  %249 = load ptr, ptr %155, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %248, ptr noundef %249, i32 noundef 7875)
  %250 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 2
  %251 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 2, i32 2
  %252 = load i64, ptr %251, align 8, !tbaa !88
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %265, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 2, i32 4
  br label %256

256:                                              ; preds = %256, %254
  %257 = phi i64 [ 0, %254 ], [ %262, %256 ]
  %258 = load ptr, ptr %255, align 8, !tbaa !50
  %259 = load ptr, ptr %250, align 8, !tbaa !49
  %260 = getelementptr inbounds ptr, ptr %259, i64 %257
  %261 = load ptr, ptr %260, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %258, ptr noundef %261, i32 noundef 7874)
  %262 = add nuw i64 %257, 1
  %263 = load i64, ptr %251, align 8, !tbaa !88
  %264 = icmp ult i64 %262, %263
  br i1 %264, label %256, label %265, !llvm.loop !89

265:                                              ; preds = %256, %246
  %266 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 2, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !50
  %268 = load ptr, ptr %250, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %267, ptr noundef %268, i32 noundef 7875)
  %269 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 3
  %270 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 3, i32 2
  %271 = load i64, ptr %270, align 8, !tbaa !88
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 3, i32 4
  br label %275

275:                                              ; preds = %275, %273
  %276 = phi i64 [ 0, %273 ], [ %281, %275 ]
  %277 = load ptr, ptr %274, align 8, !tbaa !50
  %278 = load ptr, ptr %269, align 8, !tbaa !49
  %279 = getelementptr inbounds ptr, ptr %278, i64 %276
  %280 = load ptr, ptr %279, align 8, !tbaa !30
  tail call fastcc void @expat_free(ptr noundef %277, ptr noundef %280, i32 noundef 7874)
  %281 = add nuw i64 %276, 1
  %282 = load i64, ptr %270, align 8, !tbaa !88
  %283 = icmp ult i64 %281, %282
  br i1 %283, label %275, label %284, !llvm.loop !89

284:                                              ; preds = %275, %265
  %285 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 3, i32 4
  %286 = load ptr, ptr %285, align 8, !tbaa !50
  %287 = load ptr, ptr %269, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %286, ptr noundef %287, i32 noundef 7875)
  %288 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !86
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 4, i32 5
  br label %293

293:                                              ; preds = %293, %291
  %294 = phi ptr [ %289, %291 ], [ %295, %293 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !30
  %296 = load ptr, ptr %292, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %296, ptr noundef nonnull %294, i32 noundef 7937)
  %297 = icmp eq ptr %295, null
  br i1 %297, label %298, label %293, !llvm.loop !166

298:                                              ; preds = %293, %284
  %299 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 4, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !85
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 4, i32 5
  br label %304

304:                                              ; preds = %304, %302
  %305 = phi ptr [ %300, %302 ], [ %306, %304 ]
  %306 = load ptr, ptr %305, align 8, !tbaa !30
  %307 = load ptr, ptr %303, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %307, ptr noundef nonnull %305, i32 noundef 7943)
  %308 = icmp eq ptr %306, null
  br i1 %308, label %309, label %304, !llvm.loop !167

309:                                              ; preds = %304, %298
  %310 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 5
  %311 = load ptr, ptr %310, align 8, !tbaa !86
  %312 = icmp eq ptr %311, null
  br i1 %312, label %320, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 5, i32 5
  br label %315

315:                                              ; preds = %315, %313
  %316 = phi ptr [ %311, %313 ], [ %317, %315 ]
  %317 = load ptr, ptr %316, align 8, !tbaa !30
  %318 = load ptr, ptr %314, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %318, ptr noundef nonnull %316, i32 noundef 7937)
  %319 = icmp eq ptr %317, null
  br i1 %319, label %320, label %315, !llvm.loop !166

320:                                              ; preds = %315, %309
  %321 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 5, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !85
  %323 = icmp eq ptr %322, null
  br i1 %323, label %331, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 5, i32 5
  br label %326

326:                                              ; preds = %326, %324
  %327 = phi ptr [ %322, %324 ], [ %328, %326 ]
  %328 = load ptr, ptr %327, align 8, !tbaa !30
  %329 = load ptr, ptr %325, align 8, !tbaa !46
  tail call fastcc void @expat_free(ptr noundef %329, ptr noundef nonnull %327, i32 noundef 7943)
  %330 = icmp eq ptr %328, null
  br i1 %330, label %331, label %326, !llvm.loop !167

331:                                              ; preds = %326, %320
  br i1 %154, label %332, label %337

332:                                              ; preds = %331
  %333 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 18
  %334 = load ptr, ptr %333, align 8, !tbaa !97
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %334, i32 noundef 7517)
  %335 = getelementptr inbounds %struct.DTD, ptr %149, i64 0, i32 13
  %336 = load ptr, ptr %335, align 8, !tbaa !98
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %336, i32 noundef 7518)
  br label %337

337:                                              ; preds = %331, %332
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef nonnull %149, i32 noundef 7520)
  br label %338

338:                                              ; preds = %337, %147, %141
  %339 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 81
  %340 = load ptr, ptr %339, align 8, !tbaa !43
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %340, i32 noundef 1911)
  %341 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 88
  %342 = load ptr, ptr %341, align 8, !tbaa !168
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %342, i32 noundef 1915)
  %343 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !102
  %345 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !40
  tail call void %344(ptr noundef %346) #25
  %347 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %348 = load ptr, ptr %347, align 8, !tbaa !44
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %348, i32 noundef 1920)
  %349 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 82
  %350 = load ptr, ptr %349, align 8, !tbaa !169
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %350, i32 noundef 1921)
  %351 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 43
  %352 = load ptr, ptr %351, align 8, !tbaa !82
  tail call fastcc void @expat_free(ptr noundef %0, ptr noundef %352, i32 noundef 1922)
  %353 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 46
  %354 = load ptr, ptr %353, align 8, !tbaa !83
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %356

356:                                              ; preds = %338
  %357 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 44
  %358 = load ptr, ptr %357, align 8, !tbaa !84
  tail call void %354(ptr noundef %358) #25
  br label %359

359:                                              ; preds = %356, %338
  tail call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 1925)
  br label %360

360:                                              ; preds = %1, %359
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityInitProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %8 = load i8, ptr %7, align 8, !tbaa !60
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @XmlInitEncoding, ptr @XmlInitEncodingNS
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 38
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %13 = tail call i32 %10(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6) #25, !callees !170
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !62
  %17 = tail call fastcc i32 @handleUnknownEncoding(ptr noundef nonnull %0, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4, %15
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @externalEntityInitProcessor2, ptr %20, align 8, !tbaa !103
  %21 = tail call i32 @externalEntityInitProcessor2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi i32 [ %21, %19 ], [ %17, %15 ]
  ret i32 %23
}

declare void @XmlPrologStateInitExternalEntity(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @externalParEntInitProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %8 = load i8, ptr %7, align 8, !tbaa !60
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @XmlInitEncoding, ptr @XmlInitEncodingNS
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 38
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %13 = tail call i32 %10(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6) #25, !callees !170
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !62
  %17 = tail call fastcc i32 @handleUnknownEncoding(ptr noundef nonnull %0, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %4, %15
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.DTD, ptr %21, i64 0, i32 9
  store i8 1, ptr %22, align 1, !tbaa !94
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !127
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  br i1 %25, label %29, label %27

27:                                               ; preds = %19
  store ptr @entityValueInitProcessor, ptr %26, align 8, !tbaa !103
  %28 = tail call i32 @entityValueInitProcessor(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %31

29:                                               ; preds = %19
  store ptr @externalParEntProcessor, ptr %26, align 8, !tbaa !103
  %30 = tail call i32 @externalParEntProcessor(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %31

31:                                               ; preds = %15, %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ], [ %17, %15 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_UseParserAsHandlerArg(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !125
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XML_UseForeignDTD(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 94
  store i8 %1, ptr %11, align 1, !tbaa !118
  br label %12

12:                                               ; preds = %4, %2, %10
  %13 = phi i32 [ 0, %10 ], [ 41, %2 ], [ 26, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XML_SetReturnNSTriplet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = icmp ne i32 %1, 0
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 42
  store i8 %12, ptr %13, align 1, !tbaa !61
  br label %14

14:                                               ; preds = %4, %2, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XML_SetUserData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = load ptr, ptr %0, align 8, !tbaa !124
  %8 = icmp eq ptr %6, %7
  store ptr %1, ptr %0, align 8, !tbaa !124
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store ptr %1, ptr %5, align 8, !tbaa !125
  br label %10

10:                                               ; preds = %4, %2, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_SetBase(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.DTD, ptr %8, i64 0, i32 4
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %11 = add i64 %10, 1
  %12 = getelementptr inbounds %struct.DTD, ptr %8, i64 0, i32 4, i32 2
  %13 = getelementptr inbounds %struct.DTD, ptr %8, i64 0, i32 4, i32 3
  br label %14

14:                                               ; preds = %21, %6
  %15 = load ptr, ptr %12, align 8, !tbaa !131
  %16 = load ptr, ptr %13, align 8, !tbaa !132
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp ult i64 %19, %11
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %9), !range !133
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %14

24:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr nonnull align 1 %1, i64 %11, i1 false)
  %25 = load ptr, ptr %13, align 8, !tbaa !132
  %26 = getelementptr inbounds i8, ptr %25, i64 %11
  store ptr %26, ptr %13, align 8, !tbaa !132
  %27 = getelementptr inbounds %struct.DTD, ptr %8, i64 0, i32 4, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  store ptr %26, ptr %27, align 8, !tbaa !134
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4, %24
  %31 = phi ptr [ %28, %24 ], [ null, %4 ]
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 73
  store ptr %31, ptr %32, align 8, !tbaa !104
  br label %33

33:                                               ; preds = %21, %30, %24, %2
  %34 = phi i32 [ 0, %2 ], [ 0, %24 ], [ 1, %30 ], [ 0, %21 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @XML_GetBase(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 73
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XML_GetSpecifiedAttributeCount(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 79
  %5 = load i32, ptr %4, align 8, !tbaa !114
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XML_GetIdAttributeIndex(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 80
  %5 = load i32, ptr %4, align 4, !tbaa !171
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetElementHandler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 14
  store ptr %1, ptr %6, align 8, !tbaa !172
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 15
  store ptr %2, ptr %7, align 8, !tbaa !173
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetStartElementHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 14
  store ptr %1, ptr %5, align 8, !tbaa !172
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetEndElementHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 15
  store ptr %1, ptr %5, align 8, !tbaa !173
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetCharacterDataHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 16
  store ptr %1, ptr %5, align 8, !tbaa !174
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetProcessingInstructionHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 17
  store ptr %1, ptr %5, align 8, !tbaa !175
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetCommentHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 18
  store ptr %1, ptr %5, align 8, !tbaa !176
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetCdataSectionHandler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 19
  store ptr %1, ptr %6, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 20
  store ptr %2, ptr %7, align 8, !tbaa !178
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetStartCdataSectionHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 19
  store ptr %1, ptr %5, align 8, !tbaa !177
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetEndCdataSectionHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 20
  store ptr %1, ptr %5, align 8, !tbaa !178
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetDefaultHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  store ptr %1, ptr %5, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 59
  store i8 0, ptr %6, align 8, !tbaa !112
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetDefaultHandlerExpand(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  store ptr %1, ptr %5, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 59
  store i8 1, ptr %6, align 8, !tbaa !112
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetDoctypeDeclHandler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 22
  store ptr %1, ptr %6, align 8, !tbaa !180
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 23
  store ptr %2, ptr %7, align 8, !tbaa !181
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetStartDoctypeDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 22
  store ptr %1, ptr %5, align 8, !tbaa !180
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetEndDoctypeDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 23
  store ptr %1, ptr %5, align 8, !tbaa !181
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetUnparsedEntityDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 24
  store ptr %1, ptr %5, align 8, !tbaa !182
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetNotationDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 25
  store ptr %1, ptr %5, align 8, !tbaa !183
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetNamespaceDeclHandler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 26
  store ptr %1, ptr %6, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 27
  store ptr %2, ptr %7, align 8, !tbaa !185
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetStartNamespaceDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 26
  store ptr %1, ptr %5, align 8, !tbaa !184
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetEndNamespaceDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 27
  store ptr %1, ptr %5, align 8, !tbaa !185
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetNotStandaloneHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 28
  store ptr %1, ptr %5, align 8, !tbaa !186
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetExternalEntityRefHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 29
  store ptr %1, ptr %5, align 8, !tbaa !187
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetExternalEntityRefHandlerArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  %7 = select i1 %5, ptr %0, ptr %1
  store ptr %7, ptr %6, align 8, !tbaa !105
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetSkippedEntityHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 31
  store ptr %1, ptr %5, align 8, !tbaa !106
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetUnknownEncodingHandler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 32
  store ptr %1, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 45
  store ptr %2, ptr %7, align 8, !tbaa !58
  br label %8

8:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetElementDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 33
  store ptr %1, ptr %5, align 8, !tbaa !188
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetAttlistDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 34
  store ptr %1, ptr %5, align 8, !tbaa !189
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetEntityDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 35
  store ptr %1, ptr %5, align 8, !tbaa !190
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XML_SetXmlDeclHandler(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 36
  store ptr %1, ptr %5, align 8, !tbaa !191
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XML_SetParamEntityParsing(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 95
  store i32 %1, ptr %11, align 4, !tbaa !126
  br label %12

12:                                               ; preds = %4, %2, %10
  %13 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @XML_SetHashSalt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 91
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 92
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = add i32 %12, -1
  %14 = and i32 %13, -3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 96
  store i64 0, ptr %17, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 96, i32 0, i64 1
  store i64 %1, ptr %18, align 8, !tbaa !29
  %19 = icmp eq i64 %1, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 97
  store i8 1, ptr %21, align 8, !tbaa !129
  %22 = tail call ptr @getenv(ptr noundef nonnull @.str.347) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__errno_location() #27
  store i32 0, ptr %25, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !30
  %26 = call i64 @strtoul(ptr noundef nonnull %22, ptr noundef nonnull %3, i32 noundef 10) #25
  %27 = load i32, ptr %25, align 4, !tbaa !33
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !30
  %31 = icmp eq ptr %30, %22
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %30, align 1, !tbaa !5
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %29, %24
  store i32 0, ptr %25, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %41

36:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %37 = icmp eq i64 %26, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @stderr, align 8, !tbaa !30
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef %1) #29
  br label %41

41:                                               ; preds = %38, %36, %35, %20, %10, %16, %2
  %42 = phi i32 [ 0, %2 ], [ 0, %10 ], [ 1, %16 ], [ 1, %20 ], [ 1, %35 ], [ 1, %36 ], [ 1, %38 ]
  ret i32 %42
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @XML_SetHashSalt16Bytes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %44, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %10, %7 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %8, i64 0, i32 91
  %10 = load ptr, ptr %9, align 8, !tbaa !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !26

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %8, i64 0, i32 92
  %14 = load i32, ptr %13, align 8, !tbaa !115
  %15 = add i32 %14, -1
  %16 = and i32 %15, -3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %8, i64 0, i32 96
  %20 = load i64, ptr %1, align 1
  store i64 %20, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %8, i64 0, i32 96, i32 0, i64 1
  store i64 %22, ptr %23, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %8, i64 0, i32 97
  store i8 1, ptr %24, align 8, !tbaa !129
  %25 = tail call ptr @getenv(ptr noundef nonnull @.str.347) #25
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = tail call ptr @__errno_location() #27
  store i32 0, ptr %28, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !30
  %29 = call i64 @strtoul(ptr noundef nonnull %25, ptr noundef nonnull %3, i32 noundef 10) #25
  %30 = load i32, ptr %28, align 4, !tbaa !33
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8, !tbaa !30
  %34 = icmp eq ptr %33, %25
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %33, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32, %27
  store i32 0, ptr %28, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %44

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %40 = icmp eq i64 %29, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @stderr, align 8, !tbaa !30
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.3, i64 noundef %20, i64 noundef %22) #29
  br label %44

44:                                               ; preds = %41, %39, %38, %18, %12, %2
  %45 = phi i8 [ 0, %2 ], [ 0, %12 ], [ 1, %18 ], [ 1, %38 ], [ 1, %39 ], [ 1, %41 ]
  ret i8 %45
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_Parse(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp slt i32 %2, 0
  %7 = or i1 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %15

12:                                               ; preds = %4
  br i1 %5, label %42, label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 41, ptr %14, align 8, !tbaa !111
  br label %42

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %17 = load i32, ptr %16, align 8, !tbaa !115
  switch i32 %17, label %31 [
    i32 3, label %18
    i32 2, label %20
    i32 0, label %22
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 33, ptr %19, align 8, !tbaa !111
  br label %42

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 36, ptr %21, align 8, !tbaa !111
  br label %42

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @startParsing(ptr noundef nonnull %0)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %30, align 8, !tbaa !111
  br label %42

31:                                               ; preds = %22, %26, %15
  store i32 1, ptr %16, align 8, !tbaa !115
  %32 = tail call ptr @XML_GetBuffer(ptr noundef nonnull %0, i32 noundef %2)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = icmp eq i32 %2, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  br i1 %9, label %37, label %38

37:                                               ; preds = %36
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 2391, ptr noundef nonnull @__PRETTY_FUNCTION__.XML_Parse) #28
  unreachable

38:                                               ; preds = %36
  %39 = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %32, ptr nonnull align 1 %1, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %38, %34
  %41 = tail call i32 @XML_ParseBuffer(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3), !range !192
  br label %42

42:                                               ; preds = %40, %31, %12, %13, %29, %20, %18
  %43 = phi i32 [ 0, %29 ], [ 0, %20 ], [ 0, %18 ], [ 0, %13 ], [ 0, %12 ], [ %41, %40 ], [ 0, %31 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @startParsing(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.sipkey, align 8
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 97
  %5 = load i8, ptr %4, align 8, !tbaa !129
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @writeRandomBytes_arc4random_buf(ptr noundef nonnull %3, i64 noundef 16) #25
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = call ptr @getenv(ptr noundef nonnull @.str.347) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @__errno_location() #27
  store i32 0, ptr %15, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !30
  %16 = call i64 @strtoul(ptr noundef nonnull %12, ptr noundef nonnull %2, i32 noundef 10) #25
  %17 = load i32, ptr %15, align 4, !tbaa !33
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !30
  %21 = icmp eq ptr %20, %12
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %20, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %14
  store i32 0, ptr %15, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  br label %31

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  %27 = icmp eq i64 %16, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr @stderr, align 8, !tbaa !30
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.349, i64 noundef %9, i64 noundef %11) #29
  br label %31

31:                                               ; preds = %7, %25, %26, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  store i64 %9, ptr %8, align 8, !tbaa.struct !128
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 96, i32 0, i64 1
  store i64 %11, ptr %32, align 8, !tbaa.struct !193
  store i8 1, ptr %4, align 8, !tbaa !129
  br label %33

33:                                               ; preds = %31, %1
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %35 = load i8, ptr %34, align 8, !tbaa !60
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call fastcc zeroext i8 @setContext(ptr noundef nonnull %0, ptr noundef nonnull @implicitContext)
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi i8 [ %38, %37 ], [ 1, %33 ]
  ret i8 %40
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_GetBuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %141, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %7, align 8, !tbaa !111
  br label %141

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %10 = load i32, ptr %9, align 8, !tbaa !115
  switch i32 %10, label %15 [
    i32 3, label %11
    i32 2, label %13
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 33, ptr %12, align 8, !tbaa !111
  br label %141

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 36, ptr %14, align 8, !tbaa !111
  br label %141

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 11
  store i32 %1, ptr %16, align 4, !tbaa !110
  %17 = zext nneg i32 %1 to i64
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = ptrtoint ptr %19 to i64
  %27 = ptrtoint ptr %23 to i64
  %28 = sub i64 %26, %27
  br label %29

29:                                               ; preds = %15, %21, %25
  %30 = phi i64 [ %28, %25 ], [ 0, %21 ], [ 0, %15 ]
  %31 = icmp slt i64 %30, %17
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %138

36:                                               ; preds = %32, %29
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !107
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = ptrtoint ptr %38 to i64
  %46 = ptrtoint ptr %42 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %36, %40, %44
  %50 = phi i32 [ %48, %44 ], [ 0, %40 ], [ 0, %36 ]
  %51 = add i32 %50, %1
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %54, align 8, !tbaa !111
  br label %141

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !107
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = ptrtoint ptr %57 to i64
  %65 = ptrtoint ptr %61 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %55, %59, %63
  %69 = phi i32 [ %67, %63 ], [ 0, %59 ], [ 0, %55 ]
  %70 = icmp sgt i32 %69, 1024
  %71 = tail call i32 @llvm.smin.i32(i32 %69, i32 1024)
  %72 = xor i32 %51, 2147483647
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %75, align 8, !tbaa !111
  br label %141

76:                                               ; preds = %68
  %77 = add nsw i32 %71, %51
  %78 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = icmp eq ptr %79, null
  br i1 %80, label %114, label %81

81:                                               ; preds = %76
  br i1 %58, label %82, label %86

82:                                               ; preds = %81
  %83 = ptrtoint ptr %19 to i64
  %84 = ptrtoint ptr %79 to i64
  %85 = sub i64 %83, %84
  br label %108

86:                                               ; preds = %81
  %87 = sext i32 %77 to i64
  %88 = ptrtoint ptr %19 to i64
  %89 = ptrtoint ptr %79 to i64
  %90 = sub i64 %88, %89
  %91 = select i1 %20, i64 0, i64 %90
  %92 = icmp slt i64 %91, %87
  br i1 %92, label %108, label %93

93:                                               ; preds = %86
  br i1 %70, label %94, label %136

94:                                               ; preds = %93
  %95 = sub nsw i32 %69, %71
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %79, i64 %96
  %98 = ptrtoint ptr %38 to i64
  %99 = ptrtoint ptr %57 to i64
  %100 = sub i64 %98, %99
  %101 = zext nneg i32 %71 to i64
  %102 = add nsw i64 %100, %101
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %79, ptr nonnull align 1 %97, i64 %102, i1 false)
  %103 = load ptr, ptr %37, align 8, !tbaa !108
  %104 = sub nsw i64 0, %96
  %105 = getelementptr inbounds i8, ptr %103, i64 %104
  store ptr %105, ptr %37, align 8, !tbaa !108
  %106 = load ptr, ptr %56, align 8, !tbaa !107
  %107 = getelementptr inbounds i8, ptr %106, i64 %104
  store ptr %107, ptr %56, align 8, !tbaa !107
  br label %136

108:                                              ; preds = %82, %86
  %109 = phi i64 [ %85, %82 ], [ %90, %86 ]
  %110 = freeze i64 %109
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, 0
  %113 = or i1 %20, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %76
  br label %115

115:                                              ; preds = %108, %114
  %116 = phi i32 [ %111, %108 ], [ 1024, %114 ]
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi i32 [ %119, %117 ], [ %116, %115 ]
  %119 = shl i32 %118, 1
  %120 = icmp slt i32 %119, %77
  %121 = icmp sgt i32 %119, 0
  %122 = and i1 %120, %121
  br i1 %122, label %117, label %123, !llvm.loop !194

123:                                              ; preds = %117
  %124 = icmp slt i32 %119, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %126, align 8, !tbaa !111
  br label %141

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !195
  %130 = zext nneg i32 %119 to i64
  %131 = tail call ptr %129(i64 noundef %130) #25
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  tail call fastcc void @setParserBuffer(ptr noundef nonnull %0, ptr noundef nonnull %131, i32 noundef %119, i32 noundef %71)
  br label %136

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %135, align 8, !tbaa !111
  br label %141

136:                                              ; preds = %94, %93, %133
  %137 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %137, i8 0, i64 24, i1 false)
  br label %138

138:                                              ; preds = %136, %32
  %139 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !108
  br label %141

141:                                              ; preds = %125, %134, %74, %53, %2, %138, %13, %11, %6
  %142 = phi ptr [ null, %6 ], [ %140, %138 ], [ null, %13 ], [ null, %11 ], [ null, %2 ], [ null, %53 ], [ null, %74 ], [ null, %134 ], [ null, %125 ]
  ret ptr %142
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_ParseBuffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 41, ptr %8, align 8, !tbaa !111
  br label %69

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %11 = load i32, ptr %10, align 8, !tbaa !115
  switch i32 %11, label %31 [
    i32 3, label %12
    i32 2, label %14
    i32 0, label %16
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 33, ptr %13, align 8, !tbaa !111
  br label %69

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 36, ptr %15, align 8, !tbaa !111
  br label %69

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 42, ptr %21, align 8, !tbaa !111
  br label %69

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @startParsing(ptr noundef nonnull %0)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 1, ptr %30, align 8, !tbaa !111
  br label %69

31:                                               ; preds = %22, %26, %9
  store i32 1, ptr %10, align 8, !tbaa !115
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 52
  store ptr %33, ptr %34, align 8, !tbaa !196
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = zext nneg i32 %1 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  store ptr %38, ptr %35, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 8
  store ptr %38, ptr %39, align 8, !tbaa !197
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !198
  %42 = add nsw i64 %41, %37
  store i64 %42, ptr %40, align 8, !tbaa !198
  %43 = trunc i32 %2 to i8
  %44 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  store i8 %43, ptr %44, align 4, !tbaa !199
  %45 = tail call fastcc i32 @callProcessor(ptr noundef nonnull %0, ptr noundef %33, ptr noundef %38, ptr noundef nonnull %32)
  %46 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 %45, ptr %46, align 8, !tbaa !111
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  store ptr %50, ptr %51, align 8, !tbaa !201
  %52 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @errorProcessor, ptr %52, align 8, !tbaa !103
  br label %69

53:                                               ; preds = %31
  %54 = load i32, ptr %10, align 8, !tbaa !115
  switch i32 %54, label %59 [
    i32 3, label %55
    i32 0, label %56
    i32 1, label %56
  ]

55:                                               ; preds = %53
  br label %59

56:                                               ; preds = %53, %53
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  store i32 2, ptr %10, align 8, !tbaa !115
  br label %69

59:                                               ; preds = %55, %56, %53
  %60 = phi i32 [ 1, %53 ], [ 1, %56 ], [ 2, %55 ]
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %62 = load ptr, ptr %61, align 8, !tbaa !202
  %63 = getelementptr inbounds %struct.encoding, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !203
  %65 = load ptr, ptr %34, align 8, !tbaa !196
  %66 = load ptr, ptr %32, align 8, !tbaa !107
  %67 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  tail call void %64(ptr noundef %62, ptr noundef %65, ptr noundef %66, ptr noundef nonnull %67) #25
  %68 = load ptr, ptr %32, align 8, !tbaa !107
  store ptr %68, ptr %34, align 8, !tbaa !196
  br label %69

69:                                               ; preds = %3, %59, %58, %48, %29, %20, %14, %12, %7
  %70 = phi i32 [ 0, %7 ], [ 0, %48 ], [ %60, %59 ], [ 1, %58 ], [ 0, %29 ], [ 0, %20 ], [ 0, %14 ], [ 0, %12 ], [ 0, %3 ]
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @callProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp ne ptr %2, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  %8 = ptrtoint ptr %2 to i64
  %9 = ptrtoint ptr %1 to i64
  %10 = sub i64 %8, %9
  %11 = select i1 %7, i64 %10, i64 0
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 10
  %13 = load i8, ptr %12, align 8, !tbaa !109
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %17 = load i8, ptr %16, align 4, !tbaa !199
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !204
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = ptrtoint ptr %23 to i64
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %30, %31
  br label %33

33:                                               ; preds = %19, %25, %29
  %34 = phi i64 [ %32, %29 ], [ 0, %25 ], [ 0, %19 ]
  %35 = tail call i64 @llvm.usub.sat.i64(i64 %34, i64 1024)
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !108
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = ptrtoint ptr %37 to i64
  %45 = ptrtoint ptr %41 to i64
  %46 = sub i64 %44, %45
  br label %47

47:                                               ; preds = %33, %39, %43
  %48 = phi i64 [ %46, %43 ], [ 0, %39 ], [ 0, %33 ]
  %49 = shl i64 %21, 1
  %50 = icmp ult i64 %11, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = add i64 %48, %35
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !110
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %82

58:                                               ; preds = %47, %51, %15, %4
  store ptr %1, ptr %3, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  %60 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  br label %62

62:                                               ; preds = %72, %58
  %63 = load ptr, ptr %59, align 8, !tbaa !103
  %64 = load ptr, ptr %3, align 8, !tbaa !30
  %65 = tail call i32 %63(ptr noundef nonnull %0, ptr noundef %64, ptr noundef %2, ptr noundef nonnull %3) #25
  %66 = load i32, ptr %60, align 8, !tbaa !115
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i8 0, ptr %61, align 8, !tbaa !116
  br label %74

69:                                               ; preds = %62
  %70 = load i8, ptr %61, align 8, !tbaa !116
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  store i8 0, ptr %61, align 8, !tbaa !116
  %73 = icmp eq i32 %65, 0
  br i1 %73, label %62, label %82

74:                                               ; preds = %69, %68
  %75 = icmp eq i32 %65, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = load ptr, ptr %3, align 8, !tbaa !30
  %78 = icmp eq ptr %77, %1
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 9
  br i1 %78, label %80, label %81

80:                                               ; preds = %76
  store i64 %11, ptr %79, align 8, !tbaa !204
  br label %82

81:                                               ; preds = %76
  store i64 0, ptr %79, align 8, !tbaa !204
  br label %82

82:                                               ; preds = %72, %57, %80, %81, %74
  %83 = phi i32 [ 0, %57 ], [ %65, %74 ], [ 0, %81 ], [ 0, %80 ], [ %65, %72 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @errorProcessor(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #6 {
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  %6 = load i32, ptr %5, align 8, !tbaa !111
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @setParserBuffer(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %14 = icmp eq ptr %13, null
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %9 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = select i1 %14, i32 0, i32 %18
  %20 = sext i32 %3 to i64
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds i8, ptr %9, i64 %21
  %23 = add nsw i32 %19, %3
  %24 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %22, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  tail call void %26(ptr noundef %28) #25
  store ptr %1, ptr %27, align 8, !tbaa !40
  %29 = sext i32 %19 to i64
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  %31 = getelementptr inbounds i8, ptr %30, i64 %20
  store ptr %31, ptr %12, align 8, !tbaa !108
  %32 = getelementptr inbounds i8, ptr %1, i64 %20
  br label %36

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  store ptr %1, ptr %34, align 8, !tbaa !40
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  store ptr %1, ptr %35, align 8, !tbaa !108
  br label %36

36:                                               ; preds = %33, %11
  %37 = phi ptr [ %1, %33 ], [ %32, %11 ]
  store ptr %37, ptr %8, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_StopParser(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %6 = load i32, ptr %5, align 8, !tbaa !115
  switch i32 %6, label %26 [
    i32 0, label %7
    i32 3, label %9
    i32 2, label %14
    i32 1, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 44, ptr %8, align 8, !tbaa !111
  br label %27

9:                                                ; preds = %4
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 33, ptr %12, align 8, !tbaa !111
  br label %27

13:                                               ; preds = %9
  store i32 2, ptr %5, align 8, !tbaa !115
  br label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 36, ptr %15, align 8, !tbaa !111
  br label %27

16:                                               ; preds = %4
  %17 = icmp eq i8 %1, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 93
  %20 = load i8, ptr %19, align 8, !tbaa !117
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 37, ptr %23, align 8, !tbaa !111
  br label %27

24:                                               ; preds = %18
  store i32 3, ptr %5, align 8, !tbaa !115
  br label %27

25:                                               ; preds = %16
  store i32 2, ptr %5, align 8, !tbaa !115
  br label %27

26:                                               ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 2623, ptr noundef nonnull @__PRETTY_FUNCTION__.XML_StopParser) #28
  unreachable

27:                                               ; preds = %13, %25, %24, %2, %22, %14, %11, %7
  %28 = phi i32 [ 0, %22 ], [ 0, %14 ], [ 0, %11 ], [ 0, %7 ], [ 0, %2 ], [ 1, %24 ], [ 1, %25 ], [ 1, %13 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XML_ResumeParser(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 34, ptr %8, align 8, !tbaa !111
  br label %41

9:                                                ; preds = %3
  store i32 1, ptr %4, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !197
  %14 = tail call fastcc i32 @callProcessor(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %13, ptr noundef nonnull %10)
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  store i32 %14, ptr %15, align 8, !tbaa !111
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %19 = load ptr, ptr %18, align 8, !tbaa !200
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  store ptr %19, ptr %20, align 8, !tbaa !201
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @errorProcessor, ptr %21, align 8, !tbaa !103
  br label %41

22:                                               ; preds = %9
  %23 = load i32, ptr %4, align 8, !tbaa !115
  switch i32 %23, label %30 [
    i32 3, label %24
    i32 0, label %25
    i32 1, label %25
  ]

24:                                               ; preds = %22
  br label %30

25:                                               ; preds = %22, %22
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %27 = load i8, ptr %26, align 4, !tbaa !199
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 2, ptr %4, align 8, !tbaa !115
  br label %41

30:                                               ; preds = %24, %25, %22
  %31 = phi i32 [ 1, %22 ], [ 1, %25 ], [ 2, %24 ]
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %33 = load ptr, ptr %32, align 8, !tbaa !202
  %34 = getelementptr inbounds %struct.encoding, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !203
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = load ptr, ptr %10, align 8, !tbaa !107
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  tail call void %35(ptr noundef %33, ptr noundef %37, ptr noundef %38, ptr noundef nonnull %39) #25
  %40 = load ptr, ptr %10, align 8, !tbaa !107
  store ptr %40, ptr %36, align 8, !tbaa !196
  br label %41

41:                                               ; preds = %1, %30, %29, %17, %7
  %42 = phi i32 [ 0, %7 ], [ 0, %17 ], [ %31, %30 ], [ 1, %29 ], [ 0, %1 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define dso_local void @XML_GetParsingStatus(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 2673, ptr noundef nonnull @__PRETTY_FUNCTION__.XML_GetParsingStatus) #28
  unreachable

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XML_GetErrorCode(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 49
  %5 = load i32, ptr %4, align 8, !tbaa !111
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 41, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XML_GetCurrentByteIndex(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !198
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = ptrtoint ptr %11 to i64
  %13 = ptrtoint ptr %5 to i64
  %14 = add i64 %9, %13
  %15 = sub i64 %14, %12
  br label %16

16:                                               ; preds = %3, %1, %7
  %17 = phi i64 [ %15, %7 ], [ -1, %1 ], [ -1, %3 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XML_GetCurrentByteCount(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = ptrtoint ptr %5 to i64
  %13 = ptrtoint ptr %9 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %3, %7, %1, %11
  %17 = phi i32 [ %15, %11 ], [ 0, %1 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @XML_GetInputContext(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %1, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = ptrtoint ptr %7 to i64
  %17 = ptrtoint ptr %11 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %1, align 4, !tbaa !33
  br label %20

20:                                               ; preds = %15, %13
  %21 = icmp eq ptr %2, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %11 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %2, align 4, !tbaa !33
  br label %29

29:                                               ; preds = %20, %22, %5, %9, %3
  %30 = phi ptr [ null, %3 ], [ null, %9 ], [ null, %5 ], [ %11, %22 ], [ %11, %20 ]
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XML_GetCurrentLineNumber(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp ult ptr %5, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = getelementptr inbounds %struct.encoding, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  tail call void %15(ptr noundef %13, ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %16) #25
  %17 = load ptr, ptr %4, align 8, !tbaa !200
  store ptr %17, ptr %8, align 8, !tbaa !196
  br label %18

18:                                               ; preds = %11, %7, %3
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  %20 = load i64, ptr %19, align 8, !tbaa !205
  %21 = add i64 %20, 1
  br label %22

22:                                               ; preds = %1, %18
  %23 = phi i64 [ %21, %18 ], [ 0, %1 ]
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XML_GetCurrentColumnNumber(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 52
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp ult ptr %5, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = getelementptr inbounds %struct.encoding, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85
  tail call void %15(ptr noundef %13, ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %16) #25
  %17 = load ptr, ptr %4, align 8, !tbaa !200
  store ptr %17, ptr %8, align 8, !tbaa !196
  br label %18

18:                                               ; preds = %11, %7, %3
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 85, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !206
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i64 [ %20, %18 ], [ 0, %1 ]
  ret i64 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @XML_FreeContentModel(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void %6(ptr noundef %1) #25
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @XML_MemMalloc(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = tail call ptr %6(i64 noundef %1) #25
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @XML_MemRealloc(ptr noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  %8 = tail call ptr %7(ptr noundef %1, i64 noundef %2) #25
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi ptr [ %8, %5 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @XML_MemFree(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void %6(ptr noundef %1) #25
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @XML_DefaultCurrent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  %10 = icmp eq ptr %9, null
  br i1 %10, label %99, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = load ptr, ptr %13, align 8, !tbaa !208
  %19 = getelementptr inbounds %struct.open_internal_entity, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %18, ptr %4, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct.encoding, ptr %17, i64 0, i32 13
  %22 = load i8, ptr %21, align 4, !tbaa !210
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  %27 = icmp eq ptr %26, %17
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %29 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %30 = select i1 %27, ptr %28, ptr %13
  %31 = select i1 %27, ptr %29, ptr %19
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %33 = getelementptr inbounds %struct.encoding, ptr %17, i64 0, i32 10
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %36

36:                                               ; preds = %36, %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %37 = load ptr, ptr %32, align 8, !tbaa !44
  store ptr %37, ptr %5, align 8, !tbaa !30
  %38 = load ptr, ptr %33, align 8, !tbaa !211
  %39 = load ptr, ptr %34, align 8, !tbaa !45
  %40 = call i32 %38(ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef %20, ptr noundef nonnull %5, ptr noundef %39) #25
  %41 = load ptr, ptr %4, align 8, !tbaa !30
  store ptr %41, ptr %31, align 8, !tbaa !30
  %42 = load ptr, ptr %8, align 8, !tbaa !179
  %43 = load ptr, ptr %35, align 8, !tbaa !125
  %44 = load ptr, ptr %32, align 8, !tbaa !44
  %45 = load ptr, ptr %5, align 8, !tbaa !30
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %44 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  call void %42(ptr noundef %43, ptr noundef %44, i32 noundef %49) #25
  %50 = load ptr, ptr %4, align 8, !tbaa !30
  store ptr %50, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  %51 = icmp ugt i32 %40, 1
  br i1 %51, label %36, label %59, !llvm.loop !212

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !125
  %55 = ptrtoint ptr %20 to i64
  %56 = ptrtoint ptr %18 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  tail call void %9(ptr noundef %54, ptr noundef %18, i32 noundef %58) #25
  br label %59

59:                                               ; preds = %36, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %99

60:                                               ; preds = %11
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %62 = load ptr, ptr %61, align 8, !tbaa !202
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %64 = load ptr, ptr %63, align 8, !tbaa !200
  %65 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %66 = load ptr, ptr %65, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %64, ptr %2, align 8, !tbaa !30
  %67 = getelementptr inbounds %struct.encoding, ptr %62, i64 0, i32 13
  %68 = load i8, ptr %67, align 4, !tbaa !210
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %72 = getelementptr inbounds %struct.encoding, ptr %62, i64 0, i32 10
  %73 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %74 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %75

75:                                               ; preds = %75, %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %76 = load ptr, ptr %71, align 8, !tbaa !44
  store ptr %76, ptr %3, align 8, !tbaa !30
  %77 = load ptr, ptr %72, align 8, !tbaa !211
  %78 = load ptr, ptr %73, align 8, !tbaa !45
  %79 = call i32 %77(ptr noundef nonnull %62, ptr noundef nonnull %2, ptr noundef %66, ptr noundef nonnull %3, ptr noundef %78) #25
  %80 = load ptr, ptr %2, align 8, !tbaa !30
  store ptr %80, ptr %65, align 8, !tbaa !30
  %81 = load ptr, ptr %8, align 8, !tbaa !179
  %82 = load ptr, ptr %74, align 8, !tbaa !125
  %83 = load ptr, ptr %71, align 8, !tbaa !44
  %84 = load ptr, ptr %3, align 8, !tbaa !30
  %85 = ptrtoint ptr %84 to i64
  %86 = ptrtoint ptr %83 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  call void %81(ptr noundef %82, ptr noundef %83, i32 noundef %88) #25
  %89 = load ptr, ptr %2, align 8, !tbaa !30
  store ptr %89, ptr %63, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %90 = icmp ugt i32 %79, 1
  br i1 %90, label %75, label %98, !llvm.loop !212

91:                                               ; preds = %60
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !125
  %94 = ptrtoint ptr %66 to i64
  %95 = ptrtoint ptr %64 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  tail call void %9(ptr noundef %93, ptr noundef %64, i32 noundef %97) #25
  br label %98

98:                                               ; preds = %75, %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %99

99:                                               ; preds = %59, %98, %1, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reportDefault(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !210
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.open_internal_entity, ptr %19, i64 0, i32 1
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %15, %14 ], [ %19, %17 ]
  %23 = phi ptr [ %16, %14 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %25 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %29

29:                                               ; preds = %29, %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %30 = load ptr, ptr %24, align 8, !tbaa !44
  store ptr %30, ptr %6, align 8, !tbaa !30
  %31 = load ptr, ptr %25, align 8, !tbaa !211
  %32 = load ptr, ptr %26, align 8, !tbaa !45
  %33 = call i32 %31(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %32) #25
  %34 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %34, ptr %23, align 8, !tbaa !30
  %35 = load ptr, ptr %27, align 8, !tbaa !179
  %36 = load ptr, ptr %28, align 8, !tbaa !125
  %37 = load ptr, ptr %24, align 8, !tbaa !44
  %38 = load ptr, ptr %6, align 8, !tbaa !30
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %37 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  call void %35(ptr noundef %36, ptr noundef %37, i32 noundef %42) #25
  %43 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %43, ptr %22, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %44 = icmp ugt i32 %33, 1
  br i1 %44, label %29, label %54, !llvm.loop !212

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !179
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !125
  %50 = ptrtoint ptr %3 to i64
  %51 = ptrtoint ptr %2 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  tail call void %47(ptr noundef %49, ptr noundef %2, i32 noundef %53) #25
  br label %54

54:                                               ; preds = %29, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @XML_ErrorString(i32 noundef %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 44
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.XML_ErrorString, i64 %6)
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ null, %1 ], [ %7, %4 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XML_ExpatVersion() local_unnamed_addr #9 {
  ret ptr @.str.51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @XML_ExpatVersionInfo() local_unnamed_addr #9 {
  ret { i64, i32 } { i64 34359738370, i32 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XML_GetFeatureList() local_unnamed_addr #9 {
  ret ptr @XML_GetFeatureList.features
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = fcmp uno float %1, 0.000000e+00
  %10 = fcmp olt float %1, 1.000000e+00
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 3
  store float %1, ptr %13, align 8, !tbaa !120
  br label %14

14:                                               ; preds = %2, %4, %8, %12
  %15 = phi i8 [ 1, %12 ], [ 0, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 4
  store i64 %1, ptr %9, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @XML_SetAllocTrackerMaximumAmplification(ptr noundef %0, float noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = fcmp uno float %1, 0.000000e+00
  %10 = fcmp olt float %1, 1.000000e+00
  %11 = or i1 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99, i32 3
  store float %1, ptr %13, align 8, !tbaa !35
  br label %14

14:                                               ; preds = %2, %4, %8, %12
  %15 = phi i8 [ 1, %12 ], [ 0, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @XML_SetAllocTrackerActivationThreshold(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99, i32 4
  store i64 %1, ptr %9, align 8, !tbaa !36
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef zeroext i8 @XML_SetReparseDeferralEnabled(ptr noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ult i8 %1, 2
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 10
  store i8 %1, ptr %7, align 8, !tbaa !109
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @testingAccountingGetCountBytesDirect(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98
  %5 = load i64, ptr %4, align 8, !tbaa !37
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @testingAccountingGetCountBytesIndirect(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !213
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @unsignedCharToPrintable(i8 noundef zeroext %0) local_unnamed_addr #9 {
  %2 = xor i8 %0, -128
  %3 = zext i8 %2 to i64
  %4 = shl i64 %3, 2
  %5 = call ptr @llvm.load.relative.i64(ptr @reltable.unsignedCharToPrintable, i64 %4)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @expat_heap_increase_tolerable(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.1, i32 noundef 850, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_heap_increase_tolerable) #28
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.1, i32 noundef 851, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_heap_increase_tolerable) #28
  unreachable

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99
  %11 = load i64, ptr %10, align 8, !tbaa !38
  %12 = xor i64 %11, -1
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %31, label %14

14:                                               ; preds = %9
  %15 = add i64 %11, %1
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !36
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @__assert_fail(ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.1, i32 noundef 863, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_heap_increase_tolerable) #28
  unreachable

22:                                               ; preds = %19
  %23 = uitofp i64 %15 to float
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98
  %25 = load i64, ptr %24, align 8, !tbaa !37
  %26 = uitofp i64 %25 to float
  %27 = fdiv float %23, %26
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99, i32 3
  %29 = load float, ptr %28, align 8, !tbaa !35
  %30 = fcmp ule float %27, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %9, %22
  %32 = phi i64 [ %15, %22 ], [ 0, %9 ]
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 99, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !34
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = uitofp i64 %32 to float
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 98
  %39 = load i64, ptr %38, align 8, !tbaa !37
  %40 = uitofp i64 %39 to float
  %41 = fdiv float %37, %40
  %42 = load ptr, ptr @stderr, align 8, !tbaa !30
  %43 = fpext float %41 to double
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.323, ptr noundef nonnull %0, i64 noundef %39, i32 noundef 43, i64 noundef %1, i64 noundef %32, i64 noundef %32, double noundef %43, i32 noundef %2) #29
  br label %45

45:                                               ; preds = %14, %36, %31, %22
  %46 = phi i1 [ false, %36 ], [ false, %31 ], [ true, %22 ], [ true, %14 ]
  ret i1 %46
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expat_malloc(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ugt i64 %1, -9
  br i1 %4, label %46, label %5

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 91
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !26

10:                                               ; preds = %5
  %11 = add i64 %1, 8
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 99
  %13 = load i64, ptr %12, align 8, !tbaa !38
  %14 = xor i64 %13, -1
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %46, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i1 @expat_heap_increase_tolerable(ptr noundef nonnull %6, i64 noundef %11, i32 noundef %2)
  br i1 %17, label %18, label %46

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !195
  %21 = tail call ptr %20(i64 noundef %11) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  store i64 %1, ptr %21, align 8, !tbaa !29
  %24 = load i64, ptr %12, align 8, !tbaa !38
  %25 = add i64 %24, %11
  store i64 %25, ptr %12, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 99, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !34
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 99, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !39
  %32 = icmp ugt i64 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 %25, ptr %30, align 8, !tbaa !39
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i64 [ %25, %33 ], [ %31, %29 ]
  %36 = uitofp i64 %25 to float
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %6, i64 0, i32 98
  %38 = load i64, ptr %37, align 8, !tbaa !37
  %39 = uitofp i64 %38 to float
  %40 = fdiv float %36, %39
  %41 = load ptr, ptr @stderr, align 8, !tbaa !30
  %42 = fpext float %40 to double
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.323, ptr noundef nonnull %6, i64 noundef %38, i32 noundef 43, i64 noundef %11, i64 noundef %25, i64 noundef %35, double noundef %42, i32 noundef %2) #29
  br label %44

44:                                               ; preds = %34, %23
  %45 = getelementptr inbounds i8, ptr %21, i64 8
  br label %46

46:                                               ; preds = %10, %16, %18, %44, %3
  %47 = phi ptr [ null, %3 ], [ null, %10 ], [ null, %16 ], [ %45, %44 ], [ null, %18 ]
  ret ptr %47
}

declare ptr @XmlGetUtf8InternalEncodingNS() local_unnamed_addr #3

declare ptr @XmlGetUtf8InternalEncoding() local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal i32 @prologInitProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %9 = load i8, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @XmlInitEncoding, ptr @XmlInitEncodingNS
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 38
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %14 = tail call i32 %11(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef %7) #25, !callees !170
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load ptr, ptr %6, align 8, !tbaa !62
  %18 = tail call fastcc i32 @handleUnknownEncoding(ptr noundef nonnull %0, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4, %16
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @prologProcessor, ptr %21, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %22 = load ptr, ptr %13, align 8, !tbaa !202
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = call i32 %23(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %25 = load ptr, ptr %13, align 8, !tbaa !202
  %26 = load ptr, ptr %5, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %28 = load i8, ptr %27, align 4, !tbaa !199
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  %31 = call fastcc i32 @doProlog(ptr noundef nonnull %0, ptr noundef %25, ptr noundef %1, ptr noundef %2, i32 noundef %24, ptr noundef %26, ptr noundef %3, i8 noundef zeroext %30, i8 noundef zeroext 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %32

32:                                               ; preds = %16, %20
  %33 = phi i32 [ %31, %20 ], [ %18, %16 ]
  ret i32 %33
}

declare void @XmlPrologStateInit(ptr noundef) local_unnamed_addr #3

declare i32 @XmlInitEncoding(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @prologProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = call i32 %8(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %10 = load ptr, ptr %6, align 8, !tbaa !202
  %11 = load ptr, ptr %5, align 8, !tbaa !30
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %13 = load i8, ptr %12, align 4, !tbaa !199
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  %16 = call fastcc i32 @doProlog(ptr noundef %0, ptr noundef %10, ptr noundef %1, ptr noundef %2, i32 noundef %9, ptr noundef %11, ptr noundef %3, i8 noundef zeroext %15, i8 noundef zeroext 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %16
}

declare i32 @XmlInitEncodingNS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @handleUnknownEncoding(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.XML_Encoding, align 8
  %4 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 32
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1048, ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 -1, i64 1024, i1 false), !tbaa !33
  %8 = getelementptr inbounds %struct.XML_Encoding, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %struct.XML_Encoding, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.XML_Encoding, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = call i32 %5(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %3) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %7
  %16 = call i32 @XmlSizeOfUnknownEncoding() #25
  %17 = sext i32 %16 to i64
  %18 = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %17, i32 noundef 4893)
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 43
  store ptr %18, ptr %19, align 8, !tbaa !82
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load ptr, ptr %10, align 8, !tbaa !214
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8, !tbaa !216
  call void %22(ptr noundef %25) #25
  br label %47

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %28 = load i8, ptr %27, align 8, !tbaa !60
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, ptr @XmlInitUnknownEncoding, ptr @XmlInitUnknownEncodingNS
  %31 = load ptr, ptr %8, align 8, !tbaa !217
  %32 = load ptr, ptr %9, align 8, !tbaa !216
  %33 = call ptr %30(ptr noundef nonnull %18, ptr noundef nonnull %3, ptr noundef %31, ptr noundef %32) #25, !callees !218
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %9, align 8, !tbaa !216
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 44
  store ptr %36, ptr %37, align 8, !tbaa !84
  %38 = load ptr, ptr %10, align 8, !tbaa !214
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 46
  store ptr %38, ptr %39, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  store ptr %33, ptr %40, align 8, !tbaa !202
  br label %47

41:                                               ; preds = %26, %7
  %42 = load ptr, ptr %10, align 8, !tbaa !214
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %9, align 8, !tbaa !216
  call void %42(ptr noundef %45) #25
  br label %46

46:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 1048, ptr nonnull %3) #25
  br label %49

47:                                               ; preds = %35, %24, %21
  %48 = phi i32 [ 1, %21 ], [ 1, %24 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 1048, ptr nonnull %3) #25
  br label %49

49:                                               ; preds = %2, %46, %47
  %50 = phi i32 [ %48, %47 ], [ 18, %46 ], [ 18, %2 ]
  ret i32 %50
}

declare i32 @XmlSizeOfUnknownEncoding() local_unnamed_addr #3

declare ptr @XmlInitUnknownEncodingNS(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @XmlInitUnknownEncoding(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @doProlog(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  store ptr %5, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %34 = load ptr, ptr %33, align 8, !tbaa !202
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %43

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = getelementptr inbounds %struct.open_internal_entity, ptr %41, i64 0, i32 1
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %39 ]
  %45 = phi ptr [ %37, %36 ], [ %41, %39 ]
  %46 = icmp ne i8 %7, 0
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 33
  %49 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 6
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 34
  %51 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 25
  %52 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 35
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 22
  %54 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 12
  %55 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 17
  %56 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 13
  %57 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 18
  %58 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 68
  %61 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 14
  %62 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 16
  %63 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 7
  %64 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 95
  %65 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 4
  %66 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 4, i32 3
  %67 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 4, i32 2
  %68 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 4, i32 4
  %69 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 10, i32 2
  %70 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 10
  %71 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 10, i32 1
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 4
  %73 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 8
  %74 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 29
  %76 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 9
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  %78 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 31
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 28
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 88
  %81 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 1
  %82 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 89
  %83 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %84 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %85 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %86 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %87 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 67
  %89 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 66
  %90 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 73
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %94 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %95 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %96 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 61
  %97 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 24
  %99 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 94
  %100 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 63
  %101 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 57
  %102 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 39
  %103 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 58
  %104 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 5, i32 4
  %105 = getelementptr inbounds %struct.DTD, ptr %32, i64 0, i32 5, i32 3
  %106 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 70
  %107 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 69
  %108 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 65
  %109 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 71
  %110 = icmp eq i8 %8, 1
  %111 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 62
  %112 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 64
  %113 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 23
  %114 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %115 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  br label %116

116:                                              ; preds = %2068, %43
  %117 = phi i32 [ %4, %43 ], [ %2071, %2068 ]
  %118 = phi ptr [ %2, %43 ], [ %2069, %2068 ]
  %119 = phi ptr [ %1, %43 ], [ %2057, %2068 ]
  store ptr %118, ptr %45, align 8, !tbaa !30
  %120 = load ptr, ptr %30, align 8, !tbaa !30
  store ptr %120, ptr %44, align 8, !tbaa !30
  %121 = icmp slt i32 %117, 1
  br i1 %121, label %122, label %148

122:                                              ; preds = %116
  %123 = icmp ne i32 %117, 0
  %124 = and i1 %46, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store ptr %118, ptr %6, align 8, !tbaa !30
  br label %2073

126:                                              ; preds = %122
  switch i32 %117, label %146 [
    i32 0, label %127
    i32 -1, label %2072
    i32 -2, label %2073
    i32 -15, label %148
    i32 -4, label %128
  ]

127:                                              ; preds = %126
  store ptr %120, ptr %45, align 8, !tbaa !30
  br label %2073

128:                                              ; preds = %126
  %129 = load ptr, ptr %33, align 8, !tbaa !202
  %130 = icmp eq ptr %119, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %74, align 8, !tbaa !73
  %133 = getelementptr inbounds %struct.open_internal_entity, ptr %132, i64 0, i32 5
  %134 = load i8, ptr %133, align 4, !tbaa !219
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  store ptr %118, ptr %6, align 8, !tbaa !30
  br label %2073

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 93
  %139 = load i8, ptr %138, align 8, !tbaa !117
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %2073, label %141

141:                                              ; preds = %131, %137
  %142 = load ptr, ptr %47, align 8, !tbaa !220
  %143 = call i32 %142(ptr noundef nonnull %47, i32 noundef -4, ptr noundef %3, ptr noundef %3, ptr noundef %119) #25
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %2073, label %145

145:                                              ; preds = %141
  store ptr %118, ptr %6, align 8, !tbaa !30
  br label %2073

146:                                              ; preds = %126
  %147 = sub nsw i32 0, %117
  store ptr %3, ptr %30, align 8, !tbaa !30
  br label %148

148:                                              ; preds = %126, %146, %116
  %149 = phi ptr [ %3, %146 ], [ %120, %116 ], [ %120, %126 ]
  %150 = phi i32 [ %147, %146 ], [ %117, %116 ], [ 15, %126 ]
  %151 = load ptr, ptr %47, align 8, !tbaa !220
  %152 = call i32 %151(ptr noundef nonnull %47, i32 noundef %150, ptr noundef %118, ptr noundef %149, ptr noundef %119) #25
  switch i32 %152, label %153 [
    i32 2, label %181
    i32 1, label %181
    i32 57, label %181
  ]

153:                                              ; preds = %148
  %154 = load ptr, ptr %30, align 8, !tbaa !30
  %155 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef %150, ptr noundef %118, ptr noundef %154, i32 noundef 5240, i32 noundef %9), !range !133
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %153, %157
  %158 = phi ptr [ %160, %157 ], [ %0, %153 ]
  %159 = getelementptr inbounds %struct.XML_ParserStruct, ptr %158, i64 0, i32 91
  %160 = load ptr, ptr %159, align 8, !tbaa !8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %157, !llvm.loop !26

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.XML_ParserStruct, ptr %158, i64 0, i32 98, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !119
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %2073, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.XML_ParserStruct, ptr %158, i64 0, i32 98
  %168 = load i64, ptr %167, align 8, !tbaa !37
  %169 = getelementptr inbounds %struct.XML_ParserStruct, ptr %158, i64 0, i32 98, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !213
  %171 = icmp eq i64 %168, 0
  %172 = uitofp i64 %168 to float
  %173 = select i1 %171, float 2.200000e+01, float %172
  %174 = select i1 %171, i64 22, i64 %168
  %175 = add i64 %174, %170
  %176 = uitofp i64 %175 to float
  %177 = fdiv float %176, %173
  %178 = load ptr, ptr @stderr, align 8, !tbaa !30
  %179 = fpext float %177 to double
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %178, ptr noundef nonnull @.str.330, ptr noundef nonnull %158, i64 noundef %168, i64 noundef %170, double noundef %179, ptr noundef nonnull @.str.336) #29
  br label %2073

181:                                              ; preds = %153, %148, %148, %148
  switch i32 %152, label %2015 [
    i32 1, label %182
    i32 4, label %188
    i32 7, label %231
    i32 57, label %251
    i32 6, label %257
    i32 14, label %336
    i32 8, label %422
    i32 2, label %502
    i32 34, label %543
    i32 22, label %547
    i32 23, label %552
    i32 24, label %553
    i32 25, label %554
    i32 26, label %555
    i32 27, label %556
    i32 28, label %557
    i32 29, label %558
    i32 30, label %559
    i32 31, label %566
    i32 32, label %566
    i32 35, label %615
    i32 36, label %615
    i32 37, label %686
    i32 38, label %686
    i32 12, label %767
    i32 5, label %897
    i32 13, label %967
    i32 15, label %1028
    i32 16, label %1051
    i32 9, label %1130
    i32 10, label %1201
    i32 18, label %1265
    i32 21, label %1306
    i32 19, label %1382
    i32 20, label %1449
    i32 -1, label %1475
    i32 58, label %1480
    i32 44, label %1529
    i32 50, label %1589
    i32 49, label %1602
    i32 60, label %1632
    i32 59, label %1632
    i32 40, label %1798
    i32 41, label %1806
    i32 42, label %1806
    i32 43, label %1827
    i32 51, label %1848
    i32 53, label %1844
    i32 52, label %1842
    i32 54, label %1843
    i32 45, label %1890
    i32 47, label %1887
    i32 46, label %1888
    i32 48, label %1889
    i32 55, label %1981
    i32 56, label %1985
    i32 0, label %1989
    i32 3, label %1991
    i32 11, label %1994
    i32 17, label %2000
    i32 33, label %2003
    i32 39, label %2009
  ]

182:                                              ; preds = %181
  %183 = load ptr, ptr %30, align 8, !tbaa !30
  %184 = call fastcc i32 @processXmlDecl(ptr noundef %0, i32 noundef 0, ptr noundef %118, ptr noundef %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %2073

186:                                              ; preds = %182
  %187 = load ptr, ptr %33, align 8, !tbaa !202
  br label %2056

188:                                              ; preds = %181
  %189 = load ptr, ptr %53, align 8, !tbaa !180
  %190 = icmp eq ptr %189, null
  br i1 %190, label %229, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29)
  store ptr %118, ptr %29, align 8, !tbaa !30
  %193 = load ptr, ptr %94, align 8, !tbaa !132
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %195, %191
  %199 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %200

200:                                              ; preds = %205, %198
  %201 = load ptr, ptr %199, align 8, !tbaa !211
  %202 = load ptr, ptr %93, align 8, !tbaa !131
  %203 = call i32 %201(ptr noundef %119, ptr noundef nonnull %29, ptr noundef %192, ptr noundef nonnull %94, ptr noundef %202) #25
  %204 = icmp ult i32 %203, 2
  br i1 %204, label %209, label %205

205:                                              ; preds = %200
  %206 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %200

208:                                              ; preds = %195, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29)
  br label %221

209:                                              ; preds = %200
  %210 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29)
  %211 = icmp eq ptr %210, null
  br i1 %211, label %221, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %94, align 8, !tbaa !132
  %214 = load ptr, ptr %93, align 8, !tbaa !131
  %215 = icmp eq ptr %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr %94, align 8, !tbaa !132
  br label %222

221:                                              ; preds = %209, %216, %208
  store ptr null, ptr %111, align 8, !tbaa !221
  br label %2073

222:                                              ; preds = %212, %219
  %223 = phi ptr [ %220, %219 ], [ %213, %212 ]
  %224 = getelementptr inbounds i8, ptr %223, i64 1
  store ptr %224, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %223, align 1, !tbaa !5
  %225 = load ptr, ptr %95, align 8, !tbaa !134
  store ptr %225, ptr %111, align 8, !tbaa !221
  %226 = icmp eq ptr %225, null
  br i1 %226, label %2073, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %228, ptr %95, align 8, !tbaa !156
  store ptr null, ptr %112, align 8, !tbaa !222
  br label %229

229:                                              ; preds = %227, %188
  %230 = phi i8 [ 0, %227 ], [ 1, %188 ]
  store ptr null, ptr %100, align 8, !tbaa !223
  br label %2012

231:                                              ; preds = %181
  %232 = load ptr, ptr %53, align 8, !tbaa !180
  %233 = icmp eq ptr %232, null
  br i1 %233, label %2015, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %59, align 8, !tbaa !125
  %236 = load ptr, ptr %111, align 8, !tbaa !221
  %237 = load ptr, ptr %100, align 8, !tbaa !223
  %238 = load ptr, ptr %112, align 8, !tbaa !222
  call void %232(ptr noundef %235, ptr noundef %236, ptr noundef %237, ptr noundef %238, i32 noundef 1) #25
  store ptr null, ptr %111, align 8, !tbaa !221
  %239 = load ptr, ptr %92, align 8, !tbaa !85
  %240 = icmp eq ptr %239, null
  %241 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %240, label %242, label %243

242:                                              ; preds = %234
  store ptr %241, ptr %92, align 8, !tbaa !85
  br label %250

243:                                              ; preds = %234
  %244 = icmp eq ptr %241, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %243, %245
  %246 = phi ptr [ %247, %245 ], [ %239, %243 ]
  %247 = phi ptr [ %248, %245 ], [ %241, %243 ]
  %248 = load ptr, ptr %247, align 8, !tbaa !30
  store ptr %246, ptr %247, align 8, !tbaa !30
  store ptr %247, ptr %92, align 8, !tbaa !85
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %245, !llvm.loop !87

250:                                              ; preds = %245, %242, %243
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %2056

251:                                              ; preds = %181
  %252 = load ptr, ptr %30, align 8, !tbaa !30
  %253 = call fastcc i32 @processXmlDecl(ptr noundef %0, i32 noundef 1, ptr noundef %118, ptr noundef %252)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %2073

255:                                              ; preds = %251
  %256 = load ptr, ptr %33, align 8, !tbaa !202
  br label %2056

257:                                              ; preds = %181
  store i8 0, ptr %99, align 1, !tbaa !118
  %258 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %70, ptr noundef nonnull @.str.97, i64 noundef 64)
  store ptr %258, ptr %96, align 8, !tbaa !224
  %259 = icmp eq ptr %258, null
  br i1 %259, label %2073, label %260

260:                                              ; preds = %257
  store i8 1, ptr %63, align 1, !tbaa !100
  %261 = load ptr, ptr %53, align 8, !tbaa !180
  %262 = icmp eq ptr %261, null
  br i1 %262, label %336, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 9
  %265 = load ptr, ptr %264, align 8, !tbaa !225
  %266 = load ptr, ptr %30, align 8, !tbaa !30
  %267 = call i32 %265(ptr noundef %119, ptr noundef %118, ptr noundef %266, ptr noundef nonnull %45) #25
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %2073, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %271 = load i32, ptr %270, align 8, !tbaa !226
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %118, i64 %272
  %274 = load ptr, ptr %30, align 8, !tbaa !30
  %275 = sub nsw i64 0, %272
  %276 = getelementptr inbounds i8, ptr %274, i64 %275
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28)
  store ptr %273, ptr %28, align 8, !tbaa !30
  %277 = load ptr, ptr %94, align 8, !tbaa !132
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %269
  %280 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %279, %269
  %283 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %284

284:                                              ; preds = %289, %282
  %285 = load ptr, ptr %283, align 8, !tbaa !211
  %286 = load ptr, ptr %93, align 8, !tbaa !131
  %287 = call i32 %285(ptr noundef nonnull %119, ptr noundef nonnull %28, ptr noundef %276, ptr noundef nonnull %94, ptr noundef %286) #25
  %288 = icmp ult i32 %287, 2
  br i1 %288, label %293, label %289

289:                                              ; preds = %284
  %290 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %284

292:                                              ; preds = %279, %289
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28)
  br label %2073

293:                                              ; preds = %284
  %294 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28)
  %295 = icmp eq ptr %294, null
  br i1 %295, label %2073, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %94, align 8, !tbaa !132
  %298 = load ptr, ptr %93, align 8, !tbaa !131
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %2073, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %94, align 8, !tbaa !132
  br label %305

305:                                              ; preds = %296, %303
  %306 = phi ptr [ %304, %303 ], [ %297, %296 ]
  %307 = getelementptr inbounds i8, ptr %306, i64 1
  store ptr %307, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %306, align 1, !tbaa !5
  %308 = load ptr, ptr %95, align 8, !tbaa !134
  %309 = icmp eq ptr %308, null
  br i1 %309, label %2073, label %310

310:                                              ; preds = %305, %323
  %311 = phi ptr [ %324, %323 ], [ %308, %305 ]
  %312 = phi ptr [ %325, %323 ], [ %308, %305 ]
  %313 = load i8, ptr %312, align 1, !tbaa !5
  switch i8 %313, label %320 [
    i8 0, label %326
    i8 32, label %314
    i8 13, label %314
    i8 10, label %314
  ]

314:                                              ; preds = %310, %310, %310
  %315 = icmp eq ptr %311, %308
  br i1 %315, label %323, label %316

316:                                              ; preds = %314
  %317 = getelementptr inbounds i8, ptr %311, i64 -1
  %318 = load i8, ptr %317, align 1, !tbaa !5
  %319 = icmp eq i8 %318, 32
  br i1 %319, label %323, label %320

320:                                              ; preds = %316, %310
  %321 = phi i8 [ 32, %316 ], [ %313, %310 ]
  %322 = getelementptr inbounds i8, ptr %311, i64 1
  store i8 %321, ptr %311, align 1, !tbaa !5
  br label %323

323:                                              ; preds = %320, %316, %314
  %324 = phi ptr [ %311, %316 ], [ %308, %314 ], [ %322, %320 ]
  %325 = getelementptr inbounds i8, ptr %312, i64 1
  br label %310, !llvm.loop !227

326:                                              ; preds = %310
  %327 = icmp eq ptr %311, %308
  br i1 %327, label %333, label %328

328:                                              ; preds = %326
  %329 = getelementptr inbounds i8, ptr %311, i64 -1
  %330 = load i8, ptr %329, align 1, !tbaa !5
  %331 = icmp eq i8 %330, 32
  %332 = select i1 %331, ptr %329, ptr %311
  br label %333

333:                                              ; preds = %328, %326
  %334 = phi ptr [ %308, %326 ], [ %332, %328 ]
  store i8 0, ptr %334, align 1, !tbaa !5
  %335 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %335, ptr %95, align 8, !tbaa !156
  store ptr %308, ptr %112, align 8, !tbaa !222
  br label %342

336:                                              ; preds = %260, %181
  %337 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 9
  %338 = load ptr, ptr %337, align 8, !tbaa !225
  %339 = load ptr, ptr %30, align 8, !tbaa !30
  %340 = call i32 %338(ptr noundef %119, ptr noundef %118, ptr noundef %339, ptr noundef nonnull %45) #25
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %2073, label %342

342:                                              ; preds = %333, %336
  %343 = phi i8 [ 1, %336 ], [ 0, %333 ]
  %344 = load i8, ptr %49, align 8, !tbaa !99
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %2012, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %96, align 8, !tbaa !224
  %348 = icmp eq ptr %347, null
  br i1 %348, label %2012, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %351 = load i32, ptr %350, align 8, !tbaa !226
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, ptr %118, i64 %352
  %354 = load ptr, ptr %30, align 8, !tbaa !30
  %355 = sub nsw i64 0, %352
  %356 = getelementptr inbounds i8, ptr %354, i64 %355
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27)
  store ptr %353, ptr %27, align 8, !tbaa !30
  %357 = load ptr, ptr %66, align 8, !tbaa !132
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %362

359:                                              ; preds = %349
  %360 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %359, %349
  %363 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %364

364:                                              ; preds = %369, %362
  %365 = load ptr, ptr %363, align 8, !tbaa !211
  %366 = load ptr, ptr %67, align 8, !tbaa !131
  %367 = call i32 %365(ptr noundef nonnull %119, ptr noundef nonnull %27, ptr noundef %356, ptr noundef nonnull %66, ptr noundef %366) #25
  %368 = icmp ult i32 %367, 2
  br i1 %368, label %373, label %369

369:                                              ; preds = %364
  %370 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %364

372:                                              ; preds = %359, %369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27)
  br label %2073

373:                                              ; preds = %364
  %374 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27)
  %375 = icmp eq ptr %374, null
  br i1 %375, label %2073, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %66, align 8, !tbaa !132
  %378 = load ptr, ptr %67, align 8, !tbaa !131
  %379 = icmp eq ptr %377, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %2073, label %383

383:                                              ; preds = %380
  %384 = load ptr, ptr %66, align 8, !tbaa !132
  br label %385

385:                                              ; preds = %376, %383
  %386 = phi ptr [ %384, %383 ], [ %377, %376 ]
  %387 = getelementptr inbounds i8, ptr %386, i64 1
  store ptr %387, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %386, align 1, !tbaa !5
  %388 = load ptr, ptr %68, align 8, !tbaa !134
  %389 = icmp eq ptr %388, null
  br i1 %389, label %2073, label %390

390:                                              ; preds = %385, %403
  %391 = phi ptr [ %404, %403 ], [ %388, %385 ]
  %392 = phi ptr [ %405, %403 ], [ %388, %385 ]
  %393 = load i8, ptr %392, align 1, !tbaa !5
  switch i8 %393, label %400 [
    i8 0, label %406
    i8 32, label %394
    i8 13, label %394
    i8 10, label %394
  ]

394:                                              ; preds = %390, %390, %390
  %395 = icmp eq ptr %391, %388
  br i1 %395, label %403, label %396

396:                                              ; preds = %394
  %397 = getelementptr inbounds i8, ptr %391, i64 -1
  %398 = load i8, ptr %397, align 1, !tbaa !5
  %399 = icmp eq i8 %398, 32
  br i1 %399, label %403, label %400

400:                                              ; preds = %396, %390
  %401 = phi i8 [ 32, %396 ], [ %393, %390 ]
  %402 = getelementptr inbounds i8, ptr %391, i64 1
  store i8 %401, ptr %391, align 1, !tbaa !5
  br label %403

403:                                              ; preds = %400, %396, %394
  %404 = phi ptr [ %391, %396 ], [ %388, %394 ], [ %402, %400 ]
  %405 = getelementptr inbounds i8, ptr %392, i64 1
  br label %390, !llvm.loop !227

406:                                              ; preds = %390
  %407 = icmp eq ptr %391, %388
  br i1 %407, label %413, label %408

408:                                              ; preds = %406
  %409 = getelementptr inbounds i8, ptr %391, i64 -1
  %410 = load i8, ptr %409, align 1, !tbaa !5
  %411 = icmp eq i8 %410, 32
  %412 = select i1 %411, ptr %409, ptr %391
  br label %413

413:                                              ; preds = %408, %406
  %414 = phi ptr [ %388, %406 ], [ %412, %408 ]
  store i8 0, ptr %414, align 1, !tbaa !5
  %415 = load ptr, ptr %96, align 8, !tbaa !224
  %416 = getelementptr inbounds %struct.ENTITY, ptr %415, i64 0, i32 6
  store ptr %388, ptr %416, align 8, !tbaa !228
  %417 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %417, ptr %68, align 8, !tbaa !161
  %418 = load ptr, ptr %52, align 8, !tbaa !190
  %419 = icmp ne ptr %418, null
  %420 = icmp eq i32 %152, 14
  %421 = and i1 %420, %419
  br i1 %421, label %2056, label %2012

422:                                              ; preds = %181
  br i1 %110, label %423, label %2073

423:                                              ; preds = %422
  %424 = load ptr, ptr %111, align 8, !tbaa !221
  %425 = icmp eq ptr %424, null
  br i1 %425, label %443, label %426

426:                                              ; preds = %423
  %427 = load ptr, ptr %53, align 8, !tbaa !180
  %428 = load ptr, ptr %59, align 8, !tbaa !125
  %429 = load ptr, ptr %100, align 8, !tbaa !223
  %430 = load ptr, ptr %112, align 8, !tbaa !222
  call void %427(ptr noundef %428, ptr noundef nonnull %424, ptr noundef %429, ptr noundef %430, i32 noundef 0) #25
  %431 = load ptr, ptr %92, align 8, !tbaa !85
  %432 = icmp eq ptr %431, null
  %433 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %432, label %434, label %435

434:                                              ; preds = %426
  store ptr %433, ptr %92, align 8, !tbaa !85
  br label %442

435:                                              ; preds = %426
  %436 = icmp eq ptr %433, null
  br i1 %436, label %442, label %437

437:                                              ; preds = %435, %437
  %438 = phi ptr [ %439, %437 ], [ %431, %435 ]
  %439 = phi ptr [ %440, %437 ], [ %433, %435 ]
  %440 = load ptr, ptr %439, align 8, !tbaa !30
  store ptr %438, ptr %439, align 8, !tbaa !30
  store ptr %439, ptr %92, align 8, !tbaa !85
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %437, !llvm.loop !87

442:                                              ; preds = %437, %434, %435
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %443

443:                                              ; preds = %442, %423
  %444 = phi i8 [ 0, %442 ], [ 1, %423 ]
  %445 = load ptr, ptr %100, align 8, !tbaa !223
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %443
  %448 = load i8, ptr %99, align 1, !tbaa !118
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %497, label %450

450:                                              ; preds = %447, %443
  %451 = load i8, ptr %63, align 1, !tbaa !100
  store i8 1, ptr %63, align 1, !tbaa !100
  %452 = load i32, ptr %64, align 4, !tbaa !126
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %496, label %454

454:                                              ; preds = %450
  %455 = load ptr, ptr %75, align 8, !tbaa !187
  %456 = icmp eq ptr %455, null
  br i1 %456, label %496, label %457

457:                                              ; preds = %454
  %458 = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %70, ptr noundef nonnull @.str.97, i64 noundef 64)
  %459 = icmp eq ptr %458, null
  br i1 %459, label %2073, label %460

460:                                              ; preds = %457
  %461 = load i8, ptr %99, align 1, !tbaa !118
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.ENTITY, ptr %458, i64 0, i32 5
  %465 = load ptr, ptr %464, align 8, !tbaa !230
  br label %469

466:                                              ; preds = %460
  %467 = load ptr, ptr %90, align 8, !tbaa !104
  %468 = getelementptr inbounds %struct.ENTITY, ptr %458, i64 0, i32 5
  store ptr %467, ptr %468, align 8, !tbaa !230
  br label %469

469:                                              ; preds = %463, %466
  %470 = phi ptr [ %465, %463 ], [ %467, %466 ]
  store i8 0, ptr %76, align 1, !tbaa !94
  %471 = load ptr, ptr %75, align 8, !tbaa !187
  %472 = load ptr, ptr %77, align 8, !tbaa !105
  %473 = getelementptr inbounds %struct.ENTITY, ptr %458, i64 0, i32 4
  %474 = load ptr, ptr %473, align 8, !tbaa !231
  %475 = getelementptr inbounds %struct.ENTITY, ptr %458, i64 0, i32 6
  %476 = load ptr, ptr %475, align 8, !tbaa !228
  %477 = call i32 %471(ptr noundef %472, ptr noundef null, ptr noundef %470, ptr noundef %474, ptr noundef %476) #25
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %2073, label %479

479:                                              ; preds = %469
  %480 = load i8, ptr %76, align 1, !tbaa !94
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %492, label %482

482:                                              ; preds = %479
  %483 = load i8, ptr %73, align 2, !tbaa !101
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %485, label %496

485:                                              ; preds = %482
  %486 = load ptr, ptr %79, align 8, !tbaa !186
  %487 = icmp eq ptr %486, null
  br i1 %487, label %496, label %488

488:                                              ; preds = %485
  %489 = load ptr, ptr %59, align 8, !tbaa !125
  %490 = call i32 %486(ptr noundef %489) #25
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %2073, label %496

492:                                              ; preds = %479
  %493 = load ptr, ptr %100, align 8, !tbaa !223
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %496

495:                                              ; preds = %492
  store i8 %451, ptr %63, align 1, !tbaa !100
  br label %496

496:                                              ; preds = %450, %454, %488, %485, %482, %495, %492
  store i8 0, ptr %99, align 1, !tbaa !118
  br label %497

497:                                              ; preds = %496, %447
  %498 = load ptr, ptr %113, align 8, !tbaa !181
  %499 = icmp eq ptr %498, null
  br i1 %499, label %2012, label %500

500:                                              ; preds = %497
  %501 = load ptr, ptr %59, align 8, !tbaa !125
  call void %498(ptr noundef %501) #25
  br label %2056

502:                                              ; preds = %181
  %503 = load i8, ptr %99, align 1, !tbaa !118
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %540, label %505

505:                                              ; preds = %502
  %506 = load i8, ptr %63, align 1, !tbaa !100
  store i8 1, ptr %63, align 1, !tbaa !100
  %507 = load i32, ptr %64, align 4, !tbaa !126
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %540, label %509

509:                                              ; preds = %505
  %510 = load ptr, ptr %75, align 8, !tbaa !187
  %511 = icmp eq ptr %510, null
  br i1 %511, label %540, label %512

512:                                              ; preds = %509
  %513 = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %70, ptr noundef nonnull @.str.97, i64 noundef 64)
  %514 = icmp eq ptr %513, null
  br i1 %514, label %2073, label %515

515:                                              ; preds = %512
  %516 = load ptr, ptr %90, align 8, !tbaa !104
  %517 = getelementptr inbounds %struct.ENTITY, ptr %513, i64 0, i32 5
  store ptr %516, ptr %517, align 8, !tbaa !230
  store i8 0, ptr %76, align 1, !tbaa !94
  %518 = load ptr, ptr %75, align 8, !tbaa !187
  %519 = load ptr, ptr %77, align 8, !tbaa !105
  %520 = getelementptr inbounds %struct.ENTITY, ptr %513, i64 0, i32 4
  %521 = load ptr, ptr %520, align 8, !tbaa !231
  %522 = getelementptr inbounds %struct.ENTITY, ptr %513, i64 0, i32 6
  %523 = load ptr, ptr %522, align 8, !tbaa !228
  %524 = call i32 %518(ptr noundef %519, ptr noundef null, ptr noundef %516, ptr noundef %521, ptr noundef %523) #25
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %2073, label %526

526:                                              ; preds = %515
  %527 = load i8, ptr %76, align 1, !tbaa !94
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %539, label %529

529:                                              ; preds = %526
  %530 = load i8, ptr %73, align 2, !tbaa !101
  %531 = icmp eq i8 %530, 0
  br i1 %531, label %532, label %540

532:                                              ; preds = %529
  %533 = load ptr, ptr %79, align 8, !tbaa !186
  %534 = icmp eq ptr %533, null
  br i1 %534, label %540, label %535

535:                                              ; preds = %532
  %536 = load ptr, ptr %59, align 8, !tbaa !125
  %537 = call i32 %533(ptr noundef %536) #25
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %2073, label %540

539:                                              ; preds = %526
  store i8 %506, ptr %63, align 1, !tbaa !100
  br label %540

540:                                              ; preds = %539, %535, %532, %529, %505, %509, %502
  %541 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @contentProcessor, ptr %541, align 8, !tbaa !103
  %542 = call i32 @contentProcessor(ptr noundef nonnull %0, ptr noundef %118, ptr noundef %3, ptr noundef %6)
  br label %2073

543:                                              ; preds = %181
  %544 = load ptr, ptr %30, align 8, !tbaa !30
  %545 = call fastcc ptr @getElementType(ptr noundef %0, ptr noundef %119, ptr noundef %118, ptr noundef %544)
  store ptr %545, ptr %60, align 8, !tbaa !123
  %546 = icmp eq ptr %545, null
  br i1 %546, label %2073, label %560

547:                                              ; preds = %181
  %548 = load ptr, ptr %30, align 8, !tbaa !30
  %549 = call fastcc ptr @getAttributeId(ptr noundef %0, ptr noundef %119, ptr noundef %118, ptr noundef %548)
  store ptr %549, ptr %107, align 8, !tbaa !232
  %550 = icmp eq ptr %549, null
  br i1 %550, label %2073, label %551

551:                                              ; preds = %547
  store i8 0, ptr %106, align 8, !tbaa !233
  store ptr null, ptr %108, align 8, !tbaa !234
  store i8 0, ptr %109, align 1, !tbaa !235
  br label %560

552:                                              ; preds = %181
  store i8 1, ptr %106, align 8, !tbaa !233
  store ptr @doProlog.atypeCDATA, ptr %108, align 8, !tbaa !234
  br label %560

553:                                              ; preds = %181
  store i8 1, ptr %109, align 1, !tbaa !235
  store ptr @doProlog.atypeID, ptr %108, align 8, !tbaa !234
  br label %560

554:                                              ; preds = %181
  store ptr @doProlog.atypeIDREF, ptr %108, align 8, !tbaa !234
  br label %560

555:                                              ; preds = %181
  store ptr @doProlog.atypeIDREFS, ptr %108, align 8, !tbaa !234
  br label %560

556:                                              ; preds = %181
  store ptr @doProlog.atypeENTITY, ptr %108, align 8, !tbaa !234
  br label %560

557:                                              ; preds = %181
  store ptr @doProlog.atypeENTITIES, ptr %108, align 8, !tbaa !234
  br label %560

558:                                              ; preds = %181
  store ptr @doProlog.atypeNMTOKEN, ptr %108, align 8, !tbaa !234
  br label %560

559:                                              ; preds = %181
  store ptr @doProlog.atypeNMTOKENS, ptr %108, align 8, !tbaa !234
  br label %560

560:                                              ; preds = %543, %559, %558, %557, %556, %555, %554, %553, %552, %551
  %561 = load i8, ptr %49, align 8, !tbaa !99
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %2015, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr %50, align 8, !tbaa !189
  %565 = icmp eq ptr %564, null
  br i1 %565, label %2015, label %2056

566:                                              ; preds = %181, %181
  %567 = load i8, ptr %49, align 8, !tbaa !99
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %2015, label %569

569:                                              ; preds = %566
  %570 = load ptr, ptr %50, align 8, !tbaa !189
  %571 = icmp eq ptr %570, null
  br i1 %571, label %2015, label %572

572:                                              ; preds = %569
  %573 = load ptr, ptr %108, align 8, !tbaa !234
  %574 = icmp eq ptr %573, null
  %575 = icmp eq i32 %152, 32
  %576 = select i1 %575, ptr @doProlog.notationPrefix, ptr @.str.102
  %577 = select i1 %574, ptr %576, ptr @.str.185
  %578 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %577) #30
  br label %579

579:                                              ; preds = %586, %572
  %580 = load ptr, ptr %93, align 8, !tbaa !131
  %581 = load ptr, ptr %94, align 8, !tbaa !132
  %582 = ptrtoint ptr %580 to i64
  %583 = ptrtoint ptr %581 to i64
  %584 = sub i64 %582, %583
  %585 = icmp ult i64 %584, %578
  br i1 %585, label %586, label %589

586:                                              ; preds = %579
  %587 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %2073, label %579

589:                                              ; preds = %579
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %581, ptr nonnull align 1 %577, i64 %578, i1 false)
  %590 = load ptr, ptr %94, align 8, !tbaa !132
  %591 = getelementptr inbounds i8, ptr %590, i64 %578
  store ptr %591, ptr %94, align 8, !tbaa !132
  %592 = load ptr, ptr %95, align 8, !tbaa !134
  %593 = icmp eq ptr %592, null
  br i1 %593, label %2073, label %594

594:                                              ; preds = %589
  %595 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26)
  store ptr %118, ptr %26, align 8, !tbaa !30
  %596 = icmp eq ptr %590, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %594
  %598 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %610, label %600

600:                                              ; preds = %597, %594
  %601 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %602

602:                                              ; preds = %607, %600
  %603 = load ptr, ptr %601, align 8, !tbaa !211
  %604 = load ptr, ptr %93, align 8, !tbaa !131
  %605 = call i32 %603(ptr noundef %119, ptr noundef nonnull %26, ptr noundef %595, ptr noundef nonnull %94, ptr noundef %604) #25
  %606 = icmp ult i32 %605, 2
  br i1 %606, label %611, label %607

607:                                              ; preds = %602
  %608 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %610, label %602

610:                                              ; preds = %597, %607
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26)
  br label %2073

611:                                              ; preds = %602
  %612 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26)
  %613 = icmp eq ptr %612, null
  br i1 %613, label %2073, label %614

614:                                              ; preds = %611
  store ptr %612, ptr %108, align 8, !tbaa !234
  br label %2056

615:                                              ; preds = %181, %181
  %616 = load i8, ptr %49, align 8, !tbaa !99
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %672, label %618

618:                                              ; preds = %615
  %619 = load ptr, ptr %60, align 8, !tbaa !123
  %620 = load ptr, ptr %107, align 8, !tbaa !232
  %621 = load i8, ptr %106, align 8, !tbaa !233
  %622 = load i8, ptr %109, align 1, !tbaa !235
  %623 = call fastcc i32 @defineAttribute(ptr noundef %619, ptr noundef %620, i8 noundef zeroext %621, i8 noundef zeroext %622, ptr noundef null, ptr noundef %0), !range !236
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %2073, label %625

625:                                              ; preds = %618
  %626 = load ptr, ptr %50, align 8, !tbaa !189
  %627 = icmp eq ptr %626, null
  br i1 %627, label %672, label %628

628:                                              ; preds = %625
  %629 = load ptr, ptr %108, align 8, !tbaa !234
  %630 = icmp eq ptr %629, null
  br i1 %630, label %672, label %631

631:                                              ; preds = %628
  %632 = load i8, ptr %629, align 1, !tbaa !5
  switch i8 %632, label %662 [
    i8 40, label %637
    i8 78, label %633
  ]

633:                                              ; preds = %631
  %634 = getelementptr inbounds i8, ptr %629, i64 1
  %635 = load i8, ptr %634, align 1, !tbaa !5
  %636 = icmp eq i8 %635, 79
  br i1 %636, label %637, label %662

637:                                              ; preds = %631, %633
  %638 = load ptr, ptr %94, align 8, !tbaa !132
  %639 = load ptr, ptr %93, align 8, !tbaa !131
  %640 = icmp eq ptr %638, %639
  br i1 %640, label %641, label %646

641:                                              ; preds = %637
  %642 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %2073, label %644

644:                                              ; preds = %641
  %645 = load ptr, ptr %94, align 8, !tbaa !132
  br label %646

646:                                              ; preds = %637, %644
  %647 = phi ptr [ %645, %644 ], [ %638, %637 ]
  %648 = getelementptr inbounds i8, ptr %647, i64 1
  store ptr %648, ptr %94, align 8, !tbaa !132
  store i8 41, ptr %647, align 1, !tbaa !5
  %649 = load ptr, ptr %94, align 8, !tbaa !132
  %650 = load ptr, ptr %93, align 8, !tbaa !131
  %651 = icmp eq ptr %649, %650
  br i1 %651, label %652, label %657

652:                                              ; preds = %646
  %653 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %654 = icmp eq i8 %653, 0
  br i1 %654, label %2073, label %655

655:                                              ; preds = %652
  %656 = load ptr, ptr %94, align 8, !tbaa !132
  br label %657

657:                                              ; preds = %646, %655
  %658 = phi ptr [ %656, %655 ], [ %649, %646 ]
  %659 = getelementptr inbounds i8, ptr %658, i64 1
  store ptr %659, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %658, align 1, !tbaa !5
  %660 = load ptr, ptr %95, align 8, !tbaa !156
  store ptr %660, ptr %108, align 8, !tbaa !234
  %661 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %661, ptr %95, align 8, !tbaa !156
  br label %662

662:                                              ; preds = %631, %657, %633
  store ptr %118, ptr %44, align 8, !tbaa !30
  %663 = load ptr, ptr %50, align 8, !tbaa !189
  %664 = load ptr, ptr %59, align 8, !tbaa !125
  %665 = load ptr, ptr %60, align 8, !tbaa !123
  %666 = load ptr, ptr %665, align 8, !tbaa !143
  %667 = load ptr, ptr %107, align 8, !tbaa !232
  %668 = load ptr, ptr %667, align 8, !tbaa !135
  %669 = load ptr, ptr %108, align 8, !tbaa !234
  %670 = icmp eq i32 %152, 36
  %671 = zext i1 %670 to i32
  call void %663(ptr noundef %664, ptr noundef %666, ptr noundef %668, ptr noundef %669, ptr noundef null, i32 noundef %671) #25
  br label %672

672:                                              ; preds = %625, %628, %662, %615
  %673 = phi i8 [ 0, %662 ], [ 1, %628 ], [ 1, %625 ], [ 1, %615 ]
  %674 = load ptr, ptr %92, align 8, !tbaa !85
  %675 = icmp eq ptr %674, null
  %676 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %675, label %677, label %678

677:                                              ; preds = %672
  store ptr %676, ptr %92, align 8, !tbaa !85
  br label %685

678:                                              ; preds = %672
  %679 = icmp eq ptr %676, null
  br i1 %679, label %685, label %680

680:                                              ; preds = %678, %680
  %681 = phi ptr [ %682, %680 ], [ %674, %678 ]
  %682 = phi ptr [ %683, %680 ], [ %676, %678 ]
  %683 = load ptr, ptr %682, align 8, !tbaa !30
  store ptr %681, ptr %682, align 8, !tbaa !30
  store ptr %682, ptr %92, align 8, !tbaa !85
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %680, !llvm.loop !87

685:                                              ; preds = %680, %677, %678
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %2012

686:                                              ; preds = %181, %181
  %687 = load i8, ptr %49, align 8, !tbaa !99
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %2015, label %689

689:                                              ; preds = %686
  %690 = load i8, ptr %106, align 8, !tbaa !233
  %691 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %692 = load i32, ptr %691, align 8, !tbaa !226
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i8, ptr %118, i64 %693
  %695 = load ptr, ptr %30, align 8, !tbaa !30
  %696 = sub nsw i64 0, %693
  %697 = getelementptr inbounds i8, ptr %695, i64 %696
  %698 = call fastcc i32 @storeAttributeValue(ptr noundef %0, ptr noundef %119, i8 noundef zeroext %690, ptr noundef %694, ptr noundef %697, ptr noundef nonnull %65, i32 noundef 2)
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %2073

700:                                              ; preds = %689
  %701 = load ptr, ptr %68, align 8, !tbaa !161
  %702 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %702, ptr %68, align 8, !tbaa !161
  %703 = load ptr, ptr %60, align 8, !tbaa !123
  %704 = load ptr, ptr %107, align 8, !tbaa !232
  %705 = load i8, ptr %106, align 8, !tbaa !233
  %706 = call fastcc i32 @defineAttribute(ptr noundef %703, ptr noundef %704, i8 noundef zeroext %705, i8 noundef zeroext 0, ptr noundef %701, ptr noundef nonnull %0), !range !236
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %2073, label %708

708:                                              ; preds = %700
  %709 = load ptr, ptr %50, align 8, !tbaa !189
  %710 = icmp eq ptr %709, null
  br i1 %710, label %2015, label %711

711:                                              ; preds = %708
  %712 = load ptr, ptr %108, align 8, !tbaa !234
  %713 = icmp eq ptr %712, null
  br i1 %713, label %2015, label %714

714:                                              ; preds = %711
  %715 = load i8, ptr %712, align 1, !tbaa !5
  switch i8 %715, label %745 [
    i8 40, label %720
    i8 78, label %716
  ]

716:                                              ; preds = %714
  %717 = getelementptr inbounds i8, ptr %712, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !5
  %719 = icmp eq i8 %718, 79
  br i1 %719, label %720, label %745

720:                                              ; preds = %714, %716
  %721 = load ptr, ptr %94, align 8, !tbaa !132
  %722 = load ptr, ptr %93, align 8, !tbaa !131
  %723 = icmp eq ptr %721, %722
  br i1 %723, label %724, label %729

724:                                              ; preds = %720
  %725 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %2073, label %727

727:                                              ; preds = %724
  %728 = load ptr, ptr %94, align 8, !tbaa !132
  br label %729

729:                                              ; preds = %720, %727
  %730 = phi ptr [ %728, %727 ], [ %721, %720 ]
  %731 = getelementptr inbounds i8, ptr %730, i64 1
  store ptr %731, ptr %94, align 8, !tbaa !132
  store i8 41, ptr %730, align 1, !tbaa !5
  %732 = load ptr, ptr %94, align 8, !tbaa !132
  %733 = load ptr, ptr %93, align 8, !tbaa !131
  %734 = icmp eq ptr %732, %733
  br i1 %734, label %735, label %740

735:                                              ; preds = %729
  %736 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %737 = icmp eq i8 %736, 0
  br i1 %737, label %2073, label %738

738:                                              ; preds = %735
  %739 = load ptr, ptr %94, align 8, !tbaa !132
  br label %740

740:                                              ; preds = %729, %738
  %741 = phi ptr [ %739, %738 ], [ %732, %729 ]
  %742 = getelementptr inbounds i8, ptr %741, i64 1
  store ptr %742, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %741, align 1, !tbaa !5
  %743 = load ptr, ptr %95, align 8, !tbaa !156
  store ptr %743, ptr %108, align 8, !tbaa !234
  %744 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %744, ptr %95, align 8, !tbaa !156
  br label %745

745:                                              ; preds = %714, %740, %716
  store ptr %118, ptr %44, align 8, !tbaa !30
  %746 = load ptr, ptr %50, align 8, !tbaa !189
  %747 = load ptr, ptr %59, align 8, !tbaa !125
  %748 = load ptr, ptr %60, align 8, !tbaa !123
  %749 = load ptr, ptr %748, align 8, !tbaa !143
  %750 = load ptr, ptr %107, align 8, !tbaa !232
  %751 = load ptr, ptr %750, align 8, !tbaa !135
  %752 = load ptr, ptr %108, align 8, !tbaa !234
  %753 = icmp eq i32 %152, 38
  %754 = zext i1 %753 to i32
  call void %746(ptr noundef %747, ptr noundef %749, ptr noundef %751, ptr noundef %752, ptr noundef %701, i32 noundef %754) #25
  %755 = load ptr, ptr %92, align 8, !tbaa !85
  %756 = icmp eq ptr %755, null
  %757 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %756, label %758, label %759

758:                                              ; preds = %745
  store ptr %757, ptr %92, align 8, !tbaa !85
  br label %766

759:                                              ; preds = %745
  %760 = icmp eq ptr %757, null
  br i1 %760, label %766, label %761

761:                                              ; preds = %759, %761
  %762 = phi ptr [ %763, %761 ], [ %755, %759 ]
  %763 = phi ptr [ %764, %761 ], [ %757, %759 ]
  %764 = load ptr, ptr %763, align 8, !tbaa !30
  store ptr %762, ptr %763, align 8, !tbaa !30
  store ptr %763, ptr %92, align 8, !tbaa !85
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %761, !llvm.loop !87

766:                                              ; preds = %761, %758, %759
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %2056

767:                                              ; preds = %181
  %768 = load i8, ptr %49, align 8, !tbaa !99
  %769 = icmp eq i8 %768, 0
  br i1 %769, label %2015, label %770

770:                                              ; preds = %767
  %771 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %772 = load i32, ptr %771, align 8, !tbaa !226
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i8, ptr %118, i64 %773
  %775 = load ptr, ptr %30, align 8, !tbaa !30
  %776 = sub nsw i64 0, %773
  %777 = getelementptr inbounds i8, ptr %775, i64 %776
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #25
  store ptr %774, ptr %24, align 8, !tbaa !30
  br label %778

778:                                              ; preds = %864, %770
  %779 = load ptr, ptr %101, align 8, !tbaa !79
  %780 = icmp eq ptr %779, null
  br i1 %780, label %852, label %781

781:                                              ; preds = %778
  %782 = getelementptr inbounds %struct.open_internal_entity, ptr %779, i64 0, i32 3
  %783 = load ptr, ptr %782, align 8, !tbaa !237
  %784 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 1
  %785 = load ptr, ptr %784, align 8, !tbaa !238
  %786 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 3
  %787 = load i32, ptr %786, align 4, !tbaa !239
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i8, ptr %785, i64 %788
  %790 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 2
  %791 = load i32, ptr %790, align 8, !tbaa !240
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i8, ptr %785, i64 %792
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #25
  store ptr %789, ptr %25, align 8, !tbaa !30
  %794 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 9
  %795 = load i8, ptr %794, align 1, !tbaa !241
  %796 = icmp eq i8 %795, 0
  br i1 %796, label %812, label %797

797:                                              ; preds = %781
  %798 = load ptr, ptr %102, align 8, !tbaa !63
  %799 = call fastcc i32 @storeEntityValue(ptr noundef nonnull %0, ptr noundef %798, ptr noundef %789, ptr noundef %793, i32 noundef 1, ptr noundef nonnull %25)
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %802, label %801

801:                                              ; preds = %797
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #25
  br label %865

802:                                              ; preds = %797
  %803 = load ptr, ptr %25, align 8, !tbaa !30
  %804 = icmp eq ptr %793, %803
  br i1 %804, label %811, label %805

805:                                              ; preds = %802
  %806 = load ptr, ptr %784, align 8, !tbaa !238
  %807 = ptrtoint ptr %803 to i64
  %808 = ptrtoint ptr %806 to i64
  %809 = sub i64 %807, %808
  %810 = trunc i64 %809 to i32
  store i32 %810, ptr %786, align 4, !tbaa !239
  br label %851

811:                                              ; preds = %802
  store i8 0, ptr %794, align 1, !tbaa !241
  br label %851

812:                                              ; preds = %781, %812
  %813 = phi ptr [ %815, %812 ], [ %0, %781 ]
  %814 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 91
  %815 = load ptr, ptr %814, align 8, !tbaa !8
  %816 = icmp eq ptr %815, null
  br i1 %816, label %817, label %812, !llvm.loop !26

817:                                              ; preds = %812
  %818 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 100, i32 3
  %819 = load i64, ptr %818, align 8, !tbaa !122
  %820 = icmp eq i64 %819, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %817
  %822 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 100, i32 1
  %823 = load i32, ptr %822, align 4, !tbaa !242
  %824 = add i32 %823, -1
  store i32 %824, ptr %822, align 4, !tbaa !242
  br label %846

825:                                              ; preds = %817
  %826 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 100
  %827 = load ptr, ptr %783, align 8, !tbaa !243
  %828 = load ptr, ptr @stderr, align 8, !tbaa !30
  %829 = load i32, ptr %826, align 8, !tbaa !244
  %830 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 100, i32 1
  %831 = load i32, ptr %830, align 4, !tbaa !242
  %832 = getelementptr inbounds %struct.XML_ParserStruct, ptr %813, i64 0, i32 100, i32 2
  %833 = load i32, ptr %832, align 8, !tbaa !245
  %834 = shl i32 %831, 1
  %835 = add i32 %834, -2
  %836 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 10
  %837 = load i8, ptr %836, align 2, !tbaa !246
  %838 = icmp eq i8 %837, 0
  %839 = select i1 %838, ptr @.str.100, ptr @.str.99
  %840 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %828, ptr noundef nonnull @.str.345, ptr noundef nonnull %813, i32 noundef %829, i32 noundef %831, i32 noundef %833, i32 noundef %835, ptr noundef nonnull @.str.329, ptr noundef nonnull %839, ptr noundef %827, ptr noundef nonnull @.str.346, i32 noundef %791, i32 noundef 6930) #29
  %841 = load ptr, ptr %101, align 8, !tbaa !79
  %842 = load i32, ptr %830, align 4, !tbaa !242
  %843 = add i32 %842, -1
  store i32 %843, ptr %830, align 4, !tbaa !242
  %844 = icmp eq ptr %841, %779
  br i1 %844, label %846, label %845

845:                                              ; preds = %825
  call void @__assert_fail(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.1, i32 noundef 6936, ptr noundef nonnull @__PRETTY_FUNCTION__.callStoreEntityValue) #28
  unreachable

846:                                              ; preds = %825, %821
  %847 = getelementptr inbounds %struct.ENTITY, ptr %783, i64 0, i32 8
  store i8 0, ptr %847, align 8, !tbaa !157
  %848 = getelementptr inbounds %struct.open_internal_entity, ptr %779, i64 0, i32 2
  %849 = load ptr, ptr %848, align 8, !tbaa !74
  store ptr %849, ptr %101, align 8, !tbaa !79
  %850 = load ptr, ptr %103, align 8, !tbaa !56
  store ptr %850, ptr %848, align 8, !tbaa !74
  store ptr %779, ptr %103, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #25
  br label %858

851:                                              ; preds = %811, %805
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #25
  br label %864

852:                                              ; preds = %778
  %853 = load ptr, ptr %24, align 8, !tbaa !30
  %854 = call fastcc i32 @storeEntityValue(ptr noundef nonnull %0, ptr noundef %119, ptr noundef %853, ptr noundef %777, i32 noundef 2, ptr noundef nonnull %24)
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %865

856:                                              ; preds = %852
  %857 = load ptr, ptr %101, align 8, !tbaa !79
  br label %858

858:                                              ; preds = %856, %846
  %859 = phi ptr [ %857, %856 ], [ %849, %846 ]
  %860 = icmp eq ptr %859, null
  %861 = load ptr, ptr %24, align 8
  %862 = icmp eq ptr %861, %777
  %863 = select i1 %860, i1 %862, i1 false
  br i1 %863, label %865, label %864

864:                                              ; preds = %858, %851
  br label %778

865:                                              ; preds = %852, %858, %801
  %866 = phi i32 [ %799, %801 ], [ %854, %852 ], [ 0, %858 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #25
  %867 = load ptr, ptr %96, align 8, !tbaa !224
  %868 = icmp eq ptr %867, null
  %869 = load ptr, ptr %104, align 8, !tbaa !247
  br i1 %868, label %893, label %870

870:                                              ; preds = %865
  %871 = getelementptr inbounds %struct.ENTITY, ptr %867, i64 0, i32 1
  store ptr %869, ptr %871, align 8, !tbaa !238
  %872 = load ptr, ptr %105, align 8, !tbaa !248
  %873 = ptrtoint ptr %872 to i64
  %874 = ptrtoint ptr %869 to i64
  %875 = sub i64 %873, %874
  %876 = trunc i64 %875 to i32
  %877 = getelementptr inbounds %struct.ENTITY, ptr %867, i64 0, i32 2
  store i32 %876, ptr %877, align 8, !tbaa !240
  store ptr %872, ptr %104, align 8, !tbaa !247
  %878 = load ptr, ptr %52, align 8, !tbaa !190
  %879 = icmp eq ptr %878, null
  br i1 %879, label %894, label %880

880:                                              ; preds = %870
  store ptr %118, ptr %44, align 8, !tbaa !30
  %881 = load ptr, ptr %52, align 8, !tbaa !190
  %882 = load ptr, ptr %59, align 8, !tbaa !125
  %883 = load ptr, ptr %96, align 8, !tbaa !224
  %884 = load ptr, ptr %883, align 8, !tbaa !243
  %885 = getelementptr inbounds %struct.ENTITY, ptr %883, i64 0, i32 10
  %886 = load i8, ptr %885, align 2, !tbaa !246
  %887 = zext i8 %886 to i32
  %888 = getelementptr inbounds %struct.ENTITY, ptr %883, i64 0, i32 1
  %889 = load ptr, ptr %888, align 8, !tbaa !238
  %890 = getelementptr inbounds %struct.ENTITY, ptr %883, i64 0, i32 2
  %891 = load i32, ptr %890, align 8, !tbaa !240
  %892 = load ptr, ptr %90, align 8, !tbaa !104
  call void %881(ptr noundef %882, ptr noundef %884, i32 noundef %887, ptr noundef %889, i32 noundef %891, ptr noundef %892, ptr noundef null, ptr noundef null, ptr noundef null) #25
  br label %894

893:                                              ; preds = %865
  store ptr %869, ptr %105, align 8, !tbaa !248
  br label %894

894:                                              ; preds = %870, %880, %893
  %895 = phi i8 [ 0, %880 ], [ 1, %870 ], [ 1, %893 ]
  %896 = icmp eq i32 %866, 0
  br i1 %896, label %2012, label %2073

897:                                              ; preds = %181
  store i8 0, ptr %99, align 1, !tbaa !118
  store i8 1, ptr %63, align 1, !tbaa !100
  %898 = load ptr, ptr %53, align 8, !tbaa !180
  %899 = icmp eq ptr %898, null
  br i1 %899, label %944, label %900

900:                                              ; preds = %897
  %901 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %902 = load i32, ptr %901, align 8, !tbaa !226
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i8, ptr %118, i64 %903
  %905 = load ptr, ptr %30, align 8, !tbaa !30
  %906 = sub nsw i64 0, %903
  %907 = getelementptr inbounds i8, ptr %905, i64 %906
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23)
  store ptr %904, ptr %23, align 8, !tbaa !30
  %908 = load ptr, ptr %94, align 8, !tbaa !132
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %913

910:                                              ; preds = %900
  %911 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %912 = icmp eq i8 %911, 0
  br i1 %912, label %923, label %913

913:                                              ; preds = %910, %900
  %914 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %915

915:                                              ; preds = %920, %913
  %916 = load ptr, ptr %914, align 8, !tbaa !211
  %917 = load ptr, ptr %93, align 8, !tbaa !131
  %918 = call i32 %916(ptr noundef nonnull %119, ptr noundef nonnull %23, ptr noundef %907, ptr noundef nonnull %94, ptr noundef %917) #25
  %919 = icmp ult i32 %918, 2
  br i1 %919, label %924, label %920

920:                                              ; preds = %915
  %921 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %922 = icmp eq i8 %921, 0
  br i1 %922, label %923, label %915

923:                                              ; preds = %910, %920
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23)
  br label %936

924:                                              ; preds = %915
  %925 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23)
  %926 = icmp eq ptr %925, null
  br i1 %926, label %936, label %927

927:                                              ; preds = %924
  %928 = load ptr, ptr %94, align 8, !tbaa !132
  %929 = load ptr, ptr %93, align 8, !tbaa !131
  %930 = icmp eq ptr %928, %929
  br i1 %930, label %931, label %937

931:                                              ; preds = %927
  %932 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %933 = icmp eq i8 %932, 0
  br i1 %933, label %936, label %934

934:                                              ; preds = %931
  %935 = load ptr, ptr %94, align 8, !tbaa !132
  br label %937

936:                                              ; preds = %924, %931, %923
  store ptr null, ptr %100, align 8, !tbaa !223
  br label %2073

937:                                              ; preds = %927, %934
  %938 = phi ptr [ %935, %934 ], [ %928, %927 ]
  %939 = getelementptr inbounds i8, ptr %938, i64 1
  store ptr %939, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %938, align 1, !tbaa !5
  %940 = load ptr, ptr %95, align 8, !tbaa !134
  store ptr %940, ptr %100, align 8, !tbaa !223
  %941 = icmp eq ptr %940, null
  br i1 %941, label %2073, label %942

942:                                              ; preds = %937
  %943 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %943, ptr %95, align 8, !tbaa !156
  br label %945

944:                                              ; preds = %897
  store ptr @.str.97, ptr %100, align 8, !tbaa !223
  br label %945

945:                                              ; preds = %944, %942
  %946 = phi i8 [ 0, %942 ], [ 1, %944 ]
  %947 = load i8, ptr %73, align 2, !tbaa !101
  %948 = icmp eq i8 %947, 0
  br i1 %948, label %949, label %959

949:                                              ; preds = %945
  %950 = load i32, ptr %64, align 4, !tbaa !126
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %959

952:                                              ; preds = %949
  %953 = load ptr, ptr %79, align 8, !tbaa !186
  %954 = icmp eq ptr %953, null
  br i1 %954, label %959, label %955

955:                                              ; preds = %952
  %956 = load ptr, ptr %59, align 8, !tbaa !125
  %957 = call i32 %953(ptr noundef %956) #25
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %2073, label %959

959:                                              ; preds = %955, %952, %949, %945
  %960 = load ptr, ptr %96, align 8, !tbaa !224
  %961 = icmp eq ptr %960, null
  br i1 %961, label %962, label %967

962:                                              ; preds = %959
  %963 = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %70, ptr noundef nonnull @.str.97, i64 noundef 64)
  store ptr %963, ptr %96, align 8, !tbaa !224
  %964 = icmp eq ptr %963, null
  br i1 %964, label %2073, label %965

965:                                              ; preds = %962
  %966 = getelementptr inbounds %struct.ENTITY, ptr %963, i64 0, i32 6
  store ptr null, ptr %966, align 8, !tbaa !228
  br label %967

967:                                              ; preds = %959, %965, %181
  %968 = phi i8 [ 1, %181 ], [ %946, %959 ], [ %946, %965 ]
  %969 = load i8, ptr %49, align 8, !tbaa !99
  %970 = icmp eq i8 %969, 0
  br i1 %970, label %2012, label %971

971:                                              ; preds = %967
  %972 = load ptr, ptr %96, align 8, !tbaa !224
  %973 = icmp eq ptr %972, null
  br i1 %973, label %2012, label %974

974:                                              ; preds = %971
  %975 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %976 = load i32, ptr %975, align 8, !tbaa !226
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds i8, ptr %118, i64 %977
  %979 = load ptr, ptr %30, align 8, !tbaa !30
  %980 = sub nsw i64 0, %977
  %981 = getelementptr inbounds i8, ptr %979, i64 %980
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22)
  store ptr %978, ptr %22, align 8, !tbaa !30
  %982 = load ptr, ptr %66, align 8, !tbaa !132
  %983 = icmp eq ptr %982, null
  br i1 %983, label %984, label %987

984:                                              ; preds = %974
  %985 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %986 = icmp eq i8 %985, 0
  br i1 %986, label %997, label %987

987:                                              ; preds = %984, %974
  %988 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %989

989:                                              ; preds = %994, %987
  %990 = load ptr, ptr %988, align 8, !tbaa !211
  %991 = load ptr, ptr %67, align 8, !tbaa !131
  %992 = call i32 %990(ptr noundef %119, ptr noundef nonnull %22, ptr noundef %981, ptr noundef nonnull %66, ptr noundef %991) #25
  %993 = icmp ult i32 %992, 2
  br i1 %993, label %998, label %994

994:                                              ; preds = %989
  %995 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %997, label %989

997:                                              ; preds = %984, %994
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22)
  br label %1010

998:                                              ; preds = %989
  %999 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22)
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1010, label %1001

1001:                                             ; preds = %998
  %1002 = load ptr, ptr %66, align 8, !tbaa !132
  %1003 = load ptr, ptr %67, align 8, !tbaa !131
  %1004 = icmp eq ptr %1002, %1003
  br i1 %1004, label %1005, label %1013

1005:                                             ; preds = %1001
  %1006 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1007 = icmp eq i8 %1006, 0
  br i1 %1007, label %1010, label %1008

1008:                                             ; preds = %1005
  %1009 = load ptr, ptr %66, align 8, !tbaa !132
  br label %1013

1010:                                             ; preds = %998, %1005, %997
  %1011 = load ptr, ptr %96, align 8, !tbaa !224
  %1012 = getelementptr inbounds %struct.ENTITY, ptr %1011, i64 0, i32 4
  store ptr null, ptr %1012, align 8, !tbaa !231
  br label %2073

1013:                                             ; preds = %1001, %1008
  %1014 = phi ptr [ %1009, %1008 ], [ %1002, %1001 ]
  %1015 = getelementptr inbounds i8, ptr %1014, i64 1
  store ptr %1015, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %1014, align 1, !tbaa !5
  %1016 = load ptr, ptr %68, align 8, !tbaa !134
  %1017 = load ptr, ptr %96, align 8, !tbaa !224
  %1018 = getelementptr inbounds %struct.ENTITY, ptr %1017, i64 0, i32 4
  store ptr %1016, ptr %1018, align 8, !tbaa !231
  %1019 = icmp eq ptr %1016, null
  br i1 %1019, label %2073, label %1020

1020:                                             ; preds = %1013
  %1021 = load ptr, ptr %90, align 8, !tbaa !104
  %1022 = getelementptr inbounds %struct.ENTITY, ptr %1017, i64 0, i32 5
  store ptr %1021, ptr %1022, align 8, !tbaa !230
  %1023 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %1023, ptr %68, align 8, !tbaa !161
  %1024 = load ptr, ptr %52, align 8, !tbaa !190
  %1025 = icmp ne ptr %1024, null
  %1026 = icmp eq i32 %152, 13
  %1027 = and i1 %1026, %1025
  br i1 %1027, label %2056, label %2012

1028:                                             ; preds = %181
  %1029 = load i8, ptr %49, align 8, !tbaa !99
  %1030 = icmp eq i8 %1029, 0
  br i1 %1030, label %2015, label %1031

1031:                                             ; preds = %1028
  %1032 = load ptr, ptr %96, align 8, !tbaa !224
  %1033 = icmp eq ptr %1032, null
  br i1 %1033, label %2015, label %1034

1034:                                             ; preds = %1031
  %1035 = load ptr, ptr %52, align 8, !tbaa !190
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %2015, label %1037

1037:                                             ; preds = %1034
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1038 = load ptr, ptr %52, align 8, !tbaa !190
  %1039 = load ptr, ptr %59, align 8, !tbaa !125
  %1040 = load ptr, ptr %96, align 8, !tbaa !224
  %1041 = load ptr, ptr %1040, align 8, !tbaa !243
  %1042 = getelementptr inbounds %struct.ENTITY, ptr %1040, i64 0, i32 10
  %1043 = load i8, ptr %1042, align 2, !tbaa !246
  %1044 = zext i8 %1043 to i32
  %1045 = getelementptr inbounds %struct.ENTITY, ptr %1040, i64 0, i32 5
  %1046 = load ptr, ptr %1045, align 8, !tbaa !230
  %1047 = getelementptr inbounds %struct.ENTITY, ptr %1040, i64 0, i32 4
  %1048 = load ptr, ptr %1047, align 8, !tbaa !231
  %1049 = getelementptr inbounds %struct.ENTITY, ptr %1040, i64 0, i32 6
  %1050 = load ptr, ptr %1049, align 8, !tbaa !228
  call void %1038(ptr noundef %1039, ptr noundef %1041, i32 noundef %1044, ptr noundef null, i32 noundef 0, ptr noundef %1046, ptr noundef %1048, ptr noundef %1050, ptr noundef null) #25
  br label %2056

1051:                                             ; preds = %181
  %1052 = load i8, ptr %49, align 8, !tbaa !99
  %1053 = icmp eq i8 %1052, 0
  br i1 %1053, label %2015, label %1054

1054:                                             ; preds = %1051
  %1055 = load ptr, ptr %96, align 8, !tbaa !224
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %2015, label %1057

1057:                                             ; preds = %1054
  %1058 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21)
  store ptr %118, ptr %21, align 8, !tbaa !30
  %1059 = load ptr, ptr %66, align 8, !tbaa !132
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1061, label %1064

1061:                                             ; preds = %1057
  %1062 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1063 = icmp eq i8 %1062, 0
  br i1 %1063, label %1074, label %1064

1064:                                             ; preds = %1061, %1057
  %1065 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1066

1066:                                             ; preds = %1071, %1064
  %1067 = load ptr, ptr %1065, align 8, !tbaa !211
  %1068 = load ptr, ptr %67, align 8, !tbaa !131
  %1069 = call i32 %1067(ptr noundef %119, ptr noundef nonnull %21, ptr noundef %1058, ptr noundef nonnull %66, ptr noundef %1068) #25
  %1070 = icmp ult i32 %1069, 2
  br i1 %1070, label %1075, label %1071

1071:                                             ; preds = %1066
  %1072 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1073 = icmp eq i8 %1072, 0
  br i1 %1073, label %1074, label %1066

1074:                                             ; preds = %1061, %1071
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21)
  br label %1087

1075:                                             ; preds = %1066
  %1076 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21)
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1087, label %1078

1078:                                             ; preds = %1075
  %1079 = load ptr, ptr %66, align 8, !tbaa !132
  %1080 = load ptr, ptr %67, align 8, !tbaa !131
  %1081 = icmp eq ptr %1079, %1080
  br i1 %1081, label %1082, label %1090

1082:                                             ; preds = %1078
  %1083 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1084 = icmp eq i8 %1083, 0
  br i1 %1084, label %1087, label %1085

1085:                                             ; preds = %1082
  %1086 = load ptr, ptr %66, align 8, !tbaa !132
  br label %1090

1087:                                             ; preds = %1075, %1082, %1074
  %1088 = load ptr, ptr %96, align 8, !tbaa !224
  %1089 = getelementptr inbounds %struct.ENTITY, ptr %1088, i64 0, i32 7
  store ptr null, ptr %1089, align 8, !tbaa !249
  br label %2073

1090:                                             ; preds = %1078, %1085
  %1091 = phi ptr [ %1086, %1085 ], [ %1079, %1078 ]
  %1092 = getelementptr inbounds i8, ptr %1091, i64 1
  store ptr %1092, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %1091, align 1, !tbaa !5
  %1093 = load ptr, ptr %68, align 8, !tbaa !134
  %1094 = load ptr, ptr %96, align 8, !tbaa !224
  %1095 = getelementptr inbounds %struct.ENTITY, ptr %1094, i64 0, i32 7
  store ptr %1093, ptr %1095, align 8, !tbaa !249
  %1096 = icmp eq ptr %1093, null
  br i1 %1096, label %2073, label %1097

1097:                                             ; preds = %1090
  %1098 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %1098, ptr %68, align 8, !tbaa !161
  %1099 = load ptr, ptr %98, align 8, !tbaa !182
  %1100 = icmp eq ptr %1099, null
  br i1 %1100, label %1114, label %1101

1101:                                             ; preds = %1097
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1102 = load ptr, ptr %98, align 8, !tbaa !182
  %1103 = load ptr, ptr %59, align 8, !tbaa !125
  %1104 = load ptr, ptr %96, align 8, !tbaa !224
  %1105 = load ptr, ptr %1104, align 8, !tbaa !243
  %1106 = getelementptr inbounds %struct.ENTITY, ptr %1104, i64 0, i32 5
  %1107 = load ptr, ptr %1106, align 8, !tbaa !230
  %1108 = getelementptr inbounds %struct.ENTITY, ptr %1104, i64 0, i32 4
  %1109 = load ptr, ptr %1108, align 8, !tbaa !231
  %1110 = getelementptr inbounds %struct.ENTITY, ptr %1104, i64 0, i32 6
  %1111 = load ptr, ptr %1110, align 8, !tbaa !228
  %1112 = getelementptr inbounds %struct.ENTITY, ptr %1104, i64 0, i32 7
  %1113 = load ptr, ptr %1112, align 8, !tbaa !249
  call void %1102(ptr noundef %1103, ptr noundef %1105, ptr noundef %1107, ptr noundef %1109, ptr noundef %1111, ptr noundef %1113) #25
  br label %2056

1114:                                             ; preds = %1097
  %1115 = load ptr, ptr %52, align 8, !tbaa !190
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %2015, label %1117

1117:                                             ; preds = %1114
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1118 = load ptr, ptr %52, align 8, !tbaa !190
  %1119 = load ptr, ptr %59, align 8, !tbaa !125
  %1120 = load ptr, ptr %96, align 8, !tbaa !224
  %1121 = load ptr, ptr %1120, align 8, !tbaa !243
  %1122 = getelementptr inbounds %struct.ENTITY, ptr %1120, i64 0, i32 5
  %1123 = load ptr, ptr %1122, align 8, !tbaa !230
  %1124 = getelementptr inbounds %struct.ENTITY, ptr %1120, i64 0, i32 4
  %1125 = load ptr, ptr %1124, align 8, !tbaa !231
  %1126 = getelementptr inbounds %struct.ENTITY, ptr %1120, i64 0, i32 6
  %1127 = load ptr, ptr %1126, align 8, !tbaa !228
  %1128 = getelementptr inbounds %struct.ENTITY, ptr %1120, i64 0, i32 7
  %1129 = load ptr, ptr %1128, align 8, !tbaa !249
  call void %1118(ptr noundef %1119, ptr noundef %1121, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %1123, ptr noundef %1125, ptr noundef %1127, ptr noundef %1129) #25
  br label %2056

1130:                                             ; preds = %181
  %1131 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 7
  %1132 = load ptr, ptr %1131, align 8, !tbaa !250
  %1133 = load ptr, ptr %30, align 8, !tbaa !30
  %1134 = call i32 %1132(ptr noundef %119, ptr noundef %118, ptr noundef %1133) #25
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1137, label %1136

1136:                                             ; preds = %1130
  store ptr null, ptr %96, align 8, !tbaa !224
  br label %2015

1137:                                             ; preds = %1130
  %1138 = load i8, ptr %49, align 8, !tbaa !99
  %1139 = icmp eq i8 %1138, 0
  br i1 %1139, label %1199, label %1140

1140:                                             ; preds = %1137
  %1141 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20)
  store ptr %118, ptr %20, align 8, !tbaa !30
  %1142 = load ptr, ptr %66, align 8, !tbaa !132
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1144, label %1147

1144:                                             ; preds = %1140
  %1145 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1146 = icmp eq i8 %1145, 0
  br i1 %1146, label %1157, label %1147

1147:                                             ; preds = %1144, %1140
  %1148 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1149

1149:                                             ; preds = %1154, %1147
  %1150 = load ptr, ptr %1148, align 8, !tbaa !211
  %1151 = load ptr, ptr %67, align 8, !tbaa !131
  %1152 = call i32 %1150(ptr noundef %119, ptr noundef nonnull %20, ptr noundef %1141, ptr noundef nonnull %66, ptr noundef %1151) #25
  %1153 = icmp ult i32 %1152, 2
  br i1 %1153, label %1158, label %1154

1154:                                             ; preds = %1149
  %1155 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1156 = icmp eq i8 %1155, 0
  br i1 %1156, label %1157, label %1149

1157:                                             ; preds = %1144, %1154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20)
  br label %2073

1158:                                             ; preds = %1149
  %1159 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20)
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %2073, label %1161

1161:                                             ; preds = %1158
  %1162 = load ptr, ptr %66, align 8, !tbaa !132
  %1163 = load ptr, ptr %67, align 8, !tbaa !131
  %1164 = icmp eq ptr %1162, %1163
  br i1 %1164, label %1165, label %1170

1165:                                             ; preds = %1161
  %1166 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1167 = icmp eq i8 %1166, 0
  br i1 %1167, label %2073, label %1168

1168:                                             ; preds = %1165
  %1169 = load ptr, ptr %66, align 8, !tbaa !132
  br label %1170

1170:                                             ; preds = %1161, %1168
  %1171 = phi ptr [ %1169, %1168 ], [ %1162, %1161 ]
  %1172 = getelementptr inbounds i8, ptr %1171, i64 1
  store ptr %1172, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %1171, align 1, !tbaa !5
  %1173 = load ptr, ptr %68, align 8, !tbaa !134
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %2073, label %1175

1175:                                             ; preds = %1170
  %1176 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %32, ptr noundef nonnull %1173, i64 noundef 64)
  store ptr %1176, ptr %96, align 8, !tbaa !224
  %1177 = icmp eq ptr %1176, null
  br i1 %1177, label %2073, label %1178

1178:                                             ; preds = %1175
  %1179 = load ptr, ptr %1176, align 8, !tbaa !243
  %1180 = icmp eq ptr %1179, %1173
  br i1 %1180, label %1183, label %1181

1181:                                             ; preds = %1178
  %1182 = load ptr, ptr %68, align 8, !tbaa !161
  store ptr %1182, ptr %66, align 8, !tbaa !229
  store ptr null, ptr %96, align 8, !tbaa !224
  br label %2015

1183:                                             ; preds = %1178
  %1184 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %1184, ptr %68, align 8, !tbaa !161
  %1185 = getelementptr inbounds %struct.ENTITY, ptr %1176, i64 0, i32 6
  store ptr null, ptr %1185, align 8, !tbaa !228
  %1186 = getelementptr inbounds %struct.ENTITY, ptr %1176, i64 0, i32 10
  store i8 0, ptr %1186, align 2, !tbaa !246
  %1187 = load ptr, ptr %97, align 8, !tbaa !8
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1189, label %1192

1189:                                             ; preds = %1183
  %1190 = load ptr, ptr %74, align 8, !tbaa !73
  %1191 = icmp ne ptr %1190, null
  br label %1192

1192:                                             ; preds = %1189, %1183
  %1193 = phi i1 [ true, %1183 ], [ %1191, %1189 ]
  %1194 = xor i1 %1193, true
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.ENTITY, ptr %1176, i64 0, i32 11
  store i8 %1195, ptr %1196, align 1, !tbaa !251
  %1197 = load ptr, ptr %52, align 8, !tbaa !190
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %2015, label %2056

1199:                                             ; preds = %1137
  %1200 = load ptr, ptr %68, align 8, !tbaa !161
  store ptr %1200, ptr %66, align 8, !tbaa !229
  store ptr null, ptr %96, align 8, !tbaa !224
  br label %2015

1201:                                             ; preds = %181
  %1202 = load i8, ptr %49, align 8, !tbaa !99
  %1203 = icmp eq i8 %1202, 0
  br i1 %1203, label %1263, label %1204

1204:                                             ; preds = %1201
  %1205 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19)
  store ptr %118, ptr %19, align 8, !tbaa !30
  %1206 = load ptr, ptr %66, align 8, !tbaa !132
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1208, label %1211

1208:                                             ; preds = %1204
  %1209 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1210 = icmp eq i8 %1209, 0
  br i1 %1210, label %1221, label %1211

1211:                                             ; preds = %1208, %1204
  %1212 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1213

1213:                                             ; preds = %1218, %1211
  %1214 = load ptr, ptr %1212, align 8, !tbaa !211
  %1215 = load ptr, ptr %67, align 8, !tbaa !131
  %1216 = call i32 %1214(ptr noundef %119, ptr noundef nonnull %19, ptr noundef %1205, ptr noundef nonnull %66, ptr noundef %1215) #25
  %1217 = icmp ult i32 %1216, 2
  br i1 %1217, label %1222, label %1218

1218:                                             ; preds = %1213
  %1219 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1220 = icmp eq i8 %1219, 0
  br i1 %1220, label %1221, label %1213

1221:                                             ; preds = %1208, %1218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19)
  br label %2073

1222:                                             ; preds = %1213
  %1223 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19)
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %2073, label %1225

1225:                                             ; preds = %1222
  %1226 = load ptr, ptr %66, align 8, !tbaa !132
  %1227 = load ptr, ptr %67, align 8, !tbaa !131
  %1228 = icmp eq ptr %1226, %1227
  br i1 %1228, label %1229, label %1234

1229:                                             ; preds = %1225
  %1230 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1231 = icmp eq i8 %1230, 0
  br i1 %1231, label %2073, label %1232

1232:                                             ; preds = %1229
  %1233 = load ptr, ptr %66, align 8, !tbaa !132
  br label %1234

1234:                                             ; preds = %1225, %1232
  %1235 = phi ptr [ %1233, %1232 ], [ %1226, %1225 ]
  %1236 = getelementptr inbounds i8, ptr %1235, i64 1
  store ptr %1236, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %1235, align 1, !tbaa !5
  %1237 = load ptr, ptr %68, align 8, !tbaa !134
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %2073, label %1239

1239:                                             ; preds = %1234
  %1240 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %70, ptr noundef nonnull %1237, i64 noundef 64)
  store ptr %1240, ptr %96, align 8, !tbaa !224
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %2073, label %1242

1242:                                             ; preds = %1239
  %1243 = load ptr, ptr %1240, align 8, !tbaa !243
  %1244 = icmp eq ptr %1243, %1237
  br i1 %1244, label %1247, label %1245

1245:                                             ; preds = %1242
  %1246 = load ptr, ptr %68, align 8, !tbaa !161
  store ptr %1246, ptr %66, align 8, !tbaa !229
  store ptr null, ptr %96, align 8, !tbaa !224
  br label %2015

1247:                                             ; preds = %1242
  %1248 = load ptr, ptr %66, align 8, !tbaa !229
  store ptr %1248, ptr %68, align 8, !tbaa !161
  %1249 = getelementptr inbounds %struct.ENTITY, ptr %1240, i64 0, i32 6
  store ptr null, ptr %1249, align 8, !tbaa !228
  %1250 = getelementptr inbounds %struct.ENTITY, ptr %1240, i64 0, i32 10
  store i8 1, ptr %1250, align 2, !tbaa !246
  %1251 = load ptr, ptr %97, align 8, !tbaa !8
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1253, label %1256

1253:                                             ; preds = %1247
  %1254 = load ptr, ptr %74, align 8, !tbaa !73
  %1255 = icmp ne ptr %1254, null
  br label %1256

1256:                                             ; preds = %1253, %1247
  %1257 = phi i1 [ true, %1247 ], [ %1255, %1253 ]
  %1258 = xor i1 %1257, true
  %1259 = zext i1 %1258 to i8
  %1260 = getelementptr inbounds %struct.ENTITY, ptr %1240, i64 0, i32 11
  store i8 %1259, ptr %1260, align 1, !tbaa !251
  %1261 = load ptr, ptr %52, align 8, !tbaa !190
  %1262 = icmp eq ptr %1261, null
  br i1 %1262, label %2015, label %2056

1263:                                             ; preds = %1201
  %1264 = load ptr, ptr %68, align 8, !tbaa !161
  store ptr %1264, ptr %66, align 8, !tbaa !229
  store ptr null, ptr %96, align 8, !tbaa !224
  br label %2015

1265:                                             ; preds = %181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %89, i8 0, i64 16, i1 false)
  %1266 = load ptr, ptr %51, align 8, !tbaa !183
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %2015, label %1268

1268:                                             ; preds = %1265
  %1269 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18)
  store ptr %118, ptr %18, align 8, !tbaa !30
  %1270 = load ptr, ptr %94, align 8, !tbaa !132
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1272, label %1275

1272:                                             ; preds = %1268
  %1273 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1274 = icmp eq i8 %1273, 0
  br i1 %1274, label %1285, label %1275

1275:                                             ; preds = %1272, %1268
  %1276 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1277

1277:                                             ; preds = %1282, %1275
  %1278 = load ptr, ptr %1276, align 8, !tbaa !211
  %1279 = load ptr, ptr %93, align 8, !tbaa !131
  %1280 = call i32 %1278(ptr noundef %119, ptr noundef nonnull %18, ptr noundef %1269, ptr noundef nonnull %94, ptr noundef %1279) #25
  %1281 = icmp ult i32 %1280, 2
  br i1 %1281, label %1286, label %1282

1282:                                             ; preds = %1277
  %1283 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1284 = icmp eq i8 %1283, 0
  br i1 %1284, label %1285, label %1277

1285:                                             ; preds = %1272, %1282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18)
  br label %1298

1286:                                             ; preds = %1277
  %1287 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18)
  %1288 = icmp eq ptr %1287, null
  br i1 %1288, label %1298, label %1289

1289:                                             ; preds = %1286
  %1290 = load ptr, ptr %94, align 8, !tbaa !132
  %1291 = load ptr, ptr %93, align 8, !tbaa !131
  %1292 = icmp eq ptr %1290, %1291
  br i1 %1292, label %1293, label %1299

1293:                                             ; preds = %1289
  %1294 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1295 = icmp eq i8 %1294, 0
  br i1 %1295, label %1298, label %1296

1296:                                             ; preds = %1293
  %1297 = load ptr, ptr %94, align 8, !tbaa !132
  br label %1299

1298:                                             ; preds = %1286, %1293, %1285
  store ptr null, ptr %89, align 8, !tbaa !252
  br label %2073

1299:                                             ; preds = %1289, %1296
  %1300 = phi ptr [ %1297, %1296 ], [ %1290, %1289 ]
  %1301 = getelementptr inbounds i8, ptr %1300, i64 1
  store ptr %1301, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %1300, align 1, !tbaa !5
  %1302 = load ptr, ptr %95, align 8, !tbaa !134
  store ptr %1302, ptr %89, align 8, !tbaa !252
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %2073, label %1304

1304:                                             ; preds = %1299
  %1305 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %1305, ptr %95, align 8, !tbaa !156
  br label %2056

1306:                                             ; preds = %181
  %1307 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 9
  %1308 = load ptr, ptr %1307, align 8, !tbaa !225
  %1309 = load ptr, ptr %30, align 8, !tbaa !30
  %1310 = call i32 %1308(ptr noundef %119, ptr noundef %118, ptr noundef %1309, ptr noundef nonnull %45) #25
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %2073, label %1312

1312:                                             ; preds = %1306
  %1313 = load ptr, ptr %89, align 8, !tbaa !252
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %2015, label %1315

1315:                                             ; preds = %1312
  %1316 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %1317 = load i32, ptr %1316, align 8, !tbaa !226
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds i8, ptr %118, i64 %1318
  %1320 = load ptr, ptr %30, align 8, !tbaa !30
  %1321 = sub nsw i64 0, %1318
  %1322 = getelementptr inbounds i8, ptr %1320, i64 %1321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17)
  store ptr %1319, ptr %17, align 8, !tbaa !30
  %1323 = load ptr, ptr %94, align 8, !tbaa !132
  %1324 = icmp eq ptr %1323, null
  br i1 %1324, label %1325, label %1328

1325:                                             ; preds = %1315
  %1326 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1327 = icmp eq i8 %1326, 0
  br i1 %1327, label %1338, label %1328

1328:                                             ; preds = %1325, %1315
  %1329 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1330

1330:                                             ; preds = %1335, %1328
  %1331 = load ptr, ptr %1329, align 8, !tbaa !211
  %1332 = load ptr, ptr %93, align 8, !tbaa !131
  %1333 = call i32 %1331(ptr noundef nonnull %119, ptr noundef nonnull %17, ptr noundef %1322, ptr noundef nonnull %94, ptr noundef %1332) #25
  %1334 = icmp ult i32 %1333, 2
  br i1 %1334, label %1339, label %1335

1335:                                             ; preds = %1330
  %1336 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1337 = icmp eq i8 %1336, 0
  br i1 %1337, label %1338, label %1330

1338:                                             ; preds = %1325, %1335
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17)
  br label %2073

1339:                                             ; preds = %1330
  %1340 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17)
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %2073, label %1342

1342:                                             ; preds = %1339
  %1343 = load ptr, ptr %94, align 8, !tbaa !132
  %1344 = load ptr, ptr %93, align 8, !tbaa !131
  %1345 = icmp eq ptr %1343, %1344
  br i1 %1345, label %1346, label %1351

1346:                                             ; preds = %1342
  %1347 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1348 = icmp eq i8 %1347, 0
  br i1 %1348, label %2073, label %1349

1349:                                             ; preds = %1346
  %1350 = load ptr, ptr %94, align 8, !tbaa !132
  br label %1351

1351:                                             ; preds = %1342, %1349
  %1352 = phi ptr [ %1350, %1349 ], [ %1343, %1342 ]
  %1353 = getelementptr inbounds i8, ptr %1352, i64 1
  store ptr %1353, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %1352, align 1, !tbaa !5
  %1354 = load ptr, ptr %95, align 8, !tbaa !134
  %1355 = icmp eq ptr %1354, null
  br i1 %1355, label %2073, label %1356

1356:                                             ; preds = %1351, %1369
  %1357 = phi ptr [ %1370, %1369 ], [ %1354, %1351 ]
  %1358 = phi ptr [ %1371, %1369 ], [ %1354, %1351 ]
  %1359 = load i8, ptr %1358, align 1, !tbaa !5
  switch i8 %1359, label %1366 [
    i8 0, label %1372
    i8 32, label %1360
    i8 13, label %1360
    i8 10, label %1360
  ]

1360:                                             ; preds = %1356, %1356, %1356
  %1361 = icmp eq ptr %1357, %1354
  br i1 %1361, label %1369, label %1362

1362:                                             ; preds = %1360
  %1363 = getelementptr inbounds i8, ptr %1357, i64 -1
  %1364 = load i8, ptr %1363, align 1, !tbaa !5
  %1365 = icmp eq i8 %1364, 32
  br i1 %1365, label %1369, label %1366

1366:                                             ; preds = %1362, %1356
  %1367 = phi i8 [ 32, %1362 ], [ %1359, %1356 ]
  %1368 = getelementptr inbounds i8, ptr %1357, i64 1
  store i8 %1367, ptr %1357, align 1, !tbaa !5
  br label %1369

1369:                                             ; preds = %1366, %1362, %1360
  %1370 = phi ptr [ %1357, %1362 ], [ %1354, %1360 ], [ %1368, %1366 ]
  %1371 = getelementptr inbounds i8, ptr %1358, i64 1
  br label %1356, !llvm.loop !227

1372:                                             ; preds = %1356
  %1373 = icmp eq ptr %1357, %1354
  br i1 %1373, label %1379, label %1374

1374:                                             ; preds = %1372
  %1375 = getelementptr inbounds i8, ptr %1357, i64 -1
  %1376 = load i8, ptr %1375, align 1, !tbaa !5
  %1377 = icmp eq i8 %1376, 32
  %1378 = select i1 %1377, ptr %1375, ptr %1357
  br label %1379

1379:                                             ; preds = %1374, %1372
  %1380 = phi ptr [ %1354, %1372 ], [ %1378, %1374 ]
  store i8 0, ptr %1380, align 1, !tbaa !5
  store ptr %1354, ptr %88, align 8, !tbaa !253
  %1381 = load ptr, ptr %94, align 8, !tbaa !159
  store ptr %1381, ptr %95, align 8, !tbaa !156
  br label %2056

1382:                                             ; preds = %181
  %1383 = load ptr, ptr %89, align 8, !tbaa !252
  %1384 = icmp eq ptr %1383, null
  br i1 %1384, label %1435, label %1385

1385:                                             ; preds = %1382
  %1386 = load ptr, ptr %51, align 8, !tbaa !183
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1435, label %1388

1388:                                             ; preds = %1385
  %1389 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %1390 = load i32, ptr %1389, align 8, !tbaa !226
  %1391 = sext i32 %1390 to i64
  %1392 = getelementptr inbounds i8, ptr %118, i64 %1391
  %1393 = load ptr, ptr %30, align 8, !tbaa !30
  %1394 = sub nsw i64 0, %1391
  %1395 = getelementptr inbounds i8, ptr %1393, i64 %1394
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16)
  store ptr %1392, ptr %16, align 8, !tbaa !30
  %1396 = load ptr, ptr %94, align 8, !tbaa !132
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1398, label %1401

1398:                                             ; preds = %1388
  %1399 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1400 = icmp eq i8 %1399, 0
  br i1 %1400, label %1411, label %1401

1401:                                             ; preds = %1398, %1388
  %1402 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1403

1403:                                             ; preds = %1408, %1401
  %1404 = load ptr, ptr %1402, align 8, !tbaa !211
  %1405 = load ptr, ptr %93, align 8, !tbaa !131
  %1406 = call i32 %1404(ptr noundef nonnull %119, ptr noundef nonnull %16, ptr noundef %1395, ptr noundef nonnull %94, ptr noundef %1405) #25
  %1407 = icmp ult i32 %1406, 2
  br i1 %1407, label %1412, label %1408

1408:                                             ; preds = %1403
  %1409 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1410 = icmp eq i8 %1409, 0
  br i1 %1410, label %1411, label %1403

1411:                                             ; preds = %1398, %1408
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16)
  br label %2073

1412:                                             ; preds = %1403
  %1413 = load ptr, ptr %95, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16)
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %2073, label %1415

1415:                                             ; preds = %1412
  %1416 = load ptr, ptr %94, align 8, !tbaa !132
  %1417 = load ptr, ptr %93, align 8, !tbaa !131
  %1418 = icmp eq ptr %1416, %1417
  br i1 %1418, label %1419, label %1424

1419:                                             ; preds = %1415
  %1420 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %91), !range !133
  %1421 = icmp eq i8 %1420, 0
  br i1 %1421, label %2073, label %1422

1422:                                             ; preds = %1419
  %1423 = load ptr, ptr %94, align 8, !tbaa !132
  br label %1424

1424:                                             ; preds = %1415, %1422
  %1425 = phi ptr [ %1423, %1422 ], [ %1416, %1415 ]
  %1426 = getelementptr inbounds i8, ptr %1425, i64 1
  store ptr %1426, ptr %94, align 8, !tbaa !132
  store i8 0, ptr %1425, align 1, !tbaa !5
  %1427 = load ptr, ptr %95, align 8, !tbaa !134
  %1428 = icmp eq ptr %1427, null
  br i1 %1428, label %2073, label %1429

1429:                                             ; preds = %1424
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1430 = load ptr, ptr %51, align 8, !tbaa !183
  %1431 = load ptr, ptr %59, align 8, !tbaa !125
  %1432 = load ptr, ptr %89, align 8, !tbaa !252
  %1433 = load ptr, ptr %90, align 8, !tbaa !104
  %1434 = load ptr, ptr %88, align 8, !tbaa !253
  call void %1430(ptr noundef %1431, ptr noundef %1432, ptr noundef %1433, ptr noundef nonnull %1427, ptr noundef %1434) #25
  br label %1435

1435:                                             ; preds = %1429, %1385, %1382
  %1436 = phi i8 [ 0, %1429 ], [ 1, %1385 ], [ 1, %1382 ]
  %1437 = load ptr, ptr %92, align 8, !tbaa !85
  %1438 = icmp eq ptr %1437, null
  %1439 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %1438, label %1440, label %1441

1440:                                             ; preds = %1435
  store ptr %1439, ptr %92, align 8, !tbaa !85
  br label %1448

1441:                                             ; preds = %1435
  %1442 = icmp eq ptr %1439, null
  br i1 %1442, label %1448, label %1443

1443:                                             ; preds = %1441, %1443
  %1444 = phi ptr [ %1445, %1443 ], [ %1437, %1441 ]
  %1445 = phi ptr [ %1446, %1443 ], [ %1439, %1441 ]
  %1446 = load ptr, ptr %1445, align 8, !tbaa !30
  store ptr %1444, ptr %1445, align 8, !tbaa !30
  store ptr %1445, ptr %92, align 8, !tbaa !85
  %1447 = icmp eq ptr %1446, null
  br i1 %1447, label %1448, label %1443, !llvm.loop !87

1448:                                             ; preds = %1443, %1440, %1441
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %2012

1449:                                             ; preds = %181
  %1450 = load ptr, ptr %88, align 8, !tbaa !253
  %1451 = icmp eq ptr %1450, null
  br i1 %1451, label %1461, label %1452

1452:                                             ; preds = %1449
  %1453 = load ptr, ptr %51, align 8, !tbaa !183
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1461, label %1455

1455:                                             ; preds = %1452
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1456 = load ptr, ptr %51, align 8, !tbaa !183
  %1457 = load ptr, ptr %59, align 8, !tbaa !125
  %1458 = load ptr, ptr %89, align 8, !tbaa !252
  %1459 = load ptr, ptr %90, align 8, !tbaa !104
  %1460 = load ptr, ptr %88, align 8, !tbaa !253
  call void %1456(ptr noundef %1457, ptr noundef %1458, ptr noundef %1459, ptr noundef null, ptr noundef %1460) #25
  br label %1461

1461:                                             ; preds = %1455, %1452, %1449
  %1462 = phi i8 [ 0, %1455 ], [ 1, %1452 ], [ 1, %1449 ]
  %1463 = load ptr, ptr %92, align 8, !tbaa !85
  %1464 = icmp eq ptr %1463, null
  %1465 = load ptr, ptr %91, align 8, !tbaa !86
  br i1 %1464, label %1466, label %1467

1466:                                             ; preds = %1461
  store ptr %1465, ptr %92, align 8, !tbaa !85
  br label %1474

1467:                                             ; preds = %1461
  %1468 = icmp eq ptr %1465, null
  br i1 %1468, label %1474, label %1469

1469:                                             ; preds = %1467, %1469
  %1470 = phi ptr [ %1471, %1469 ], [ %1463, %1467 ]
  %1471 = phi ptr [ %1472, %1469 ], [ %1465, %1467 ]
  %1472 = load ptr, ptr %1471, align 8, !tbaa !30
  store ptr %1470, ptr %1471, align 8, !tbaa !30
  store ptr %1471, ptr %92, align 8, !tbaa !85
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1474, label %1469, !llvm.loop !87

1474:                                             ; preds = %1469, %1466, %1467
  store ptr null, ptr %91, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %93, i8 0, i64 24, i1 false)
  br label %2012

1475:                                             ; preds = %181
  %1476 = icmp eq i32 %150, 12
  %1477 = select i1 %1476, i32 17, i32 2
  %1478 = icmp eq i32 %150, 28
  %1479 = select i1 %1478, i32 10, i32 %1477
  br label %2073

1480:                                             ; preds = %181
  %1481 = load ptr, ptr %83, align 8, !tbaa !179
  %1482 = icmp eq ptr %1481, null
  br i1 %1482, label %1521, label %1483

1483:                                             ; preds = %1480
  %1484 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14)
  store ptr %118, ptr %14, align 8, !tbaa !30
  %1485 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 13
  %1486 = load i8, ptr %1485, align 4, !tbaa !210
  %1487 = icmp eq i8 %1486, 0
  br i1 %1487, label %1488, label %1514

1488:                                             ; preds = %1483
  %1489 = load ptr, ptr %33, align 8, !tbaa !202
  %1490 = icmp eq ptr %1489, %119
  br i1 %1490, label %1494, label %1491

1491:                                             ; preds = %1488
  %1492 = load ptr, ptr %74, align 8, !tbaa !73
  %1493 = getelementptr inbounds %struct.open_internal_entity, ptr %1492, i64 0, i32 1
  br label %1494

1494:                                             ; preds = %1488, %1491
  %1495 = phi ptr [ %1492, %1491 ], [ %84, %1488 ]
  %1496 = phi ptr [ %1493, %1491 ], [ %85, %1488 ]
  %1497 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1498

1498:                                             ; preds = %1498, %1494
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #25
  %1499 = load ptr, ptr %86, align 8, !tbaa !44
  store ptr %1499, ptr %15, align 8, !tbaa !30
  %1500 = load ptr, ptr %1497, align 8, !tbaa !211
  %1501 = load ptr, ptr %87, align 8, !tbaa !45
  %1502 = call i32 %1500(ptr noundef nonnull %119, ptr noundef nonnull %14, ptr noundef %1484, ptr noundef nonnull %15, ptr noundef %1501) #25
  %1503 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %1503, ptr %1496, align 8, !tbaa !30
  %1504 = load ptr, ptr %83, align 8, !tbaa !179
  %1505 = load ptr, ptr %59, align 8, !tbaa !125
  %1506 = load ptr, ptr %86, align 8, !tbaa !44
  %1507 = load ptr, ptr %15, align 8, !tbaa !30
  %1508 = ptrtoint ptr %1507 to i64
  %1509 = ptrtoint ptr %1506 to i64
  %1510 = sub i64 %1508, %1509
  %1511 = trunc i64 %1510 to i32
  call void %1504(ptr noundef %1505, ptr noundef %1506, i32 noundef %1511) #25
  %1512 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %1512, ptr %1495, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #25
  %1513 = icmp ugt i32 %1502, 1
  br i1 %1513, label %1498, label %1520, !llvm.loop !212

1514:                                             ; preds = %1483
  %1515 = load ptr, ptr %59, align 8, !tbaa !125
  %1516 = ptrtoint ptr %1484 to i64
  %1517 = ptrtoint ptr %118 to i64
  %1518 = sub i64 %1516, %1517
  %1519 = trunc i64 %1518 to i32
  call void %1481(ptr noundef %1515, ptr noundef %118, i32 noundef %1519) #25
  br label %1520

1520:                                             ; preds = %1498, %1514
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14)
  br label %1521

1521:                                             ; preds = %1520, %1480
  %1522 = call fastcc i32 @doIgnoreSection(ptr noundef nonnull %0, ptr noundef %119, ptr noundef nonnull %30, ptr noundef %3, ptr noundef %6, i8 noundef zeroext %7), !range !254
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1524, label %2073

1524:                                             ; preds = %1521
  %1525 = load ptr, ptr %30, align 8, !tbaa !30
  %1526 = icmp eq ptr %1525, null
  br i1 %1526, label %1527, label %2056

1527:                                             ; preds = %1524
  %1528 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @ignoreSectionProcessor, ptr %1528, align 8, !tbaa !103
  br label %2073

1529:                                             ; preds = %181
  %1530 = load i32, ptr %81, align 8, !tbaa !255
  %1531 = zext i32 %1530 to i64
  %1532 = load i64, ptr %82, align 8, !tbaa !256
  %1533 = icmp ugt i64 %1532, %1531
  br i1 %1533, label %1564, label %1534

1534:                                             ; preds = %1529
  %1535 = icmp eq i64 %1532, 0
  br i1 %1535, label %1560, label %1536

1536:                                             ; preds = %1534
  %1537 = load ptr, ptr %80, align 8, !tbaa !168
  %1538 = shl nuw nsw i64 %1532, 1
  store i64 %1538, ptr %82, align 8, !tbaa !256
  %1539 = call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef %1537, i64 noundef %1538, i32 noundef 5854)
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1541, label %1544

1541:                                             ; preds = %1536
  %1542 = load i64, ptr %82, align 8, !tbaa !256
  %1543 = lshr i64 %1542, 1
  store i64 %1543, ptr %82, align 8, !tbaa !256
  br label %2073

1544:                                             ; preds = %1536
  store ptr %1539, ptr %80, align 8, !tbaa !168
  %1545 = load ptr, ptr %57, align 8, !tbaa !97
  %1546 = icmp eq ptr %1545, null
  br i1 %1546, label %1564, label %1547

1547:                                             ; preds = %1544
  %1548 = load i64, ptr %82, align 8, !tbaa !256
  %1549 = icmp ugt i64 %1548, 4611686018427387903
  br i1 %1549, label %1550, label %1552

1550:                                             ; preds = %1547
  %1551 = lshr i64 %1548, 1
  store i64 %1551, ptr %82, align 8, !tbaa !256
  br label %2073

1552:                                             ; preds = %1547
  %1553 = shl nuw i64 %1548, 2
  %1554 = call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef nonnull %1545, i64 noundef %1553, i32 noundef 5870)
  %1555 = icmp eq ptr %1554, null
  br i1 %1555, label %1556, label %1559

1556:                                             ; preds = %1552
  %1557 = load i64, ptr %82, align 8, !tbaa !256
  %1558 = lshr i64 %1557, 1
  store i64 %1558, ptr %82, align 8, !tbaa !256
  br label %2073

1559:                                             ; preds = %1552
  store ptr %1554, ptr %57, align 8, !tbaa !97
  br label %1564

1560:                                             ; preds = %1534
  store i64 32, ptr %82, align 8, !tbaa !256
  %1561 = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 32, i32 noundef 5878)
  store ptr %1561, ptr %80, align 8, !tbaa !168
  %1562 = icmp eq ptr %1561, null
  br i1 %1562, label %1563, label %1564

1563:                                             ; preds = %1560
  store i64 0, ptr %82, align 8, !tbaa !256
  br label %2073

1564:                                             ; preds = %1559, %1544, %1560, %1529
  %1565 = load ptr, ptr %80, align 8, !tbaa !168
  %1566 = load i32, ptr %81, align 8, !tbaa !255
  %1567 = zext i32 %1566 to i64
  %1568 = getelementptr inbounds i8, ptr %1565, i64 %1567
  store i8 0, ptr %1568, align 1, !tbaa !5
  %1569 = load i8, ptr %54, align 8, !tbaa !154
  %1570 = icmp eq i8 %1569, 0
  br i1 %1570, label %2015, label %1571

1571:                                             ; preds = %1564
  %1572 = call fastcc i32 @nextScaffoldPart(ptr noundef nonnull %0)
  %1573 = icmp sgt i32 %1572, -1
  br i1 %1573, label %1574, label %2073

1574:                                             ; preds = %1571
  %1575 = load ptr, ptr %57, align 8, !tbaa !97
  %1576 = icmp eq ptr %1575, null
  br i1 %1576, label %1577, label %1578

1577:                                             ; preds = %1574
  call void @__assert_fail(ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.1, i32 noundef 5890, ptr noundef nonnull @__PRETTY_FUNCTION__.doProlog) #28
  unreachable

1578:                                             ; preds = %1574
  %1579 = load i32, ptr %55, align 4, !tbaa !155
  %1580 = sext i32 %1579 to i64
  %1581 = getelementptr inbounds i32, ptr %1575, i64 %1580
  store i32 %1572, ptr %1581, align 4, !tbaa !33
  %1582 = load i32, ptr %55, align 4, !tbaa !155
  %1583 = add nsw i32 %1582, 1
  store i32 %1583, ptr %55, align 4, !tbaa !155
  %1584 = load ptr, ptr %56, align 8, !tbaa !98
  %1585 = zext nneg i32 %1572 to i64
  %1586 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1584, i64 %1585
  store i32 6, ptr %1586, align 8, !tbaa !257
  %1587 = load ptr, ptr %48, align 8, !tbaa !188
  %1588 = icmp eq ptr %1587, null
  br i1 %1588, label %2015, label %2056

1589:                                             ; preds = %181
  %1590 = load ptr, ptr %80, align 8, !tbaa !168
  %1591 = load i32, ptr %81, align 8, !tbaa !255
  %1592 = zext i32 %1591 to i64
  %1593 = getelementptr inbounds i8, ptr %1590, i64 %1592
  %1594 = load i8, ptr %1593, align 1, !tbaa !5
  %1595 = icmp eq i8 %1594, 124
  br i1 %1595, label %2073, label %1596

1596:                                             ; preds = %1589
  store i8 44, ptr %1593, align 1, !tbaa !5
  %1597 = load i8, ptr %54, align 8, !tbaa !154
  %1598 = icmp eq i8 %1597, 0
  br i1 %1598, label %2015, label %1599

1599:                                             ; preds = %1596
  %1600 = load ptr, ptr %48, align 8, !tbaa !188
  %1601 = icmp eq ptr %1600, null
  br i1 %1601, label %2015, label %2056

1602:                                             ; preds = %181
  %1603 = load ptr, ptr %80, align 8, !tbaa !168
  %1604 = load i32, ptr %81, align 8, !tbaa !255
  %1605 = zext i32 %1604 to i64
  %1606 = getelementptr inbounds i8, ptr %1603, i64 %1605
  %1607 = load i8, ptr %1606, align 1, !tbaa !5
  %1608 = icmp eq i8 %1607, 44
  br i1 %1608, label %2073, label %1609

1609:                                             ; preds = %1602
  %1610 = load i8, ptr %54, align 8, !tbaa !154
  %1611 = icmp ne i8 %1610, 0
  %1612 = icmp eq i8 %1607, 0
  %1613 = and i1 %1612, %1611
  br i1 %1613, label %1614, label %1630

1614:                                             ; preds = %1609
  %1615 = load ptr, ptr %56, align 8, !tbaa !98
  %1616 = load ptr, ptr %57, align 8, !tbaa !97
  %1617 = load i32, ptr %55, align 4, !tbaa !155
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr i32, ptr %1616, i64 %1618
  %1620 = getelementptr i32, ptr %1619, i64 -1
  %1621 = load i32, ptr %1620, align 4, !tbaa !33
  %1622 = sext i32 %1621 to i64
  %1623 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1615, i64 %1622
  %1624 = load i32, ptr %1623, align 8, !tbaa !257
  %1625 = icmp eq i32 %1624, 3
  br i1 %1625, label %1630, label %1626

1626:                                             ; preds = %1614
  store i32 5, ptr %1623, align 8, !tbaa !257
  %1627 = load ptr, ptr %48, align 8, !tbaa !188
  %1628 = icmp eq ptr %1627, null
  %1629 = zext i1 %1628 to i8
  br label %1630

1630:                                             ; preds = %1626, %1614, %1609
  %1631 = phi i8 [ 1, %1614 ], [ 1, %1609 ], [ %1629, %1626 ]
  store i8 124, ptr %1606, align 1, !tbaa !5
  br label %2012

1632:                                             ; preds = %181, %181
  store i8 1, ptr %63, align 1, !tbaa !100
  %1633 = load i32, ptr %64, align 4, !tbaa !126
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1635, label %1637

1635:                                             ; preds = %1632
  %1636 = load i8, ptr %73, align 2, !tbaa !101
  store i8 %1636, ptr %49, align 8, !tbaa !99
  br label %1787

1637:                                             ; preds = %1632
  %1638 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %1639 = load i32, ptr %1638, align 8, !tbaa !226
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i8, ptr %118, i64 %1640
  %1642 = load ptr, ptr %30, align 8, !tbaa !30
  %1643 = sub nsw i64 0, %1640
  %1644 = getelementptr inbounds i8, ptr %1642, i64 %1643
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13)
  store ptr %1641, ptr %13, align 8, !tbaa !30
  %1645 = load ptr, ptr %66, align 8, !tbaa !132
  %1646 = icmp eq ptr %1645, null
  br i1 %1646, label %1647, label %1650

1647:                                             ; preds = %1637
  %1648 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1649 = icmp eq i8 %1648, 0
  br i1 %1649, label %1660, label %1650

1650:                                             ; preds = %1647, %1637
  %1651 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %1652

1652:                                             ; preds = %1657, %1650
  %1653 = load ptr, ptr %1651, align 8, !tbaa !211
  %1654 = load ptr, ptr %67, align 8, !tbaa !131
  %1655 = call i32 %1653(ptr noundef nonnull %119, ptr noundef nonnull %13, ptr noundef %1644, ptr noundef nonnull %66, ptr noundef %1654) #25
  %1656 = icmp ult i32 %1655, 2
  br i1 %1656, label %1661, label %1657

1657:                                             ; preds = %1652
  %1658 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1659 = icmp eq i8 %1658, 0
  br i1 %1659, label %1660, label %1652

1660:                                             ; preds = %1647, %1657
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  br label %2073

1661:                                             ; preds = %1652
  %1662 = load ptr, ptr %68, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %2073, label %1664

1664:                                             ; preds = %1661
  %1665 = load ptr, ptr %66, align 8, !tbaa !132
  %1666 = load ptr, ptr %67, align 8, !tbaa !131
  %1667 = icmp eq ptr %1665, %1666
  br i1 %1667, label %1668, label %1673

1668:                                             ; preds = %1664
  %1669 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %65), !range !133
  %1670 = icmp eq i8 %1669, 0
  br i1 %1670, label %2073, label %1671

1671:                                             ; preds = %1668
  %1672 = load ptr, ptr %66, align 8, !tbaa !132
  br label %1673

1673:                                             ; preds = %1664, %1671
  %1674 = phi ptr [ %1672, %1671 ], [ %1665, %1664 ]
  %1675 = getelementptr inbounds i8, ptr %1674, i64 1
  store ptr %1675, ptr %66, align 8, !tbaa !132
  store i8 0, ptr %1674, align 1, !tbaa !5
  %1676 = load ptr, ptr %68, align 8, !tbaa !134
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %2073, label %1678

1678:                                             ; preds = %1673
  %1679 = load i64, ptr %69, align 8, !tbaa !88
  %1680 = icmp eq i64 %1679, 0
  br i1 %1680, label %1722, label %1681

1681:                                             ; preds = %1678
  %1682 = call fastcc i64 @hash(ptr noundef %0, ptr noundef nonnull %1676)
  %1683 = load i64, ptr %69, align 8, !tbaa !88
  %1684 = add i64 %1683, -1
  %1685 = and i64 %1684, %1682
  %1686 = load ptr, ptr %70, align 8, !tbaa !49
  %1687 = getelementptr inbounds ptr, ptr %1686, i64 %1685
  %1688 = load ptr, ptr %1687, align 8, !tbaa !30
  %1689 = icmp eq ptr %1688, null
  br i1 %1689, label %1722, label %1690

1690:                                             ; preds = %1681
  %1691 = sub i64 0, %1683
  %1692 = and i64 %1682, %1691
  %1693 = lshr i64 %1684, 2
  br label %1694

1694:                                             ; preds = %1712, %1690
  %1695 = phi ptr [ %1688, %1690 ], [ %1720, %1712 ]
  %1696 = phi i64 [ %1685, %1690 ], [ %1718, %1712 ]
  %1697 = phi i8 [ 0, %1690 ], [ %1713, %1712 ]
  %1698 = load ptr, ptr %1695, align 8, !tbaa !140
  %1699 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1676, ptr noundef nonnull dereferenceable(1) %1698) #30
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1722, label %1701

1701:                                             ; preds = %1694
  %1702 = icmp eq i8 %1697, 0
  br i1 %1702, label %1703, label %1712

1703:                                             ; preds = %1701
  %1704 = load i8, ptr %71, align 8, !tbaa !47
  %1705 = zext i8 %1704 to i64
  %1706 = add nuw nsw i64 %1705, 4294967295
  %1707 = and i64 %1706, 4294967295
  %1708 = lshr i64 %1692, %1707
  %1709 = and i64 %1708, %1693
  %1710 = trunc i64 %1709 to i8
  %1711 = or i8 %1710, 1
  br label %1712

1712:                                             ; preds = %1703, %1701
  %1713 = phi i8 [ %1697, %1701 ], [ %1711, %1703 ]
  %1714 = zext i8 %1713 to i64
  %1715 = icmp ult i64 %1696, %1714
  %1716 = select i1 %1715, i64 %1683, i64 0
  %1717 = sub i64 %1696, %1714
  %1718 = add i64 %1716, %1717
  %1719 = getelementptr inbounds ptr, ptr %1686, i64 %1718
  %1720 = load ptr, ptr %1719, align 8, !tbaa !30
  %1721 = icmp eq ptr %1720, null
  br i1 %1721, label %1722, label %1694, !llvm.loop !142

1722:                                             ; preds = %1712, %1694, %1681, %1678
  %1723 = phi ptr [ null, %1678 ], [ null, %1681 ], [ null, %1712 ], [ %1695, %1694 ]
  %1724 = load ptr, ptr %68, align 8, !tbaa !161
  store ptr %1724, ptr %66, align 8, !tbaa !229
  %1725 = load i32, ptr %72, align 4, !tbaa !259
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1742, label %1727

1727:                                             ; preds = %1722
  %1728 = load i8, ptr %73, align 2, !tbaa !101
  %1729 = icmp eq i8 %1728, 0
  br i1 %1729, label %1733, label %1730

1730:                                             ; preds = %1727
  %1731 = load ptr, ptr %74, align 8, !tbaa !73
  %1732 = icmp eq ptr %1731, null
  br i1 %1732, label %1736, label %1742

1733:                                             ; preds = %1727
  %1734 = load i8, ptr %63, align 1, !tbaa !100
  %1735 = icmp eq i8 %1734, 0
  br i1 %1735, label %1736, label %1742

1736:                                             ; preds = %1733, %1730
  %1737 = icmp eq ptr %1723, null
  br i1 %1737, label %2073, label %1738

1738:                                             ; preds = %1736
  %1739 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 11
  %1740 = load i8, ptr %1739, align 1, !tbaa !251
  %1741 = icmp eq i8 %1740, 0
  br i1 %1741, label %2073, label %1752

1742:                                             ; preds = %1733, %1730, %1722
  %1743 = icmp eq ptr %1723, null
  br i1 %1743, label %1744, label %1752

1744:                                             ; preds = %1742
  %1745 = load i8, ptr %73, align 2, !tbaa !101
  store i8 %1745, ptr %49, align 8, !tbaa !99
  %1746 = icmp eq i32 %152, 60
  br i1 %1746, label %1747, label %2015

1747:                                             ; preds = %1744
  %1748 = load ptr, ptr %78, align 8, !tbaa !106
  %1749 = icmp eq ptr %1748, null
  br i1 %1749, label %2015, label %1750

1750:                                             ; preds = %1747
  %1751 = load ptr, ptr %59, align 8, !tbaa !125
  call void %1748(ptr noundef %1751, ptr noundef nonnull %1676, i32 noundef 1) #25
  br label %2056

1752:                                             ; preds = %1742, %1738
  %1753 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 8
  %1754 = load i8, ptr %1753, align 8, !tbaa !157
  %1755 = icmp eq i8 %1754, 0
  br i1 %1755, label %1756, label %2073

1756:                                             ; preds = %1752
  %1757 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 1
  %1758 = load ptr, ptr %1757, align 8, !tbaa !238
  %1759 = icmp eq ptr %1758, null
  br i1 %1759, label %1765, label %1760

1760:                                             ; preds = %1756
  %1761 = icmp eq i32 %152, 60
  %1762 = zext i1 %1761 to i8
  %1763 = call fastcc i32 @processEntity(ptr noundef nonnull %0, ptr noundef nonnull %1723, i8 noundef zeroext %1762, i32 noundef 0), !range !236
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %2056, label %2073

1765:                                             ; preds = %1756
  %1766 = load ptr, ptr %75, align 8, !tbaa !187
  %1767 = icmp eq ptr %1766, null
  br i1 %1767, label %1785, label %1768

1768:                                             ; preds = %1765
  store i8 0, ptr %76, align 1, !tbaa !94
  store i8 1, ptr %1753, align 8, !tbaa !157
  call fastcc void @entityTrackingOnOpen(ptr noundef nonnull %0, ptr noundef nonnull %1723, i32 noundef 5991)
  %1769 = load ptr, ptr %75, align 8, !tbaa !187
  %1770 = load ptr, ptr %77, align 8, !tbaa !105
  %1771 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 5
  %1772 = load ptr, ptr %1771, align 8, !tbaa !230
  %1773 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 4
  %1774 = load ptr, ptr %1773, align 8, !tbaa !231
  %1775 = getelementptr inbounds %struct.ENTITY, ptr %1723, i64 0, i32 6
  %1776 = load ptr, ptr %1775, align 8, !tbaa !228
  %1777 = call i32 %1769(ptr noundef %1770, ptr noundef null, ptr noundef %1772, ptr noundef %1774, ptr noundef %1776) #25
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1779, label %1780

1779:                                             ; preds = %1768
  call fastcc void @entityTrackingOnClose(ptr noundef nonnull %0, ptr noundef nonnull %1723, i32 noundef 5995)
  store i8 0, ptr %1753, align 8, !tbaa !157
  br label %2073

1780:                                             ; preds = %1768
  call fastcc void @entityTrackingOnClose(ptr noundef nonnull %0, ptr noundef nonnull %1723, i32 noundef 5999)
  store i8 0, ptr %1753, align 8, !tbaa !157
  %1781 = load i8, ptr %76, align 1, !tbaa !94
  %1782 = icmp eq i8 %1781, 0
  %1783 = load i8, ptr %73, align 2, !tbaa !101
  br i1 %1782, label %1784, label %1787

1784:                                             ; preds = %1780
  store i8 %1783, ptr %49, align 8, !tbaa !99
  br label %2056

1785:                                             ; preds = %1765
  %1786 = load i8, ptr %73, align 2, !tbaa !101
  store i8 %1786, ptr %49, align 8, !tbaa !99
  br label %2015

1787:                                             ; preds = %1780, %1635
  %1788 = phi i8 [ %1636, %1635 ], [ %1783, %1780 ]
  %1789 = phi i8 [ 1, %1635 ], [ 0, %1780 ]
  %1790 = icmp eq i8 %1788, 0
  br i1 %1790, label %1791, label %2012

1791:                                             ; preds = %1787
  %1792 = load ptr, ptr %79, align 8, !tbaa !186
  %1793 = icmp eq ptr %1792, null
  br i1 %1793, label %2012, label %1794

1794:                                             ; preds = %1791
  %1795 = load ptr, ptr %59, align 8, !tbaa !125
  %1796 = call i32 %1792(ptr noundef %1795) #25
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %2073, label %2012

1798:                                             ; preds = %181
  %1799 = load ptr, ptr %48, align 8, !tbaa !188
  %1800 = icmp eq ptr %1799, null
  br i1 %1800, label %2015, label %1801

1801:                                             ; preds = %1798
  %1802 = load ptr, ptr %30, align 8, !tbaa !30
  %1803 = call fastcc ptr @getElementType(ptr noundef nonnull %0, ptr noundef %119, ptr noundef %118, ptr noundef %1802)
  store ptr %1803, ptr %60, align 8, !tbaa !123
  %1804 = icmp eq ptr %1803, null
  br i1 %1804, label %2073, label %1805

1805:                                             ; preds = %1801
  store i32 0, ptr %55, align 4, !tbaa !155
  store i32 0, ptr %62, align 8, !tbaa !260
  store i8 1, ptr %54, align 8, !tbaa !154
  br label %2056

1806:                                             ; preds = %181, %181
  %1807 = load i8, ptr %54, align 8, !tbaa !154
  %1808 = icmp eq i8 %1807, 0
  br i1 %1808, label %2015, label %1809

1809:                                             ; preds = %1806
  %1810 = load ptr, ptr %48, align 8, !tbaa !188
  %1811 = icmp eq ptr %1810, null
  br i1 %1811, label %1825, label %1812

1812:                                             ; preds = %1809
  %1813 = load ptr, ptr %58, align 8, !tbaa !195
  %1814 = call ptr %1813(i64 noundef 32) #25
  %1815 = icmp eq ptr %1814, null
  br i1 %1815, label %2073, label %1816

1816:                                             ; preds = %1812
  %1817 = getelementptr inbounds %struct.XML_cp, ptr %1814, i64 0, i32 1
  %1818 = getelementptr inbounds %struct.XML_cp, ptr %1814, i64 0, i32 4
  store ptr null, ptr %1818, align 8, !tbaa !261
  %1819 = icmp eq i32 %152, 41
  %1820 = select i1 %1819, i32 2, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1817, i8 0, i64 16, i1 false)
  store i32 %1820, ptr %1814, align 8, !tbaa !263
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1821 = load ptr, ptr %48, align 8, !tbaa !188
  %1822 = load ptr, ptr %59, align 8, !tbaa !125
  %1823 = load ptr, ptr %60, align 8, !tbaa !123
  %1824 = load ptr, ptr %1823, align 8, !tbaa !143
  call void %1821(ptr noundef %1822, ptr noundef %1824, ptr noundef nonnull %1814) #25
  br label %1825

1825:                                             ; preds = %1816, %1809
  %1826 = phi i8 [ 0, %1816 ], [ 1, %1809 ]
  store i8 0, ptr %54, align 8, !tbaa !154
  br label %2012

1827:                                             ; preds = %181
  %1828 = load i8, ptr %54, align 8, !tbaa !154
  %1829 = icmp eq i8 %1828, 0
  br i1 %1829, label %2015, label %1830

1830:                                             ; preds = %1827
  %1831 = load ptr, ptr %56, align 8, !tbaa !98
  %1832 = load ptr, ptr %57, align 8, !tbaa !97
  %1833 = load i32, ptr %55, align 4, !tbaa !155
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr i32, ptr %1832, i64 %1834
  %1836 = getelementptr i32, ptr %1835, i64 -1
  %1837 = load i32, ptr %1836, align 4, !tbaa !33
  %1838 = sext i32 %1837 to i64
  %1839 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1831, i64 %1838
  store i32 3, ptr %1839, align 8, !tbaa !257
  %1840 = load ptr, ptr %48, align 8, !tbaa !188
  %1841 = icmp eq ptr %1840, null
  br i1 %1841, label %2015, label %2056

1842:                                             ; preds = %181
  br label %1844

1843:                                             ; preds = %181
  br label %1844

1844:                                             ; preds = %181, %1843, %1842
  %1845 = phi i32 [ 3, %1843 ], [ 2, %1842 ], [ 1, %181 ]
  %1846 = load i8, ptr %54, align 8, !tbaa !154
  %1847 = icmp eq i8 %1846, 0
  br i1 %1847, label %2015, label %1853

1848:                                             ; preds = %181
  %1849 = load i8, ptr %54, align 8, !tbaa !154
  %1850 = icmp eq i8 %1849, 0
  br i1 %1850, label %2015, label %1851

1851:                                             ; preds = %1848
  %1852 = load ptr, ptr %30, align 8, !tbaa !30
  br label %1860

1853:                                             ; preds = %1844
  %1854 = load ptr, ptr %30, align 8, !tbaa !30
  %1855 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 12
  %1856 = load i32, ptr %1855, align 8, !tbaa !226
  %1857 = sext i32 %1856 to i64
  %1858 = sub nsw i64 0, %1857
  %1859 = getelementptr inbounds i8, ptr %1854, i64 %1858
  br label %1860

1860:                                             ; preds = %1853, %1851
  %1861 = phi i32 [ 0, %1851 ], [ %1845, %1853 ]
  %1862 = phi ptr [ %1852, %1851 ], [ %1859, %1853 ]
  %1863 = call fastcc i32 @nextScaffoldPart(ptr noundef %0)
  %1864 = icmp slt i32 %1863, 0
  br i1 %1864, label %2073, label %1865

1865:                                             ; preds = %1860
  %1866 = load ptr, ptr %56, align 8, !tbaa !98
  %1867 = zext nneg i32 %1863 to i64
  %1868 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1866, i64 %1867
  store i32 4, ptr %1868, align 8, !tbaa !257
  %1869 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1866, i64 %1867, i32 1
  store i32 %1861, ptr %1869, align 4, !tbaa !264
  %1870 = call fastcc ptr @getElementType(ptr noundef %0, ptr noundef %119, ptr noundef %118, ptr noundef %1862)
  %1871 = icmp eq ptr %1870, null
  br i1 %1871, label %2073, label %1872

1872:                                             ; preds = %1865
  %1873 = load ptr, ptr %1870, align 8, !tbaa !143
  %1874 = load ptr, ptr %56, align 8, !tbaa !98
  %1875 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1874, i64 %1867, i32 2
  store ptr %1873, ptr %1875, align 8, !tbaa !265
  %1876 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1873) #30
  %1877 = add i64 %1876, 1
  %1878 = load i32, ptr %61, align 8, !tbaa !266
  %1879 = xor i32 %1878, -1
  %1880 = zext i32 %1879 to i64
  %1881 = icmp ugt i64 %1877, %1880
  br i1 %1881, label %2073, label %1882

1882:                                             ; preds = %1872
  %1883 = trunc i64 %1877 to i32
  %1884 = add i32 %1878, %1883
  store i32 %1884, ptr %61, align 8, !tbaa !266
  %1885 = load ptr, ptr %48, align 8, !tbaa !188
  %1886 = icmp eq ptr %1885, null
  br i1 %1886, label %2015, label %2056

1887:                                             ; preds = %181
  br label %1890

1888:                                             ; preds = %181
  br label %1890

1889:                                             ; preds = %181
  br label %1890

1890:                                             ; preds = %181, %1889, %1888, %1887
  %1891 = phi i32 [ 3, %1889 ], [ 2, %1888 ], [ 1, %1887 ], [ 0, %181 ]
  %1892 = load i8, ptr %54, align 8, !tbaa !154
  %1893 = icmp eq i8 %1892, 0
  br i1 %1893, label %2015, label %1894

1894:                                             ; preds = %1890
  %1895 = load ptr, ptr %48, align 8, !tbaa !188
  %1896 = icmp eq ptr %1895, null
  %1897 = zext i1 %1896 to i8
  %1898 = load i32, ptr %55, align 4, !tbaa !155
  %1899 = add nsw i32 %1898, -1
  store i32 %1899, ptr %55, align 4, !tbaa !155
  %1900 = load ptr, ptr %56, align 8, !tbaa !98
  %1901 = load ptr, ptr %57, align 8, !tbaa !97
  %1902 = sext i32 %1899 to i64
  %1903 = getelementptr inbounds i32, ptr %1901, i64 %1902
  %1904 = load i32, ptr %1903, align 4, !tbaa !33
  %1905 = sext i32 %1904 to i64
  %1906 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1900, i64 %1905, i32 1
  store i32 %1891, ptr %1906, align 4, !tbaa !264
  %1907 = icmp eq i32 %1899, 0
  br i1 %1907, label %1908, label %2012

1908:                                             ; preds = %1894
  br i1 %1896, label %1980, label %1909

1909:                                             ; preds = %1908
  %1910 = load ptr, ptr %31, align 8, !tbaa !51
  %1911 = getelementptr inbounds %struct.DTD, ptr %1910, i64 0, i32 16
  %1912 = getelementptr inbounds %struct.DTD, ptr %1910, i64 0, i32 14
  %1913 = load i32, ptr %1912, align 8, !tbaa !266
  %1914 = zext i32 %1913 to i64
  %1915 = load i32, ptr %1911, align 8, !tbaa !260
  %1916 = zext i32 %1915 to i64
  %1917 = shl nuw nsw i64 %1916, 5
  %1918 = add nuw nsw i64 %1917, %1914
  %1919 = load ptr, ptr %58, align 8, !tbaa !195
  %1920 = call ptr %1919(i64 noundef %1918) #25
  %1921 = icmp eq ptr %1920, null
  br i1 %1921, label %2073, label %1922

1922:                                             ; preds = %1909
  %1923 = load i32, ptr %1911, align 8, !tbaa !260
  %1924 = zext i32 %1923 to i64
  %1925 = getelementptr inbounds %struct.XML_cp, ptr %1920, i64 %1924
  %1926 = getelementptr inbounds %struct.XML_cp, ptr %1920, i64 0, i32 3
  store i32 0, ptr %1926, align 8, !tbaa !267
  %1927 = icmp eq i32 %1923, 0
  br i1 %1927, label %1975, label %1928

1928:                                             ; preds = %1922
  %1929 = getelementptr inbounds %struct.XML_cp, ptr %1920, i64 1
  %1930 = getelementptr inbounds %struct.DTD, ptr %1910, i64 0, i32 13
  br label %1931

1931:                                             ; preds = %1970, %1928
  %1932 = phi ptr [ %1925, %1928 ], [ %1972, %1970 ]
  %1933 = phi ptr [ %1929, %1928 ], [ %1971, %1970 ]
  %1934 = phi ptr [ %1920, %1928 ], [ %1973, %1970 ]
  %1935 = getelementptr inbounds %struct.XML_cp, ptr %1934, i64 0, i32 3
  %1936 = load i32, ptr %1935, align 8, !tbaa !267
  %1937 = load ptr, ptr %1930, align 8, !tbaa !98
  %1938 = sext i32 %1936 to i64
  %1939 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1937, i64 %1938
  %1940 = load <2 x i32>, ptr %1939, align 8, !tbaa !33
  store <2 x i32> %1940, ptr %1934, align 8, !tbaa !33
  %1941 = extractelement <2 x i32> %1940, i64 0
  %1942 = icmp eq i32 %1941, 4
  %1943 = getelementptr inbounds %struct.XML_cp, ptr %1934, i64 0, i32 2
  br i1 %1942, label %1944, label %1951

1944:                                             ; preds = %1931
  store ptr %1932, ptr %1943, align 8, !tbaa !268
  %1945 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1937, i64 %1938, i32 2
  %1946 = load ptr, ptr %1945, align 8, !tbaa !265
  %1947 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1946) #30
  %1948 = add i64 %1947, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1932, ptr align 1 %1946, i64 %1948, i1 false)
  store i32 0, ptr %1935, align 8, !tbaa !267
  %1949 = getelementptr inbounds %struct.XML_cp, ptr %1934, i64 0, i32 4
  store ptr null, ptr %1949, align 8, !tbaa !261
  %1950 = getelementptr inbounds i8, ptr %1932, i64 %1948
  br label %1970

1951:                                             ; preds = %1931
  store ptr null, ptr %1943, align 8, !tbaa !268
  %1952 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1937, i64 %1938, i32 5
  %1953 = load i32, ptr %1952, align 8, !tbaa !269
  store i32 %1953, ptr %1935, align 8, !tbaa !267
  %1954 = getelementptr inbounds %struct.XML_cp, ptr %1934, i64 0, i32 4
  store ptr %1933, ptr %1954, align 8, !tbaa !261
  %1955 = icmp eq i32 %1953, 0
  br i1 %1955, label %1970, label %1956

1956:                                             ; preds = %1951
  %1957 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1937, i64 %1938, i32 3
  br label %1958

1958:                                             ; preds = %1958, %1956
  %1959 = phi ptr [ %1967, %1958 ], [ %1957, %1956 ]
  %1960 = phi i32 [ %1965, %1958 ], [ 0, %1956 ]
  %1961 = phi ptr [ %1963, %1958 ], [ %1933, %1956 ]
  %1962 = load i32, ptr %1959, align 4, !tbaa !33
  %1963 = getelementptr inbounds %struct.XML_cp, ptr %1961, i64 1
  %1964 = getelementptr inbounds %struct.XML_cp, ptr %1961, i64 0, i32 3
  store i32 %1962, ptr %1964, align 8, !tbaa !267
  %1965 = add nuw i32 %1960, 1
  %1966 = sext i32 %1962 to i64
  %1967 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %1937, i64 %1966, i32 6
  %1968 = load i32, ptr %1935, align 8, !tbaa !267
  %1969 = icmp ult i32 %1965, %1968
  br i1 %1969, label %1958, label %1970, !llvm.loop !270

1970:                                             ; preds = %1958, %1951, %1944
  %1971 = phi ptr [ %1933, %1944 ], [ %1933, %1951 ], [ %1963, %1958 ]
  %1972 = phi ptr [ %1950, %1944 ], [ %1932, %1951 ], [ %1932, %1958 ]
  %1973 = getelementptr inbounds %struct.XML_cp, ptr %1934, i64 1
  %1974 = icmp ult ptr %1973, %1925
  br i1 %1974, label %1931, label %1975, !llvm.loop !271

1975:                                             ; preds = %1970, %1922
  store ptr %118, ptr %44, align 8, !tbaa !30
  %1976 = load ptr, ptr %48, align 8, !tbaa !188
  %1977 = load ptr, ptr %59, align 8, !tbaa !125
  %1978 = load ptr, ptr %60, align 8, !tbaa !123
  %1979 = load ptr, ptr %1978, align 8, !tbaa !143
  call void %1976(ptr noundef %1977, ptr noundef %1979, ptr noundef nonnull %1920) #25
  br label %1980

1980:                                             ; preds = %1975, %1908
  store i8 0, ptr %54, align 8, !tbaa !154
  store i32 0, ptr %61, align 8, !tbaa !266
  br label %2012

1981:                                             ; preds = %181
  %1982 = load ptr, ptr %30, align 8, !tbaa !30
  %1983 = call fastcc i32 @reportProcessingInstruction(ptr noundef %0, ptr noundef %119, ptr noundef %118, ptr noundef %1982), !range !236
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %2073, label %2056

1985:                                             ; preds = %181
  %1986 = load ptr, ptr %30, align 8, !tbaa !30
  %1987 = call fastcc i32 @reportComment(ptr noundef %0, ptr noundef %119, ptr noundef %118, ptr noundef %1986), !range !236
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2073, label %2056

1989:                                             ; preds = %181
  %1990 = icmp eq i32 %150, 14
  br i1 %1990, label %2056, label %2015

1991:                                             ; preds = %181
  %1992 = load ptr, ptr %53, align 8, !tbaa !180
  %1993 = icmp eq ptr %1992, null
  br i1 %1993, label %2015, label %2056

1994:                                             ; preds = %181
  %1995 = load i8, ptr %49, align 8, !tbaa !99
  %1996 = icmp eq i8 %1995, 0
  br i1 %1996, label %2015, label %1997

1997:                                             ; preds = %1994
  %1998 = load ptr, ptr %52, align 8, !tbaa !190
  %1999 = icmp eq ptr %1998, null
  br i1 %1999, label %2015, label %2056

2000:                                             ; preds = %181
  %2001 = load ptr, ptr %51, align 8, !tbaa !183
  %2002 = icmp eq ptr %2001, null
  br i1 %2002, label %2015, label %2056

2003:                                             ; preds = %181
  %2004 = load i8, ptr %49, align 8, !tbaa !99
  %2005 = icmp eq i8 %2004, 0
  br i1 %2005, label %2015, label %2006

2006:                                             ; preds = %2003
  %2007 = load ptr, ptr %50, align 8, !tbaa !189
  %2008 = icmp eq ptr %2007, null
  br i1 %2008, label %2015, label %2056

2009:                                             ; preds = %181
  %2010 = load ptr, ptr %48, align 8, !tbaa !188
  %2011 = icmp eq ptr %2010, null
  br i1 %2011, label %2015, label %2056

2012:                                             ; preds = %413, %1020, %1980, %1894, %1825, %1787, %1791, %1794, %967, %971, %894, %497, %342, %346, %1630, %1474, %1448, %685, %229
  %2013 = phi i8 [ %1897, %1980 ], [ %1897, %1894 ], [ %1826, %1825 ], [ %1789, %1787 ], [ %1789, %1794 ], [ %1789, %1791 ], [ %1631, %1630 ], [ %1462, %1474 ], [ %1436, %1448 ], [ %968, %971 ], [ %968, %967 ], [ %895, %894 ], [ %673, %685 ], [ %444, %497 ], [ %343, %413 ], [ %343, %346 ], [ %343, %342 ], [ %230, %229 ], [ %968, %1020 ]
  %2014 = icmp eq i8 %2013, 0
  br i1 %2014, label %2056, label %2015

2015:                                             ; preds = %1578, %1785, %1747, %1744, %1256, %1192, %2009, %2006, %2000, %1997, %1991, %1830, %1599, %563, %1882, %1848, %1245, %1181, %708, %711, %1989, %231, %560, %566, %569, %686, %767, %1028, %1031, %1034, %1051, %1054, %1114, %1199, %1136, %1263, %1265, %1312, %1564, %1596, %1798, %1806, %1827, %1844, %1890, %1994, %2003, %181, %2012
  %2016 = load ptr, ptr %83, align 8, !tbaa !179
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2056, label %2018

2018:                                             ; preds = %2015
  %2019 = load ptr, ptr %30, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11)
  store ptr %118, ptr %11, align 8, !tbaa !30
  %2020 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 13
  %2021 = load i8, ptr %2020, align 4, !tbaa !210
  %2022 = icmp eq i8 %2021, 0
  br i1 %2022, label %2023, label %2049

2023:                                             ; preds = %2018
  %2024 = load ptr, ptr %33, align 8, !tbaa !202
  %2025 = icmp eq ptr %2024, %119
  br i1 %2025, label %2029, label %2026

2026:                                             ; preds = %2023
  %2027 = load ptr, ptr %74, align 8, !tbaa !73
  %2028 = getelementptr inbounds %struct.open_internal_entity, ptr %2027, i64 0, i32 1
  br label %2029

2029:                                             ; preds = %2023, %2026
  %2030 = phi ptr [ %2027, %2026 ], [ %84, %2023 ]
  %2031 = phi ptr [ %2028, %2026 ], [ %85, %2023 ]
  %2032 = getelementptr inbounds %struct.encoding, ptr %119, i64 0, i32 10
  br label %2033

2033:                                             ; preds = %2033, %2029
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  %2034 = load ptr, ptr %86, align 8, !tbaa !44
  store ptr %2034, ptr %12, align 8, !tbaa !30
  %2035 = load ptr, ptr %2032, align 8, !tbaa !211
  %2036 = load ptr, ptr %87, align 8, !tbaa !45
  %2037 = call i32 %2035(ptr noundef nonnull %119, ptr noundef nonnull %11, ptr noundef %2019, ptr noundef nonnull %12, ptr noundef %2036) #25
  %2038 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %2038, ptr %2031, align 8, !tbaa !30
  %2039 = load ptr, ptr %83, align 8, !tbaa !179
  %2040 = load ptr, ptr %59, align 8, !tbaa !125
  %2041 = load ptr, ptr %86, align 8, !tbaa !44
  %2042 = load ptr, ptr %12, align 8, !tbaa !30
  %2043 = ptrtoint ptr %2042 to i64
  %2044 = ptrtoint ptr %2041 to i64
  %2045 = sub i64 %2043, %2044
  %2046 = trunc i64 %2045 to i32
  call void %2039(ptr noundef %2040, ptr noundef %2041, i32 noundef %2046) #25
  %2047 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %2047, ptr %2030, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  %2048 = icmp ugt i32 %2037, 1
  br i1 %2048, label %2033, label %2055, !llvm.loop !212

2049:                                             ; preds = %2018
  %2050 = load ptr, ptr %59, align 8, !tbaa !125
  %2051 = ptrtoint ptr %2019 to i64
  %2052 = ptrtoint ptr %118 to i64
  %2053 = sub i64 %2051, %2052
  %2054 = trunc i64 %2053 to i32
  call void %2016(ptr noundef %2050, ptr noundef %118, i32 noundef %2054) #25
  br label %2055

2055:                                             ; preds = %2033, %2049
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11)
  br label %2056

2056:                                             ; preds = %413, %1760, %1379, %1784, %1750, %1578, %1989, %1020, %1524, %1256, %1192, %766, %255, %186, %2009, %2006, %2000, %1997, %1991, %1985, %1981, %1830, %1599, %563, %250, %500, %614, %1037, %1117, %1101, %1304, %1805, %1882, %2055, %2015, %2012
  %2057 = phi ptr [ %119, %2055 ], [ %119, %2015 ], [ %119, %2012 ], [ %119, %1524 ], [ %119, %1256 ], [ %119, %1192 ], [ %119, %766 ], [ %256, %255 ], [ %187, %186 ], [ %119, %2009 ], [ %119, %2006 ], [ %119, %2000 ], [ %119, %1997 ], [ %119, %1991 ], [ %119, %1985 ], [ %119, %1981 ], [ %119, %1830 ], [ %119, %1599 ], [ %119, %563 ], [ %119, %250 ], [ %119, %500 ], [ %119, %614 ], [ %119, %1037 ], [ %119, %1117 ], [ %119, %1101 ], [ %119, %1304 ], [ %119, %1379 ], [ %119, %1805 ], [ %119, %1882 ], [ %119, %1020 ], [ %119, %1989 ], [ %119, %1578 ], [ %119, %1750 ], [ %119, %1784 ], [ %119, %1760 ], [ %119, %413 ]
  %2058 = load i32, ptr %114, align 8, !tbaa !115
  switch i32 %2058, label %2059 [
    i32 3, label %2061
    i32 2, label %2073
    i32 1, label %2063
  ]

2059:                                             ; preds = %2056
  %2060 = load ptr, ptr %30, align 8, !tbaa !30
  br label %2068

2061:                                             ; preds = %2056
  %2062 = load ptr, ptr %30, align 8, !tbaa !30
  store ptr %2062, ptr %6, align 8, !tbaa !30
  br label %2073

2063:                                             ; preds = %2056
  %2064 = load i8, ptr %115, align 8, !tbaa !116
  %2065 = icmp eq i8 %2064, 0
  %2066 = load ptr, ptr %30, align 8, !tbaa !30
  br i1 %2065, label %2068, label %2067

2067:                                             ; preds = %2063
  store ptr %2066, ptr %6, align 8, !tbaa !30
  br label %2073

2068:                                             ; preds = %2059, %2063
  %2069 = phi ptr [ %2060, %2059 ], [ %2066, %2063 ]
  %2070 = load ptr, ptr %2057, align 8, !tbaa !30
  %2071 = call i32 %2070(ptr noundef nonnull %2057, ptr noundef %2069, ptr noundef %3, ptr noundef nonnull %30) #25
  br label %116

2072:                                             ; preds = %126
  br label %2073

2073:                                             ; preds = %1909, %1872, %1865, %1860, %1812, %1668, %1661, %1752, %1738, %1736, %1673, %1760, %1521, %1419, %1412, %1424, %1346, %1339, %1351, %1229, %1222, %1239, %1234, %1165, %1158, %1175, %1170, %735, %724, %700, %689, %611, %589, %380, %373, %385, %300, %293, %305, %263, %894, %222, %257, %336, %422, %543, %547, %618, %937, %955, %962, %1013, %1090, %1299, %1306, %1589, %1602, %1794, %1801, %1981, %1985, %2056, %182, %251, %457, %469, %488, %641, %652, %1571, %586, %126, %2072, %1475, %1660, %1779, %1527, %1411, %1338, %1221, %1157, %610, %372, %292, %125, %2067, %2061, %1550, %1563, %540, %145, %136, %127, %141, %137, %162, %166, %221, %512, %515, %535, %936, %1010, %1087, %1298, %1541, %1556
  %2074 = phi i32 [ 1, %1556 ], [ 1, %1541 ], [ 1, %1298 ], [ 1, %1087 ], [ 1, %1010 ], [ 1, %936 ], [ 22, %535 ], [ 21, %515 ], [ 1, %512 ], [ 1, %221 ], [ 43, %166 ], [ 43, %162 ], [ 3, %137 ], [ 29, %141 ], [ 4, %127 ], [ 0, %136 ], [ 0, %145 ], [ %542, %540 ], [ 1, %1563 ], [ 1, %1550 ], [ 0, %2061 ], [ 0, %2067 ], [ 0, %125 ], [ 1, %292 ], [ 1, %372 ], [ 1, %610 ], [ 1, %1157 ], [ 1, %1221 ], [ 1, %1338 ], [ 1, %1411 ], [ 0, %1527 ], [ 21, %1779 ], [ 1, %1660 ], [ %1479, %1475 ], [ 6, %126 ], [ 1, %586 ], [ 1, %1909 ], [ 1, %1872 ], [ 1, %1865 ], [ 1, %1860 ], [ 1, %1812 ], [ 1, %1668 ], [ 1, %1661 ], [ 1, %1760 ], [ 1, %1673 ], [ 11, %1736 ], [ 24, %1738 ], [ 12, %1752 ], [ %1522, %1521 ], [ 1, %1419 ], [ 1, %1412 ], [ 1, %1424 ], [ 1, %1346 ], [ 1, %1339 ], [ 1, %1351 ], [ 1, %1229 ], [ 1, %1222 ], [ 1, %1239 ], [ 1, %1234 ], [ 1, %1165 ], [ 1, %1158 ], [ 1, %1175 ], [ 1, %1170 ], [ %698, %689 ], [ 1, %700 ], [ 1, %724 ], [ 1, %735 ], [ 1, %611 ], [ 1, %589 ], [ 1, %380 ], [ 1, %373 ], [ 1, %385 ], [ 1, %300 ], [ 1, %293 ], [ 32, %263 ], [ 1, %305 ], [ %866, %894 ], [ 1, %222 ], [ 1, %257 ], [ 32, %336 ], [ 4, %422 ], [ 1, %543 ], [ 1, %547 ], [ 1, %618 ], [ 1, %937 ], [ 22, %955 ], [ 1, %962 ], [ 1, %1013 ], [ 1, %1090 ], [ 1, %1299 ], [ 32, %1306 ], [ 2, %1589 ], [ 2, %1602 ], [ 22, %1794 ], [ 1, %1801 ], [ 1, %1981 ], [ 1, %1985 ], [ 35, %2056 ], [ %184, %182 ], [ %253, %251 ], [ 22, %488 ], [ 21, %469 ], [ 1, %457 ], [ 1, %641 ], [ 1, %652 ], [ 1, %1571 ], [ 5, %2072 ]
  ret i32 %2074
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = add i32 %1, 4
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %167, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %5, 2
  br i1 %10, label %174, label %11

11:                                               ; preds = %9, %167
  br label %12

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %16, %12 ], [ %0, %11 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %11 ]
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 91
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  %18 = add i32 %14, 1
  br i1 %17, label %19, label %12, !llvm.loop !26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 91
  %21 = icmp eq i32 %5, 0
  %22 = icmp eq ptr %13, %0
  %23 = and i1 %21, %22
  %24 = ptrtoint ptr %3 to i64
  %25 = ptrtoint ptr %2 to i64
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 98
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 98, i32 1
  %29 = select i1 %23, ptr %27, ptr %28
  %30 = load i64, ptr %29, align 8, !tbaa !272
  %31 = xor i64 %26, -1
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %174, label %33

33:                                               ; preds = %19
  %34 = add i64 %30, %26
  store i64 %34, ptr %29, align 8, !tbaa !272
  %35 = load i64, ptr %27, align 8, !tbaa !37
  %36 = load i64, ptr %28, align 8, !tbaa !213
  %37 = add i64 %36, %35
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 98, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !121
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %33
  %42 = icmp eq i64 %35, 0
  %43 = add i64 %36, 22
  %44 = select i1 %42, i64 %43, i64 %37
  %45 = uitofp i64 %44 to float
  %46 = uitofp i64 %35 to float
  %47 = select i1 %42, float 2.200000e+01, float %46
  %48 = fdiv float %45, %47
  %49 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 98, i32 3
  %50 = load float, ptr %49, align 8, !tbaa !120
  %51 = fcmp ole float %48, %50
  %52 = zext i1 %51 to i8
  br label %53

53:                                               ; preds = %41, %33
  %54 = phi i8 [ 1, %33 ], [ %52, %41 ]
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %13, i64 0, i32 98, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !119
  %57 = icmp ugt i64 %56, 1
  br i1 %57, label %58, label %174

58:                                               ; preds = %53, %58
  %59 = phi ptr [ %61, %58 ], [ %13, %53 ]
  %60 = getelementptr inbounds %struct.XML_ParserStruct, ptr %59, i64 0, i32 91
  %61 = load ptr, ptr %60, align 8, !tbaa !8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !26

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.XML_ParserStruct, ptr %59, i64 0, i32 98, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !119
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %59, i64 0, i32 98
  %69 = load i64, ptr %68, align 8, !tbaa !37
  %70 = getelementptr inbounds %struct.XML_ParserStruct, ptr %59, i64 0, i32 98, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !213
  %72 = icmp eq i64 %69, 0
  %73 = uitofp i64 %69 to float
  %74 = select i1 %72, float 2.200000e+01, float %73
  %75 = select i1 %72, i64 22, i64 %69
  %76 = add i64 %75, %71
  %77 = uitofp i64 %76 to float
  %78 = fdiv float %77, %74
  %79 = load ptr, ptr @stderr, align 8, !tbaa !30
  %80 = fpext float %78 to double
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.330, ptr noundef nonnull %59, i64 noundef %69, i64 noundef %71, double noundef %80, ptr noundef nonnull @.str.329) #29
  %82 = load ptr, ptr %20, align 8, !tbaa !8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8480, ptr noundef nonnull @__PRETTY_FUNCTION__.accountingReportDiff) #28
  unreachable

85:                                               ; preds = %63, %67
  %86 = load ptr, ptr @stderr, align 8, !tbaa !30
  %87 = select i1 %21, ptr @.str.332, ptr @.str.333
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.331, i64 noundef %26, ptr noundef nonnull %87, i32 noundef %14, i32 noundef %4, i32 noundef 10, ptr noundef nonnull @.str.329) #29
  %89 = load i64, ptr %55, align 8, !tbaa !119
  %90 = icmp ugt i64 %89, 2
  %91 = icmp slt i64 %26, 25
  %92 = or i1 %91, %90
  br i1 %92, label %146, label %93

93:                                               ; preds = %85
  %94 = load ptr, ptr @stderr, align 8, !tbaa !30
  %95 = load i8, ptr %2, align 1, !tbaa !5
  %96 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %95)
  %97 = tail call i32 @fputs(ptr nonnull %96, ptr %94) #29
  %98 = getelementptr inbounds i8, ptr %2, i64 1
  %99 = load ptr, ptr @stderr, align 8, !tbaa !30
  %100 = load i8, ptr %98, align 1, !tbaa !5
  %101 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %100)
  %102 = tail call i32 @fputs(ptr nonnull %101, ptr %99) #29
  %103 = getelementptr inbounds i8, ptr %2, i64 2
  %104 = load ptr, ptr @stderr, align 8, !tbaa !30
  %105 = load i8, ptr %103, align 1, !tbaa !5
  %106 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %105)
  %107 = tail call i32 @fputs(ptr nonnull %106, ptr %104) #29
  %108 = getelementptr inbounds i8, ptr %2, i64 3
  %109 = load ptr, ptr @stderr, align 8, !tbaa !30
  %110 = load i8, ptr %108, align 1, !tbaa !5
  %111 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %110)
  %112 = tail call i32 @fputs(ptr nonnull %111, ptr %109) #29
  %113 = getelementptr inbounds i8, ptr %2, i64 4
  %114 = load ptr, ptr @stderr, align 8, !tbaa !30
  %115 = load i8, ptr %113, align 1, !tbaa !5
  %116 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %115)
  %117 = tail call i32 @fputs(ptr nonnull %116, ptr %114) #29
  %118 = getelementptr inbounds i8, ptr %2, i64 5
  %119 = load ptr, ptr @stderr, align 8, !tbaa !30
  %120 = load i8, ptr %118, align 1, !tbaa !5
  %121 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %120)
  %122 = tail call i32 @fputs(ptr nonnull %121, ptr %119) #29
  %123 = getelementptr inbounds i8, ptr %2, i64 6
  %124 = load ptr, ptr @stderr, align 8, !tbaa !30
  %125 = load i8, ptr %123, align 1, !tbaa !5
  %126 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %125)
  %127 = tail call i32 @fputs(ptr nonnull %126, ptr %124) #29
  %128 = getelementptr inbounds i8, ptr %2, i64 7
  %129 = load ptr, ptr @stderr, align 8, !tbaa !30
  %130 = load i8, ptr %128, align 1, !tbaa !5
  %131 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %130)
  %132 = tail call i32 @fputs(ptr nonnull %131, ptr %129) #29
  %133 = getelementptr inbounds i8, ptr %2, i64 8
  %134 = load ptr, ptr @stderr, align 8, !tbaa !30
  %135 = load i8, ptr %133, align 1, !tbaa !5
  %136 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %135)
  %137 = tail call i32 @fputs(ptr nonnull %136, ptr %134) #29
  %138 = getelementptr inbounds i8, ptr %2, i64 9
  %139 = load ptr, ptr @stderr, align 8, !tbaa !30
  %140 = load i8, ptr %138, align 1, !tbaa !5
  %141 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %140)
  %142 = tail call i32 @fputs(ptr nonnull %141, ptr %139) #29
  %143 = load ptr, ptr @stderr, align 8, !tbaa !30
  %144 = tail call i64 @fwrite(ptr nonnull @__const.accountingReportDiff.ellipis, i64 4, i64 1, ptr %143) #29
  %145 = getelementptr inbounds i8, ptr %3, i64 -10
  br label %156

146:                                              ; preds = %85
  %147 = icmp ult ptr %2, %3
  br i1 %147, label %148, label %164

148:                                              ; preds = %146, %148
  %149 = phi ptr [ %154, %148 ], [ %2, %146 ]
  %150 = load ptr, ptr @stderr, align 8, !tbaa !30
  %151 = load i8, ptr %149, align 1, !tbaa !5
  %152 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %151)
  %153 = tail call i32 @fputs(ptr nonnull %152, ptr %150) #29
  %154 = getelementptr inbounds i8, ptr %149, i64 1
  %155 = icmp eq ptr %154, %3
  br i1 %155, label %164, label %148, !llvm.loop !273

156:                                              ; preds = %156, %93
  %157 = phi ptr [ %145, %93 ], [ %162, %156 ]
  %158 = load ptr, ptr @stderr, align 8, !tbaa !30
  %159 = load i8, ptr %157, align 1, !tbaa !5
  %160 = tail call ptr @unsignedCharToPrintable(i8 noundef zeroext %159)
  %161 = tail call i32 @fputs(ptr nonnull %160, ptr %158) #29
  %162 = getelementptr inbounds i8, ptr %157, i64 1
  %163 = icmp ult ptr %162, %3
  br i1 %163, label %156, label %164, !llvm.loop !274

164:                                              ; preds = %156, %148, %146
  %165 = load ptr, ptr @stderr, align 8, !tbaa !30
  %166 = tail call i64 @fwrite(ptr nonnull @.str.335, i64 2, i64 1, ptr %165) #29
  br label %174

167:                                              ; preds = %6
  %168 = trunc i32 %7 to i8
  %169 = lshr i8 29, %168
  %170 = and i8 %169, 1
  %171 = icmp ne i8 %170, 0
  %172 = icmp eq i32 %5, 2
  %173 = or i1 %171, %172
  br i1 %173, label %174, label %11

174:                                              ; preds = %167, %19, %164, %53, %9
  %175 = phi i8 [ 1, %9 ], [ 0, %19 ], [ %54, %164 ], [ %54, %53 ], [ 1, %167 ]
  ret i8 %175
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @processXmlDecl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr null, ptr %9, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  store ptr null, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  store ptr null, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  store ptr null, ptr %12, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #25
  store i32 -1, ptr %13, align 4, !tbaa !33
  %14 = tail call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef 12, ptr noundef %2, ptr noundef %3, i32 noundef 4800, i32 noundef 0), !range !133
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %4, %16
  %17 = phi ptr [ %19, %16 ], [ %0, %4 ]
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %17, i64 0, i32 91
  %19 = load ptr, ptr %18, align 8, !tbaa !8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %17, i64 0, i32 98, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !119
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %291, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %17, i64 0, i32 98
  %27 = load i64, ptr %26, align 8, !tbaa !37
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %17, i64 0, i32 98, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !213
  %30 = icmp eq i64 %27, 0
  %31 = uitofp i64 %27 to float
  %32 = select i1 %30, float 2.200000e+01, float %31
  %33 = select i1 %30, i64 22, i64 %27
  %34 = add i64 %33, %29
  %35 = uitofp i64 %34 to float
  %36 = fdiv float %35, %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !30
  %38 = fpext float %36 to double
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.330, ptr noundef nonnull %17, i64 noundef %27, i64 noundef %29, double noundef %38, ptr noundef nonnull @.str.336) #29
  br label %291

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %42 = load i8, ptr %41, align 8, !tbaa !60
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr @XmlParseXmlDecl, ptr @XmlParseXmlDeclNS
  %45 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %46 = load ptr, ptr %45, align 8, !tbaa !202
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %48 = call i32 %44(i32 noundef %1, ptr noundef %46, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %47, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %13) #25, !callees !275
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i32 %1, 0
  br i1 %49, label %51, label %53

51:                                               ; preds = %40
  %52 = select i1 %50, i32 30, i32 31
  br label %291

53:                                               ; preds = %40
  %54 = load i32, ptr %13, align 4
  %55 = icmp eq i32 %54, 1
  %56 = select i1 %50, i1 %55, i1 false
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = getelementptr inbounds %struct.DTD, ptr %59, i64 0, i32 8
  store i8 1, ptr %60, align 2, !tbaa !101
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 95
  %62 = load i32, ptr %61, align 4, !tbaa !126
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, ptr %61, align 4, !tbaa !126
  br label %65

65:                                               ; preds = %57, %64, %53
  %66 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 36
  %67 = load ptr, ptr %66, align 8, !tbaa !191
  %68 = icmp eq ptr %67, null
  br i1 %68, label %174, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8, !tbaa !30
  %71 = icmp eq ptr %70, null
  br i1 %71, label %118, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %74 = load ptr, ptr %45, align 8, !tbaa !202
  %75 = getelementptr inbounds %struct.encoding, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !276
  %77 = call i32 %76(ptr noundef %74, ptr noundef nonnull %70) #25
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %70, i64 %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %70, ptr %8, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !132
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83, %72
  %87 = getelementptr inbounds %struct.encoding, ptr %74, i64 0, i32 10
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  br label %89

89:                                               ; preds = %94, %86
  %90 = load ptr, ptr %87, align 8, !tbaa !211
  %91 = load ptr, ptr %88, align 8, !tbaa !131
  %92 = call i32 %90(ptr noundef nonnull %74, ptr noundef nonnull %8, ptr noundef nonnull %79, ptr noundef nonnull %80, ptr noundef %91) #25
  %93 = icmp ult i32 %92, 2
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %89

97:                                               ; preds = %94, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %291

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %291, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %80, align 8, !tbaa !132
  %104 = load ptr, ptr %88, align 8, !tbaa !131
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %291, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %80, align 8, !tbaa !132
  br label %111

111:                                              ; preds = %102, %109
  %112 = phi ptr [ %110, %109 ], [ %103, %102 ]
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %113, ptr %80, align 8, !tbaa !132
  store i8 0, ptr %112, align 1, !tbaa !5
  %114 = load ptr, ptr %99, align 8, !tbaa !134
  %115 = icmp eq ptr %114, null
  br i1 %115, label %291, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %80, align 8, !tbaa !277
  store ptr %117, ptr %99, align 8, !tbaa !278
  br label %118

118:                                              ; preds = %116, %69
  %119 = phi ptr [ %114, %116 ], [ null, %69 ]
  %120 = load ptr, ptr %11, align 8, !tbaa !30
  %121 = icmp eq ptr %120, null
  br i1 %121, label %167, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %124 = load ptr, ptr %45, align 8, !tbaa !202
  %125 = load ptr, ptr %12, align 8, !tbaa !30
  %126 = getelementptr inbounds %struct.encoding, ptr %124, i64 0, i32 12
  %127 = load i32, ptr %126, align 8, !tbaa !226
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i8, ptr %125, i64 %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %120, ptr %7, align 8, !tbaa !30
  %131 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !132
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %123), !range !133
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134, %122
  %138 = getelementptr inbounds %struct.encoding, ptr %124, i64 0, i32 10
  %139 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  br label %140

140:                                              ; preds = %145, %137
  %141 = load ptr, ptr %138, align 8, !tbaa !211
  %142 = load ptr, ptr %139, align 8, !tbaa !131
  %143 = call i32 %141(ptr noundef nonnull %124, ptr noundef nonnull %7, ptr noundef %130, ptr noundef nonnull %131, ptr noundef %142) #25
  %144 = icmp ult i32 %143, 2
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %123), !range !133
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %140

148:                                              ; preds = %145, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %291

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %291, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %131, align 8, !tbaa !132
  %155 = load ptr, ptr %139, align 8, !tbaa !131
  %156 = icmp eq ptr %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %123), !range !133
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %291, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %131, align 8, !tbaa !132
  br label %162

162:                                              ; preds = %153, %160
  %163 = phi ptr [ %161, %160 ], [ %154, %153 ]
  %164 = getelementptr inbounds i8, ptr %163, i64 1
  store ptr %164, ptr %131, align 8, !tbaa !132
  store i8 0, ptr %163, align 1, !tbaa !5
  %165 = load ptr, ptr %150, align 8, !tbaa !134
  %166 = icmp eq ptr %165, null
  br i1 %166, label %291, label %167

167:                                              ; preds = %162, %118
  %168 = phi ptr [ %165, %162 ], [ null, %118 ]
  %169 = load ptr, ptr %66, align 8, !tbaa !191
  %170 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !125
  %172 = load i32, ptr %13, align 4, !tbaa !33
  call void %169(ptr noundef %171, ptr noundef %168, ptr noundef %119, i32 noundef %172) #25
  %173 = icmp ne ptr %168, null
  br label %213

174:                                              ; preds = %65
  %175 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %176 = load ptr, ptr %175, align 8, !tbaa !179
  %177 = icmp eq ptr %176, null
  br i1 %177, label %213, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %45, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %2, ptr %5, align 8, !tbaa !30
  %180 = getelementptr inbounds %struct.encoding, ptr %179, i64 0, i32 13
  %181 = load i8, ptr %180, align 4, !tbaa !210
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %205

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %185 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %186 = getelementptr inbounds %struct.encoding, ptr %179, i64 0, i32 10
  %187 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %188 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %189

189:                                              ; preds = %189, %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %190 = load ptr, ptr %185, align 8, !tbaa !44
  store ptr %190, ptr %6, align 8, !tbaa !30
  %191 = load ptr, ptr %186, align 8, !tbaa !211
  %192 = load ptr, ptr %187, align 8, !tbaa !45
  %193 = call i32 %191(ptr noundef nonnull %179, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %192) #25
  %194 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %194, ptr %184, align 8, !tbaa !30
  %195 = load ptr, ptr %175, align 8, !tbaa !179
  %196 = load ptr, ptr %188, align 8, !tbaa !125
  %197 = load ptr, ptr %185, align 8, !tbaa !44
  %198 = load ptr, ptr %6, align 8, !tbaa !30
  %199 = ptrtoint ptr %198 to i64
  %200 = ptrtoint ptr %197 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  call void %195(ptr noundef %196, ptr noundef %197, i32 noundef %202) #25
  %203 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %203, ptr %47, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %204 = icmp ugt i32 %193, 1
  br i1 %204, label %189, label %212, !llvm.loop !212

205:                                              ; preds = %178
  %206 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !125
  %208 = ptrtoint ptr %3 to i64
  %209 = ptrtoint ptr %2 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  call void %176(ptr noundef %207, ptr noundef %2, i32 noundef %211) #25
  br label %212

212:                                              ; preds = %189, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %213

213:                                              ; preds = %174, %212, %167
  %214 = phi ptr [ %119, %167 ], [ null, %212 ], [ null, %174 ]
  %215 = phi i1 [ %173, %167 ], [ false, %212 ], [ false, %174 ]
  %216 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 40
  %217 = load ptr, ptr %216, align 8, !tbaa !62
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %272

219:                                              ; preds = %213
  %220 = load ptr, ptr %10, align 8, !tbaa !30
  %221 = icmp eq ptr %220, null
  br i1 %221, label %236, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.encoding, ptr %220, i64 0, i32 12
  %224 = load i32, ptr %223, align 8, !tbaa !226
  %225 = load ptr, ptr %45, align 8, !tbaa !202
  %226 = getelementptr inbounds %struct.encoding, ptr %225, i64 0, i32 12
  %227 = load i32, ptr %226, align 8, !tbaa !226
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = icmp ne i32 %224, 2
  %231 = icmp eq ptr %220, %225
  %232 = or i1 %230, %231
  br i1 %232, label %235, label %233

233:                                              ; preds = %229, %222
  %234 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %234, ptr %47, align 8, !tbaa !200
  br label %291

235:                                              ; preds = %229
  store ptr %220, ptr %45, align 8, !tbaa !202
  br label %272

236:                                              ; preds = %219
  %237 = load ptr, ptr %9, align 8, !tbaa !30
  %238 = icmp eq ptr %237, null
  br i1 %238, label %272, label %239

239:                                              ; preds = %236
  %240 = icmp eq ptr %214, null
  br i1 %240, label %241, label %251

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %243 = load ptr, ptr %45, align 8, !tbaa !202
  %244 = getelementptr inbounds %struct.encoding, ptr %243, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !276
  %246 = call i32 %245(ptr noundef %243, ptr noundef nonnull %237) #25
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %237, i64 %247
  %249 = call fastcc ptr @poolStoreString(ptr noundef nonnull %242, ptr noundef %243, ptr noundef nonnull %237, ptr noundef nonnull %248)
  %250 = icmp eq ptr %249, null
  br i1 %250, label %291, label %251

251:                                              ; preds = %241, %239
  %252 = phi ptr [ %214, %239 ], [ %249, %241 ]
  %253 = call fastcc i32 @handleUnknownEncoding(ptr noundef nonnull %0, ptr noundef nonnull %252)
  %254 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %255 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !85
  %257 = icmp eq ptr %256, null
  %258 = load ptr, ptr %254, align 8, !tbaa !86
  br i1 %257, label %259, label %260

259:                                              ; preds = %251
  store ptr %258, ptr %255, align 8, !tbaa !85
  br label %267

260:                                              ; preds = %251
  %261 = icmp eq ptr %258, null
  br i1 %261, label %267, label %262

262:                                              ; preds = %260, %262
  %263 = phi ptr [ %264, %262 ], [ %256, %260 ]
  %264 = phi ptr [ %265, %262 ], [ %258, %260 ]
  %265 = load ptr, ptr %264, align 8, !tbaa !30
  store ptr %263, ptr %264, align 8, !tbaa !30
  store ptr %264, ptr %255, align 8, !tbaa !85
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %262, !llvm.loop !87

267:                                              ; preds = %262, %259, %260
  store ptr null, ptr %254, align 8, !tbaa !86
  %268 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %268, i8 0, i64 24, i1 false)
  %269 = icmp eq i32 %253, 18
  br i1 %269, label %270, label %291

270:                                              ; preds = %267
  %271 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %271, ptr %47, align 8, !tbaa !200
  br label %291

272:                                              ; preds = %235, %236, %213
  %273 = icmp ne ptr %214, null
  %274 = or i1 %273, %215
  br i1 %274, label %275, label %291

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %277 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !85
  %279 = icmp eq ptr %278, null
  %280 = load ptr, ptr %276, align 8, !tbaa !86
  br i1 %279, label %281, label %282

281:                                              ; preds = %275
  store ptr %280, ptr %277, align 8, !tbaa !85
  br label %289

282:                                              ; preds = %275
  %283 = icmp eq ptr %280, null
  br i1 %283, label %289, label %284

284:                                              ; preds = %282, %284
  %285 = phi ptr [ %286, %284 ], [ %278, %282 ]
  %286 = phi ptr [ %287, %284 ], [ %280, %282 ]
  %287 = load ptr, ptr %286, align 8, !tbaa !30
  store ptr %285, ptr %286, align 8, !tbaa !30
  store ptr %286, ptr %277, align 8, !tbaa !85
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %284, !llvm.loop !87

289:                                              ; preds = %284, %281, %282
  store ptr null, ptr %276, align 8, !tbaa !86
  %290 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %290, i8 0, i64 24, i1 false)
  br label %291

291:                                              ; preds = %157, %148, %149, %106, %97, %98, %25, %21, %289, %272, %241, %270, %267, %162, %111, %51, %233
  %292 = phi i32 [ 19, %233 ], [ %52, %51 ], [ 1, %111 ], [ 1, %162 ], [ 1, %241 ], [ 18, %270 ], [ %253, %267 ], [ 0, %272 ], [ 0, %289 ], [ 43, %21 ], [ 43, %25 ], [ 1, %98 ], [ 1, %97 ], [ 1, %106 ], [ 1, %149 ], [ 1, %148 ], [ 1, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  ret i32 %292
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @poolStoreString(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %2, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0), !range !133
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %14 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 2
  br label %15

15:                                               ; preds = %20, %12
  %16 = load ptr, ptr %13, align 8, !tbaa !211
  %17 = load ptr, ptr %14, align 8, !tbaa !131
  %18 = call i32 %16(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %6, ptr noundef %17) #25
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0), !range !133
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %15

23:                                               ; preds = %20, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %41

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !tbaa !132
  %30 = load ptr, ptr %14, align 8, !tbaa !131
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %0), !range !133
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !132
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ %29, %28 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %6, align 8, !tbaa !132
  store i8 0, ptr %38, align 1, !tbaa !5
  %40 = load ptr, ptr %25, align 8, !tbaa !134
  br label %41

41:                                               ; preds = %32, %23, %24, %37
  %42 = phi ptr [ %40, %37 ], [ null, %24 ], [ null, %23 ], [ null, %32 ]
  ret ptr %42
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lookup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %193, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 1
  store i8 6, ptr %11, align 8, !tbaa !47
  store i64 64, ptr %5, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = tail call fastcc ptr @expat_malloc(ptr noundef %13, i64 noundef 512, i32 noundef 7782)
  store ptr %14, ptr %1, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i64 0, ptr %5, align 8, !tbaa !88
  br label %193

17:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %14, i8 0, i64 512, i1 false)
  %18 = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %2)
  %19 = load i64, ptr %5, align 8, !tbaa !88
  %20 = add i64 %19, -1
  %21 = and i64 %20, %18
  br label %174

22:                                               ; preds = %4
  %23 = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %2)
  %24 = load i64, ptr %5, align 8, !tbaa !88
  %25 = add i64 %24, -1
  %26 = and i64 %25, %23
  %27 = load ptr, ptr %1, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %22
  %32 = sub i64 0, %24
  %33 = and i64 %23, %32
  %34 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 1
  %35 = lshr i64 %25, 2
  br label %36

36:                                               ; preds = %31, %54
  %37 = phi ptr [ %29, %31 ], [ %62, %54 ]
  %38 = phi i64 [ %26, %31 ], [ %60, %54 ]
  %39 = phi i8 [ 0, %31 ], [ %55, %54 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !140
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %40) #30
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %193, label %43

43:                                               ; preds = %36
  %44 = icmp eq i8 %39, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %43
  %46 = load i8, ptr %34, align 8, !tbaa !47
  %47 = zext i8 %46 to i64
  %48 = add nuw nsw i64 %47, 4294967295
  %49 = and i64 %48, 4294967295
  %50 = lshr i64 %33, %49
  %51 = and i64 %50, %35
  %52 = trunc i64 %51 to i8
  %53 = or i8 %52, 1
  br label %54

54:                                               ; preds = %45, %43
  %55 = phi i8 [ %39, %43 ], [ %53, %45 ]
  %56 = zext i8 %55 to i64
  %57 = icmp ult i64 %38, %56
  %58 = select i1 %57, i64 %24, i64 0
  %59 = sub i64 %38, %56
  %60 = add i64 %59, %58
  %61 = getelementptr inbounds ptr, ptr %27, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !30
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %36, !llvm.loop !142

64:                                               ; preds = %54, %22
  %65 = phi i64 [ %26, %22 ], [ %60, %54 ]
  %66 = icmp eq i64 %3, 0
  br i1 %66, label %193, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !93
  %70 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !47
  %72 = zext i8 %71 to i64
  %73 = add nuw nsw i64 %72, 4294967295
  %74 = and i64 %73, 4294967295
  %75 = lshr i64 %69, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %174, label %77

77:                                               ; preds = %67
  %78 = add i8 %71, 1
  %79 = icmp ugt i8 %78, 63
  br i1 %79, label %193, label %80

80:                                               ; preds = %77
  %81 = zext nneg i8 %78 to i32
  %82 = zext nneg i8 %78 to i64
  %83 = shl nuw i64 1, %82
  %84 = add i64 %83, -1
  %85 = icmp ugt i8 %78, 60
  br i1 %85, label %193, label %86

86:                                               ; preds = %80
  %87 = shl i64 8, %82
  %88 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !50
  %90 = tail call fastcc ptr @expat_malloc(ptr noundef %89, i64 noundef %87, i32 noundef 7822)
  %91 = icmp eq ptr %90, null
  br i1 %91, label %193, label %92

92:                                               ; preds = %86
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %90, i8 0, i64 %87, i1 false)
  %93 = load i64, ptr %5, align 8, !tbaa !88
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %144, label %95

95:                                               ; preds = %92
  %96 = sub i64 0, %83
  %97 = add nsw i32 %81, -1
  %98 = zext nneg i32 %97 to i64
  %99 = lshr i64 %84, 2
  br label %100

100:                                              ; preds = %95, %140
  %101 = phi i64 [ %93, %95 ], [ %141, %140 ]
  %102 = phi i64 [ 0, %95 ], [ %142, %140 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !49
  %104 = getelementptr inbounds ptr, ptr %103, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !30
  %106 = icmp eq ptr %105, null
  br i1 %106, label %140, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %105, align 8, !tbaa !140
  %109 = tail call fastcc i64 @hash(ptr noundef %0, ptr noundef %108)
  %110 = and i64 %109, %84
  %111 = getelementptr inbounds ptr, ptr %90, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !30
  %113 = icmp eq ptr %112, null
  br i1 %113, label %133, label %114

114:                                              ; preds = %107
  %115 = and i64 %109, %96
  %116 = lshr i64 %115, %98
  %117 = and i64 %116, %99
  %118 = trunc i64 %117 to i8
  %119 = or i8 %118, 1
  br label %120

120:                                              ; preds = %114, %120
  %121 = phi i64 [ %110, %114 ], [ %129, %120 ]
  %122 = phi i8 [ 0, %114 ], [ %124, %120 ]
  %123 = icmp eq i8 %122, 0
  %124 = select i1 %123, i8 %119, i8 %122
  %125 = zext i8 %124 to i64
  %126 = icmp ult i64 %121, %125
  %127 = select i1 %126, i64 %83, i64 0
  %128 = sub i64 %121, %125
  %129 = add i64 %128, %127
  %130 = getelementptr inbounds ptr, ptr %90, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !30
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %120, !llvm.loop !279

133:                                              ; preds = %120, %107
  %134 = phi i64 [ %110, %107 ], [ %129, %120 ]
  %135 = getelementptr inbounds ptr, ptr %90, i64 %134
  %136 = load ptr, ptr %1, align 8, !tbaa !49
  %137 = getelementptr inbounds ptr, ptr %136, i64 %102
  %138 = load ptr, ptr %137, align 8, !tbaa !30
  store ptr %138, ptr %135, align 8, !tbaa !30
  %139 = load i64, ptr %5, align 8, !tbaa !88
  br label %140

140:                                              ; preds = %100, %133
  %141 = phi i64 [ %101, %100 ], [ %139, %133 ]
  %142 = add nuw i64 %102, 1
  %143 = icmp ult i64 %142, %141
  br i1 %143, label %100, label %144, !llvm.loop !280

144:                                              ; preds = %140, %92
  %145 = load ptr, ptr %88, align 8, !tbaa !50
  %146 = load ptr, ptr %1, align 8, !tbaa !49
  tail call fastcc void @expat_free(ptr noundef %145, ptr noundef %146, i32 noundef 7838)
  store ptr %90, ptr %1, align 8, !tbaa !49
  store i8 %78, ptr %70, align 8, !tbaa !47
  store i64 %83, ptr %5, align 8, !tbaa !88
  %147 = and i64 %84, %23
  %148 = getelementptr inbounds ptr, ptr %90, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !30
  %150 = icmp eq ptr %149, null
  br i1 %150, label %174, label %151

151:                                              ; preds = %144
  %152 = sub i64 0, %83
  %153 = and i64 %23, %152
  %154 = add nsw i32 %81, -1
  %155 = zext nneg i32 %154 to i64
  %156 = lshr i64 %153, %155
  %157 = lshr i64 %84, 2
  %158 = and i64 %156, %157
  %159 = trunc i64 %158 to i8
  %160 = or i8 %159, 1
  br label %161

161:                                              ; preds = %151, %161
  %162 = phi i64 [ %147, %151 ], [ %170, %161 ]
  %163 = phi i8 [ 0, %151 ], [ %165, %161 ]
  %164 = icmp eq i8 %163, 0
  %165 = select i1 %164, i8 %160, i8 %163
  %166 = zext i8 %165 to i64
  %167 = icmp ult i64 %162, %166
  %168 = select i1 %167, i64 %83, i64 0
  %169 = sub i64 %162, %166
  %170 = add i64 %169, %168
  %171 = getelementptr inbounds ptr, ptr %90, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !30
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %161, !llvm.loop !281

174:                                              ; preds = %161, %144, %67, %17
  %175 = phi i64 [ %21, %17 ], [ %65, %67 ], [ %147, %144 ], [ %170, %161 ]
  %176 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !50
  %178 = tail call fastcc ptr @expat_malloc(ptr noundef %177, i64 noundef %3, i32 noundef 7851)
  %179 = load ptr, ptr %1, align 8, !tbaa !49
  %180 = getelementptr inbounds ptr, ptr %179, i64 %175
  store ptr %178, ptr %180, align 8, !tbaa !30
  %181 = load ptr, ptr %1, align 8, !tbaa !49
  %182 = getelementptr inbounds ptr, ptr %181, i64 %175
  %183 = load ptr, ptr %182, align 8, !tbaa !30
  %184 = icmp eq ptr %183, null
  br i1 %184, label %193, label %185

185:                                              ; preds = %174
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %183, i8 0, i64 %3, i1 false)
  %186 = load ptr, ptr %1, align 8, !tbaa !49
  %187 = getelementptr inbounds ptr, ptr %186, i64 %175
  %188 = load ptr, ptr %187, align 8, !tbaa !30
  store ptr %2, ptr %188, align 8, !tbaa !140
  %189 = getelementptr inbounds %struct.HASH_TABLE, ptr %1, i64 0, i32 3
  %190 = load i64, ptr %189, align 8, !tbaa !93
  %191 = add i64 %190, 1
  store i64 %191, ptr %189, align 8, !tbaa !93
  %192 = load ptr, ptr %187, align 8, !tbaa !30
  br label %193

193:                                              ; preds = %36, %86, %80, %77, %64, %8, %16, %174, %185
  %194 = phi ptr [ %192, %185 ], [ null, %174 ], [ null, %16 ], [ null, %8 ], [ null, %77 ], [ null, %86 ], [ null, %80 ], [ null, %64 ], [ %37, %36 ]
  ret ptr %194
}

; Function Attrs: nounwind uwtable
define internal i32 @contentProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %10 = load ptr, ptr %9, align 8, !tbaa !202
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !199
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i8
  %15 = tail call fastcc i32 @doContent(ptr noundef %0, i32 noundef %8, ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %14, i32 noundef 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %17, %71
  %22 = phi ptr [ %75, %71 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 3
  %24 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 3, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !282
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds i8, ptr %29, i64 %27
  %31 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !283
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %77, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !284
  %37 = sext i32 %36 to i64
  %38 = xor i64 %27, -1
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %77, label %40

40:                                               ; preds = %34
  %41 = add nsw i64 %37, %27
  %42 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !285
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %29 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = tail call fastcc ptr @expat_realloc(ptr noundef %0, ptr noundef %29, i64 noundef %41, i32 noundef 3083)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %77, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %23, align 8, !tbaa !286
  %53 = load ptr, ptr %28, align 8, !tbaa !5
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr %49, ptr %23, align 8, !tbaa !286
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.tag, ptr %22, i64 0, i32 3, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !287
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = ptrtoint ptr %58 to i64
  %62 = ptrtoint ptr %53 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i8, ptr %49, i64 %63
  store ptr %64, ptr %57, align 8, !tbaa !287
  br label %65

65:                                               ; preds = %60, %56
  store ptr %49, ptr %28, align 8, !tbaa !5
  %66 = getelementptr inbounds i8, ptr %49, i64 %41
  store ptr %66, ptr %42, align 8, !tbaa !285
  %67 = getelementptr inbounds i8, ptr %49, i64 %27
  %68 = load ptr, ptr %31, align 8, !tbaa !283
  %69 = load i32, ptr %35, align 8, !tbaa !284
  %70 = sext i32 %69 to i64
  br label %71

71:                                               ; preds = %65, %40
  %72 = phi i64 [ %37, %40 ], [ %70, %65 ]
  %73 = phi ptr [ %32, %40 ], [ %68, %65 ]
  %74 = phi ptr [ %30, %40 ], [ %67, %65 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %73, i64 %72, i1 false)
  store ptr %74, ptr %31, align 8, !tbaa !283
  %75 = load ptr, ptr %22, align 8, !tbaa !30
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %21

77:                                               ; preds = %71, %21, %48, %34, %17, %4
  %78 = phi i32 [ %15, %4 ], [ 0, %17 ], [ 0, %71 ], [ 0, %21 ], [ 1, %48 ], [ 1, %34 ]
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getElementType(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %2, ptr %5, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %17 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 2
  br label %18

18:                                               ; preds = %23, %15
  %19 = load ptr, ptr %16, align 8, !tbaa !211
  %20 = load ptr, ptr %17, align 8, !tbaa !131
  %21 = call i32 %19(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %20) #25
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %18

26:                                               ; preds = %23, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %72

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %9, align 8, !tbaa !132
  %33 = load ptr, ptr %17, align 8, !tbaa !131
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %72, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %9, align 8, !tbaa !132
  br label %40

40:                                               ; preds = %31, %38
  %41 = phi ptr [ %39, %38 ], [ %32, %31 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %9, align 8, !tbaa !132
  store i8 0, ptr %41, align 1, !tbaa !5
  %43 = load ptr, ptr %28, align 8, !tbaa !134
  %44 = icmp eq ptr %43, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 1
  %47 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %43, i64 noundef 88)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %47, i64 0, i32 6, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !144
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %56, %53 ], [ %0, %49 ]
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 91
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !llvm.loop !26

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %47, i64 0, i32 6
  %60 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %47, i64 0, i32 6, i32 1
  store i8 0, ptr %60, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %47, i64 0, i32 6, i32 2
  store ptr null, ptr %59, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  store ptr %54, ptr %50, align 8, !tbaa !50
  br label %62

62:                                               ; preds = %58, %49
  %63 = load ptr, ptr %47, align 8, !tbaa !143
  %64 = icmp eq ptr %63, %43
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %28, align 8, !tbaa !161
  store ptr %66, ptr %9, align 8, !tbaa !229
  br label %71

67:                                               ; preds = %62
  %68 = load ptr, ptr %9, align 8, !tbaa !229
  store ptr %68, ptr %28, align 8, !tbaa !161
  %69 = call fastcc i32 @setElementTypePrefix(ptr noundef %0, ptr noundef nonnull %47), !range !236
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %65
  br label %72

72:                                               ; preds = %35, %26, %27, %67, %45, %40, %71
  %73 = phi ptr [ %47, %71 ], [ null, %40 ], [ null, %45 ], [ null, %67 ], [ null, %27 ], [ null, %26 ], [ null, %35 ]
  ret ptr %73
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getAttributeId(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4
  %9 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %166, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %9, align 8, !tbaa !132
  br label %19

19:                                               ; preds = %4, %17
  %20 = phi ptr [ %18, %17 ], [ %10, %4 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %9, align 8, !tbaa !132
  store i8 0, ptr %20, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %2, ptr %5, align 8, !tbaa !30
  %22 = load ptr, ptr %9, align 8, !tbaa !132
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24, %19
  %28 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  br label %29

29:                                               ; preds = %34, %27
  %30 = load ptr, ptr %28, align 8, !tbaa !211
  %31 = load ptr, ptr %11, align 8, !tbaa !131
  %32 = call i32 %30(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %31) #25
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %29

37:                                               ; preds = %34, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %166

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 4, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %166, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %9, align 8, !tbaa !132
  %44 = load ptr, ptr %11, align 8, !tbaa !131
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %166, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %9, align 8, !tbaa !132
  br label %51

51:                                               ; preds = %42, %49
  %52 = phi ptr [ %50, %49 ], [ %43, %42 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %53, ptr %9, align 8, !tbaa !132
  store i8 0, ptr %52, align 1, !tbaa !5
  %54 = load ptr, ptr %39, align 8, !tbaa !134
  %55 = icmp eq ptr %54, null
  br i1 %55, label %166, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %54, i64 1
  %58 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 2
  %59 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %58, ptr noundef nonnull %57, i64 noundef 24)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %166, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %59, align 8, !tbaa !135
  %63 = icmp eq ptr %62, %57
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %39, align 8, !tbaa !161
  store ptr %65, ptr %9, align 8, !tbaa !229
  br label %166

66:                                               ; preds = %61
  %67 = load ptr, ptr %9, align 8, !tbaa !229
  store ptr %67, ptr %39, align 8, !tbaa !161
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %69 = load i8, ptr %68, align 8, !tbaa !60
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %166, label %71

71:                                               ; preds = %66
  %72 = load i8, ptr %57, align 1, !tbaa !5
  switch i8 %72, label %92 [
    i8 120, label %73
    i8 0, label %166
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds i8, ptr %54, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = icmp eq i8 %75, 109
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %54, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !5
  %80 = icmp eq i8 %79, 108
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %54, i64 4
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = icmp eq i8 %83, 110
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %54, i64 5
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %88 = icmp eq i8 %87, 115
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %54, i64 6
  %91 = load i8, ptr %90, align 1, !tbaa !5
  switch i8 %91, label %92 [
    i8 0, label %93
    i8 58, label %95
  ]

92:                                               ; preds = %71, %73, %77, %81, %85, %89
  br label %125

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 11
  br label %99

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 3
  %97 = getelementptr inbounds i8, ptr %54, i64 7
  %98 = call fastcc ptr @lookup(ptr noundef nonnull %0, ptr noundef nonnull %96, ptr noundef nonnull %97, i64 noundef 16)
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi ptr [ %98, %95 ], [ %94, %93 ]
  %101 = getelementptr inbounds %struct.attribute_id, ptr %59, i64 0, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !138
  %102 = getelementptr inbounds %struct.attribute_id, ptr %59, i64 0, i32 3
  store i8 1, ptr %102, align 1, !tbaa !139
  br label %166

103:                                              ; preds = %125
  %104 = or disjoint i64 %126, 1
  %105 = getelementptr inbounds i8, ptr %57, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !5
  switch i8 %106, label %107 [
    i8 0, label %166
    i8 58, label %129
  ]

107:                                              ; preds = %103
  %108 = or disjoint i64 %126, 2
  %109 = getelementptr inbounds i8, ptr %57, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !5
  switch i8 %110, label %111 [
    i8 0, label %166
    i8 58, label %129
  ]

111:                                              ; preds = %107
  %112 = or disjoint i64 %126, 3
  %113 = getelementptr inbounds i8, ptr %57, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %166, label %116, !llvm.loop !288

116:                                              ; preds = %111
  %117 = icmp eq i64 %112, 2147483647
  br i1 %117, label %166, label %118

118:                                              ; preds = %116
  %119 = icmp eq i8 %114, 58
  br i1 %119, label %129, label %120

120:                                              ; preds = %118
  %121 = add nuw nsw i64 %126, 4
  %122 = getelementptr inbounds i8, ptr %57, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !5
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %166, label %125, !llvm.loop !288

125:                                              ; preds = %120, %92
  %126 = phi i64 [ 0, %92 ], [ %121, %120 ]
  %127 = phi i8 [ %72, %92 ], [ %123, %120 ]
  %128 = icmp eq i8 %127, 58
  br i1 %128, label %129, label %103

129:                                              ; preds = %107, %103, %118, %125
  %130 = phi i64 [ %126, %125 ], [ %112, %118 ], [ %104, %103 ], [ %108, %107 ]
  br label %131

131:                                              ; preds = %129, %138
  %132 = load ptr, ptr %11, align 8, !tbaa !131
  %133 = load ptr, ptr %9, align 8, !tbaa !132
  %134 = ptrtoint ptr %132 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = icmp ult i64 %136, %130
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %166, label %131

141:                                              ; preds = %131
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %133, ptr nonnull align 1 %57, i64 %130, i1 false)
  %142 = load ptr, ptr %9, align 8, !tbaa !132
  %143 = getelementptr inbounds i8, ptr %142, i64 %130
  store ptr %143, ptr %9, align 8, !tbaa !132
  %144 = load ptr, ptr %11, align 8, !tbaa !131
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %166, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %9, align 8, !tbaa !132
  br label %151

151:                                              ; preds = %141, %149
  %152 = phi ptr [ %150, %149 ], [ %143, %141 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 1
  store ptr %153, ptr %9, align 8, !tbaa !132
  store i8 0, ptr %152, align 1, !tbaa !5
  %154 = getelementptr inbounds %struct.DTD, ptr %7, i64 0, i32 3
  %155 = load ptr, ptr %39, align 8, !tbaa !161
  %156 = call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %154, ptr noundef %155, i64 noundef 16)
  %157 = getelementptr inbounds %struct.attribute_id, ptr %59, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !138
  %158 = icmp eq ptr %156, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %151
  %160 = load ptr, ptr %156, align 8, !tbaa !130
  %161 = load ptr, ptr %39, align 8, !tbaa !161
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load ptr, ptr %9, align 8, !tbaa !229
  store ptr %164, ptr %39, align 8, !tbaa !161
  br label %166

165:                                              ; preds = %159
  store ptr %161, ptr %9, align 8, !tbaa !229
  br label %166

166:                                              ; preds = %111, %116, %120, %103, %107, %138, %71, %46, %37, %38, %146, %14, %151, %64, %99, %66, %165, %163, %56, %51
  %167 = phi ptr [ null, %51 ], [ null, %56 ], [ %59, %163 ], [ %59, %165 ], [ %59, %66 ], [ %59, %99 ], [ %59, %64 ], [ null, %151 ], [ null, %14 ], [ null, %146 ], [ null, %38 ], [ null, %37 ], [ null, %46 ], [ %59, %71 ], [ null, %138 ], [ %59, %103 ], [ %59, %107 ], [ %59, %111 ], [ null, %116 ], [ %59, %120 ]
  ret ptr %167
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @defineAttribute(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp ne ptr %4, null
  %8 = icmp ne i8 %3, 0
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %68

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 8, !tbaa !135
  %12 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 6, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !88
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 6
  %17 = tail call fastcc i64 @hash(ptr noundef %5, ptr noundef %11)
  %18 = load i64, ptr %12, align 8, !tbaa !88
  %19 = add i64 %18, -1
  %20 = and i64 %19, %17
  %21 = load ptr, ptr %16, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %15
  %26 = sub i64 0, %18
  %27 = and i64 %17, %26
  %28 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 6, i32 1
  %29 = lshr i64 %19, 2
  br label %30

30:                                               ; preds = %48, %25
  %31 = phi ptr [ %23, %25 ], [ %56, %48 ]
  %32 = phi i64 [ %20, %25 ], [ %54, %48 ]
  %33 = phi i8 [ 0, %25 ], [ %49, %48 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !140
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %34) #30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %109, label %37

37:                                               ; preds = %30
  %38 = icmp eq i8 %33, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = load i8, ptr %28, align 8, !tbaa !47
  %41 = zext i8 %40 to i64
  %42 = add nuw nsw i64 %41, 4294967295
  %43 = and i64 %42, 4294967295
  %44 = lshr i64 %27, %43
  %45 = and i64 %44, %29
  %46 = trunc i64 %45 to i8
  %47 = or i8 %46, 1
  br label %48

48:                                               ; preds = %39, %37
  %49 = phi i8 [ %33, %37 ], [ %47, %39 ]
  %50 = zext i8 %49 to i64
  %51 = icmp ult i64 %32, %50
  %52 = select i1 %51, i64 %18, i64 0
  %53 = sub i64 %32, %50
  %54 = add i64 %52, %53
  %55 = getelementptr inbounds ptr, ptr %21, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !142

58:                                               ; preds = %48, %10, %15
  br i1 %8, label %59, label %68

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !146
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.attribute_id, ptr %1, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !139
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store ptr %1, ptr %60, align 8, !tbaa !146
  br label %68

68:                                               ; preds = %67, %63, %59, %58, %6
  %69 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !145
  %71 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 4
  %72 = load i64, ptr %71, align 8, !tbaa !147
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !90
  br label %92

77:                                               ; preds = %68
  %78 = icmp slt i64 %70, 0
  br i1 %78, label %109, label %79

79:                                               ; preds = %77
  %80 = shl nuw i64 %70, 1
  %81 = icmp eq i64 %70, 0
  %82 = select i1 %81, i64 8, i64 %80
  %83 = icmp ugt i64 %82, 768614336404564650
  br i1 %83, label %109, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !90
  %87 = mul nuw i64 %82, 24
  %88 = tail call fastcc ptr @expat_realloc(ptr noundef %5, ptr noundef %86, i64 noundef %87, i32 noundef 7127)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %109, label %90

90:                                               ; preds = %84
  store i64 %82, ptr %71, align 8, !tbaa !147
  store ptr %88, ptr %85, align 8, !tbaa !90
  %91 = load i64, ptr %69, align 8, !tbaa !145
  br label %92

92:                                               ; preds = %74, %90
  %93 = phi i64 [ %70, %74 ], [ %91, %90 ]
  %94 = phi ptr [ %76, %74 ], [ %88, %90 ]
  %95 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %94, i64 %93
  store ptr %1, ptr %95, align 8, !tbaa !149
  %96 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %94, i64 %93, i32 2
  store ptr %4, ptr %96, align 8, !tbaa !152
  %97 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %94, i64 %93, i32 1
  store i8 %2, ptr %97, align 8, !tbaa !151
  %98 = icmp eq i8 %2, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.attribute_id, ptr %1, i64 0, i32 2
  store i8 1, ptr %100, align 8, !tbaa !137
  br label %101

101:                                              ; preds = %99, %92
  %102 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %0, i64 0, i32 6
  %103 = load ptr, ptr %1, align 8, !tbaa !135
  %104 = tail call fastcc ptr @lookup(ptr noundef %5, ptr noundef nonnull %102, ptr noundef %103, i64 noundef 8)
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i64, ptr %69, align 8, !tbaa !145
  %108 = add i64 %107, 1
  store i64 %108, ptr %69, align 8, !tbaa !145
  br label %109

109:                                              ; preds = %30, %84, %79, %106, %101, %77
  %110 = phi i32 [ 0, %77 ], [ 1, %106 ], [ 0, %101 ], [ 0, %79 ], [ 0, %84 ], [ 1, %30 ]
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @storeAttributeValue(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  store ptr %3, ptr %8, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 55
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 39
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 56
  br label %13

13:                                               ; preds = %100, %7
  %14 = load ptr, ptr %10, align 8, !tbaa !77
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.open_internal_entity, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !237
  %19 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !239
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !240
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %20, i64 %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr %24, ptr %9, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 9
  %30 = load i8, ptr %29, align 1, !tbaa !241
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %16
  %33 = load ptr, ptr %11, align 8, !tbaa !63
  %34 = call fastcc i32 @appendAttributeValue(ptr noundef nonnull %0, ptr noundef %33, i8 noundef zeroext %2, ptr noundef %24, ptr noundef %28, ptr noundef %5, i32 noundef 1, ptr noundef nonnull %9)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %128

37:                                               ; preds = %32
  %38 = load ptr, ptr %9, align 8, !tbaa !30
  %39 = icmp eq ptr %28, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %19, align 8, !tbaa !238
  %42 = ptrtoint ptr %38 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, ptr %21, align 4, !tbaa !239
  br label %87

46:                                               ; preds = %37
  store i8 0, ptr %29, align 1, !tbaa !241
  br label %87

47:                                               ; preds = %16, %47
  %48 = phi ptr [ %50, %47 ], [ %0, %16 ]
  %49 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 91
  %50 = load ptr, ptr %49, align 8, !tbaa !8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %47, !llvm.loop !26

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !122
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !242
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4, !tbaa !242
  br label %82

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100
  %62 = load ptr, ptr %18, align 8, !tbaa !243
  %63 = load ptr, ptr @stderr, align 8, !tbaa !30
  %64 = load i32, ptr %61, align 8, !tbaa !244
  %65 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !242
  %67 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !245
  %69 = shl i32 %66, 1
  %70 = add i32 %69, -2
  %71 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 10
  %72 = load i8, ptr %71, align 2, !tbaa !246
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, ptr @.str.100, ptr @.str.99
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.345, ptr noundef nonnull %48, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, ptr noundef nonnull @.str.329, ptr noundef nonnull %74, ptr noundef %62, ptr noundef nonnull @.str.346, i32 noundef %26, i32 noundef 6479) #29
  %76 = load ptr, ptr %10, align 8, !tbaa !77
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %48, i64 0, i32 100, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !242
  %79 = add i32 %78, -1
  store i32 %79, ptr %77, align 4, !tbaa !242
  %80 = icmp eq ptr %76, %14
  br i1 %80, label %82, label %81

81:                                               ; preds = %60
  call void @__assert_fail(ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.1, i32 noundef 6485, ptr noundef nonnull @__PRETTY_FUNCTION__.storeAttributeValue) #28
  unreachable

82:                                               ; preds = %56, %60
  %83 = getelementptr inbounds %struct.ENTITY, ptr %18, i64 0, i32 8
  store i8 0, ptr %83, align 8, !tbaa !157
  %84 = getelementptr inbounds %struct.open_internal_entity, ptr %14, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !74
  store ptr %85, ptr %10, align 8, !tbaa !77
  %86 = load ptr, ptr %12, align 8, !tbaa !55
  store ptr %86, ptr %84, align 8, !tbaa !74
  store ptr %14, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %94

87:                                               ; preds = %46, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %100

88:                                               ; preds = %13
  %89 = load ptr, ptr %8, align 8, !tbaa !30
  %90 = call fastcc i32 @appendAttributeValue(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %89, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull %8)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load ptr, ptr %10, align 8, !tbaa !77
  br label %94

94:                                               ; preds = %92, %82
  %95 = phi ptr [ %93, %92 ], [ %85, %82 ]
  %96 = icmp eq ptr %95, null
  %97 = load ptr, ptr %8, align 8
  %98 = icmp eq ptr %97, %4
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %101, label %100

100:                                              ; preds = %94, %87
  br label %13

101:                                              ; preds = %94
  %102 = icmp eq i8 %2, 0
  %103 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !132
  br i1 %102, label %105, label %114

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !134
  %108 = icmp eq ptr %104, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %104, i64 -1
  %111 = load i8, ptr %110, align 1, !tbaa !5
  %112 = icmp eq i8 %111, 32
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store ptr %110, ptr %103, align 8, !tbaa !132
  br label %114

114:                                              ; preds = %101, %113, %109, %105
  %115 = phi ptr [ %110, %113 ], [ %104, %109 ], [ %104, %105 ], [ %104, %101 ]
  %116 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 3
  %117 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !131
  %119 = icmp eq ptr %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %116, align 8, !tbaa !132
  br label %125

125:                                              ; preds = %114, %123
  %126 = phi ptr [ %124, %123 ], [ %115, %114 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  store ptr %127, ptr %116, align 8, !tbaa !132
  store i8 0, ptr %126, align 1, !tbaa !5
  br label %128

128:                                              ; preds = %88, %36, %125, %120
  %129 = phi i32 [ 0, %125 ], [ 1, %120 ], [ %34, %36 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @doIgnoreSection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %10 = load ptr, ptr %2, align 8, !tbaa !30
  store ptr %10, ptr %9, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %10, ptr %15, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.open_internal_entity, ptr %19, i64 0, i32 1
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %15, %14 ], [ %19, %17 ]
  %23 = phi ptr [ %16, %14 ], [ %20, %17 ]
  store ptr %10, ptr %22, align 8, !tbaa !30
  store ptr null, ptr %2, align 8, !tbaa !30
  %24 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 3
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = call i32 %25(ptr noundef %1, ptr noundef %10, ptr noundef %3, ptr noundef nonnull %9) #25
  %27 = load ptr, ptr %9, align 8, !tbaa !30
  %28 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef %26, ptr noundef %10, ptr noundef %27, i32 noundef 4708, i32 noundef 0), !range !133
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %21, %30
  %31 = phi ptr [ %33, %30 ], [ %0, %21 ]
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %31, i64 0, i32 91
  %33 = load ptr, ptr %32, align 8, !tbaa !8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %30, !llvm.loop !26

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %31, i64 0, i32 98, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !119
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %120, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %31, i64 0, i32 98
  %41 = load i64, ptr %40, align 8, !tbaa !37
  %42 = getelementptr inbounds %struct.XML_ParserStruct, ptr %31, i64 0, i32 98, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !213
  %44 = icmp eq i64 %41, 0
  %45 = uitofp i64 %41 to float
  %46 = select i1 %44, float 2.200000e+01, float %45
  %47 = select i1 %44, i64 22, i64 %41
  %48 = add i64 %47, %43
  %49 = uitofp i64 %48 to float
  %50 = fdiv float %49, %46
  %51 = load ptr, ptr @stderr, align 8, !tbaa !30
  %52 = fpext float %50 to double
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.330, ptr noundef nonnull %31, i64 noundef %41, i64 noundef %43, double noundef %52, ptr noundef nonnull @.str.336) #29
  br label %120

54:                                               ; preds = %21
  %55 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %55, ptr %23, align 8, !tbaa !30
  switch i32 %26, label %119 [
    i32 42, label %56
    i32 0, label %112
    i32 -2, label %113
    i32 -1, label %116
    i32 -4, label %116
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %58 = load ptr, ptr %57, align 8, !tbaa !179
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %10, ptr %7, align 8, !tbaa !30
  %61 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 13
  %62 = load i8, ptr %61, align 4, !tbaa !210
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load ptr, ptr %11, align 8, !tbaa !202
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %69 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %74

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %72 = load ptr, ptr %71, align 8, !tbaa !73
  %73 = getelementptr inbounds %struct.open_internal_entity, ptr %72, i64 0, i32 1
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi ptr [ %68, %67 ], [ %72, %70 ]
  %76 = phi ptr [ %69, %67 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %78 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %81

81:                                               ; preds = %81, %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %82 = load ptr, ptr %77, align 8, !tbaa !44
  store ptr %82, ptr %8, align 8, !tbaa !30
  %83 = load ptr, ptr %78, align 8, !tbaa !211
  %84 = load ptr, ptr %79, align 8, !tbaa !45
  %85 = call i32 %83(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %55, ptr noundef nonnull %8, ptr noundef %84) #25
  %86 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %86, ptr %76, align 8, !tbaa !30
  %87 = load ptr, ptr %57, align 8, !tbaa !179
  %88 = load ptr, ptr %80, align 8, !tbaa !125
  %89 = load ptr, ptr %77, align 8, !tbaa !44
  %90 = load ptr, ptr %8, align 8, !tbaa !30
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %89 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  call void %87(ptr noundef %88, ptr noundef %89, i32 noundef %94) #25
  %95 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %95, ptr %75, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  %96 = icmp ugt i32 %85, 1
  br i1 %96, label %81, label %104, !llvm.loop !212

97:                                               ; preds = %60
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !125
  %100 = ptrtoint ptr %55 to i64
  %101 = ptrtoint ptr %10 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  call void %58(ptr noundef %99, ptr noundef %10, i32 noundef %103) #25
  br label %104

104:                                              ; preds = %81, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %105 = load ptr, ptr %9, align 8, !tbaa !30
  br label %106

106:                                              ; preds = %104, %56
  %107 = phi ptr [ %105, %104 ], [ %55, %56 ]
  store ptr %107, ptr %2, align 8, !tbaa !30
  store ptr %107, ptr %4, align 8, !tbaa !30
  %108 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %109 = load i32, ptr %108, align 8, !tbaa !115
  %110 = icmp eq i32 %109, 2
  %111 = select i1 %110, i32 35, i32 0
  br label %120

112:                                              ; preds = %54
  store ptr %55, ptr %22, align 8, !tbaa !30
  br label %120

113:                                              ; preds = %54
  %114 = icmp eq i8 %5, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %113
  store ptr %10, ptr %4, align 8, !tbaa !30
  br label %120

116:                                              ; preds = %54, %54
  %117 = icmp eq i8 %5, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %116
  store ptr %10, ptr %4, align 8, !tbaa !30
  br label %120

119:                                              ; preds = %54
  store ptr %55, ptr %22, align 8, !tbaa !30
  br label %120

120:                                              ; preds = %39, %35, %116, %113, %106, %119, %118, %115, %112
  %121 = phi i32 [ 23, %119 ], [ 0, %118 ], [ 0, %115 ], [ 4, %112 ], [ %111, %106 ], [ 6, %113 ], [ 2, %116 ], [ 43, %35 ], [ 43, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @ignoreSectionProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %10 = load i8, ptr %9, align 4, !tbaa !199
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  %13 = call fastcc i32 @doIgnoreSection(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %12), !range !254
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !tbaa !30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @prologProcessor, ptr %19, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %16, ptr %5, align 8, !tbaa !30
  %20 = load ptr, ptr %7, align 8, !tbaa !202
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = call i32 %21(ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %2, ptr noundef nonnull %5) #25
  %23 = load ptr, ptr %7, align 8, !tbaa !202
  %24 = load ptr, ptr %5, align 8, !tbaa !30
  %25 = load i8, ptr %9, align 4, !tbaa !199
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  %28 = call fastcc i32 @doProlog(ptr noundef nonnull %0, ptr noundef %23, ptr noundef nonnull %16, ptr noundef %2, i32 noundef %22, ptr noundef %24, ptr noundef %3, i8 noundef zeroext %27, i8 noundef zeroext 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %29

29:                                               ; preds = %15, %4, %18
  %30 = phi i32 [ %28, %18 ], [ %13, %4 ], [ 0, %15 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expat_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_realloc) #28
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %2, i32 noundef %3)
  br label %105

11:                                               ; preds = %7
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %11 ]
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %14, i64 0, i32 91
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !26

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %1, i64 -8
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = add i64 %20, 8
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %14, i64 0, i32 99
  %23 = load i64, ptr %22, align 8, !tbaa !38
  %24 = icmp ult i64 %23, %21
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void @__assert_fail(ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.1, i32 noundef 957, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_free) #28
  unreachable

26:                                               ; preds = %18
  %27 = sub i64 %23, %21
  store i64 %27, ptr %22, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %14, i64 0, i32 99, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !34
  %30 = icmp ugt i64 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %14, i64 0, i32 99, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !39
  %34 = uitofp i64 %27 to float
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %14, i64 0, i32 98
  %36 = load i64, ptr %35, align 8, !tbaa !37
  %37 = uitofp i64 %36 to float
  %38 = fdiv float %34, %37
  %39 = load ptr, ptr @stderr, align 8, !tbaa !30
  %40 = fpext float %38 to double
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.323, ptr noundef nonnull %14, i64 noundef %36, i32 noundef 45, i64 noundef %21, i64 noundef %27, i64 noundef %33, double noundef %40, i32 noundef %3) #29
  br label %42

42:                                               ; preds = %26, %31
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  tail call void %44(ptr noundef nonnull %19) #25
  br label %105

45:                                               ; preds = %11, %45
  %46 = phi ptr [ %48, %45 ], [ %0, %11 ]
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 91
  %48 = load ptr, ptr %47, align 8, !tbaa !8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %45, !llvm.loop !26

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %1, i64 -8
  %52 = load i64, ptr %51, align 8, !tbaa !29
  %53 = icmp ult i64 %52, %2
  %54 = sub i64 %2, %52
  %55 = sub i64 %52, %2
  %56 = select i1 %53, i64 %54, i64 %55
  br i1 %53, label %57, label %59

57:                                               ; preds = %50
  %58 = tail call fastcc zeroext i1 @expat_heap_increase_tolerable(ptr noundef nonnull %46, i64 noundef %54, i32 noundef %3)
  br i1 %58, label %59, label %105

59:                                               ; preds = %57, %50
  %60 = icmp ult i64 %2, -8
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @__assert_fail(ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.1, i32 noundef 1010, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_realloc) #28
  unreachable

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 3, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !207
  %65 = add nuw i64 %2, 8
  %66 = tail call ptr %64(ptr noundef nonnull %51, i64 noundef %65) #25
  %67 = icmp eq ptr %66, null
  br i1 %67, label %105, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 99
  %70 = load i64, ptr %69, align 8, !tbaa !38
  br i1 %53, label %71, label %77

71:                                               ; preds = %68
  %72 = xor i64 %70, -1
  %73 = icmp ugt i64 %54, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @__assert_fail(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.1, i32 noundef 1023, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_realloc) #28
  unreachable

75:                                               ; preds = %71
  %76 = add i64 %70, %54
  br label %82

77:                                               ; preds = %68
  %78 = icmp ult i64 %70, %55
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  tail call void @__assert_fail(ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.1, i32 noundef 1026, ptr noundef nonnull @__PRETTY_FUNCTION__.expat_realloc) #28
  unreachable

80:                                               ; preds = %77
  %81 = sub i64 %70, %55
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi i64 [ %81, %80 ], [ %76, %75 ]
  store i64 %83, ptr %69, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 99, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !34
  %86 = icmp ugt i64 %85, 1
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 99, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !39
  %90 = icmp ugt i64 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i64 %83, ptr %88, align 8, !tbaa !39
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i64 [ %83, %91 ], [ %89, %87 ]
  %94 = uitofp i64 %83 to float
  %95 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 98
  %96 = load i64, ptr %95, align 8, !tbaa !37
  %97 = uitofp i64 %96 to float
  %98 = fdiv float %94, %97
  %99 = load ptr, ptr @stderr, align 8, !tbaa !30
  %100 = select i1 %53, i32 43, i32 45
  %101 = fpext float %98 to double
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.323, ptr noundef nonnull %46, i64 noundef %96, i32 noundef %100, i64 noundef %56, i64 noundef %83, i64 noundef %93, double noundef %101, i32 noundef %3) #29
  br label %103

103:                                              ; preds = %92, %82
  store i64 %2, ptr %66, align 8, !tbaa !29
  %104 = getelementptr inbounds i8, ptr %66, i64 8
  br label %105

105:                                              ; preds = %103, %57, %62, %42, %9
  %106 = phi ptr [ %10, %9 ], [ null, %42 ], [ %104, %103 ], [ null, %57 ], [ null, %62 ]
  ret ptr %106
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @nextScaffoldPart(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 89
  %9 = load i64, ptr %8, align 8, !tbaa !256
  %10 = icmp ugt i64 %9, 4611686018427387903
  br i1 %10, label %75, label %11

11:                                               ; preds = %7
  %12 = shl nuw i64 %9, 2
  %13 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %12, i32 noundef 8186)
  store ptr %13, ptr %4, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %11
  store i32 0, ptr %13, align 4, !tbaa !33
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !260
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %75, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !289
  %23 = icmp ult i32 %18, %22
  %24 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  br i1 %23, label %44, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = shl nuw i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 5
  %32 = tail call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef nonnull %25, i64 noundef %31, i32 noundef 8215)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %21, align 4, !tbaa !289
  %36 = shl i32 %35, 1
  br label %40

37:                                               ; preds = %26
  %38 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 1024, i32 noundef 8220)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ 32, %37 ]
  %42 = phi ptr [ %32, %34 ], [ %38, %37 ]
  store i32 %41, ptr %21, align 4, !tbaa !289
  store ptr %42, ptr %24, align 8, !tbaa !98
  %43 = load i32, ptr %17, align 8, !tbaa !260
  br label %44

44:                                               ; preds = %20, %40
  %45 = phi ptr [ %42, %40 ], [ %25, %20 ]
  %46 = phi i32 [ %43, %40 ], [ %18, %20 ]
  %47 = add i32 %46, 1
  store i32 %47, ptr %17, align 8, !tbaa !260
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 17
  %50 = load i32, ptr %49, align 4, !tbaa !155
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %4, align 8, !tbaa !97
  %54 = sext i32 %50 to i64
  %55 = getelementptr i32, ptr %53, i64 %54
  %56 = getelementptr i32, ptr %55, i64 -1
  %57 = load i32, ptr %56, align 4, !tbaa !33
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %45, i64 %58, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !290
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %45, i64 %63, i32 6
  store i32 %46, ptr %64, align 4, !tbaa !291
  br label %65

65:                                               ; preds = %62, %52
  %66 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %45, i64 %58, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !269
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %45, i64 %58, i32 3
  store i32 %46, ptr %70, align 8, !tbaa !292
  br label %71

71:                                               ; preds = %69, %65
  store i32 %46, ptr %59, align 4, !tbaa !290
  %72 = add nsw i32 %67, 1
  store i32 %72, ptr %66, align 8, !tbaa !269
  br label %73

73:                                               ; preds = %71, %44
  %74 = getelementptr inbounds %struct.CONTENT_SCAFFOLD, ptr %45, i64 %48, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %74, i8 0, i64 16, i1 false)
  br label %75

75:                                               ; preds = %28, %37, %16, %11, %7, %73
  %76 = phi i32 [ %46, %73 ], [ -1, %7 ], [ -1, %11 ], [ -1, %16 ], [ -1, %37 ], [ -1, %28 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @processEntity(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %3, label %15 [
    i32 0, label %5
    i32 1, label %9
    i32 2, label %12
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @internalEntityProcessor, ptr %6, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 54
  br label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 55
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 56
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 57
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 58
  br label %16

15:                                               ; preds = %4
  unreachable

16:                                               ; preds = %12, %9, %5
  %17 = phi ptr [ %13, %12 ], [ %10, %9 ], [ %7, %5 ]
  %18 = phi ptr [ %14, %12 ], [ %11, %9 ], [ %8, %5 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.open_internal_entity, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  store ptr %23, ptr %18, align 8, !tbaa !30
  br label %27

24:                                               ; preds = %16
  %25 = tail call fastcc ptr @expat_malloc(ptr noundef %0, i64 noundef 48, i32 noundef 6314)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %19, %21 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 8
  store i8 1, ptr %29, align 8, !tbaa !157
  %30 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 9
  store i8 1, ptr %30, align 1, !tbaa !241
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %0, %27 ], [ %34, %31 ]
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %32, i64 0, i32 91
  %34 = load ptr, ptr %33, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %31, !llvm.loop !26

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %32, i64 0, i32 100
  %38 = load i32, ptr %37, align 8, !tbaa !244
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !244
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %32, i64 0, i32 100, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !242
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !242
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %32, i64 0, i32 100, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !245
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = add nuw i32 %44, 1
  store i32 %47, ptr %43, align 8, !tbaa !245
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %44, %36 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %32, i64 0, i32 100, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !122
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %1, align 8, !tbaa !243
  %55 = load ptr, ptr @stderr, align 8, !tbaa !30
  %56 = shl i32 %42, 1
  %57 = add i32 %56, -2
  %58 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 10
  %59 = load i8, ptr %58, align 2, !tbaa !246
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr @.str.100, ptr @.str.99
  %62 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !240
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.345, ptr noundef nonnull %32, i32 noundef %39, i32 noundef %42, i32 noundef %49, i32 noundef %57, ptr noundef nonnull @.str.329, ptr noundef nonnull %61, ptr noundef %54, ptr noundef nonnull @.str.344, i32 noundef %63, i32 noundef 6321) #29
  br label %65

65:                                               ; preds = %48, %53
  %66 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 3
  store i32 0, ptr %66, align 4, !tbaa !239
  %67 = load ptr, ptr %17, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 2
  store ptr %67, ptr %68, align 8, !tbaa !74
  store ptr %28, ptr %17, align 8, !tbaa !30
  %69 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 3
  store ptr %1, ptr %69, align 8, !tbaa !237
  %70 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 6
  store i32 %3, ptr %70, align 8, !tbaa !293
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 60
  %72 = load i32, ptr %71, align 4, !tbaa !113
  %73 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 4
  store i32 %72, ptr %73, align 8, !tbaa !294
  %74 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 5
  store i8 %2, ptr %74, align 4, !tbaa !219
  %75 = icmp eq i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  store i8 1, ptr %77, align 8, !tbaa !116
  br label %78

78:                                               ; preds = %65, %76, %24
  %79 = phi i32 [ 1, %24 ], [ 0, %76 ], [ 0, %65 ]
  ret i32 %79
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @entityTrackingOnOpen(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100
  %11 = load i32, ptr %10, align 8, !tbaa !244
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !244
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !242
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !242
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !245
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = add nuw i32 %17, 1
  store i32 %20, ptr %16, align 8, !tbaa !245
  br label %21

21:                                               ; preds = %9, %19
  %22 = phi i32 [ %17, %9 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !122
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8, !tbaa !243
  %28 = load ptr, ptr @stderr, align 8, !tbaa !30
  %29 = shl i32 %15, 1
  %30 = add i32 %29, -2
  %31 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 10
  %32 = load i8, ptr %31, align 2, !tbaa !246
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.100, ptr @.str.99
  %35 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !240
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.345, ptr noundef nonnull %5, i32 noundef %12, i32 noundef %15, i32 noundef %22, i32 noundef %30, ptr noundef nonnull @.str.329, ptr noundef nonnull %34, ptr noundef %27, ptr noundef nonnull @.str.344, i32 noundef %36, i32 noundef %2) #29
  br label %38

38:                                               ; preds = %21, %26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @entityTrackingOnClose(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !122
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100
  %15 = load ptr, ptr %1, align 8, !tbaa !243
  %16 = load ptr, ptr @stderr, align 8, !tbaa !30
  %17 = load i32, ptr %14, align 8, !tbaa !244
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !242
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !245
  %22 = shl i32 %19, 1
  %23 = add i32 %22, -2
  %24 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 10
  %25 = load i8, ptr %24, align 2, !tbaa !246
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, ptr @.str.100, ptr @.str.99
  %28 = getelementptr inbounds %struct.ENTITY, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !240
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.345, ptr noundef nonnull %5, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef nonnull @.str.329, ptr noundef nonnull %27, ptr noundef %15, ptr noundef nonnull @.str.346, i32 noundef %29, i32 noundef %2) #29
  br label %31

31:                                               ; preds = %9, %13
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 100, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !242
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4, !tbaa !242
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @reportProcessingInstruction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !179
  %15 = icmp eq ptr %14, null
  br i1 %15, label %193, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %2, ptr %7, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 13
  %18 = load i8, ptr %17, align 4, !tbaa !210
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.open_internal_entity, ptr %29, i64 0, i32 1
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %25, %24 ], [ %29, %27 ]
  %33 = phi ptr [ %26, %24 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %35 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %38

38:                                               ; preds = %38, %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %39 = load ptr, ptr %34, align 8, !tbaa !44
  store ptr %39, ptr %8, align 8, !tbaa !30
  %40 = load ptr, ptr %35, align 8, !tbaa !211
  %41 = load ptr, ptr %36, align 8, !tbaa !45
  %42 = call i32 %40(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %8, ptr noundef %41) #25
  %43 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %43, ptr %33, align 8, !tbaa !30
  %44 = load ptr, ptr %13, align 8, !tbaa !179
  %45 = load ptr, ptr %37, align 8, !tbaa !125
  %46 = load ptr, ptr %34, align 8, !tbaa !44
  %47 = load ptr, ptr %8, align 8, !tbaa !30
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %46 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  call void %44(ptr noundef %45, ptr noundef %46, i32 noundef %51) #25
  %52 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %52, ptr %32, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  %53 = icmp ugt i32 %42, 1
  br i1 %53, label %38, label %61, !llvm.loop !212

54:                                               ; preds = %16
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !125
  %57 = ptrtoint ptr %3 to i64
  %58 = ptrtoint ptr %2 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  tail call void %14(ptr noundef %56, ptr noundef %2, i32 noundef %60) #25
  br label %61

61:                                               ; preds = %38, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %193

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 12
  %64 = load i32, ptr %63, align 8, !tbaa !226
  %65 = shl nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !276
  %70 = tail call i32 %69(ptr noundef %1, ptr noundef %67) #25
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %67, i64 %71
  %73 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %67, ptr %6, align 8, !tbaa !30
  %74 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !132
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %77, %62
  %81 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %82 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  br label %83

83:                                               ; preds = %88, %80
  %84 = load ptr, ptr %81, align 8, !tbaa !211
  %85 = load ptr, ptr %82, align 8, !tbaa !131
  %86 = call i32 %84(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %72, ptr noundef nonnull %74, ptr noundef %85) #25
  %87 = icmp ult i32 %86, 2
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %83

91:                                               ; preds = %88, %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %193

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %95 = icmp eq ptr %94, null
  br i1 %95, label %193, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %74, align 8, !tbaa !132
  %98 = load ptr, ptr %82, align 8, !tbaa !131
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %193, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %74, align 8, !tbaa !132
  br label %105

105:                                              ; preds = %96, %103
  %106 = phi ptr [ %104, %103 ], [ %97, %96 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %107, ptr %74, align 8, !tbaa !132
  store i8 0, ptr %106, align 1, !tbaa !5
  %108 = load ptr, ptr %93, align 8, !tbaa !134
  %109 = icmp eq ptr %108, null
  br i1 %109, label %193, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %74, align 8, !tbaa !159
  store ptr %111, ptr %93, align 8, !tbaa !156
  %112 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !295
  %114 = call ptr %113(ptr noundef nonnull %1, ptr noundef %72) #25
  %115 = load i32, ptr %63, align 8, !tbaa !226
  %116 = shl nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 0, %117
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %114, ptr %5, align 8, !tbaa !30
  %120 = load ptr, ptr %74, align 8, !tbaa !132
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122, %110
  br label %126

126:                                              ; preds = %125, %131
  %127 = load ptr, ptr %81, align 8, !tbaa !211
  %128 = load ptr, ptr %82, align 8, !tbaa !131
  %129 = call i32 %127(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %119, ptr noundef nonnull %74, ptr noundef %128) #25
  %130 = icmp ult i32 %129, 2
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %126

134:                                              ; preds = %131, %122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %193

135:                                              ; preds = %126
  %136 = load ptr, ptr %93, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %137 = icmp eq ptr %136, null
  br i1 %137, label %193, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %74, align 8, !tbaa !132
  %140 = load ptr, ptr %82, align 8, !tbaa !131
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %73), !range !133
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %193, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %74, align 8, !tbaa !132
  br label %147

147:                                              ; preds = %138, %145
  %148 = phi ptr [ %146, %145 ], [ %139, %138 ]
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %149, ptr %74, align 8, !tbaa !132
  store i8 0, ptr %148, align 1, !tbaa !5
  %150 = load ptr, ptr %93, align 8, !tbaa !134
  %151 = icmp eq ptr %150, null
  br i1 %151, label %193, label %152

152:                                              ; preds = %147, %155
  %153 = phi ptr [ %156, %155 ], [ %150, %147 ]
  %154 = load i8, ptr %153, align 1, !tbaa !5
  switch i8 %154, label %155 [
    i8 0, label %176
    i8 13, label %157
  ]

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, ptr %153, i64 1
  br label %152

157:                                              ; preds = %152, %170
  %158 = phi i8 [ %173, %170 ], [ %154, %152 ]
  %159 = phi ptr [ %171, %170 ], [ %153, %152 ]
  %160 = phi ptr [ %172, %170 ], [ %153, %152 ]
  %161 = icmp eq i8 %158, 13
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  store i8 10, ptr %160, align 1, !tbaa !5
  %163 = getelementptr inbounds i8, ptr %159, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !5
  %165 = icmp eq i8 %164, 10
  %166 = getelementptr inbounds i8, ptr %159, i64 2
  %167 = select i1 %165, ptr %166, ptr %163
  br label %170

168:                                              ; preds = %157
  %169 = getelementptr inbounds i8, ptr %159, i64 1
  store i8 %158, ptr %160, align 1, !tbaa !5
  br label %170

170:                                              ; preds = %168, %162
  %171 = phi ptr [ %169, %168 ], [ %167, %162 ]
  %172 = getelementptr inbounds i8, ptr %160, i64 1
  %173 = load i8, ptr %171, align 1, !tbaa !5
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %157, !llvm.loop !296

175:                                              ; preds = %170
  store i8 0, ptr %172, align 1, !tbaa !5
  br label %176

176:                                              ; preds = %152, %175
  %177 = load ptr, ptr %9, align 8, !tbaa !175
  %178 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !125
  call void %177(ptr noundef %179, ptr noundef nonnull %108, ptr noundef nonnull %150) #25
  %180 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !85
  %182 = icmp eq ptr %181, null
  %183 = load ptr, ptr %73, align 8, !tbaa !86
  br i1 %182, label %184, label %185

184:                                              ; preds = %176
  store ptr %183, ptr %180, align 8, !tbaa !85
  br label %192

185:                                              ; preds = %176
  %186 = icmp eq ptr %183, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %185, %187
  %188 = phi ptr [ %189, %187 ], [ %181, %185 ]
  %189 = phi ptr [ %190, %187 ], [ %183, %185 ]
  %190 = load ptr, ptr %189, align 8, !tbaa !30
  store ptr %188, ptr %189, align 8, !tbaa !30
  store ptr %189, ptr %180, align 8, !tbaa !85
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %187, !llvm.loop !87

192:                                              ; preds = %187, %184, %185
  store ptr null, ptr %73, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  br label %193

193:                                              ; preds = %142, %134, %135, %100, %91, %92, %147, %105, %12, %61, %192
  %194 = phi i32 [ 1, %192 ], [ 1, %61 ], [ 1, %12 ], [ 0, %105 ], [ 0, %147 ], [ 0, %92 ], [ 0, %91 ], [ 0, %100 ], [ 0, %135 ], [ 0, %134 ], [ 0, %142 ]
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @reportComment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = icmp eq ptr %13, null
  br i1 %14, label %149, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %2, ptr %6, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 13
  %17 = load i8, ptr %16, align 4, !tbaa !210
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %21 = load ptr, ptr %20, align 8, !tbaa !202
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.open_internal_entity, ptr %28, i64 0, i32 1
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %24, %23 ], [ %28, %26 ]
  %32 = phi ptr [ %25, %23 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %34 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  br label %37

37:                                               ; preds = %37, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %38 = load ptr, ptr %33, align 8, !tbaa !44
  store ptr %38, ptr %7, align 8, !tbaa !30
  %39 = load ptr, ptr %34, align 8, !tbaa !211
  %40 = load ptr, ptr %35, align 8, !tbaa !45
  %41 = call i32 %39(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %40) #25
  %42 = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %42, ptr %32, align 8, !tbaa !30
  %43 = load ptr, ptr %12, align 8, !tbaa !179
  %44 = load ptr, ptr %36, align 8, !tbaa !125
  %45 = load ptr, ptr %33, align 8, !tbaa !44
  %46 = load ptr, ptr %7, align 8, !tbaa !30
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %45 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  call void %43(ptr noundef %44, ptr noundef %45, i32 noundef %50) #25
  %51 = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %51, ptr %31, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  %52 = icmp ugt i32 %41, 1
  br i1 %52, label %37, label %60, !llvm.loop !212

53:                                               ; preds = %15
  %54 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !125
  %56 = ptrtoint ptr %3 to i64
  %57 = ptrtoint ptr %2 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  tail call void %13(ptr noundef %55, ptr noundef %2, i32 noundef %59) #25
  br label %60

60:                                               ; preds = %37, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %149

61:                                               ; preds = %4
  %62 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %63 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 12
  %64 = load i32, ptr %63, align 8, !tbaa !226
  %65 = shl nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %2, i64 %66
  %68 = mul nsw i32 %64, 3
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %3, i64 %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %67, ptr %5, align 8, !tbaa !30
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !132
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %62), !range !133
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75, %61
  %79 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  br label %81

81:                                               ; preds = %86, %78
  %82 = load ptr, ptr %79, align 8, !tbaa !211
  %83 = load ptr, ptr %80, align 8, !tbaa !131
  %84 = call i32 %82(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %71, ptr noundef nonnull %72, ptr noundef %83) #25
  %85 = icmp ult i32 %84, 2
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %62), !range !133
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %81

89:                                               ; preds = %86, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %149

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %149, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %72, align 8, !tbaa !132
  %96 = load ptr, ptr %80, align 8, !tbaa !131
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %62), !range !133
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %149, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %72, align 8, !tbaa !132
  br label %103

103:                                              ; preds = %94, %101
  %104 = phi ptr [ %102, %101 ], [ %95, %94 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr %72, align 8, !tbaa !132
  store i8 0, ptr %104, align 1, !tbaa !5
  %106 = load ptr, ptr %91, align 8, !tbaa !134
  %107 = icmp eq ptr %106, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %103, %111
  %109 = phi ptr [ %112, %111 ], [ %106, %103 ]
  %110 = load i8, ptr %109, align 1, !tbaa !5
  switch i8 %110, label %111 [
    i8 0, label %132
    i8 13, label %113
  ]

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  br label %108

113:                                              ; preds = %108, %126
  %114 = phi i8 [ %129, %126 ], [ %110, %108 ]
  %115 = phi ptr [ %127, %126 ], [ %109, %108 ]
  %116 = phi ptr [ %128, %126 ], [ %109, %108 ]
  %117 = icmp eq i8 %114, 13
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  store i8 10, ptr %116, align 1, !tbaa !5
  %119 = getelementptr inbounds i8, ptr %115, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !5
  %121 = icmp eq i8 %120, 10
  %122 = getelementptr inbounds i8, ptr %115, i64 2
  %123 = select i1 %121, ptr %122, ptr %119
  br label %126

124:                                              ; preds = %113
  %125 = getelementptr inbounds i8, ptr %115, i64 1
  store i8 %114, ptr %116, align 1, !tbaa !5
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %123, %118 ]
  %128 = getelementptr inbounds i8, ptr %116, i64 1
  %129 = load i8, ptr %127, align 1, !tbaa !5
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %113, !llvm.loop !296

131:                                              ; preds = %126
  store i8 0, ptr %128, align 1, !tbaa !5
  br label %132

132:                                              ; preds = %108, %131
  %133 = load ptr, ptr %8, align 8, !tbaa !176
  %134 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !125
  call void %133(ptr noundef %135, ptr noundef nonnull %106) #25
  %136 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !85
  %138 = icmp eq ptr %137, null
  %139 = load ptr, ptr %62, align 8, !tbaa !86
  br i1 %138, label %140, label %141

140:                                              ; preds = %132
  store ptr %139, ptr %136, align 8, !tbaa !85
  br label %148

141:                                              ; preds = %132
  %142 = icmp eq ptr %139, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %141, %143
  %144 = phi ptr [ %145, %143 ], [ %137, %141 ]
  %145 = phi ptr [ %146, %143 ], [ %139, %141 ]
  %146 = load ptr, ptr %145, align 8, !tbaa !30
  store ptr %144, ptr %145, align 8, !tbaa !30
  store ptr %145, ptr %136, align 8, !tbaa !85
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %143, !llvm.loop !87

148:                                              ; preds = %143, %140, %141
  store ptr null, ptr %62, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  br label %149

149:                                              ; preds = %98, %89, %90, %103, %11, %60, %148
  %150 = phi i32 [ 1, %148 ], [ 1, %60 ], [ 1, %11 ], [ 0, %103 ], [ 0, %90 ], [ 0, %89 ], [ 0, %98 ]
  ret i32 %150
}

declare i32 @XmlParseXmlDeclNS(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @XmlParseXmlDecl(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @hash(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #18 {
  %3 = alloca %struct.siphash, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 96
  %11 = load i64, ptr %10, align 8, !tbaa.struct !128
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %5, i64 0, i32 96, i32 0, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa.struct !193
  %14 = xor i64 %11, 8317987319222330741
  store i64 %14, ptr %3, align 8, !tbaa !297
  %15 = xor i64 %13, 7237128888997146477
  %16 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 1
  store i64 %15, ptr %16, align 8, !tbaa !299
  %17 = xor i64 %11, 7816392313619706465
  %18 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 2
  store i64 %17, ptr %18, align 8, !tbaa !300
  %19 = xor i64 %13, 8387220255154660723
  %20 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !301
  %21 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 4
  %22 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !302
  %23 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 6
  store i64 0, ptr %23, align 8, !tbaa !303
  %24 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 4, i64 4
  %27 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 4, i64 5
  %28 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 4, i64 6
  %29 = getelementptr inbounds %struct.siphash, ptr %3, i64 0, i32 4, i64 7
  br label %30

30:                                               ; preds = %48, %9
  %31 = phi ptr [ %1, %9 ], [ %46, %48 ]
  %32 = icmp ult ptr %31, %25
  br i1 %32, label %33, label %103

33:                                               ; preds = %30, %37
  %34 = phi ptr [ %38, %37 ], [ %31, %30 ]
  %35 = load ptr, ptr %22, align 8, !tbaa !302
  %36 = icmp ult ptr %35, %22
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = load i8, ptr %34, align 1, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %40, ptr %22, align 8, !tbaa !302
  store i8 %39, ptr %35, align 1, !tbaa !5
  %41 = icmp ult ptr %38, %25
  br i1 %41, label %33, label %42, !llvm.loop !304

42:                                               ; preds = %37
  %43 = load ptr, ptr %22, align 8, !tbaa !302
  br label %44

44:                                               ; preds = %33, %42
  %45 = phi ptr [ %43, %42 ], [ %35, %33 ]
  %46 = phi ptr [ %38, %42 ], [ %34, %33 ]
  %47 = icmp ult ptr %45, %22
  br i1 %47, label %103, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %21, align 8
  %50 = zext i32 %49 to i64
  %51 = load i8, ptr %26, align 4, !tbaa !5
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 32
  %54 = or disjoint i64 %53, %50
  %55 = load i8, ptr %27, align 1, !tbaa !5
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 40
  %58 = or disjoint i64 %54, %57
  %59 = load i8, ptr %28, align 2, !tbaa !5
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 48
  %62 = or disjoint i64 %58, %61
  %63 = load i8, ptr %29, align 1, !tbaa !5
  %64 = zext i8 %63 to i64
  %65 = shl nuw i64 %64, 56
  %66 = or disjoint i64 %62, %65
  %67 = load i64, ptr %20, align 8, !tbaa !301
  %68 = xor i64 %66, %67
  %69 = load i64, ptr %16, align 8, !tbaa !299
  %70 = load i64, ptr %3, align 8, !tbaa !297
  %71 = load i64, ptr %18, align 8, !tbaa !300
  %72 = add i64 %70, %69
  %73 = call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 13)
  %74 = xor i64 %72, %73
  %75 = call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 32)
  %76 = add i64 %68, %71
  %77 = call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 16)
  %78 = xor i64 %76, %77
  %79 = add i64 %78, %75
  %80 = call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 21)
  %81 = xor i64 %79, %80
  %82 = add i64 %74, %76
  %83 = call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 17)
  %84 = xor i64 %82, %83
  %85 = call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 32)
  %86 = add i64 %84, %79
  %87 = call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 13)
  %88 = xor i64 %86, %87
  %89 = call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 32)
  %90 = add i64 %81, %85
  %91 = call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 16)
  %92 = xor i64 %90, %91
  %93 = add i64 %92, %89
  %94 = call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 21)
  %95 = xor i64 %93, %94
  %96 = add i64 %88, %90
  %97 = call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 17)
  %98 = xor i64 %96, %97
  %99 = call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 32)
  store i64 %98, ptr %16, align 8, !tbaa !299
  store i64 %95, ptr %20, align 8, !tbaa !301
  store i64 %99, ptr %18, align 8, !tbaa !300
  %100 = xor i64 %93, %66
  store i64 %100, ptr %3, align 8, !tbaa !297
  store ptr %21, ptr %22, align 8, !tbaa !302
  %101 = load i64, ptr %23, align 8, !tbaa !303
  %102 = add i64 %101, 8
  store i64 %102, ptr %23, align 8, !tbaa !303
  br i1 %36, label %103, label %30, !llvm.loop !305

103:                                              ; preds = %30, %44, %48
  %104 = call fastcc i64 @sip24_final(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret i64 %104
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @sip24_update(ptr noundef returned %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #19 {
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 4
  %8 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 5
  %9 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 6
  %10 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 7
  %11 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %32, %3
  %16 = phi ptr [ %1, %3 ], [ %28, %32 ]
  %17 = icmp ult ptr %16, %4
  br i1 %17, label %18, label %27

18:                                               ; preds = %15, %22
  %19 = phi ptr [ %23, %22 ], [ %16, %15 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !302
  %21 = icmp uge ptr %20, %5
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = load i8, ptr %19, align 1, !tbaa !5
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %25, ptr %5, align 8, !tbaa !302
  store i8 %24, ptr %20, align 1, !tbaa !5
  %26 = icmp ult ptr %23, %4
  br i1 %26, label %18, label %27, !llvm.loop !304

27:                                               ; preds = %18, %22, %15
  %28 = phi ptr [ %16, %15 ], [ %23, %22 ], [ %19, %18 ]
  %29 = phi i1 [ false, %15 ], [ %21, %22 ], [ %21, %18 ]
  %30 = load ptr, ptr %5, align 8, !tbaa !302
  %31 = icmp ult ptr %30, %5
  br i1 %31, label %87, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %6, align 8
  %34 = zext i32 %33 to i64
  %35 = load i8, ptr %7, align 4, !tbaa !5
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 32
  %38 = or disjoint i64 %37, %34
  %39 = load i8, ptr %8, align 1, !tbaa !5
  %40 = zext i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 40
  %42 = or disjoint i64 %38, %41
  %43 = load i8, ptr %9, align 2, !tbaa !5
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 48
  %46 = or disjoint i64 %42, %45
  %47 = load i8, ptr %10, align 1, !tbaa !5
  %48 = zext i8 %47 to i64
  %49 = shl nuw i64 %48, 56
  %50 = or disjoint i64 %46, %49
  %51 = load i64, ptr %11, align 8, !tbaa !301
  %52 = xor i64 %50, %51
  %53 = load i64, ptr %12, align 8, !tbaa !299
  %54 = load i64, ptr %0, align 8, !tbaa !297
  %55 = load i64, ptr %13, align 8, !tbaa !300
  %56 = add i64 %53, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 13)
  %58 = xor i64 %56, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 32)
  %60 = add i64 %52, %55
  %61 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 16)
  %62 = xor i64 %60, %61
  %63 = add i64 %59, %62
  %64 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 21)
  %65 = xor i64 %63, %64
  %66 = add i64 %58, %60
  %67 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 17)
  %68 = xor i64 %66, %67
  %69 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 32)
  %70 = add i64 %68, %63
  %71 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 13)
  %72 = xor i64 %70, %71
  %73 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 32)
  %74 = add i64 %65, %69
  %75 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 16)
  %76 = xor i64 %74, %75
  %77 = add i64 %73, %76
  %78 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 21)
  %79 = xor i64 %77, %78
  %80 = add i64 %72, %74
  %81 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 17)
  %82 = xor i64 %80, %81
  %83 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 32)
  store i64 %82, ptr %12, align 8, !tbaa !299
  store i64 %79, ptr %11, align 8, !tbaa !301
  store i64 %83, ptr %13, align 8, !tbaa !300
  %84 = xor i64 %77, %50
  store i64 %84, ptr %0, align 8, !tbaa !297
  store ptr %6, ptr %5, align 8, !tbaa !302
  %85 = load i64, ptr %14, align 8, !tbaa !303
  %86 = add i64 %85, 8
  store i64 %86, ptr %14, align 8, !tbaa !303
  br i1 %29, label %15, label %87, !llvm.loop !305

87:                                               ; preds = %27, %32
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @sip24_final(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !303
  %11 = add i64 %7, %10
  %12 = shl i64 %11, 56
  %13 = shl i32 %8, 24
  %14 = ashr exact i32 %13, 24
  switch i32 %14, label %61 [
    i32 7, label %15
    i32 6, label %21
    i32 5, label %28
    i32 4, label %35
    i32 3, label %42
    i32 2, label %49
    i32 1, label %56
  ]

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 6
  %17 = load i8, ptr %16, align 2, !tbaa !5
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 48
  %20 = or disjoint i64 %19, %12
  br label %21

21:                                               ; preds = %1, %15
  %22 = phi i64 [ %12, %1 ], [ %20, %15 ]
  %23 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 5
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 40
  %27 = or i64 %26, %22
  br label %28

28:                                               ; preds = %1, %21
  %29 = phi i64 [ %12, %1 ], [ %27, %21 ]
  %30 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 4
  %31 = load i8, ptr %30, align 4, !tbaa !5
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 32
  %34 = or i64 %33, %29
  br label %35

35:                                               ; preds = %1, %28
  %36 = phi i64 [ %12, %1 ], [ %34, %28 ]
  %37 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 24
  %41 = or i64 %40, %36
  br label %42

42:                                               ; preds = %1, %35
  %43 = phi i64 [ %12, %1 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 2
  %45 = load i8, ptr %44, align 2, !tbaa !5
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = or i64 %47, %43
  br label %49

49:                                               ; preds = %1, %42
  %50 = phi i64 [ %12, %1 ], [ %48, %42 ]
  %51 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 4, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 8
  %55 = or i64 %54, %50
  br label %56

56:                                               ; preds = %1, %49
  %57 = phi i64 [ %12, %1 ], [ %55, %49 ]
  %58 = load i8, ptr %4, align 8, !tbaa !5
  %59 = zext i8 %58 to i64
  %60 = or i64 %57, %59
  br label %61

61:                                               ; preds = %1, %56
  %62 = phi i64 [ %12, %1 ], [ %60, %56 ]
  %63 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !301
  %65 = xor i64 %64, %62
  %66 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 1
  %67 = getelementptr inbounds %struct.siphash, ptr %0, i64 0, i32 2
  %68 = load i64, ptr %66, align 8, !tbaa !299
  %69 = load i64, ptr %0, align 8, !tbaa !297
  %70 = load i64, ptr %67, align 8, !tbaa !300
  %71 = add i64 %68, %69
  %72 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 13)
  %73 = xor i64 %71, %72
  %74 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 32)
  %75 = add i64 %65, %70
  %76 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 16)
  %77 = xor i64 %75, %76
  %78 = add i64 %74, %77
  %79 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 21)
  %80 = xor i64 %78, %79
  %81 = add i64 %73, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 17)
  %83 = xor i64 %81, %82
  %84 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 32)
  %85 = add i64 %83, %78
  %86 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 13)
  %87 = xor i64 %85, %86
  %88 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 32)
  %89 = add i64 %80, %84
  %90 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 16)
  %91 = xor i64 %89, %90
  %92 = add i64 %88, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 21)
  %94 = xor i64 %92, %93
  %95 = add i64 %87, %89
  %96 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 17)
  %97 = xor i64 %95, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 32)
  %99 = xor i64 %92, %62
  %100 = xor i64 %98, 255
  %101 = add i64 %97, %99
  %102 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 13)
  %103 = xor i64 %101, %102
  %104 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 32)
  %105 = add i64 %94, %100
  %106 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 16)
  %107 = xor i64 %105, %106
  %108 = add i64 %104, %107
  %109 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 21)
  %110 = xor i64 %108, %109
  %111 = add i64 %103, %105
  %112 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 17)
  %113 = xor i64 %111, %112
  %114 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 32)
  %115 = add i64 %113, %108
  %116 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 13)
  %117 = xor i64 %115, %116
  %118 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 32)
  %119 = add i64 %110, %114
  %120 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 16)
  %121 = xor i64 %119, %120
  %122 = add i64 %118, %121
  %123 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 21)
  %124 = xor i64 %122, %123
  %125 = add i64 %117, %119
  %126 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 17)
  %127 = xor i64 %125, %126
  %128 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 32)
  %129 = add i64 %127, %122
  %130 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 13)
  %131 = xor i64 %129, %130
  %132 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 32)
  %133 = add i64 %124, %128
  %134 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 16)
  %135 = xor i64 %133, %134
  %136 = add i64 %132, %135
  %137 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 21)
  %138 = xor i64 %136, %137
  %139 = add i64 %131, %133
  %140 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 17)
  %141 = xor i64 %139, %140
  %142 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 32)
  %143 = add i64 %141, %136
  %144 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 13)
  %145 = xor i64 %143, %144
  %146 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 32)
  %147 = add i64 %138, %142
  %148 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 16)
  %149 = xor i64 %147, %148
  %150 = add i64 %146, %149
  %151 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 21)
  %152 = xor i64 %150, %151
  %153 = add i64 %145, %147
  %154 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 17)
  %155 = xor i64 %153, %154
  %156 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 32)
  store i64 %155, ptr %66, align 8, !tbaa !299
  store i64 %150, ptr %0, align 8, !tbaa !297
  store i64 %152, ptr %63, align 8, !tbaa !301
  store i64 %156, ptr %67, align 8, !tbaa !300
  %157 = xor i64 %155, %150
  %158 = xor i64 %157, %156
  %159 = xor i64 %158, %152
  ret i64 %159
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc i32 @doContent(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, i8 noundef zeroext %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca ptr, align 8
  %34 = alloca ptr, align 8
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca %struct.TAG_NAME, align 8
  %41 = alloca [4 x i8], align 1
  %42 = alloca i8, align 1
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  store ptr %3, ptr %33, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %48 = load ptr, ptr %47, align 8, !tbaa !202
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %50, label %53

50:                                               ; preds = %8
  %51 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %52 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %57

53:                                               ; preds = %8
  %54 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.open_internal_entity, ptr %55, i64 0, i32 1
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi ptr [ %52, %50 ], [ %56, %53 ]
  %59 = phi ptr [ %51, %50 ], [ %55, %53 ]
  store ptr %3, ptr %59, align 8, !tbaa !30
  %60 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 1
  %61 = icmp eq i8 %6, 0
  %62 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 16
  %63 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 13
  %64 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %66 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 10
  %67 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %69 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %70 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %71 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 19
  %73 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 6
  %74 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 60
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %76 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 12
  %77 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 3
  %78 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 75
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 15
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %81 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 42
  %82 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  %83 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 27
  %84 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 77
  %85 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %86 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  %87 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %89 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %90 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 14
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 81
  %94 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 1
  %95 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 7
  %96 = getelementptr inbounds i8, ptr %36, i64 1
  %97 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 4
  %98 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 4, i32 3
  %99 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 4, i32 2
  %100 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 4, i32 4
  %101 = getelementptr inbounds %struct.HASH_TABLE, ptr %46, i64 0, i32 2
  %102 = getelementptr inbounds %struct.HASH_TABLE, ptr %46, i64 0, i32 1
  %103 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 7
  %104 = getelementptr inbounds %struct.DTD, ptr %46, i64 0, i32 8
  %105 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 31
  %106 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 59
  %107 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 29
  %108 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  br label %109

109:                                              ; preds = %1283, %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #25
  %110 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %110, ptr %34, align 8, !tbaa !30
  %111 = load ptr, ptr %60, align 8, !tbaa !30
  %112 = call i32 %111(ptr noundef %2, ptr noundef %110, ptr noundef %4, ptr noundef nonnull %34) #25
  switch i32 %112, label %116 [
    i32 -3, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %109, %109
  %114 = load ptr, ptr %33, align 8
  %115 = select i1 %61, ptr %4, ptr %114
  br label %119

116:                                              ; preds = %109
  %117 = load ptr, ptr %34, align 8, !tbaa !30
  %118 = load ptr, ptr %33, align 8, !tbaa !30
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi ptr [ %114, %113 ], [ %118, %116 ]
  %121 = phi ptr [ %115, %113 ], [ %117, %116 ]
  %122 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef %112, ptr noundef %120, ptr noundef %121, i32 noundef 3269, i32 noundef %7), !range !133
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %119, %124
  %125 = phi ptr [ %127, %124 ], [ %0, %119 ]
  %126 = getelementptr inbounds %struct.XML_ParserStruct, ptr %125, i64 0, i32 91
  %127 = load ptr, ptr %126, align 8, !tbaa !8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %124, !llvm.loop !26

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.XML_ParserStruct, ptr %125, i64 0, i32 98, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !119
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %1281, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.XML_ParserStruct, ptr %125, i64 0, i32 98
  %135 = load i64, ptr %134, align 8, !tbaa !37
  %136 = getelementptr inbounds %struct.XML_ParserStruct, ptr %125, i64 0, i32 98, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !213
  %138 = icmp eq i64 %135, 0
  %139 = uitofp i64 %135 to float
  %140 = select i1 %138, float 2.200000e+01, float %139
  %141 = select i1 %138, i64 22, i64 %135
  %142 = add i64 %141, %137
  %143 = uitofp i64 %142 to float
  %144 = fdiv float %143, %140
  %145 = load ptr, ptr @stderr, align 8, !tbaa !30
  %146 = fpext float %144 to double
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.330, ptr noundef nonnull %125, i64 noundef %135, i64 noundef %137, double noundef %146, ptr noundef nonnull @.str.336) #29
  br label %1281

148:                                              ; preds = %119
  %149 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %149, ptr %58, align 8, !tbaa !30
  switch i32 %112, label %1229 [
    i32 -3, label %150
    i32 -4, label %203
    i32 0, label %213
    i32 -1, label %214
    i32 -2, label %217
    i32 9, label %220
    i32 2, label %444
    i32 1, label %444
    i32 4, label %596
    i32 3, label %596
    i32 5, label %771
    i32 10, label %928
    i32 12, label %1281
    i32 7, label %979
    i32 8, label %1023
    i32 -5, label %1074
    i32 6, label %1150
    i32 11, label %1221
    i32 13, label %1225
  ]

150:                                              ; preds = %148
  br i1 %61, label %153, label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %152, ptr %5, align 8, !tbaa !30
  br label %1281

153:                                              ; preds = %150
  store ptr %4, ptr %58, align 8, !tbaa !30
  %154 = load ptr, ptr %62, align 8, !tbaa !174
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #25
  store i8 10, ptr %35, align 1, !tbaa !5
  %157 = load ptr, ptr %64, align 8, !tbaa !125
  call void %154(ptr noundef %157, ptr noundef nonnull %35, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #25
  br label %197

158:                                              ; preds = %153
  %159 = load ptr, ptr %68, align 8, !tbaa !179
  %160 = icmp eq ptr %159, null
  br i1 %160, label %197, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31)
  store ptr %162, ptr %31, align 8, !tbaa !30
  %163 = load i8, ptr %63, align 4, !tbaa !210
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %190

165:                                              ; preds = %161
  %166 = load ptr, ptr %47, align 8, !tbaa !202
  %167 = icmp eq ptr %166, %2
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %69, align 8, !tbaa !73
  %170 = getelementptr inbounds %struct.open_internal_entity, ptr %169, i64 0, i32 1
  br label %171

171:                                              ; preds = %165, %168
  %172 = phi ptr [ %169, %168 ], [ %70, %165 ]
  %173 = phi ptr [ %170, %168 ], [ %71, %165 ]
  br label %174

174:                                              ; preds = %174, %171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #25
  %175 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %175, ptr %32, align 8, !tbaa !30
  %176 = load ptr, ptr %66, align 8, !tbaa !211
  %177 = load ptr, ptr %67, align 8, !tbaa !45
  %178 = call i32 %176(ptr noundef nonnull %2, ptr noundef nonnull %31, ptr noundef %4, ptr noundef nonnull %32, ptr noundef %177) #25
  %179 = load ptr, ptr %31, align 8, !tbaa !30
  store ptr %179, ptr %173, align 8, !tbaa !30
  %180 = load ptr, ptr %68, align 8, !tbaa !179
  %181 = load ptr, ptr %64, align 8, !tbaa !125
  %182 = load ptr, ptr %65, align 8, !tbaa !44
  %183 = load ptr, ptr %32, align 8, !tbaa !30
  %184 = ptrtoint ptr %183 to i64
  %185 = ptrtoint ptr %182 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  call void %180(ptr noundef %181, ptr noundef %182, i32 noundef %187) #25
  %188 = load ptr, ptr %31, align 8, !tbaa !30
  store ptr %188, ptr %172, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #25
  %189 = icmp ugt i32 %178, 1
  br i1 %189, label %174, label %196, !llvm.loop !212

190:                                              ; preds = %161
  %191 = load ptr, ptr %64, align 8, !tbaa !125
  %192 = ptrtoint ptr %4 to i64
  %193 = ptrtoint ptr %162 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  call void %159(ptr noundef %191, ptr noundef %162, i32 noundef %195) #25
  br label %196

196:                                              ; preds = %174, %190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31)
  br label %197

197:                                              ; preds = %158, %196, %156
  %198 = icmp eq i32 %1, 0
  br i1 %198, label %1281, label %199

199:                                              ; preds = %197
  %200 = load i32, ptr %74, align 4, !tbaa !113
  %201 = icmp eq i32 %200, %1
  br i1 %201, label %202, label %1281

202:                                              ; preds = %199
  store ptr %4, ptr %5, align 8, !tbaa !30
  br label %1281

203:                                              ; preds = %148
  br i1 %61, label %206, label %204

204:                                              ; preds = %203
  %205 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %205, ptr %5, align 8, !tbaa !30
  br label %1281

206:                                              ; preds = %203
  %207 = icmp sgt i32 %1, 0
  br i1 %207, label %208, label %1281

208:                                              ; preds = %206
  %209 = load i32, ptr %74, align 4, !tbaa !113
  %210 = icmp eq i32 %209, %1
  br i1 %210, label %211, label %1281

211:                                              ; preds = %208
  %212 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %212, ptr %5, align 8, !tbaa !30
  br label %1281

213:                                              ; preds = %148
  store ptr %149, ptr %59, align 8, !tbaa !30
  br label %1281

214:                                              ; preds = %148
  br i1 %61, label %1281, label %215

215:                                              ; preds = %214
  %216 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %216, ptr %5, align 8, !tbaa !30
  br label %1281

217:                                              ; preds = %148
  br i1 %61, label %1281, label %218

218:                                              ; preds = %217
  %219 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %219, ptr %5, align 8, !tbaa !30
  br label %1281

220:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #25
  %221 = load ptr, ptr %95, align 8, !tbaa !250
  %222 = load ptr, ptr %33, align 8, !tbaa !30
  %223 = load i32, ptr %76, align 8, !tbaa !226
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %222, i64 %224
  %226 = sub nsw i64 0, %224
  %227 = getelementptr inbounds i8, ptr %149, i64 %226
  %228 = call i32 %221(ptr noundef nonnull %2, ptr noundef %225, ptr noundef %227) #25
  %229 = trunc i32 %228 to i8
  store i8 %229, ptr %36, align 1, !tbaa !5
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %277, label %231

231:                                              ; preds = %220
  %232 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %36, ptr noundef nonnull %96, i32 noundef 3335, i32 noundef 1), !range !133
  %233 = load ptr, ptr %62, align 8, !tbaa !174
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr %64, align 8, !tbaa !125
  call void %233(ptr noundef %236, ptr noundef nonnull %36, i32 noundef 1) #25
  br label %443

237:                                              ; preds = %231
  %238 = load ptr, ptr %68, align 8, !tbaa !179
  %239 = icmp eq ptr %238, null
  br i1 %239, label %443, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %33, align 8, !tbaa !30
  %242 = load ptr, ptr %34, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29)
  store ptr %241, ptr %29, align 8, !tbaa !30
  %243 = load i8, ptr %63, align 4, !tbaa !210
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %270

245:                                              ; preds = %240
  %246 = load ptr, ptr %47, align 8, !tbaa !202
  %247 = icmp eq ptr %246, %2
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %69, align 8, !tbaa !73
  %250 = getelementptr inbounds %struct.open_internal_entity, ptr %249, i64 0, i32 1
  br label %251

251:                                              ; preds = %245, %248
  %252 = phi ptr [ %249, %248 ], [ %70, %245 ]
  %253 = phi ptr [ %250, %248 ], [ %71, %245 ]
  br label %254

254:                                              ; preds = %254, %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #25
  %255 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %255, ptr %30, align 8, !tbaa !30
  %256 = load ptr, ptr %66, align 8, !tbaa !211
  %257 = load ptr, ptr %67, align 8, !tbaa !45
  %258 = call i32 %256(ptr noundef nonnull %2, ptr noundef nonnull %29, ptr noundef %242, ptr noundef nonnull %30, ptr noundef %257) #25
  %259 = load ptr, ptr %29, align 8, !tbaa !30
  store ptr %259, ptr %253, align 8, !tbaa !30
  %260 = load ptr, ptr %68, align 8, !tbaa !179
  %261 = load ptr, ptr %64, align 8, !tbaa !125
  %262 = load ptr, ptr %65, align 8, !tbaa !44
  %263 = load ptr, ptr %30, align 8, !tbaa !30
  %264 = ptrtoint ptr %263 to i64
  %265 = ptrtoint ptr %262 to i64
  %266 = sub i64 %264, %265
  %267 = trunc i64 %266 to i32
  call void %260(ptr noundef %261, ptr noundef %262, i32 noundef %267) #25
  %268 = load ptr, ptr %29, align 8, !tbaa !30
  store ptr %268, ptr %252, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #25
  %269 = icmp ugt i32 %258, 1
  br i1 %269, label %254, label %276, !llvm.loop !212

270:                                              ; preds = %240
  %271 = load ptr, ptr %64, align 8, !tbaa !125
  %272 = ptrtoint ptr %242 to i64
  %273 = ptrtoint ptr %241 to i64
  %274 = sub i64 %272, %273
  %275 = trunc i64 %274 to i32
  call void %238(ptr noundef %271, ptr noundef %241, i32 noundef %275) #25
  br label %276

276:                                              ; preds = %254, %270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29)
  br label %443

277:                                              ; preds = %220
  %278 = load ptr, ptr %33, align 8, !tbaa !30
  %279 = load i32, ptr %76, align 8, !tbaa !226
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %278, i64 %280
  %282 = load ptr, ptr %34, align 8, !tbaa !30
  %283 = sub nsw i64 0, %280
  %284 = getelementptr inbounds i8, ptr %282, i64 %283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28)
  store ptr %281, ptr %28, align 8, !tbaa !30
  %285 = load ptr, ptr %98, align 8, !tbaa !132
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %277
  %288 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %97), !range !133
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %287, %277
  br label %291

291:                                              ; preds = %290, %296
  %292 = load ptr, ptr %66, align 8, !tbaa !211
  %293 = load ptr, ptr %99, align 8, !tbaa !131
  %294 = call i32 %292(ptr noundef nonnull %2, ptr noundef nonnull %28, ptr noundef %284, ptr noundef nonnull %98, ptr noundef %293) #25
  %295 = icmp ult i32 %294, 2
  br i1 %295, label %300, label %296

296:                                              ; preds = %291
  %297 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %97), !range !133
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %291

299:                                              ; preds = %287, %296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28)
  br label %1285

300:                                              ; preds = %291
  %301 = load ptr, ptr %100, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28)
  %302 = icmp eq ptr %301, null
  br i1 %302, label %1285, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %98, align 8, !tbaa !132
  %305 = load ptr, ptr %99, align 8, !tbaa !131
  %306 = icmp eq ptr %304, %305
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %97), !range !133
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %1285, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %98, align 8, !tbaa !132
  br label %312

312:                                              ; preds = %303, %310
  %313 = phi ptr [ %311, %310 ], [ %304, %303 ]
  %314 = getelementptr inbounds i8, ptr %313, i64 1
  store ptr %314, ptr %98, align 8, !tbaa !132
  store i8 0, ptr %313, align 1, !tbaa !5
  %315 = load ptr, ptr %100, align 8, !tbaa !134
  %316 = icmp eq ptr %315, null
  br i1 %316, label %1285, label %317

317:                                              ; preds = %312
  %318 = load i64, ptr %101, align 8, !tbaa !88
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %361, label %320

320:                                              ; preds = %317
  %321 = call fastcc i64 @hash(ptr noundef %0, ptr noundef nonnull %315)
  %322 = load i64, ptr %101, align 8, !tbaa !88
  %323 = add i64 %322, -1
  %324 = and i64 %323, %321
  %325 = load ptr, ptr %46, align 8, !tbaa !49
  %326 = getelementptr inbounds ptr, ptr %325, i64 %324
  %327 = load ptr, ptr %326, align 8, !tbaa !30
  %328 = icmp eq ptr %327, null
  br i1 %328, label %361, label %329

329:                                              ; preds = %320
  %330 = sub i64 0, %322
  %331 = and i64 %321, %330
  %332 = lshr i64 %323, 2
  br label %333

333:                                              ; preds = %351, %329
  %334 = phi ptr [ %327, %329 ], [ %359, %351 ]
  %335 = phi i64 [ %324, %329 ], [ %357, %351 ]
  %336 = phi i8 [ 0, %329 ], [ %352, %351 ]
  %337 = load ptr, ptr %334, align 8, !tbaa !140
  %338 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %315, ptr noundef nonnull dereferenceable(1) %337) #30
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %361, label %340

340:                                              ; preds = %333
  %341 = icmp eq i8 %336, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %340
  %343 = load i8, ptr %102, align 8, !tbaa !47
  %344 = zext i8 %343 to i64
  %345 = add nuw nsw i64 %344, 4294967295
  %346 = and i64 %345, 4294967295
  %347 = lshr i64 %331, %346
  %348 = and i64 %347, %332
  %349 = trunc i64 %348 to i8
  %350 = or i8 %349, 1
  br label %351

351:                                              ; preds = %342, %340
  %352 = phi i8 [ %336, %340 ], [ %350, %342 ]
  %353 = zext i8 %352 to i64
  %354 = icmp ult i64 %335, %353
  %355 = select i1 %354, i64 %322, i64 0
  %356 = sub i64 %335, %353
  %357 = add i64 %355, %356
  %358 = getelementptr inbounds ptr, ptr %325, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !30
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %333, !llvm.loop !142

361:                                              ; preds = %351, %333, %320, %317
  %362 = phi ptr [ null, %317 ], [ null, %320 ], [ null, %351 ], [ %334, %333 ]
  %363 = load ptr, ptr %100, align 8, !tbaa !161
  store ptr %363, ptr %98, align 8, !tbaa !229
  %364 = load i8, ptr %103, align 1, !tbaa !100
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %361
  %367 = load i8, ptr %104, align 2, !tbaa !101
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %366, %361
  %370 = icmp eq ptr %362, null
  br i1 %370, label %1285, label %371

371:                                              ; preds = %369
  %372 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 11
  %373 = load i8, ptr %372, align 1, !tbaa !251
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %1285, label %388

375:                                              ; preds = %366
  %376 = icmp eq ptr %362, null
  br i1 %376, label %377, label %388

377:                                              ; preds = %375
  %378 = load ptr, ptr %105, align 8, !tbaa !106
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %377
  %381 = load ptr, ptr %64, align 8, !tbaa !125
  call void %378(ptr noundef %381, ptr noundef nonnull %315, i32 noundef 0) #25
  br label %443

382:                                              ; preds = %377
  %383 = load ptr, ptr %68, align 8, !tbaa !179
  %384 = icmp eq ptr %383, null
  br i1 %384, label %443, label %385

385:                                              ; preds = %382
  %386 = load ptr, ptr %33, align 8, !tbaa !30
  %387 = load ptr, ptr %34, align 8, !tbaa !30
  call fastcc void @reportDefault(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %386, ptr noundef %387)
  br label %443

388:                                              ; preds = %375, %371
  %389 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 8
  %390 = load i8, ptr %389, align 8, !tbaa !157
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %1285

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 7
  %394 = load ptr, ptr %393, align 8, !tbaa !249
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %1285

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !238
  %399 = icmp eq ptr %398, null
  br i1 %399, label %418, label %400

400:                                              ; preds = %396
  %401 = load i8, ptr %106, align 8, !tbaa !112
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %415

403:                                              ; preds = %400
  %404 = load ptr, ptr %105, align 8, !tbaa !106
  %405 = icmp eq ptr %404, null
  br i1 %405, label %409, label %406

406:                                              ; preds = %403
  %407 = load ptr, ptr %64, align 8, !tbaa !125
  %408 = load ptr, ptr %362, align 8, !tbaa !243
  call void %404(ptr noundef %407, ptr noundef %408, i32 noundef 0) #25
  br label %443

409:                                              ; preds = %403
  %410 = load ptr, ptr %68, align 8, !tbaa !179
  %411 = icmp eq ptr %410, null
  br i1 %411, label %443, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %33, align 8, !tbaa !30
  %414 = load ptr, ptr %34, align 8, !tbaa !30
  call fastcc void @reportDefault(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %413, ptr noundef %414)
  br label %443

415:                                              ; preds = %400
  %416 = call fastcc i32 @processEntity(ptr noundef nonnull %0, ptr noundef nonnull %362, i8 noundef zeroext 0, i32 noundef 0), !range !236
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %443, label %1285

418:                                              ; preds = %396
  %419 = load ptr, ptr %107, align 8, !tbaa !187
  %420 = icmp eq ptr %419, null
  br i1 %420, label %437, label %421

421:                                              ; preds = %418
  store i8 1, ptr %389, align 8, !tbaa !157
  %422 = call fastcc ptr @getContext(ptr noundef nonnull %0)
  store i8 0, ptr %389, align 8, !tbaa !157
  %423 = icmp eq ptr %422, null
  br i1 %423, label %1285, label %424

424:                                              ; preds = %421
  %425 = load ptr, ptr %107, align 8, !tbaa !187
  %426 = load ptr, ptr %108, align 8, !tbaa !105
  %427 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 5
  %428 = load ptr, ptr %427, align 8, !tbaa !230
  %429 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 4
  %430 = load ptr, ptr %429, align 8, !tbaa !231
  %431 = getelementptr inbounds %struct.ENTITY, ptr %362, i64 0, i32 6
  %432 = load ptr, ptr %431, align 8, !tbaa !228
  %433 = call i32 %425(ptr noundef %426, ptr noundef nonnull %422, ptr noundef %428, ptr noundef %430, ptr noundef %432) #25
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %1285, label %435

435:                                              ; preds = %424
  %436 = load ptr, ptr %91, align 8, !tbaa !156
  store ptr %436, ptr %89, align 8, !tbaa !159
  br label %443

437:                                              ; preds = %418
  %438 = load ptr, ptr %68, align 8, !tbaa !179
  %439 = icmp eq ptr %438, null
  br i1 %439, label %443, label %440

440:                                              ; preds = %437
  %441 = load ptr, ptr %33, align 8, !tbaa !30
  %442 = load ptr, ptr %34, align 8, !tbaa !30
  call fastcc void @reportDefault(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %441, ptr noundef %442)
  br label %443

443:                                              ; preds = %237, %276, %235, %382, %385, %380, %435, %440, %437, %409, %412, %406, %415
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #25
  br label %1268

444:                                              ; preds = %148, %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #25
  %445 = load ptr, ptr %78, align 8, !tbaa !53
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %444
  %448 = load ptr, ptr %445, align 8, !tbaa !65
  store ptr %448, ptr %78, align 8, !tbaa !53
  br label %460

449:                                              ; preds = %444
  %450 = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 88, i32 noundef 3408)
  %451 = icmp eq ptr %450, null
  br i1 %451, label %593, label %452

452:                                              ; preds = %449
  %453 = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 32, i32 noundef 3411)
  %454 = getelementptr inbounds %struct.tag, ptr %450, i64 0, i32 4
  store ptr %453, ptr %454, align 8, !tbaa !5
  %455 = icmp eq ptr %453, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef nonnull %450, i32 noundef 3413)
  br label %593

457:                                              ; preds = %452
  %458 = getelementptr inbounds i8, ptr %453, i64 32
  %459 = getelementptr inbounds %struct.tag, ptr %450, i64 0, i32 5
  store ptr %458, ptr %459, align 8, !tbaa !285
  br label %460

460:                                              ; preds = %457, %447
  %461 = phi ptr [ %445, %447 ], [ %450, %457 ]
  %462 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 6
  store ptr null, ptr %462, align 8, !tbaa !68
  %463 = load ptr, ptr %75, align 8, !tbaa !64
  store ptr %463, ptr %461, align 8, !tbaa !65
  store ptr %461, ptr %75, align 8, !tbaa !64
  %464 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 3
  %465 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 3, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %465, i8 0, i64 16, i1 false)
  %466 = load ptr, ptr %33, align 8, !tbaa !30
  %467 = load i32, ptr %76, align 8, !tbaa !226
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, ptr %466, i64 %468
  %470 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 1
  store ptr %469, ptr %470, align 8, !tbaa !283
  %471 = load ptr, ptr %77, align 8, !tbaa !276
  %472 = call i32 %471(ptr noundef nonnull %2, ptr noundef %469) #25
  %473 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 2
  store i32 %472, ptr %473, align 8, !tbaa !284
  %474 = load i32, ptr %74, align 4, !tbaa !113
  %475 = add nsw i32 %474, 1
  store i32 %475, ptr %74, align 4, !tbaa !113
  %476 = load ptr, ptr %470, align 8, !tbaa !283
  %477 = sext i32 %472 to i64
  %478 = getelementptr inbounds i8, ptr %476, i64 %477
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #25
  store ptr %476, ptr %38, align 8, !tbaa !30
  %479 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 4
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  %481 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 5
  %482 = load ptr, ptr %481, align 8, !tbaa !285
  store ptr %480, ptr %37, align 8, !tbaa !30
  %483 = load ptr, ptr %66, align 8, !tbaa !211
  %484 = getelementptr inbounds i8, ptr %482, i64 -1
  %485 = call i32 %483(ptr noundef nonnull %2, ptr noundef nonnull %38, ptr noundef %478, ptr noundef nonnull %37, ptr noundef nonnull %484) #25
  %486 = load ptr, ptr %37, align 8, !tbaa !30
  %487 = load ptr, ptr %479, align 8, !tbaa !5
  %488 = ptrtoint ptr %486 to i64
  %489 = ptrtoint ptr %487 to i64
  %490 = sub i64 %488, %489
  %491 = load ptr, ptr %38, align 8, !tbaa !30
  %492 = icmp uge ptr %491, %478
  %493 = icmp eq i32 %485, 1
  %494 = select i1 %492, i1 true, i1 %493
  br i1 %494, label %525, label %495

495:                                              ; preds = %460, %507
  %496 = phi i64 [ %519, %507 ], [ %490, %460 ]
  %497 = phi i64 [ %518, %507 ], [ %489, %460 ]
  %498 = phi ptr [ %516, %507 ], [ %487, %460 ]
  %499 = load ptr, ptr %481, align 8, !tbaa !285
  %500 = ptrtoint ptr %499 to i64
  %501 = sub i64 %500, %497
  %502 = icmp slt i64 %501, 0
  br i1 %502, label %524, label %503

503:                                              ; preds = %495
  %504 = shl nuw i64 %501, 1
  %505 = call fastcc ptr @expat_realloc(ptr noundef %0, ptr noundef %498, i64 noundef %504, i32 noundef 3445)
  %506 = icmp eq ptr %505, null
  br i1 %506, label %524, label %507

507:                                              ; preds = %503
  store ptr %505, ptr %479, align 8, !tbaa !5
  %508 = getelementptr inbounds i8, ptr %505, i64 %504
  store ptr %508, ptr %481, align 8, !tbaa !285
  %509 = shl i64 %496, 32
  %510 = ashr exact i64 %509, 32
  %511 = getelementptr inbounds i8, ptr %505, i64 %510
  store ptr %511, ptr %37, align 8, !tbaa !30
  %512 = load ptr, ptr %66, align 8, !tbaa !211
  %513 = getelementptr inbounds i8, ptr %508, i64 -1
  %514 = call i32 %512(ptr noundef nonnull %2, ptr noundef nonnull %38, ptr noundef %478, ptr noundef nonnull %37, ptr noundef nonnull %513) #25
  %515 = load ptr, ptr %37, align 8, !tbaa !30
  %516 = load ptr, ptr %479, align 8, !tbaa !5
  %517 = ptrtoint ptr %515 to i64
  %518 = ptrtoint ptr %516 to i64
  %519 = sub i64 %517, %518
  %520 = load ptr, ptr %38, align 8, !tbaa !30
  %521 = icmp uge ptr %520, %478
  %522 = icmp eq i32 %514, 1
  %523 = select i1 %521, i1 true, i1 %522
  br i1 %523, label %525, label %495

524:                                              ; preds = %495, %503
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #25
  br label %593

525:                                              ; preds = %507, %460
  %526 = phi ptr [ %486, %460 ], [ %515, %507 ]
  %527 = phi ptr [ %487, %460 ], [ %516, %507 ]
  %528 = phi i64 [ %490, %460 ], [ %519, %507 ]
  %529 = trunc i64 %528 to i32
  %530 = getelementptr inbounds %struct.tag, ptr %461, i64 0, i32 3, i32 3
  store i32 %529, ptr %530, align 8, !tbaa !282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #25
  store ptr %527, ptr %464, align 8, !tbaa !286
  store i8 0, ptr %526, align 1, !tbaa !5
  %531 = load ptr, ptr %33, align 8, !tbaa !30
  %532 = call fastcc i32 @storeAtts(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %531, ptr noundef nonnull %464, ptr noundef nonnull %462, i32 noundef %7)
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %593

534:                                              ; preds = %525
  %535 = load ptr, ptr %92, align 8, !tbaa !172
  %536 = icmp eq ptr %535, null
  br i1 %536, label %541, label %537

537:                                              ; preds = %534
  %538 = load ptr, ptr %64, align 8, !tbaa !125
  %539 = load ptr, ptr %464, align 8, !tbaa !286
  %540 = load ptr, ptr %93, align 8, !tbaa !43
  call void %535(ptr noundef %538, ptr noundef %539, ptr noundef %540) #25
  br label %581

541:                                              ; preds = %534
  %542 = load ptr, ptr %68, align 8, !tbaa !179
  %543 = icmp eq ptr %542, null
  br i1 %543, label %581, label %544

544:                                              ; preds = %541
  %545 = load ptr, ptr %33, align 8, !tbaa !30
  %546 = load ptr, ptr %34, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26)
  store ptr %545, ptr %26, align 8, !tbaa !30
  %547 = load i8, ptr %63, align 4, !tbaa !210
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %549, label %574

549:                                              ; preds = %544
  %550 = load ptr, ptr %47, align 8, !tbaa !202
  %551 = icmp eq ptr %550, %2
  br i1 %551, label %555, label %552

552:                                              ; preds = %549
  %553 = load ptr, ptr %69, align 8, !tbaa !73
  %554 = getelementptr inbounds %struct.open_internal_entity, ptr %553, i64 0, i32 1
  br label %555

555:                                              ; preds = %549, %552
  %556 = phi ptr [ %553, %552 ], [ %70, %549 ]
  %557 = phi ptr [ %554, %552 ], [ %71, %549 ]
  br label %558

558:                                              ; preds = %558, %555
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #25
  %559 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %559, ptr %27, align 8, !tbaa !30
  %560 = load ptr, ptr %66, align 8, !tbaa !211
  %561 = load ptr, ptr %67, align 8, !tbaa !45
  %562 = call i32 %560(ptr noundef nonnull %2, ptr noundef nonnull %26, ptr noundef %546, ptr noundef nonnull %27, ptr noundef %561) #25
  %563 = load ptr, ptr %26, align 8, !tbaa !30
  store ptr %563, ptr %557, align 8, !tbaa !30
  %564 = load ptr, ptr %68, align 8, !tbaa !179
  %565 = load ptr, ptr %64, align 8, !tbaa !125
  %566 = load ptr, ptr %65, align 8, !tbaa !44
  %567 = load ptr, ptr %27, align 8, !tbaa !30
  %568 = ptrtoint ptr %567 to i64
  %569 = ptrtoint ptr %566 to i64
  %570 = sub i64 %568, %569
  %571 = trunc i64 %570 to i32
  call void %564(ptr noundef %565, ptr noundef %566, i32 noundef %571) #25
  %572 = load ptr, ptr %26, align 8, !tbaa !30
  store ptr %572, ptr %556, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #25
  %573 = icmp ugt i32 %562, 1
  br i1 %573, label %558, label %580, !llvm.loop !212

574:                                              ; preds = %544
  %575 = load ptr, ptr %64, align 8, !tbaa !125
  %576 = ptrtoint ptr %546 to i64
  %577 = ptrtoint ptr %545 to i64
  %578 = sub i64 %576, %577
  %579 = trunc i64 %578 to i32
  call void %542(ptr noundef %575, ptr noundef %545, i32 noundef %579) #25
  br label %580

580:                                              ; preds = %558, %574
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26)
  br label %581

581:                                              ; preds = %541, %580, %537
  %582 = load ptr, ptr %94, align 8, !tbaa !85
  %583 = icmp eq ptr %582, null
  %584 = load ptr, ptr %88, align 8, !tbaa !86
  br i1 %583, label %585, label %586

585:                                              ; preds = %581
  store ptr %584, ptr %94, align 8, !tbaa !85
  br label %595

586:                                              ; preds = %581
  %587 = icmp eq ptr %584, null
  br i1 %587, label %595, label %588

588:                                              ; preds = %586, %588
  %589 = phi ptr [ %590, %588 ], [ %582, %586 ]
  %590 = phi ptr [ %591, %588 ], [ %584, %586 ]
  %591 = load ptr, ptr %590, align 8, !tbaa !30
  store ptr %589, ptr %590, align 8, !tbaa !30
  store ptr %590, ptr %94, align 8, !tbaa !85
  %592 = icmp eq ptr %591, null
  br i1 %592, label %595, label %588, !llvm.loop !87

593:                                              ; preds = %449, %525, %524, %456
  %594 = phi i32 [ 1, %456 ], [ 1, %524 ], [ 1, %449 ], [ %532, %525 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #25
  br label %1281

595:                                              ; preds = %588, %586, %585
  store ptr null, ptr %88, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #25
  br label %1268

596:                                              ; preds = %148, %148
  %597 = load ptr, ptr %33, align 8, !tbaa !30
  %598 = load i32, ptr %76, align 8, !tbaa !226
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, ptr %597, i64 %599
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #25
  store ptr null, ptr %39, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %40) #25
  %601 = load ptr, ptr %77, align 8, !tbaa !276
  %602 = call i32 %601(ptr noundef nonnull %2, ptr noundef %600) #25
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %600, i64 %603
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25)
  store ptr %600, ptr %25, align 8, !tbaa !30
  %605 = load ptr, ptr %89, align 8, !tbaa !132
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %610

607:                                              ; preds = %596
  %608 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %88), !range !133
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %619, label %610

610:                                              ; preds = %607, %596
  br label %611

611:                                              ; preds = %610, %616
  %612 = load ptr, ptr %66, align 8, !tbaa !211
  %613 = load ptr, ptr %90, align 8, !tbaa !131
  %614 = call i32 %612(ptr noundef nonnull %2, ptr noundef nonnull %25, ptr noundef %604, ptr noundef nonnull %89, ptr noundef %613) #25
  %615 = icmp ult i32 %614, 2
  br i1 %615, label %620, label %616

616:                                              ; preds = %611
  %617 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %88), !range !133
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %619, label %611

619:                                              ; preds = %607, %616
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25)
  br label %757

620:                                              ; preds = %611
  %621 = load ptr, ptr %91, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25)
  %622 = icmp eq ptr %621, null
  br i1 %622, label %757, label %623

623:                                              ; preds = %620
  %624 = load ptr, ptr %89, align 8, !tbaa !132
  %625 = load ptr, ptr %90, align 8, !tbaa !131
  %626 = icmp eq ptr %624, %625
  br i1 %626, label %627, label %632

627:                                              ; preds = %623
  %628 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %88), !range !133
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %757, label %630

630:                                              ; preds = %627
  %631 = load ptr, ptr %89, align 8, !tbaa !132
  br label %632

632:                                              ; preds = %623, %630
  %633 = phi ptr [ %631, %630 ], [ %624, %623 ]
  %634 = getelementptr inbounds i8, ptr %633, i64 1
  store ptr %634, ptr %89, align 8, !tbaa !132
  store i8 0, ptr %633, align 1, !tbaa !5
  %635 = load ptr, ptr %91, align 8, !tbaa !134
  store ptr %635, ptr %40, align 8, !tbaa !306
  %636 = icmp eq ptr %635, null
  br i1 %636, label %757, label %637

637:                                              ; preds = %632
  %638 = load ptr, ptr %89, align 8, !tbaa !159
  store ptr %638, ptr %91, align 8, !tbaa !156
  %639 = load ptr, ptr %33, align 8, !tbaa !30
  %640 = call fastcc i32 @storeAtts(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %639, ptr noundef nonnull %40, ptr noundef nonnull %39, i32 noundef 2)
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %662, label %642

642:                                              ; preds = %637
  %643 = load ptr, ptr %39, align 8, !tbaa !30
  %644 = icmp eq ptr %643, null
  br i1 %644, label %757, label %645

645:                                              ; preds = %642, %653
  %646 = phi ptr [ %655, %653 ], [ %643, %642 ]
  %647 = load ptr, ptr %83, align 8, !tbaa !185
  %648 = icmp eq ptr %647, null
  br i1 %648, label %653, label %649

649:                                              ; preds = %645
  %650 = load ptr, ptr %64, align 8, !tbaa !125
  %651 = load ptr, ptr %646, align 8, !tbaa !307
  %652 = load ptr, ptr %651, align 8, !tbaa !130
  call void %647(ptr noundef %650, ptr noundef %652) #25
  br label %653

653:                                              ; preds = %649, %645
  %654 = getelementptr inbounds %struct.binding, ptr %646, i64 0, i32 1
  %655 = load ptr, ptr %654, align 8, !tbaa !69
  %656 = load ptr, ptr %84, align 8, !tbaa !52
  store ptr %656, ptr %654, align 8, !tbaa !69
  store ptr %646, ptr %84, align 8, !tbaa !52
  %657 = getelementptr inbounds %struct.binding, ptr %646, i64 0, i32 2
  %658 = load ptr, ptr %657, align 8, !tbaa !308
  %659 = load ptr, ptr %646, align 8, !tbaa !307
  %660 = getelementptr inbounds %struct.prefix, ptr %659, i64 0, i32 1
  store ptr %658, ptr %660, align 8, !tbaa !309
  %661 = icmp eq ptr %655, null
  br i1 %661, label %757, label %645, !llvm.loop !310

662:                                              ; preds = %637
  %663 = load ptr, ptr %89, align 8, !tbaa !159
  store ptr %663, ptr %91, align 8, !tbaa !156
  %664 = load ptr, ptr %92, align 8, !tbaa !172
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %669

666:                                              ; preds = %662
  %667 = load ptr, ptr %79, align 8, !tbaa !173
  %668 = icmp eq ptr %667, null
  br i1 %668, label %685, label %681

669:                                              ; preds = %662
  %670 = load ptr, ptr %64, align 8, !tbaa !125
  %671 = load ptr, ptr %40, align 8, !tbaa !306
  %672 = load ptr, ptr %93, align 8, !tbaa !43
  call void %664(ptr noundef %670, ptr noundef %671, ptr noundef %672) #25
  %673 = load ptr, ptr %79, align 8, !tbaa !173
  %674 = icmp eq ptr %673, null
  br i1 %674, label %725, label %675

675:                                              ; preds = %669
  %676 = load ptr, ptr %92, align 8, !tbaa !172
  %677 = icmp eq ptr %676, null
  br i1 %677, label %681, label %678

678:                                              ; preds = %675
  %679 = load ptr, ptr %58, align 8, !tbaa !30
  store ptr %679, ptr %59, align 8, !tbaa !30
  %680 = load ptr, ptr %79, align 8, !tbaa !173
  br label %681

681:                                              ; preds = %666, %675, %678
  %682 = phi ptr [ %673, %675 ], [ %680, %678 ], [ %667, %666 ]
  %683 = load ptr, ptr %64, align 8, !tbaa !125
  %684 = load ptr, ptr %40, align 8, !tbaa !306
  call void %682(ptr noundef %683, ptr noundef %684) #25
  br label %725

685:                                              ; preds = %666
  %686 = load ptr, ptr %68, align 8, !tbaa !179
  %687 = icmp eq ptr %686, null
  br i1 %687, label %725, label %688

688:                                              ; preds = %685
  %689 = load ptr, ptr %33, align 8, !tbaa !30
  %690 = load ptr, ptr %34, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23)
  store ptr %689, ptr %23, align 8, !tbaa !30
  %691 = load i8, ptr %63, align 4, !tbaa !210
  %692 = icmp eq i8 %691, 0
  br i1 %692, label %693, label %718

693:                                              ; preds = %688
  %694 = load ptr, ptr %47, align 8, !tbaa !202
  %695 = icmp eq ptr %694, %2
  br i1 %695, label %699, label %696

696:                                              ; preds = %693
  %697 = load ptr, ptr %69, align 8, !tbaa !73
  %698 = getelementptr inbounds %struct.open_internal_entity, ptr %697, i64 0, i32 1
  br label %699

699:                                              ; preds = %693, %696
  %700 = phi ptr [ %697, %696 ], [ %70, %693 ]
  %701 = phi ptr [ %698, %696 ], [ %71, %693 ]
  br label %702

702:                                              ; preds = %702, %699
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #25
  %703 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %703, ptr %24, align 8, !tbaa !30
  %704 = load ptr, ptr %66, align 8, !tbaa !211
  %705 = load ptr, ptr %67, align 8, !tbaa !45
  %706 = call i32 %704(ptr noundef nonnull %2, ptr noundef nonnull %23, ptr noundef %690, ptr noundef nonnull %24, ptr noundef %705) #25
  %707 = load ptr, ptr %23, align 8, !tbaa !30
  store ptr %707, ptr %701, align 8, !tbaa !30
  %708 = load ptr, ptr %68, align 8, !tbaa !179
  %709 = load ptr, ptr %64, align 8, !tbaa !125
  %710 = load ptr, ptr %65, align 8, !tbaa !44
  %711 = load ptr, ptr %24, align 8, !tbaa !30
  %712 = ptrtoint ptr %711 to i64
  %713 = ptrtoint ptr %710 to i64
  %714 = sub i64 %712, %713
  %715 = trunc i64 %714 to i32
  call void %708(ptr noundef %709, ptr noundef %710, i32 noundef %715) #25
  %716 = load ptr, ptr %23, align 8, !tbaa !30
  store ptr %716, ptr %700, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #25
  %717 = icmp ugt i32 %706, 1
  br i1 %717, label %702, label %724, !llvm.loop !212

718:                                              ; preds = %688
  %719 = load ptr, ptr %64, align 8, !tbaa !125
  %720 = ptrtoint ptr %690 to i64
  %721 = ptrtoint ptr %689 to i64
  %722 = sub i64 %720, %721
  %723 = trunc i64 %722 to i32
  call void %686(ptr noundef %719, ptr noundef %689, i32 noundef %723) #25
  br label %724

724:                                              ; preds = %702, %718
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23)
  br label %725

725:                                              ; preds = %669, %681, %724, %685
  %726 = load ptr, ptr %94, align 8, !tbaa !85
  %727 = icmp eq ptr %726, null
  %728 = load ptr, ptr %88, align 8, !tbaa !86
  br i1 %727, label %729, label %730

729:                                              ; preds = %725
  store ptr %728, ptr %94, align 8, !tbaa !85
  br label %737

730:                                              ; preds = %725
  %731 = icmp eq ptr %728, null
  br i1 %731, label %737, label %732

732:                                              ; preds = %730, %732
  %733 = phi ptr [ %734, %732 ], [ %726, %730 ]
  %734 = phi ptr [ %735, %732 ], [ %728, %730 ]
  %735 = load ptr, ptr %734, align 8, !tbaa !30
  store ptr %733, ptr %734, align 8, !tbaa !30
  store ptr %734, ptr %94, align 8, !tbaa !85
  %736 = icmp eq ptr %735, null
  br i1 %736, label %737, label %732, !llvm.loop !87

737:                                              ; preds = %732, %729, %730
  store ptr null, ptr %88, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  %738 = load ptr, ptr %39, align 8, !tbaa !30
  %739 = icmp eq ptr %738, null
  br i1 %739, label %759, label %740

740:                                              ; preds = %737, %748
  %741 = phi ptr [ %750, %748 ], [ %738, %737 ]
  %742 = load ptr, ptr %83, align 8, !tbaa !185
  %743 = icmp eq ptr %742, null
  br i1 %743, label %748, label %744

744:                                              ; preds = %740
  %745 = load ptr, ptr %64, align 8, !tbaa !125
  %746 = load ptr, ptr %741, align 8, !tbaa !307
  %747 = load ptr, ptr %746, align 8, !tbaa !130
  call void %742(ptr noundef %745, ptr noundef %747) #25
  br label %748

748:                                              ; preds = %744, %740
  %749 = getelementptr inbounds %struct.binding, ptr %741, i64 0, i32 1
  %750 = load ptr, ptr %749, align 8, !tbaa !69
  %751 = load ptr, ptr %84, align 8, !tbaa !52
  store ptr %751, ptr %749, align 8, !tbaa !69
  store ptr %741, ptr %84, align 8, !tbaa !52
  %752 = getelementptr inbounds %struct.binding, ptr %741, i64 0, i32 2
  %753 = load ptr, ptr %752, align 8, !tbaa !308
  %754 = load ptr, ptr %741, align 8, !tbaa !307
  %755 = getelementptr inbounds %struct.prefix, ptr %754, i64 0, i32 1
  store ptr %753, ptr %755, align 8, !tbaa !309
  %756 = icmp eq ptr %750, null
  br i1 %756, label %759, label %740, !llvm.loop !310

757:                                              ; preds = %632, %627, %620, %653, %619, %642
  %758 = phi i32 [ %640, %642 ], [ 1, %619 ], [ %640, %653 ], [ 1, %620 ], [ 1, %627 ], [ 1, %632 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %40) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #25
  br label %1281

759:                                              ; preds = %748, %737
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %40) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #25
  %760 = load i32, ptr %74, align 4, !tbaa !113
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %1268

762:                                              ; preds = %759
  %763 = load i32, ptr %85, align 8, !tbaa !115
  switch i32 %763, label %768 [
    i32 2, label %1274
    i32 3, label %767
    i32 1, label %764
  ]

764:                                              ; preds = %762
  %765 = load i8, ptr %86, align 8, !tbaa !116
  %766 = icmp eq i8 %765, 0
  br i1 %766, label %768, label %767

767:                                              ; preds = %762, %764
  store ptr @epilogProcessor, ptr %87, align 8, !tbaa !103
  br label %1268

768:                                              ; preds = %762, %764
  %769 = load ptr, ptr %34, align 8, !tbaa !30
  %770 = call i32 @epilogProcessor(ptr noundef nonnull %0, ptr noundef %769, ptr noundef %4, ptr noundef %5)
  br label %1281

771:                                              ; preds = %148
  %772 = load i32, ptr %74, align 4, !tbaa !113
  %773 = icmp eq i32 %772, %1
  br i1 %773, label %1281, label %774

774:                                              ; preds = %771
  %775 = load ptr, ptr %75, align 8, !tbaa !64
  %776 = load ptr, ptr %33, align 8, !tbaa !30
  %777 = load i32, ptr %76, align 8, !tbaa !226
  %778 = shl nsw i32 %777, 1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8, ptr %776, i64 %779
  %781 = load ptr, ptr %77, align 8, !tbaa !276
  %782 = call i32 %781(ptr noundef nonnull %2, ptr noundef %780) #25
  %783 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 2
  %784 = load i32, ptr %783, align 8, !tbaa !284
  %785 = icmp eq i32 %782, %784
  br i1 %785, label %786, label %792

786:                                              ; preds = %774
  %787 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 1
  %788 = load ptr, ptr %787, align 8, !tbaa !283
  %789 = sext i32 %782 to i64
  %790 = call i32 @bcmp(ptr %788, ptr %780, i64 %789)
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %786, %774
  store ptr %780, ptr %59, align 8, !tbaa !30
  br label %1281

793:                                              ; preds = %786
  %794 = load ptr, ptr %775, align 8, !tbaa !65
  store ptr %794, ptr %75, align 8, !tbaa !64
  %795 = load ptr, ptr %78, align 8, !tbaa !53
  store ptr %795, ptr %775, align 8, !tbaa !65
  store ptr %775, ptr %78, align 8, !tbaa !53
  %796 = load i32, ptr %74, align 4, !tbaa !113
  %797 = add nsw i32 %796, -1
  store i32 %797, ptr %74, align 4, !tbaa !113
  %798 = load ptr, ptr %79, align 8, !tbaa !173
  %799 = icmp eq ptr %798, null
  br i1 %799, label %852, label %800

800:                                              ; preds = %793
  %801 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 3
  %802 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 3, i32 1
  %803 = load ptr, ptr %802, align 8, !tbaa !287
  %804 = load i8, ptr %80, align 8, !tbaa !60
  %805 = icmp ne i8 %804, 0
  %806 = icmp ne ptr %803, null
  %807 = select i1 %805, i1 %806, i1 false
  br i1 %807, label %808, label %848

808:                                              ; preds = %800
  %809 = load ptr, ptr %801, align 8, !tbaa !286
  %810 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 3, i32 4
  %811 = load i32, ptr %810, align 4, !tbaa !311
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i8, ptr %809, i64 %812
  %814 = load i8, ptr %803, align 1, !tbaa !5
  %815 = icmp eq i8 %814, 0
  br i1 %815, label %824, label %816

816:                                              ; preds = %808, %816
  %817 = phi i8 [ %822, %816 ], [ %814, %808 ]
  %818 = phi ptr [ %821, %816 ], [ %813, %808 ]
  %819 = phi ptr [ %820, %816 ], [ %803, %808 ]
  %820 = getelementptr inbounds i8, ptr %819, i64 1
  %821 = getelementptr inbounds i8, ptr %818, i64 1
  store i8 %817, ptr %818, align 1, !tbaa !5
  %822 = load i8, ptr %820, align 1, !tbaa !5
  %823 = icmp eq i8 %822, 0
  br i1 %823, label %824, label %816, !llvm.loop !312

824:                                              ; preds = %816, %808
  %825 = phi ptr [ %813, %808 ], [ %821, %816 ]
  %826 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 3, i32 2
  %827 = load ptr, ptr %826, align 8, !tbaa !313
  %828 = load i8, ptr %81, align 1, !tbaa !61
  %829 = icmp ne i8 %828, 0
  %830 = icmp ne ptr %827, null
  %831 = select i1 %829, i1 %830, i1 false
  br i1 %831, label %832, label %845

832:                                              ; preds = %824
  %833 = load i8, ptr %82, align 8, !tbaa !59
  store i8 %833, ptr %825, align 1, !tbaa !5
  %834 = getelementptr inbounds i8, ptr %825, i64 1
  %835 = load i8, ptr %827, align 1, !tbaa !5
  %836 = icmp eq i8 %835, 0
  br i1 %836, label %845, label %837

837:                                              ; preds = %832, %837
  %838 = phi i8 [ %843, %837 ], [ %835, %832 ]
  %839 = phi ptr [ %842, %837 ], [ %834, %832 ]
  %840 = phi ptr [ %841, %837 ], [ %827, %832 ]
  %841 = getelementptr inbounds i8, ptr %840, i64 1
  store i8 %838, ptr %839, align 1, !tbaa !5
  %842 = getelementptr inbounds i8, ptr %839, i64 1
  %843 = load i8, ptr %841, align 1, !tbaa !5
  %844 = icmp eq i8 %843, 0
  br i1 %844, label %845, label %837, !llvm.loop !314

845:                                              ; preds = %837, %832, %824
  %846 = phi ptr [ %825, %824 ], [ %834, %832 ], [ %842, %837 ]
  store i8 0, ptr %846, align 1, !tbaa !5
  %847 = load ptr, ptr %79, align 8, !tbaa !173
  br label %848

848:                                              ; preds = %845, %800
  %849 = phi ptr [ %847, %845 ], [ %798, %800 ]
  %850 = load ptr, ptr %64, align 8, !tbaa !125
  %851 = load ptr, ptr %801, align 8, !tbaa !286
  call void %849(ptr noundef %850, ptr noundef %851) #25
  br label %892

852:                                              ; preds = %793
  %853 = load ptr, ptr %68, align 8, !tbaa !179
  %854 = icmp eq ptr %853, null
  br i1 %854, label %892, label %855

855:                                              ; preds = %852
  %856 = load ptr, ptr %33, align 8, !tbaa !30
  %857 = load ptr, ptr %34, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21)
  store ptr %856, ptr %21, align 8, !tbaa !30
  %858 = load i8, ptr %63, align 4, !tbaa !210
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %860, label %885

860:                                              ; preds = %855
  %861 = load ptr, ptr %47, align 8, !tbaa !202
  %862 = icmp eq ptr %861, %2
  br i1 %862, label %866, label %863

863:                                              ; preds = %860
  %864 = load ptr, ptr %69, align 8, !tbaa !73
  %865 = getelementptr inbounds %struct.open_internal_entity, ptr %864, i64 0, i32 1
  br label %866

866:                                              ; preds = %860, %863
  %867 = phi ptr [ %864, %863 ], [ %70, %860 ]
  %868 = phi ptr [ %865, %863 ], [ %71, %860 ]
  br label %869

869:                                              ; preds = %869, %866
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #25
  %870 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %870, ptr %22, align 8, !tbaa !30
  %871 = load ptr, ptr %66, align 8, !tbaa !211
  %872 = load ptr, ptr %67, align 8, !tbaa !45
  %873 = call i32 %871(ptr noundef nonnull %2, ptr noundef nonnull %21, ptr noundef %857, ptr noundef nonnull %22, ptr noundef %872) #25
  %874 = load ptr, ptr %21, align 8, !tbaa !30
  store ptr %874, ptr %868, align 8, !tbaa !30
  %875 = load ptr, ptr %68, align 8, !tbaa !179
  %876 = load ptr, ptr %64, align 8, !tbaa !125
  %877 = load ptr, ptr %65, align 8, !tbaa !44
  %878 = load ptr, ptr %22, align 8, !tbaa !30
  %879 = ptrtoint ptr %878 to i64
  %880 = ptrtoint ptr %877 to i64
  %881 = sub i64 %879, %880
  %882 = trunc i64 %881 to i32
  call void %875(ptr noundef %876, ptr noundef %877, i32 noundef %882) #25
  %883 = load ptr, ptr %21, align 8, !tbaa !30
  store ptr %883, ptr %867, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #25
  %884 = icmp ugt i32 %873, 1
  br i1 %884, label %869, label %891, !llvm.loop !212

885:                                              ; preds = %855
  %886 = load ptr, ptr %64, align 8, !tbaa !125
  %887 = ptrtoint ptr %857 to i64
  %888 = ptrtoint ptr %856 to i64
  %889 = sub i64 %887, %888
  %890 = trunc i64 %889 to i32
  call void %853(ptr noundef %886, ptr noundef %856, i32 noundef %890) #25
  br label %891

891:                                              ; preds = %869, %885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21)
  br label %892

892:                                              ; preds = %852, %891, %848
  %893 = getelementptr inbounds %struct.tag, ptr %775, i64 0, i32 6
  %894 = load ptr, ptr %893, align 8, !tbaa !68
  %895 = icmp eq ptr %894, null
  br i1 %895, label %916, label %896

896:                                              ; preds = %892, %905
  %897 = phi ptr [ %908, %905 ], [ %894, %892 ]
  %898 = load ptr, ptr %83, align 8, !tbaa !185
  %899 = icmp eq ptr %898, null
  br i1 %899, label %905, label %900

900:                                              ; preds = %896
  %901 = load ptr, ptr %64, align 8, !tbaa !125
  %902 = load ptr, ptr %897, align 8, !tbaa !307
  %903 = load ptr, ptr %902, align 8, !tbaa !130
  call void %898(ptr noundef %901, ptr noundef %903) #25
  %904 = load ptr, ptr %893, align 8, !tbaa !68
  br label %905

905:                                              ; preds = %900, %896
  %906 = phi ptr [ %904, %900 ], [ %897, %896 ]
  %907 = getelementptr inbounds %struct.binding, ptr %906, i64 0, i32 1
  %908 = load ptr, ptr %907, align 8, !tbaa !69
  store ptr %908, ptr %893, align 8, !tbaa !68
  %909 = load ptr, ptr %84, align 8, !tbaa !52
  %910 = getelementptr inbounds %struct.binding, ptr %897, i64 0, i32 1
  store ptr %909, ptr %910, align 8, !tbaa !69
  store ptr %897, ptr %84, align 8, !tbaa !52
  %911 = getelementptr inbounds %struct.binding, ptr %897, i64 0, i32 2
  %912 = load ptr, ptr %911, align 8, !tbaa !308
  %913 = load ptr, ptr %897, align 8, !tbaa !307
  %914 = getelementptr inbounds %struct.prefix, ptr %913, i64 0, i32 1
  store ptr %912, ptr %914, align 8, !tbaa !309
  %915 = icmp eq ptr %908, null
  br i1 %915, label %916, label %896, !llvm.loop !315

916:                                              ; preds = %905, %892
  %917 = load i32, ptr %74, align 4, !tbaa !113
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %1268

919:                                              ; preds = %916
  %920 = load i32, ptr %85, align 8, !tbaa !115
  switch i32 %920, label %925 [
    i32 2, label %1274
    i32 3, label %924
    i32 1, label %921
  ]

921:                                              ; preds = %919
  %922 = load i8, ptr %86, align 8, !tbaa !116
  %923 = icmp eq i8 %922, 0
  br i1 %923, label %925, label %924

924:                                              ; preds = %919, %921
  store ptr @epilogProcessor, ptr %87, align 8, !tbaa !103
  br label %1268

925:                                              ; preds = %919, %921
  %926 = load ptr, ptr %34, align 8, !tbaa !30
  %927 = call i32 @epilogProcessor(ptr noundef nonnull %0, ptr noundef %926, ptr noundef %4, ptr noundef %5)
  br label %1281

928:                                              ; preds = %148
  %929 = load ptr, ptr %73, align 8, !tbaa !316
  %930 = load ptr, ptr %33, align 8, !tbaa !30
  %931 = call i32 %929(ptr noundef nonnull %2, ptr noundef %930) #25
  %932 = icmp sgt i32 %931, -1
  br i1 %932, label %933, label %1281

933:                                              ; preds = %928
  %934 = load ptr, ptr %62, align 8, !tbaa !174
  %935 = icmp eq ptr %934, null
  br i1 %935, label %939, label %936

936:                                              ; preds = %933
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #25
  %937 = load ptr, ptr %64, align 8, !tbaa !125
  %938 = call i32 @XmlUtf8Encode(i32 noundef %931, ptr noundef nonnull %41) #25
  call void %934(ptr noundef %937, ptr noundef nonnull %41, i32 noundef %938) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #25
  br label %1268

939:                                              ; preds = %933
  %940 = load ptr, ptr %68, align 8, !tbaa !179
  %941 = icmp eq ptr %940, null
  br i1 %941, label %1268, label %942

942:                                              ; preds = %939
  %943 = load ptr, ptr %33, align 8, !tbaa !30
  %944 = load ptr, ptr %34, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19)
  store ptr %943, ptr %19, align 8, !tbaa !30
  %945 = load i8, ptr %63, align 4, !tbaa !210
  %946 = icmp eq i8 %945, 0
  br i1 %946, label %947, label %972

947:                                              ; preds = %942
  %948 = load ptr, ptr %47, align 8, !tbaa !202
  %949 = icmp eq ptr %948, %2
  br i1 %949, label %953, label %950

950:                                              ; preds = %947
  %951 = load ptr, ptr %69, align 8, !tbaa !73
  %952 = getelementptr inbounds %struct.open_internal_entity, ptr %951, i64 0, i32 1
  br label %953

953:                                              ; preds = %947, %950
  %954 = phi ptr [ %951, %950 ], [ %70, %947 ]
  %955 = phi ptr [ %952, %950 ], [ %71, %947 ]
  br label %956

956:                                              ; preds = %956, %953
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #25
  %957 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %957, ptr %20, align 8, !tbaa !30
  %958 = load ptr, ptr %66, align 8, !tbaa !211
  %959 = load ptr, ptr %67, align 8, !tbaa !45
  %960 = call i32 %958(ptr noundef nonnull %2, ptr noundef nonnull %19, ptr noundef %944, ptr noundef nonnull %20, ptr noundef %959) #25
  %961 = load ptr, ptr %19, align 8, !tbaa !30
  store ptr %961, ptr %955, align 8, !tbaa !30
  %962 = load ptr, ptr %68, align 8, !tbaa !179
  %963 = load ptr, ptr %64, align 8, !tbaa !125
  %964 = load ptr, ptr %65, align 8, !tbaa !44
  %965 = load ptr, ptr %20, align 8, !tbaa !30
  %966 = ptrtoint ptr %965 to i64
  %967 = ptrtoint ptr %964 to i64
  %968 = sub i64 %966, %967
  %969 = trunc i64 %968 to i32
  call void %962(ptr noundef %963, ptr noundef %964, i32 noundef %969) #25
  %970 = load ptr, ptr %19, align 8, !tbaa !30
  store ptr %970, ptr %954, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #25
  %971 = icmp ugt i32 %960, 1
  br i1 %971, label %956, label %978, !llvm.loop !212

972:                                              ; preds = %942
  %973 = load ptr, ptr %64, align 8, !tbaa !125
  %974 = ptrtoint ptr %944 to i64
  %975 = ptrtoint ptr %943 to i64
  %976 = sub i64 %974, %975
  %977 = trunc i64 %976 to i32
  call void %940(ptr noundef %973, ptr noundef %943, i32 noundef %977) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19)
  br label %1268

978:                                              ; preds = %956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19)
  br label %1268

979:                                              ; preds = %148
  %980 = load ptr, ptr %62, align 8, !tbaa !174
  %981 = icmp eq ptr %980, null
  br i1 %981, label %984, label %982

982:                                              ; preds = %979
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %42) #25
  store i8 10, ptr %42, align 1, !tbaa !5
  %983 = load ptr, ptr %64, align 8, !tbaa !125
  call void %980(ptr noundef %983, ptr noundef nonnull %42, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %42) #25
  br label %1268

984:                                              ; preds = %979
  %985 = load ptr, ptr %68, align 8, !tbaa !179
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1268, label %987

987:                                              ; preds = %984
  %988 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17)
  store ptr %988, ptr %17, align 8, !tbaa !30
  %989 = load i8, ptr %63, align 4, !tbaa !210
  %990 = icmp eq i8 %989, 0
  br i1 %990, label %991, label %1016

991:                                              ; preds = %987
  %992 = load ptr, ptr %47, align 8, !tbaa !202
  %993 = icmp eq ptr %992, %2
  br i1 %993, label %997, label %994

994:                                              ; preds = %991
  %995 = load ptr, ptr %69, align 8, !tbaa !73
  %996 = getelementptr inbounds %struct.open_internal_entity, ptr %995, i64 0, i32 1
  br label %997

997:                                              ; preds = %991, %994
  %998 = phi ptr [ %995, %994 ], [ %70, %991 ]
  %999 = phi ptr [ %996, %994 ], [ %71, %991 ]
  br label %1000

1000:                                             ; preds = %1000, %997
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #25
  %1001 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1001, ptr %18, align 8, !tbaa !30
  %1002 = load ptr, ptr %66, align 8, !tbaa !211
  %1003 = load ptr, ptr %67, align 8, !tbaa !45
  %1004 = call i32 %1002(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef %149, ptr noundef nonnull %18, ptr noundef %1003) #25
  %1005 = load ptr, ptr %17, align 8, !tbaa !30
  store ptr %1005, ptr %999, align 8, !tbaa !30
  %1006 = load ptr, ptr %68, align 8, !tbaa !179
  %1007 = load ptr, ptr %64, align 8, !tbaa !125
  %1008 = load ptr, ptr %65, align 8, !tbaa !44
  %1009 = load ptr, ptr %18, align 8, !tbaa !30
  %1010 = ptrtoint ptr %1009 to i64
  %1011 = ptrtoint ptr %1008 to i64
  %1012 = sub i64 %1010, %1011
  %1013 = trunc i64 %1012 to i32
  call void %1006(ptr noundef %1007, ptr noundef %1008, i32 noundef %1013) #25
  %1014 = load ptr, ptr %17, align 8, !tbaa !30
  store ptr %1014, ptr %998, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #25
  %1015 = icmp ugt i32 %1004, 1
  br i1 %1015, label %1000, label %1022, !llvm.loop !212

1016:                                             ; preds = %987
  %1017 = load ptr, ptr %64, align 8, !tbaa !125
  %1018 = ptrtoint ptr %149 to i64
  %1019 = ptrtoint ptr %988 to i64
  %1020 = sub i64 %1018, %1019
  %1021 = trunc i64 %1020 to i32
  call void %985(ptr noundef %1017, ptr noundef %988, i32 noundef %1021) #25
  br label %1022

1022:                                             ; preds = %1000, %1016
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17)
  br label %1268

1023:                                             ; preds = %148
  %1024 = load ptr, ptr %72, align 8, !tbaa !177
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1028, label %1026

1026:                                             ; preds = %1023
  %1027 = load ptr, ptr %64, align 8, !tbaa !125
  call void %1024(ptr noundef %1027) #25
  br label %1067

1028:                                             ; preds = %1023
  %1029 = load ptr, ptr %68, align 8, !tbaa !179
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1067, label %1031

1031:                                             ; preds = %1028
  %1032 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15)
  store ptr %1032, ptr %15, align 8, !tbaa !30
  %1033 = load i8, ptr %63, align 4, !tbaa !210
  %1034 = icmp eq i8 %1033, 0
  br i1 %1034, label %1035, label %1060

1035:                                             ; preds = %1031
  %1036 = load ptr, ptr %47, align 8, !tbaa !202
  %1037 = icmp eq ptr %1036, %2
  br i1 %1037, label %1041, label %1038

1038:                                             ; preds = %1035
  %1039 = load ptr, ptr %69, align 8, !tbaa !73
  %1040 = getelementptr inbounds %struct.open_internal_entity, ptr %1039, i64 0, i32 1
  br label %1041

1041:                                             ; preds = %1035, %1038
  %1042 = phi ptr [ %1039, %1038 ], [ %70, %1035 ]
  %1043 = phi ptr [ %1040, %1038 ], [ %71, %1035 ]
  br label %1044

1044:                                             ; preds = %1044, %1041
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #25
  %1045 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1045, ptr %16, align 8, !tbaa !30
  %1046 = load ptr, ptr %66, align 8, !tbaa !211
  %1047 = load ptr, ptr %67, align 8, !tbaa !45
  %1048 = call i32 %1046(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %149, ptr noundef nonnull %16, ptr noundef %1047) #25
  %1049 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %1049, ptr %1043, align 8, !tbaa !30
  %1050 = load ptr, ptr %68, align 8, !tbaa !179
  %1051 = load ptr, ptr %64, align 8, !tbaa !125
  %1052 = load ptr, ptr %65, align 8, !tbaa !44
  %1053 = load ptr, ptr %16, align 8, !tbaa !30
  %1054 = ptrtoint ptr %1053 to i64
  %1055 = ptrtoint ptr %1052 to i64
  %1056 = sub i64 %1054, %1055
  %1057 = trunc i64 %1056 to i32
  call void %1050(ptr noundef %1051, ptr noundef %1052, i32 noundef %1057) #25
  %1058 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %1058, ptr %1042, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #25
  %1059 = icmp ugt i32 %1048, 1
  br i1 %1059, label %1044, label %1066, !llvm.loop !212

1060:                                             ; preds = %1031
  %1061 = load ptr, ptr %64, align 8, !tbaa !125
  %1062 = ptrtoint ptr %149 to i64
  %1063 = ptrtoint ptr %1032 to i64
  %1064 = sub i64 %1062, %1063
  %1065 = trunc i64 %1064 to i32
  call void %1029(ptr noundef %1061, ptr noundef %1032, i32 noundef %1065) #25
  br label %1066

1066:                                             ; preds = %1044, %1060
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15)
  br label %1067

1067:                                             ; preds = %1028, %1066, %1026
  %1068 = call fastcc i32 @doCdataSection(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %34, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7)
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1281

1070:                                             ; preds = %1067
  %1071 = load ptr, ptr %34, align 8, !tbaa !30
  %1072 = icmp eq ptr %1071, null
  br i1 %1072, label %1073, label %1268

1073:                                             ; preds = %1070
  store ptr @cdataSectionProcessor, ptr %87, align 8, !tbaa !103
  br label %1281

1074:                                             ; preds = %148
  br i1 %61, label %1077, label %1075

1075:                                             ; preds = %1074
  %1076 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %1076, ptr %5, align 8, !tbaa !30
  br label %1281

1077:                                             ; preds = %1074
  %1078 = load ptr, ptr %62, align 8, !tbaa !174
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1103, label %1080

1080:                                             ; preds = %1077
  %1081 = load i8, ptr %63, align 4, !tbaa !210
  %1082 = icmp eq i8 %1081, 0
  br i1 %1082, label %1083, label %1096

1083:                                             ; preds = %1080
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #25
  %1084 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1084, ptr %43, align 8, !tbaa !30
  %1085 = load ptr, ptr %66, align 8, !tbaa !211
  %1086 = load ptr, ptr %67, align 8, !tbaa !45
  %1087 = call i32 %1085(ptr noundef nonnull %2, ptr noundef nonnull %33, ptr noundef %4, ptr noundef nonnull %43, ptr noundef %1086) #25
  %1088 = load ptr, ptr %62, align 8, !tbaa !174
  %1089 = load ptr, ptr %64, align 8, !tbaa !125
  %1090 = load ptr, ptr %65, align 8, !tbaa !44
  %1091 = load ptr, ptr %43, align 8, !tbaa !30
  %1092 = ptrtoint ptr %1091 to i64
  %1093 = ptrtoint ptr %1090 to i64
  %1094 = sub i64 %1092, %1093
  %1095 = trunc i64 %1094 to i32
  call void %1088(ptr noundef %1089, ptr noundef %1090, i32 noundef %1095) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #25
  br label %1142

1096:                                             ; preds = %1080
  %1097 = load ptr, ptr %64, align 8, !tbaa !125
  %1098 = load ptr, ptr %33, align 8, !tbaa !30
  %1099 = ptrtoint ptr %4 to i64
  %1100 = ptrtoint ptr %1098 to i64
  %1101 = sub i64 %1099, %1100
  %1102 = trunc i64 %1101 to i32
  call void %1078(ptr noundef %1097, ptr noundef %1098, i32 noundef %1102) #25
  br label %1142

1103:                                             ; preds = %1077
  %1104 = load ptr, ptr %68, align 8, !tbaa !179
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1142, label %1106

1106:                                             ; preds = %1103
  %1107 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13)
  store ptr %1107, ptr %13, align 8, !tbaa !30
  %1108 = load i8, ptr %63, align 4, !tbaa !210
  %1109 = icmp eq i8 %1108, 0
  br i1 %1109, label %1110, label %1135

1110:                                             ; preds = %1106
  %1111 = load ptr, ptr %47, align 8, !tbaa !202
  %1112 = icmp eq ptr %1111, %2
  br i1 %1112, label %1116, label %1113

1113:                                             ; preds = %1110
  %1114 = load ptr, ptr %69, align 8, !tbaa !73
  %1115 = getelementptr inbounds %struct.open_internal_entity, ptr %1114, i64 0, i32 1
  br label %1116

1116:                                             ; preds = %1110, %1113
  %1117 = phi ptr [ %1114, %1113 ], [ %70, %1110 ]
  %1118 = phi ptr [ %1115, %1113 ], [ %71, %1110 ]
  br label %1119

1119:                                             ; preds = %1119, %1116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #25
  %1120 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1120, ptr %14, align 8, !tbaa !30
  %1121 = load ptr, ptr %66, align 8, !tbaa !211
  %1122 = load ptr, ptr %67, align 8, !tbaa !45
  %1123 = call i32 %1121(ptr noundef nonnull %2, ptr noundef nonnull %13, ptr noundef %4, ptr noundef nonnull %14, ptr noundef %1122) #25
  %1124 = load ptr, ptr %13, align 8, !tbaa !30
  store ptr %1124, ptr %1118, align 8, !tbaa !30
  %1125 = load ptr, ptr %68, align 8, !tbaa !179
  %1126 = load ptr, ptr %64, align 8, !tbaa !125
  %1127 = load ptr, ptr %65, align 8, !tbaa !44
  %1128 = load ptr, ptr %14, align 8, !tbaa !30
  %1129 = ptrtoint ptr %1128 to i64
  %1130 = ptrtoint ptr %1127 to i64
  %1131 = sub i64 %1129, %1130
  %1132 = trunc i64 %1131 to i32
  call void %1125(ptr noundef %1126, ptr noundef %1127, i32 noundef %1132) #25
  %1133 = load ptr, ptr %13, align 8, !tbaa !30
  store ptr %1133, ptr %1117, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #25
  %1134 = icmp ugt i32 %1123, 1
  br i1 %1134, label %1119, label %1141, !llvm.loop !212

1135:                                             ; preds = %1106
  %1136 = load ptr, ptr %64, align 8, !tbaa !125
  %1137 = ptrtoint ptr %4 to i64
  %1138 = ptrtoint ptr %1107 to i64
  %1139 = sub i64 %1137, %1138
  %1140 = trunc i64 %1139 to i32
  call void %1104(ptr noundef %1136, ptr noundef %1107, i32 noundef %1140) #25
  br label %1141

1141:                                             ; preds = %1119, %1135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  br label %1142

1142:                                             ; preds = %1103, %1141, %1083, %1096
  %1143 = icmp eq i32 %1, 0
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1142
  store ptr %4, ptr %59, align 8, !tbaa !30
  br label %1281

1145:                                             ; preds = %1142
  %1146 = load i32, ptr %74, align 4, !tbaa !113
  %1147 = icmp eq i32 %1146, %1
  br i1 %1147, label %1149, label %1148

1148:                                             ; preds = %1145
  store ptr %4, ptr %59, align 8, !tbaa !30
  br label %1281

1149:                                             ; preds = %1145
  store ptr %4, ptr %5, align 8, !tbaa !30
  br label %1281

1150:                                             ; preds = %148
  %1151 = load ptr, ptr %62, align 8, !tbaa !174
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %1182, label %1153

1153:                                             ; preds = %1150
  %1154 = load i8, ptr %63, align 4, !tbaa !210
  %1155 = icmp eq i8 %1154, 0
  br i1 %1155, label %1156, label %1175

1156:                                             ; preds = %1153, %1172
  %1157 = phi ptr [ %1174, %1172 ], [ %149, %1153 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #25
  %1158 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1158, ptr %44, align 8, !tbaa !30
  %1159 = load ptr, ptr %66, align 8, !tbaa !211
  %1160 = load ptr, ptr %67, align 8, !tbaa !45
  %1161 = call i32 %1159(ptr noundef nonnull %2, ptr noundef nonnull %33, ptr noundef %1157, ptr noundef nonnull %44, ptr noundef %1160) #25
  %1162 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %1162, ptr %58, align 8, !tbaa !30
  %1163 = load ptr, ptr %64, align 8, !tbaa !125
  %1164 = load ptr, ptr %65, align 8, !tbaa !44
  %1165 = load ptr, ptr %44, align 8, !tbaa !30
  %1166 = ptrtoint ptr %1165 to i64
  %1167 = ptrtoint ptr %1164 to i64
  %1168 = sub i64 %1166, %1167
  %1169 = trunc i64 %1168 to i32
  call void %1151(ptr noundef %1163, ptr noundef %1164, i32 noundef %1169) #25
  %1170 = icmp ult i32 %1161, 2
  br i1 %1170, label %1171, label %1172

1171:                                             ; preds = %1156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #25
  br label %1268

1172:                                             ; preds = %1156
  %1173 = load ptr, ptr %33, align 8, !tbaa !30
  store ptr %1173, ptr %59, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #25
  %1174 = load ptr, ptr %34, align 8, !tbaa !30
  br label %1156

1175:                                             ; preds = %1153
  %1176 = load ptr, ptr %64, align 8, !tbaa !125
  %1177 = load ptr, ptr %33, align 8, !tbaa !30
  %1178 = ptrtoint ptr %149 to i64
  %1179 = ptrtoint ptr %1177 to i64
  %1180 = sub i64 %1178, %1179
  %1181 = trunc i64 %1180 to i32
  call void %1151(ptr noundef %1176, ptr noundef %1177, i32 noundef %1181) #25
  br label %1268

1182:                                             ; preds = %1150
  %1183 = load ptr, ptr %68, align 8, !tbaa !179
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1268, label %1185

1185:                                             ; preds = %1182
  %1186 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11)
  store ptr %1186, ptr %11, align 8, !tbaa !30
  %1187 = load i8, ptr %63, align 4, !tbaa !210
  %1188 = icmp eq i8 %1187, 0
  br i1 %1188, label %1189, label %1214

1189:                                             ; preds = %1185
  %1190 = load ptr, ptr %47, align 8, !tbaa !202
  %1191 = icmp eq ptr %1190, %2
  br i1 %1191, label %1195, label %1192

1192:                                             ; preds = %1189
  %1193 = load ptr, ptr %69, align 8, !tbaa !73
  %1194 = getelementptr inbounds %struct.open_internal_entity, ptr %1193, i64 0, i32 1
  br label %1195

1195:                                             ; preds = %1189, %1192
  %1196 = phi ptr [ %1193, %1192 ], [ %70, %1189 ]
  %1197 = phi ptr [ %1194, %1192 ], [ %71, %1189 ]
  br label %1198

1198:                                             ; preds = %1198, %1195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  %1199 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1199, ptr %12, align 8, !tbaa !30
  %1200 = load ptr, ptr %66, align 8, !tbaa !211
  %1201 = load ptr, ptr %67, align 8, !tbaa !45
  %1202 = call i32 %1200(ptr noundef nonnull %2, ptr noundef nonnull %11, ptr noundef %149, ptr noundef nonnull %12, ptr noundef %1201) #25
  %1203 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %1203, ptr %1197, align 8, !tbaa !30
  %1204 = load ptr, ptr %68, align 8, !tbaa !179
  %1205 = load ptr, ptr %64, align 8, !tbaa !125
  %1206 = load ptr, ptr %65, align 8, !tbaa !44
  %1207 = load ptr, ptr %12, align 8, !tbaa !30
  %1208 = ptrtoint ptr %1207 to i64
  %1209 = ptrtoint ptr %1206 to i64
  %1210 = sub i64 %1208, %1209
  %1211 = trunc i64 %1210 to i32
  call void %1204(ptr noundef %1205, ptr noundef %1206, i32 noundef %1211) #25
  %1212 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %1212, ptr %1196, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  %1213 = icmp ugt i32 %1202, 1
  br i1 %1213, label %1198, label %1220, !llvm.loop !212

1214:                                             ; preds = %1185
  %1215 = load ptr, ptr %64, align 8, !tbaa !125
  %1216 = ptrtoint ptr %149 to i64
  %1217 = ptrtoint ptr %1186 to i64
  %1218 = sub i64 %1216, %1217
  %1219 = trunc i64 %1218 to i32
  call void %1183(ptr noundef %1215, ptr noundef %1186, i32 noundef %1219) #25
  br label %1220

1220:                                             ; preds = %1198, %1214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11)
  br label %1268

1221:                                             ; preds = %148
  %1222 = load ptr, ptr %33, align 8, !tbaa !30
  %1223 = call fastcc i32 @reportProcessingInstruction(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1222, ptr noundef %149), !range !236
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1281, label %1268

1225:                                             ; preds = %148
  %1226 = load ptr, ptr %33, align 8, !tbaa !30
  %1227 = call fastcc i32 @reportComment(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1226, ptr noundef %149), !range !236
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1281, label %1268

1229:                                             ; preds = %148
  %1230 = load ptr, ptr %68, align 8, !tbaa !179
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1268, label %1232

1232:                                             ; preds = %1229
  %1233 = load ptr, ptr %33, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store ptr %1233, ptr %9, align 8, !tbaa !30
  %1234 = load i8, ptr %63, align 4, !tbaa !210
  %1235 = icmp eq i8 %1234, 0
  br i1 %1235, label %1236, label %1261

1236:                                             ; preds = %1232
  %1237 = load ptr, ptr %47, align 8, !tbaa !202
  %1238 = icmp eq ptr %1237, %2
  br i1 %1238, label %1242, label %1239

1239:                                             ; preds = %1236
  %1240 = load ptr, ptr %69, align 8, !tbaa !73
  %1241 = getelementptr inbounds %struct.open_internal_entity, ptr %1240, i64 0, i32 1
  br label %1242

1242:                                             ; preds = %1236, %1239
  %1243 = phi ptr [ %1240, %1239 ], [ %70, %1236 ]
  %1244 = phi ptr [ %1241, %1239 ], [ %71, %1236 ]
  br label %1245

1245:                                             ; preds = %1245, %1242
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  %1246 = load ptr, ptr %65, align 8, !tbaa !44
  store ptr %1246, ptr %10, align 8, !tbaa !30
  %1247 = load ptr, ptr %66, align 8, !tbaa !211
  %1248 = load ptr, ptr %67, align 8, !tbaa !45
  %1249 = call i32 %1247(ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef %149, ptr noundef nonnull %10, ptr noundef %1248) #25
  %1250 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %1250, ptr %1244, align 8, !tbaa !30
  %1251 = load ptr, ptr %68, align 8, !tbaa !179
  %1252 = load ptr, ptr %64, align 8, !tbaa !125
  %1253 = load ptr, ptr %65, align 8, !tbaa !44
  %1254 = load ptr, ptr %10, align 8, !tbaa !30
  %1255 = ptrtoint ptr %1254 to i64
  %1256 = ptrtoint ptr %1253 to i64
  %1257 = sub i64 %1255, %1256
  %1258 = trunc i64 %1257 to i32
  call void %1251(ptr noundef %1252, ptr noundef %1253, i32 noundef %1258) #25
  %1259 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %1259, ptr %1243, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  %1260 = icmp ugt i32 %1249, 1
  br i1 %1260, label %1245, label %1267, !llvm.loop !212

1261:                                             ; preds = %1232
  %1262 = load ptr, ptr %64, align 8, !tbaa !125
  %1263 = ptrtoint ptr %149 to i64
  %1264 = ptrtoint ptr %1233 to i64
  %1265 = sub i64 %1263, %1264
  %1266 = trunc i64 %1265 to i32
  call void %1230(ptr noundef %1262, ptr noundef %1233, i32 noundef %1266) #25
  br label %1267

1267:                                             ; preds = %1245, %1261
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  br label %1268

1268:                                             ; preds = %978, %939, %936, %916, %924, %1171, %1070, %972, %595, %443, %1175, %1220, %1182, %1229, %1267, %1225, %1221, %982, %1022, %984, %759, %767
  %1269 = load i32, ptr %85, align 8, !tbaa !115
  switch i32 %1269, label %1270 [
    i32 3, label %1272
    i32 2, label %1274
    i32 1, label %1276
  ]

1270:                                             ; preds = %1268
  %1271 = load ptr, ptr %34, align 8, !tbaa !30
  br label %1283

1272:                                             ; preds = %1268
  %1273 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %1273, ptr %59, align 8, !tbaa !30
  store ptr %1273, ptr %5, align 8, !tbaa !30
  br label %1281

1274:                                             ; preds = %762, %919, %1268
  %1275 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %1275, ptr %59, align 8, !tbaa !30
  br label %1281

1276:                                             ; preds = %1268
  %1277 = load i8, ptr %86, align 8, !tbaa !116
  %1278 = icmp eq i8 %1277, 0
  %1279 = load ptr, ptr %34, align 8, !tbaa !30
  br i1 %1278, label %1283, label %1280

1280:                                             ; preds = %1276
  store ptr %1279, ptr %5, align 8, !tbaa !30
  br label %1281

1281:                                             ; preds = %771, %148, %1221, %1225, %928, %1067, %1280, %1274, %1272, %1075, %1144, %1148, %1149, %768, %218, %215, %213, %204, %211, %151, %202, %197, %199, %208, %206, %214, %217, %129, %133, %593, %757, %925, %792, %1073
  %1282 = phi i32 [ %927, %925 ], [ 7, %792 ], [ %758, %757 ], [ %594, %593 ], [ 43, %133 ], [ 43, %129 ], [ 6, %217 ], [ 5, %214 ], [ 3, %206 ], [ 13, %208 ], [ 13, %199 ], [ 3, %197 ], [ 0, %202 ], [ 0, %151 ], [ 0, %211 ], [ 0, %204 ], [ 4, %213 ], [ 0, %215 ], [ 0, %218 ], [ %770, %768 ], [ 0, %1149 ], [ 13, %1148 ], [ 3, %1144 ], [ 0, %1075 ], [ 0, %1272 ], [ 35, %1274 ], [ 0, %1280 ], [ 0, %1073 ], [ %1068, %1067 ], [ 14, %928 ], [ 13, %771 ], [ 17, %148 ], [ 1, %1221 ], [ 1, %1225 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #25
  br label %1287

1283:                                             ; preds = %1276, %1270
  %1284 = phi ptr [ %1271, %1270 ], [ %1279, %1276 ]
  store ptr %1284, ptr %33, align 8, !tbaa !30
  store ptr %1284, ptr %59, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #25
  br label %109

1285:                                             ; preds = %415, %312, %369, %371, %388, %392, %300, %307, %421, %424, %299
  %1286 = phi i32 [ 1, %299 ], [ 1, %421 ], [ 21, %424 ], [ 1, %307 ], [ 1, %300 ], [ 15, %392 ], [ 12, %388 ], [ 24, %371 ], [ 11, %369 ], [ 1, %312 ], [ 1, %415 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #25
  br label %1287

1287:                                             ; preds = %1285, %1281
  %1288 = phi i32 [ %1282, %1281 ], [ %1286, %1285 ]
  ret i32 %1288
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getContext(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 11, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !317
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %207, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %9, align 8, !tbaa !132
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi ptr [ %18, %17 ], [ %10, %7 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %9, align 8, !tbaa !132
  store i8 61, ptr %20, align 1, !tbaa !5
  %22 = load ptr, ptr %4, align 8, !tbaa !317
  %23 = getelementptr inbounds %struct.binding, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !318
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  %26 = load i8, ptr %25, align 8, !tbaa !59
  %27 = icmp ne i8 %26, 0
  %28 = sext i1 %27 to i32
  %29 = add nsw i32 %24, %28
  %30 = getelementptr inbounds %struct.binding, ptr %22, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !165
  %32 = sext i32 %29 to i64
  br label %33

33:                                               ; preds = %40, %19
  %34 = load ptr, ptr %11, align 8, !tbaa !131
  %35 = load ptr, ptr %9, align 8, !tbaa !132
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = icmp ult i64 %38, %32
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %8), !range !133
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %207, label %33

43:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %31, i64 %32, i1 false)
  %44 = load ptr, ptr %9, align 8, !tbaa !132
  %45 = getelementptr inbounds i8, ptr %44, i64 %32
  store ptr %45, ptr %9, align 8, !tbaa !132
  br label %46

46:                                               ; preds = %43, %1
  %47 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.DTD, ptr %3, i64 0, i32 3, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !88
  %53 = getelementptr inbounds ptr, ptr %48, i64 %52
  br label %54

54:                                               ; preds = %46, %50
  %55 = phi ptr [ %53, %50 ], [ null, %46 ]
  %56 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %57 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %58 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  br label %60

60:                                               ; preds = %136, %54
  %61 = phi ptr [ %69, %136 ], [ %48, %54 ]
  %62 = phi i1 [ false, %136 ], [ %6, %54 ]
  br label %63

63:                                               ; preds = %60, %72
  %64 = phi ptr [ %69, %72 ], [ %61, %60 ]
  br label %65

65:                                               ; preds = %68, %63
  %66 = phi ptr [ %69, %68 ], [ %64, %63 ]
  %67 = icmp eq ptr %66, %55
  br i1 %67, label %139, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds ptr, ptr %66, i64 1
  %70 = load ptr, ptr %66, align 8, !tbaa !30
  %71 = icmp eq ptr %70, null
  br i1 %71, label %65, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.prefix, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !309
  %75 = icmp eq ptr %74, null
  br i1 %75, label %63, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.prefix, ptr %70, i64 0, i32 1
  br i1 %62, label %90, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %56, align 8, !tbaa !132
  %80 = load ptr, ptr %57, align 8, !tbaa !131
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %207, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %56, align 8, !tbaa !132
  br label %87

87:                                               ; preds = %78, %85
  %88 = phi ptr [ %86, %85 ], [ %79, %78 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %89, ptr %56, align 8, !tbaa !132
  store i8 12, ptr %88, align 1, !tbaa !5
  br label %90

90:                                               ; preds = %87, %76
  %91 = load ptr, ptr %70, align 8, !tbaa !130
  %92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %91) #30
  br label %93

93:                                               ; preds = %100, %90
  %94 = load ptr, ptr %57, align 8, !tbaa !131
  %95 = load ptr, ptr %56, align 8, !tbaa !132
  %96 = ptrtoint ptr %94 to i64
  %97 = ptrtoint ptr %95 to i64
  %98 = sub i64 %96, %97
  %99 = icmp ult i64 %98, %92
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %207, label %93

103:                                              ; preds = %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr align 1 %91, i64 %92, i1 false)
  %104 = load ptr, ptr %56, align 8, !tbaa !132
  %105 = getelementptr inbounds i8, ptr %104, i64 %92
  store ptr %105, ptr %56, align 8, !tbaa !132
  %106 = load ptr, ptr %57, align 8, !tbaa !131
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %207, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %56, align 8, !tbaa !132
  br label %113

113:                                              ; preds = %103, %111
  %114 = phi ptr [ %112, %111 ], [ %105, %103 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %115, ptr %56, align 8, !tbaa !132
  store i8 61, ptr %114, align 1, !tbaa !5
  %116 = load ptr, ptr %77, align 8, !tbaa !309
  %117 = getelementptr inbounds %struct.binding, ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !318
  %119 = load i8, ptr %59, align 8, !tbaa !59
  %120 = icmp ne i8 %119, 0
  %121 = sext i1 %120 to i32
  %122 = add nsw i32 %118, %121
  %123 = getelementptr inbounds %struct.binding, ptr %116, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !165
  %125 = sext i32 %122 to i64
  br label %126

126:                                              ; preds = %133, %113
  %127 = load ptr, ptr %57, align 8, !tbaa !131
  %128 = load ptr, ptr %56, align 8, !tbaa !132
  %129 = ptrtoint ptr %127 to i64
  %130 = ptrtoint ptr %128 to i64
  %131 = sub i64 %129, %130
  %132 = icmp ult i64 %131, %125
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %207, label %126

136:                                              ; preds = %126
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %124, i64 %125, i1 false)
  %137 = load ptr, ptr %56, align 8, !tbaa !132
  %138 = getelementptr inbounds i8, ptr %137, i64 %125
  store ptr %138, ptr %56, align 8, !tbaa !132
  br label %60

139:                                              ; preds = %65
  %140 = load ptr, ptr %3, align 8, !tbaa !49
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.HASH_TABLE, ptr %3, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !88
  %145 = getelementptr inbounds ptr, ptr %140, i64 %144
  br label %146

146:                                              ; preds = %139, %142
  %147 = phi ptr [ %145, %142 ], [ null, %139 ]
  br label %148

148:                                              ; preds = %190, %146
  %149 = phi ptr [ %157, %190 ], [ %140, %146 ]
  %150 = phi i1 [ false, %190 ], [ %62, %146 ]
  br label %151

151:                                              ; preds = %148, %160
  %152 = phi ptr [ %157, %160 ], [ %149, %148 ]
  br label %153

153:                                              ; preds = %156, %151
  %154 = phi ptr [ %157, %156 ], [ %152, %151 ]
  %155 = icmp eq ptr %154, %147
  br i1 %155, label %193, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds ptr, ptr %154, i64 1
  %158 = load ptr, ptr %154, align 8, !tbaa !30
  %159 = icmp eq ptr %158, null
  br i1 %159, label %153, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ENTITY, ptr %158, i64 0, i32 8
  %162 = load i8, ptr %161, align 8, !tbaa !157
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %151, label %164

164:                                              ; preds = %160
  br i1 %150, label %177, label %165

165:                                              ; preds = %164
  %166 = load ptr, ptr %56, align 8, !tbaa !132
  %167 = load ptr, ptr %57, align 8, !tbaa !131
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %207, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %56, align 8, !tbaa !132
  br label %174

174:                                              ; preds = %165, %172
  %175 = phi ptr [ %173, %172 ], [ %166, %165 ]
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %176, ptr %56, align 8, !tbaa !132
  store i8 12, ptr %175, align 1, !tbaa !5
  br label %177

177:                                              ; preds = %174, %164
  %178 = load ptr, ptr %158, align 8, !tbaa !243
  %179 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %178) #30
  br label %180

180:                                              ; preds = %187, %177
  %181 = load ptr, ptr %57, align 8, !tbaa !131
  %182 = load ptr, ptr %56, align 8, !tbaa !132
  %183 = ptrtoint ptr %181 to i64
  %184 = ptrtoint ptr %182 to i64
  %185 = sub i64 %183, %184
  %186 = icmp ult i64 %185, %179
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %207, label %180

190:                                              ; preds = %180
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %182, ptr align 1 %178, i64 %179, i1 false)
  %191 = load ptr, ptr %56, align 8, !tbaa !132
  %192 = getelementptr inbounds i8, ptr %191, i64 %179
  store ptr %192, ptr %56, align 8, !tbaa !132
  br label %148

193:                                              ; preds = %153
  %194 = load ptr, ptr %56, align 8, !tbaa !132
  %195 = load ptr, ptr %57, align 8, !tbaa !131
  %196 = icmp eq ptr %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %58), !range !133
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %56, align 8, !tbaa !132
  br label %202

202:                                              ; preds = %193, %200
  %203 = phi ptr [ %201, %200 ], [ %194, %193 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  store ptr %204, ptr %56, align 8, !tbaa !132
  store i8 0, ptr %203, align 1, !tbaa !5
  %205 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !156
  br label %207

207:                                              ; preds = %40, %108, %82, %100, %133, %169, %187, %14, %197, %202
  %208 = phi ptr [ %206, %202 ], [ null, %197 ], [ null, %14 ], [ null, %187 ], [ null, %169 ], [ null, %133 ], [ null, %100 ], [ null, %82 ], [ null, %108 ], [ null, %40 ]
  ret ptr %208
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @storeAtts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.siphash, align 8
  %9 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %3, align 8, !tbaa !306
  %13 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 1, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !88
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %6
  %17 = tail call fastcc i64 @hash(ptr noundef nonnull %0, ptr noundef %12)
  %18 = load i64, ptr %13, align 8, !tbaa !88
  %19 = add i64 %18, -1
  %20 = and i64 %19, %17
  %21 = load ptr, ptr %11, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %16
  %26 = sub i64 0, %18
  %27 = and i64 %17, %26
  %28 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 1, i32 1
  %29 = lshr i64 %19, 2
  br label %30

30:                                               ; preds = %48, %25
  %31 = phi ptr [ %23, %25 ], [ %56, %48 ]
  %32 = phi i64 [ %20, %25 ], [ %54, %48 ]
  %33 = phi i8 [ 0, %25 ], [ %49, %48 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !140
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %34) #30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %99, label %37

37:                                               ; preds = %30
  %38 = icmp eq i8 %33, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = load i8, ptr %28, align 8, !tbaa !47
  %41 = zext i8 %40 to i64
  %42 = add nuw nsw i64 %41, 4294967295
  %43 = and i64 %42, 4294967295
  %44 = lshr i64 %27, %43
  %45 = and i64 %44, %29
  %46 = trunc i64 %45 to i8
  %47 = or i8 %46, 1
  br label %48

48:                                               ; preds = %39, %37
  %49 = phi i8 [ %33, %37 ], [ %47, %39 ]
  %50 = zext i8 %49 to i64
  %51 = icmp ult i64 %32, %50
  %52 = select i1 %51, i64 %18, i64 0
  %53 = sub i64 %32, %50
  %54 = add i64 %52, %53
  %55 = getelementptr inbounds ptr, ptr %21, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !142

58:                                               ; preds = %48, %6, %16
  %59 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 4
  %60 = load ptr, ptr %3, align 8, !tbaa !306
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #30
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 4, i32 2
  %64 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 4, i32 3
  br label %65

65:                                               ; preds = %72, %58
  %66 = load ptr, ptr %63, align 8, !tbaa !131
  %67 = load ptr, ptr %64, align 8, !tbaa !132
  %68 = ptrtoint ptr %66 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp ult i64 %70, %62
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %59), !range !133
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %828, label %65

75:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %60, i64 %62, i1 false)
  %76 = load ptr, ptr %64, align 8, !tbaa !132
  %77 = getelementptr inbounds i8, ptr %76, i64 %62
  store ptr %77, ptr %64, align 8, !tbaa !132
  %78 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 4, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !134
  store ptr %77, ptr %78, align 8, !tbaa !134
  %80 = icmp eq ptr %79, null
  br i1 %80, label %828, label %81

81:                                               ; preds = %75
  %82 = tail call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %79, i64 noundef 88)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %828, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %82, i64 0, i32 6, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !144
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %82, i64 0, i32 6
  %90 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %82, i64 0, i32 6, i32 1
  store i8 0, ptr %90, align 8, !tbaa !47
  %91 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %82, i64 0, i32 6, i32 2
  store ptr null, ptr %89, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  store ptr %0, ptr %85, align 8, !tbaa !50
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %94 = load i8, ptr %93, align 8, !tbaa !60
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc i32 @setElementTypePrefix(ptr noundef nonnull %0, ptr noundef nonnull %82), !range !236
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %828, label %99

99:                                               ; preds = %30, %96, %92
  %100 = phi ptr [ %82, %92 ], [ %82, %96 ], [ %31, %30 ]
  %101 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %100, i64 0, i32 3
  %102 = load i64, ptr %101, align 8, !tbaa !145
  %103 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 78
  %104 = load i64, ptr %103, align 8, !tbaa !42
  %105 = icmp ugt i64 %104, 2147483647
  br i1 %105, label %828, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !319
  %109 = trunc i64 %104 to i32
  %110 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 81
  %111 = load ptr, ptr %110, align 8, !tbaa !43
  %112 = tail call i32 %108(ptr noundef %1, ptr noundef %2, i32 noundef %109, ptr noundef %111) #25
  %113 = sext i32 %112 to i64
  %114 = xor i64 %102, -1
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %828, label %116

116:                                              ; preds = %106
  %117 = add i64 %102, %113
  %118 = load i64, ptr %103, align 8, !tbaa !42
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = icmp ugt i64 %102, -17
  %122 = sub nuw i64 -17, %102
  %123 = icmp ult i64 %122, %113
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %828, label %125

125:                                              ; preds = %120
  %126 = add i64 %117, 16
  store i64 %126, ptr %103, align 8, !tbaa !42
  %127 = icmp ugt i64 %126, 576460752303423487
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 %118, ptr %103, align 8, !tbaa !42
  br label %828

129:                                              ; preds = %125
  %130 = load ptr, ptr %110, align 8, !tbaa !43
  %131 = shl nuw i64 %126, 5
  %132 = tail call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef %130, i64 noundef %131, i32 noundef 3816)
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i64 %118, ptr %103, align 8, !tbaa !42
  br label %828

135:                                              ; preds = %129
  store ptr %132, ptr %110, align 8, !tbaa !43
  %136 = icmp ult i64 %118, %113
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = icmp slt i32 %112, 0
  br i1 %138, label %828, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %107, align 8, !tbaa !319
  %141 = tail call i32 %140(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %112, ptr noundef nonnull %132) #25
  br label %142

142:                                              ; preds = %135, %139, %116
  %143 = load ptr, ptr %110, align 8, !tbaa !43
  %144 = icmp eq i32 %112, 0
  br i1 %144, label %289, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 3
  %147 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %148 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %149 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %150 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %151 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %152 = icmp eq i64 %102, 0
  %153 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %100, i64 0, i32 5
  br label %154

154:                                              ; preds = %145, %284
  %155 = phi i32 [ 0, %145 ], [ %285, %284 ]
  %156 = phi i32 [ 0, %145 ], [ %286, %284 ]
  %157 = phi i64 [ 0, %145 ], [ %287, %284 ]
  %158 = load ptr, ptr %110, align 8, !tbaa !43
  %159 = getelementptr inbounds %struct.ATTRIBUTE, ptr %158, i64 %157
  %160 = load ptr, ptr %159, align 8, !tbaa !320
  %161 = load ptr, ptr %146, align 8, !tbaa !276
  %162 = call i32 %161(ptr noundef %1, ptr noundef %160) #25
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %160, i64 %163
  %165 = call fastcc ptr @getAttributeId(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %160, ptr noundef %164)
  %166 = icmp eq ptr %165, null
  br i1 %166, label %828, label %167

167:                                              ; preds = %154
  %168 = load ptr, ptr %165, align 8, !tbaa !135
  %169 = getelementptr inbounds i8, ptr %168, i64 -1
  %170 = load i8, ptr %169, align 1, !tbaa !5
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %174 = load ptr, ptr %173, align 8, !tbaa !202
  %175 = icmp eq ptr %174, %1
  br i1 %175, label %176, label %828

176:                                              ; preds = %172
  %177 = load ptr, ptr %110, align 8, !tbaa !43
  %178 = getelementptr inbounds %struct.ATTRIBUTE, ptr %177, i64 %157
  %179 = load ptr, ptr %178, align 8, !tbaa !320
  %180 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %179, ptr %180, align 8, !tbaa !200
  br label %828

181:                                              ; preds = %167
  store i8 1, ptr %169, align 1, !tbaa !5
  %182 = load ptr, ptr %165, align 8, !tbaa !135
  %183 = add nsw i32 %155, 1
  %184 = sext i32 %155 to i64
  %185 = getelementptr inbounds ptr, ptr %143, i64 %184
  store ptr %182, ptr %185, align 8, !tbaa !30
  %186 = load ptr, ptr %110, align 8, !tbaa !43
  %187 = getelementptr inbounds %struct.ATTRIBUTE, ptr %186, i64 %157, i32 3
  %188 = load i8, ptr %187, align 8, !tbaa !322
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %220

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.attribute_id, ptr %165, i64 0, i32 2
  %192 = load i8, ptr %191, align 8, !tbaa !137
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i1 true, i1 %152
  br i1 %194, label %208, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr %153, align 8, !tbaa !90
  br label %197

197:                                              ; preds = %195, %205
  %198 = phi i64 [ 0, %195 ], [ %206, %205 ]
  %199 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %196, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !149
  %201 = icmp eq ptr %165, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %196, i64 %198, i32 1
  %204 = load i8, ptr %203, align 8, !tbaa !151
  br label %208

205:                                              ; preds = %197
  %206 = add nuw i64 %198, 1
  %207 = icmp eq i64 %206, %102
  br i1 %207, label %208, label %197, !llvm.loop !323

208:                                              ; preds = %205, %190, %202
  %209 = phi i8 [ 1, %190 ], [ %204, %202 ], [ 1, %205 ]
  %210 = getelementptr inbounds %struct.ATTRIBUTE, ptr %186, i64 %157, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !324
  %212 = getelementptr inbounds %struct.ATTRIBUTE, ptr %186, i64 %157, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !325
  %214 = call fastcc i32 @storeAttributeValue(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %209, ptr noundef %211, ptr noundef %213, ptr noundef nonnull %147, i32 noundef %5)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %828

216:                                              ; preds = %208
  %217 = load ptr, ptr %151, align 8, !tbaa !156
  %218 = sext i32 %183 to i64
  %219 = getelementptr inbounds ptr, ptr %143, i64 %218
  store ptr %217, ptr %219, align 8, !tbaa !30
  br label %262

220:                                              ; preds = %181
  %221 = getelementptr inbounds %struct.ATTRIBUTE, ptr %186, i64 %157, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !324
  %223 = getelementptr inbounds %struct.ATTRIBUTE, ptr %186, i64 %157, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %222, ptr %7, align 8, !tbaa !30
  %225 = load ptr, ptr %148, align 8, !tbaa !132
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %147), !range !133
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %227, %220
  br label %231

231:                                              ; preds = %230, %236
  %232 = load ptr, ptr %149, align 8, !tbaa !211
  %233 = load ptr, ptr %150, align 8, !tbaa !131
  %234 = call i32 %232(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %224, ptr noundef nonnull %148, ptr noundef %233) #25
  %235 = icmp ult i32 %234, 2
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %147), !range !133
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %231

239:                                              ; preds = %227, %236
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %252

240:                                              ; preds = %231
  %241 = load ptr, ptr %151, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %242 = icmp eq ptr %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %148, align 8, !tbaa !132
  %245 = load ptr, ptr %150, align 8, !tbaa !131
  %246 = icmp eq ptr %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %147), !range !133
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %148, align 8, !tbaa !132
  br label %255

252:                                              ; preds = %240, %247, %239
  %253 = sext i32 %183 to i64
  %254 = getelementptr inbounds ptr, ptr %143, i64 %253
  store ptr null, ptr %254, align 8, !tbaa !30
  br label %828

255:                                              ; preds = %243, %250
  %256 = phi ptr [ %251, %250 ], [ %244, %243 ]
  %257 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %257, ptr %148, align 8, !tbaa !132
  store i8 0, ptr %256, align 1, !tbaa !5
  %258 = load ptr, ptr %151, align 8, !tbaa !134
  %259 = sext i32 %183 to i64
  %260 = getelementptr inbounds ptr, ptr %143, i64 %259
  store ptr %258, ptr %260, align 8, !tbaa !30
  %261 = icmp eq ptr %258, null
  br i1 %261, label %828, label %262

262:                                              ; preds = %255, %216
  %263 = load ptr, ptr %148, align 8, !tbaa !159
  store ptr %263, ptr %151, align 8, !tbaa !156
  %264 = getelementptr inbounds %struct.attribute_id, ptr %165, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !138
  %266 = icmp eq ptr %265, null
  br i1 %266, label %276, label %267

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct.attribute_id, ptr %165, i64 0, i32 3
  %269 = load i8, ptr %268, align 1, !tbaa !139
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %267
  %272 = add nsw i32 %155, 2
  %273 = add nsw i32 %156, 1
  %274 = load ptr, ptr %165, align 8, !tbaa !135
  %275 = getelementptr inbounds i8, ptr %274, i64 -1
  store i8 2, ptr %275, align 1, !tbaa !5
  br label %284

276:                                              ; preds = %262
  %277 = add nsw i32 %155, 2
  br label %284

278:                                              ; preds = %267
  %279 = sext i32 %183 to i64
  %280 = getelementptr inbounds ptr, ptr %143, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !30
  %282 = call fastcc i32 @addBinding(ptr noundef nonnull %0, ptr noundef nonnull %265, ptr noundef nonnull %165, ptr noundef %281, ptr noundef %4), !range !163
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %828

284:                                              ; preds = %276, %271, %278
  %285 = phi i32 [ %155, %278 ], [ %277, %276 ], [ %272, %271 ]
  %286 = phi i32 [ %156, %278 ], [ %156, %276 ], [ %273, %271 ]
  %287 = add nuw i64 %157, 1
  %288 = icmp eq i64 %287, %113
  br i1 %288, label %289, label %154, !llvm.loop !326

289:                                              ; preds = %284, %142
  %290 = phi i32 [ 0, %142 ], [ %286, %284 ]
  %291 = phi i32 [ 0, %142 ], [ %285, %284 ]
  %292 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 79
  store i32 %291, ptr %292, align 8, !tbaa !114
  %293 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %100, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !146
  %295 = icmp eq ptr %294, null
  br i1 %295, label %314, label %296

296:                                              ; preds = %289
  %297 = load ptr, ptr %294, align 8, !tbaa !135
  %298 = getelementptr inbounds i8, ptr %297, i64 -1
  %299 = load i8, ptr %298, align 1, !tbaa !5
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %314, label %301

301:                                              ; preds = %296
  %302 = icmp sgt i32 %291, 0
  br i1 %302, label %303, label %317

303:                                              ; preds = %301, %310
  %304 = phi i64 [ %311, %310 ], [ 0, %301 ]
  %305 = getelementptr inbounds ptr, ptr %143, i64 %304
  %306 = load ptr, ptr %305, align 8, !tbaa !30
  %307 = icmp eq ptr %306, %297
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = trunc i64 %304 to i32
  br label %314

310:                                              ; preds = %303
  %311 = add nuw i64 %304, 2
  %312 = trunc i64 %311 to i32
  %313 = icmp sgt i32 %291, %312
  br i1 %313, label %303, label %317, !llvm.loop !327

314:                                              ; preds = %289, %296, %308
  %315 = phi i32 [ %309, %308 ], [ -1, %296 ], [ -1, %289 ]
  %316 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 80
  store i32 %315, ptr %316, align 4, !tbaa !171
  br label %317

317:                                              ; preds = %310, %314, %301
  %318 = icmp eq i64 %102, 0
  br i1 %318, label %365, label %319

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %100, i64 0, i32 5
  %321 = getelementptr ptr, ptr %143, i64 1
  br label %322

322:                                              ; preds = %319, %360
  %323 = phi i32 [ %291, %319 ], [ %361, %360 ]
  %324 = phi i32 [ %290, %319 ], [ %362, %360 ]
  %325 = phi i64 [ 0, %319 ], [ %363, %360 ]
  %326 = load ptr, ptr %320, align 8, !tbaa !90
  %327 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %326, i64 %325
  %328 = load ptr, ptr %327, align 8, !tbaa !149
  %329 = load ptr, ptr %328, align 8, !tbaa !135
  %330 = getelementptr inbounds i8, ptr %329, i64 -1
  %331 = load i8, ptr %330, align 1, !tbaa !5
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %360

333:                                              ; preds = %322
  %334 = getelementptr inbounds %struct.DEFAULT_ATTRIBUTE, ptr %326, i64 %325, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !152
  %336 = icmp eq ptr %335, null
  br i1 %336, label %360, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.attribute_id, ptr %328, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !138
  %340 = icmp eq ptr %339, null
  br i1 %340, label %347, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.attribute_id, ptr %328, i64 0, i32 3
  %343 = load i8, ptr %342, align 1, !tbaa !139
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %341
  store i8 2, ptr %330, align 1, !tbaa !5
  %346 = add nsw i32 %324, 1
  br label %351

347:                                              ; preds = %337
  store i8 1, ptr %330, align 1, !tbaa !5
  br label %351

348:                                              ; preds = %341
  %349 = call fastcc i32 @addBinding(ptr noundef %0, ptr noundef nonnull %339, ptr noundef nonnull %328, ptr noundef nonnull %335, ptr noundef %4), !range !163
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %360, label %828

351:                                              ; preds = %347, %345
  %352 = phi i32 [ %324, %347 ], [ %346, %345 ]
  %353 = sext i32 %323 to i64
  %354 = load ptr, ptr %327, align 8, !tbaa !149
  %355 = load ptr, ptr %354, align 8, !tbaa !135
  %356 = getelementptr inbounds ptr, ptr %143, i64 %353
  store ptr %355, ptr %356, align 8, !tbaa !30
  %357 = load ptr, ptr %334, align 8, !tbaa !152
  %358 = add nsw i32 %323, 2
  %359 = getelementptr ptr, ptr %321, i64 %353
  store ptr %357, ptr %359, align 8, !tbaa !30
  br label %360

360:                                              ; preds = %351, %322, %333, %348
  %361 = phi i32 [ %323, %348 ], [ %323, %333 ], [ %323, %322 ], [ %358, %351 ]
  %362 = phi i32 [ %324, %348 ], [ %324, %333 ], [ %324, %322 ], [ %352, %351 ]
  %363 = add nuw i64 %325, 1
  %364 = icmp eq i64 %363, %102
  br i1 %364, label %365, label %322, !llvm.loop !328

365:                                              ; preds = %360, %317
  %366 = phi i32 [ %290, %317 ], [ %362, %360 ]
  %367 = phi i32 [ %291, %317 ], [ %361, %360 ]
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %143, i64 %368
  store ptr null, ptr %369, align 8, !tbaa !30
  %370 = icmp eq i32 %366, 0
  br i1 %370, label %692, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 83
  %373 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 84
  %374 = load i8, ptr %373, align 8, !tbaa !329
  %375 = icmp ugt i8 %374, 31
  br i1 %375, label %828, label %376

376:                                              ; preds = %371
  %377 = zext nneg i8 %374 to i32
  %378 = shl i32 %366, 1
  %379 = ashr i32 %378, %377
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %405, label %381

381:                                              ; preds = %376, %381
  %382 = phi i8 [ %383, %381 ], [ %374, %376 ]
  %383 = add i8 %382, 1
  %384 = zext nneg i8 %382 to i32
  %385 = ashr i32 %366, %384
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %381, !llvm.loop !330

387:                                              ; preds = %381
  store i8 %383, ptr %373, align 8, !tbaa !329
  %388 = icmp ult i8 %383, 3
  br i1 %388, label %389, label %390

389:                                              ; preds = %387
  store i8 3, ptr %373, align 8, !tbaa !329
  br label %393

390:                                              ; preds = %387
  %391 = icmp ugt i8 %383, 31
  br i1 %391, label %392, label %393

392:                                              ; preds = %390
  store i8 %374, ptr %373, align 8, !tbaa !329
  br label %828

393:                                              ; preds = %389, %390
  %394 = phi i8 [ 3, %389 ], [ %383, %390 ]
  %395 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 82
  %396 = load ptr, ptr %395, align 8, !tbaa !169
  %397 = zext nneg i8 %394 to i64
  %398 = shl nuw nsw i64 24, %397
  %399 = call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef %396, i64 noundef %398, i32 noundef 4009)
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  store i8 %374, ptr %373, align 8, !tbaa !329
  br label %828

402:                                              ; preds = %393
  %403 = zext nneg i8 %394 to i32
  store ptr %399, ptr %395, align 8, !tbaa !169
  %404 = shl nuw i32 1, %403
  br label %409

405:                                              ; preds = %376
  %406 = load i64, ptr %372, align 8, !tbaa !331
  %407 = shl nuw i32 1, %377
  %408 = icmp eq i64 %406, 0
  br i1 %408, label %409, label %441

409:                                              ; preds = %402, %405
  %410 = phi i32 [ %404, %402 ], [ %407, %405 ]
  %411 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 82
  %412 = load ptr, ptr %411, align 8, !tbaa !169
  %413 = and i32 %410, 3
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %423, label %415

415:                                              ; preds = %409, %415
  %416 = phi i32 [ %418, %415 ], [ %410, %409 ]
  %417 = phi i32 [ %421, %415 ], [ 0, %409 ]
  %418 = add i32 %416, -1
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.NS_ATT, ptr %412, i64 %419
  store i64 4294967295, ptr %420, align 8, !tbaa !332
  %421 = add i32 %417, 1
  %422 = icmp eq i32 %421, %413
  br i1 %422, label %423, label %415, !llvm.loop !334

423:                                              ; preds = %415, %409
  %424 = phi i32 [ %410, %409 ], [ %418, %415 ]
  %425 = icmp ult i32 %410, 4
  br i1 %425, label %441, label %426

426:                                              ; preds = %423, %426
  %427 = phi i32 [ %437, %426 ], [ %424, %423 ]
  %428 = add i32 %427, -1
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds %struct.NS_ATT, ptr %412, i64 %429
  store i64 4294967295, ptr %430, align 8, !tbaa !332
  %431 = add i32 %427, -2
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.NS_ATT, ptr %412, i64 %432
  store i64 4294967295, ptr %433, align 8, !tbaa !332
  %434 = add i32 %427, -3
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds %struct.NS_ATT, ptr %412, i64 %435
  store i64 4294967295, ptr %436, align 8, !tbaa !332
  %437 = add i32 %427, -4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.NS_ATT, ptr %412, i64 %438
  store i64 4294967295, ptr %439, align 8, !tbaa !332
  %440 = icmp eq i32 %437, 0
  br i1 %440, label %441, label %426, !llvm.loop !336

441:                                              ; preds = %423, %426, %405
  %442 = phi i32 [ %407, %405 ], [ %410, %426 ], [ %410, %423 ]
  %443 = phi i64 [ %406, %405 ], [ 4294967295, %426 ], [ 4294967295, %423 ]
  %444 = add i64 %443, -1
  store i64 %444, ptr %372, align 8, !tbaa !331
  %445 = icmp sgt i32 %367, 0
  br i1 %445, label %446, label %692

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 1
  %448 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 2
  %449 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 3
  %450 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 4
  %451 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 5
  %452 = getelementptr inbounds %struct.siphash, ptr %8, i64 0, i32 6
  %453 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 2, i32 2
  %454 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 2
  %455 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 2, i32 1
  %456 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %457 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %458 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %459 = add i32 %442, -1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 82
  %462 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %463 = xor i64 %460, -1
  %464 = lshr i64 %460, 2
  %465 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 42
  %466 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  br label %467

467:                                              ; preds = %446, %684
  %468 = phi i64 [ 0, %446 ], [ %686, %684 ]
  %469 = phi i32 [ %366, %446 ], [ %685, %684 ]
  %470 = getelementptr inbounds ptr, ptr %143, i64 %468
  %471 = load ptr, ptr %470, align 8, !tbaa !30
  %472 = getelementptr inbounds i8, ptr %471, i64 -1
  %473 = load i8, ptr %472, align 1, !tbaa !5
  %474 = icmp eq i8 %473, 2
  br i1 %474, label %475, label %681

475:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #25
  br label %476

476:                                              ; preds = %476, %475
  %477 = phi ptr [ %0, %475 ], [ %479, %476 ]
  %478 = getelementptr inbounds %struct.XML_ParserStruct, ptr %477, i64 0, i32 91
  %479 = load ptr, ptr %478, align 8, !tbaa !8
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %476, !llvm.loop !26

481:                                              ; preds = %476
  %482 = getelementptr inbounds %struct.XML_ParserStruct, ptr %477, i64 0, i32 96
  %483 = load i64, ptr %482, align 8, !tbaa.struct !128
  %484 = getelementptr inbounds %struct.XML_ParserStruct, ptr %477, i64 0, i32 96, i32 0, i64 1
  %485 = load i64, ptr %484, align 8, !tbaa.struct !193
  %486 = xor i64 %483, 8317987319222330741
  store i64 %486, ptr %8, align 8, !tbaa !297
  %487 = xor i64 %485, 7237128888997146477
  store i64 %487, ptr %447, align 8, !tbaa !299
  %488 = xor i64 %483, 7816392313619706465
  store i64 %488, ptr %448, align 8, !tbaa !300
  %489 = xor i64 %485, 8387220255154660723
  store i64 %489, ptr %449, align 8, !tbaa !301
  store ptr %450, ptr %451, align 8, !tbaa !302
  store i64 0, ptr %452, align 8, !tbaa !303
  store i8 0, ptr %472, align 1, !tbaa !5
  %490 = load i64, ptr %453, align 8, !tbaa !88
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %682, label %492

492:                                              ; preds = %481
  %493 = call fastcc i64 @hash(ptr noundef %0, ptr noundef nonnull %471)
  %494 = load i64, ptr %453, align 8, !tbaa !88
  %495 = add i64 %494, -1
  %496 = and i64 %495, %493
  %497 = load ptr, ptr %454, align 8, !tbaa !49
  %498 = getelementptr inbounds ptr, ptr %497, i64 %496
  %499 = load ptr, ptr %498, align 8, !tbaa !30
  %500 = icmp eq ptr %499, null
  br i1 %500, label %682, label %501

501:                                              ; preds = %492
  %502 = sub i64 0, %494
  %503 = and i64 %493, %502
  %504 = lshr i64 %495, 2
  br label %505

505:                                              ; preds = %523, %501
  %506 = phi ptr [ %499, %501 ], [ %531, %523 ]
  %507 = phi i64 [ %496, %501 ], [ %529, %523 ]
  %508 = phi i8 [ 0, %501 ], [ %524, %523 ]
  %509 = load ptr, ptr %506, align 8, !tbaa !140
  %510 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %471, ptr noundef nonnull dereferenceable(1) %509) #30
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %533, label %512

512:                                              ; preds = %505
  %513 = icmp eq i8 %508, 0
  br i1 %513, label %514, label %523

514:                                              ; preds = %512
  %515 = load i8, ptr %455, align 8, !tbaa !47
  %516 = zext i8 %515 to i64
  %517 = add nuw nsw i64 %516, 4294967295
  %518 = and i64 %517, 4294967295
  %519 = lshr i64 %503, %518
  %520 = and i64 %519, %504
  %521 = trunc i64 %520 to i8
  %522 = or i8 %521, 1
  br label %523

523:                                              ; preds = %514, %512
  %524 = phi i8 [ %508, %512 ], [ %522, %514 ]
  %525 = zext i8 %524 to i64
  %526 = icmp ult i64 %507, %525
  %527 = select i1 %526, i64 %494, i64 0
  %528 = sub i64 %507, %525
  %529 = add i64 %527, %528
  %530 = getelementptr inbounds ptr, ptr %497, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !30
  %532 = icmp eq ptr %531, null
  br i1 %532, label %682, label %505, !llvm.loop !142

533:                                              ; preds = %505
  %534 = getelementptr inbounds %struct.attribute_id, ptr %506, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !138
  %536 = icmp eq ptr %535, null
  br i1 %536, label %682, label %537

537:                                              ; preds = %533
  %538 = getelementptr inbounds %struct.prefix, ptr %535, i64 0, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !309
  %540 = icmp eq ptr %539, null
  br i1 %540, label %682, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.binding, ptr %539, i64 0, i32 4
  %543 = load ptr, ptr %542, align 8, !tbaa !165
  %544 = getelementptr inbounds %struct.binding, ptr %539, i64 0, i32 5
  %545 = load i32, ptr %544, align 8, !tbaa !318
  %546 = sext i32 %545 to i64
  br label %547

547:                                              ; preds = %554, %541
  %548 = load ptr, ptr %457, align 8, !tbaa !131
  %549 = load ptr, ptr %458, align 8, !tbaa !132
  %550 = ptrtoint ptr %548 to i64
  %551 = ptrtoint ptr %549 to i64
  %552 = sub i64 %550, %551
  %553 = icmp ult i64 %552, %546
  br i1 %553, label %554, label %557

554:                                              ; preds = %547
  %555 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %456), !range !133
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %682, label %547

557:                                              ; preds = %547
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %549, ptr align 1 %543, i64 %546, i1 false)
  %558 = load ptr, ptr %458, align 8, !tbaa !132
  %559 = getelementptr inbounds i8, ptr %558, i64 %546
  store ptr %559, ptr %458, align 8, !tbaa !132
  %560 = load ptr, ptr %542, align 8, !tbaa !165
  %561 = load i32, ptr %544, align 8, !tbaa !318
  %562 = sext i32 %561 to i64
  %563 = call fastcc ptr @sip24_update(ptr noundef nonnull %8, ptr noundef %560, i64 noundef %562)
  br label %564

564:                                              ; preds = %564, %557
  %565 = phi ptr [ %471, %557 ], [ %566, %564 ]
  %566 = getelementptr inbounds i8, ptr %565, i64 1
  %567 = load i8, ptr %565, align 1, !tbaa !5
  %568 = icmp eq i8 %567, 58
  br i1 %568, label %569, label %564, !llvm.loop !337

569:                                              ; preds = %564
  %570 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %566) #30
  %571 = call fastcc ptr @sip24_update(ptr noundef nonnull %8, ptr noundef nonnull %566, i64 noundef %570)
  %572 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %566) #30
  %573 = add i64 %572, 1
  br label %574

574:                                              ; preds = %581, %569
  %575 = load ptr, ptr %457, align 8, !tbaa !131
  %576 = load ptr, ptr %458, align 8, !tbaa !132
  %577 = ptrtoint ptr %575 to i64
  %578 = ptrtoint ptr %576 to i64
  %579 = sub i64 %577, %578
  %580 = icmp ult i64 %579, %573
  br i1 %580, label %581, label %584

581:                                              ; preds = %574
  %582 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %456), !range !133
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %682, label %574

584:                                              ; preds = %574
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr nonnull align 1 %566, i64 %573, i1 false)
  %585 = load ptr, ptr %458, align 8, !tbaa !132
  %586 = getelementptr inbounds i8, ptr %585, i64 %573
  store ptr %586, ptr %458, align 8, !tbaa !132
  %587 = call fastcc i64 @sip24_final(ptr noundef nonnull %8)
  %588 = trunc i64 %587 to i32
  %589 = and i32 %459, %588
  %590 = load ptr, ptr %461, align 8, !tbaa !169
  %591 = zext i32 %589 to i64
  %592 = getelementptr inbounds %struct.NS_ATT, ptr %590, i64 %591
  %593 = load i64, ptr %592, align 8, !tbaa !332
  %594 = icmp eq i64 %593, %444
  br i1 %594, label %595, label %647

595:                                              ; preds = %584
  %596 = and i64 %587, %463
  br label %597

597:                                              ; preds = %595, %636
  %598 = phi i64 [ %591, %595 ], [ %643, %636 ]
  %599 = phi i8 [ 0, %595 ], [ %637, %636 ]
  %600 = phi i32 [ %589, %595 ], [ %642, %636 ]
  %601 = getelementptr inbounds %struct.NS_ATT, ptr %590, i64 %598, i32 1
  %602 = load i64, ptr %601, align 8, !tbaa !338
  %603 = icmp eq i64 %587, %602
  br i1 %603, label %604, label %625

604:                                              ; preds = %597
  %605 = load ptr, ptr %462, align 8, !tbaa !156
  %606 = getelementptr inbounds %struct.NS_ATT, ptr %590, i64 %598, i32 2
  %607 = load ptr, ptr %606, align 8, !tbaa !339
  %608 = load i8, ptr %605, align 1, !tbaa !5
  %609 = load i8, ptr %607, align 1, !tbaa !5
  %610 = icmp ne i8 %608, %609
  %611 = icmp eq i8 %608, 0
  %612 = or i1 %611, %610
  br i1 %612, label %623, label %613

613:                                              ; preds = %604, %613
  %614 = phi ptr [ %617, %613 ], [ %607, %604 ]
  %615 = phi ptr [ %616, %613 ], [ %605, %604 ]
  %616 = getelementptr inbounds i8, ptr %615, i64 1
  %617 = getelementptr inbounds i8, ptr %614, i64 1
  %618 = load i8, ptr %616, align 1, !tbaa !5
  %619 = load i8, ptr %617, align 1, !tbaa !5
  %620 = icmp ne i8 %618, %619
  %621 = icmp eq i8 %618, 0
  %622 = or i1 %621, %620
  br i1 %622, label %623, label %613, !llvm.loop !340

623:                                              ; preds = %613, %604
  %624 = phi i1 [ %611, %604 ], [ %621, %613 ]
  br i1 %624, label %682, label %625

625:                                              ; preds = %623, %597
  %626 = icmp eq i8 %599, 0
  br i1 %626, label %627, label %636

627:                                              ; preds = %625
  %628 = load i8, ptr %373, align 8, !tbaa !329
  %629 = zext i8 %628 to i64
  %630 = add nuw nsw i64 %629, 4294967295
  %631 = and i64 %630, 4294967295
  %632 = lshr i64 %596, %631
  %633 = and i64 %632, %464
  %634 = trunc i64 %633 to i8
  %635 = or i8 %634, 1
  br label %636

636:                                              ; preds = %627, %625
  %637 = phi i8 [ %599, %625 ], [ %635, %627 ]
  %638 = zext i8 %637 to i32
  %639 = icmp ult i32 %600, %638
  %640 = select i1 %639, i32 %442, i32 0
  %641 = sub i32 %600, %638
  %642 = add i32 %641, %640
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds %struct.NS_ATT, ptr %590, i64 %643
  %645 = load i64, ptr %644, align 8, !tbaa !332
  %646 = icmp eq i64 %645, %444
  br i1 %646, label %597, label %647, !llvm.loop !341

647:                                              ; preds = %636, %584
  %648 = phi i64 [ %591, %584 ], [ %643, %636 ]
  %649 = load i8, ptr %465, align 1, !tbaa !61
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %671, label %651

651:                                              ; preds = %647
  %652 = load i8, ptr %466, align 8, !tbaa !59
  %653 = getelementptr inbounds i8, ptr %585, i64 %572
  store i8 %652, ptr %653, align 1, !tbaa !5
  %654 = load ptr, ptr %539, align 8, !tbaa !307
  %655 = load ptr, ptr %654, align 8, !tbaa !130
  %656 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %655) #30
  %657 = add i64 %656, 1
  br label %658

658:                                              ; preds = %665, %651
  %659 = load ptr, ptr %457, align 8, !tbaa !131
  %660 = load ptr, ptr %458, align 8, !tbaa !132
  %661 = ptrtoint ptr %659 to i64
  %662 = ptrtoint ptr %660 to i64
  %663 = sub i64 %661, %662
  %664 = icmp ult i64 %663, %657
  br i1 %664, label %665, label %668

665:                                              ; preds = %658
  %666 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %456), !range !133
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %682, label %658

668:                                              ; preds = %658
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %660, ptr align 1 %655, i64 %657, i1 false)
  %669 = load ptr, ptr %458, align 8, !tbaa !132
  %670 = getelementptr inbounds i8, ptr %669, i64 %657
  store ptr %670, ptr %458, align 8, !tbaa !132
  br label %671

671:                                              ; preds = %668, %647
  %672 = phi ptr [ %670, %668 ], [ %586, %647 ]
  %673 = load ptr, ptr %462, align 8, !tbaa !156
  store ptr %672, ptr %462, align 8, !tbaa !156
  store ptr %673, ptr %470, align 8, !tbaa !30
  %674 = load ptr, ptr %461, align 8, !tbaa !169
  %675 = getelementptr inbounds %struct.NS_ATT, ptr %674, i64 %648
  store i64 %444, ptr %675, align 8, !tbaa !332
  %676 = getelementptr inbounds %struct.NS_ATT, ptr %674, i64 %648, i32 1
  store i64 %587, ptr %676, align 8, !tbaa !338
  %677 = getelementptr inbounds %struct.NS_ATT, ptr %674, i64 %648, i32 2
  store ptr %673, ptr %677, align 8, !tbaa !339
  %678 = add nsw i32 %469, -1
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %689, label %680

680:                                              ; preds = %671
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  br label %684

681:                                              ; preds = %467
  store i8 0, ptr %472, align 1, !tbaa !5
  br label %684

682:                                              ; preds = %533, %537, %481, %492, %523, %554, %581, %623, %665
  %683 = phi i32 [ 1, %665 ], [ 8, %623 ], [ 1, %581 ], [ 1, %554 ], [ 1, %523 ], [ 1, %492 ], [ 1, %481 ], [ 1, %533 ], [ 27, %537 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  br label %828

684:                                              ; preds = %680, %681
  %685 = phi i32 [ %469, %681 ], [ %678, %680 ]
  %686 = add nuw i64 %468, 2
  %687 = trunc i64 %686 to i32
  %688 = icmp sgt i32 %367, %687
  br i1 %688, label %467, label %692, !llvm.loop !342

689:                                              ; preds = %671
  %690 = trunc i64 %468 to i32
  %691 = add nuw nsw i32 %690, 2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  br label %692

692:                                              ; preds = %684, %441, %689, %365
  %693 = phi i32 [ 0, %365 ], [ %691, %689 ], [ 0, %441 ], [ %687, %684 ]
  %694 = icmp slt i32 %693, %367
  br i1 %694, label %695, label %697

695:                                              ; preds = %692
  %696 = sext i32 %693 to i64
  br label %700

697:                                              ; preds = %700, %692
  %698 = load ptr, ptr %4, align 8, !tbaa !30
  %699 = icmp eq ptr %698, null
  br i1 %699, label %716, label %707

700:                                              ; preds = %695, %700
  %701 = phi i64 [ %696, %695 ], [ %705, %700 ]
  %702 = getelementptr inbounds ptr, ptr %143, i64 %701
  %703 = load ptr, ptr %702, align 8, !tbaa !30
  %704 = getelementptr inbounds i8, ptr %703, i64 -1
  store i8 0, ptr %704, align 1, !tbaa !5
  %705 = add nsw i64 %701, 2
  %706 = icmp slt i64 %705, %368
  br i1 %706, label %700, label %697, !llvm.loop !343

707:                                              ; preds = %697, %707
  %708 = phi ptr [ %714, %707 ], [ %698, %697 ]
  %709 = getelementptr inbounds %struct.binding, ptr %708, i64 0, i32 3
  %710 = load ptr, ptr %709, align 8, !tbaa !344
  %711 = load ptr, ptr %710, align 8, !tbaa !135
  %712 = getelementptr inbounds i8, ptr %711, i64 -1
  store i8 0, ptr %712, align 1, !tbaa !5
  %713 = getelementptr inbounds %struct.binding, ptr %708, i64 0, i32 1
  %714 = load ptr, ptr %713, align 8, !tbaa !30
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %707, !llvm.loop !345

716:                                              ; preds = %707, %697
  %717 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %718 = load i8, ptr %717, align 8, !tbaa !60
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %828, label %720

720:                                              ; preds = %716
  %721 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %100, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !148
  %723 = icmp eq ptr %722, null
  br i1 %723, label %735, label %724

724:                                              ; preds = %720
  %725 = getelementptr inbounds %struct.prefix, ptr %722, i64 0, i32 1
  %726 = load ptr, ptr %725, align 8, !tbaa !309
  %727 = icmp eq ptr %726, null
  br i1 %727, label %828, label %728

728:                                              ; preds = %724
  %729 = load ptr, ptr %3, align 8, !tbaa !306
  br label %730

730:                                              ; preds = %730, %728
  %731 = phi ptr [ %729, %728 ], [ %732, %730 ]
  %732 = getelementptr inbounds i8, ptr %731, i64 1
  %733 = load i8, ptr %731, align 1, !tbaa !5
  %734 = icmp eq i8 %733, 58
  br i1 %734, label %741, label %730, !llvm.loop !346

735:                                              ; preds = %720
  %736 = getelementptr inbounds %struct.DTD, ptr %10, i64 0, i32 11, i32 1
  %737 = load ptr, ptr %736, align 8, !tbaa !317
  %738 = icmp eq ptr %737, null
  br i1 %738, label %828, label %739

739:                                              ; preds = %735
  %740 = load ptr, ptr %3, align 8, !tbaa !306
  br label %741

741:                                              ; preds = %730, %739
  %742 = phi ptr [ %740, %739 ], [ %732, %730 ]
  %743 = phi ptr [ %737, %739 ], [ %726, %730 ]
  %744 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 42
  %745 = load i8, ptr %744, align 1, !tbaa !61
  %746 = icmp eq i8 %745, 0
  %747 = load ptr, ptr %743, align 8, !tbaa !307
  %748 = load ptr, ptr %747, align 8, !tbaa !130
  %749 = icmp eq ptr %748, null
  %750 = select i1 %746, i1 true, i1 %749
  br i1 %750, label %756, label %751

751:                                              ; preds = %741
  %752 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %748) #30
  %753 = add i64 %752, 1
  %754 = icmp ult i64 %753, 2147483648
  %755 = trunc i64 %753 to i32
  br i1 %754, label %756, label %828

756:                                              ; preds = %751, %741
  %757 = phi i32 [ %755, %751 ], [ 0, %741 ]
  %758 = getelementptr inbounds %struct.TAG_NAME, ptr %3, i64 0, i32 1
  store ptr %742, ptr %758, align 8, !tbaa !347
  %759 = getelementptr inbounds %struct.binding, ptr %743, i64 0, i32 5
  %760 = load i32, ptr %759, align 8, !tbaa !318
  %761 = getelementptr inbounds %struct.TAG_NAME, ptr %3, i64 0, i32 4
  store i32 %760, ptr %761, align 4, !tbaa !348
  %762 = getelementptr inbounds %struct.TAG_NAME, ptr %3, i64 0, i32 2
  store ptr %748, ptr %762, align 8, !tbaa !349
  %763 = getelementptr inbounds %struct.TAG_NAME, ptr %3, i64 0, i32 5
  store i32 %757, ptr %763, align 8, !tbaa !350
  %764 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %742) #30
  %765 = add i64 %764, 1
  %766 = icmp ugt i64 %765, 2147483647
  %767 = sub nuw nsw i32 2147483647, %757
  %768 = icmp sgt i32 %760, %767
  %769 = select i1 %766, i1 true, i1 %768
  br i1 %769, label %828, label %770

770:                                              ; preds = %756
  %771 = add i32 %760, %757
  %772 = sext i32 %771 to i64
  %773 = sub nsw i64 2147483647, %772
  %774 = icmp ugt i64 %765, %773
  br i1 %774, label %828, label %775

775:                                              ; preds = %770
  %776 = trunc i64 %765 to i32
  %777 = add i32 %771, %776
  %778 = getelementptr inbounds %struct.binding, ptr %743, i64 0, i32 6
  %779 = load i32, ptr %778, align 4, !tbaa !351
  %780 = icmp sgt i32 %777, %779
  br i1 %780, label %784, label %781

781:                                              ; preds = %775
  %782 = getelementptr inbounds %struct.binding, ptr %743, i64 0, i32 4
  %783 = load ptr, ptr %782, align 8, !tbaa !165
  br label %811

784:                                              ; preds = %775
  %785 = icmp sgt i32 %777, 2147483623
  br i1 %785, label %828, label %786

786:                                              ; preds = %784
  %787 = add nsw i32 %777, 24
  %788 = sext i32 %787 to i64
  %789 = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %788, i32 noundef 4187)
  %790 = icmp eq ptr %789, null
  br i1 %790, label %828, label %791

791:                                              ; preds = %786
  store i32 %787, ptr %778, align 4, !tbaa !351
  %792 = getelementptr inbounds %struct.binding, ptr %743, i64 0, i32 4
  %793 = load ptr, ptr %792, align 8, !tbaa !165
  %794 = load i32, ptr %759, align 8, !tbaa !318
  %795 = sext i32 %794 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %789, ptr align 1 %793, i64 %795, i1 false)
  %796 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %797 = load ptr, ptr %796, align 8, !tbaa !30
  %798 = icmp eq ptr %797, null
  %799 = load ptr, ptr %792, align 8, !tbaa !165
  br i1 %798, label %800, label %802

800:                                              ; preds = %808, %791
  call fastcc void @expat_free(ptr noundef %0, ptr noundef %799, i32 noundef 4195)
  store ptr %789, ptr %792, align 8, !tbaa !165
  %801 = load i32, ptr %759, align 8, !tbaa !318
  br label %811

802:                                              ; preds = %791, %808
  %803 = phi ptr [ %809, %808 ], [ %797, %791 ]
  %804 = getelementptr inbounds %struct.tag, ptr %803, i64 0, i32 3
  %805 = load ptr, ptr %804, align 8, !tbaa !286
  %806 = icmp eq ptr %805, %799
  br i1 %806, label %807, label %808

807:                                              ; preds = %802
  store ptr %789, ptr %804, align 8, !tbaa !286
  br label %808

808:                                              ; preds = %802, %807
  %809 = load ptr, ptr %803, align 8, !tbaa !30
  %810 = icmp eq ptr %809, null
  br i1 %810, label %800, label %802, !llvm.loop !352

811:                                              ; preds = %781, %800
  %812 = phi i32 [ %760, %781 ], [ %801, %800 ]
  %813 = phi ptr [ %783, %781 ], [ %789, %800 ]
  %814 = getelementptr inbounds %struct.binding, ptr %743, i64 0, i32 4
  %815 = sext i32 %812 to i64
  %816 = getelementptr inbounds i8, ptr %813, i64 %815
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %816, ptr align 1 %742, i64 %765, i1 false)
  %817 = icmp eq i32 %757, 0
  br i1 %817, label %826, label %818

818:                                              ; preds = %811
  %819 = getelementptr inbounds i8, ptr %816, i64 %764
  %820 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  %821 = load i8, ptr %820, align 8, !tbaa !59
  store i8 %821, ptr %819, align 1, !tbaa !5
  %822 = getelementptr inbounds i8, ptr %819, i64 1
  %823 = load ptr, ptr %743, align 8, !tbaa !307
  %824 = load ptr, ptr %823, align 8, !tbaa !130
  %825 = zext nneg i32 %757 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %822, ptr align 1 %824, i64 %825, i1 false)
  br label %826

826:                                              ; preds = %818, %811
  %827 = load ptr, ptr %814, align 8, !tbaa !165
  store ptr %827, ptr %3, align 8, !tbaa !306
  br label %828

828:                                              ; preds = %72, %154, %278, %255, %208, %348, %252, %176, %172, %682, %401, %392, %371, %137, %134, %120, %128, %96, %81, %75, %99, %751, %826, %784, %786, %756, %770, %735, %724, %716, %106
  %829 = phi i32 [ 1, %99 ], [ 1, %106 ], [ 0, %716 ], [ 27, %724 ], [ 0, %735 ], [ 1, %751 ], [ 1, %770 ], [ 1, %756 ], [ 0, %826 ], [ 1, %784 ], [ 1, %786 ], [ 1, %75 ], [ 1, %81 ], [ 1, %96 ], [ 1, %128 ], [ 1, %120 ], [ 1, %134 ], [ 1, %137 ], [ %683, %682 ], [ 1, %401 ], [ 1, %392 ], [ 1, %371 ], [ 8, %176 ], [ 8, %172 ], [ 1, %252 ], [ %349, %348 ], [ 1, %255 ], [ %214, %208 ], [ %282, %278 ], [ 1, %154 ], [ 1, %72 ]
  ret i32 %829
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @epilogProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @epilogProcessor, ptr %10, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %1, ptr %11, align 8, !tbaa !200
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %15 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  br label %20

20:                                               ; preds = %155, %4
  %21 = phi ptr [ %1, %4 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr null, ptr %9, align 8, !tbaa !30
  %22 = load ptr, ptr %12, align 8, !tbaa !202
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = call i32 %23(ptr noundef nonnull %22, ptr noundef %21, ptr noundef %2, ptr noundef nonnull %9) #25
  %25 = load ptr, ptr %9, align 8, !tbaa !30
  %26 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef %24, ptr noundef %21, ptr noundef %25, i32 noundef 6211, i32 noundef 0), !range !133
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %31, %28 ], [ %0, %20 ]
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %29, i64 0, i32 91
  %31 = load ptr, ptr %30, align 8, !tbaa !8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28, !llvm.loop !26

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %29, i64 0, i32 98, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !119
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %157, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %29, i64 0, i32 98
  %39 = load i64, ptr %38, align 8, !tbaa !37
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %29, i64 0, i32 98, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !213
  %42 = icmp eq i64 %39, 0
  %43 = uitofp i64 %39 to float
  %44 = select i1 %42, float 2.200000e+01, float %43
  %45 = select i1 %42, i64 22, i64 %39
  %46 = add i64 %45, %41
  %47 = uitofp i64 %46 to float
  %48 = fdiv float %47, %44
  %49 = load ptr, ptr @stderr, align 8, !tbaa !30
  %50 = fpext float %48 to double
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.330, ptr noundef nonnull %29, i64 noundef %39, i64 noundef %41, double noundef %50, ptr noundef nonnull @.str.336) #29
  br label %157

52:                                               ; preds = %20
  %53 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %53, ptr %13, align 8, !tbaa !201
  switch i32 %24, label %157 [
    i32 -15, label %54
    i32 -4, label %93
    i32 15, label %94
    i32 11, label %127
    i32 13, label %131
    i32 0, label %135
    i32 -1, label %136
    i32 -2, label %141
  ]

54:                                               ; preds = %52
  %55 = load ptr, ptr %14, align 8, !tbaa !179
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %12, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %21, ptr %7, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.encoding, ptr %58, i64 0, i32 13
  %60 = load i8, ptr %59, align 4, !tbaa !210
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.encoding, ptr %58, i64 0, i32 10
  br label %64

64:                                               ; preds = %64, %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %65 = load ptr, ptr %16, align 8, !tbaa !44
  store ptr %65, ptr %8, align 8, !tbaa !30
  %66 = load ptr, ptr %63, align 8, !tbaa !211
  %67 = load ptr, ptr %17, align 8, !tbaa !45
  %68 = call i32 %66(ptr noundef nonnull %58, ptr noundef nonnull %7, ptr noundef %53, ptr noundef nonnull %8, ptr noundef %67) #25
  %69 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %69, ptr %13, align 8, !tbaa !30
  %70 = load ptr, ptr %14, align 8, !tbaa !179
  %71 = load ptr, ptr %15, align 8, !tbaa !125
  %72 = load ptr, ptr %16, align 8, !tbaa !44
  %73 = load ptr, ptr %8, align 8, !tbaa !30
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %72 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  call void %70(ptr noundef %71, ptr noundef %72, i32 noundef %77) #25
  %78 = load ptr, ptr %7, align 8, !tbaa !30
  store ptr %78, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  %79 = icmp ugt i32 %68, 1
  br i1 %79, label %64, label %86, !llvm.loop !212

80:                                               ; preds = %57
  %81 = load ptr, ptr %15, align 8, !tbaa !125
  %82 = ptrtoint ptr %53 to i64
  %83 = ptrtoint ptr %21 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  call void %55(ptr noundef %81, ptr noundef %21, i32 noundef %85) #25
  br label %86

86:                                               ; preds = %64, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %87 = load i32, ptr %18, align 8, !tbaa !115
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %157, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %9, align 8, !tbaa !30
  br label %91

91:                                               ; preds = %89, %54
  %92 = phi ptr [ %90, %89 ], [ %53, %54 ]
  store ptr %92, ptr %3, align 8, !tbaa !30
  br label %157

93:                                               ; preds = %52
  store ptr %21, ptr %3, align 8, !tbaa !30
  br label %157

94:                                               ; preds = %52
  %95 = load ptr, ptr %14, align 8, !tbaa !179
  %96 = icmp eq ptr %95, null
  br i1 %96, label %146, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %12, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %21, ptr %5, align 8, !tbaa !30
  %99 = getelementptr inbounds %struct.encoding, ptr %98, i64 0, i32 13
  %100 = load i8, ptr %99, align 4, !tbaa !210
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.encoding, ptr %98, i64 0, i32 10
  br label %104

104:                                              ; preds = %104, %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %105 = load ptr, ptr %16, align 8, !tbaa !44
  store ptr %105, ptr %6, align 8, !tbaa !30
  %106 = load ptr, ptr %103, align 8, !tbaa !211
  %107 = load ptr, ptr %17, align 8, !tbaa !45
  %108 = call i32 %106(ptr noundef nonnull %98, ptr noundef nonnull %5, ptr noundef %53, ptr noundef nonnull %6, ptr noundef %107) #25
  %109 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %109, ptr %13, align 8, !tbaa !30
  %110 = load ptr, ptr %14, align 8, !tbaa !179
  %111 = load ptr, ptr %15, align 8, !tbaa !125
  %112 = load ptr, ptr %16, align 8, !tbaa !44
  %113 = load ptr, ptr %6, align 8, !tbaa !30
  %114 = ptrtoint ptr %113 to i64
  %115 = ptrtoint ptr %112 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  call void %110(ptr noundef %111, ptr noundef %112, i32 noundef %117) #25
  %118 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %118, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  %119 = icmp ugt i32 %108, 1
  br i1 %119, label %104, label %126, !llvm.loop !212

120:                                              ; preds = %97
  %121 = load ptr, ptr %15, align 8, !tbaa !125
  %122 = ptrtoint ptr %53 to i64
  %123 = ptrtoint ptr %21 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  call void %95(ptr noundef %121, ptr noundef %21, i32 noundef %125) #25
  br label %126

126:                                              ; preds = %104, %120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %146

127:                                              ; preds = %52
  %128 = load ptr, ptr %12, align 8, !tbaa !202
  %129 = call fastcc i32 @reportProcessingInstruction(ptr noundef nonnull %0, ptr noundef %128, ptr noundef %21, ptr noundef %53), !range !236
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %157, label %146

131:                                              ; preds = %52
  %132 = load ptr, ptr %12, align 8, !tbaa !202
  %133 = call fastcc i32 @reportComment(ptr noundef nonnull %0, ptr noundef %132, ptr noundef %21, ptr noundef %53), !range !236
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %157, label %146

135:                                              ; preds = %52
  store ptr %53, ptr %11, align 8, !tbaa !200
  br label %157

136:                                              ; preds = %52
  %137 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %138 = load i8, ptr %137, align 4, !tbaa !199
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  store ptr %21, ptr %3, align 8, !tbaa !30
  br label %157

141:                                              ; preds = %52
  %142 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %143 = load i8, ptr %142, align 4, !tbaa !199
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  store ptr %21, ptr %3, align 8, !tbaa !30
  br label %157

146:                                              ; preds = %131, %127, %94, %126
  %147 = load i32, ptr %18, align 8, !tbaa !115
  switch i32 %147, label %155 [
    i32 3, label %148
    i32 2, label %150
    i32 1, label %152
  ]

148:                                              ; preds = %146
  %149 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %149, ptr %11, align 8, !tbaa !200
  store ptr %149, ptr %3, align 8, !tbaa !30
  br label %157

150:                                              ; preds = %146
  %151 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %151, ptr %11, align 8, !tbaa !200
  br label %157

152:                                              ; preds = %146
  %153 = load i8, ptr %19, align 8, !tbaa !116
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146, %152
  %156 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %156, ptr %11, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %20

157:                                              ; preds = %127, %131, %52, %152, %145, %140, %135, %150, %148, %93, %91, %86, %136, %141, %33, %37
  %158 = phi i32 [ 43, %37 ], [ 43, %33 ], [ 6, %141 ], [ 5, %136 ], [ 35, %86 ], [ 0, %91 ], [ 0, %93 ], [ 0, %148 ], [ 35, %150 ], [ 4, %135 ], [ 0, %140 ], [ 0, %145 ], [ 1, %127 ], [ 1, %131 ], [ 9, %52 ], [ 23, %152 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  ret i32 %158
}

declare i32 @XmlUtf8Encode(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @doCdataSection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i8, align 1
  %17 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #25
  %18 = load ptr, ptr %2, align 8, !tbaa !30
  store ptr %18, ptr %14, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %18, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  br label %29

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = getelementptr inbounds %struct.open_internal_entity, ptr %27, i64 0, i32 1
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi ptr [ %24, %22 ], [ %28, %25 ]
  %31 = phi ptr [ %23, %22 ], [ %27, %25 ]
  store ptr %18, ptr %31, align 8, !tbaa !30
  store ptr null, ptr %2, align 8, !tbaa !30
  %32 = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 2
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 16
  %34 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 13
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 12
  %37 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %38 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 21
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %42 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %44 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  br label %45

45:                                               ; preds = %263, %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #25
  %46 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %46, ptr %15, align 8, !tbaa !30
  %47 = load ptr, ptr %32, align 8, !tbaa !30
  %48 = call i32 %47(ptr noundef %1, ptr noundef %46, ptr noundef %3, ptr noundef nonnull %15) #25
  %49 = load ptr, ptr %14, align 8, !tbaa !30
  %50 = load ptr, ptr %15, align 8, !tbaa !30
  %51 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef %48, ptr noundef %49, ptr noundef %50, i32 noundef 4549, i32 noundef %6), !range !133
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %45, %53
  %54 = phi ptr [ %56, %53 ], [ %0, %45 ]
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 91
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !llvm.loop !26

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !119
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %265, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98
  %64 = load i64, ptr %63, align 8, !tbaa !37
  %65 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !213
  %67 = icmp eq i64 %64, 0
  %68 = uitofp i64 %64 to float
  %69 = select i1 %67, float 2.200000e+01, float %68
  %70 = select i1 %67, i64 22, i64 %64
  %71 = add i64 %70, %66
  %72 = uitofp i64 %71 to float
  %73 = fdiv float %72, %69
  %74 = load ptr, ptr @stderr, align 8, !tbaa !30
  %75 = fpext float %73 to double
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.330, ptr noundef nonnull %54, i64 noundef %64, i64 noundef %66, double noundef %75, ptr noundef nonnull @.str.336) #29
  br label %265

77:                                               ; preds = %45
  %78 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %78, ptr %30, align 8, !tbaa !30
  switch i32 %48, label %253 [
    i32 40, label %79
    i32 7, label %129
    i32 6, label %173
    i32 0, label %244
    i32 -2, label %245
    i32 -1, label %249
    i32 -4, label %249
  ]

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 20
  %81 = load ptr, ptr %80, align 8, !tbaa !178
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %35, align 8, !tbaa !125
  call void %81(ptr noundef %84) #25
  br label %124

85:                                               ; preds = %79
  %86 = load ptr, ptr %39, align 8, !tbaa !179
  %87 = icmp eq ptr %86, null
  br i1 %87, label %124, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %14, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12)
  store ptr %89, ptr %12, align 8, !tbaa !30
  %90 = load i8, ptr %34, align 4, !tbaa !210
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load ptr, ptr %19, align 8, !tbaa !202
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %40, align 8, !tbaa !73
  %97 = getelementptr inbounds %struct.open_internal_entity, ptr %96, i64 0, i32 1
  br label %98

98:                                               ; preds = %92, %95
  %99 = phi ptr [ %96, %95 ], [ %41, %92 ]
  %100 = phi ptr [ %97, %95 ], [ %42, %92 ]
  br label %101

101:                                              ; preds = %101, %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #25
  %102 = load ptr, ptr %36, align 8, !tbaa !44
  store ptr %102, ptr %13, align 8, !tbaa !30
  %103 = load ptr, ptr %37, align 8, !tbaa !211
  %104 = load ptr, ptr %38, align 8, !tbaa !45
  %105 = call i32 %103(ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef %78, ptr noundef nonnull %13, ptr noundef %104) #25
  %106 = load ptr, ptr %12, align 8, !tbaa !30
  store ptr %106, ptr %100, align 8, !tbaa !30
  %107 = load ptr, ptr %39, align 8, !tbaa !179
  %108 = load ptr, ptr %35, align 8, !tbaa !125
  %109 = load ptr, ptr %36, align 8, !tbaa !44
  %110 = load ptr, ptr %13, align 8, !tbaa !30
  %111 = ptrtoint ptr %110 to i64
  %112 = ptrtoint ptr %109 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  call void %107(ptr noundef %108, ptr noundef %109, i32 noundef %114) #25
  %115 = load ptr, ptr %12, align 8, !tbaa !30
  store ptr %115, ptr %99, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #25
  %116 = icmp ugt i32 %105, 1
  br i1 %116, label %101, label %123, !llvm.loop !212

117:                                              ; preds = %88
  %118 = load ptr, ptr %35, align 8, !tbaa !125
  %119 = ptrtoint ptr %78 to i64
  %120 = ptrtoint ptr %89 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  call void %86(ptr noundef %118, ptr noundef %89, i32 noundef %122) #25
  br label %123

123:                                              ; preds = %101, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12)
  br label %124

124:                                              ; preds = %85, %123, %83
  %125 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %125, ptr %2, align 8, !tbaa !30
  store ptr %125, ptr %4, align 8, !tbaa !30
  %126 = load i32, ptr %43, align 8, !tbaa !115
  %127 = icmp eq i32 %126, 2
  %128 = select i1 %127, i32 35, i32 0
  br label %265

129:                                              ; preds = %77
  %130 = load ptr, ptr %33, align 8, !tbaa !174
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #25
  store i8 10, ptr %16, align 1, !tbaa !5
  %133 = load ptr, ptr %35, align 8, !tbaa !125
  call void %130(ptr noundef %133, ptr noundef nonnull %16, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #25
  br label %254

134:                                              ; preds = %129
  %135 = load ptr, ptr %39, align 8, !tbaa !179
  %136 = icmp eq ptr %135, null
  br i1 %136, label %254, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %14, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store ptr %138, ptr %10, align 8, !tbaa !30
  %139 = load i8, ptr %34, align 4, !tbaa !210
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %137
  %142 = load ptr, ptr %19, align 8, !tbaa !202
  %143 = icmp eq ptr %142, %1
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %40, align 8, !tbaa !73
  %146 = getelementptr inbounds %struct.open_internal_entity, ptr %145, i64 0, i32 1
  br label %147

147:                                              ; preds = %141, %144
  %148 = phi ptr [ %145, %144 ], [ %41, %141 ]
  %149 = phi ptr [ %146, %144 ], [ %42, %141 ]
  br label %150

150:                                              ; preds = %150, %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  %151 = load ptr, ptr %36, align 8, !tbaa !44
  store ptr %151, ptr %11, align 8, !tbaa !30
  %152 = load ptr, ptr %37, align 8, !tbaa !211
  %153 = load ptr, ptr %38, align 8, !tbaa !45
  %154 = call i32 %152(ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef %78, ptr noundef nonnull %11, ptr noundef %153) #25
  %155 = load ptr, ptr %10, align 8, !tbaa !30
  store ptr %155, ptr %149, align 8, !tbaa !30
  %156 = load ptr, ptr %39, align 8, !tbaa !179
  %157 = load ptr, ptr %35, align 8, !tbaa !125
  %158 = load ptr, ptr %36, align 8, !tbaa !44
  %159 = load ptr, ptr %11, align 8, !tbaa !30
  %160 = ptrtoint ptr %159 to i64
  %161 = ptrtoint ptr %158 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  call void %156(ptr noundef %157, ptr noundef %158, i32 noundef %163) #25
  %164 = load ptr, ptr %10, align 8, !tbaa !30
  store ptr %164, ptr %148, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  %165 = icmp ugt i32 %154, 1
  br i1 %165, label %150, label %172, !llvm.loop !212

166:                                              ; preds = %137
  %167 = load ptr, ptr %35, align 8, !tbaa !125
  %168 = ptrtoint ptr %78 to i64
  %169 = ptrtoint ptr %138 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  call void %135(ptr noundef %167, ptr noundef %138, i32 noundef %171) #25
  br label %172

172:                                              ; preds = %150, %166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %254

173:                                              ; preds = %77
  %174 = load ptr, ptr %33, align 8, !tbaa !174
  %175 = icmp eq ptr %174, null
  br i1 %175, label %205, label %176

176:                                              ; preds = %173
  %177 = load i8, ptr %34, align 4, !tbaa !210
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %176, %195
  %180 = phi ptr [ %197, %195 ], [ %78, %176 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #25
  %181 = load ptr, ptr %36, align 8, !tbaa !44
  store ptr %181, ptr %17, align 8, !tbaa !30
  %182 = load ptr, ptr %37, align 8, !tbaa !211
  %183 = load ptr, ptr %38, align 8, !tbaa !45
  %184 = call i32 %182(ptr noundef %1, ptr noundef nonnull %14, ptr noundef %180, ptr noundef nonnull %17, ptr noundef %183) #25
  %185 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %185, ptr %30, align 8, !tbaa !30
  %186 = load ptr, ptr %35, align 8, !tbaa !125
  %187 = load ptr, ptr %36, align 8, !tbaa !44
  %188 = load ptr, ptr %17, align 8, !tbaa !30
  %189 = ptrtoint ptr %188 to i64
  %190 = ptrtoint ptr %187 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  call void %174(ptr noundef %186, ptr noundef %187, i32 noundef %192) #25
  %193 = icmp ult i32 %184, 2
  br i1 %193, label %194, label %195

194:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #25
  br label %254

195:                                              ; preds = %179
  %196 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %196, ptr %31, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #25
  %197 = load ptr, ptr %15, align 8, !tbaa !30
  br label %179

198:                                              ; preds = %176
  %199 = load ptr, ptr %35, align 8, !tbaa !125
  %200 = load ptr, ptr %14, align 8, !tbaa !30
  %201 = ptrtoint ptr %78 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  call void %174(ptr noundef %199, ptr noundef %200, i32 noundef %204) #25
  br label %254

205:                                              ; preds = %173
  %206 = load ptr, ptr %39, align 8, !tbaa !179
  %207 = icmp eq ptr %206, null
  br i1 %207, label %254, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %14, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %209, ptr %8, align 8, !tbaa !30
  %210 = load i8, ptr %34, align 4, !tbaa !210
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %208
  %213 = load ptr, ptr %19, align 8, !tbaa !202
  %214 = icmp eq ptr %213, %1
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %40, align 8, !tbaa !73
  %217 = getelementptr inbounds %struct.open_internal_entity, ptr %216, i64 0, i32 1
  br label %218

218:                                              ; preds = %212, %215
  %219 = phi ptr [ %216, %215 ], [ %41, %212 ]
  %220 = phi ptr [ %217, %215 ], [ %42, %212 ]
  br label %221

221:                                              ; preds = %221, %218
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %222 = load ptr, ptr %36, align 8, !tbaa !44
  store ptr %222, ptr %9, align 8, !tbaa !30
  %223 = load ptr, ptr %37, align 8, !tbaa !211
  %224 = load ptr, ptr %38, align 8, !tbaa !45
  %225 = call i32 %223(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef %78, ptr noundef nonnull %9, ptr noundef %224) #25
  %226 = load ptr, ptr %8, align 8, !tbaa !30
  store ptr %226, ptr %220, align 8, !tbaa !30
  %227 = load ptr, ptr %39, align 8, !tbaa !179
  %228 = load ptr, ptr %35, align 8, !tbaa !125
  %229 = load ptr, ptr %36, align 8, !tbaa !44
  %230 = load ptr, ptr %9, align 8, !tbaa !30
  %231 = ptrtoint ptr %230 to i64
  %232 = ptrtoint ptr %229 to i64
  %233 = sub i64 %231, %232
  %234 = trunc i64 %233 to i32
  call void %227(ptr noundef %228, ptr noundef %229, i32 noundef %234) #25
  %235 = load ptr, ptr %8, align 8, !tbaa !30
  store ptr %235, ptr %219, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %236 = icmp ugt i32 %225, 1
  br i1 %236, label %221, label %243, !llvm.loop !212

237:                                              ; preds = %208
  %238 = load ptr, ptr %35, align 8, !tbaa !125
  %239 = ptrtoint ptr %78 to i64
  %240 = ptrtoint ptr %209 to i64
  %241 = sub i64 %239, %240
  %242 = trunc i64 %241 to i32
  call void %206(ptr noundef %238, ptr noundef %209, i32 noundef %242) #25
  br label %243

243:                                              ; preds = %221, %237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %254

244:                                              ; preds = %77
  store ptr %78, ptr %31, align 8, !tbaa !30
  br label %265

245:                                              ; preds = %77
  %246 = icmp eq i8 %5, 0
  br i1 %246, label %265, label %247

247:                                              ; preds = %245
  %248 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %248, ptr %4, align 8, !tbaa !30
  br label %265

249:                                              ; preds = %77, %77
  %250 = icmp eq i8 %5, 0
  br i1 %250, label %265, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %14, align 8, !tbaa !30
  store ptr %252, ptr %4, align 8, !tbaa !30
  br label %265

253:                                              ; preds = %77
  store ptr %78, ptr %31, align 8, !tbaa !30
  br label %265

254:                                              ; preds = %194, %198, %243, %205, %132, %172, %134
  %255 = load i32, ptr %43, align 8, !tbaa !115
  switch i32 %255, label %263 [
    i32 3, label %256
    i32 2, label %258
    i32 1, label %260
  ]

256:                                              ; preds = %254
  %257 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %257, ptr %31, align 8, !tbaa !30
  store ptr %257, ptr %4, align 8, !tbaa !30
  br label %265

258:                                              ; preds = %254
  %259 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %259, ptr %31, align 8, !tbaa !30
  br label %265

260:                                              ; preds = %254
  %261 = load i8, ptr %44, align 8, !tbaa !116
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %254, %260
  %264 = load ptr, ptr %15, align 8, !tbaa !30
  store ptr %264, ptr %14, align 8, !tbaa !30
  store ptr %264, ptr %31, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #25
  br label %45

265:                                              ; preds = %260, %253, %251, %247, %244, %258, %256, %124, %245, %249, %58, %62
  %266 = phi i32 [ 43, %62 ], [ 43, %58 ], [ 20, %249 ], [ 6, %245 ], [ %128, %124 ], [ 0, %256 ], [ 35, %258 ], [ 4, %244 ], [ 0, %247 ], [ 0, %251 ], [ 23, %253 ], [ 23, %260 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #25
  ret i32 %266
}

; Function Attrs: nounwind uwtable
define internal i32 @cdataSectionProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %9 = load i8, ptr %8, align 4, !tbaa !199
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  %12 = call fastcc i32 @doCdataSection(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %11, i32 noundef 0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !tbaa !30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 91
  %19 = load ptr, ptr %18, align 8, !tbaa !8
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  br i1 %20, label %24, label %22

22:                                               ; preds = %17
  store ptr @externalEntityContentProcessor, ptr %21, align 8, !tbaa !103
  %23 = tail call i32 @externalEntityContentProcessor(ptr noundef nonnull %0, ptr noundef nonnull %15, ptr noundef %2, ptr noundef %3)
  br label %26

24:                                               ; preds = %17
  store ptr @contentProcessor, ptr %21, align 8, !tbaa !103
  %25 = tail call i32 @contentProcessor(ptr noundef nonnull %0, ptr noundef nonnull %15, ptr noundef %2, ptr noundef %3)
  br label %26

26:                                               ; preds = %14, %4, %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ], [ %12, %4 ], [ 0, %14 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @poolGrow(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  store ptr %3, ptr %0, align 8, !tbaa !86
  %10 = load ptr, ptr %3, align 8, !tbaa !30
  store ptr %10, ptr %2, align 8, !tbaa !85
  store ptr null, ptr %3, align 8, !tbaa !30
  %11 = load ptr, ptr %0, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.block, ptr %11, i64 0, i32 2
  store ptr %12, ptr %6, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.block, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !33
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 3
  store ptr %12, ptr %18, align 8, !tbaa !132
  br label %138

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !131
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %7 to i64
  %24 = sub i64 %22, %23
  %25 = getelementptr inbounds %struct.block, ptr %3, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !33
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %19
  %30 = load ptr, ptr %3, align 8, !tbaa !30
  %31 = load ptr, ptr %0, align 8, !tbaa !86
  store ptr %31, ptr %3, align 8, !tbaa !30
  %32 = load ptr, ptr %2, align 8, !tbaa !85
  store ptr %32, ptr %0, align 8, !tbaa !86
  store ptr %30, ptr %2, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.block, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %6, align 8, !tbaa !134
  %35 = load ptr, ptr %20, align 8, !tbaa !131
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %36, %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %33, ptr align 1 %34, i64 %38, i1 false)
  %39 = load ptr, ptr %0, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.block, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = load ptr, ptr %6, align 8, !tbaa !134
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = getelementptr inbounds i8, ptr %40, i64 %46
  store ptr %47, ptr %41, align 8, !tbaa !132
  store ptr %40, ptr %6, align 8, !tbaa !134
  %48 = getelementptr inbounds %struct.block, ptr %39, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !33
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %40, i64 %50
  store ptr %51, ptr %20, align 8, !tbaa !131
  br label %138

52:                                               ; preds = %19, %1
  %53 = load ptr, ptr %0, align 8, !tbaa !86
  %54 = icmp ne ptr %53, null
  %55 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !134
  %57 = getelementptr inbounds %struct.block, ptr %53, i64 0, i32 2
  %58 = icmp eq ptr %56, %57
  %59 = select i1 %54, i1 %58, i1 false
  %60 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !131
  br i1 %59, label %62, label %91

62:                                               ; preds = %52
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %56 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 1
  %68 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !132
  %70 = ptrtoint ptr %69 to i64
  %71 = sub i64 %70, %64
  %72 = icmp slt i32 %67, 0
  br i1 %72, label %138, label %73

73:                                               ; preds = %62
  %74 = add nuw i32 %67, 12
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0)
  %76 = icmp eq i32 %67, 0
  %77 = icmp eq i32 %75, 0
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %138, label %79

79:                                               ; preds = %73
  %80 = zext nneg i32 %75 to i64
  %81 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = tail call fastcc ptr @expat_realloc(ptr noundef %82, ptr noundef nonnull %53, i64 noundef %80, i32 noundef 8107)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %138, label %85

85:                                               ; preds = %79
  store ptr %83, ptr %0, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.block, ptr %83, i64 0, i32 1
  store i32 %67, ptr %86, align 8, !tbaa !33
  %87 = getelementptr inbounds %struct.block, ptr %83, i64 0, i32 2
  %88 = getelementptr inbounds i8, ptr %87, i64 %71
  store ptr %88, ptr %68, align 8, !tbaa !132
  store ptr %87, ptr %55, align 8, !tbaa !134
  %89 = zext nneg i32 %67 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  store ptr %90, ptr %60, align 8, !tbaa !131
  br label %138

91:                                               ; preds = %52
  %92 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 4
  %93 = ptrtoint ptr %61 to i64
  %94 = ptrtoint ptr %56 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %138, label %98

98:                                               ; preds = %91
  %99 = icmp ult i32 %96, 1024
  br i1 %99, label %103, label %100

100:                                              ; preds = %98
  %101 = shl nuw i32 %96, 1
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %138, label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ 1024, %98 ], [ %101, %100 ]
  %105 = add nuw i32 %104, 12
  %106 = tail call i32 @llvm.smax.i32(i32 %105, i32 0)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %138, label %108

108:                                              ; preds = %103
  %109 = zext nneg i32 %106 to i64
  %110 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = tail call fastcc ptr @expat_malloc(ptr noundef %111, i64 noundef %109, i32 noundef 8147)
  %113 = icmp eq ptr %112, null
  br i1 %113, label %138, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 1
  store i32 %104, ptr %115, align 8, !tbaa !33
  %116 = load ptr, ptr %0, align 8, !tbaa !86
  store ptr %116, ptr %112, align 8, !tbaa !30
  store ptr %112, ptr %0, align 8, !tbaa !86
  %117 = getelementptr inbounds %struct.STRING_POOL, ptr %0, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !132
  %119 = load ptr, ptr %92, align 8, !tbaa !134
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 2
  %123 = ptrtoint ptr %118 to i64
  %124 = ptrtoint ptr %119 to i64
  %125 = sub i64 %123, %124
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %122, ptr align 1 %119, i64 %125, i1 false)
  %126 = load ptr, ptr %117, align 8, !tbaa !132
  %127 = load ptr, ptr %92, align 8, !tbaa !134
  br label %128

128:                                              ; preds = %114, %121
  %129 = phi ptr [ %118, %114 ], [ %127, %121 ]
  %130 = phi ptr [ %118, %114 ], [ %126, %121 ]
  %131 = getelementptr inbounds %struct.block, ptr %112, i64 0, i32 2
  %132 = ptrtoint ptr %130 to i64
  %133 = ptrtoint ptr %129 to i64
  %134 = sub i64 %132, %133
  %135 = getelementptr inbounds i8, ptr %131, i64 %134
  store ptr %135, ptr %117, align 8, !tbaa !132
  store ptr %131, ptr %92, align 8, !tbaa !134
  %136 = zext nneg i32 %104 to i64
  %137 = getelementptr inbounds i8, ptr %131, i64 %136
  store ptr %137, ptr %60, align 8, !tbaa !131
  br label %138

138:                                              ; preds = %108, %103, %100, %91, %79, %73, %62, %85, %128, %29, %9
  %139 = phi i8 [ 1, %9 ], [ 1, %29 ], [ 1, %128 ], [ 1, %85 ], [ 0, %62 ], [ 0, %73 ], [ 0, %79 ], [ 0, %91 ], [ 0, %100 ], [ 0, %103 ], [ 0, %108 ]
  ret i8 %139
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @setElementTypePrefix(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = load ptr, ptr %1, align 8, !tbaa !143
  br label %6

6:                                                ; preds = %60, %2
  %7 = phi ptr [ %5, %2 ], [ %61, %60 ]
  %8 = load i8, ptr %7, align 1, !tbaa !5
  switch i8 %8, label %60 [
    i8 0, label %62
    i8 58, label %9
  ]

9:                                                ; preds = %6
  %10 = icmp eq ptr %5, %7
  br i1 %10, label %31, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4, i32 3
  %13 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4, i32 2
  %14 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4
  br label %15

15:                                               ; preds = %11, %26
  %16 = phi ptr [ %5, %11 ], [ %29, %26 ]
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = load ptr, ptr %12, align 8, !tbaa !132
  %19 = load ptr, ptr %13, align 8, !tbaa !131
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %14), !range !133
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %12, align 8, !tbaa !132
  br label %26

26:                                               ; preds = %15, %24
  %27 = phi ptr [ %25, %24 ], [ %18, %15 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %28, ptr %12, align 8, !tbaa !132
  store i8 %17, ptr %27, align 1, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %16, i64 1
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %31, label %15, !llvm.loop !353

31:                                               ; preds = %26, %9
  %32 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !132
  %34 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !131
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4
  %39 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %38), !range !133
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %32, align 8, !tbaa !132
  br label %43

43:                                               ; preds = %31, %41
  %44 = phi ptr [ %42, %41 ], [ %33, %31 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %32, align 8, !tbaa !132
  store i8 0, ptr %44, align 1, !tbaa !5
  %46 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 3
  %47 = getelementptr inbounds %struct.DTD, ptr %4, i64 0, i32 4, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !161
  %49 = tail call fastcc ptr @lookup(ptr noundef %0, ptr noundef nonnull %46, ptr noundef %48, i64 noundef 16)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %49, align 8, !tbaa !130
  %53 = load ptr, ptr %47, align 8, !tbaa !161
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr %32, align 8, !tbaa !229
  store ptr %56, ptr %47, align 8, !tbaa !161
  br label %58

57:                                               ; preds = %51
  store ptr %53, ptr %32, align 8, !tbaa !229
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr inbounds %struct.ELEMENT_TYPE, ptr %1, i64 0, i32 1
  store ptr %49, ptr %59, align 8, !tbaa !148
  br label %62

60:                                               ; preds = %6
  %61 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !354

62:                                               ; preds = %6, %21, %37, %58, %43
  %63 = phi i32 [ 0, %43 ], [ 1, %58 ], [ 0, %37 ], [ 0, %21 ], [ 1, %6 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @addBinding(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = load i8, ptr %3, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr %1, align 8, !tbaa !130
  %9 = icmp eq ptr %8, null
  br i1 %7, label %10, label %11

10:                                               ; preds = %5
  br i1 %9, label %84, label %186

11:                                               ; preds = %5
  br i1 %9, label %35, label %12

12:                                               ; preds = %11
  %13 = load i8, ptr %8, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 120
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %8, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 109
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %8, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 108
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %8, i64 3
  %25 = load i8, ptr %24, align 1, !tbaa !5
  switch i8 %25, label %35 [
    i8 110, label %26
    i8 0, label %34
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %8, i64 4
  %28 = load i8, ptr %27, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 115
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %8, i64 5
  %32 = load i8, ptr %31, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %186, label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %23, %26, %30, %34, %19, %15, %12, %11
  %36 = phi i32 [ 40, %23 ], [ 40, %26 ], [ 40, %30 ], [ 40, %11 ], [ 40, %12 ], [ 40, %15 ], [ 40, %19 ], [ 38, %34 ]
  %37 = phi i1 [ true, %23 ], [ true, %26 ], [ true, %30 ], [ true, %11 ], [ true, %12 ], [ true, %15 ], [ true, %19 ], [ false, %34 ]
  %38 = phi i8 [ 0, %23 ], [ 0, %26 ], [ 0, %30 ], [ 0, %11 ], [ 0, %12 ], [ 0, %15 ], [ 0, %19 ], [ 1, %34 ]
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 41
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  br label %41

41:                                               ; preds = %35, %75
  %42 = phi i64 [ 0, %35 ], [ %76, %75 ]
  %43 = phi i8 [ %6, %35 ], [ %78, %75 ]
  %44 = phi i8 [ 1, %35 ], [ %68, %75 ]
  %45 = phi i8 [ 1, %35 ], [ %57, %75 ]
  %46 = icmp eq i64 %42, 2147483647
  br i1 %46, label %186, label %47

47:                                               ; preds = %41
  %48 = icmp eq i8 %45, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = icmp ugt i64 %42, 36
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds [37 x i8], ptr @addBinding.xmlNamespace, i64 0, i64 %42
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = icmp eq i8 %43, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %49
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = phi i8 [ 0, %55 ], [ %45, %51 ], [ 0, %47 ]
  %58 = icmp ne i8 %44, 0
  %59 = select i1 %37, i1 %58, i1 false
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = icmp ugt i64 %42, 29
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds [30 x i8], ptr @addBinding.xmlnsNamespace, i64 0, i64 %42
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = icmp eq i8 %43, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %60
  br label %67

67:                                               ; preds = %66, %62, %56
  %68 = phi i8 [ 0, %66 ], [ %44, %62 ], [ %44, %56 ]
  %69 = load i8, ptr %39, align 8, !tbaa !60
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8, ptr %40, align 8, !tbaa !59
  %73 = icmp eq i8 %43, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  switch i8 %43, label %186 [
    i8 65, label %75
    i8 66, label %75
    i8 67, label %75
    i8 68, label %75
    i8 69, label %75
    i8 70, label %75
    i8 71, label %75
    i8 72, label %75
    i8 73, label %75
    i8 74, label %75
    i8 75, label %75
    i8 76, label %75
    i8 77, label %75
    i8 78, label %75
    i8 79, label %75
    i8 80, label %75
    i8 81, label %75
    i8 82, label %75
    i8 83, label %75
    i8 84, label %75
    i8 85, label %75
    i8 86, label %75
    i8 87, label %75
    i8 88, label %75
    i8 89, label %75
    i8 90, label %75
    i8 97, label %75
    i8 98, label %75
    i8 99, label %75
    i8 100, label %75
    i8 101, label %75
    i8 102, label %75
    i8 103, label %75
    i8 104, label %75
    i8 105, label %75
    i8 106, label %75
    i8 107, label %75
    i8 108, label %75
    i8 109, label %75
    i8 110, label %75
    i8 111, label %75
    i8 112, label %75
    i8 113, label %75
    i8 114, label %75
    i8 115, label %75
    i8 116, label %75
    i8 117, label %75
    i8 118, label %75
    i8 119, label %75
    i8 120, label %75
    i8 121, label %75
    i8 122, label %75
    i8 48, label %75
    i8 49, label %75
    i8 50, label %75
    i8 51, label %75
    i8 52, label %75
    i8 53, label %75
    i8 54, label %75
    i8 55, label %75
    i8 56, label %75
    i8 57, label %75
    i8 37, label %75
    i8 45, label %75
    i8 46, label %75
    i8 95, label %75
    i8 126, label %75
    i8 58, label %75
    i8 47, label %75
    i8 63, label %75
    i8 35, label %75
    i8 91, label %75
    i8 93, label %75
    i8 64, label %75
    i8 33, label %75
    i8 36, label %75
    i8 38, label %75
    i8 39, label %75
    i8 40, label %75
    i8 41, label %75
    i8 42, label %75
    i8 43, label %75
    i8 44, label %75
    i8 59, label %75
    i8 61, label %75
  ]

75:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %74, %67, %71
  %76 = add nuw nsw i64 %42, 1
  %77 = getelementptr inbounds i8, ptr %3, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %41, !llvm.loop !355

80:                                               ; preds = %75
  %81 = trunc i64 %76 to i32
  %82 = icmp ne i8 %57, 0
  %83 = icmp ne i8 %68, 0
  br label %84

84:                                               ; preds = %10, %80
  %85 = phi i8 [ %38, %80 ], [ 0, %10 ]
  %86 = phi i32 [ %36, %80 ], [ 40, %10 ]
  %87 = phi i1 [ %82, %80 ], [ true, %10 ]
  %88 = phi i1 [ %83, %80 ], [ true, %10 ]
  %89 = phi i32 [ %81, %80 ], [ 0, %10 ]
  %90 = icmp eq i32 %89, 36
  %91 = and i1 %87, %90
  %92 = zext i1 %91 to i8
  %93 = icmp eq i8 %85, %92
  br i1 %93, label %94, label %186

94:                                               ; preds = %84
  %95 = icmp eq i32 %89, 29
  %96 = and i1 %88, %95
  br i1 %96, label %186, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 90
  %99 = load i8, ptr %98, align 8, !tbaa !59
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = icmp eq i32 %89, 2147483647
  br i1 %102, label %186, label %103

103:                                              ; preds = %101
  %104 = add nuw nsw i32 %89, 1
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi i32 [ %104, %103 ], [ %89, %97 ]
  %107 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 77
  %108 = load ptr, ptr %107, align 8, !tbaa !52
  %109 = icmp eq ptr %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.binding, ptr %108, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !351
  %113 = icmp sgt i32 %106, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.binding, ptr %108, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !165
  br label %127

117:                                              ; preds = %110
  %118 = icmp sgt i32 %106, 2147483623
  br i1 %118, label %186, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.binding, ptr %108, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !165
  %122 = add nsw i32 %106, 24
  %123 = sext i32 %122 to i64
  %124 = tail call fastcc ptr @expat_realloc(ptr noundef nonnull %0, ptr noundef %121, i64 noundef %123, i32 noundef 4447)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %186, label %126

126:                                              ; preds = %119
  store ptr %124, ptr %120, align 8, !tbaa !165
  store i32 %122, ptr %111, align 4, !tbaa !351
  br label %127

127:                                              ; preds = %114, %126
  %128 = phi ptr [ %116, %114 ], [ %124, %126 ]
  %129 = getelementptr inbounds %struct.binding, ptr %108, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !69
  store ptr %130, ptr %107, align 8, !tbaa !52
  br label %145

131:                                              ; preds = %105
  %132 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef 48, i32 noundef 4455)
  %133 = icmp eq ptr %132, null
  %134 = icmp sgt i32 %106, 2147483623
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %186, label %136

136:                                              ; preds = %131
  %137 = add nsw i32 %106, 24
  %138 = sext i32 %137 to i64
  %139 = tail call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %138, i32 noundef 4473)
  %140 = getelementptr inbounds %struct.binding, ptr %132, i64 0, i32 4
  store ptr %139, ptr %140, align 8, !tbaa !165
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  tail call fastcc void @expat_free(ptr noundef nonnull %0, ptr noundef nonnull %132, i32 noundef 4475)
  br label %186

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.binding, ptr %132, i64 0, i32 6
  store i32 %137, ptr %144, align 4, !tbaa !351
  br label %145

145:                                              ; preds = %143, %127
  %146 = phi ptr [ %128, %127 ], [ %139, %143 ]
  %147 = phi ptr [ %108, %127 ], [ %132, %143 ]
  %148 = getelementptr inbounds %struct.binding, ptr %147, i64 0, i32 5
  store i32 %106, ptr %148, align 8, !tbaa !318
  %149 = sext i32 %106 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %146, ptr nonnull align 1 %3, i64 %149, i1 false)
  %150 = load i8, ptr %98, align 8, !tbaa !59
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.binding, ptr %147, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !165
  %155 = getelementptr i8, ptr %154, i64 %149
  %156 = getelementptr i8, ptr %155, i64 -1
  store i8 %150, ptr %156, align 1, !tbaa !5
  br label %157

157:                                              ; preds = %152, %145
  store ptr %1, ptr %147, align 8, !tbaa !307
  %158 = getelementptr inbounds %struct.binding, ptr %147, i64 0, i32 3
  store ptr %2, ptr %158, align 8, !tbaa !344
  %159 = getelementptr inbounds %struct.prefix, ptr %1, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !309
  %161 = getelementptr inbounds %struct.binding, ptr %147, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !308
  %162 = load i8, ptr %3, align 1, !tbaa !5
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %166 = load ptr, ptr %165, align 8, !tbaa !51
  %167 = getelementptr inbounds %struct.DTD, ptr %166, i64 0, i32 11
  %168 = icmp eq ptr %167, %1
  br i1 %168, label %170, label %169

169:                                              ; preds = %164, %157
  br label %170

170:                                              ; preds = %164, %169
  %171 = phi ptr [ %147, %169 ], [ null, %164 ]
  store ptr %171, ptr %159, align 8, !tbaa !309
  %172 = load ptr, ptr %4, align 8, !tbaa !30
  %173 = getelementptr inbounds %struct.binding, ptr %147, i64 0, i32 1
  store ptr %172, ptr %173, align 8, !tbaa !69
  store ptr %147, ptr %4, align 8, !tbaa !30
  %174 = icmp eq ptr %2, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 26
  %177 = load ptr, ptr %176, align 8, !tbaa !184
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !125
  %182 = load ptr, ptr %1, align 8, !tbaa !130
  %183 = load ptr, ptr %159, align 8, !tbaa !309
  %184 = icmp eq ptr %183, null
  %185 = select i1 %184, ptr null, ptr %3
  tail call void %177(ptr noundef %181, ptr noundef %182, ptr noundef %185) #25
  br label %186

186:                                              ; preds = %74, %41, %119, %170, %175, %179, %131, %117, %101, %94, %84, %30, %10, %142
  %187 = phi i32 [ 1, %142 ], [ 28, %10 ], [ 39, %30 ], [ %86, %84 ], [ 40, %94 ], [ 1, %101 ], [ 1, %117 ], [ 1, %131 ], [ 0, %179 ], [ 0, %175 ], [ 0, %170 ], [ 1, %119 ], [ 2, %74 ], [ 1, %41 ]
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityContentProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %8 = load i8, ptr %7, align 4, !tbaa !199
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  %11 = tail call fastcc i32 @doContent(ptr noundef %0, i32 noundef 1, ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %10, i32 noundef 1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 74
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %73, label %17

17:                                               ; preds = %13, %67
  %18 = phi ptr [ %71, %67 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 3
  %20 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 3, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !282
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds i8, ptr %25, i64 %23
  %27 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !283
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %73, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !284
  %33 = sext i32 %32 to i64
  %34 = xor i64 %23, -1
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %73, label %36

36:                                               ; preds = %30
  %37 = add nsw i64 %33, %23
  %38 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !285
  %40 = ptrtoint ptr %39 to i64
  %41 = ptrtoint ptr %25 to i64
  %42 = sub i64 %40, %41
  %43 = icmp ugt i64 %37, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = tail call fastcc ptr @expat_realloc(ptr noundef %0, ptr noundef %25, i64 noundef %37, i32 noundef 3083)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %19, align 8, !tbaa !286
  %49 = load ptr, ptr %24, align 8, !tbaa !5
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store ptr %45, ptr %19, align 8, !tbaa !286
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.tag, ptr %18, i64 0, i32 3, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !287
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = ptrtoint ptr %54 to i64
  %58 = ptrtoint ptr %49 to i64
  %59 = sub i64 %57, %58
  %60 = getelementptr inbounds i8, ptr %45, i64 %59
  store ptr %60, ptr %53, align 8, !tbaa !287
  br label %61

61:                                               ; preds = %56, %52
  store ptr %45, ptr %24, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, ptr %45, i64 %37
  store ptr %62, ptr %38, align 8, !tbaa !285
  %63 = getelementptr inbounds i8, ptr %45, i64 %23
  %64 = load ptr, ptr %27, align 8, !tbaa !283
  %65 = load i32, ptr %31, align 8, !tbaa !284
  %66 = sext i32 %65 to i64
  br label %67

67:                                               ; preds = %61, %36
  %68 = phi i64 [ %33, %36 ], [ %66, %61 ]
  %69 = phi ptr [ %28, %36 ], [ %64, %61 ]
  %70 = phi ptr [ %26, %36 ], [ %63, %61 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %69, i64 %68, i1 false)
  store ptr %70, ptr %27, align 8, !tbaa !283
  %71 = load ptr, ptr %18, align 8, !tbaa !30
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %17

73:                                               ; preds = %67, %17, %44, %30, %13, %4
  %74 = phi i32 [ %11, %4 ], [ 0, %13 ], [ 0, %67 ], [ 0, %17 ], [ 1, %44 ], [ 1, %30 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @appendAttributeValue(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef writeonly %7) unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i8, align 1
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 12
  %19 = getelementptr inbounds i8, ptr %13, i64 1
  %20 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 3
  %21 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 2
  %22 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 3
  %24 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 2
  %26 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 87, i32 4
  %27 = getelementptr inbounds %struct.HASH_TABLE, ptr %15, i64 0, i32 2
  %28 = getelementptr inbounds %struct.HASH_TABLE, ptr %15, i64 0, i32 1
  %29 = getelementptr inbounds %struct.DTD, ptr %15, i64 0, i32 4
  %30 = icmp eq ptr %29, %5
  %31 = getelementptr inbounds %struct.DTD, ptr %15, i64 0, i32 7
  %32 = getelementptr inbounds %struct.DTD, ptr %15, i64 0, i32 8
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 4
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %35 = icmp eq i8 %2, 0
  %36 = getelementptr inbounds %struct.STRING_POOL, ptr %5, i64 0, i32 4
  %37 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 6
  br label %38

38:                                               ; preds = %354, %8
  %39 = phi ptr [ %3, %8 ], [ %355, %354 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  store ptr %39, ptr %11, align 8, !tbaa !30
  %40 = load ptr, ptr %16, align 8, !tbaa !30
  %41 = call i32 %40(ptr noundef %1, ptr noundef %39, ptr noundef %4, ptr noundef nonnull %11) #25
  %42 = load ptr, ptr %11, align 8, !tbaa !30
  %43 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef %41, ptr noundef %39, ptr noundef %42, i32 noundef 6523, i32 noundef %6), !range !133
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %38, %45
  %46 = phi ptr [ %48, %45 ], [ %0, %38 ]
  %47 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 91
  %48 = load ptr, ptr %47, align 8, !tbaa !8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %45, !llvm.loop !26

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 98, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !119
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %356, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 98
  %56 = load i64, ptr %55, align 8, !tbaa !37
  %57 = getelementptr inbounds %struct.XML_ParserStruct, ptr %46, i64 0, i32 98, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !213
  %59 = icmp eq i64 %56, 0
  %60 = uitofp i64 %56 to float
  %61 = select i1 %59, float 2.200000e+01, float %60
  %62 = select i1 %59, i64 22, i64 %56
  %63 = add i64 %62, %58
  %64 = uitofp i64 %63 to float
  %65 = fdiv float %64, %61
  %66 = load ptr, ptr @stderr, align 8, !tbaa !30
  %67 = fpext float %65 to double
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.330, ptr noundef nonnull %46, i64 noundef %56, i64 noundef %58, double noundef %67, ptr noundef nonnull @.str.336) #29
  br label %356

69:                                               ; preds = %38
  switch i32 %41, label %348 [
    i32 -4, label %70
    i32 0, label %74
    i32 -1, label %81
    i32 10, label %87
    i32 6, label %127
    i32 -3, label %147
    i32 39, label %151
    i32 7, label %151
    i32 9, label %171
  ]

70:                                               ; preds = %69
  %71 = icmp eq ptr %7, null
  br i1 %71, label %356, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %73, ptr %7, align 8, !tbaa !30
  br label %356

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %76 = load ptr, ptr %75, align 8, !tbaa !202
  %77 = icmp eq ptr %76, %1
  br i1 %77, label %78, label %356

78:                                               ; preds = %74
  %79 = load ptr, ptr %11, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %79, ptr %80, align 8, !tbaa !200
  br label %356

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %83 = load ptr, ptr %82, align 8, !tbaa !202
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %85, label %356

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %86, align 8, !tbaa !200
  br label %356

87:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #25
  %88 = load ptr, ptr %37, align 8, !tbaa !316
  %89 = call i32 %88(ptr noundef nonnull %1, ptr noundef %39) #25
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %93 = load ptr, ptr %92, align 8, !tbaa !202
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %96, align 8, !tbaa !200
  br label %124

97:                                               ; preds = %87
  %98 = icmp eq i32 %89, 32
  %99 = and i1 %35, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load ptr, ptr %20, align 8, !tbaa !132
  %102 = load ptr, ptr %36, align 8, !tbaa !134
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %126, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %101, i64 -1
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 32
  br i1 %107, label %126, label %108

108:                                              ; preds = %104, %97
  %109 = call i32 @XmlUtf8Encode(i32 noundef %89, ptr noundef nonnull %12) #25
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %118, %108
  %112 = load ptr, ptr %21, align 8, !tbaa !131
  %113 = load ptr, ptr %20, align 8, !tbaa !132
  %114 = ptrtoint ptr %112 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = icmp ult i64 %116, %110
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %111

121:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %113, ptr nonnull align 1 %12, i64 %110, i1 false)
  %122 = load ptr, ptr %20, align 8, !tbaa !132
  %123 = getelementptr inbounds i8, ptr %122, i64 %110
  store ptr %123, ptr %20, align 8, !tbaa !132
  br label %126

124:                                              ; preds = %118, %95, %91
  %125 = phi i32 [ 14, %91 ], [ 14, %95 ], [ 1, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #25
  br label %356

126:                                              ; preds = %121, %100, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #25
  br label %354

127:                                              ; preds = %69
  %128 = load ptr, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store ptr %39, ptr %10, align 8, !tbaa !30
  %129 = load ptr, ptr %20, align 8, !tbaa !132
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %140
  %136 = load ptr, ptr %24, align 8, !tbaa !211
  %137 = load ptr, ptr %21, align 8, !tbaa !131
  %138 = call i32 %136(ptr noundef %1, ptr noundef nonnull %10, ptr noundef %128, ptr noundef nonnull %20, ptr noundef %137) #25
  %139 = icmp ult i32 %138, 2
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %135

143:                                              ; preds = %131, %140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %356

144:                                              ; preds = %135
  %145 = load ptr, ptr %36, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %356, label %354

147:                                              ; preds = %69
  %148 = load i32, ptr %18, align 8, !tbaa !226
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %39, i64 %149
  store ptr %150, ptr %11, align 8, !tbaa !30
  br label %151

151:                                              ; preds = %69, %69, %147
  %152 = load ptr, ptr %20, align 8, !tbaa !132
  br i1 %35, label %153, label %160

153:                                              ; preds = %151
  %154 = load ptr, ptr %36, align 8, !tbaa !134
  %155 = icmp eq ptr %152, %154
  br i1 %155, label %354, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds i8, ptr %152, i64 -1
  %158 = load i8, ptr %157, align 1, !tbaa !5
  %159 = icmp eq i8 %158, 32
  br i1 %159, label %354, label %160

160:                                              ; preds = %156, %151
  %161 = load ptr, ptr %21, align 8, !tbaa !131
  %162 = icmp eq ptr %152, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %356, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %20, align 8, !tbaa !132
  br label %168

168:                                              ; preds = %160, %166
  %169 = phi ptr [ %167, %166 ], [ %152, %160 ]
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %170, ptr %20, align 8, !tbaa !132
  store i8 32, ptr %169, align 1, !tbaa !5
  br label %354

171:                                              ; preds = %69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #25
  %172 = load ptr, ptr %17, align 8, !tbaa !250
  %173 = load i32, ptr %18, align 8, !tbaa !226
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %39, i64 %174
  %176 = load ptr, ptr %11, align 8, !tbaa !30
  %177 = sub nsw i64 0, %174
  %178 = getelementptr inbounds i8, ptr %176, i64 %177
  %179 = call i32 %172(ptr noundef nonnull %1, ptr noundef %175, ptr noundef %178) #25
  %180 = trunc i32 %179 to i8
  store i8 %180, ptr %13, align 1, !tbaa !5
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %171
  %183 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %13, ptr noundef nonnull %19, i32 noundef 6593, i32 noundef 1), !range !133
  %184 = load i8, ptr %13, align 1, !tbaa !5
  %185 = load ptr, ptr %20, align 8, !tbaa !132
  %186 = load ptr, ptr %21, align 8, !tbaa !131
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %5), !range !133
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %345, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %20, align 8, !tbaa !132
  br label %193

193:                                              ; preds = %182, %191
  %194 = phi ptr [ %192, %191 ], [ %185, %182 ]
  %195 = getelementptr inbounds i8, ptr %194, i64 1
  store ptr %195, ptr %20, align 8, !tbaa !132
  store i8 %184, ptr %194, align 1, !tbaa !5
  br label %347

196:                                              ; preds = %171
  %197 = load i32, ptr %18, align 8, !tbaa !226
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, ptr %39, i64 %198
  %200 = load ptr, ptr %11, align 8, !tbaa !30
  %201 = sub nsw i64 0, %198
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store ptr %199, ptr %9, align 8, !tbaa !30
  %203 = load ptr, ptr %23, align 8, !tbaa !132
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %22), !range !133
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %205, %196
  br label %209

209:                                              ; preds = %208, %214
  %210 = load ptr, ptr %24, align 8, !tbaa !211
  %211 = load ptr, ptr %25, align 8, !tbaa !131
  %212 = call i32 %210(ptr noundef nonnull %1, ptr noundef nonnull %9, ptr noundef %202, ptr noundef nonnull %23, ptr noundef %211) #25
  %213 = icmp ult i32 %212, 2
  br i1 %213, label %218, label %214

214:                                              ; preds = %209
  %215 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %22), !range !133
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %209

217:                                              ; preds = %205, %214
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  br label %345

218:                                              ; preds = %209
  %219 = load ptr, ptr %26, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  %220 = icmp eq ptr %219, null
  br i1 %220, label %345, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %23, align 8, !tbaa !132
  %223 = load ptr, ptr %25, align 8, !tbaa !131
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %221
  %226 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %22), !range !133
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %345, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %23, align 8, !tbaa !132
  br label %230

230:                                              ; preds = %221, %228
  %231 = phi ptr [ %229, %228 ], [ %222, %221 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  store ptr %232, ptr %23, align 8, !tbaa !132
  store i8 0, ptr %231, align 1, !tbaa !5
  %233 = load ptr, ptr %26, align 8, !tbaa !134
  %234 = icmp eq ptr %233, null
  br i1 %234, label %345, label %235

235:                                              ; preds = %230
  %236 = load i64, ptr %27, align 8, !tbaa !88
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %279, label %238

238:                                              ; preds = %235
  %239 = call fastcc i64 @hash(ptr noundef nonnull %0, ptr noundef nonnull %233)
  %240 = load i64, ptr %27, align 8, !tbaa !88
  %241 = add i64 %240, -1
  %242 = and i64 %241, %239
  %243 = load ptr, ptr %15, align 8, !tbaa !49
  %244 = getelementptr inbounds ptr, ptr %243, i64 %242
  %245 = load ptr, ptr %244, align 8, !tbaa !30
  %246 = icmp eq ptr %245, null
  br i1 %246, label %279, label %247

247:                                              ; preds = %238
  %248 = sub i64 0, %240
  %249 = and i64 %239, %248
  %250 = lshr i64 %241, 2
  br label %251

251:                                              ; preds = %269, %247
  %252 = phi ptr [ %245, %247 ], [ %277, %269 ]
  %253 = phi i64 [ %242, %247 ], [ %275, %269 ]
  %254 = phi i8 [ 0, %247 ], [ %270, %269 ]
  %255 = load ptr, ptr %252, align 8, !tbaa !140
  %256 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %233, ptr noundef nonnull dereferenceable(1) %255) #30
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %279, label %258

258:                                              ; preds = %251
  %259 = icmp eq i8 %254, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %258
  %261 = load i8, ptr %28, align 8, !tbaa !47
  %262 = zext i8 %261 to i64
  %263 = add nuw nsw i64 %262, 4294967295
  %264 = and i64 %263, 4294967295
  %265 = lshr i64 %249, %264
  %266 = and i64 %265, %250
  %267 = trunc i64 %266 to i8
  %268 = or i8 %267, 1
  br label %269

269:                                              ; preds = %260, %258
  %270 = phi i8 [ %254, %258 ], [ %268, %260 ]
  %271 = zext i8 %270 to i64
  %272 = icmp ult i64 %253, %271
  %273 = select i1 %272, i64 %240, i64 0
  %274 = sub i64 %253, %271
  %275 = add i64 %273, %274
  %276 = getelementptr inbounds ptr, ptr %243, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !30
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %251, !llvm.loop !142

279:                                              ; preds = %269, %251, %238, %235
  %280 = phi ptr [ null, %235 ], [ null, %238 ], [ null, %269 ], [ %252, %251 ]
  %281 = load ptr, ptr %26, align 8, !tbaa !278
  store ptr %281, ptr %23, align 8, !tbaa !277
  br i1 %30, label %282, label %294

282:                                              ; preds = %279
  %283 = load i32, ptr %33, align 4, !tbaa !259
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %306, label %285

285:                                              ; preds = %282
  %286 = load i8, ptr %32, align 2, !tbaa !101
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr %34, align 8, !tbaa !73
  %290 = icmp eq ptr %289, null
  br i1 %290, label %300, label %306

291:                                              ; preds = %285
  %292 = load i8, ptr %31, align 1, !tbaa !100
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %300, label %306

294:                                              ; preds = %279
  %295 = load i8, ptr %31, align 1, !tbaa !100
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i8, ptr %32, align 2, !tbaa !101
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %291, %288, %294, %297
  %301 = icmp eq ptr %280, null
  br i1 %301, label %345, label %302

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.ENTITY, ptr %280, i64 0, i32 11
  %304 = load i8, ptr %303, align 1, !tbaa !251
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %345, label %308

306:                                              ; preds = %291, %288, %282, %297
  %307 = icmp eq ptr %280, null
  br i1 %307, label %347, label %308

308:                                              ; preds = %306, %302
  %309 = getelementptr inbounds %struct.ENTITY, ptr %280, i64 0, i32 8
  %310 = load i8, ptr %309, align 8, !tbaa !157
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %314 = load ptr, ptr %313, align 8, !tbaa !202
  %315 = icmp eq ptr %314, %1
  br i1 %315, label %316, label %345

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %317, align 8, !tbaa !200
  br label %345

318:                                              ; preds = %308
  %319 = getelementptr inbounds %struct.ENTITY, ptr %280, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !249
  %321 = icmp eq ptr %320, null
  br i1 %321, label %328, label %322

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %324 = load ptr, ptr %323, align 8, !tbaa !202
  %325 = icmp eq ptr %324, %1
  br i1 %325, label %326, label %345

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %327, align 8, !tbaa !200
  br label %345

328:                                              ; preds = %318
  %329 = getelementptr inbounds %struct.ENTITY, ptr %280, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !238
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %338

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %334 = load ptr, ptr %333, align 8, !tbaa !202
  %335 = icmp eq ptr %334, %1
  br i1 %335, label %336, label %345

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %337, align 8, !tbaa !200
  br label %345

338:                                              ; preds = %328
  %339 = call fastcc i32 @processEntity(ptr noundef nonnull %0, ptr noundef nonnull %280, i8 noundef zeroext 0, i32 noundef 1), !range !236
  %340 = icmp eq i32 %339, 0
  %341 = icmp ne ptr %7, null
  %342 = and i1 %341, %340
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %344, ptr %7, align 8, !tbaa !30
  br label %345

345:                                              ; preds = %230, %188, %218, %225, %300, %302, %316, %312, %326, %322, %336, %332, %343, %338, %217
  %346 = phi i32 [ %339, %338 ], [ 0, %343 ], [ 16, %332 ], [ 16, %336 ], [ 15, %322 ], [ 15, %326 ], [ 12, %312 ], [ 12, %316 ], [ 24, %302 ], [ 11, %300 ], [ 1, %217 ], [ 1, %225 ], [ 1, %218 ], [ 1, %188 ], [ 1, %230 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #25
  br label %356

347:                                              ; preds = %193, %306
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #25
  br label %354

348:                                              ; preds = %69
  %349 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %350 = load ptr, ptr %349, align 8, !tbaa !202
  %351 = icmp eq ptr %350, %1
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %39, ptr %353, align 8, !tbaa !200
  br label %356

354:                                              ; preds = %144, %156, %153, %126, %168, %347
  %355 = load ptr, ptr %11, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  br label %38

356:                                              ; preds = %144, %163, %72, %70, %78, %74, %85, %81, %352, %348, %50, %54, %124, %143, %345
  %357 = phi i32 [ %346, %345 ], [ 1, %143 ], [ %125, %124 ], [ 43, %54 ], [ 43, %50 ], [ 23, %348 ], [ 23, %352 ], [ 4, %81 ], [ 4, %85 ], [ 4, %74 ], [ 4, %78 ], [ 0, %70 ], [ 0, %72 ], [ 1, %163 ], [ 1, %144 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  ret i32 %357
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @storeEntityValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [4 x i8], align 1
  %11 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 72
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 5
  %14 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 47, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !127
  store i32 1, ptr %14, align 8, !tbaa !127
  %16 = load ptr, ptr %13, align 8, !tbaa !86
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %13), !range !133
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %299, label %21

21:                                               ; preds = %18, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store ptr %2, ptr %9, align 8, !tbaa !30
  %22 = icmp ult ptr %2, %3
  br i1 %22, label %23, label %293

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 1, i64 1
  %25 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 6
  %26 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 5, i32 2
  %27 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 5, i32 3
  %28 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 12
  %29 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 10
  %30 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 5, i32 4
  %31 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 93
  %32 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 3
  %35 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 2
  %36 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 86, i32 4
  %37 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 10, i32 2
  %38 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 10
  %39 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 10, i32 1
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 61
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 29
  %42 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 9
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 30
  %44 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 8
  %45 = getelementptr inbounds %struct.DTD, ptr %12, i64 0, i32 6
  br label %46

46:                                               ; preds = %23, %291
  %47 = phi ptr [ %292, %291 ], [ %2, %23 ]
  store ptr %47, ptr %9, align 8, !tbaa !30
  %48 = load ptr, ptr %24, align 8, !tbaa !30
  %49 = call i32 %48(ptr noundef %1, ptr noundef %47, ptr noundef nonnull %3, ptr noundef nonnull %9) #25
  %50 = load ptr, ptr %9, align 8, !tbaa !30
  %51 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef %0, i32 noundef %49, ptr noundef %47, ptr noundef %50, i32 noundef 6735, i32 noundef %4), !range !133
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %46, %53
  %54 = phi ptr [ %56, %53 ], [ %0, %46 ]
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 91
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !llvm.loop !26

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !119
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %293, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98
  %64 = load i64, ptr %63, align 8, !tbaa !37
  %65 = getelementptr inbounds %struct.XML_ParserStruct, ptr %54, i64 0, i32 98, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !213
  %67 = icmp eq i64 %64, 0
  %68 = uitofp i64 %64 to float
  %69 = select i1 %67, float 2.200000e+01, float %68
  %70 = select i1 %67, i64 22, i64 %64
  %71 = add i64 %70, %66
  %72 = uitofp i64 %71 to float
  %73 = fdiv float %72, %69
  %74 = load ptr, ptr @stderr, align 8, !tbaa !30
  %75 = fpext float %73 to double
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.330, ptr noundef nonnull %54, i64 noundef %64, i64 noundef %66, double noundef %75, ptr noundef nonnull @.str.336) #29
  br label %293

77:                                               ; preds = %46
  switch i32 %49, label %286 [
    i32 28, label %78
    i32 -4, label %293
    i32 9, label %212
    i32 6, label %212
    i32 -3, label %232
    i32 7, label %236
    i32 10, label %248
    i32 -1, label %275
    i32 0, label %280
  ]

78:                                               ; preds = %77
  %79 = load i8, ptr %31, align 8, !tbaa !117
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load ptr, ptr %32, align 8, !tbaa !202
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %210, label %84

84:                                               ; preds = %81, %78
  %85 = load i32, ptr %28, align 8, !tbaa !226
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %47, i64 %86
  %88 = load ptr, ptr %9, align 8, !tbaa !30
  %89 = sub nsw i64 0, %86
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %87, ptr %8, align 8, !tbaa !30
  %91 = load ptr, ptr %34, align 8, !tbaa !132
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %33), !range !133
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93, %84
  br label %97

97:                                               ; preds = %96, %102
  %98 = load ptr, ptr %29, align 8, !tbaa !211
  %99 = load ptr, ptr %35, align 8, !tbaa !131
  %100 = call i32 %98(ptr noundef nonnull %1, ptr noundef nonnull %8, ptr noundef %90, ptr noundef nonnull %34, ptr noundef %99) #25
  %101 = icmp ult i32 %100, 2
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %33), !range !133
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %97

105:                                              ; preds = %93, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %293

106:                                              ; preds = %97
  %107 = load ptr, ptr %36, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %293, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %34, align 8, !tbaa !132
  %111 = load ptr, ptr %35, align 8, !tbaa !131
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %33), !range !133
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %293, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %34, align 8, !tbaa !132
  br label %118

118:                                              ; preds = %109, %116
  %119 = phi ptr [ %117, %116 ], [ %110, %109 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %120, ptr %34, align 8, !tbaa !132
  store i8 0, ptr %119, align 1, !tbaa !5
  %121 = load ptr, ptr %36, align 8, !tbaa !134
  %122 = icmp eq ptr %121, null
  br i1 %122, label %293, label %123

123:                                              ; preds = %118
  %124 = load i64, ptr %37, align 8, !tbaa !88
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %167, label %126

126:                                              ; preds = %123
  %127 = call fastcc i64 @hash(ptr noundef nonnull %0, ptr noundef nonnull %121)
  %128 = load i64, ptr %37, align 8, !tbaa !88
  %129 = add i64 %128, -1
  %130 = and i64 %129, %127
  %131 = load ptr, ptr %38, align 8, !tbaa !49
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !30
  %134 = icmp eq ptr %133, null
  br i1 %134, label %167, label %135

135:                                              ; preds = %126
  %136 = sub i64 0, %128
  %137 = and i64 %127, %136
  %138 = lshr i64 %129, 2
  br label %139

139:                                              ; preds = %157, %135
  %140 = phi ptr [ %133, %135 ], [ %165, %157 ]
  %141 = phi i64 [ %130, %135 ], [ %163, %157 ]
  %142 = phi i8 [ 0, %135 ], [ %158, %157 ]
  %143 = load ptr, ptr %140, align 8, !tbaa !140
  %144 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(1) %143) #30
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %139
  %147 = icmp eq i8 %142, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %146
  %149 = load i8, ptr %39, align 8, !tbaa !47
  %150 = zext i8 %149 to i64
  %151 = add nuw nsw i64 %150, 4294967295
  %152 = and i64 %151, 4294967295
  %153 = lshr i64 %137, %152
  %154 = and i64 %153, %138
  %155 = trunc i64 %154 to i8
  %156 = or i8 %155, 1
  br label %157

157:                                              ; preds = %148, %146
  %158 = phi i8 [ %142, %146 ], [ %156, %148 ]
  %159 = zext i8 %158 to i64
  %160 = icmp ult i64 %141, %159
  %161 = select i1 %160, i64 %128, i64 0
  %162 = sub i64 %141, %159
  %163 = add i64 %161, %162
  %164 = getelementptr inbounds ptr, ptr %131, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !30
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %139, !llvm.loop !142

167:                                              ; preds = %123, %126, %157
  %168 = load ptr, ptr %36, align 8, !tbaa !156
  store ptr %168, ptr %34, align 8, !tbaa !159
  %169 = load i8, ptr %44, align 2, !tbaa !101
  store i8 %169, ptr %45, align 8, !tbaa !99
  br label %293

170:                                              ; preds = %139
  %171 = load ptr, ptr %36, align 8, !tbaa !156
  store ptr %171, ptr %34, align 8, !tbaa !159
  %172 = getelementptr inbounds %struct.ENTITY, ptr %140, i64 0, i32 8
  %173 = load i8, ptr %172, align 8, !tbaa !157
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load ptr, ptr %40, align 8, !tbaa !224
  %177 = icmp eq ptr %140, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %175, %170
  %179 = load ptr, ptr %32, align 8, !tbaa !202
  %180 = icmp eq ptr %179, %1
  br i1 %180, label %181, label %293

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %47, ptr %182, align 8, !tbaa !200
  br label %293

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.ENTITY, ptr %140, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !231
  %186 = icmp eq ptr %185, null
  br i1 %186, label %208, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %41, align 8, !tbaa !187
  %189 = icmp eq ptr %188, null
  br i1 %189, label %206, label %190

190:                                              ; preds = %187
  store i8 0, ptr %42, align 1, !tbaa !94
  store i8 1, ptr %172, align 8, !tbaa !157
  call fastcc void @entityTrackingOnOpen(ptr noundef nonnull %0, ptr noundef nonnull %140, i32 noundef 6777)
  %191 = load ptr, ptr %41, align 8, !tbaa !187
  %192 = load ptr, ptr %43, align 8, !tbaa !105
  %193 = getelementptr inbounds %struct.ENTITY, ptr %140, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !230
  %195 = load ptr, ptr %184, align 8, !tbaa !231
  %196 = getelementptr inbounds %struct.ENTITY, ptr %140, i64 0, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !228
  %198 = call i32 %191(ptr noundef %192, ptr noundef null, ptr noundef %194, ptr noundef %195, ptr noundef %197) #25
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  call fastcc void @entityTrackingOnClose(ptr noundef nonnull %0, ptr noundef nonnull %140, i32 noundef 6781)
  store i8 0, ptr %172, align 8, !tbaa !157
  br label %293

201:                                              ; preds = %190
  call fastcc void @entityTrackingOnClose(ptr noundef nonnull %0, ptr noundef nonnull %140, i32 noundef 6786)
  store i8 0, ptr %172, align 8, !tbaa !157
  %202 = load i8, ptr %42, align 1, !tbaa !94
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %291

204:                                              ; preds = %201
  %205 = load i8, ptr %44, align 2, !tbaa !101
  store i8 %205, ptr %45, align 8, !tbaa !99
  br label %291

206:                                              ; preds = %187
  %207 = load i8, ptr %44, align 2, !tbaa !101
  store i8 %207, ptr %45, align 8, !tbaa !99
  br label %291

208:                                              ; preds = %183
  %209 = call fastcc i32 @processEntity(ptr noundef nonnull %0, ptr noundef nonnull %140, i8 noundef zeroext 0, i32 noundef 2), !range !236
  br label %293

210:                                              ; preds = %81
  %211 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %47, ptr %211, align 8, !tbaa !200
  br label %293

212:                                              ; preds = %77, %77
  %213 = load ptr, ptr %9, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %47, ptr %7, align 8, !tbaa !30
  %214 = load ptr, ptr %27, align 8, !tbaa !132
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %13), !range !133
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %216, %212
  br label %220

220:                                              ; preds = %219, %225
  %221 = load ptr, ptr %29, align 8, !tbaa !211
  %222 = load ptr, ptr %26, align 8, !tbaa !131
  %223 = call i32 %221(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %213, ptr noundef nonnull %27, ptr noundef %222) #25
  %224 = icmp ult i32 %223, 2
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %13), !range !133
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %220

228:                                              ; preds = %216, %225
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %293

229:                                              ; preds = %220
  %230 = load ptr, ptr %30, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %231 = icmp eq ptr %230, null
  br i1 %231, label %293, label %291

232:                                              ; preds = %77
  %233 = load i32, ptr %28, align 8, !tbaa !226
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, ptr %47, i64 %234
  store ptr %235, ptr %9, align 8, !tbaa !30
  br label %236

236:                                              ; preds = %77, %232
  %237 = load ptr, ptr %27, align 8, !tbaa !132
  %238 = load ptr, ptr %26, align 8, !tbaa !131
  %239 = icmp eq ptr %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %13), !range !133
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %293, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %27, align 8, !tbaa !132
  br label %245

245:                                              ; preds = %236, %243
  %246 = phi ptr [ %244, %243 ], [ %237, %236 ]
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store ptr %247, ptr %27, align 8, !tbaa !132
  store i8 10, ptr %246, align 1, !tbaa !5
  br label %291

248:                                              ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #25
  %249 = load ptr, ptr %25, align 8, !tbaa !316
  %250 = call i32 %249(ptr noundef nonnull %1, ptr noundef %47) #25
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load ptr, ptr %32, align 8, !tbaa !202
  %254 = icmp eq ptr %253, %1
  br i1 %254, label %255, label %273

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %47, ptr %256, align 8, !tbaa !200
  br label %273

257:                                              ; preds = %248
  %258 = call i32 @XmlUtf8Encode(i32 noundef %250, ptr noundef nonnull %10) #25
  %259 = sext i32 %258 to i64
  br label %260

260:                                              ; preds = %267, %257
  %261 = load ptr, ptr %26, align 8, !tbaa !131
  %262 = load ptr, ptr %27, align 8, !tbaa !132
  %263 = ptrtoint ptr %261 to i64
  %264 = ptrtoint ptr %262 to i64
  %265 = sub i64 %263, %264
  %266 = icmp ult i64 %265, %259
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %13), !range !133
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %274, label %260

270:                                              ; preds = %260
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %262, ptr nonnull align 1 %10, i64 %259, i1 false)
  %271 = load ptr, ptr %27, align 8, !tbaa !132
  %272 = getelementptr inbounds i8, ptr %271, i64 %259
  store ptr %272, ptr %27, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  br label %291

273:                                              ; preds = %255, %252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  br label %293

274:                                              ; preds = %267
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  br label %293

275:                                              ; preds = %77
  %276 = load ptr, ptr %32, align 8, !tbaa !202
  %277 = icmp eq ptr %276, %1
  br i1 %277, label %278, label %293

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %47, ptr %279, align 8, !tbaa !200
  br label %293

280:                                              ; preds = %77
  %281 = load ptr, ptr %32, align 8, !tbaa !202
  %282 = icmp eq ptr %281, %1
  br i1 %282, label %283, label %293

283:                                              ; preds = %280
  %284 = load ptr, ptr %9, align 8, !tbaa !30
  %285 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %284, ptr %285, align 8, !tbaa !200
  br label %293

286:                                              ; preds = %77
  %287 = load ptr, ptr %32, align 8, !tbaa !202
  %288 = icmp eq ptr %287, %1
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %47, ptr %290, align 8, !tbaa !200
  br label %293

291:                                              ; preds = %229, %201, %204, %206, %245, %270
  %292 = load ptr, ptr %9, align 8, !tbaa !30
  br label %46

293:                                              ; preds = %113, %106, %118, %240, %229, %77, %274, %105, %178, %181, %167, %208, %200, %273, %228, %62, %58, %286, %289, %280, %283, %275, %278, %210, %21
  %294 = phi i32 [ 0, %21 ], [ 14, %273 ], [ 1, %228 ], [ 43, %62 ], [ 43, %58 ], [ 23, %286 ], [ 23, %289 ], [ 4, %280 ], [ 4, %283 ], [ 4, %275 ], [ 4, %278 ], [ 10, %210 ], [ 1, %274 ], [ 12, %178 ], [ 12, %181 ], [ 0, %167 ], [ %209, %208 ], [ 21, %200 ], [ 1, %105 ], [ 1, %113 ], [ 1, %106 ], [ 1, %118 ], [ 0, %77 ], [ 1, %229 ], [ 1, %240 ]
  store i32 %15, ptr %14, align 8, !tbaa !127
  %295 = icmp eq ptr %5, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %9, align 8, !tbaa !30
  store ptr %297, ptr %5, align 8, !tbaa !30
  br label %298

298:                                              ; preds = %293, %296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %299

299:                                              ; preds = %18, %298
  %300 = phi i32 [ %294, %298 ], [ 1, %18 ]
  ret i32 %300
}

; Function Attrs: nounwind uwtable
define internal i32 @internalEntityProcessor(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %125, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.open_internal_entity, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 9
  %13 = load i8, ptr %12, align 1, !tbaa !241
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %73, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !238
  %18 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !239
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !240
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %17, i64 %24
  store ptr %21, ptr %5, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 10
  %27 = load i8, ptr %26, align 2, !tbaa !246
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 39
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = call i32 %32(ptr noundef nonnull %31, ptr noundef %21, ptr noundef %25, ptr noundef nonnull %5) #25
  %34 = load ptr, ptr %30, align 8, !tbaa !63
  %35 = load ptr, ptr %5, align 8, !tbaa !30
  %36 = call fastcc i32 @doProlog(ptr noundef nonnull %0, ptr noundef %34, ptr noundef %21, ptr noundef %25, i32 noundef %33, ptr noundef %35, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 1)
  br label %43

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.open_internal_entity, ptr %7, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !294
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 39
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = call fastcc i32 @doContent(ptr noundef nonnull %0, i32 noundef %39, ptr noundef %41, ptr noundef %21, ptr noundef %25, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 1)
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i32 [ %36, %29 ], [ %42, %37 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %125

46:                                               ; preds = %43
  %47 = load ptr, ptr %5, align 8, !tbaa !30
  %48 = icmp eq ptr %25, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %51 = load i32, ptr %50, align 8, !tbaa !115
  switch i32 %51, label %62 [
    i32 3, label %56
    i32 1, label %52
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  %54 = load i8, ptr %53, align 8, !tbaa !116
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49, %52
  %57 = load ptr, ptr %16, align 8, !tbaa !238
  %58 = ptrtoint ptr %47 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %18, align 4, !tbaa !239
  br label %125

62:                                               ; preds = %49, %52, %46
  store i8 0, ptr %12, align 1, !tbaa !241
  %63 = load i8, ptr %26, align 2, !tbaa !246
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.open_internal_entity, ptr %7, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !294
  %68 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 60
  %69 = load i32, ptr %68, align 4, !tbaa !113
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %65, %62
  %72 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  store i8 1, ptr %72, align 8, !tbaa !116
  br label %125

73:                                               ; preds = %9, %73
  %74 = phi ptr [ %76, %73 ], [ %0, %9 ]
  %75 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 91
  %76 = load ptr, ptr %75, align 8, !tbaa !8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %73, !llvm.loop !26

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100, i32 3
  %80 = load i64, ptr %79, align 8, !tbaa !122
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !242
  %85 = add i32 %84, -1
  store i32 %85, ptr %83, align 4, !tbaa !242
  br label %110

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100
  %88 = load ptr, ptr %11, align 8, !tbaa !243
  %89 = load ptr, ptr @stderr, align 8, !tbaa !30
  %90 = load i32, ptr %87, align 8, !tbaa !244
  %91 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !242
  %93 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !245
  %95 = shl i32 %92, 1
  %96 = add i32 %95, -2
  %97 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 10
  %98 = load i8, ptr %97, align 2, !tbaa !246
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, ptr @.str.100, ptr @.str.99
  %101 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !240
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.345, ptr noundef nonnull %74, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, ptr noundef nonnull @.str.329, ptr noundef nonnull %100, ptr noundef %88, ptr noundef nonnull @.str.346, i32 noundef %102, i32 noundef 6402) #29
  %104 = load ptr, ptr %6, align 8, !tbaa !73
  %105 = getelementptr inbounds %struct.XML_ParserStruct, ptr %74, i64 0, i32 100, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !242
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4, !tbaa !242
  %108 = icmp eq ptr %104, %7
  br i1 %108, label %110, label %109

109:                                              ; preds = %86
  tail call void @__assert_fail(ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.1, i32 noundef 6408, ptr noundef nonnull @__PRETTY_FUNCTION__.internalEntityProcessor) #28
  unreachable

110:                                              ; preds = %82, %86
  %111 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 8
  store i8 0, ptr %111, align 8, !tbaa !157
  %112 = getelementptr inbounds %struct.open_internal_entity, ptr %7, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !74
  store ptr %113, ptr %6, align 8, !tbaa !73
  %114 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 54
  %115 = load ptr, ptr %114, align 8, !tbaa !54
  store ptr %115, ptr %112, align 8, !tbaa !74
  store ptr %7, ptr %114, align 8, !tbaa !54
  %116 = icmp eq ptr %113, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.ENTITY, ptr %11, i64 0, i32 10
  %119 = load i8, ptr %118, align 2, !tbaa !246
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, ptr @contentProcessor, ptr @prologProcessor
  %122 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr %121, ptr %122, align 8, !tbaa !103
  br label %123

123:                                              ; preds = %117, %110
  %124 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  store i8 1, ptr %124, align 8, !tbaa !116
  br label %125

125:                                              ; preds = %65, %43, %4, %123, %71, %56
  %126 = phi i32 [ 0, %56 ], [ 0, %71 ], [ 0, %123 ], [ 23, %4 ], [ %44, %43 ], [ 13, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %126
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #20

declare void @writeRandomBytes_arc4random_buf(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityInitProcessor2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = call i32 %9(ptr noundef %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  switch i32 %10, label %61 [
    i32 14, label %11
    i32 -1, label %47
    i32 -2, label %54
  ]

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !30
  %13 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef 14, ptr noundef %1, ptr noundef %12, i32 noundef 3140, i32 noundef 0), !range !133
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %18, %15 ], [ %0, %11 ]
  %17 = getelementptr inbounds %struct.XML_ParserStruct, ptr %16, i64 0, i32 91
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.XML_ParserStruct, ptr %16, i64 0, i32 98, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !119
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.XML_ParserStruct, ptr %16, i64 0, i32 98
  %26 = load i64, ptr %25, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.XML_ParserStruct, ptr %16, i64 0, i32 98, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !213
  %29 = icmp eq i64 %26, 0
  %30 = uitofp i64 %26 to float
  %31 = select i1 %29, float 2.200000e+01, float %30
  %32 = select i1 %29, i64 22, i64 %26
  %33 = add i64 %32, %28
  %34 = uitofp i64 %33 to float
  %35 = fdiv float %34, %31
  %36 = load ptr, ptr @stderr, align 8, !tbaa !30
  %37 = fpext float %35 to double
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.330, ptr noundef nonnull %16, i64 noundef %26, i64 noundef %28, double noundef %37, ptr noundef nonnull @.str.336) #29
  br label %65

39:                                               ; preds = %11
  %40 = load ptr, ptr %5, align 8, !tbaa !30
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %44 = load i8, ptr %43, align 4, !tbaa !199
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  store ptr %2, ptr %3, align 8, !tbaa !30
  br label %65

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %49 = load i8, ptr %48, align 4, !tbaa !199
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %65

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %1, ptr %53, align 8, !tbaa !200
  br label %65

54:                                               ; preds = %4
  %55 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %56 = load i8, ptr %55, align 4, !tbaa !199
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %1, ptr %60, align 8, !tbaa !200
  br label %65

61:                                               ; preds = %39, %42, %4
  %62 = phi ptr [ %1, %4 ], [ %2, %42 ], [ %40, %39 ]
  %63 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @externalEntityInitProcessor3, ptr %63, align 8, !tbaa !103
  %64 = call i32 @externalEntityInitProcessor3(ptr noundef nonnull %0, ptr noundef %62, ptr noundef %2, ptr noundef %3)
  br label %65

65:                                               ; preds = %24, %20, %61, %59, %58, %52, %51, %46
  %66 = phi i32 [ %64, %61 ], [ 6, %59 ], [ 0, %58 ], [ 5, %52 ], [ 0, %51 ], [ 0, %46 ], [ 43, %20 ], [ 43, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @externalEntityInitProcessor3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  store ptr %1, ptr %6, align 8, !tbaa !200
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !202
  %9 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = call i32 %10(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %12 = load ptr, ptr %5, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  store ptr %12, ptr %13, align 8, !tbaa !201
  switch i32 %11, label %38 [
    i32 12, label %14
    i32 -1, label %28
    i32 -2, label %33
  ]

14:                                               ; preds = %4
  %15 = call fastcc i32 @processXmlDecl(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %1, ptr noundef %12)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %19 = load i32, ptr %18, align 8, !tbaa !115
  switch i32 %19, label %26 [
    i32 3, label %20
    i32 2, label %43
    i32 1, label %22
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %21, ptr %3, align 8, !tbaa !30
  br label %43

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 101
  %24 = load i8, ptr %23, align 8, !tbaa !116
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %17, %22
  %27 = load ptr, ptr %5, align 8, !tbaa !30
  br label %38

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %30 = load i8, ptr %29, align 4, !tbaa !199
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %43

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %35 = load i8, ptr %34, align 4, !tbaa !199
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %43

38:                                               ; preds = %26, %4
  %39 = phi ptr [ %1, %4 ], [ %27, %26 ]
  %40 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @externalEntityContentProcessor, ptr %40, align 8, !tbaa !103
  %41 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 60
  store i32 1, ptr %41, align 4, !tbaa !113
  %42 = call i32 @externalEntityContentProcessor(ptr noundef nonnull %0, ptr noundef %39, ptr noundef %2, ptr noundef %3)
  br label %43

43:                                               ; preds = %22, %17, %14, %20, %33, %28, %38, %37, %32
  %44 = phi i32 [ %42, %38 ], [ 0, %37 ], [ 0, %32 ], [ 5, %28 ], [ 6, %33 ], [ 23, %22 ], [ 35, %17 ], [ %15, %14 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @entityValueInitProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store ptr %1, ptr %6, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 50
  %8 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  store ptr %1, ptr %7, align 8, !tbaa !200
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  %11 = call i32 %10(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #25
  %12 = load ptr, ptr %6, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 51
  store ptr %12, ptr %13, align 8, !tbaa !201
  %14 = icmp slt i32 %11, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %105, %4
  %16 = phi ptr [ %1, %4 ], [ %107, %105 ]
  %17 = phi i32 [ %11, %4 ], [ %110, %105 ]
  %18 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %19 = load i8, ptr %18, align 4, !tbaa !199
  %20 = icmp eq i8 %19, 0
  %21 = icmp ne i32 %17, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store ptr %16, ptr %3, align 8, !tbaa !30
  br label %115

24:                                               ; preds = %15
  %25 = add i32 %17, 2
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %113, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 8, !tbaa !202
  %29 = call fastcc i32 @storeEntityValue(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %16, ptr noundef %2, i32 noundef 0, ptr noundef null)
  br label %115

30:                                               ; preds = %4, %105
  %31 = phi ptr [ %111, %105 ], [ %12, %4 ]
  %32 = phi i32 [ %110, %105 ], [ %11, %4 ]
  %33 = phi ptr [ %106, %105 ], [ %1, %4 ]
  %34 = phi ptr [ %107, %105 ], [ %1, %4 ]
  switch i32 %32, label %105 [
    i32 12, label %35
    i32 14, label %75
    i32 29, label %104
  ]

35:                                               ; preds = %30
  %36 = call fastcc i32 @processXmlDecl(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %33, ptr noundef %31)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %115

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92
  %40 = load i32, ptr %39, align 8, !tbaa !115
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %115, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %43, ptr %3, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @entityValueProcessor, ptr %44, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %43, ptr %5, align 8, !tbaa !30
  %45 = load ptr, ptr %8, align 8, !tbaa !202
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = call i32 %46(ptr noundef nonnull %45, ptr noundef %43, ptr noundef %2, ptr noundef nonnull %5) #25
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %67, %42
  %50 = phi i32 [ %47, %42 ], [ %69, %67 ]
  %51 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %52 = load i8, ptr %51, align 4, !tbaa !199
  %53 = icmp eq i8 %52, 0
  %54 = icmp ne i32 %50, 0
  %55 = and i1 %54, %53
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store ptr %43, ptr %3, align 8, !tbaa !30
  br label %73

57:                                               ; preds = %49
  %58 = add i32 %50, 2
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = call fastcc i32 @storeEntityValue(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %43, ptr noundef %2, i32 noundef 0, ptr noundef null)
  br label %73

62:                                               ; preds = %42, %67
  %63 = phi i32 [ %69, %67 ], [ %47, %42 ]
  %64 = icmp eq i32 %63, 29
  %65 = load ptr, ptr %5, align 8, !tbaa !30
  br i1 %64, label %66, label %67

66:                                               ; preds = %62
  store ptr %65, ptr %3, align 8, !tbaa !30
  br label %73

67:                                               ; preds = %62
  %68 = load ptr, ptr %45, align 8, !tbaa !30
  %69 = call i32 %68(ptr noundef nonnull %45, ptr noundef %65, ptr noundef %2, ptr noundef nonnull %5) #25
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %49, label %62

71:                                               ; preds = %57
  %72 = sub i32 4, %50
  br label %73

73:                                               ; preds = %71, %56, %60, %66
  %74 = phi i32 [ 0, %56 ], [ %61, %60 ], [ 2, %66 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %115

75:                                               ; preds = %30
  %76 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef 14, ptr noundef %34, ptr noundef %31, i32 noundef 5007, i32 noundef 0), !range !133
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %81, %78 ], [ %0, %75 ]
  %80 = getelementptr inbounds %struct.XML_ParserStruct, ptr %79, i64 0, i32 91
  %81 = load ptr, ptr %80, align 8, !tbaa !8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %78, !llvm.loop !26

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.XML_ParserStruct, ptr %79, i64 0, i32 98, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !119
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.XML_ParserStruct, ptr %79, i64 0, i32 98
  %89 = load i64, ptr %88, align 8, !tbaa !37
  %90 = getelementptr inbounds %struct.XML_ParserStruct, ptr %79, i64 0, i32 98, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !213
  %92 = icmp eq i64 %89, 0
  %93 = uitofp i64 %89 to float
  %94 = select i1 %92, float 2.200000e+01, float %93
  %95 = select i1 %92, i64 22, i64 %89
  %96 = add i64 %95, %91
  %97 = uitofp i64 %96 to float
  %98 = fdiv float %97, %94
  %99 = load ptr, ptr @stderr, align 8, !tbaa !30
  %100 = fpext float %98 to double
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.330, ptr noundef nonnull %79, i64 noundef %89, i64 noundef %91, double noundef %100, ptr noundef nonnull @.str.336) #29
  br label %115

102:                                              ; preds = %75
  %103 = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %103, ptr %3, align 8, !tbaa !30
  br label %105

104:                                              ; preds = %30
  store ptr %31, ptr %3, align 8, !tbaa !30
  br label %115

105:                                              ; preds = %30, %102
  %106 = phi ptr [ %103, %102 ], [ %31, %30 ]
  %107 = phi ptr [ %103, %102 ], [ %34, %30 ]
  store ptr %106, ptr %7, align 8, !tbaa !200
  %108 = load ptr, ptr %8, align 8, !tbaa !202
  %109 = load ptr, ptr %108, align 8, !tbaa !30
  %110 = call i32 %109(ptr noundef nonnull %108, ptr noundef %106, ptr noundef %2, ptr noundef nonnull %6) #25
  %111 = load ptr, ptr %6, align 8, !tbaa !30
  store ptr %111, ptr %13, align 8, !tbaa !201
  %112 = icmp slt i32 %110, 1
  br i1 %112, label %15, label %30

113:                                              ; preds = %24
  %114 = sub i32 4, %17
  br label %115

115:                                              ; preds = %113, %87, %83, %73, %35, %38, %104, %27, %23
  %116 = phi i32 [ 0, %23 ], [ %29, %27 ], [ 2, %104 ], [ %74, %73 ], [ %36, %35 ], [ 35, %38 ], [ 43, %83 ], [ 43, %87 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret i32 %116
}

; Function Attrs: nounwind uwtable
define internal i32 @externalParEntProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = call i32 %8(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %13 = load i8, ptr %12, align 4, !tbaa !199
  %14 = icmp eq i8 %13, 0
  %15 = icmp ne i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %69

18:                                               ; preds = %11
  %19 = add i32 %9, 2
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %67, label %56

21:                                               ; preds = %4
  %22 = icmp eq i32 %9, 14
  br i1 %22, label %23, label %56

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !tbaa !30
  %25 = call fastcc zeroext i8 @accountingDiffTolerated(ptr noundef nonnull %0, i32 noundef 14, ptr noundef %1, ptr noundef %24, i32 noundef 5060, i32 noundef 0), !range !133
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23, %27
  %28 = phi ptr [ %30, %27 ], [ %0, %23 ]
  %29 = getelementptr inbounds %struct.XML_ParserStruct, ptr %28, i64 0, i32 91
  %30 = load ptr, ptr %29, align 8, !tbaa !8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !26

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.XML_ParserStruct, ptr %28, i64 0, i32 98, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !119
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.XML_ParserStruct, ptr %28, i64 0, i32 98
  %38 = load i64, ptr %37, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.XML_ParserStruct, ptr %28, i64 0, i32 98, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !213
  %41 = icmp eq i64 %38, 0
  %42 = uitofp i64 %38 to float
  %43 = select i1 %41, float 2.200000e+01, float %42
  %44 = select i1 %41, i64 22, i64 %38
  %45 = add i64 %44, %40
  %46 = uitofp i64 %45 to float
  %47 = fdiv float %46, %43
  %48 = load ptr, ptr @stderr, align 8, !tbaa !30
  %49 = fpext float %47 to double
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.330, ptr noundef nonnull %28, i64 noundef %38, i64 noundef %40, double noundef %49, ptr noundef nonnull @.str.336) #29
  br label %69

51:                                               ; preds = %23
  %52 = load ptr, ptr %5, align 8, !tbaa !30
  %53 = load ptr, ptr %6, align 8, !tbaa !202
  %54 = load ptr, ptr %53, align 8, !tbaa !30
  %55 = call i32 %54(ptr noundef nonnull %53, ptr noundef %52, ptr noundef %2, ptr noundef nonnull %5) #25
  br label %56

56:                                               ; preds = %18, %21, %51
  %57 = phi ptr [ %1, %18 ], [ %52, %51 ], [ %1, %21 ]
  %58 = phi i32 [ %9, %18 ], [ %55, %51 ], [ %9, %21 ]
  %59 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 48
  store ptr @prologProcessor, ptr %59, align 8, !tbaa !103
  %60 = load ptr, ptr %6, align 8, !tbaa !202
  %61 = load ptr, ptr %5, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %63 = load i8, ptr %62, align 4, !tbaa !199
  %64 = icmp eq i8 %63, 0
  %65 = zext i1 %64 to i8
  %66 = call fastcc i32 @doProlog(ptr noundef nonnull %0, ptr noundef %60, ptr noundef %57, ptr noundef %2, i32 noundef %58, ptr noundef %61, ptr noundef %3, i8 noundef zeroext %65, i8 noundef zeroext 1, i32 noundef 0)
  br label %69

67:                                               ; preds = %18
  %68 = sub i32 4, %9
  br label %69

69:                                               ; preds = %67, %36, %32, %56, %17
  %70 = phi i32 [ 0, %17 ], [ %66, %56 ], [ 43, %32 ], [ 43, %36 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @entityValueProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 37
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = call i32 %8(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #25
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %29, %4
  %12 = phi i32 [ %9, %4 ], [ %31, %29 ]
  %13 = getelementptr inbounds %struct.XML_ParserStruct, ptr %0, i64 0, i32 92, i32 1
  %14 = load i8, ptr %13, align 4, !tbaa !199
  %15 = icmp eq i8 %14, 0
  %16 = icmp ne i32 %12, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store ptr %1, ptr %3, align 8, !tbaa !30
  br label %35

19:                                               ; preds = %11
  %20 = add i32 %12, 2
  %21 = icmp ult i32 %20, 3
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = call fastcc i32 @storeEntityValue(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef null)
  br label %35

24:                                               ; preds = %4, %29
  %25 = phi i32 [ %31, %29 ], [ %9, %4 ]
  %26 = icmp eq i32 %25, 29
  %27 = load ptr, ptr %5, align 8, !tbaa !30
  br i1 %26, label %28, label %29

28:                                               ; preds = %24
  store ptr %27, ptr %3, align 8, !tbaa !30
  br label %35

29:                                               ; preds = %24
  %30 = load ptr, ptr %7, align 8, !tbaa !30
  %31 = call i32 %30(ptr noundef nonnull %7, ptr noundef %27, ptr noundef %2, ptr noundef nonnull %5) #25
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %11, label %24

33:                                               ; preds = %19
  %34 = sub i32 4, %12
  br label %35

35:                                               ; preds = %33, %28, %22, %18
  %36 = phi i32 [ 0, %18 ], [ %23, %22 ], [ 2, %28 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @copyEntityTable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.HASH_TABLE, ptr %3, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !88
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ null, %4 ]
  %13 = getelementptr inbounds %struct.STRING_POOL, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.STRING_POOL, ptr %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.STRING_POOL, ptr %2, i64 0, i32 4
  br label %16

16:                                               ; preds = %189, %11
  %17 = phi ptr [ %5, %11 ], [ %24, %189 ]
  %18 = phi ptr [ null, %11 ], [ %164, %189 ]
  %19 = phi ptr [ null, %11 ], [ %165, %189 ]
  br label %20

20:                                               ; preds = %23, %16
  %21 = phi ptr [ %24, %23 ], [ %17, %16 ]
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %196, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %21, i64 1
  %25 = load ptr, ptr %21, align 8, !tbaa !30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %20, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !243
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #30
  %30 = add i64 %29, 1
  br label %31

31:                                               ; preds = %38, %27
  %32 = load ptr, ptr %13, align 8, !tbaa !131
  %33 = load ptr, ptr %14, align 8, !tbaa !132
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = icmp ult i64 %36, %30
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %196, label %31

41:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %28, i64 %30, i1 false)
  %42 = load ptr, ptr %14, align 8, !tbaa !132
  %43 = getelementptr inbounds i8, ptr %42, i64 %30
  store ptr %43, ptr %14, align 8, !tbaa !132
  %44 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %43, ptr %15, align 8, !tbaa !134
  %45 = icmp eq ptr %44, null
  br i1 %45, label %196, label %46

46:                                               ; preds = %41
  %47 = tail call fastcc ptr @lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %44, i64 noundef 64)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %196, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !231
  %52 = icmp eq ptr %51, null
  br i1 %52, label %126, label %53

53:                                               ; preds = %49
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #30
  %55 = add i64 %54, 1
  br label %56

56:                                               ; preds = %63, %53
  %57 = load ptr, ptr %13, align 8, !tbaa !131
  %58 = load ptr, ptr %14, align 8, !tbaa !132
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp ult i64 %61, %55
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %196, label %56

66:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr nonnull align 1 %51, i64 %55, i1 false)
  %67 = load ptr, ptr %14, align 8, !tbaa !132
  %68 = getelementptr inbounds i8, ptr %67, i64 %55
  store ptr %68, ptr %14, align 8, !tbaa !132
  %69 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %68, ptr %15, align 8, !tbaa !134
  %70 = icmp eq ptr %69, null
  br i1 %70, label %196, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 4
  store ptr %69, ptr %72, align 8, !tbaa !231
  %73 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !230
  %75 = icmp eq ptr %74, null
  br i1 %75, label %100, label %76

76:                                               ; preds = %71
  %77 = icmp eq ptr %74, %19
  br i1 %77, label %96, label %78

78:                                               ; preds = %76
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #30
  %80 = add i64 %79, 1
  br label %81

81:                                               ; preds = %88, %78
  %82 = load ptr, ptr %13, align 8, !tbaa !131
  %83 = load ptr, ptr %14, align 8, !tbaa !132
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = icmp ult i64 %86, %80
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %196, label %81

91:                                               ; preds = %81
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %83, ptr nonnull align 1 %74, i64 %80, i1 false)
  %92 = load ptr, ptr %14, align 8, !tbaa !132
  %93 = getelementptr inbounds i8, ptr %92, i64 %80
  store ptr %93, ptr %14, align 8, !tbaa !132
  %94 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %93, ptr %15, align 8, !tbaa !134
  %95 = icmp eq ptr %94, null
  br i1 %95, label %196, label %96

96:                                               ; preds = %91, %76
  %97 = phi ptr [ %18, %76 ], [ %94, %91 ]
  %98 = phi ptr [ %19, %76 ], [ %74, %91 ]
  %99 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 5
  store ptr %97, ptr %99, align 8, !tbaa !230
  br label %100

100:                                              ; preds = %96, %71
  %101 = phi ptr [ %18, %71 ], [ %97, %96 ]
  %102 = phi ptr [ %19, %71 ], [ %98, %96 ]
  %103 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !228
  %105 = icmp eq ptr %104, null
  br i1 %105, label %163, label %106

106:                                              ; preds = %100
  %107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %104) #30
  %108 = add i64 %107, 1
  br label %109

109:                                              ; preds = %116, %106
  %110 = load ptr, ptr %13, align 8, !tbaa !131
  %111 = load ptr, ptr %14, align 8, !tbaa !132
  %112 = ptrtoint ptr %110 to i64
  %113 = ptrtoint ptr %111 to i64
  %114 = sub i64 %112, %113
  %115 = icmp ult i64 %114, %108
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %196, label %109

119:                                              ; preds = %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr nonnull align 1 %104, i64 %108, i1 false)
  %120 = load ptr, ptr %14, align 8, !tbaa !132
  %121 = getelementptr inbounds i8, ptr %120, i64 %108
  store ptr %121, ptr %14, align 8, !tbaa !132
  %122 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %121, ptr %15, align 8, !tbaa !134
  %123 = icmp eq ptr %122, null
  br i1 %123, label %196, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 6
  store ptr %122, ptr %125, align 8, !tbaa !228
  br label %163

126:                                              ; preds = %49
  %127 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !238
  %129 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !240
  %131 = load ptr, ptr %14, align 8, !tbaa !132
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %196, label %136

136:                                              ; preds = %133, %126
  %137 = icmp sgt i32 %130, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %14, align 8, !tbaa !132
  br label %155

140:                                              ; preds = %136
  %141 = zext nneg i32 %130 to i64
  br label %142

142:                                              ; preds = %149, %140
  %143 = load ptr, ptr %13, align 8, !tbaa !131
  %144 = load ptr, ptr %14, align 8, !tbaa !132
  %145 = ptrtoint ptr %143 to i64
  %146 = ptrtoint ptr %144 to i64
  %147 = sub i64 %145, %146
  %148 = icmp ult i64 %147, %141
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %196, label %142

152:                                              ; preds = %142
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %128, i64 %141, i1 false)
  %153 = load ptr, ptr %14, align 8, !tbaa !132
  %154 = getelementptr inbounds i8, ptr %153, i64 %141
  store ptr %154, ptr %14, align 8, !tbaa !132
  br label %155

155:                                              ; preds = %138, %152
  %156 = phi ptr [ %139, %138 ], [ %154, %152 ]
  %157 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %156, ptr %15, align 8, !tbaa !134
  %158 = icmp eq ptr %157, null
  br i1 %158, label %196, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 1
  store ptr %157, ptr %160, align 8, !tbaa !238
  %161 = load i32, ptr %129, align 8, !tbaa !240
  %162 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 2
  store i32 %161, ptr %162, align 8, !tbaa !240
  br label %163

163:                                              ; preds = %124, %100, %159
  %164 = phi ptr [ %18, %159 ], [ %101, %124 ], [ %101, %100 ]
  %165 = phi ptr [ %19, %159 ], [ %102, %124 ], [ %102, %100 ]
  %166 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !249
  %168 = icmp eq ptr %167, null
  br i1 %168, label %189, label %169

169:                                              ; preds = %163
  %170 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %167) #30
  %171 = add i64 %170, 1
  br label %172

172:                                              ; preds = %179, %169
  %173 = load ptr, ptr %13, align 8, !tbaa !131
  %174 = load ptr, ptr %14, align 8, !tbaa !132
  %175 = ptrtoint ptr %173 to i64
  %176 = ptrtoint ptr %174 to i64
  %177 = sub i64 %175, %176
  %178 = icmp ult i64 %177, %171
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = tail call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %2), !range !133
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %196, label %172

182:                                              ; preds = %172
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %174, ptr nonnull align 1 %167, i64 %171, i1 false)
  %183 = load ptr, ptr %14, align 8, !tbaa !132
  %184 = getelementptr inbounds i8, ptr %183, i64 %171
  store ptr %184, ptr %14, align 8, !tbaa !132
  %185 = load ptr, ptr %15, align 8, !tbaa !134
  store ptr %184, ptr %15, align 8, !tbaa !134
  %186 = icmp eq ptr %185, null
  br i1 %186, label %196, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 7
  store ptr %185, ptr %188, align 8, !tbaa !249
  br label %189

189:                                              ; preds = %163, %187
  %190 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 10
  %191 = load i8, ptr %190, align 2, !tbaa !246
  %192 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 10
  store i8 %191, ptr %192, align 2, !tbaa !246
  %193 = getelementptr inbounds %struct.ENTITY, ptr %25, i64 0, i32 11
  %194 = load i8, ptr %193, align 1, !tbaa !251
  %195 = getelementptr inbounds %struct.ENTITY, ptr %47, i64 0, i32 11
  store i8 %194, ptr %195, align 1, !tbaa !251
  br label %16

196:                                              ; preds = %133, %119, %91, %66, %182, %155, %46, %41, %20, %38, %63, %88, %116, %149, %179
  %197 = phi i32 [ 0, %179 ], [ 0, %149 ], [ 0, %116 ], [ 0, %88 ], [ 0, %63 ], [ 0, %38 ], [ 1, %20 ], [ 0, %41 ], [ 0, %46 ], [ 0, %155 ], [ 0, %182 ], [ 0, %66 ], [ 0, %91 ], [ 0, %119 ], [ 0, %133 ]
  ret i32 %197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold }
attributes #30 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 952}
!9 = !{!"XML_ParserStruct", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 48, !10, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !12, i64 88, !6, i64 96, !13, i64 100, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !14, i64 312, !10, i64 456, !10, i64 464, !6, i64 472, !6, i64 473, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !16, i64 512, !10, i64 544, !13, i64 552, !10, i64 560, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !6, i64 632, !13, i64 636, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !10, i64 688, !10, i64 696, !10, i64 704, !6, i64 712, !6, i64 713, !10, i64 720, !10, i64 728, !10, i64 736, !10, i64 744, !10, i64 752, !10, i64 760, !12, i64 768, !13, i64 776, !13, i64 780, !10, i64 784, !10, i64 792, !12, i64 800, !6, i64 808, !17, i64 816, !18, i64 832, !18, i64 880, !10, i64 928, !12, i64 936, !6, i64 944, !10, i64 952, !19, i64 960, !6, i64 968, !6, i64 969, !13, i64 972, !20, i64 976, !6, i64 992, !21, i64 1000, !24, i64 1040, !25, i64 1080, !6, i64 1104}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"long", !6, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!"", !15, i64 0, !10, i64 136}
!15 = !{!"encoding", !6, i64 0, !6, i64 32, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !13, i64 128, !6, i64 132, !6, i64 133}
!16 = !{!"prolog_state", !10, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!17 = !{!"position", !12, i64 0, !12, i64 8}
!18 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!19 = !{!"", !13, i64 0, !6, i64 4}
!20 = !{!"sipkey", !6, i64 0}
!21 = !{!"accounting", !22, i64 0, !22, i64 8, !12, i64 16, !23, i64 24, !22, i64 32}
!22 = !{!"long long", !6, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!"MALLOC_TRACKER", !22, i64 0, !22, i64 8, !12, i64 16, !23, i64 24, !22, i64 32}
!25 = !{!"entity_stats", !13, i64 0, !13, i64 4, !13, i64 8, !12, i64 16}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!11, !10, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!10, !10, i64 0}
!31 = !{!11, !10, i64 16}
!32 = !{!11, !10, i64 8}
!33 = !{!13, !13, i64 0}
!34 = !{!9, !12, i64 1056}
!35 = !{!9, !23, i64 1064}
!36 = !{!9, !22, i64 1072}
!37 = !{!9, !22, i64 1000}
!38 = !{!9, !22, i64 1040}
!39 = !{!9, !22, i64 1048}
!40 = !{!9, !10, i64 16}
!41 = !{!9, !10, i64 64}
!42 = !{!9, !12, i64 768}
!43 = !{!9, !10, i64 784}
!44 = !{!9, !10, i64 104}
!45 = !{!9, !10, i64 112}
!46 = !{!18, !10, i64 40}
!47 = !{!48, !6, i64 8}
!48 = !{!"", !10, i64 0, !6, i64 8, !12, i64 16, !12, i64 24, !10, i64 32}
!49 = !{!48, !10, i64 0}
!50 = !{!48, !10, i64 32}
!51 = !{!9, !10, i64 720}
!52 = !{!9, !10, i64 760}
!53 = !{!9, !10, i64 744}
!54 = !{!9, !10, i64 592}
!55 = !{!9, !10, i64 608}
!56 = !{!9, !10, i64 624}
!57 = !{!9, !10, i64 264}
!58 = !{!9, !10, i64 496}
!59 = !{!9, !6, i64 944}
!60 = !{!9, !6, i64 472}
!61 = !{!9, !6, i64 473}
!62 = !{!9, !10, i64 464}
!63 = !{!9, !10, i64 456}
!64 = !{!9, !10, i64 736}
!65 = !{!66, !10, i64 0}
!66 = !{!"tag", !10, i64 0, !10, i64 8, !13, i64 16, !67, i64 24, !6, i64 64, !10, i64 72, !10, i64 80}
!67 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!68 = !{!66, !10, i64 80}
!69 = !{!70, !10, i64 8}
!70 = !{!"binding", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !13, i64 40, !13, i64 44}
!71 = distinct !{!71, !27}
!72 = distinct !{!72, !27}
!73 = !{!9, !10, i64 584}
!74 = !{!75, !10, i64 16}
!75 = !{!"open_internal_entity", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !13, i64 32, !6, i64 36, !13, i64 40}
!76 = distinct !{!76, !27}
!77 = !{!9, !10, i64 600}
!78 = distinct !{!78, !27}
!79 = !{!9, !10, i64 616}
!80 = distinct !{!80, !27}
!81 = !{!9, !10, i64 752}
!82 = !{!9, !10, i64 480}
!83 = !{!9, !10, i64 504}
!84 = !{!9, !10, i64 488}
!85 = !{!18, !10, i64 8}
!86 = !{!18, !10, i64 0}
!87 = distinct !{!87, !27}
!88 = !{!48, !12, i64 16}
!89 = distinct !{!89, !27}
!90 = !{!91, !10, i64 40}
!91 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !12, i64 32, !10, i64 40, !48, i64 48}
!92 = distinct !{!92, !27}
!93 = !{!48, !12, i64 24}
!94 = !{!95, !6, i64 259}
!95 = !{!"", !48, i64 0, !48, i64 40, !48, i64 80, !48, i64 120, !18, i64 160, !18, i64 208, !6, i64 256, !6, i64 257, !6, i64 258, !6, i64 259, !48, i64 264, !96, i64 304, !6, i64 320, !10, i64 328, !13, i64 336, !13, i64 340, !13, i64 344, !13, i64 348, !10, i64 352}
!96 = !{!"prefix", !10, i64 0, !10, i64 8}
!97 = !{!95, !10, i64 352}
!98 = !{!95, !10, i64 328}
!99 = !{!95, !6, i64 256}
!100 = !{!95, !6, i64 257}
!101 = !{!95, !6, i64 258}
!102 = !{!9, !10, i64 40}
!103 = !{!9, !10, i64 544}
!104 = !{!9, !10, i64 728}
!105 = !{!9, !10, i64 248}
!106 = !{!9, !10, i64 256}
!107 = !{!9, !10, i64 48}
!108 = !{!9, !10, i64 56}
!109 = !{!9, !6, i64 96}
!110 = !{!9, !13, i64 100}
!111 = !{!9, !13, i64 552}
!112 = !{!9, !6, i64 632}
!113 = !{!9, !13, i64 636}
!114 = !{!9, !13, i64 776}
!115 = !{!9, !13, i64 960}
!116 = !{!9, !6, i64 1104}
!117 = !{!9, !6, i64 968}
!118 = !{!9, !6, i64 969}
!119 = !{!9, !12, i64 1016}
!120 = !{!9, !23, i64 1024}
!121 = !{!9, !22, i64 1032}
!122 = !{!9, !12, i64 1096}
!123 = !{!9, !10, i64 696}
!124 = !{!9, !10, i64 0}
!125 = !{!9, !10, i64 8}
!126 = !{!9, !13, i64 972}
!127 = !{!9, !13, i64 536}
!128 = !{i64 0, i64 16, !5}
!129 = !{!9, !6, i64 992}
!130 = !{!96, !10, i64 0}
!131 = !{!18, !10, i64 16}
!132 = !{!18, !10, i64 24}
!133 = !{i8 0, i8 2}
!134 = !{!18, !10, i64 32}
!135 = !{!136, !10, i64 0}
!136 = !{!"attribute_id", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 17}
!137 = !{!136, !6, i64 16}
!138 = !{!136, !10, i64 8}
!139 = !{!136, !6, i64 17}
!140 = !{!141, !10, i64 0}
!141 = !{!"", !10, i64 0}
!142 = distinct !{!142, !27}
!143 = !{!91, !10, i64 0}
!144 = !{!91, !10, i64 80}
!145 = !{!91, !12, i64 24}
!146 = !{!91, !10, i64 16}
!147 = !{!91, !12, i64 32}
!148 = !{!91, !10, i64 8}
!149 = !{!150, !10, i64 0}
!150 = !{!"", !10, i64 0, !6, i64 8, !10, i64 16}
!151 = !{!150, !6, i64 8}
!152 = !{!150, !10, i64 16}
!153 = distinct !{!153, !27}
!154 = !{!95, !6, i64 320}
!155 = !{!95, !13, i64 348}
!156 = !{!9, !10, i64 864}
!157 = !{!158, !6, i64 56}
!158 = !{!"", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 20, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !6, i64 57, !6, i64 58, !6, i64 59}
!159 = !{!9, !10, i64 856}
!160 = distinct !{!160, !27}
!161 = !{!95, !10, i64 192}
!162 = distinct !{!162, !27}
!163 = !{i32 0, i32 41}
!164 = distinct !{!164, !27}
!165 = !{!70, !10, i64 32}
!166 = distinct !{!166, !27}
!167 = distinct !{!167, !27}
!168 = !{!9, !10, i64 928}
!169 = !{!9, !10, i64 792}
!170 = !{ptr @XmlInitEncoding, ptr @XmlInitEncodingNS}
!171 = !{!9, !13, i64 780}
!172 = !{!9, !10, i64 120}
!173 = !{!9, !10, i64 128}
!174 = !{!9, !10, i64 136}
!175 = !{!9, !10, i64 144}
!176 = !{!9, !10, i64 152}
!177 = !{!9, !10, i64 160}
!178 = !{!9, !10, i64 168}
!179 = !{!9, !10, i64 176}
!180 = !{!9, !10, i64 184}
!181 = !{!9, !10, i64 192}
!182 = !{!9, !10, i64 200}
!183 = !{!9, !10, i64 208}
!184 = !{!9, !10, i64 216}
!185 = !{!9, !10, i64 224}
!186 = !{!9, !10, i64 232}
!187 = !{!9, !10, i64 240}
!188 = !{!9, !10, i64 272}
!189 = !{!9, !10, i64 280}
!190 = !{!9, !10, i64 288}
!191 = !{!9, !10, i64 296}
!192 = !{i32 0, i32 3}
!193 = !{i64 0, i64 8, !5}
!194 = distinct !{!194, !27}
!195 = !{!9, !10, i64 24}
!196 = !{!9, !10, i64 576}
!197 = !{!9, !10, i64 80}
!198 = !{!9, !12, i64 72}
!199 = !{!9, !6, i64 964}
!200 = !{!9, !10, i64 560}
!201 = !{!9, !10, i64 568}
!202 = !{!9, !10, i64 304}
!203 = !{!15, !10, i64 96}
!204 = !{!9, !12, i64 88}
!205 = !{!9, !12, i64 816}
!206 = !{!9, !12, i64 824}
!207 = !{!9, !10, i64 32}
!208 = !{!75, !10, i64 0}
!209 = !{!75, !10, i64 8}
!210 = !{!15, !6, i64 132}
!211 = !{!15, !10, i64 112}
!212 = distinct !{!212, !27}
!213 = !{!9, !22, i64 1008}
!214 = !{!215, !10, i64 1040}
!215 = !{!"", !6, i64 0, !10, i64 1024, !10, i64 1032, !10, i64 1040}
!216 = !{!215, !10, i64 1024}
!217 = !{!215, !10, i64 1032}
!218 = !{ptr @XmlInitUnknownEncoding, ptr @XmlInitUnknownEncodingNS}
!219 = !{!75, !6, i64 36}
!220 = !{!9, !10, i64 512}
!221 = !{!9, !10, i64 648}
!222 = !{!9, !10, i64 664}
!223 = !{!9, !10, i64 656}
!224 = !{!9, !10, i64 640}
!225 = !{!15, !10, i64 104}
!226 = !{!15, !13, i64 128}
!227 = distinct !{!227, !27}
!228 = !{!158, !10, i64 40}
!229 = !{!95, !10, i64 184}
!230 = !{!158, !10, i64 32}
!231 = !{!158, !10, i64 24}
!232 = !{!9, !10, i64 704}
!233 = !{!9, !6, i64 712}
!234 = !{!9, !10, i64 672}
!235 = !{!9, !6, i64 713}
!236 = !{i32 0, i32 2}
!237 = !{!75, !10, i64 24}
!238 = !{!158, !10, i64 8}
!239 = !{!158, !13, i64 20}
!240 = !{!158, !13, i64 16}
!241 = !{!158, !6, i64 57}
!242 = !{!9, !13, i64 1084}
!243 = !{!158, !10, i64 0}
!244 = !{!9, !13, i64 1080}
!245 = !{!9, !13, i64 1088}
!246 = !{!158, !6, i64 58}
!247 = !{!95, !10, i64 240}
!248 = !{!95, !10, i64 232}
!249 = !{!158, !10, i64 48}
!250 = !{!15, !10, i64 88}
!251 = !{!158, !6, i64 59}
!252 = !{!9, !10, i64 680}
!253 = !{!9, !10, i64 688}
!254 = !{i32 0, i32 44}
!255 = !{!9, !13, i64 520}
!256 = !{!9, !12, i64 936}
!257 = !{!258, !13, i64 0}
!258 = !{!"", !13, i64 0, !13, i64 4, !10, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28}
!259 = !{!9, !13, i64 532}
!260 = !{!95, !13, i64 344}
!261 = !{!262, !10, i64 24}
!262 = !{!"XML_cp", !13, i64 0, !13, i64 4, !10, i64 8, !13, i64 16, !10, i64 24}
!263 = !{!262, !13, i64 0}
!264 = !{!258, !13, i64 4}
!265 = !{!258, !10, i64 8}
!266 = !{!95, !13, i64 336}
!267 = !{!262, !13, i64 16}
!268 = !{!262, !10, i64 8}
!269 = !{!258, !13, i64 24}
!270 = distinct !{!270, !27}
!271 = distinct !{!271, !27}
!272 = !{!22, !22, i64 0}
!273 = distinct !{!273, !27}
!274 = distinct !{!274, !27}
!275 = !{ptr @XmlParseXmlDecl, ptr @XmlParseXmlDeclNS}
!276 = !{!15, !10, i64 56}
!277 = !{!9, !10, i64 904}
!278 = !{!9, !10, i64 912}
!279 = distinct !{!279, !27}
!280 = distinct !{!280, !27}
!281 = distinct !{!281, !27}
!282 = !{!66, !13, i64 48}
!283 = !{!66, !10, i64 8}
!284 = !{!66, !13, i64 16}
!285 = !{!66, !10, i64 72}
!286 = !{!66, !10, i64 24}
!287 = !{!66, !10, i64 32}
!288 = distinct !{!288, !27}
!289 = !{!95, !13, i64 340}
!290 = !{!258, !13, i64 20}
!291 = !{!258, !13, i64 28}
!292 = !{!258, !13, i64 16}
!293 = !{!75, !13, i64 40}
!294 = !{!75, !13, i64 32}
!295 = !{!15, !10, i64 64}
!296 = distinct !{!296, !27}
!297 = !{!298, !12, i64 0}
!298 = !{!"siphash", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !10, i64 40, !12, i64 48}
!299 = !{!298, !12, i64 8}
!300 = !{!298, !12, i64 16}
!301 = !{!298, !12, i64 24}
!302 = !{!298, !10, i64 40}
!303 = !{!298, !12, i64 48}
!304 = distinct !{!304, !27}
!305 = distinct !{!305, !27}
!306 = !{!67, !10, i64 0}
!307 = !{!70, !10, i64 0}
!308 = !{!70, !10, i64 16}
!309 = !{!96, !10, i64 8}
!310 = distinct !{!310, !27}
!311 = !{!66, !13, i64 52}
!312 = distinct !{!312, !27}
!313 = !{!66, !10, i64 40}
!314 = distinct !{!314, !27}
!315 = distinct !{!315, !27}
!316 = !{!15, !10, i64 80}
!317 = !{!95, !10, i64 312}
!318 = !{!70, !13, i64 40}
!319 = !{!15, !10, i64 72}
!320 = !{!321, !10, i64 0}
!321 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24}
!322 = !{!321, !6, i64 24}
!323 = distinct !{!323, !27}
!324 = !{!321, !10, i64 8}
!325 = !{!321, !10, i64 16}
!326 = distinct !{!326, !27}
!327 = distinct !{!327, !27}
!328 = distinct !{!328, !27}
!329 = !{!9, !6, i64 808}
!330 = distinct !{!330, !27}
!331 = !{!9, !12, i64 800}
!332 = !{!333, !12, i64 0}
!333 = !{!"", !12, i64 0, !12, i64 8, !10, i64 16}
!334 = distinct !{!334, !335}
!335 = !{!"llvm.loop.unroll.disable"}
!336 = distinct !{!336, !27}
!337 = distinct !{!337, !27}
!338 = !{!333, !12, i64 8}
!339 = !{!333, !10, i64 16}
!340 = distinct !{!340, !27}
!341 = distinct !{!341, !27}
!342 = distinct !{!342, !27}
!343 = distinct !{!343, !27}
!344 = !{!70, !10, i64 24}
!345 = distinct !{!345, !27}
!346 = distinct !{!346, !27}
!347 = !{!67, !10, i64 8}
!348 = !{!67, !13, i64 28}
!349 = !{!67, !10, i64 16}
!350 = !{!67, !13, i64 32}
!351 = !{!70, !13, i64 44}
!352 = distinct !{!352, !27}
!353 = distinct !{!353, !27}
!354 = distinct !{!354, !27}
!355 = distinct !{!355, !27}
