; ModuleID = 'corpus_src/libexpat/expat/lib/xmltok.c'
source_filename = "corpus_src/libexpat/expat/lib/xmltok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.normal_encoding = type { %struct.encoding, [256 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.encoding = type { [4 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.unknown_encoding = type { %struct.normal_encoding, ptr, ptr, [256 x i16], [256 x [4 x i8]] }
%struct.INIT_ENCODING = type { %struct.encoding, ptr }
%struct.position = type { i64, i64 }
%struct.ATTRIBUTE = type { ptr, ptr, ptr, i8 }

@latin1_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @latin1_toUtf8, ptr @latin1_toUtf16, i32 1, i8 0, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@namingBitmap = internal unnamed_addr constant [320 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 67108864, i32 -2013265922, i32 134217726, i32 0, i32 0, i32 -8388609, i32 -8388609, i32 -1, i32 2146697215, i32 -514, i32 2147483647, i32 -1, i32 -1, i32 -8177, i32 -63832065, i32 16777215, i32 0, i32 -65536, i32 -1, i32 -1, i32 -134217217, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -10432, i32 -5, i32 1417641983, i32 1048573, i32 -8194, i32 -1, i32 -536936449, i32 -1, i32 -65533, i32 -1, i32 -58977, i32 54513663, i32 0, i32 -131072, i32 41943039, i32 -2, i32 127, i32 0, i32 -65536, i32 460799, i32 0, i32 134217726, i32 2046, i32 -131072, i32 -1, i32 2097151999, i32 3112959, i32 96, i32 -32, i32 603979775, i32 -16777216, i32 3, i32 -417824, i32 63307263, i32 -1342177280, i32 196611, i32 -423968, i32 57540095, i32 1577058304, i32 1835008, i32 -282656, i32 602799615, i32 0, i32 1, i32 -417824, i32 600702463, i32 -1342177280, i32 3, i32 -700594208, i32 62899992, i32 0, i32 0, i32 -139296, i32 66059775, i32 0, i32 3, i32 -139296, i32 66059775, i32 1073741824, i32 3, i32 -139296, i32 67108351, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 884735, i32 63, i32 0, i32 -17816170, i32 537750702, i32 31, i32 0, i32 0, i32 0, i32 -257, i32 1023, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -65473, i32 8388607, i32 514797, i32 1342177280, i32 -2110697471, i32 2908843, i32 1073741824, i32 -176109312, i32 7, i32 33622016, i32 -1, i32 -1, i32 -1, i32 -1, i32 268435455, i32 -1, i32 -1, i32 67108863, i32 1061158911, i32 -1, i32 -1426112705, i32 1073741823, i32 -1, i32 1608515583, i32 265232348, i32 534519807, i32 0, i32 19520, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 128, i32 1022, i32 -2, i32 -1, i32 2097151, i32 -2, i32 -1, i32 134217727, i32 -32, i32 8191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 63, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 15, i32 0, i32 0, i32 0, i32 134176768, i32 -2013265922, i32 134217726, i32 0, i32 8388608, i32 -8388609, i32 -8388609, i32 16777215, i32 0, i32 -65536, i32 -1, i32 -1, i32 -134217217, i32 196611, i32 0, i32 -1, i32 -1, i32 63, i32 3, i32 -10304, i32 -5, i32 1417641983, i32 1048573, i32 -8194, i32 -1, i32 -536936449, i32 -1, i32 -65413, i32 -1, i32 -58977, i32 54513663, i32 0, i32 -131072, i32 41943039, i32 -2, i32 -130945, i32 -1140850693, i32 -65514, i32 460799, i32 0, i32 134217726, i32 524287, i32 -64513, i32 -1, i32 2097151999, i32 -1081345, i32 67059199, i32 -18, i32 -201326593, i32 -14794753, i32 65487, i32 -417810, i32 -741999105, i32 -1333773921, i32 262095, i32 -423964, i32 -747766273, i32 1577073031, i32 2097088, i32 -282642, i32 -202506753, i32 15295, i32 65473, i32 -417810, i32 -204603905, i32 -1329579633, i32 65475, i32 -700594196, i32 -1010841832, i32 8404423, i32 65408, i32 -139282, i32 -1007682049, i32 6307295, i32 65475, i32 -139284, i32 -1007682049, i32 1080049119, i32 65475, i32 -139284, i32 -1006633473, i32 8404431, i32 65475, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 134184959, i32 67076095, i32 0, i32 -17816170, i32 1006595246, i32 67059551, i32 0, i32 50331648, i32 -1029700609, i32 -257, i32 -130049, i32 -21032993, i32 50216959, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 536805376, i32 2, i32 160, i32 4128766, i32 -2, i32 -1, i32 1713373183, i32 -2, i32 -1, i32 2013265919], align 16
@internal_utf8_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@internal_little2_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@internal_utf8_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@internal_little2_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@nmstrtPages = internal unnamed_addr constant <{ [216 x i8], [40 x i8] }> <{ [216 x i8] c"\02\03\04\05\06\07\08\00\00\09\0A\0B\0C\0D\0E\0F\10\11\00\00\00\00\00\00\00\00\00\00\00\00\12\13\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\17\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\18", [40 x i8] zeroinitializer }>, align 16
@namePages = internal unnamed_addr constant <{ [216 x i8], [40 x i8] }> <{ [216 x i8] c"\19\03\1A\1B\1C\1D\1E\00\00\1F !\22#$%\10\11\00\00\00\00\00\00\00\00\00\00\00\00\12\13&\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\17\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\18", [40 x i8] zeroinitializer }>, align 16
@KW_ISO_8859_1 = internal unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@KW_US_ASCII = internal unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@KW_UTF_8 = internal unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@KW_UTF_16 = internal unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@KW_UTF_16BE = internal unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@KW_UTF_16LE = internal unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@encodings = internal constant [7 x ptr] [ptr @latin1_encoding, ptr @ascii_encoding, ptr @utf8_encoding, ptr @big2_encoding, ptr @big2_encoding, ptr @little2_encoding, ptr @utf8_encoding], align 16
@utf8_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@big2_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @big2_prologTok, ptr @big2_contentTok, ptr @big2_cdataSectionTok, ptr @big2_ignoreSectionTok], [2 x ptr] [ptr @big2_attributeValueTok, ptr @big2_entityValueTok], ptr @big2_nameMatchesAscii, ptr @big2_nameLength, ptr @big2_skipS, ptr @big2_getAtts, ptr @big2_charRefNumber, ptr @big2_predefinedEntityName, ptr @big2_updatePosition, ptr @big2_isPublicId, ptr @big2_toUtf8, ptr @big2_toUtf16, i32 2, i8 0, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@little2_encoding = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ascii_encoding = internal constant { %struct.encoding, <{ [128 x i8], [128 x i8] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @ascii_toUtf8, ptr @latin1_toUtf16, i32 1, i8 1, i8 0 }, <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\16\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C", [128 x i8] zeroinitializer }>, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@KW_version = internal constant [8 x i8] c"version\00", align 1
@KW_encoding = internal constant [9 x i8] c"encoding\00", align 1
@KW_standalone = internal constant [11 x i8] c"standalone\00", align 1
@KW_yes = internal constant [4 x i8] c"yes\00", align 1
@KW_no = internal constant [3 x i8] c"no\00", align 1
@encodingsNS = internal constant [7 x ptr] [ptr @latin1_encoding_ns, ptr @ascii_encoding_ns, ptr @utf8_encoding_ns, ptr @big2_encoding_ns, ptr @big2_encoding_ns, ptr @little2_encoding_ns, ptr @utf8_encoding_ns], align 16
@latin1_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @latin1_toUtf8, ptr @latin1_toUtf16, i32 1, i8 0, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@utf8_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @utf8_toUtf8, ptr @utf8_toUtf16, i32 1, i8 1, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\00\00\00\00\00\00\00\00\00\01\01", ptr @utf8_isName2, ptr @utf8_isName3, ptr @isNever, ptr @utf8_isNmstrt2, ptr @utf8_isNmstrt3, ptr @isNever, ptr @utf8_isInvalid2, ptr @utf8_isInvalid3, ptr @utf8_isInvalid4 }, align 8
@big2_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @big2_prologTok, ptr @big2_contentTok, ptr @big2_cdataSectionTok, ptr @big2_ignoreSectionTok], [2 x ptr] [ptr @big2_attributeValueTok, ptr @big2_entityValueTok], ptr @big2_nameMatchesAscii, ptr @big2_nameLength, ptr @big2_skipS, ptr @big2_getAtts, ptr @big2_charRefNumber, ptr @big2_predefinedEntityName, ptr @big2_updatePosition, ptr @big2_isPublicId, ptr @big2_toUtf8, ptr @big2_toUtf16, i32 2, i8 0, i8 0 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@little2_encoding_ns = internal constant %struct.normal_encoding { %struct.encoding { [4 x ptr] [ptr @little2_prologTok, ptr @little2_contentTok, ptr @little2_cdataSectionTok, ptr @little2_ignoreSectionTok], [2 x ptr] [ptr @little2_attributeValueTok, ptr @little2_entityValueTok], ptr @little2_nameMatchesAscii, ptr @little2_nameLength, ptr @little2_skipS, ptr @little2_getAtts, ptr @little2_charRefNumber, ptr @little2_predefinedEntityName, ptr @little2_updatePosition, ptr @little2_isPublicId, ptr @little2_toUtf8, ptr @little2_toUtf16, i32 2, i8 0, i8 1 }, [256 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\16\1C\1A\1C\1C\16\1C\1C\1C\1C\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C\16\16\16\16\16\16\16\16", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ascii_encoding_ns = internal constant { %struct.encoding, <{ [128 x i8], [128 x i8] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { %struct.encoding { [4 x ptr] [ptr @normal_prologTok, ptr @normal_contentTok, ptr @normal_cdataSectionTok, ptr @normal_ignoreSectionTok], [2 x ptr] [ptr @normal_attributeValueTok, ptr @normal_entityValueTok], ptr @normal_nameMatchesAscii, ptr @normal_nameLength, ptr @normal_skipS, ptr @normal_getAtts, ptr @normal_charRefNumber, ptr @normal_predefinedEntityName, ptr @normal_updatePosition, ptr @normal_isPublicId, ptr @ascii_toUtf8, ptr @latin1_toUtf16, i32 1, i8 1, i8 0 }, <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\00\00\00\00\00\00\00\00\00\15\0A\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\10\0C\13\1C\1E\03\0D\1F !\22#\1B\1A\11\19\19\19\19\19\19\19\19\19\19\17\12\02\0E\0B\0F\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\14\1C\04\1C\16\1C\18\18\18\18\18\18\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\1C$\1C\1C\1C", [128 x i8] zeroinitializer }>, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@switch.table.normal_nameLength = private unnamed_addr constant [25 x i64] [i64 2, i64 3, i64 4, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 2, i64 1], align 8
@switch.table.big2_nameLength = private unnamed_addr constant [25 x i64] [i64 2, i64 3, i64 4, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2, i64 2], align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_INTERNAL_trim_to_complete_utf8_characters(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = icmp ugt ptr %3, %0
  br i1 %4, label %5, label %45

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %7, %6
  %9 = getelementptr i8, ptr %3, i64 %8
  br label %10

10:                                               ; preds = %5, %41
  %11 = phi ptr [ %13, %41 ], [ %3, %5 ]
  %12 = phi i64 [ %43, %41 ], [ 0, %5 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 -1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 248
  %17 = icmp eq i32 %16, 240
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = add i64 %12, -3
  %20 = icmp ult i64 %19, -4
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %11, i64 3
  br label %45

23:                                               ; preds = %10
  %24 = and i32 %15, 240
  %25 = icmp eq i32 %24, 224
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = add i64 %12, -2
  %28 = icmp ult i64 %27, -3
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %11, i64 2
  br label %45

31:                                               ; preds = %23
  %32 = and i32 %15, 224
  %33 = icmp eq i32 %32, 192
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = add i64 %12, -1
  %36 = icmp ult i64 %35, -2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %11, i64 1
  br label %45

39:                                               ; preds = %31
  %40 = icmp sgt i8 %14, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %34, %26, %18, %39
  %42 = phi i64 [ %12, %39 ], [ 0, %34 ], [ 0, %26 ], [ 0, %18 ]
  %43 = add i64 %42, 1
  %44 = icmp ugt ptr %13, %0
  br i1 %44, label %10, label %45, !llvm.loop !10

45:                                               ; preds = %41, %39, %2, %21, %29, %37
  %46 = phi ptr [ %22, %21 ], [ %30, %29 ], [ %38, %37 ], [ %3, %2 ], [ %9, %41 ], [ %11, %39 ]
  store ptr %46, ptr %1, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XmlUtf8Encode(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %0, 128
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = trunc i32 %0 to i8
  store i8 %7, ptr %1, align 1, !tbaa !9
  br label %53

8:                                                ; preds = %4
  %9 = icmp ult i32 %0, 2048
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = lshr i32 %0, 6
  %12 = trunc i32 %11 to i8
  %13 = or disjoint i8 %12, -64
  store i8 %13, ptr %1, align 1, !tbaa !9
  %14 = trunc i32 %0 to i8
  %15 = and i8 %14, 63
  %16 = or disjoint i8 %15, -128
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %16, ptr %17, align 1, !tbaa !9
  br label %53

18:                                               ; preds = %8
  %19 = icmp ult i32 %0, 65536
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = lshr i32 %0, 12
  %22 = trunc i32 %21 to i8
  %23 = or disjoint i8 %22, -32
  store i8 %23, ptr %1, align 1, !tbaa !9
  %24 = lshr i32 %0, 6
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 63
  %27 = or disjoint i8 %26, -128
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !9
  %29 = trunc i32 %0 to i8
  %30 = and i8 %29, 63
  %31 = or disjoint i8 %30, -128
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %31, ptr %32, align 1, !tbaa !9
  br label %53

33:                                               ; preds = %18
  %34 = icmp ult i32 %0, 1114112
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = lshr i32 %0, 18
  %37 = trunc i32 %36 to i8
  %38 = or disjoint i8 %37, -16
  store i8 %38, ptr %1, align 1, !tbaa !9
  %39 = lshr i32 %0, 12
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 63
  %42 = or disjoint i8 %41, -128
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %42, ptr %43, align 1, !tbaa !9
  %44 = lshr i32 %0, 6
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 63
  %47 = or disjoint i8 %46, -128
  %48 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %47, ptr %48, align 1, !tbaa !9
  %49 = trunc i32 %0 to i8
  %50 = and i8 %49, 63
  %51 = or disjoint i8 %50, -128
  %52 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %51, ptr %52, align 1, !tbaa !9
  br label %53

53:                                               ; preds = %33, %2, %35, %20, %10, %6
  %54 = phi i32 [ 1, %6 ], [ 2, %10 ], [ 3, %20 ], [ 4, %35 ], [ 0, %2 ], [ 0, %33 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XmlUtf16Encode(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %0, 65536
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = trunc i32 %0 to i16
  store i16 %7, ptr %1, align 2, !tbaa !12
  br label %19

8:                                                ; preds = %4
  %9 = icmp ult i32 %0, 1114112
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = add nuw nsw i32 %0, 67043328
  %12 = lshr i32 %11, 10
  %13 = trunc i32 %12 to i16
  %14 = add nuw nsw i16 %13, -10240
  store i16 %14, ptr %1, align 2, !tbaa !12
  %15 = trunc i32 %0 to i16
  %16 = and i16 %15, 1023
  %17 = or disjoint i16 %16, -9216
  %18 = getelementptr inbounds i16, ptr %1, i64 1
  store i16 %17, ptr %18, align 2, !tbaa !12
  br label %19

19:                                               ; preds = %8, %2, %10, %6
  %20 = phi i32 [ 1, %6 ], [ 2, %10 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XmlSizeOfUnknownEncoding() local_unnamed_addr #3 {
  ret i32 2016
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @XmlInitUnknownEncoding(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(464) @latin1_encoding, i64 464, i1 false)
  br label %7

5:                                                ; preds = %25
  %6 = icmp eq ptr %2, null
  br label %28

7:                                                ; preds = %25, %4
  %8 = phi i64 [ 0, %4 ], [ %26, %25 ]
  %9 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %8
  %10 = load i8, ptr %9, align 2, !tbaa !9
  switch i8 %10, label %11 [
    i8 28, label %16
    i8 0, label %16
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds i32, ptr %1, i64 %8
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = zext i32 %13 to i64
  %15 = icmp eq i64 %8, %14
  br i1 %15, label %16, label %161

16:                                               ; preds = %7, %7, %11
  %17 = or disjoint i64 %8, 1
  %18 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %20 [
    i8 28, label %25
    i8 0, label %25
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds i32, ptr %1, i64 %17
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = zext i32 %22 to i64
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %161

25:                                               ; preds = %20, %16, %16
  %26 = add nuw nsw i64 %8, 2
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %5, label %7, !llvm.loop !16

28:                                               ; preds = %5, %142
  %29 = phi i64 [ 0, %5 ], [ %143, %142 ]
  %30 = getelementptr inbounds i32, ptr %1, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !14
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  store i8 1, ptr %34, align 1, !tbaa !9
  %35 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %29
  store i16 -1, ptr %35, align 2, !tbaa !12
  %36 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29
  store i8 1, ptr %36, align 4, !tbaa !9
  %37 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29, i64 1
  store i8 0, ptr %37, align 1, !tbaa !9
  br label %142

38:                                               ; preds = %28
  %39 = icmp slt i32 %31, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = icmp ult i32 %31, -4
  %42 = or i1 %6, %41
  br i1 %42, label %161, label %43

43:                                               ; preds = %40
  %44 = trunc i32 %31 to i8
  %45 = sub nsw i8 3, %44
  %46 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  store i8 %45, ptr %46, align 1, !tbaa !9
  %47 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29
  store i8 0, ptr %47, align 4, !tbaa !9
  %48 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %29
  store i16 0, ptr %48, align 2, !tbaa !12
  br label %142

49:                                               ; preds = %38
  %50 = icmp ult i32 %31, 128
  br i1 %50, label %51, label %66

51:                                               ; preds = %49
  %52 = zext nneg i32 %31 to i64
  %53 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !9
  switch i8 %54, label %55 [
    i8 28, label %57
    i8 0, label %57
  ]

55:                                               ; preds = %51
  %56 = icmp eq i64 %29, %52
  br i1 %56, label %57, label %161

57:                                               ; preds = %51, %51, %55
  %58 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  store i8 %54, ptr %58, align 1, !tbaa !9
  %59 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29
  store i8 1, ptr %59, align 4, !tbaa !9
  %60 = trunc i32 %31 to i8
  %61 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29, i64 1
  store i8 %60, ptr %61, align 1, !tbaa !9
  %62 = icmp eq i32 %31, 0
  %63 = trunc i32 %31 to i16
  %64 = select i1 %62, i16 -1, i16 %63
  %65 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %29
  store i16 %64, ptr %65, align 2, !tbaa !12
  br label %142

66:                                               ; preds = %49
  %67 = lshr i32 %31, 8
  switch i32 %67, label %81 [
    i32 216, label %76
    i32 217, label %76
    i32 218, label %76
    i32 219, label %76
    i32 220, label %76
    i32 221, label %76
    i32 222, label %76
    i32 223, label %76
    i32 0, label %68
    i32 255, label %73
  ]

68:                                               ; preds = %66
  %69 = zext nneg i32 %31 to i64
  %70 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %81

73:                                               ; preds = %66
  %74 = and i32 %31, 2147483646
  %75 = icmp eq i32 %74, 65534
  br i1 %75, label %76, label %81

76:                                               ; preds = %66, %66, %66, %66, %66, %66, %66, %66, %68, %73
  %77 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  store i8 0, ptr %77, align 1, !tbaa !9
  %78 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %29
  store i16 -1, ptr %78, align 2, !tbaa !12
  %79 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29
  store i8 1, ptr %79, align 4, !tbaa !9
  %80 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29, i64 1
  store i8 0, ptr %80, align 1, !tbaa !9
  br label %142

81:                                               ; preds = %73, %68, %66
  %82 = icmp ugt i32 %31, 65535
  br i1 %82, label %161, label %83

83:                                               ; preds = %81
  %84 = zext nneg i32 %67 to i64
  %85 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 3
  %89 = lshr i32 %31, 5
  %90 = and i32 %89, 7
  %91 = or disjoint i32 %88, %90
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !14
  %95 = and i32 %31, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %83
  %100 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  store i8 22, ptr %100, align 1, !tbaa !9
  br label %115

101:                                              ; preds = %83
  %102 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %84
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 3
  %106 = or disjoint i32 %105, %90
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !14
  %110 = and i32 %109, %96
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  br i1 %111, label %114, label %113

113:                                              ; preds = %101
  store i8 26, ptr %112, align 1, !tbaa !9
  br label %115

114:                                              ; preds = %101
  store i8 28, ptr %112, align 1, !tbaa !9
  br label %115

115:                                              ; preds = %113, %114, %99
  %116 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %29
  %117 = getelementptr inbounds i8, ptr %116, i64 1
  %118 = icmp ult i32 %31, 2048
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = lshr i32 %31, 6
  %121 = trunc i32 %120 to i8
  %122 = or disjoint i8 %121, -64
  br label %132

123:                                              ; preds = %115
  %124 = lshr i32 %31, 12
  %125 = trunc i32 %124 to i8
  %126 = or disjoint i8 %125, -32
  %127 = lshr i32 %31, 6
  %128 = trunc i32 %31 to i8
  %129 = and i8 %128, 63
  %130 = or disjoint i8 %129, -128
  %131 = getelementptr inbounds i8, ptr %116, i64 3
  store i8 %130, ptr %131, align 1, !tbaa !9
  br label %132

132:                                              ; preds = %119, %123
  %133 = phi i8 [ %122, %119 ], [ %126, %123 ]
  %134 = phi i32 [ %31, %119 ], [ %127, %123 ]
  %135 = phi i8 [ 2, %119 ], [ 3, %123 ]
  %136 = trunc i32 %134 to i8
  %137 = and i8 %136, 63
  %138 = or disjoint i8 %137, -128
  store i8 %133, ptr %117, align 1
  %139 = getelementptr inbounds i8, ptr %116, i64 2
  store i8 %138, ptr %139, align 1
  store i8 %135, ptr %116, align 4, !tbaa !9
  %140 = trunc i32 %31 to i16
  %141 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %29
  store i16 %140, ptr %141, align 2, !tbaa !12
  br label %142

142:                                              ; preds = %43, %76, %132, %57, %33
  %143 = add nuw nsw i64 %29, 1
  %144 = icmp eq i64 %143, 256
  br i1 %144, label %145, label %28, !llvm.loop !17

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  store ptr %3, ptr %146, align 8, !tbaa !18
  %147 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  store ptr %2, ptr %147, align 8, !tbaa !22
  br i1 %6, label %158, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  store ptr @unknown_isName, ptr %149, align 8, !tbaa !23
  %150 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  store ptr @unknown_isName, ptr %150, align 8, !tbaa !24
  %151 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  store ptr @unknown_isName, ptr %151, align 8, !tbaa !25
  %152 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  store ptr @unknown_isNmstrt, ptr %152, align 8, !tbaa !26
  %153 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  store ptr @unknown_isNmstrt, ptr %153, align 8, !tbaa !27
  %154 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  store ptr @unknown_isNmstrt, ptr %154, align 8, !tbaa !28
  %155 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  store ptr @unknown_isInvalid, ptr %155, align 8, !tbaa !29
  %156 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  store ptr @unknown_isInvalid, ptr %156, align 8, !tbaa !30
  %157 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  store ptr @unknown_isInvalid, ptr %157, align 8, !tbaa !31
  br label %158

158:                                              ; preds = %148, %145
  %159 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 10
  store ptr @unknown_toUtf8, ptr %159, align 8, !tbaa !32
  %160 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 11
  store ptr @unknown_toUtf16, ptr %160, align 8, !tbaa !33
  br label %161

161:                                              ; preds = %11, %20, %40, %55, %81, %158
  %162 = phi ptr [ %0, %158 ], [ null, %81 ], [ null, %55 ], [ null, %40 ], [ null, %20 ], [ null, %11 ]
  ret ptr %162
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal i32 @unknown_isName(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call i32 %4(ptr noundef %6, ptr noundef %1) #14
  %8 = icmp ult i32 %7, 65536
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = lshr i32 %7, 8
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = lshr i32 %7, 5
  %17 = and i32 %16, 7
  %18 = or disjoint i32 %15, %17
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = and i32 %7, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  br label %25

25:                                               ; preds = %2, %9
  %26 = phi i32 [ %24, %9 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @unknown_isNmstrt(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call i32 %4(ptr noundef %6, ptr noundef %1) #14
  %8 = icmp ult i32 %7, 65536
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = lshr i32 %7, 8
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = lshr i32 %7, 5
  %17 = and i32 %16, 7
  %18 = or disjoint i32 %15, %17
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = and i32 %7, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  br label %25

25:                                               ; preds = %2, %9
  %26 = phi i32 [ %24, %9 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unknown_isInvalid(ptr nocapture noundef readonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call i32 %4(ptr noundef %6, ptr noundef %1) #14
  %8 = icmp ult i32 %7, 65536
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = lshr i32 %7, 8
  %11 = trunc i32 %10 to i8
  switch i8 %11, label %20 [
    i8 -40, label %21
    i8 -39, label %21
    i8 -38, label %21
    i8 -37, label %21
    i8 -36, label %21
    i8 -35, label %21
    i8 -34, label %21
    i8 -33, label %21
    i8 0, label %12
    i8 -1, label %17
  ]

12:                                               ; preds = %9
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %20

17:                                               ; preds = %9
  %18 = and i32 %7, 65534
  %19 = icmp eq i32 %18, 65534
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %12, %9
  br label %21

21:                                               ; preds = %20, %17, %12, %9, %9, %9, %9, %9, %9, %9, %9, %2
  %22 = phi i32 [ 1, %2 ], [ 0, %20 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ], [ 1, %12 ], [ 1, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unknown_toUtf8(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4) #6 {
  %6 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %107, label %9

9:                                                ; preds = %5
  %10 = ptrtoint ptr %4 to i64
  %11 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = getelementptr inbounds i8, ptr %6, i64 2
  %15 = getelementptr inbounds i8, ptr %6, i64 3
  br label %16

16:                                               ; preds = %9, %97
  %17 = phi ptr [ %7, %9 ], [ %105, %97 ]
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 4, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %20, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %16
  %26 = load ptr, ptr %11, align 8, !tbaa !22
  %27 = load ptr, ptr %12, align 8, !tbaa !18
  %28 = tail call i32 %26(ptr noundef %27, ptr noundef nonnull %17) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %25
  %31 = icmp ult i32 %28, 128
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = trunc i32 %28 to i8
  store i8 %33, ptr %6, align 1, !tbaa !9
  br label %73

34:                                               ; preds = %30
  %35 = icmp ult i32 %28, 2048
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = lshr i32 %28, 6
  %38 = trunc i32 %37 to i8
  %39 = or disjoint i8 %38, -64
  store i8 %39, ptr %6, align 1, !tbaa !9
  %40 = trunc i32 %28 to i8
  %41 = and i8 %40, 63
  %42 = or disjoint i8 %41, -128
  store i8 %42, ptr %13, align 1, !tbaa !9
  br label %73

43:                                               ; preds = %34
  %44 = icmp ult i32 %28, 65536
  br i1 %44, label %45, label %56

45:                                               ; preds = %43
  %46 = lshr i32 %28, 12
  %47 = trunc i32 %46 to i8
  %48 = or disjoint i8 %47, -32
  store i8 %48, ptr %6, align 1, !tbaa !9
  %49 = lshr i32 %28, 6
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 63
  %52 = or disjoint i8 %51, -128
  store i8 %52, ptr %13, align 1, !tbaa !9
  %53 = trunc i32 %28 to i8
  %54 = and i8 %53, 63
  %55 = or disjoint i8 %54, -128
  store i8 %55, ptr %14, align 1, !tbaa !9
  br label %73

56:                                               ; preds = %43
  %57 = icmp ult i32 %28, 1114112
  br i1 %57, label %58, label %73

58:                                               ; preds = %56
  %59 = lshr i32 %28, 18
  %60 = trunc i32 %59 to i8
  %61 = or disjoint i8 %60, -16
  store i8 %61, ptr %6, align 1, !tbaa !9
  %62 = lshr i32 %28, 12
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 63
  %65 = or disjoint i8 %64, -128
  store i8 %65, ptr %13, align 1, !tbaa !9
  %66 = lshr i32 %28, 6
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 63
  %69 = or disjoint i8 %68, -128
  store i8 %69, ptr %14, align 1, !tbaa !9
  %70 = trunc i32 %28 to i8
  %71 = and i8 %70, 63
  %72 = or disjoint i8 %71, -128
  store i8 %72, ptr %15, align 1, !tbaa !9
  br label %73

73:                                               ; preds = %25, %32, %36, %45, %56, %58
  %74 = phi i32 [ 1, %32 ], [ 2, %36 ], [ 3, %45 ], [ 4, %58 ], [ 0, %25 ], [ 0, %56 ]
  %75 = zext nneg i32 %74 to i64
  %76 = load ptr, ptr %3, align 8, !tbaa !5
  %77 = ptrtoint ptr %76 to i64
  %78 = sub i64 %10, %77
  %79 = icmp slt i64 %78, %75
  br i1 %79, label %107, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %1, align 8, !tbaa !5
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !9
  %86 = zext i8 %85 to i64
  %87 = getelementptr i8, ptr %81, i64 %86
  %88 = getelementptr i8, ptr %87, i64 -3
  br label %97

89:                                               ; preds = %16
  %90 = sext i8 %22 to i64
  %91 = load ptr, ptr %3, align 8, !tbaa !5
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %10, %92
  %94 = icmp slt i64 %93, %90
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %17, i64 1
  br label %97

97:                                               ; preds = %95, %80
  %98 = phi ptr [ %96, %95 ], [ %88, %80 ]
  %99 = phi ptr [ %21, %95 ], [ %6, %80 ]
  %100 = phi i32 [ %23, %95 ], [ %74, %80 ]
  store ptr %98, ptr %1, align 8, !tbaa !5
  %101 = load ptr, ptr %3, align 8, !tbaa !5
  %102 = sext i32 %100 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %101, ptr nonnull align 1 %99, i64 %102, i1 false)
  %103 = load ptr, ptr %3, align 8, !tbaa !5
  %104 = getelementptr inbounds i8, ptr %103, i64 %102
  store ptr %104, ptr %3, align 8, !tbaa !5
  %105 = load ptr, ptr %1, align 8, !tbaa !5
  %106 = icmp eq ptr %105, %2
  br i1 %106, label %107, label %16

107:                                              ; preds = %89, %97, %73, %5
  %108 = phi i32 [ 0, %5 ], [ 2, %73 ], [ 0, %97 ], [ 2, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unknown_toUtf16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef readnone %4) #6 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = icmp ult ptr %6, %2
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %8, %37
  %13 = phi ptr [ %11, %8 ], [ %41, %37 ]
  %14 = phi ptr [ %6, %8 ], [ %42, %37 ]
  %15 = icmp ult ptr %13, %4
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load i8, ptr %14, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.unknown_encoding, ptr %0, i64 0, i32 3, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load ptr, ptr %9, align 8, !tbaa !22
  %24 = load ptr, ptr %10, align 8, !tbaa !18
  %25 = tail call i32 %23(ptr noundef %24, ptr noundef nonnull %14) #14
  %26 = trunc i32 %25 to i16
  %27 = load ptr, ptr %1, align 8, !tbaa !5
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = getelementptr i8, ptr %27, i64 %32
  %34 = getelementptr i8, ptr %33, i64 -3
  br label %37

35:                                               ; preds = %16
  %36 = getelementptr inbounds i8, ptr %14, i64 1
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi ptr [ %36, %35 ], [ %34, %22 ]
  %39 = phi i16 [ %20, %35 ], [ %26, %22 ]
  store ptr %38, ptr %1, align 8, !tbaa !5
  %40 = load ptr, ptr %3, align 8, !tbaa !5
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  store ptr %41, ptr %3, align 8, !tbaa !5
  store i16 %39, ptr %40, align 2, !tbaa !12
  %42 = load ptr, ptr %1, align 8, !tbaa !5
  %43 = icmp ult ptr %42, %2
  br i1 %43, label %12, label %46, !llvm.loop !34

44:                                               ; preds = %12
  %45 = icmp eq ptr %13, %4
  br i1 %45, label %47, label %46

46:                                               ; preds = %37, %5, %44
  br label %47

47:                                               ; preds = %44, %46
  %48 = phi i32 [ 0, %46 ], [ 2, %44 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XmlGetUtf8InternalEncoding() local_unnamed_addr #3 {
  ret ptr @internal_utf8_encoding
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XmlGetUtf16InternalEncoding() local_unnamed_addr #3 {
  ret ptr @internal_little2_encoding
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @XmlInitEncoding(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @getEncodingIndex(ptr noundef %2), !range !35
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i8
  %8 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 14
  store i8 %7, ptr %8, align 1, !tbaa !36
  store ptr @initScanProlog, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  store ptr @initScanContent, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 8
  store ptr @initUpdatePosition, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.INIT_ENCODING, ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !39
  store ptr %0, ptr %1, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ 1, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @getEncodingIndex(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %119, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = phi ptr [ %8, %3 ], [ @KW_ISO_8859_1, %1 ]
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = load i8, ptr %4, align 1, !tbaa !9
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  %9 = load i8, ptr %5, align 1, !tbaa !9
  %10 = add i8 %7, -97
  %11 = icmp ult i8 %10, 26
  %12 = add nsw i8 %7, -32
  %13 = select i1 %11, i8 %12, i8 %7
  %14 = add i8 %9, -97
  %15 = icmp ult i8 %14, 26
  %16 = add nsw i8 %9, -32
  %17 = select i1 %15, i8 %16, i8 %9
  %18 = icmp eq i8 %13, %17
  %19 = icmp eq i8 %13, 0
  %20 = select i1 %19, i32 2, i32 0
  %21 = select i1 %18, i32 %20, i32 1
  switch i32 %21, label %22 [
    i32 0, label %3
    i32 1, label %23
    i32 2, label %119
  ]

22:                                               ; preds = %3, %23, %42, %61, %80, %99
  unreachable

23:                                               ; preds = %3, %23
  %24 = phi ptr [ %26, %23 ], [ %0, %3 ]
  %25 = phi ptr [ %28, %23 ], [ @KW_US_ASCII, %3 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = load i8, ptr %24, align 1, !tbaa !9
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %25, align 1, !tbaa !9
  %30 = add i8 %27, -97
  %31 = icmp ult i8 %30, 26
  %32 = add nsw i8 %27, -32
  %33 = select i1 %31, i8 %32, i8 %27
  %34 = add i8 %29, -97
  %35 = icmp ult i8 %34, 26
  %36 = add nsw i8 %29, -32
  %37 = select i1 %35, i8 %36, i8 %29
  %38 = icmp eq i8 %33, %37
  %39 = icmp eq i8 %33, 0
  %40 = select i1 %39, i32 2, i32 0
  %41 = select i1 %38, i32 %40, i32 1
  switch i32 %41, label %22 [
    i32 0, label %23
    i32 1, label %42
    i32 2, label %119
  ]

42:                                               ; preds = %23, %42
  %43 = phi ptr [ %45, %42 ], [ %0, %23 ]
  %44 = phi ptr [ %47, %42 ], [ @KW_UTF_8, %23 ]
  %45 = getelementptr inbounds i8, ptr %43, i64 1
  %46 = load i8, ptr %43, align 1, !tbaa !9
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  %48 = load i8, ptr %44, align 1, !tbaa !9
  %49 = add i8 %46, -97
  %50 = icmp ult i8 %49, 26
  %51 = add nsw i8 %46, -32
  %52 = select i1 %50, i8 %51, i8 %46
  %53 = add i8 %48, -97
  %54 = icmp ult i8 %53, 26
  %55 = add nsw i8 %48, -32
  %56 = select i1 %54, i8 %55, i8 %48
  %57 = icmp eq i8 %52, %56
  %58 = icmp eq i8 %52, 0
  %59 = select i1 %58, i32 2, i32 0
  %60 = select i1 %57, i32 %59, i32 1
  switch i32 %60, label %22 [
    i32 0, label %42
    i32 1, label %61
    i32 2, label %119
  ]

61:                                               ; preds = %42, %61
  %62 = phi ptr [ %64, %61 ], [ %0, %42 ]
  %63 = phi ptr [ %66, %61 ], [ @KW_UTF_16, %42 ]
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = load i8, ptr %62, align 1, !tbaa !9
  %66 = getelementptr inbounds i8, ptr %63, i64 1
  %67 = load i8, ptr %63, align 1, !tbaa !9
  %68 = add i8 %65, -97
  %69 = icmp ult i8 %68, 26
  %70 = add nsw i8 %65, -32
  %71 = select i1 %69, i8 %70, i8 %65
  %72 = add i8 %67, -97
  %73 = icmp ult i8 %72, 26
  %74 = add nsw i8 %67, -32
  %75 = select i1 %73, i8 %74, i8 %67
  %76 = icmp eq i8 %71, %75
  %77 = icmp eq i8 %71, 0
  %78 = select i1 %77, i32 2, i32 0
  %79 = select i1 %76, i32 %78, i32 1
  switch i32 %79, label %22 [
    i32 0, label %61
    i32 1, label %80
    i32 2, label %119
  ]

80:                                               ; preds = %61, %80
  %81 = phi ptr [ %83, %80 ], [ %0, %61 ]
  %82 = phi ptr [ %85, %80 ], [ @KW_UTF_16BE, %61 ]
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  %84 = load i8, ptr %81, align 1, !tbaa !9
  %85 = getelementptr inbounds i8, ptr %82, i64 1
  %86 = load i8, ptr %82, align 1, !tbaa !9
  %87 = add i8 %84, -97
  %88 = icmp ult i8 %87, 26
  %89 = add nsw i8 %84, -32
  %90 = select i1 %88, i8 %89, i8 %84
  %91 = add i8 %86, -97
  %92 = icmp ult i8 %91, 26
  %93 = add nsw i8 %86, -32
  %94 = select i1 %92, i8 %93, i8 %86
  %95 = icmp eq i8 %90, %94
  %96 = icmp eq i8 %90, 0
  %97 = select i1 %96, i32 2, i32 0
  %98 = select i1 %95, i32 %97, i32 1
  switch i32 %98, label %22 [
    i32 0, label %80
    i32 1, label %99
    i32 2, label %119
  ]

99:                                               ; preds = %80, %99
  %100 = phi ptr [ %102, %99 ], [ %0, %80 ]
  %101 = phi ptr [ %104, %99 ], [ @KW_UTF_16LE, %80 ]
  %102 = getelementptr inbounds i8, ptr %100, i64 1
  %103 = load i8, ptr %100, align 1, !tbaa !9
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  %105 = load i8, ptr %101, align 1, !tbaa !9
  %106 = add i8 %103, -97
  %107 = icmp ult i8 %106, 26
  %108 = add nsw i8 %103, -32
  %109 = select i1 %107, i8 %108, i8 %103
  %110 = add i8 %105, -97
  %111 = icmp ult i8 %110, 26
  %112 = add nsw i8 %105, -32
  %113 = select i1 %111, i8 %112, i8 %105
  %114 = icmp eq i8 %109, %113
  %115 = icmp eq i8 %109, 0
  %116 = select i1 %115, i32 2, i32 0
  %117 = select i1 %114, i32 %116, i32 1
  switch i32 %117, label %22 [
    i32 0, label %99
    i32 1, label %118
    i32 2, label %119
  ]

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %3, %23, %42, %61, %80, %99, %118, %1
  %120 = phi i32 [ 6, %1 ], [ -1, %118 ], [ 5, %99 ], [ 4, %80 ], [ 3, %61 ], [ %60, %42 ], [ 1, %23 ], [ 0, %3 ]
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanProlog(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call fastcc i32 @initScan(ptr noundef nonnull @encodings, ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanContent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call fastcc i32 @initScan(ptr noundef nonnull @encodings, ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @initUpdatePosition(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.position, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %54, %9
  %12 = phi ptr [ %1, %9 ], [ %55, %54 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.normal_encoding, ptr @utf8_encoding, i64 0, i32 1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  switch i8 %16, label %50 [
    i8 5, label %17
    i8 6, label %21
    i8 7, label %25
    i8 10, label %29
    i8 9, label %33
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %12, i64 2
  %19 = load i64, ptr %10, align 8, !tbaa !40
  %20 = add i64 %19, 1
  store i64 %20, ptr %10, align 8, !tbaa !40
  br label %54

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %12, i64 3
  %23 = load i64, ptr %10, align 8, !tbaa !40
  %24 = add i64 %23, 1
  store i64 %24, ptr %10, align 8, !tbaa !40
  br label %54

25:                                               ; preds = %11
  %26 = getelementptr inbounds i8, ptr %12, i64 4
  %27 = load i64, ptr %10, align 8, !tbaa !40
  %28 = add i64 %27, 1
  store i64 %28, ptr %10, align 8, !tbaa !40
  br label %54

29:                                               ; preds = %11
  store i64 0, ptr %10, align 8, !tbaa !40
  %30 = load i64, ptr %3, align 8, !tbaa !43
  %31 = add i64 %30, 1
  store i64 %31, ptr %3, align 8, !tbaa !43
  %32 = getelementptr inbounds i8, ptr %12, i64 1
  br label %54

33:                                               ; preds = %11
  %34 = load i64, ptr %3, align 8, !tbaa !43
  %35 = add i64 %34, 1
  store i64 %35, ptr %3, align 8, !tbaa !43
  %36 = getelementptr inbounds i8, ptr %12, i64 1
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %5, %37
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i8, ptr %36, align 1, !tbaa !9
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.normal_encoding, ptr @utf8_encoding, i64 0, i32 1, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 10
  %46 = getelementptr inbounds i8, ptr %12, i64 2
  %47 = select i1 %45, ptr %46, ptr %36
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi ptr [ %36, %33 ], [ %47, %40 ]
  store i64 0, ptr %10, align 8, !tbaa !40
  br label %54

50:                                               ; preds = %11
  %51 = getelementptr inbounds i8, ptr %12, i64 1
  %52 = load i64, ptr %10, align 8, !tbaa !40
  %53 = add i64 %52, 1
  store i64 %53, ptr %10, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %50, %48, %29, %25, %21, %17
  %55 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %32, %29 ], [ %26, %25 ], [ %22, %21 ], [ %18, %17 ]
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %5, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %11, label %59, !llvm.loop !44

59:                                               ; preds = %54, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XmlParseXmlDecl(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc i32 @doParseXmlDecl(ptr noundef nonnull @findEncoding, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @doParseXmlDecl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7, ptr noundef writeonly %8, ptr noundef writeonly %9, ptr noundef writeonly %10) unnamed_addr #6 {
  %12 = alloca ptr, align 8
  %13 = alloca [1 x i8], align 1
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [1 x i8], align 1
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  store ptr null, ptr %19, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  store ptr null, ptr %20, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #14
  store ptr null, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = mul nsw i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  store ptr %26, ptr %18, align 8, !tbaa !5
  %27 = shl nsw i32 %23, 1
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %4, i64 %29
  %31 = call fastcc i32 @parsePseudoAttribute(ptr noundef %2, ptr noundef %26, ptr noundef %30, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef nonnull %18), !range !46
  %32 = icmp ne i32 %31, 0
  %33 = load ptr, ptr %20, align 8
  %34 = icmp ne ptr %33, null
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %38, label %36

36:                                               ; preds = %11
  %37 = load ptr, ptr %18, align 8, !tbaa !5
  br label %160

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = load ptr, ptr %21, align 8, !tbaa !5
  %42 = tail call i32 %40(ptr noundef nonnull %2, ptr noundef nonnull %33, ptr noundef %41, ptr noundef nonnull @KW_version) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = icmp eq i32 %1, 0
  br i1 %45, label %160, label %68

46:                                               ; preds = %38
  %47 = icmp eq ptr %6, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %19, align 8, !tbaa !5
  store ptr %49, ptr %6, align 8, !tbaa !5
  br label %50

50:                                               ; preds = %48, %46
  %51 = icmp eq ptr %7, null
  %52 = load ptr, ptr %18, align 8, !tbaa !5
  br i1 %51, label %54, label %53

53:                                               ; preds = %50
  store ptr %52, ptr %7, align 8, !tbaa !5
  br label %54

54:                                               ; preds = %53, %50
  %55 = call fastcc i32 @parsePseudoAttribute(ptr noundef nonnull %2, ptr noundef %52, ptr noundef %30, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef nonnull %18), !range !46
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load ptr, ptr %18, align 8, !tbaa !5
  br label %160

59:                                               ; preds = %54
  %60 = load ptr, ptr %20, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %21, align 8, !tbaa !5
  br label %68

64:                                               ; preds = %59
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %162, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %18, align 8, !tbaa !5
  br label %160

68:                                               ; preds = %62, %44
  %69 = phi ptr [ %63, %62 ], [ %41, %44 ]
  %70 = phi ptr [ %60, %62 ], [ %33, %44 ]
  %71 = load ptr, ptr %39, align 8, !tbaa !47
  %72 = tail call i32 %71(ptr noundef nonnull %2, ptr noundef nonnull %70, ptr noundef %69, ptr noundef nonnull @KW_encoding) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %19, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15)
  store ptr %75, ptr %15, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  store ptr %16, ptr %17, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = getelementptr inbounds i8, ptr %16, i64 1
  %79 = call i32 %77(ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef %30, ptr noundef nonnull %17, ptr noundef nonnull %78) #14
  %80 = load ptr, ptr %17, align 8, !tbaa !5
  %81 = icmp ne ptr %80, %16
  %82 = load i8, ptr %16, align 1
  %83 = and i8 %82, -33
  %84 = sext i8 %83 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15)
  %85 = add nsw i32 %84, -65
  %86 = icmp ult i32 %85, 26
  %87 = select i1 %81, i1 %86, i1 false
  br i1 %87, label %88, label %160

88:                                               ; preds = %74
  %89 = icmp eq ptr %8, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  store ptr %75, ptr %8, align 8, !tbaa !5
  br label %91

91:                                               ; preds = %90, %88
  %92 = icmp eq ptr %9, null
  %93 = load ptr, ptr %18, align 8, !tbaa !5
  br i1 %92, label %100, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %22, align 8, !tbaa !45
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, ptr %93, i64 %97
  %99 = call ptr %0(ptr noundef nonnull %2, ptr noundef %75, ptr noundef %98) #14, !callees !49
  store ptr %99, ptr %9, align 8, !tbaa !5
  br label %100

100:                                              ; preds = %94, %91
  %101 = call fastcc i32 @parsePseudoAttribute(ptr noundef nonnull %2, ptr noundef %93, ptr noundef %30, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef nonnull %18), !range !46
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load ptr, ptr %18, align 8, !tbaa !5
  br label %160

105:                                              ; preds = %100
  %106 = load ptr, ptr %20, align 8, !tbaa !5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %162, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %21, align 8, !tbaa !5
  br label %110

110:                                              ; preds = %108, %68
  %111 = phi ptr [ %109, %108 ], [ %69, %68 ]
  %112 = phi ptr [ %106, %108 ], [ %70, %68 ]
  %113 = load ptr, ptr %39, align 8, !tbaa !47
  %114 = call i32 %113(ptr noundef nonnull %2, ptr noundef nonnull %112, ptr noundef %111, ptr noundef nonnull @KW_standalone) #14
  %115 = icmp eq i32 %114, 0
  %116 = icmp ne i32 %1, 0
  %117 = or i1 %116, %115
  br i1 %117, label %160, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %39, align 8, !tbaa !47
  %120 = load ptr, ptr %19, align 8, !tbaa !5
  %121 = load ptr, ptr %18, align 8, !tbaa !5
  %122 = load i32, ptr %22, align 8, !tbaa !45
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 0, %123
  %125 = getelementptr inbounds i8, ptr %121, i64 %124
  %126 = call i32 %119(ptr noundef nonnull %2, ptr noundef %120, ptr noundef %125, ptr noundef nonnull @KW_yes) #14
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %118
  %129 = icmp eq ptr %10, null
  br i1 %129, label %142, label %140

130:                                              ; preds = %118
  %131 = load ptr, ptr %39, align 8, !tbaa !47
  %132 = load i32, ptr %22, align 8, !tbaa !45
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 0, %133
  %135 = getelementptr inbounds i8, ptr %121, i64 %134
  %136 = call i32 %131(ptr noundef nonnull %2, ptr noundef %120, ptr noundef %135, ptr noundef nonnull @KW_no) #14
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %160, label %138

138:                                              ; preds = %130
  %139 = icmp eq ptr %10, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %138, %128
  %141 = phi i32 [ 1, %128 ], [ 0, %138 ]
  store i32 %141, ptr %10, align 4, !tbaa !14
  br label %142

142:                                              ; preds = %140, %138, %128
  %143 = getelementptr inbounds %struct.encoding, ptr %2, i64 0, i32 10
  %144 = getelementptr inbounds i8, ptr %13, i64 1
  br label %145

145:                                              ; preds = %154, %142
  %146 = phi ptr [ %157, %154 ], [ %121, %142 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12)
  store ptr %146, ptr %12, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  store ptr %13, ptr %14, align 8, !tbaa !5
  %147 = load ptr, ptr %143, align 8, !tbaa !48
  %148 = call i32 %147(ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef %30, ptr noundef nonnull %14, ptr noundef nonnull %144) #14
  %149 = load ptr, ptr %14, align 8, !tbaa !5
  %150 = icmp eq ptr %149, %13
  %151 = load i8, ptr %13, align 1
  %152 = sext i8 %151 to i32
  %153 = select i1 %150, i32 -1, i32 %152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12)
  switch i32 %153, label %158 [
    i32 32, label %154
    i32 13, label %154
    i32 10, label %154
    i32 9, label %154
  ]

154:                                              ; preds = %145, %145, %145, %145
  %155 = load i32, ptr %22, align 8, !tbaa !45
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %146, i64 %156
  br label %145, !llvm.loop !50

158:                                              ; preds = %145
  %159 = icmp eq ptr %146, %30
  br i1 %159, label %162, label %160

160:                                              ; preds = %158, %130, %110, %74, %44, %36, %57, %66, %103
  %161 = phi ptr [ %104, %103 ], [ %67, %66 ], [ %58, %57 ], [ %37, %36 ], [ %33, %44 ], [ %75, %74 ], [ %112, %110 ], [ %120, %130 ], [ %146, %158 ]
  store ptr %161, ptr %5, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %160, %158, %64, %105
  %163 = phi i32 [ 1, %105 ], [ 1, %64 ], [ 1, %158 ], [ 0, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal ptr @findEncoding(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr %5, ptr %6, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds i8, ptr %5, i64 127
  %10 = call i32 %8(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %9) #14
  %11 = load ptr, ptr %4, align 8, !tbaa !5
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !5
  store i8 0, ptr %14, align 1, !tbaa !9
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %5, %13 ], [ %18, %15 ]
  %17 = phi ptr [ @KW_UTF_16, %13 ], [ %20, %15 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !9
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %17, align 1, !tbaa !9
  %22 = add i8 %19, -97
  %23 = icmp ult i8 %22, 26
  %24 = add nsw i8 %19, -32
  %25 = select i1 %23, i8 %24, i8 %19
  %26 = add i8 %21, -97
  %27 = icmp ult i8 %26, 26
  %28 = add nsw i8 %21, -32
  %29 = select i1 %27, i8 %28, i8 %21
  %30 = icmp eq i8 %25, %29
  %31 = icmp eq i8 %25, 0
  %32 = select i1 %31, i32 2, i32 0
  %33 = select i1 %30, i32 %32, i32 1
  switch i32 %33, label %34 [
    i32 0, label %15
    i32 1, label %39
    i32 2, label %35
  ]

34:                                               ; preds = %15
  unreachable

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !45
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %46, label %39

39:                                               ; preds = %15, %35
  %40 = call fastcc i32 @getEncodingIndex(ptr noundef nonnull %5), !range !35
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [7 x ptr], ptr @encodings, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %39, %35, %3, %42
  %47 = phi ptr [ %45, %42 ], [ null, %3 ], [ %0, %35 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  ret ptr %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XmlGetUtf8InternalEncodingNS() local_unnamed_addr #3 {
  ret ptr @internal_utf8_encoding_ns
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @XmlGetUtf16InternalEncodingNS() local_unnamed_addr #3 {
  ret ptr @internal_little2_encoding_ns
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @XmlInitEncodingNS(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @getEncodingIndex(ptr noundef %2), !range !35
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i8
  %8 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 14
  store i8 %7, ptr %8, align 1, !tbaa !36
  store ptr @initScanPrologNS, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds [4 x ptr], ptr %0, i64 0, i64 1
  store ptr @initScanContentNS, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 8
  store ptr @initUpdatePosition, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.INIT_ENCODING, ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !39
  store ptr %0, ptr %1, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %6
  %13 = phi i32 [ 1, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanPrologNS(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call fastcc i32 @initScan(ptr noundef nonnull @encodingsNS, ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @initScanContentNS(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call fastcc i32 @initScan(ptr noundef nonnull @encodingsNS, ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XmlParseXmlDeclNS(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #6 {
  %11 = tail call fastcc i32 @doParseXmlDecl(ptr noundef nonnull @findEncodingNS, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal ptr @findEncodingNS(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr %5, ptr %6, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds i8, ptr %5, i64 127
  %10 = call i32 %8(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %9) #14
  %11 = load ptr, ptr %4, align 8, !tbaa !5
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !5
  store i8 0, ptr %14, align 1, !tbaa !9
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %5, %13 ], [ %18, %15 ]
  %17 = phi ptr [ @KW_UTF_16, %13 ], [ %20, %15 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !9
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i8, ptr %17, align 1, !tbaa !9
  %22 = add i8 %19, -97
  %23 = icmp ult i8 %22, 26
  %24 = add nsw i8 %19, -32
  %25 = select i1 %23, i8 %24, i8 %19
  %26 = add i8 %21, -97
  %27 = icmp ult i8 %26, 26
  %28 = add nsw i8 %21, -32
  %29 = select i1 %27, i8 %28, i8 %21
  %30 = icmp eq i8 %25, %29
  %31 = icmp eq i8 %25, 0
  %32 = select i1 %31, i32 2, i32 0
  %33 = select i1 %30, i32 %32, i32 1
  switch i32 %33, label %34 [
    i32 0, label %15
    i32 1, label %39
    i32 2, label %35
  ]

34:                                               ; preds = %15
  unreachable

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !45
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %46, label %39

39:                                               ; preds = %15, %35
  %40 = call fastcc i32 @getEncodingIndex(ptr noundef nonnull %5), !range !35
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [7 x ptr], ptr @encodingsNS, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %39, %35, %3, %42
  %47 = phi ptr [ %45, %42 ], [ null, %3 ], [ %0, %35 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  ret ptr %47
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @XmlInitUnknownEncodingNS(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = tail call ptr @XmlInitUnknownEncoding(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.normal_encoding, ptr %5, i64 0, i32 1, i64 58
  store i8 23, ptr %8, align 2, !tbaa !9
  br label %9

9:                                                ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal i32 @normal_prologTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = ptrtoint ptr %1 to i64
  %6 = icmp ult ptr %1, %2
  br i1 %6, label %7, label %331

7:                                                ; preds = %4
  %8 = load i8, ptr %1, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %185 [
    i8 12, label %12
    i8 13, label %15
    i8 2, label %18
    i8 9, label %37
    i8 21, label %41
    i8 10, label %41
    i8 30, label %68
    i8 35, label %71
    i8 20, label %73
    i8 4, label %75
    i8 31, label %93
    i8 32, label %95
    i8 36, label %114
    i8 11, label %116
    i8 19, label %118
    i8 5, label %121
    i8 6, label %142
    i8 7, label %163
    i8 22, label %186
    i8 24, label %186
    i8 25, label %184
    i8 26, label %184
    i8 27, label %184
    i8 23, label %184
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = tail call fastcc i32 @normal_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef %3)
  br label %331

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = tail call fastcc i32 @normal_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef %3)
  br label %331

18:                                               ; preds = %7
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  %20 = ptrtoint ptr %2 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %331

24:                                               ; preds = %18
  %25 = load i8, ptr %19, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !9
  switch i8 %28, label %36 [
    i8 16, label %29
    i8 15, label %32
    i8 22, label %35
    i8 24, label %35
    i8 29, label %35
    i8 5, label %35
    i8 6, label %35
    i8 7, label %35
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %1, i64 2
  %31 = tail call fastcc i32 @normal_scanDecl(ptr noundef nonnull %0, ptr noundef nonnull %30, ptr noundef nonnull %2, ptr noundef %3), !range !51
  br label %331

32:                                               ; preds = %24
  %33 = getelementptr inbounds i8, ptr %1, i64 2
  %34 = tail call fastcc i32 @normal_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %33, ptr noundef nonnull %2, ptr noundef %3)
  br label %331

35:                                               ; preds = %24, %24, %24, %24, %24, %24
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

36:                                               ; preds = %24
  store ptr %19, ptr %3, align 8, !tbaa !5
  br label %331

37:                                               ; preds = %7
  %38 = getelementptr inbounds i8, ptr %1, i64 1
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store ptr %2, ptr %3, align 8, !tbaa !5
  br label %331

41:                                               ; preds = %37, %7, %7
  %42 = ptrtoint ptr %2 to i64
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %42, %44
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = sub i64 %42, %5
  %49 = getelementptr i8, ptr %1, i64 %48
  br label %50

50:                                               ; preds = %47, %61
  %51 = phi ptr [ %62, %61 ], [ %43, %47 ]
  %52 = phi ptr [ %51, %61 ], [ %1, %47 ]
  %53 = load i8, ptr %51, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  switch i8 %56, label %60 [
    i8 21, label %61
    i8 10, label %61
    i8 9, label %57
  ]

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %52, i64 2
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %50
  store ptr %51, ptr %3, align 8, !tbaa !5
  br label %331

61:                                               ; preds = %57, %50, %50
  %62 = getelementptr inbounds i8, ptr %51, i64 1
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %42, %63
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %50, label %66

66:                                               ; preds = %61, %41
  %67 = phi ptr [ %43, %41 ], [ %49, %61 ]
  store ptr %67, ptr %3, align 8, !tbaa !5
  br label %331

68:                                               ; preds = %7
  %69 = getelementptr inbounds i8, ptr %1, i64 1
  %70 = tail call fastcc i32 @normal_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %69, ptr noundef nonnull %2, ptr noundef %3), !range !52
  br label %331

71:                                               ; preds = %7
  %72 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %331

73:                                               ; preds = %7
  %74 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %74, ptr %3, align 8, !tbaa !5
  br label %331

75:                                               ; preds = %7
  %76 = getelementptr inbounds i8, ptr %1, i64 1
  %77 = ptrtoint ptr %2 to i64
  %78 = ptrtoint ptr %76 to i64
  %79 = sub i64 %77, %78
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %331

81:                                               ; preds = %75
  %82 = load i8, ptr %76, align 1, !tbaa !9
  %83 = icmp eq i8 %82, 93
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = icmp eq i64 %79, 1
  br i1 %85, label %331, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds i8, ptr %1, i64 2
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = icmp eq i8 %88, 62
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %1, i64 3
  store ptr %91, ptr %3, align 8, !tbaa !5
  br label %331

92:                                               ; preds = %86, %81
  store ptr %76, ptr %3, align 8, !tbaa !5
  br label %331

93:                                               ; preds = %7
  %94 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %94, ptr %3, align 8, !tbaa !5
  br label %331

95:                                               ; preds = %7
  %96 = getelementptr inbounds i8, ptr %1, i64 1
  %97 = ptrtoint ptr %2 to i64
  %98 = ptrtoint ptr %96 to i64
  %99 = sub i64 %97, %98
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %331

101:                                              ; preds = %95
  %102 = load i8, ptr %96, align 1, !tbaa !9
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !9
  switch i8 %105, label %113 [
    i8 33, label %106
    i8 15, label %108
    i8 34, label %110
    i8 9, label %112
    i8 10, label %112
    i8 21, label %112
    i8 11, label %112
    i8 35, label %112
    i8 36, label %112
    i8 32, label %112
  ]

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %107, ptr %3, align 8, !tbaa !5
  br label %331

108:                                              ; preds = %101
  %109 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %109, ptr %3, align 8, !tbaa !5
  br label %331

110:                                              ; preds = %101
  %111 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %111, ptr %3, align 8, !tbaa !5
  br label %331

112:                                              ; preds = %101, %101, %101, %101, %101, %101, %101
  store ptr %96, ptr %3, align 8, !tbaa !5
  br label %331

113:                                              ; preds = %101
  store ptr %96, ptr %3, align 8, !tbaa !5
  br label %331

114:                                              ; preds = %7
  %115 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %115, ptr %3, align 8, !tbaa !5
  br label %331

116:                                              ; preds = %7
  %117 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %117, ptr %3, align 8, !tbaa !5
  br label %331

118:                                              ; preds = %7
  %119 = getelementptr inbounds i8, ptr %1, i64 1
  %120 = tail call fastcc i32 @normal_scanPoundName(ptr noundef nonnull %0, ptr noundef nonnull %119, ptr noundef nonnull %2, ptr noundef %3), !range !53
  br label %331

121:                                              ; preds = %7
  %122 = ptrtoint ptr %2 to i64
  %123 = sub i64 %122, %5
  %124 = icmp slt i64 %123, 2
  br i1 %124, label %331, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !54
  %128 = tail call i32 %127(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !55
  %134 = tail call i32 %133(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %186

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !56
  %139 = tail call i32 %138(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %186

141:                                              ; preds = %136
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

142:                                              ; preds = %7
  %143 = ptrtoint ptr %2 to i64
  %144 = sub i64 %143, %5
  %145 = icmp slt i64 %144, 3
  br i1 %145, label %331, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !57
  %149 = tail call i32 %148(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !58
  %155 = tail call i32 %154(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !59
  %160 = tail call i32 %159(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %186

162:                                              ; preds = %157
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

163:                                              ; preds = %7
  %164 = ptrtoint ptr %2 to i64
  %165 = sub i64 %164, %5
  %166 = icmp slt i64 %165, 4
  br i1 %166, label %331, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %169 = load ptr, ptr %168, align 8, !tbaa !60
  %170 = tail call i32 %169(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %175 = load ptr, ptr %174, align 8, !tbaa !61
  %176 = tail call i32 %175(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !62
  %181 = tail call i32 %180(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

184:                                              ; preds = %7, %7, %7, %7
  br label %186

185:                                              ; preds = %7
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %331

186:                                              ; preds = %7, %7, %178, %173, %157, %152, %136, %131, %184
  %187 = phi i64 [ 1, %184 ], [ 2, %131 ], [ 2, %136 ], [ 3, %152 ], [ 3, %157 ], [ 4, %173 ], [ 4, %178 ], [ 1, %7 ], [ 1, %7 ]
  %188 = phi i32 [ 19, %184 ], [ 18, %131 ], [ 19, %136 ], [ 18, %152 ], [ 19, %157 ], [ 18, %173 ], [ 19, %178 ], [ 18, %7 ], [ 18, %7 ]
  %189 = getelementptr inbounds i8, ptr %1, i64 %187
  %190 = ptrtoint ptr %2 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %328

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %196 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %197 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %198 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %199 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %200 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %201

201:                                              ; preds = %194, %322
  %202 = phi i64 [ %192, %194 ], [ %326, %322 ]
  %203 = phi i32 [ %188, %194 ], [ %324, %322 ]
  %204 = phi ptr [ %189, %194 ], [ %323, %322 ]
  %205 = load i8, ptr %204, align 1, !tbaa !9
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !9
  switch i8 %208, label %321 [
    i8 29, label %209
    i8 22, label %210
    i8 24, label %210
    i8 25, label %210
    i8 26, label %210
    i8 27, label %210
    i8 5, label %212
    i8 6, label %225
    i8 7, label %238
    i8 11, label %251
    i8 32, label %251
    i8 35, label %251
    i8 36, label %251
    i8 20, label %251
    i8 30, label %251
    i8 21, label %251
    i8 9, label %251
    i8 10, label %251
    i8 23, label %252
    i8 34, label %306
    i8 33, label %311
    i8 15, label %316
  ]

209:                                              ; preds = %201
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

210:                                              ; preds = %201, %201, %201, %201, %201
  %211 = getelementptr inbounds i8, ptr %204, i64 1
  br label %322

212:                                              ; preds = %201
  %213 = icmp eq i64 %202, 1
  br i1 %213, label %331, label %214

214:                                              ; preds = %212
  %215 = load ptr, ptr %199, align 8, !tbaa !54
  %216 = tail call i32 %215(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load ptr, ptr %200, align 8, !tbaa !56
  %220 = tail call i32 %219(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218, %214
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

223:                                              ; preds = %218
  %224 = getelementptr inbounds i8, ptr %204, i64 2
  br label %322

225:                                              ; preds = %201
  %226 = icmp ult i64 %202, 3
  br i1 %226, label %331, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %197, align 8, !tbaa !57
  %229 = tail call i32 %228(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = load ptr, ptr %198, align 8, !tbaa !59
  %233 = tail call i32 %232(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231, %227
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

236:                                              ; preds = %231
  %237 = getelementptr inbounds i8, ptr %204, i64 3
  br label %322

238:                                              ; preds = %201
  %239 = icmp ult i64 %202, 4
  br i1 %239, label %331, label %240

240:                                              ; preds = %238
  %241 = load ptr, ptr %195, align 8, !tbaa !60
  %242 = tail call i32 %241(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %240
  %245 = load ptr, ptr %196, align 8, !tbaa !62
  %246 = tail call i32 %245(ptr noundef nonnull %0, ptr noundef nonnull %204) #14
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244, %240
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

249:                                              ; preds = %244
  %250 = getelementptr inbounds i8, ptr %204, i64 4
  br label %322

251:                                              ; preds = %201, %201, %201, %201, %201, %201, %201, %201, %201
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

252:                                              ; preds = %201
  %253 = getelementptr inbounds i8, ptr %204, i64 1
  switch i32 %203, label %322 [
    i32 18, label %254
    i32 41, label %305
  ]

254:                                              ; preds = %252
  %255 = ptrtoint ptr %253 to i64
  %256 = sub i64 %190, %255
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %331

258:                                              ; preds = %254
  %259 = load i8, ptr %253, align 1, !tbaa !9
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !9
  switch i8 %262, label %322 [
    i8 29, label %263
    i8 22, label %264
    i8 24, label %264
    i8 25, label %264
    i8 26, label %264
    i8 27, label %264
    i8 5, label %266
    i8 6, label %279
    i8 7, label %292
  ]

263:                                              ; preds = %258
  store ptr %253, ptr %3, align 8, !tbaa !5
  br label %331

264:                                              ; preds = %258, %258, %258, %258, %258
  %265 = getelementptr inbounds i8, ptr %204, i64 2
  br label %322

266:                                              ; preds = %258
  %267 = icmp eq i64 %256, 1
  br i1 %267, label %331, label %268

268:                                              ; preds = %266
  %269 = load ptr, ptr %199, align 8, !tbaa !54
  %270 = tail call i32 %269(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = load ptr, ptr %200, align 8, !tbaa !56
  %274 = tail call i32 %273(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272, %268
  store ptr %253, ptr %3, align 8, !tbaa !5
  br label %331

277:                                              ; preds = %272
  %278 = getelementptr inbounds i8, ptr %204, i64 3
  br label %322

279:                                              ; preds = %258
  %280 = icmp ult i64 %256, 3
  br i1 %280, label %331, label %281

281:                                              ; preds = %279
  %282 = load ptr, ptr %197, align 8, !tbaa !57
  %283 = tail call i32 %282(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load ptr, ptr %198, align 8, !tbaa !59
  %287 = tail call i32 %286(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285, %281
  store ptr %253, ptr %3, align 8, !tbaa !5
  br label %331

290:                                              ; preds = %285
  %291 = getelementptr inbounds i8, ptr %204, i64 4
  br label %322

292:                                              ; preds = %258
  %293 = icmp ult i64 %256, 4
  br i1 %293, label %331, label %294

294:                                              ; preds = %292
  %295 = load ptr, ptr %195, align 8, !tbaa !60
  %296 = tail call i32 %295(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load ptr, ptr %196, align 8, !tbaa !62
  %300 = tail call i32 %299(ptr noundef nonnull %0, ptr noundef nonnull %253) #14
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298, %294
  store ptr %253, ptr %3, align 8, !tbaa !5
  br label %331

303:                                              ; preds = %298
  %304 = getelementptr inbounds i8, ptr %204, i64 5
  br label %322

305:                                              ; preds = %252
  br label %322

306:                                              ; preds = %201
  %307 = icmp eq i32 %203, 19
  br i1 %307, label %308, label %309

308:                                              ; preds = %306
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

309:                                              ; preds = %306
  %310 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %310, ptr %3, align 8, !tbaa !5
  br label %331

311:                                              ; preds = %201
  %312 = icmp eq i32 %203, 19
  br i1 %312, label %313, label %314

313:                                              ; preds = %311
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

314:                                              ; preds = %311
  %315 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %315, ptr %3, align 8, !tbaa !5
  br label %331

316:                                              ; preds = %201
  %317 = icmp eq i32 %203, 19
  br i1 %317, label %318, label %319

318:                                              ; preds = %316
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %320, ptr %3, align 8, !tbaa !5
  br label %331

321:                                              ; preds = %201
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %331

322:                                              ; preds = %258, %305, %252, %303, %290, %277, %264, %249, %236, %223, %210
  %323 = phi ptr [ %253, %252 ], [ %253, %305 ], [ %304, %303 ], [ %291, %290 ], [ %278, %277 ], [ %265, %264 ], [ %250, %249 ], [ %237, %236 ], [ %224, %223 ], [ %211, %210 ], [ %253, %258 ]
  %324 = phi i32 [ %203, %252 ], [ 19, %305 ], [ 41, %303 ], [ 41, %290 ], [ 41, %277 ], [ 41, %264 ], [ %203, %249 ], [ %203, %236 ], [ %203, %223 ], [ %203, %210 ], [ 19, %258 ]
  %325 = ptrtoint ptr %323 to i64
  %326 = sub i64 %190, %325
  %327 = icmp sgt i64 %326, 0
  br i1 %327, label %201, label %328, !llvm.loop !63

328:                                              ; preds = %322, %186
  %329 = phi i32 [ %188, %186 ], [ %324, %322 ]
  %330 = sub nsw i32 0, %329
  br label %331

331:                                              ; preds = %292, %279, %266, %254, %238, %225, %212, %163, %142, %121, %95, %84, %75, %18, %4, %328, %321, %319, %318, %314, %313, %309, %308, %302, %289, %276, %263, %251, %248, %235, %222, %209, %185, %183, %172, %162, %151, %141, %130, %118, %116, %114, %113, %112, %110, %108, %106, %93, %92, %90, %73, %71, %68, %66, %60, %40, %36, %35, %32, %29, %15, %12
  %332 = phi i32 [ 0, %185 ], [ 0, %321 ], [ 0, %318 ], [ 30, %319 ], [ 0, %313 ], [ 31, %314 ], [ 0, %308 ], [ 32, %309 ], [ 0, %302 ], [ 0, %289 ], [ 0, %276 ], [ 0, %263 ], [ %203, %251 ], [ 0, %248 ], [ 0, %235 ], [ 0, %222 ], [ 0, %209 ], [ %330, %328 ], [ 0, %172 ], [ 0, %183 ], [ 0, %151 ], [ 0, %162 ], [ 0, %130 ], [ 0, %141 ], [ %120, %118 ], [ 17, %116 ], [ 21, %114 ], [ 0, %113 ], [ 24, %112 ], [ 37, %110 ], [ 35, %108 ], [ 36, %106 ], [ 23, %93 ], [ 34, %90 ], [ 26, %92 ], [ 25, %73 ], [ 38, %71 ], [ %70, %68 ], [ 15, %60 ], [ 15, %66 ], [ -15, %40 ], [ 0, %36 ], [ 29, %35 ], [ %34, %32 ], [ %31, %29 ], [ %17, %15 ], [ %14, %12 ], [ -4, %4 ], [ -1, %18 ], [ -26, %75 ], [ -1, %84 ], [ -24, %95 ], [ -2, %121 ], [ -2, %142 ], [ -2, %163 ], [ -2, %292 ], [ -2, %279 ], [ -2, %266 ], [ -1, %254 ], [ -2, %238 ], [ -2, %225 ], [ -2, %212 ]
  ret i32 %332
}

; Function Attrs: nounwind uwtable
define internal i32 @normal_contentTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %543

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %472 [
    i8 2, label %11
    i8 3, label %395
    i8 9, label %398
    i8 10, label %412
    i8 4, label %414
    i8 5, label %432
    i8 6, label %445
    i8 7, label %458
    i8 0, label %471
    i8 1, label %471
    i8 8, label %471
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = ptrtoint ptr %2 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %543

17:                                               ; preds = %11
  %18 = load i8, ptr %12, align 1, !tbaa !9
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %208 [
    i8 29, label %22
    i8 22, label %209
    i8 24, label %209
    i8 5, label %23
    i8 6, label %36
    i8 7, label %49
    i8 16, label %62
    i8 15, label %79
    i8 17, label %82
  ]

22:                                               ; preds = %17
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %543

23:                                               ; preds = %17
  %24 = icmp eq i64 %15, 1
  br i1 %24, label %543, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = tail call i32 %27(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = tail call i32 %32(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %209

35:                                               ; preds = %30, %25
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %543

36:                                               ; preds = %17
  %37 = icmp ult i64 %15, 3
  br i1 %37, label %543, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  %41 = tail call i32 %40(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = tail call i32 %45(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %209

48:                                               ; preds = %43, %38
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %543

49:                                               ; preds = %17
  %50 = icmp ult i64 %15, 4
  br i1 %50, label %543, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = tail call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = tail call i32 %58(ptr noundef nonnull %0, ptr noundef nonnull %12) #14
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %209

61:                                               ; preds = %56, %51
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %543

62:                                               ; preds = %17
  %63 = getelementptr inbounds i8, ptr %1, i64 2
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %13, %64
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %543

67:                                               ; preds = %62
  %68 = load i8, ptr %63, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  switch i8 %71, label %78 [
    i8 27, label %72
    i8 20, label %75
  ]

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %1, i64 3
  %74 = tail call fastcc i32 @normal_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %73, ptr noundef nonnull %2, ptr noundef %3), !range !64
  br label %543

75:                                               ; preds = %67
  %76 = getelementptr inbounds i8, ptr %1, i64 3
  %77 = tail call fastcc i32 @normal_scanCdataSection(ptr noundef nonnull %76, ptr noundef nonnull %2, ptr noundef %3)
  br label %543

78:                                               ; preds = %67
  store ptr %63, ptr %3, align 8, !tbaa !5
  br label %543

79:                                               ; preds = %17
  %80 = getelementptr inbounds i8, ptr %1, i64 2
  %81 = tail call fastcc i32 @normal_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %80, ptr noundef nonnull %2, ptr noundef %3)
  br label %543

82:                                               ; preds = %17
  %83 = getelementptr inbounds i8, ptr %1, i64 2
  %84 = ptrtoint ptr %83 to i64
  %85 = sub i64 %13, %84
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %543

87:                                               ; preds = %82
  %88 = load i8, ptr %83, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !9
  switch i8 %91, label %205 [
    i8 7, label %116
    i8 22, label %128
    i8 24, label %128
    i8 5, label %92
    i8 6, label %104
  ]

92:                                               ; preds = %87
  %93 = icmp eq i64 %85, 1
  br i1 %93, label %543, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !54
  %97 = tail call i32 %96(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %205

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !55
  %102 = tail call i32 %101(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %205, label %128

104:                                              ; preds = %87
  %105 = icmp ult i64 %85, 3
  br i1 %105, label %543, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !57
  %109 = tail call i32 %108(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %205

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !58
  %114 = tail call i32 %113(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %205, label %128

116:                                              ; preds = %87
  %117 = icmp ult i64 %85, 4
  br i1 %117, label %543, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %120 = load ptr, ptr %119, align 8, !tbaa !60
  %121 = tail call i32 %120(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %205

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = tail call i32 %125(ptr noundef nonnull %0, ptr noundef nonnull %83) #14
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %205, label %128

128:                                              ; preds = %123, %111, %99, %87, %87
  %129 = phi i64 [ 1, %87 ], [ 1, %87 ], [ 2, %99 ], [ 3, %111 ], [ 4, %123 ]
  %130 = getelementptr inbounds i8, ptr %83, i64 %129
  %131 = ptrtoint ptr %130 to i64
  %132 = sub i64 %13, %131
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %543

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %136 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %137 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %138 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %139 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %140 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %141

141:                                              ; preds = %199, %134
  %142 = phi i64 [ %132, %134 ], [ %203, %199 ]
  %143 = phi ptr [ %130, %134 ], [ %201, %199 ]
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !9
  switch i8 %147, label %205 [
    i8 11, label %197
    i8 22, label %199
    i8 24, label %199
    i8 25, label %199
    i8 26, label %199
    i8 27, label %199
    i8 5, label %148
    i8 6, label %158
    i8 7, label %168
    i8 21, label %178
    i8 9, label %178
    i8 10, label %178
    i8 23, label %199
  ]

148:                                              ; preds = %141
  %149 = icmp eq i64 %142, 1
  br i1 %149, label %543, label %150

150:                                              ; preds = %148
  %151 = load ptr, ptr %139, align 8, !tbaa !54
  %152 = tail call i32 %151(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %205

154:                                              ; preds = %150
  %155 = load ptr, ptr %140, align 8, !tbaa !56
  %156 = tail call i32 %155(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %205, label %199

158:                                              ; preds = %141
  %159 = icmp ult i64 %142, 3
  br i1 %159, label %543, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr %137, align 8, !tbaa !57
  %162 = tail call i32 %161(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %205

164:                                              ; preds = %160
  %165 = load ptr, ptr %138, align 8, !tbaa !59
  %166 = tail call i32 %165(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %205, label %199

168:                                              ; preds = %141
  %169 = icmp ult i64 %142, 4
  br i1 %169, label %543, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr %135, align 8, !tbaa !60
  %172 = tail call i32 %171(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %205

174:                                              ; preds = %170
  %175 = load ptr, ptr %136, align 8, !tbaa !62
  %176 = tail call i32 %175(ptr noundef nonnull %0, ptr noundef nonnull %143) #14
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %205, label %199

178:                                              ; preds = %141, %141, %141
  %179 = getelementptr inbounds i8, ptr %143, i64 1
  %180 = ptrtoint ptr %179 to i64
  %181 = sub i64 %13, %180
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %543

183:                                              ; preds = %178, %192
  %184 = phi ptr [ %193, %192 ], [ %179, %178 ]
  %185 = phi ptr [ %184, %192 ], [ %143, %178 ]
  %186 = load i8, ptr %184, align 1, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !9
  switch i8 %189, label %205 [
    i8 21, label %192
    i8 9, label %192
    i8 10, label %192
    i8 11, label %190
  ]

190:                                              ; preds = %183
  %191 = getelementptr inbounds i8, ptr %185, i64 2
  br label %205

192:                                              ; preds = %183, %183, %183
  %193 = getelementptr inbounds i8, ptr %184, i64 1
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %13, %194
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %183, label %543, !llvm.loop !65

197:                                              ; preds = %141
  %198 = getelementptr inbounds i8, ptr %143, i64 1
  br label %205

199:                                              ; preds = %174, %164, %154, %141, %141, %141, %141, %141, %141
  %200 = phi i64 [ 1, %141 ], [ 1, %141 ], [ 1, %141 ], [ 1, %141 ], [ 1, %141 ], [ 2, %154 ], [ 3, %164 ], [ 4, %174 ], [ 1, %141 ]
  %201 = getelementptr inbounds i8, ptr %143, i64 %200
  %202 = ptrtoint ptr %201 to i64
  %203 = sub i64 %13, %202
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %141, label %543, !llvm.loop !66

205:                                              ; preds = %174, %170, %164, %160, %154, %150, %141, %183, %197, %190, %123, %118, %111, %106, %99, %94, %87
  %206 = phi ptr [ %198, %197 ], [ %191, %190 ], [ %83, %99 ], [ %83, %94 ], [ %83, %111 ], [ %83, %106 ], [ %83, %123 ], [ %83, %118 ], [ %83, %87 ], [ %184, %183 ], [ %143, %141 ], [ %143, %150 ], [ %143, %154 ], [ %143, %160 ], [ %143, %164 ], [ %143, %170 ], [ %143, %174 ]
  %207 = phi i32 [ 5, %197 ], [ 5, %190 ], [ 0, %99 ], [ 0, %94 ], [ 0, %111 ], [ 0, %106 ], [ 0, %123 ], [ 0, %118 ], [ 0, %87 ], [ 0, %183 ], [ 0, %141 ], [ 0, %150 ], [ 0, %154 ], [ 0, %160 ], [ 0, %164 ], [ 0, %170 ], [ 0, %174 ]
  store ptr %206, ptr %3, align 8, !tbaa !5
  br label %543

208:                                              ; preds = %17
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %543

209:                                              ; preds = %56, %43, %30, %17, %17
  %210 = phi i64 [ 1, %17 ], [ 1, %17 ], [ 2, %30 ], [ 3, %43 ], [ 4, %56 ]
  %211 = getelementptr inbounds i8, ptr %12, i64 %210
  %212 = ptrtoint ptr %211 to i64
  %213 = sub i64 %13, %212
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %543

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %217 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %218 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %219 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %220 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %221 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %222 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %223 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %224 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %225

225:                                              ; preds = %388, %215
  %226 = phi i64 [ %213, %215 ], [ %393, %388 ]
  %227 = phi i32 [ 0, %215 ], [ %390, %388 ]
  %228 = phi ptr [ %211, %215 ], [ %391, %388 ]
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !9
  switch i8 %232, label %387 [
    i8 29, label %233
    i8 22, label %388
    i8 24, label %388
    i8 25, label %388
    i8 26, label %388
    i8 27, label %388
    i8 5, label %234
    i8 6, label %245
    i8 7, label %256
    i8 23, label %267
    i8 21, label %315
    i8 9, label %315
    i8 10, label %315
    i8 11, label %372
    i8 17, label %375
  ]

233:                                              ; preds = %225
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

234:                                              ; preds = %225
  %235 = icmp eq i64 %226, 1
  br i1 %235, label %543, label %236

236:                                              ; preds = %234
  %237 = load ptr, ptr %220, align 8, !tbaa !54
  %238 = tail call i32 %237(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load ptr, ptr %224, align 8, !tbaa !56
  %242 = tail call i32 %241(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %388

244:                                              ; preds = %240, %236
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

245:                                              ; preds = %225
  %246 = icmp ult i64 %226, 3
  br i1 %246, label %543, label %247

247:                                              ; preds = %245
  %248 = load ptr, ptr %218, align 8, !tbaa !57
  %249 = tail call i32 %248(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load ptr, ptr %223, align 8, !tbaa !59
  %253 = tail call i32 %252(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %388

255:                                              ; preds = %251, %247
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

256:                                              ; preds = %225
  %257 = icmp ult i64 %226, 4
  br i1 %257, label %543, label %258

258:                                              ; preds = %256
  %259 = load ptr, ptr %216, align 8, !tbaa !60
  %260 = tail call i32 %259(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load ptr, ptr %222, align 8, !tbaa !62
  %264 = tail call i32 %263(ptr noundef nonnull %0, ptr noundef nonnull %228) #14
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %388

266:                                              ; preds = %262, %258
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

267:                                              ; preds = %225
  %268 = icmp eq i32 %227, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %267
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

270:                                              ; preds = %267
  %271 = getelementptr inbounds i8, ptr %228, i64 1
  %272 = ptrtoint ptr %271 to i64
  %273 = sub i64 %13, %272
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %543

275:                                              ; preds = %270
  %276 = load i8, ptr %271, align 1, !tbaa !9
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !9
  switch i8 %279, label %314 [
    i8 29, label %280
    i8 22, label %388
    i8 24, label %388
    i8 5, label %281
    i8 6, label %292
    i8 7, label %303
  ]

280:                                              ; preds = %275
  store ptr %271, ptr %3, align 8, !tbaa !5
  br label %543

281:                                              ; preds = %275
  %282 = icmp eq i64 %273, 1
  br i1 %282, label %543, label %283

283:                                              ; preds = %281
  %284 = load ptr, ptr %220, align 8, !tbaa !54
  %285 = tail call i32 %284(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load ptr, ptr %221, align 8, !tbaa !55
  %289 = tail call i32 %288(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %388

291:                                              ; preds = %287, %283
  store ptr %271, ptr %3, align 8, !tbaa !5
  br label %543

292:                                              ; preds = %275
  %293 = icmp ult i64 %273, 3
  br i1 %293, label %543, label %294

294:                                              ; preds = %292
  %295 = load ptr, ptr %218, align 8, !tbaa !57
  %296 = tail call i32 %295(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load ptr, ptr %219, align 8, !tbaa !58
  %300 = tail call i32 %299(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %388

302:                                              ; preds = %298, %294
  store ptr %271, ptr %3, align 8, !tbaa !5
  br label %543

303:                                              ; preds = %275
  %304 = icmp ult i64 %273, 4
  br i1 %304, label %543, label %305

305:                                              ; preds = %303
  %306 = load ptr, ptr %216, align 8, !tbaa !60
  %307 = tail call i32 %306(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load ptr, ptr %217, align 8, !tbaa !61
  %311 = tail call i32 %310(ptr noundef nonnull %0, ptr noundef nonnull %271) #14
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %388

313:                                              ; preds = %309, %305
  store ptr %271, ptr %3, align 8, !tbaa !5
  br label %543

314:                                              ; preds = %275
  store ptr %271, ptr %3, align 8, !tbaa !5
  br label %543

315:                                              ; preds = %225, %225, %225
  %316 = getelementptr inbounds i8, ptr %228, i64 1
  %317 = ptrtoint ptr %316 to i64
  %318 = sub i64 %13, %317
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %543

320:                                              ; preds = %315, %362
  %321 = phi i64 [ %365, %362 ], [ %318, %315 ]
  %322 = phi ptr [ %363, %362 ], [ %316, %315 ]
  %323 = phi ptr [ %322, %362 ], [ %228, %315 ]
  %324 = load i8, ptr %322, align 1, !tbaa !9
  %325 = zext i8 %324 to i64
  %326 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !9
  switch i8 %327, label %367 [
    i8 29, label %328
    i8 22, label %368
    i8 24, label %368
    i8 5, label %329
    i8 6, label %340
    i8 7, label %351
    i8 11, label %372
    i8 17, label %375
    i8 21, label %362
    i8 9, label %362
    i8 10, label %362
  ]

328:                                              ; preds = %320
  store ptr %322, ptr %3, align 8, !tbaa !5
  br label %543

329:                                              ; preds = %320
  %330 = icmp eq i64 %321, 1
  br i1 %330, label %543, label %331

331:                                              ; preds = %329
  %332 = load ptr, ptr %220, align 8, !tbaa !54
  %333 = tail call i32 %332(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load ptr, ptr %221, align 8, !tbaa !55
  %337 = tail call i32 %336(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %368

339:                                              ; preds = %335, %331
  store ptr %322, ptr %3, align 8, !tbaa !5
  br label %543

340:                                              ; preds = %320
  %341 = icmp ult i64 %321, 3
  br i1 %341, label %543, label %342

342:                                              ; preds = %340
  %343 = load ptr, ptr %218, align 8, !tbaa !57
  %344 = tail call i32 %343(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %342
  %347 = load ptr, ptr %219, align 8, !tbaa !58
  %348 = tail call i32 %347(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %368

350:                                              ; preds = %346, %342
  store ptr %322, ptr %3, align 8, !tbaa !5
  br label %543

351:                                              ; preds = %320
  %352 = icmp ult i64 %321, 4
  br i1 %352, label %543, label %353

353:                                              ; preds = %351
  %354 = load ptr, ptr %216, align 8, !tbaa !60
  %355 = tail call i32 %354(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load ptr, ptr %217, align 8, !tbaa !61
  %359 = tail call i32 %358(ptr noundef nonnull %0, ptr noundef nonnull %322) #14
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %357, %353
  store ptr %322, ptr %3, align 8, !tbaa !5
  br label %543

362:                                              ; preds = %320, %320, %320
  %363 = getelementptr inbounds i8, ptr %322, i64 1
  %364 = ptrtoint ptr %363 to i64
  %365 = sub i64 %13, %364
  %366 = icmp sgt i64 %365, 0
  br i1 %366, label %320, label %543, !llvm.loop !67

367:                                              ; preds = %320
  store ptr %322, ptr %3, align 8, !tbaa !5
  br label %543

368:                                              ; preds = %320, %320, %357, %346, %335
  %369 = phi i64 [ 3, %335 ], [ 4, %346 ], [ 5, %357 ], [ 2, %320 ], [ 2, %320 ]
  %370 = getelementptr inbounds i8, ptr %323, i64 %369
  %371 = tail call fastcc i32 @normal_scanAtts(ptr noundef nonnull %0, ptr noundef nonnull %370, ptr noundef nonnull %2, ptr noundef %3)
  br label %543

372:                                              ; preds = %225, %320
  %373 = phi ptr [ %322, %320 ], [ %228, %225 ]
  %374 = getelementptr inbounds i8, ptr %373, i64 1
  store ptr %374, ptr %3, align 8, !tbaa !5
  br label %543

375:                                              ; preds = %225, %320
  %376 = phi ptr [ %322, %320 ], [ %228, %225 ]
  %377 = getelementptr inbounds i8, ptr %376, i64 1
  %378 = ptrtoint ptr %377 to i64
  %379 = sub i64 %13, %378
  %380 = icmp sgt i64 %379, 0
  br i1 %380, label %381, label %543

381:                                              ; preds = %375
  %382 = load i8, ptr %377, align 1, !tbaa !9
  %383 = icmp eq i8 %382, 62
  br i1 %383, label %385, label %384

384:                                              ; preds = %381
  store ptr %377, ptr %3, align 8, !tbaa !5
  br label %543

385:                                              ; preds = %381
  %386 = getelementptr inbounds i8, ptr %376, i64 2
  store ptr %386, ptr %3, align 8, !tbaa !5
  br label %543

387:                                              ; preds = %225
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %543

388:                                              ; preds = %309, %298, %287, %275, %275, %262, %251, %240, %225, %225, %225, %225, %225
  %389 = phi i64 [ 1, %225 ], [ 1, %225 ], [ 1, %225 ], [ 1, %225 ], [ 1, %225 ], [ 2, %240 ], [ 3, %251 ], [ 4, %262 ], [ 2, %275 ], [ 2, %275 ], [ 3, %287 ], [ 4, %298 ], [ 5, %309 ]
  %390 = phi i32 [ %227, %225 ], [ %227, %225 ], [ %227, %225 ], [ %227, %225 ], [ %227, %225 ], [ %227, %240 ], [ %227, %251 ], [ %227, %262 ], [ 1, %275 ], [ 1, %275 ], [ 1, %287 ], [ 1, %298 ], [ 1, %309 ]
  %391 = getelementptr inbounds i8, ptr %228, i64 %389
  %392 = ptrtoint ptr %391 to i64
  %393 = sub i64 %13, %392
  %394 = icmp sgt i64 %393, 0
  br i1 %394, label %225, label %543, !llvm.loop !68

395:                                              ; preds = %6
  %396 = getelementptr inbounds i8, ptr %1, i64 1
  %397 = tail call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %396, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %543

398:                                              ; preds = %6
  %399 = getelementptr inbounds i8, ptr %1, i64 1
  %400 = ptrtoint ptr %2 to i64
  %401 = ptrtoint ptr %399 to i64
  %402 = sub i64 %400, %401
  %403 = icmp sgt i64 %402, 0
  br i1 %403, label %404, label %543

404:                                              ; preds = %398
  %405 = load i8, ptr %399, align 1, !tbaa !9
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !9
  %409 = icmp eq i8 %408, 10
  %410 = getelementptr inbounds i8, ptr %1, i64 2
  %411 = select i1 %409, ptr %410, ptr %399
  store ptr %411, ptr %3, align 8, !tbaa !5
  br label %543

412:                                              ; preds = %6
  %413 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %413, ptr %3, align 8, !tbaa !5
  br label %543

414:                                              ; preds = %6
  %415 = getelementptr inbounds i8, ptr %1, i64 1
  %416 = ptrtoint ptr %2 to i64
  %417 = ptrtoint ptr %415 to i64
  %418 = sub i64 %416, %417
  %419 = icmp sgt i64 %418, 0
  br i1 %419, label %420, label %543

420:                                              ; preds = %414
  %421 = load i8, ptr %415, align 1, !tbaa !9
  %422 = icmp eq i8 %421, 93
  br i1 %422, label %423, label %475

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %1, i64 2
  %425 = ptrtoint ptr %424 to i64
  %426 = sub i64 %416, %425
  %427 = icmp sgt i64 %426, 0
  br i1 %427, label %428, label %543

428:                                              ; preds = %423
  %429 = load i8, ptr %424, align 1, !tbaa !9
  %430 = icmp eq i8 %429, 62
  br i1 %430, label %431, label %475

431:                                              ; preds = %428
  store ptr %424, ptr %3, align 8, !tbaa !5
  br label %543

432:                                              ; preds = %6
  %433 = ptrtoint ptr %2 to i64
  %434 = ptrtoint ptr %1 to i64
  %435 = sub i64 %433, %434
  %436 = icmp slt i64 %435, 2
  br i1 %436, label %543, label %437

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %439 = load ptr, ptr %438, align 8, !tbaa !54
  %440 = tail call i32 %439(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %437
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %543

443:                                              ; preds = %437
  %444 = getelementptr inbounds i8, ptr %1, i64 2
  br label %475

445:                                              ; preds = %6
  %446 = ptrtoint ptr %2 to i64
  %447 = ptrtoint ptr %1 to i64
  %448 = sub i64 %446, %447
  %449 = icmp slt i64 %448, 3
  br i1 %449, label %543, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %452 = load ptr, ptr %451, align 8, !tbaa !57
  %453 = tail call i32 %452(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %450
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %543

456:                                              ; preds = %450
  %457 = getelementptr inbounds i8, ptr %1, i64 3
  br label %475

458:                                              ; preds = %6
  %459 = ptrtoint ptr %2 to i64
  %460 = ptrtoint ptr %1 to i64
  %461 = sub i64 %459, %460
  %462 = icmp slt i64 %461, 4
  br i1 %462, label %543, label %463

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %465 = load ptr, ptr %464, align 8, !tbaa !60
  %466 = tail call i32 %465(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %463
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %543

469:                                              ; preds = %463
  %470 = getelementptr inbounds i8, ptr %1, i64 4
  br label %475

471:                                              ; preds = %6, %6, %6
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %543

472:                                              ; preds = %6
  %473 = getelementptr inbounds i8, ptr %1, i64 1
  %474 = ptrtoint ptr %2 to i64
  br label %475

475:                                              ; preds = %428, %420, %472, %469, %456, %443
  %476 = phi i64 [ %416, %428 ], [ %416, %420 ], [ %474, %472 ], [ %459, %469 ], [ %446, %456 ], [ %433, %443 ]
  %477 = phi ptr [ %415, %428 ], [ %415, %420 ], [ %473, %472 ], [ %470, %469 ], [ %457, %456 ], [ %444, %443 ]
  %478 = ptrtoint ptr %477 to i64
  %479 = sub i64 %476, %478
  %480 = icmp sgt i64 %479, 0
  br i1 %480, label %481, label %541

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %483 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %484 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  br label %485

485:                                              ; preds = %481, %536
  %486 = phi i64 [ %479, %481 ], [ %539, %536 ]
  %487 = phi ptr [ %477, %481 ], [ %537, %536 ]
  %488 = load i8, ptr %487, align 1, !tbaa !9
  %489 = zext i8 %488 to i64
  %490 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !9
  switch i8 %491, label %534 [
    i8 5, label %492
    i8 6, label %501
    i8 7, label %510
    i8 4, label %519
    i8 3, label %533
    i8 2, label %533
    i8 0, label %533
    i8 1, label %533
    i8 8, label %533
    i8 9, label %533
    i8 10, label %533
  ]

492:                                              ; preds = %485
  %493 = icmp eq i64 %486, 1
  br i1 %493, label %498, label %494

494:                                              ; preds = %492
  %495 = load ptr, ptr %484, align 8, !tbaa !54
  %496 = tail call i32 %495(ptr noundef nonnull %0, ptr noundef nonnull %487) #14
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %494, %492
  store ptr %487, ptr %3, align 8, !tbaa !5
  br label %543

499:                                              ; preds = %494
  %500 = getelementptr inbounds i8, ptr %487, i64 2
  br label %536

501:                                              ; preds = %485
  %502 = icmp ult i64 %486, 3
  br i1 %502, label %507, label %503

503:                                              ; preds = %501
  %504 = load ptr, ptr %483, align 8, !tbaa !57
  %505 = tail call i32 %504(ptr noundef nonnull %0, ptr noundef nonnull %487) #14
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %503, %501
  store ptr %487, ptr %3, align 8, !tbaa !5
  br label %543

508:                                              ; preds = %503
  %509 = getelementptr inbounds i8, ptr %487, i64 3
  br label %536

510:                                              ; preds = %485
  %511 = icmp ult i64 %486, 4
  br i1 %511, label %516, label %512

512:                                              ; preds = %510
  %513 = load ptr, ptr %482, align 8, !tbaa !60
  %514 = tail call i32 %513(ptr noundef nonnull %0, ptr noundef nonnull %487) #14
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %517, label %516

516:                                              ; preds = %512, %510
  store ptr %487, ptr %3, align 8, !tbaa !5
  br label %543

517:                                              ; preds = %512
  %518 = getelementptr inbounds i8, ptr %487, i64 4
  br label %536

519:                                              ; preds = %485
  %520 = icmp eq i64 %486, 1
  br i1 %520, label %533, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds i8, ptr %487, i64 1
  %523 = load i8, ptr %522, align 1, !tbaa !9
  %524 = icmp eq i8 %523, 93
  br i1 %524, label %525, label %536

525:                                              ; preds = %521
  %526 = icmp ugt i64 %486, 2
  br i1 %526, label %527, label %533

527:                                              ; preds = %525
  %528 = getelementptr inbounds i8, ptr %487, i64 2
  %529 = load i8, ptr %528, align 1, !tbaa !9
  %530 = icmp eq i8 %529, 62
  br i1 %530, label %531, label %536

531:                                              ; preds = %527
  %532 = getelementptr inbounds i8, ptr %487, i64 2
  store ptr %532, ptr %3, align 8, !tbaa !5
  br label %543

533:                                              ; preds = %519, %525, %485, %485, %485, %485, %485, %485, %485
  store ptr %487, ptr %3, align 8, !tbaa !5
  br label %543

534:                                              ; preds = %485
  %535 = getelementptr inbounds i8, ptr %487, i64 1
  br label %536

536:                                              ; preds = %527, %521, %534, %517, %508, %499
  %537 = phi ptr [ %535, %534 ], [ %518, %517 ], [ %509, %508 ], [ %500, %499 ], [ %522, %521 ], [ %522, %527 ]
  %538 = ptrtoint ptr %537 to i64
  %539 = sub i64 %476, %538
  %540 = icmp sgt i64 %539, 0
  br i1 %540, label %485, label %541, !llvm.loop !70

541:                                              ; preds = %536, %475
  %542 = phi ptr [ %477, %475 ], [ %537, %536 ]
  store ptr %542, ptr %3, align 8, !tbaa !5
  br label %543

543:                                              ; preds = %199, %168, %158, %148, %192, %388, %303, %292, %281, %270, %256, %245, %234, %362, %387, %385, %384, %375, %372, %368, %367, %361, %351, %350, %340, %339, %329, %328, %315, %314, %313, %302, %291, %280, %269, %266, %255, %244, %233, %209, %208, %205, %178, %128, %116, %104, %92, %82, %79, %78, %75, %72, %62, %61, %49, %48, %36, %35, %23, %22, %11, %458, %445, %432, %423, %414, %398, %4, %541, %533, %531, %516, %507, %498, %471, %468, %455, %442, %431, %412, %404, %395
  %544 = phi i32 [ 6, %533 ], [ 0, %531 ], [ 6, %516 ], [ 6, %507 ], [ 6, %498 ], [ 6, %541 ], [ 0, %471 ], [ 0, %468 ], [ 0, %455 ], [ 0, %442 ], [ 0, %431 ], [ 7, %412 ], [ 7, %404 ], [ %397, %395 ], [ -4, %4 ], [ -3, %398 ], [ -5, %414 ], [ -5, %423 ], [ -2, %432 ], [ -2, %445 ], [ -2, %458 ], [ 0, %208 ], [ %81, %79 ], [ 0, %78 ], [ %77, %75 ], [ %74, %72 ], [ 0, %61 ], [ 0, %387 ], [ 4, %385 ], [ 0, %384 ], [ 2, %372 ], [ 0, %367 ], [ 0, %361 ], [ %371, %368 ], [ 0, %350 ], [ 0, %339 ], [ 0, %328 ], [ 0, %269 ], [ 0, %314 ], [ 0, %313 ], [ 0, %302 ], [ 0, %291 ], [ 0, %280 ], [ 0, %266 ], [ 0, %255 ], [ 0, %244 ], [ 0, %233 ], [ 0, %48 ], [ 0, %35 ], [ 0, %22 ], [ -1, %11 ], [ -2, %23 ], [ -2, %36 ], [ -2, %49 ], [ -1, %62 ], [ -2, %329 ], [ -2, %340 ], [ -2, %351 ], [ -1, %375 ], [ -1, %82 ], [ -2, %92 ], [ -2, %104 ], [ -2, %116 ], [ -1, %178 ], [ -1, %128 ], [ %207, %205 ], [ -1, %315 ], [ -1, %209 ], [ -1, %362 ], [ -1, %388 ], [ -2, %303 ], [ -2, %292 ], [ -2, %281 ], [ -1, %270 ], [ -2, %256 ], [ -2, %245 ], [ -2, %234 ], [ -1, %192 ], [ -2, %148 ], [ -2, %158 ], [ -2, %168 ], [ -1, %199 ]
  ret i32 %544
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @normal_cdataSectionTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %129

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  switch i8 %10, label %82 [
    i8 4, label %11
    i8 9, label %30
    i8 10, label %44
    i8 5, label %46
    i8 6, label %58
    i8 7, label %70
    i8 0, label %126
    i8 1, label %126
    i8 8, label %126
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = ptrtoint ptr %2 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %129

17:                                               ; preds = %11
  %18 = load i8, ptr %12, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 93
  br i1 %19, label %20, label %85

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %1, i64 2
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %13, %22
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %129

25:                                               ; preds = %20
  %26 = load i8, ptr %21, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 62
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %1, i64 3
  br label %126

30:                                               ; preds = %6
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = ptrtoint ptr %2 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %129

36:                                               ; preds = %30
  %37 = load i8, ptr %31, align 1, !tbaa !9
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 10
  %42 = getelementptr inbounds i8, ptr %1, i64 2
  %43 = select i1 %41, ptr %42, ptr %31
  br label %126

44:                                               ; preds = %6
  %45 = getelementptr inbounds i8, ptr %1, i64 1
  br label %126

46:                                               ; preds = %6
  %47 = ptrtoint ptr %2 to i64
  %48 = ptrtoint ptr %1 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 2
  br i1 %50, label %129, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = tail call i32 %53(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %1, i64 2
  br label %85

58:                                               ; preds = %6
  %59 = ptrtoint ptr %2 to i64
  %60 = ptrtoint ptr %1 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 3
  br i1 %62, label %129, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = tail call i32 %65(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %126

68:                                               ; preds = %63
  %69 = getelementptr inbounds i8, ptr %1, i64 3
  br label %85

70:                                               ; preds = %6
  %71 = ptrtoint ptr %2 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = icmp slt i64 %73, 4
  br i1 %74, label %129, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = tail call i32 %77(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %1, i64 4
  br label %85

82:                                               ; preds = %6
  %83 = getelementptr inbounds i8, ptr %1, i64 1
  %84 = ptrtoint ptr %2 to i64
  br label %85

85:                                               ; preds = %25, %17, %82, %80, %68, %56
  %86 = phi i64 [ %13, %25 ], [ %13, %17 ], [ %84, %82 ], [ %71, %80 ], [ %59, %68 ], [ %47, %56 ]
  %87 = phi ptr [ %12, %25 ], [ %12, %17 ], [ %83, %82 ], [ %81, %80 ], [ %69, %68 ], [ %57, %56 ]
  %88 = ptrtoint ptr %87 to i64
  %89 = sub i64 %86, %88
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %93 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %94 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  br label %95

95:                                               ; preds = %91, %120
  %96 = phi i64 [ %89, %91 ], [ %124, %120 ]
  %97 = phi ptr [ %87, %91 ], [ %122, %120 ]
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !9
  switch i8 %101, label %120 [
    i8 5, label %102
    i8 6, label %108
    i8 7, label %114
    i8 0, label %126
    i8 1, label %126
    i8 8, label %126
    i8 9, label %126
    i8 10, label %126
    i8 4, label %126
  ]

102:                                              ; preds = %95
  %103 = icmp eq i64 %96, 1
  br i1 %103, label %126, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %94, align 8, !tbaa !54
  %106 = tail call i32 %105(ptr noundef nonnull %0, ptr noundef nonnull %97) #14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %120, label %126

108:                                              ; preds = %95
  %109 = icmp ult i64 %96, 3
  br i1 %109, label %126, label %110

110:                                              ; preds = %108
  %111 = load ptr, ptr %93, align 8, !tbaa !57
  %112 = tail call i32 %111(ptr noundef nonnull %0, ptr noundef nonnull %97) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %126

114:                                              ; preds = %95
  %115 = icmp ult i64 %96, 4
  br i1 %115, label %126, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %92, align 8, !tbaa !60
  %118 = tail call i32 %117(ptr noundef nonnull %0, ptr noundef nonnull %97) #14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %95, %116, %110, %104
  %121 = phi i64 [ 2, %104 ], [ 3, %110 ], [ 4, %116 ], [ 1, %95 ]
  %122 = getelementptr inbounds i8, ptr %97, i64 %121
  %123 = ptrtoint ptr %122 to i64
  %124 = sub i64 %86, %123
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %95, label %126, !llvm.loop !71

126:                                              ; preds = %120, %95, %95, %95, %95, %95, %95, %114, %116, %108, %110, %102, %104, %85, %6, %6, %6, %75, %63, %51, %28, %36, %44
  %127 = phi ptr [ %45, %44 ], [ %43, %36 ], [ %29, %28 ], [ %1, %51 ], [ %1, %63 ], [ %1, %75 ], [ %1, %6 ], [ %1, %6 ], [ %1, %6 ], [ %87, %85 ], [ %97, %104 ], [ %97, %102 ], [ %97, %110 ], [ %97, %108 ], [ %97, %116 ], [ %97, %114 ], [ %97, %95 ], [ %97, %95 ], [ %97, %95 ], [ %97, %95 ], [ %97, %95 ], [ %97, %95 ], [ %122, %120 ]
  %128 = phi i32 [ 7, %44 ], [ 7, %36 ], [ 40, %28 ], [ 0, %51 ], [ 0, %63 ], [ 0, %75 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 6, %85 ], [ 6, %104 ], [ 6, %102 ], [ 6, %110 ], [ 6, %108 ], [ 6, %116 ], [ 6, %114 ], [ 6, %95 ], [ 6, %95 ], [ 6, %95 ], [ 6, %95 ], [ 6, %95 ], [ 6, %95 ], [ 6, %120 ]
  store ptr %127, ptr %3, align 8, !tbaa !5
  br label %129

129:                                              ; preds = %126, %70, %58, %46, %30, %20, %11, %4
  %130 = phi i32 [ -4, %4 ], [ -1, %11 ], [ -1, %20 ], [ -1, %30 ], [ -2, %46 ], [ -2, %58 ], [ -2, %70 ], [ %128, %126 ]
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @normal_ignoreSectionTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %96

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %9, %87
  %14 = phi i64 [ %7, %9 ], [ %91, %87 ]
  %15 = phi i32 [ 0, %9 ], [ %89, %87 ]
  %16 = phi ptr [ %1, %9 ], [ %88, %87 ]
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %85 [
    i8 5, label %21
    i8 6, label %29
    i8 7, label %37
    i8 0, label %93
    i8 1, label %93
    i8 8, label %93
    i8 2, label %45
    i8 4, label %64
  ]

21:                                               ; preds = %13
  %22 = icmp eq i64 %14, 1
  br i1 %22, label %96, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %12, align 8, !tbaa !54
  %25 = tail call i32 %24(ptr noundef nonnull %0, ptr noundef nonnull %16) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %16, i64 2
  br label %87

29:                                               ; preds = %13
  %30 = icmp ult i64 %14, 3
  br i1 %30, label %96, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %11, align 8, !tbaa !57
  %33 = tail call i32 %32(ptr noundef nonnull %0, ptr noundef nonnull %16) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %16, i64 3
  br label %87

37:                                               ; preds = %13
  %38 = icmp ult i64 %14, 4
  br i1 %38, label %96, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %10, align 8, !tbaa !60
  %41 = tail call i32 %40(ptr noundef nonnull %0, ptr noundef nonnull %16) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %16, i64 4
  br label %87

45:                                               ; preds = %13
  %46 = getelementptr inbounds i8, ptr %16, i64 1
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %5, %47
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %45
  %51 = load i8, ptr %46, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 33
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %16, i64 2
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %5, %55
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = load i8, ptr %54, align 1, !tbaa !9
  %60 = icmp eq i8 %59, 91
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = add nsw i32 %15, 1
  %63 = getelementptr inbounds i8, ptr %16, i64 3
  br label %87

64:                                               ; preds = %13
  %65 = getelementptr inbounds i8, ptr %16, i64 1
  %66 = ptrtoint ptr %65 to i64
  %67 = sub i64 %5, %66
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load i8, ptr %65, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 93
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = getelementptr inbounds i8, ptr %16, i64 2
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %5, %74
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i8, ptr %73, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 62
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %16, i64 3
  %82 = icmp eq i32 %15, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = add nsw i32 %15, -1
  br label %87

85:                                               ; preds = %13
  %86 = getelementptr inbounds i8, ptr %16, i64 1
  br label %87

87:                                               ; preds = %69, %83, %77, %50, %61, %58, %85, %43, %35, %27
  %88 = phi ptr [ %86, %85 ], [ %81, %83 ], [ %73, %77 ], [ %65, %69 ], [ %63, %61 ], [ %54, %58 ], [ %46, %50 ], [ %44, %43 ], [ %36, %35 ], [ %28, %27 ]
  %89 = phi i32 [ %15, %85 ], [ %84, %83 ], [ %15, %77 ], [ %15, %69 ], [ %62, %61 ], [ %15, %58 ], [ %15, %50 ], [ %15, %43 ], [ %15, %35 ], [ %15, %27 ]
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %5, %90
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %13, label %96, !llvm.loop !72

93:                                               ; preds = %80, %13, %13, %13, %39, %31, %23
  %94 = phi ptr [ %16, %23 ], [ %16, %31 ], [ %16, %39 ], [ %16, %13 ], [ %16, %13 ], [ %16, %13 ], [ %81, %80 ]
  %95 = phi i32 [ 0, %23 ], [ 0, %31 ], [ 0, %39 ], [ 0, %13 ], [ 0, %13 ], [ 0, %13 ], [ 42, %80 ]
  store ptr %94, ptr %3, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %21, %29, %37, %45, %53, %64, %72, %87, %93, %4
  %97 = phi i32 [ -1, %4 ], [ %95, %93 ], [ -2, %21 ], [ -2, %29 ], [ -2, %37 ], [ -1, %45 ], [ -1, %53 ], [ -1, %64 ], [ -1, %72 ], [ -1, %87 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @normal_attributeValueTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %60

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %6, %53
  %12 = phi ptr [ %55, %53 ], [ %1, %6 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  switch i8 %16, label %52 [
    i8 5, label %53
    i8 6, label %17
    i8 7, label %18
    i8 3, label %19
    i8 2, label %25
    i8 10, label %26
    i8 9, label %31
    i8 21, label %47
  ]

17:                                               ; preds = %11
  br label %53

18:                                               ; preds = %11
  br label %53

19:                                               ; preds = %11
  %20 = icmp eq ptr %12, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = tail call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %60

24:                                               ; preds = %19
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %60

25:                                               ; preds = %11
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %60

26:                                               ; preds = %11
  %27 = icmp eq ptr %12, %1
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %29, ptr %3, align 8, !tbaa !5
  br label %60

30:                                               ; preds = %26
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %60

31:                                               ; preds = %11
  %32 = icmp eq ptr %12, %1
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, ptr %1, i64 1
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %7, %35
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i8, ptr %34, align 1, !tbaa !9
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 10
  %44 = getelementptr inbounds i8, ptr %1, i64 2
  %45 = select i1 %43, ptr %44, ptr %34
  store ptr %45, ptr %3, align 8, !tbaa !5
  br label %60

46:                                               ; preds = %31
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %60

47:                                               ; preds = %11
  %48 = icmp eq ptr %12, %1
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %50, ptr %3, align 8, !tbaa !5
  br label %60

51:                                               ; preds = %47
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %60

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %11, %52, %18, %17
  %54 = phi i64 [ 1, %52 ], [ 4, %18 ], [ 3, %17 ], [ 2, %11 ]
  %55 = getelementptr inbounds i8, ptr %12, i64 %54
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %7, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %11, label %59, !llvm.loop !73

59:                                               ; preds = %53
  store ptr %55, ptr %3, align 8, !tbaa !5
  br label %60

60:                                               ; preds = %33, %6, %4, %59, %51, %49, %46, %38, %30, %28, %25, %24, %21
  %61 = phi i32 [ 39, %49 ], [ 6, %51 ], [ 7, %38 ], [ 6, %46 ], [ 7, %28 ], [ 6, %30 ], [ 0, %25 ], [ %23, %21 ], [ 6, %24 ], [ 6, %59 ], [ -4, %4 ], [ -1, %6 ], [ -3, %33 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @normal_entityValueTok(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %62

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %6, %55
  %12 = phi ptr [ %57, %55 ], [ %1, %6 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  switch i8 %16, label %54 [
    i8 5, label %55
    i8 6, label %17
    i8 7, label %18
    i8 3, label %19
    i8 30, label %25
    i8 10, label %33
    i8 9, label %38
  ]

17:                                               ; preds = %11
  br label %55

18:                                               ; preds = %11
  br label %55

19:                                               ; preds = %11
  %20 = icmp eq ptr %12, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = tail call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %62

24:                                               ; preds = %19
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %62

25:                                               ; preds = %11
  %26 = icmp eq ptr %12, %1
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = tail call fastcc i32 @normal_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef nonnull %2, ptr noundef %3), !range !52
  %30 = icmp eq i32 %29, 22
  %31 = select i1 %30, i32 0, i32 %29
  br label %62

32:                                               ; preds = %25
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %62

33:                                               ; preds = %11
  %34 = icmp eq ptr %12, %1
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %36, ptr %3, align 8, !tbaa !5
  br label %62

37:                                               ; preds = %33
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %62

38:                                               ; preds = %11
  %39 = icmp eq ptr %12, %1
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %1, i64 1
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %7, %42
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i8, ptr %41, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 10
  %51 = getelementptr inbounds i8, ptr %1, i64 2
  %52 = select i1 %50, ptr %51, ptr %41
  store ptr %52, ptr %3, align 8, !tbaa !5
  br label %62

53:                                               ; preds = %38
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %62

54:                                               ; preds = %11
  br label %55

55:                                               ; preds = %11, %54, %18, %17
  %56 = phi i64 [ 1, %54 ], [ 4, %18 ], [ 3, %17 ], [ 2, %11 ]
  %57 = getelementptr inbounds i8, ptr %12, i64 %56
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %7, %58
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %11, label %61, !llvm.loop !74

61:                                               ; preds = %55
  store ptr %57, ptr %3, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %40, %6, %4, %61, %53, %45, %37, %35, %32, %27, %24, %21
  %63 = phi i32 [ 7, %45 ], [ 6, %53 ], [ 7, %35 ], [ 6, %37 ], [ %31, %27 ], [ 6, %32 ], [ %23, %21 ], [ 6, %24 ], [ 6, %61 ], [ -4, %4 ], [ -1, %6 ], [ -3, %40 ]
  ret i32 %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @normal_nameMatchesAscii(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = load i8, ptr %3, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %2 to i64
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi i8 [ %5, %7 ], [ %22, %19 ]
  %11 = phi ptr [ %3, %7 ], [ %21, %19 ]
  %12 = phi ptr [ %1, %7 ], [ %20, %19 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %8, %13
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = load i8, ptr %12, align 1, !tbaa !9
  %18 = icmp eq i8 %17, %10
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1
  %21 = getelementptr inbounds i8, ptr %11, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %9, !llvm.loop !75

24:                                               ; preds = %19, %4
  %25 = phi ptr [ %1, %4 ], [ %20, %19 ]
  %26 = icmp eq ptr %25, %2
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %16, %9, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %9 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @normal_nameLength(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi ptr [ %1, %2 ], [ %25, %21 ]
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = add i8 %8, -5
  %10 = icmp ult i8 %9, 25
  br i1 %10, label %16, label %11

11:                                               ; preds = %16, %3
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  ret i32 %15

16:                                               ; preds = %3
  %17 = zext nneg i8 %9 to i32
  %18 = lshr i32 25034759, %17
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %11, label %21

21:                                               ; preds = %16
  %22 = zext nneg i8 %9 to i64
  %23 = getelementptr inbounds [25 x i64], ptr @switch.table.normal_nameLength, i64 0, i64 %22
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %4, i64 %24
  br label %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef ptr @normal_skipS(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #7 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %1, %2 ], [ %10, %9 ]
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !9
  switch i8 %8, label %11 [
    i8 10, label %9
    i8 9, label %9
    i8 21, label %9
  ]

9:                                                ; preds = %3, %3, %3
  %10 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3

11:                                               ; preds = %3
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @normal_getAtts(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  br label %5

5:                                                ; preds = %121, %4
  %6 = phi ptr [ %1, %4 ], [ %122, %121 ]
  %7 = phi i32 [ 1, %4 ], [ %123, %121 ]
  %8 = phi i32 [ 0, %4 ], [ %124, %121 ]
  %9 = phi i32 [ 0, %4 ], [ %125, %121 ]
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %121 [
    i8 5, label %15
    i8 6, label %26
    i8 7, label %37
    i8 29, label %48
    i8 22, label %48
    i8 24, label %48
    i8 12, label %56
    i8 13, label %73
    i8 3, label %90
    i8 21, label %95
    i8 9, label %120
    i8 10, label %120
    i8 11, label %131
    i8 17, label %131
  ]

15:                                               ; preds = %5
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = icmp slt i32 %8, %2
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %20
  store ptr %10, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %20, i32 3
  store i8 1, ptr %22, align 8, !tbaa !78
  br label %23

23:                                               ; preds = %17, %19, %15
  %24 = phi i32 [ %7, %15 ], [ 1, %19 ], [ 1, %17 ]
  %25 = getelementptr inbounds i8, ptr %6, i64 2
  br label %121

26:                                               ; preds = %5
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = icmp slt i32 %8, %2
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = sext i32 %8 to i64
  %32 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %31
  store ptr %10, ptr %32, align 8, !tbaa !76
  %33 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %31, i32 3
  store i8 1, ptr %33, align 8, !tbaa !78
  br label %34

34:                                               ; preds = %28, %30, %26
  %35 = phi i32 [ %7, %26 ], [ 1, %30 ], [ 1, %28 ]
  %36 = getelementptr inbounds i8, ptr %6, i64 3
  br label %121

37:                                               ; preds = %5
  %38 = icmp eq i32 %7, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = icmp slt i32 %8, %2
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = sext i32 %8 to i64
  %43 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %42
  store ptr %10, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %42, i32 3
  store i8 1, ptr %44, align 8, !tbaa !78
  br label %45

45:                                               ; preds = %39, %41, %37
  %46 = phi i32 [ %7, %37 ], [ 1, %41 ], [ 1, %39 ]
  %47 = getelementptr inbounds i8, ptr %6, i64 4
  br label %121

48:                                               ; preds = %5, %5, %5
  %49 = icmp eq i32 %7, 0
  br i1 %49, label %50, label %121

50:                                               ; preds = %48
  %51 = icmp slt i32 %8, %2
  br i1 %51, label %52, label %121

52:                                               ; preds = %50
  %53 = sext i32 %8 to i64
  %54 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %53
  store ptr %10, ptr %54, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %53, i32 3
  store i8 1, ptr %55, align 8, !tbaa !78
  br label %121

56:                                               ; preds = %5
  %57 = icmp eq i32 %7, 2
  br i1 %57, label %64, label %58

58:                                               ; preds = %56
  %59 = icmp slt i32 %8, %2
  br i1 %59, label %60, label %121

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, ptr %6, i64 2
  %62 = sext i32 %8 to i64
  %63 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %62, i32 1
  store ptr %61, ptr %63, align 8, !tbaa !79
  br label %121

64:                                               ; preds = %56
  %65 = icmp eq i32 %9, 12
  br i1 %65, label %66, label %121

66:                                               ; preds = %64
  %67 = icmp slt i32 %8, %2
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = sext i32 %8 to i64
  %70 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %69, i32 2
  store ptr %10, ptr %70, align 8, !tbaa !80
  br label %71

71:                                               ; preds = %68, %66
  %72 = add nsw i32 %8, 1
  br label %121

73:                                               ; preds = %5
  %74 = icmp eq i32 %7, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = icmp slt i32 %8, %2
  br i1 %76, label %77, label %121

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, ptr %6, i64 2
  %79 = sext i32 %8 to i64
  %80 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %79, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !79
  br label %121

81:                                               ; preds = %73
  %82 = icmp eq i32 %9, 13
  br i1 %82, label %83, label %121

83:                                               ; preds = %81
  %84 = icmp slt i32 %8, %2
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = sext i32 %8 to i64
  %87 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %86, i32 2
  store ptr %10, ptr %87, align 8, !tbaa !80
  br label %88

88:                                               ; preds = %85, %83
  %89 = add nsw i32 %8, 1
  br label %121

90:                                               ; preds = %5
  %91 = icmp slt i32 %8, %2
  br i1 %91, label %92, label %121

92:                                               ; preds = %90
  %93 = sext i32 %8 to i64
  %94 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %93, i32 3
  store i8 0, ptr %94, align 8, !tbaa !78
  br label %121

95:                                               ; preds = %5
  switch i32 %7, label %134 [
    i32 1, label %121
    i32 2, label %96
  ]

96:                                               ; preds = %95
  %97 = icmp slt i32 %8, %2
  br i1 %97, label %98, label %121

98:                                               ; preds = %96
  %99 = sext i32 %8 to i64
  %100 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %99, i32 3
  %101 = load i8, ptr %100, align 8, !tbaa !78
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %99, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !79
  %106 = icmp ne ptr %10, %105
  %107 = icmp eq i8 %11, 32
  %108 = and i1 %107, %106
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = getelementptr inbounds i8, ptr %6, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 32
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = zext i8 %111 to i64
  %115 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %9, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %109, %103
  store i8 0, ptr %100, align 8, !tbaa !78
  br label %121

120:                                              ; preds = %5, %5
  switch i32 %7, label %135 [
    i32 1, label %121
    i32 2, label %126
  ]

121:                                              ; preds = %120, %135, %95, %134, %75, %77, %58, %60, %50, %52, %23, %34, %45, %48, %64, %71, %81, %88, %92, %90, %96, %98, %113, %119, %126, %128, %131, %5
  %122 = phi ptr [ %10, %5 ], [ %10, %131 ], [ %10, %128 ], [ %10, %126 ], [ %10, %119 ], [ %10, %113 ], [ %10, %98 ], [ %10, %96 ], [ %10, %92 ], [ %10, %90 ], [ %10, %88 ], [ %10, %81 ], [ %10, %71 ], [ %10, %64 ], [ %10, %48 ], [ %47, %45 ], [ %36, %34 ], [ %25, %23 ], [ %10, %52 ], [ %10, %50 ], [ %10, %60 ], [ %10, %58 ], [ %10, %77 ], [ %10, %75 ], [ %10, %95 ], [ %10, %134 ], [ %10, %120 ], [ %10, %135 ]
  %123 = phi i32 [ %7, %5 ], [ 2, %131 ], [ 2, %128 ], [ 2, %126 ], [ 2, %119 ], [ 2, %113 ], [ 2, %98 ], [ 2, %96 ], [ %7, %92 ], [ %7, %90 ], [ 0, %88 ], [ 2, %81 ], [ 0, %71 ], [ 2, %64 ], [ %7, %48 ], [ %46, %45 ], [ %35, %34 ], [ %24, %23 ], [ 1, %52 ], [ 1, %50 ], [ 2, %60 ], [ 2, %58 ], [ 2, %77 ], [ 2, %75 ], [ 0, %95 ], [ %7, %134 ], [ 0, %120 ], [ %7, %135 ]
  %124 = phi i32 [ %8, %5 ], [ %8, %131 ], [ %8, %128 ], [ %8, %126 ], [ %8, %119 ], [ %8, %113 ], [ %8, %98 ], [ %8, %96 ], [ %8, %92 ], [ %8, %90 ], [ %89, %88 ], [ %8, %81 ], [ %72, %71 ], [ %8, %64 ], [ %8, %48 ], [ %8, %45 ], [ %8, %34 ], [ %8, %23 ], [ %8, %52 ], [ %8, %50 ], [ %8, %60 ], [ %8, %58 ], [ %8, %77 ], [ %8, %75 ], [ %8, %95 ], [ %8, %134 ], [ %8, %120 ], [ %8, %135 ]
  %125 = phi i32 [ %9, %5 ], [ %9, %131 ], [ %9, %128 ], [ %9, %126 ], [ %9, %119 ], [ %9, %113 ], [ %9, %98 ], [ %9, %96 ], [ %9, %92 ], [ %9, %90 ], [ 13, %88 ], [ %9, %81 ], [ 12, %71 ], [ %9, %64 ], [ %9, %48 ], [ %9, %45 ], [ %9, %34 ], [ %9, %23 ], [ %9, %52 ], [ %9, %50 ], [ 12, %60 ], [ 12, %58 ], [ 13, %77 ], [ 13, %75 ], [ %9, %95 ], [ %9, %134 ], [ %9, %120 ], [ %9, %135 ]
  br label %5

126:                                              ; preds = %120
  %127 = icmp slt i32 %8, %2
  br i1 %127, label %128, label %121

128:                                              ; preds = %126
  %129 = sext i32 %8 to i64
  %130 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %129, i32 3
  store i8 0, ptr %130, align 8, !tbaa !78
  br label %121

131:                                              ; preds = %5, %5
  %132 = icmp eq i32 %7, 2
  br i1 %132, label %121, label %133

133:                                              ; preds = %131
  ret i32 %8

134:                                              ; preds = %95
  br label %121

135:                                              ; preds = %120
  br label %121
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @normal_charRefNumber(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds i8, ptr %1, i64 2
  %4 = load i8, ptr %3, align 1, !tbaa !9
  switch i8 %4, label %30 [
    i8 120, label %5
    i8 59, label %46
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 3
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi i32 [ 0, %5 ], [ %28, %27 ]
  %9 = phi ptr [ %6, %5 ], [ %29, %27 ]
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  switch i8 %10, label %27 [
    i8 59, label %43
    i8 48, label %12
    i8 49, label %12
    i8 50, label %12
    i8 51, label %12
    i8 52, label %12
    i8 53, label %12
    i8 54, label %12
    i8 55, label %12
    i8 56, label %12
    i8 57, label %12
    i8 65, label %16
    i8 66, label %16
    i8 67, label %16
    i8 68, label %16
    i8 69, label %16
    i8 70, label %16
    i8 97, label %20
    i8 98, label %20
    i8 99, label %20
    i8 100, label %20
    i8 101, label %20
    i8 102, label %20
  ]

12:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %13 = shl i32 %8, 4
  %14 = add nsw i32 %11, -48
  %15 = or i32 %14, %13
  br label %24

16:                                               ; preds = %7, %7, %7, %7, %7, %7
  %17 = shl i32 %8, 4
  %18 = add i32 %17, -55
  %19 = add i32 %18, %11
  br label %24

20:                                               ; preds = %7, %7, %7, %7, %7, %7
  %21 = shl i32 %8, 4
  %22 = add i32 %21, -87
  %23 = add i32 %22, %11
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi i32 [ %23, %20 ], [ %19, %16 ], [ %15, %12 ]
  %26 = icmp slt i32 %25, 1114112
  br i1 %26, label %27, label %57

27:                                               ; preds = %7, %24
  %28 = phi i32 [ %25, %24 ], [ %8, %7 ]
  %29 = getelementptr inbounds i8, ptr %9, i64 1
  br label %7, !llvm.loop !81

30:                                               ; preds = %2, %39
  %31 = phi ptr [ %40, %39 ], [ %3, %2 ]
  %32 = phi i32 [ %37, %39 ], [ 0, %2 ]
  %33 = phi i8 [ %41, %39 ], [ %4, %2 ]
  %34 = sext i8 %33 to i32
  %35 = mul nsw i32 %32, 10
  %36 = add nsw i32 %34, -48
  %37 = add nsw i32 %36, %35
  %38 = icmp slt i32 %37, 1114112
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = getelementptr inbounds i8, ptr %31, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = icmp eq i8 %41, 59
  br i1 %42, label %43, label %30, !llvm.loop !82

43:                                               ; preds = %7, %39
  %44 = phi i32 [ %37, %39 ], [ %8, %7 ]
  %45 = ashr i32 %44, 8
  switch i32 %45, label %55 [
    i32 216, label %57
    i32 217, label %57
    i32 218, label %57
    i32 219, label %57
    i32 220, label %57
    i32 221, label %57
    i32 222, label %57
    i32 223, label %57
    i32 0, label %46
    i32 255, label %52
  ]

46:                                               ; preds = %2, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %2 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %57, label %55

52:                                               ; preds = %43
  %53 = and i32 %44, -2
  %54 = icmp eq i32 %53, 65534
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %46, %43
  %56 = phi i32 [ %44, %52 ], [ %47, %46 ], [ %44, %43 ]
  br label %57

57:                                               ; preds = %24, %30, %55, %52, %46, %43, %43, %43, %43, %43, %43, %43, %43
  %58 = phi i32 [ %56, %55 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %43 ], [ -1, %46 ], [ -1, %52 ], [ -1, %30 ], [ -1, %24 ]
  ret i32 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @normal_predefinedEntityName(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #9 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  switch i64 %6, label %54 [
    i64 2, label %7
    i64 3, label %17
    i64 4, label %28
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %11, label %54

11:                                               ; preds = %7
  %12 = load i8, ptr %1, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 103
  %14 = select i1 %13, i32 62, i32 0
  %15 = icmp eq i8 %12, 108
  %16 = select i1 %15, i32 60, i32 %14
  br label %55

17:                                               ; preds = %3
  %18 = load i8, ptr %1, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 97
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 109
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 112
  br i1 %27, label %55, label %54

28:                                               ; preds = %3
  %29 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %29, label %54 [
    i8 113, label %30
    i8 97, label %42
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 117
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %1, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 111
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %1, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 116
  br i1 %41, label %55, label %54

42:                                               ; preds = %28
  %43 = getelementptr inbounds i8, ptr %1, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 112
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %1, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 111
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %1, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = icmp eq i8 %52, 115
  br i1 %53, label %55, label %54

54:                                               ; preds = %28, %34, %38, %30, %46, %50, %42, %17, %24, %20, %7, %3
  br label %55

55:                                               ; preds = %50, %38, %24, %11, %54
  %56 = phi i32 [ 0, %54 ], [ %16, %11 ], [ 38, %24 ], [ 34, %38 ], [ 39, %50 ]
  ret i32 %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @normal_updatePosition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.position, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi ptr [ %1, %9 ], [ %55, %54 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  switch i8 %16, label %50 [
    i8 5, label %17
    i8 6, label %21
    i8 7, label %25
    i8 10, label %29
    i8 9, label %33
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %12, i64 2
  %19 = load i64, ptr %10, align 8, !tbaa !40
  %20 = add i64 %19, 1
  store i64 %20, ptr %10, align 8, !tbaa !40
  br label %54

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %12, i64 3
  %23 = load i64, ptr %10, align 8, !tbaa !40
  %24 = add i64 %23, 1
  store i64 %24, ptr %10, align 8, !tbaa !40
  br label %54

25:                                               ; preds = %11
  %26 = getelementptr inbounds i8, ptr %12, i64 4
  %27 = load i64, ptr %10, align 8, !tbaa !40
  %28 = add i64 %27, 1
  store i64 %28, ptr %10, align 8, !tbaa !40
  br label %54

29:                                               ; preds = %11
  store i64 0, ptr %10, align 8, !tbaa !40
  %30 = load i64, ptr %3, align 8, !tbaa !43
  %31 = add i64 %30, 1
  store i64 %31, ptr %3, align 8, !tbaa !43
  %32 = getelementptr inbounds i8, ptr %12, i64 1
  br label %54

33:                                               ; preds = %11
  %34 = load i64, ptr %3, align 8, !tbaa !43
  %35 = add i64 %34, 1
  store i64 %35, ptr %3, align 8, !tbaa !43
  %36 = getelementptr inbounds i8, ptr %12, i64 1
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %5, %37
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i8, ptr %36, align 1, !tbaa !9
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 10
  %46 = getelementptr inbounds i8, ptr %12, i64 2
  %47 = select i1 %45, ptr %46, ptr %36
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi ptr [ %36, %33 ], [ %47, %40 ]
  store i64 0, ptr %10, align 8, !tbaa !40
  br label %54

50:                                               ; preds = %11
  %51 = getelementptr inbounds i8, ptr %12, i64 1
  %52 = load i64, ptr %10, align 8, !tbaa !40
  %53 = add i64 %52, 1
  store i64 %53, ptr %10, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %50, %48, %29, %25, %21, %17
  %55 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %32, %29 ], [ %26, %25 ], [ %22, %21 ], [ %18, %17 ]
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %5, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %11, label %59, !llvm.loop !44

59:                                               ; preds = %54, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @normal_isPublicId(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds i8, ptr %2, i64 -1
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4, %22
  %12 = phi ptr [ %23, %22 ], [ %7, %4 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  switch i8 %16, label %21 [
    i8 25, label %22
    i8 24, label %22
    i8 27, label %22
    i8 13, label %22
    i8 31, label %22
    i8 32, label %22
    i8 34, label %22
    i8 35, label %22
    i8 17, label %22
    i8 14, label %22
    i8 15, label %22
    i8 9, label %22
    i8 10, label %22
    i8 18, label %22
    i8 16, label %22
    i8 33, label %22
    i8 30, label %22
    i8 19, label %22
    i8 23, label %22
    i8 21, label %17
    i8 26, label %19
    i8 22, label %19
  ]

17:                                               ; preds = %11
  %18 = icmp eq i8 %13, 9
  br i1 %18, label %27, label %22

19:                                               ; preds = %11, %11
  %20 = icmp sgt i8 %13, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %19, %11
  switch i8 %13, label %27 [
    i8 36, label %22
    i8 64, label %22
  ]

22:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %17, %19, %21, %21
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %6, %24
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %11, label %28, !llvm.loop !83

27:                                               ; preds = %21, %17
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %22, %27, %4
  %29 = phi i32 [ 1, %4 ], [ 0, %27 ], [ 1, %22 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @latin1_toUtf8(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %39, label %8

8:                                                ; preds = %5
  %9 = ptrtoint ptr %4 to i64
  br label %10

10:                                               ; preds = %8, %36
  %11 = phi ptr [ %6, %8 ], [ %37, %36 ]
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp sgt i8 %12, -1
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  br i1 %13, label %28, label %15

15:                                               ; preds = %10
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %9, %16
  %18 = icmp slt i64 %17, 2
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = lshr i8 %12, 6
  %21 = or disjoint i8 %20, -64
  %22 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %22, ptr %3, align 8, !tbaa !5
  store i8 %21, ptr %14, align 1, !tbaa !9
  %23 = and i8 %12, -65
  %24 = load ptr, ptr %3, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !5
  store i8 %23, ptr %24, align 1, !tbaa !9
  %26 = load ptr, ptr %1, align 8, !tbaa !5
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %27, ptr %1, align 8, !tbaa !5
  br label %36

28:                                               ; preds = %10
  %29 = icmp eq ptr %14, %4
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %31, ptr %1, align 8, !tbaa !5
  %32 = load i8, ptr %11, align 1, !tbaa !9
  %33 = load ptr, ptr %3, align 8, !tbaa !5
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %34, ptr %3, align 8, !tbaa !5
  store i8 %32, ptr %33, align 1, !tbaa !9
  %35 = load ptr, ptr %1, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %19, %30
  %37 = phi ptr [ %27, %19 ], [ %35, %30 ]
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %10

39:                                               ; preds = %28, %15, %36, %5
  %40 = phi i32 [ 0, %5 ], [ 0, %36 ], [ 2, %15 ], [ 2, %28 ]
  ret i32 %40
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @latin1_toUtf16(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef readnone %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = icmp ult ptr %6, %2
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %8, %14
  %11 = phi ptr [ %19, %14 ], [ %9, %8 ]
  %12 = phi ptr [ %20, %14 ], [ %6, %8 ]
  %13 = icmp ult ptr %11, %4
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %15, ptr %1, align 8, !tbaa !5
  %16 = load i8, ptr %12, align 1, !tbaa !9
  %17 = zext i8 %16 to i16
  %18 = load ptr, ptr %3, align 8, !tbaa !5
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  store ptr %19, ptr %3, align 8, !tbaa !5
  store i16 %17, ptr %18, align 2, !tbaa !12
  %20 = load ptr, ptr %1, align 8, !tbaa !5
  %21 = icmp ult ptr %20, %2
  br i1 %21, label %10, label %24, !llvm.loop !84

22:                                               ; preds = %10
  %23 = icmp eq ptr %11, %4
  br i1 %23, label %25, label %24

24:                                               ; preds = %14, %5, %22
  br label %25

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 0, %24 ], [ 2, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @normal_scanLit(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #6 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 10
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 9
  %13 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 8
  br label %14

14:                                               ; preds = %10, %65
  %15 = phi i64 [ %8, %10 ], [ %68, %65 ]
  %16 = phi ptr [ %2, %10 ], [ %66, %65 ]
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %63 [
    i8 5, label %21
    i8 6, label %30
    i8 7, label %39
    i8 0, label %48
    i8 1, label %48
    i8 8, label %48
    i8 12, label %49
    i8 13, label %49
  ]

21:                                               ; preds = %14
  %22 = icmp eq i64 %15, 1
  br i1 %22, label %70, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %13, align 8, !tbaa !54
  %25 = tail call i32 %24(ptr noundef nonnull %1, ptr noundef nonnull %16) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store ptr %16, ptr %4, align 8, !tbaa !5
  br label %70

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, ptr %16, i64 2
  br label %65

30:                                               ; preds = %14
  %31 = icmp ult i64 %15, 3
  br i1 %31, label %70, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %12, align 8, !tbaa !57
  %34 = tail call i32 %33(ptr noundef nonnull %1, ptr noundef nonnull %16) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store ptr %16, ptr %4, align 8, !tbaa !5
  br label %70

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %16, i64 3
  br label %65

39:                                               ; preds = %14
  %40 = icmp ult i64 %15, 4
  br i1 %40, label %70, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %11, align 8, !tbaa !60
  %43 = tail call i32 %42(ptr noundef nonnull %1, ptr noundef nonnull %16) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store ptr %16, ptr %4, align 8, !tbaa !5
  br label %70

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %16, i64 4
  br label %65

48:                                               ; preds = %14, %14, %14
  store ptr %16, ptr %4, align 8, !tbaa !5
  br label %70

49:                                               ; preds = %14, %14
  %50 = zext nneg i8 %20 to i32
  %51 = getelementptr inbounds i8, ptr %16, i64 1
  %52 = icmp eq i32 %50, %0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = ptrtoint ptr %51 to i64
  %55 = sub i64 %6, %54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  store ptr %51, ptr %4, align 8, !tbaa !5
  %58 = load i8, ptr %51, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  switch i8 %61, label %62 [
    i8 21, label %70
    i8 9, label %70
    i8 10, label %70
    i8 11, label %70
    i8 30, label %70
    i8 20, label %70
  ]

62:                                               ; preds = %57
  br label %70

63:                                               ; preds = %14
  %64 = getelementptr inbounds i8, ptr %16, i64 1
  br label %65

65:                                               ; preds = %28, %37, %46, %63, %49
  %66 = phi ptr [ %64, %63 ], [ %51, %49 ], [ %47, %46 ], [ %38, %37 ], [ %29, %28 ]
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %6, %67
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %14, label %70

70:                                               ; preds = %65, %21, %30, %39, %5, %57, %57, %57, %57, %57, %57, %53, %27, %36, %45, %48, %62
  %71 = phi i32 [ 27, %57 ], [ 27, %57 ], [ 27, %57 ], [ 27, %57 ], [ 27, %57 ], [ 27, %57 ], [ -27, %53 ], [ 0, %27 ], [ 0, %36 ], [ 0, %45 ], [ 0, %48 ], [ 0, %62 ], [ -1, %5 ], [ -1, %65 ], [ -2, %21 ], [ -2, %30 ], [ -2, %39 ]
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normal_scanDecl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %24 [
    i8 27, label %14
    i8 20, label %17
    i8 22, label %19
    i8 24, label %19
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = tail call fastcc i32 @normal_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %15, ptr noundef %2, ptr noundef %3), !range !64
  br label %49

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %18, ptr %3, align 8, !tbaa !5
  br label %49

19:                                               ; preds = %9, %9
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %5, %21
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %25, label %49

24:                                               ; preds = %9
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %49

25:                                               ; preds = %19, %43
  %26 = phi i64 [ %46, %43 ], [ %22, %19 ]
  %27 = phi ptr [ %44, %43 ], [ %20, %19 ]
  %28 = phi ptr [ %27, %43 ], [ %1, %19 ]
  %29 = load i8, ptr %27, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !9
  switch i8 %32, label %48 [
    i8 30, label %33
    i8 21, label %42
    i8 9, label %42
    i8 10, label %42
    i8 22, label %43
    i8 24, label %43
  ]

33:                                               ; preds = %25
  %34 = icmp eq i64 %26, 1
  br i1 %34, label %49, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %28, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  switch i8 %40, label %42 [
    i8 21, label %41
    i8 9, label %41
    i8 10, label %41
    i8 30, label %41
  ]

41:                                               ; preds = %35, %35, %35, %35
  store ptr %27, ptr %3, align 8, !tbaa !5
  br label %49

42:                                               ; preds = %25, %25, %25, %35
  store ptr %27, ptr %3, align 8, !tbaa !5
  br label %49

43:                                               ; preds = %25, %25
  %44 = getelementptr inbounds i8, ptr %27, i64 1
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %5, %45
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %25, label %49, !llvm.loop !85

48:                                               ; preds = %25
  store ptr %27, ptr %3, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %43, %19, %33, %4, %48, %42, %41, %24, %17, %14
  %50 = phi i32 [ 0, %24 ], [ 0, %48 ], [ 16, %42 ], [ 0, %41 ], [ 33, %17 ], [ %16, %14 ], [ -1, %4 ], [ -1, %33 ], [ -1, %19 ], [ -1, %43 ]
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normal_scanPi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %211

10:                                               ; preds = %4
  %11 = load i8, ptr %1, align 1, !tbaa !9
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %55 [
    i8 29, label %15
    i8 22, label %56
    i8 24, label %56
    i8 5, label %16
    i8 6, label %29
    i8 7, label %42
  ]

15:                                               ; preds = %10
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %211

16:                                               ; preds = %10
  %17 = icmp eq i64 %8, 1
  br i1 %17, label %211, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = tail call i32 %20(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = tail call i32 %25(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23, %18
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %211

29:                                               ; preds = %10
  %30 = icmp ult i64 %8, 3
  br i1 %30, label %211, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = tail call i32 %38(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36, %31
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %211

42:                                               ; preds = %10
  %43 = icmp ult i64 %8, 4
  br i1 %43, label %211, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = tail call i32 %46(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = tail call i32 %51(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %211

55:                                               ; preds = %10
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %211

56:                                               ; preds = %49, %36, %23, %10, %10
  %57 = phi i64 [ 1, %10 ], [ 1, %10 ], [ 2, %23 ], [ 3, %36 ], [ 4, %49 ]
  %58 = getelementptr inbounds i8, ptr %1, i64 %57
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %6, %59
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %211

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %64 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %65 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %66 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %67 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %68 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %69

69:                                               ; preds = %62, %205
  %70 = phi i64 [ %60, %62 ], [ %209, %205 ]
  %71 = phi i64 [ %59, %62 ], [ %208, %205 ]
  %72 = phi ptr [ %58, %62 ], [ %207, %205 ]
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !9
  switch i8 %76, label %203 [
    i8 29, label %77
    i8 22, label %205
    i8 24, label %205
    i8 25, label %205
    i8 26, label %205
    i8 27, label %205
    i8 5, label %78
    i8 6, label %89
    i8 7, label %100
    i8 21, label %111
    i8 9, label %111
    i8 10, label %111
    i8 15, label %188
  ]

77:                                               ; preds = %69
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

78:                                               ; preds = %69
  %79 = icmp eq i64 %70, 1
  br i1 %79, label %211, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %67, align 8, !tbaa !54
  %82 = tail call i32 %81(ptr noundef nonnull %0, ptr noundef nonnull %72) #14
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load ptr, ptr %68, align 8, !tbaa !56
  %86 = tail call i32 %85(ptr noundef nonnull %0, ptr noundef nonnull %72) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %205

88:                                               ; preds = %84, %80
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

89:                                               ; preds = %69
  %90 = icmp ult i64 %70, 3
  br i1 %90, label %211, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %65, align 8, !tbaa !57
  %93 = tail call i32 %92(ptr noundef nonnull %0, ptr noundef nonnull %72) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 8, !tbaa !59
  %97 = tail call i32 %96(ptr noundef nonnull %0, ptr noundef nonnull %72) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %205

99:                                               ; preds = %95, %91
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

100:                                              ; preds = %69
  %101 = icmp ult i64 %70, 4
  br i1 %101, label %211, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %63, align 8, !tbaa !60
  %104 = tail call i32 %103(ptr noundef %0, ptr noundef nonnull %72) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load ptr, ptr %64, align 8, !tbaa !62
  %108 = tail call i32 %107(ptr noundef nonnull %0, ptr noundef nonnull %72) #14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %205

110:                                              ; preds = %106, %102
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

111:                                              ; preds = %69, %69, %69
  store i32 11, ptr %5, align 4, !tbaa !14
  %112 = sub i64 %71, %7
  %113 = icmp eq i64 %112, 3
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %115, label %130 [
    i8 120, label %117
    i8 88, label %116
  ]

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ 1, %116 ], [ 0, %114 ]
  %119 = getelementptr inbounds i8, ptr %1, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !9
  switch i8 %120, label %130 [
    i8 109, label %122
    i8 77, label %121
  ]

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ 1, %121 ], [ %118, %117 ]
  %124 = getelementptr inbounds i8, ptr %1, i64 2
  %125 = load i8, ptr %124, align 1, !tbaa !9
  switch i8 %125, label %130 [
    i8 108, label %126
    i8 76, label %129
  ]

126:                                              ; preds = %122
  %127 = icmp eq i32 %123, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  store i32 12, ptr %5, align 4, !tbaa !14
  br label %130

129:                                              ; preds = %122, %126
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

130:                                              ; preds = %128, %111, %114, %117, %122
  %131 = phi i32 [ 12, %128 ], [ 11, %111 ], [ 11, %114 ], [ 11, %117 ], [ 11, %122 ]
  %132 = getelementptr inbounds i8, ptr %72, i64 1
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %6, %133
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %211

136:                                              ; preds = %130, %183
  %137 = phi i64 [ %186, %183 ], [ %134, %130 ]
  %138 = phi ptr [ %184, %183 ], [ %132, %130 ]
  %139 = load i8, ptr %138, align 1, !tbaa !9
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !9
  switch i8 %142, label %181 [
    i8 5, label %143
    i8 6, label %152
    i8 7, label %161
    i8 0, label %170
    i8 1, label %170
    i8 8, label %170
    i8 15, label %171
  ]

143:                                              ; preds = %136
  %144 = icmp eq i64 %137, 1
  br i1 %144, label %211, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr %67, align 8, !tbaa !54
  %147 = tail call i32 %146(ptr noundef nonnull %0, ptr noundef nonnull %138) #14
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  store ptr %138, ptr %3, align 8, !tbaa !5
  br label %211

150:                                              ; preds = %145
  %151 = getelementptr inbounds i8, ptr %138, i64 2
  br label %183

152:                                              ; preds = %136
  %153 = icmp ult i64 %137, 3
  br i1 %153, label %211, label %154

154:                                              ; preds = %152
  %155 = load ptr, ptr %65, align 8, !tbaa !57
  %156 = tail call i32 %155(ptr noundef nonnull %0, ptr noundef nonnull %138) #14
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  store ptr %138, ptr %3, align 8, !tbaa !5
  br label %211

159:                                              ; preds = %154
  %160 = getelementptr inbounds i8, ptr %138, i64 3
  br label %183

161:                                              ; preds = %136
  %162 = icmp ult i64 %137, 4
  br i1 %162, label %211, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr %63, align 8, !tbaa !60
  %165 = tail call i32 %164(ptr noundef nonnull %0, ptr noundef nonnull %138) #14
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  store ptr %138, ptr %3, align 8, !tbaa !5
  br label %211

168:                                              ; preds = %163
  %169 = getelementptr inbounds i8, ptr %138, i64 4
  br label %183

170:                                              ; preds = %136, %136, %136
  store ptr %138, ptr %3, align 8, !tbaa !5
  br label %211

171:                                              ; preds = %136
  %172 = getelementptr inbounds i8, ptr %138, i64 1
  %173 = ptrtoint ptr %172 to i64
  %174 = sub i64 %6, %173
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %211

176:                                              ; preds = %171
  %177 = load i8, ptr %172, align 1, !tbaa !9
  %178 = icmp eq i8 %177, 62
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, ptr %138, i64 2
  store ptr %180, ptr %3, align 8, !tbaa !5
  br label %211

181:                                              ; preds = %136
  %182 = getelementptr inbounds i8, ptr %138, i64 1
  br label %183

183:                                              ; preds = %176, %181, %168, %159, %150
  %184 = phi ptr [ %182, %181 ], [ %172, %176 ], [ %169, %168 ], [ %160, %159 ], [ %151, %150 ]
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %6, %185
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %136, label %211, !llvm.loop !86

188:                                              ; preds = %69
  %189 = call fastcc i32 @normal_checkPiTarget(ptr noundef nonnull %1, ptr noundef nonnull %72, ptr noundef nonnull %5)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store ptr %72, ptr %3, align 8, !tbaa !5
  br label %211

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, ptr %72, i64 1
  %194 = ptrtoint ptr %193 to i64
  %195 = sub i64 %6, %194
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  %198 = load i8, ptr %193, align 1, !tbaa !9
  %199 = icmp eq i8 %198, 62
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %72, i64 2
  store ptr %201, ptr %3, align 8, !tbaa !5
  %202 = load i32, ptr %5, align 4, !tbaa !14
  br label %211

203:                                              ; preds = %69, %197
  %204 = phi ptr [ %193, %197 ], [ %72, %69 ]
  store ptr %204, ptr %3, align 8, !tbaa !5
  br label %211

205:                                              ; preds = %106, %95, %84, %69, %69, %69, %69, %69
  %206 = phi i64 [ 1, %69 ], [ 1, %69 ], [ 1, %69 ], [ 1, %69 ], [ 1, %69 ], [ 2, %84 ], [ 3, %95 ], [ 4, %106 ]
  %207 = getelementptr inbounds i8, ptr %72, i64 %206
  %208 = ptrtoint ptr %207 to i64
  %209 = sub i64 %6, %208
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %69, label %211, !llvm.loop !87

211:                                              ; preds = %78, %89, %100, %205, %143, %152, %161, %171, %183, %56, %130, %192, %42, %29, %16, %4, %203, %200, %191, %179, %170, %167, %158, %149, %129, %110, %99, %88, %77, %55, %54, %41, %28, %15
  %212 = phi i32 [ 0, %55 ], [ 0, %54 ], [ 0, %203 ], [ %202, %200 ], [ 0, %191 ], [ %131, %179 ], [ 0, %170 ], [ 0, %167 ], [ 0, %158 ], [ 0, %149 ], [ 0, %129 ], [ 0, %110 ], [ 0, %99 ], [ 0, %88 ], [ 0, %77 ], [ 0, %41 ], [ 0, %28 ], [ 0, %15 ], [ -1, %4 ], [ -2, %16 ], [ -2, %29 ], [ -2, %42 ], [ -1, %192 ], [ -1, %130 ], [ -1, %56 ], [ -2, %143 ], [ -2, %152 ], [ -2, %161 ], [ -1, %171 ], [ -1, %183 ], [ -2, %78 ], [ -2, %89 ], [ -2, %100 ], [ -1, %205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %212
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @normal_scanPercent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %112

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %109 [
    i8 30, label %50
    i8 22, label %51
    i8 24, label %51
    i8 5, label %14
    i8 6, label %26
    i8 7, label %38
    i8 21, label %50
    i8 10, label %50
    i8 9, label %50
  ]

14:                                               ; preds = %9
  %15 = icmp eq i64 %7, 1
  br i1 %15, label %112, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call i32 %18(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %109

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = tail call i32 %23(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %109, label %51

26:                                               ; preds = %9
  %27 = icmp ult i64 %7, 3
  br i1 %27, label %112, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %109

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = tail call i32 %35(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %109, label %51

38:                                               ; preds = %9
  %39 = icmp ult i64 %7, 4
  br i1 %39, label %112, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = tail call i32 %42(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = tail call i32 %47(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %109, label %51

50:                                               ; preds = %9, %9, %9, %9
  br label %109

51:                                               ; preds = %45, %33, %21, %9, %9
  %52 = phi i64 [ 1, %9 ], [ 1, %9 ], [ 2, %21 ], [ 3, %33 ], [ 4, %45 ]
  %53 = getelementptr inbounds i8, ptr %1, i64 %52
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %5, %54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %59 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %60 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %61 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %62 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %63 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %64

64:                                               ; preds = %57, %103
  %65 = phi i64 [ %55, %57 ], [ %107, %103 ]
  %66 = phi ptr [ %53, %57 ], [ %105, %103 ]
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !9
  switch i8 %70, label %109 [
    i8 18, label %101
    i8 22, label %103
    i8 24, label %103
    i8 25, label %103
    i8 26, label %103
    i8 27, label %103
    i8 5, label %71
    i8 6, label %81
    i8 7, label %91
  ]

71:                                               ; preds = %64
  %72 = icmp eq i64 %65, 1
  br i1 %72, label %112, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %62, align 8, !tbaa !54
  %75 = tail call i32 %74(ptr noundef nonnull %0, ptr noundef nonnull %66) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load ptr, ptr %63, align 8, !tbaa !56
  %79 = tail call i32 %78(ptr noundef nonnull %0, ptr noundef nonnull %66) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %109, label %103

81:                                               ; preds = %64
  %82 = icmp ult i64 %65, 3
  br i1 %82, label %112, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %60, align 8, !tbaa !57
  %85 = tail call i32 %84(ptr noundef nonnull %0, ptr noundef nonnull %66) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = load ptr, ptr %61, align 8, !tbaa !59
  %89 = tail call i32 %88(ptr noundef nonnull %0, ptr noundef nonnull %66) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %109, label %103

91:                                               ; preds = %64
  %92 = icmp ult i64 %65, 4
  br i1 %92, label %112, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %58, align 8, !tbaa !60
  %95 = tail call i32 %94(ptr noundef %0, ptr noundef nonnull %66) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load ptr, ptr %59, align 8, !tbaa !62
  %99 = tail call i32 %98(ptr noundef nonnull %0, ptr noundef nonnull %66) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %103

101:                                              ; preds = %64
  %102 = getelementptr inbounds i8, ptr %66, i64 1
  br label %109

103:                                              ; preds = %97, %87, %77, %64, %64, %64, %64, %64
  %104 = phi i64 [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 2, %77 ], [ 3, %87 ], [ 4, %97 ]
  %105 = getelementptr inbounds i8, ptr %66, i64 %104
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %5, %106
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %64, label %112, !llvm.loop !88

109:                                              ; preds = %64, %93, %97, %83, %87, %73, %77, %9, %40, %45, %28, %33, %16, %21, %50, %101
  %110 = phi ptr [ %102, %101 ], [ %1, %50 ], [ %1, %21 ], [ %1, %16 ], [ %1, %33 ], [ %1, %28 ], [ %1, %45 ], [ %1, %40 ], [ %1, %9 ], [ %66, %77 ], [ %66, %73 ], [ %66, %87 ], [ %66, %83 ], [ %66, %97 ], [ %66, %93 ], [ %66, %64 ]
  %111 = phi i32 [ 28, %101 ], [ 22, %50 ], [ 0, %21 ], [ 0, %16 ], [ 0, %33 ], [ 0, %28 ], [ 0, %45 ], [ 0, %40 ], [ 0, %9 ], [ 0, %77 ], [ 0, %73 ], [ 0, %87 ], [ 0, %83 ], [ 0, %97 ], [ 0, %93 ], [ 0, %64 ]
  store ptr %110, ptr %3, align 8, !tbaa !5
  br label %112

112:                                              ; preds = %71, %81, %91, %103, %109, %51, %38, %26, %14, %4
  %113 = phi i32 [ -1, %4 ], [ -2, %14 ], [ -2, %26 ], [ -2, %38 ], [ -1, %51 ], [ %111, %109 ], [ -2, %71 ], [ -2, %81 ], [ -2, %91 ], [ -1, %103 ]
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @normal_scanPoundName(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %110

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %107 [
    i8 7, label %38
    i8 22, label %50
    i8 24, label %50
    i8 5, label %14
    i8 6, label %26
  ]

14:                                               ; preds = %9
  %15 = icmp eq i64 %7, 1
  br i1 %15, label %110, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call i32 %18(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = tail call i32 %23(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %107, label %50

26:                                               ; preds = %9
  %27 = icmp ult i64 %7, 3
  br i1 %27, label %110, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = tail call i32 %35(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %107, label %50

38:                                               ; preds = %9
  %39 = icmp ult i64 %7, 4
  br i1 %39, label %110, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = tail call i32 %42(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = tail call i32 %47(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %107, label %50

50:                                               ; preds = %45, %33, %21, %9, %9
  %51 = phi i64 [ 1, %9 ], [ 1, %9 ], [ 2, %21 ], [ 3, %33 ], [ 4, %45 ]
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %5, %53
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %58 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %60 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %61 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %62 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %63

63:                                               ; preds = %56, %100
  %64 = phi i64 [ %54, %56 ], [ %104, %100 ]
  %65 = phi ptr [ %52, %56 ], [ %102, %100 ]
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !9
  switch i8 %69, label %107 [
    i8 36, label %106
    i8 22, label %100
    i8 24, label %100
    i8 25, label %100
    i8 26, label %100
    i8 27, label %100
    i8 5, label %70
    i8 6, label %80
    i8 7, label %90
    i8 9, label %106
    i8 10, label %106
    i8 21, label %106
    i8 32, label %106
    i8 11, label %106
    i8 30, label %106
  ]

70:                                               ; preds = %63
  %71 = icmp eq i64 %64, 1
  br i1 %71, label %110, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %61, align 8, !tbaa !54
  %74 = tail call i32 %73(ptr noundef nonnull %0, ptr noundef nonnull %65) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load ptr, ptr %62, align 8, !tbaa !56
  %78 = tail call i32 %77(ptr noundef nonnull %0, ptr noundef nonnull %65) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %107, label %100

80:                                               ; preds = %63
  %81 = icmp ult i64 %64, 3
  br i1 %81, label %110, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %59, align 8, !tbaa !57
  %84 = tail call i32 %83(ptr noundef nonnull %0, ptr noundef nonnull %65) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = load ptr, ptr %60, align 8, !tbaa !59
  %88 = tail call i32 %87(ptr noundef nonnull %0, ptr noundef nonnull %65) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %100

90:                                               ; preds = %63
  %91 = icmp ult i64 %64, 4
  br i1 %91, label %110, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr %57, align 8, !tbaa !60
  %94 = tail call i32 %93(ptr noundef %0, ptr noundef nonnull %65) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load ptr, ptr %58, align 8, !tbaa !62
  %98 = tail call i32 %97(ptr noundef nonnull %0, ptr noundef nonnull %65) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96, %86, %76, %63, %63, %63, %63, %63
  %101 = phi i64 [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 1, %63 ], [ 2, %76 ], [ 3, %86 ], [ 4, %96 ]
  %102 = getelementptr inbounds i8, ptr %65, i64 %101
  %103 = ptrtoint ptr %102 to i64
  %104 = sub i64 %5, %103
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %63, label %110, !llvm.loop !89

106:                                              ; preds = %63, %63, %63, %63, %63, %63, %63
  br label %107

107:                                              ; preds = %63, %92, %96, %82, %86, %72, %76, %106, %9, %40, %45, %28, %33, %16, %21
  %108 = phi ptr [ %1, %21 ], [ %1, %16 ], [ %1, %33 ], [ %1, %28 ], [ %1, %45 ], [ %1, %40 ], [ %1, %9 ], [ %65, %106 ], [ %65, %76 ], [ %65, %72 ], [ %65, %86 ], [ %65, %82 ], [ %65, %96 ], [ %65, %92 ], [ %65, %63 ]
  %109 = phi i32 [ 0, %21 ], [ 0, %16 ], [ 0, %33 ], [ 0, %28 ], [ 0, %45 ], [ 0, %40 ], [ 0, %9 ], [ 20, %106 ], [ 0, %76 ], [ 0, %72 ], [ 0, %86 ], [ 0, %82 ], [ 0, %96 ], [ 0, %92 ], [ 0, %63 ]
  store ptr %108, ptr %3, align 8, !tbaa !5
  br label %110

110:                                              ; preds = %70, %80, %90, %100, %107, %50, %38, %26, %14, %4
  %111 = phi i32 [ -1, %4 ], [ -2, %14 ], [ -2, %26 ], [ -2, %38 ], [ -20, %50 ], [ %109, %107 ], [ -2, %70 ], [ -2, %80 ], [ -2, %90 ], [ -20, %100 ]
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normal_scanComment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %81

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 45
  br i1 %11, label %12, label %78

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %5, %14
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  br label %21

21:                                               ; preds = %17, %73
  %22 = phi i64 [ %15, %17 ], [ %76, %73 ]
  %23 = phi ptr [ %13, %17 ], [ %74, %73 ]
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !9
  switch i8 %27, label %71 [
    i8 5, label %28
    i8 6, label %36
    i8 7, label %44
    i8 0, label %78
    i8 1, label %78
    i8 8, label %78
    i8 27, label %52
  ]

28:                                               ; preds = %21
  %29 = icmp eq i64 %22, 1
  br i1 %29, label %81, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %20, align 8, !tbaa !54
  %32 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef nonnull %23) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %23, i64 2
  br label %73

36:                                               ; preds = %21
  %37 = icmp ult i64 %22, 3
  br i1 %37, label %81, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %19, align 8, !tbaa !57
  %40 = tail call i32 %39(ptr noundef nonnull %0, ptr noundef nonnull %23) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %23, i64 3
  br label %73

44:                                               ; preds = %21
  %45 = icmp ult i64 %22, 4
  br i1 %45, label %81, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %18, align 8, !tbaa !60
  %48 = tail call i32 %47(ptr noundef nonnull %0, ptr noundef nonnull %23) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %23, i64 4
  br label %73

52:                                               ; preds = %21
  %53 = getelementptr inbounds i8, ptr %23, i64 1
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %5, %54
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load i8, ptr %53, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 45
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %23, i64 2
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %5, %62
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = load i8, ptr %61, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 62
  %68 = getelementptr inbounds i8, ptr %23, i64 3
  %69 = select i1 %67, ptr %68, ptr %61
  %70 = select i1 %67, i32 13, i32 0
  br label %78

71:                                               ; preds = %21
  %72 = getelementptr inbounds i8, ptr %23, i64 1
  br label %73

73:                                               ; preds = %57, %71, %50, %42, %34
  %74 = phi ptr [ %72, %71 ], [ %53, %57 ], [ %51, %50 ], [ %43, %42 ], [ %35, %34 ]
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %5, %75
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %21, label %81, !llvm.loop !90

78:                                               ; preds = %21, %21, %21, %46, %38, %30, %65, %9
  %79 = phi ptr [ %1, %9 ], [ %69, %65 ], [ %23, %30 ], [ %23, %38 ], [ %23, %46 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ]
  %80 = phi i32 [ 0, %9 ], [ %70, %65 ], [ 0, %30 ], [ 0, %38 ], [ 0, %46 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ]
  store ptr %79, ptr %3, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %28, %36, %44, %52, %73, %78, %12, %4, %60
  %82 = phi i32 [ -1, %60 ], [ -1, %4 ], [ -1, %12 ], [ %80, %78 ], [ -2, %28 ], [ -2, %36 ], [ -2, %44 ], [ -1, %52 ], [ -1, %73 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @normal_checkPiTarget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  store i32 11, ptr %2, align 4, !tbaa !14
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq i64 %6, 3
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1, !tbaa !9
  switch i8 %9, label %24 [
    i8 120, label %11
    i8 88, label %10
  ]

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ 1, %10 ], [ 0, %8 ]
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %24 [
    i8 109, label %16
    i8 77, label %15
  ]

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 1, %15 ], [ %12, %11 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 2
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %24 [
    i8 108, label %21
    i8 76, label %20
  ]

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i32 12, ptr %2, align 4, !tbaa !14
  br label %24

24:                                               ; preds = %20, %21, %16, %11, %8, %3, %23
  %25 = phi i32 [ 1, %23 ], [ 1, %3 ], [ 1, %8 ], [ 1, %11 ], [ 1, %16 ], [ 0, %21 ], [ 0, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @normal_scanRef(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %168

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %165 [
    i8 19, label %50
    i8 22, label %107
    i8 24, label %107
    i8 5, label %14
    i8 6, label %26
    i8 7, label %38
  ]

14:                                               ; preds = %9
  %15 = icmp eq i64 %7, 1
  br i1 %15, label %168, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call i32 %18(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %165

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = tail call i32 %23(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %165, label %107

26:                                               ; preds = %9
  %27 = icmp ult i64 %7, 3
  br i1 %27, label %168, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = tail call i32 %30(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %165

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = tail call i32 %35(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %165, label %107

38:                                               ; preds = %9
  %39 = icmp ult i64 %7, 4
  br i1 %39, label %168, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = tail call i32 %42(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %165

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = tail call i32 %47(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %165, label %107

50:                                               ; preds = %9
  %51 = getelementptr inbounds i8, ptr %1, i64 1
  %52 = ptrtoint ptr %51 to i64
  %53 = sub i64 %5, %52
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %168

55:                                               ; preds = %50
  %56 = load i8, ptr %51, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 120
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %1, i64 2
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %5, %60
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %168

63:                                               ; preds = %58
  %64 = load i8, ptr %59, align 1, !tbaa !9
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = and i8 %67, -2
  %69 = icmp eq i8 %68, 24
  br i1 %69, label %70, label %165

70:                                               ; preds = %63
  %71 = getelementptr inbounds i8, ptr %1, i64 3
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %5, %72
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %168

75:                                               ; preds = %70, %84
  %76 = phi ptr [ %85, %84 ], [ %71, %70 ]
  %77 = phi ptr [ %76, %84 ], [ %59, %70 ]
  %78 = load i8, ptr %76, align 1, !tbaa !9
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !9
  switch i8 %81, label %165 [
    i8 25, label %84
    i8 24, label %84
    i8 18, label %82
  ]

82:                                               ; preds = %75
  %83 = getelementptr inbounds i8, ptr %77, i64 2
  br label %165

84:                                               ; preds = %75, %75
  %85 = getelementptr inbounds i8, ptr %76, i64 1
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %5, %86
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %75, label %168, !llvm.loop !91

89:                                               ; preds = %55
  %90 = zext i8 %56 to i64
  %91 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = icmp eq i8 %92, 25
  br i1 %93, label %94, label %165

94:                                               ; preds = %89, %100
  %95 = phi ptr [ %96, %100 ], [ %51, %89 ]
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  %97 = ptrtoint ptr %96 to i64
  %98 = sub i64 %5, %97
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %168

100:                                              ; preds = %94
  %101 = load i8, ptr %96, align 1, !tbaa !9
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !9
  switch i8 %104, label %165 [
    i8 25, label %94
    i8 18, label %105
  ], !llvm.loop !92

105:                                              ; preds = %100
  %106 = getelementptr inbounds i8, ptr %95, i64 2
  br label %165

107:                                              ; preds = %45, %33, %21, %9, %9
  %108 = phi i64 [ 1, %9 ], [ 1, %9 ], [ 2, %21 ], [ 3, %33 ], [ 4, %45 ]
  %109 = getelementptr inbounds i8, ptr %1, i64 %108
  %110 = ptrtoint ptr %109 to i64
  %111 = sub i64 %5, %110
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %168

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %115 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %116 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %117 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %118 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %119 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %120

120:                                              ; preds = %113, %159
  %121 = phi i64 [ %111, %113 ], [ %163, %159 ]
  %122 = phi ptr [ %109, %113 ], [ %161, %159 ]
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !9
  switch i8 %126, label %165 [
    i8 18, label %157
    i8 22, label %159
    i8 24, label %159
    i8 25, label %159
    i8 26, label %159
    i8 27, label %159
    i8 5, label %127
    i8 6, label %137
    i8 7, label %147
  ]

127:                                              ; preds = %120
  %128 = icmp eq i64 %121, 1
  br i1 %128, label %168, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr %118, align 8, !tbaa !54
  %131 = tail call i32 %130(ptr noundef nonnull %0, ptr noundef nonnull %122) #14
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %129
  %134 = load ptr, ptr %119, align 8, !tbaa !56
  %135 = tail call i32 %134(ptr noundef nonnull %0, ptr noundef nonnull %122) #14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %165, label %159

137:                                              ; preds = %120
  %138 = icmp ult i64 %121, 3
  br i1 %138, label %168, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr %116, align 8, !tbaa !57
  %141 = tail call i32 %140(ptr noundef nonnull %0, ptr noundef nonnull %122) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load ptr, ptr %117, align 8, !tbaa !59
  %145 = tail call i32 %144(ptr noundef nonnull %0, ptr noundef nonnull %122) #14
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %165, label %159

147:                                              ; preds = %120
  %148 = icmp ult i64 %121, 4
  br i1 %148, label %168, label %149

149:                                              ; preds = %147
  %150 = load ptr, ptr %114, align 8, !tbaa !60
  %151 = tail call i32 %150(ptr noundef %0, ptr noundef nonnull %122) #14
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load ptr, ptr %115, align 8, !tbaa !62
  %155 = tail call i32 %154(ptr noundef nonnull %0, ptr noundef nonnull %122) #14
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %165, label %159

157:                                              ; preds = %120
  %158 = getelementptr inbounds i8, ptr %122, i64 1
  br label %165

159:                                              ; preds = %153, %143, %133, %120, %120, %120, %120, %120
  %160 = phi i64 [ 1, %120 ], [ 1, %120 ], [ 1, %120 ], [ 1, %120 ], [ 1, %120 ], [ 2, %133 ], [ 3, %143 ], [ 4, %153 ]
  %161 = getelementptr inbounds i8, ptr %122, i64 %160
  %162 = ptrtoint ptr %161 to i64
  %163 = sub i64 %5, %162
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %120, label %168, !llvm.loop !93

165:                                              ; preds = %120, %149, %153, %139, %143, %129, %133, %100, %75, %9, %63, %82, %89, %105, %40, %45, %28, %33, %16, %21, %157
  %166 = phi ptr [ %158, %157 ], [ %1, %21 ], [ %1, %16 ], [ %1, %33 ], [ %1, %28 ], [ %1, %45 ], [ %1, %40 ], [ %106, %105 ], [ %83, %82 ], [ %59, %63 ], [ %51, %89 ], [ %1, %9 ], [ %76, %75 ], [ %96, %100 ], [ %122, %133 ], [ %122, %129 ], [ %122, %143 ], [ %122, %139 ], [ %122, %153 ], [ %122, %149 ], [ %122, %120 ]
  %167 = phi i32 [ 9, %157 ], [ 0, %21 ], [ 0, %16 ], [ 0, %33 ], [ 0, %28 ], [ 0, %45 ], [ 0, %40 ], [ 10, %105 ], [ 10, %82 ], [ 0, %63 ], [ 0, %89 ], [ 0, %9 ], [ 0, %75 ], [ 0, %100 ], [ 0, %133 ], [ 0, %129 ], [ 0, %143 ], [ 0, %139 ], [ 0, %153 ], [ 0, %149 ], [ 0, %120 ]
  store ptr %166, ptr %3, align 8, !tbaa !5
  br label %168

168:                                              ; preds = %127, %137, %147, %159, %94, %84, %165, %107, %70, %58, %50, %38, %26, %14, %4
  %169 = phi i32 [ -1, %4 ], [ -2, %14 ], [ -2, %26 ], [ -2, %38 ], [ -1, %50 ], [ -1, %58 ], [ -1, %70 ], [ -1, %107 ], [ %167, %165 ], [ -1, %84 ], [ -1, %94 ], [ -2, %127 ], [ -2, %137 ], [ -2, %147 ], [ -1, %159 ]
  ret i32 %169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @normal_scanCdataSection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 5
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i64 6
  %10 = load i8, ptr %0, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 67
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 68
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 65
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 84
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 65
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 91
  %32 = select i1 %31, ptr %9, ptr %29
  %33 = select i1 %31, i32 8, i32 0
  br label %34

34:                                               ; preds = %28, %8, %12, %16, %20, %24
  %35 = phi ptr [ %0, %8 ], [ %13, %12 ], [ %17, %16 ], [ %21, %20 ], [ %25, %24 ], [ %32, %28 ]
  %36 = phi i32 [ 0, %8 ], [ 0, %12 ], [ 0, %16 ], [ 0, %20 ], [ 0, %24 ], [ %33, %28 ]
  store ptr %35, ptr %2, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ -1, %3 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normal_scanAtts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 {
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !5
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %308

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 10
  %12 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %10, %299
  %21 = phi i64 [ %8, %10 ], [ %303, %299 ]
  %22 = phi ptr [ %1, %10 ], [ %300, %299 ]
  %23 = phi i32 [ 0, %10 ], [ %301, %299 ]
  %24 = load i8, ptr %22, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !9
  switch i8 %27, label %305 [
    i8 14, label %133
    i8 22, label %28
    i8 24, label %28
    i8 25, label %28
    i8 26, label %28
    i8 27, label %28
    i8 5, label %30
    i8 6, label %42
    i8 7, label %54
    i8 23, label %66
    i8 21, label %116
    i8 9, label %116
    i8 10, label %116
  ]

28:                                               ; preds = %20, %20, %20, %20, %20
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %29, ptr %5, align 8, !tbaa !5
  br label %299

30:                                               ; preds = %20
  %31 = icmp eq i64 %21, 1
  br i1 %31, label %308, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %13, align 8, !tbaa !54
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %305

36:                                               ; preds = %32
  %37 = load ptr, ptr %19, align 8, !tbaa !56
  %38 = tail call i32 %37(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %305, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %22, i64 2
  store ptr %41, ptr %5, align 8, !tbaa !5
  br label %299

42:                                               ; preds = %20
  %43 = icmp ult i64 %21, 3
  br i1 %43, label %308, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %12, align 8, !tbaa !57
  %46 = tail call i32 %45(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %305

48:                                               ; preds = %44
  %49 = load ptr, ptr %18, align 8, !tbaa !59
  %50 = tail call i32 %49(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %305, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %22, i64 3
  store ptr %53, ptr %5, align 8, !tbaa !5
  br label %299

54:                                               ; preds = %20
  %55 = icmp ult i64 %21, 4
  br i1 %55, label %308, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %11, align 8, !tbaa !60
  %58 = tail call i32 %57(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %305

60:                                               ; preds = %56
  %61 = load ptr, ptr %17, align 8, !tbaa !62
  %62 = tail call i32 %61(ptr noundef nonnull %0, ptr noundef nonnull %22) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %305, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %22, i64 4
  store ptr %65, ptr %5, align 8, !tbaa !5
  br label %299

66:                                               ; preds = %20
  %67 = icmp eq i32 %23, 0
  br i1 %67, label %68, label %305

68:                                               ; preds = %66
  %69 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %69, ptr %5, align 8, !tbaa !5
  %70 = ptrtoint ptr %69 to i64
  %71 = sub i64 %6, %70
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %308

73:                                               ; preds = %68
  %74 = load i8, ptr %69, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  switch i8 %77, label %305 [
    i8 7, label %104
    i8 22, label %78
    i8 24, label %78
    i8 5, label %80
    i8 6, label %92
  ]

78:                                               ; preds = %73, %73
  %79 = getelementptr inbounds i8, ptr %22, i64 2
  store ptr %79, ptr %5, align 8, !tbaa !5
  br label %299

80:                                               ; preds = %73
  %81 = icmp eq i64 %71, 1
  br i1 %81, label %308, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %13, align 8, !tbaa !54
  %84 = tail call i32 %83(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %305

86:                                               ; preds = %82
  %87 = load ptr, ptr %16, align 8, !tbaa !55
  %88 = tail call i32 %87(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %305, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %22, i64 3
  store ptr %91, ptr %5, align 8, !tbaa !5
  br label %299

92:                                               ; preds = %73
  %93 = icmp ult i64 %71, 3
  br i1 %93, label %308, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %12, align 8, !tbaa !57
  %96 = tail call i32 %95(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %305

98:                                               ; preds = %94
  %99 = load ptr, ptr %15, align 8, !tbaa !58
  %100 = tail call i32 %99(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %305, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %22, i64 4
  store ptr %103, ptr %5, align 8, !tbaa !5
  br label %299

104:                                              ; preds = %73
  %105 = icmp ult i64 %71, 4
  br i1 %105, label %308, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %11, align 8, !tbaa !60
  %108 = tail call i32 %107(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %305

110:                                              ; preds = %106
  %111 = load ptr, ptr %14, align 8, !tbaa !61
  %112 = tail call i32 %111(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %305, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds i8, ptr %22, i64 5
  store ptr %115, ptr %5, align 8, !tbaa !5
  br label %299

116:                                              ; preds = %20, %20, %20
  %117 = getelementptr inbounds i8, ptr %22, i64 1
  %118 = ptrtoint ptr %117 to i64
  %119 = sub i64 %6, %118
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %308

121:                                              ; preds = %116, %127
  %122 = phi ptr [ %128, %127 ], [ %117, %116 ]
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !9
  switch i8 %126, label %305 [
    i8 14, label %132
    i8 21, label %127
    i8 10, label %127
    i8 9, label %127
  ]

127:                                              ; preds = %121, %121, %121
  %128 = getelementptr inbounds i8, ptr %122, i64 1
  %129 = ptrtoint ptr %128 to i64
  %130 = sub i64 %6, %129
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %121, label %308

132:                                              ; preds = %121
  store ptr %122, ptr %5, align 8, !tbaa !5
  br label %133

133:                                              ; preds = %20, %132
  %134 = phi ptr [ %122, %132 ], [ %22, %20 ]
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  %136 = ptrtoint ptr %135 to i64
  %137 = sub i64 %6, %136
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %308

139:                                              ; preds = %133
  %140 = load i8, ptr %135, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = and i8 %143, -2
  %145 = icmp eq i8 %144, 12
  br i1 %145, label %161, label %153

146:                                              ; preds = %156
  %147 = load i8, ptr %157, align 1, !tbaa !9
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !9
  %151 = and i8 %150, -2
  %152 = icmp eq i8 %151, 12
  br i1 %152, label %161, label %153

153:                                              ; preds = %139, %146
  %154 = phi i8 [ %150, %146 ], [ %143, %139 ]
  %155 = phi ptr [ %157, %146 ], [ %135, %139 ]
  switch i8 %154, label %305 [
    i8 21, label %156
    i8 10, label %156
    i8 9, label %156
  ]

156:                                              ; preds = %153, %153, %153
  %157 = getelementptr inbounds i8, ptr %155, i64 1
  %158 = ptrtoint ptr %157 to i64
  %159 = sub i64 %6, %158
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %146, label %308

161:                                              ; preds = %146, %139
  %162 = phi ptr [ %134, %139 ], [ %155, %146 ]
  %163 = phi i8 [ %143, %139 ], [ %150, %146 ]
  %164 = getelementptr inbounds i8, ptr %162, i64 2
  store ptr %164, ptr %5, align 8, !tbaa !5
  %165 = ptrtoint ptr %164 to i64
  %166 = sub i64 %6, %165
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %308

168:                                              ; preds = %161, %213
  %169 = phi i64 [ %216, %213 ], [ %166, %161 ]
  %170 = phi ptr [ %214, %213 ], [ %164, %161 ]
  %171 = load i8, ptr %170, align 1, !tbaa !9
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !9
  %175 = icmp eq i8 %174, %163
  br i1 %175, label %218, label %176

176:                                              ; preds = %168
  switch i8 %174, label %211 [
    i8 5, label %177
    i8 6, label %185
    i8 7, label %193
    i8 0, label %305
    i8 1, label %305
    i8 8, label %305
    i8 3, label %201
    i8 2, label %305
  ]

177:                                              ; preds = %176
  %178 = icmp eq i64 %169, 1
  br i1 %178, label %308, label %179

179:                                              ; preds = %177
  %180 = load ptr, ptr %13, align 8, !tbaa !54
  %181 = tail call i32 %180(ptr noundef nonnull %0, ptr noundef nonnull %170) #14
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %305

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %170, i64 2
  store ptr %184, ptr %5, align 8, !tbaa !5
  br label %213

185:                                              ; preds = %176
  %186 = icmp ult i64 %169, 3
  br i1 %186, label %308, label %187

187:                                              ; preds = %185
  %188 = load ptr, ptr %12, align 8, !tbaa !57
  %189 = tail call i32 %188(ptr noundef nonnull %0, ptr noundef nonnull %170) #14
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %305

191:                                              ; preds = %187
  %192 = getelementptr inbounds i8, ptr %170, i64 3
  store ptr %192, ptr %5, align 8, !tbaa !5
  br label %213

193:                                              ; preds = %176
  %194 = icmp ult i64 %169, 4
  br i1 %194, label %308, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr %11, align 8, !tbaa !60
  %197 = tail call i32 %196(ptr noundef nonnull %0, ptr noundef nonnull %170) #14
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %305

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %170, i64 4
  store ptr %200, ptr %5, align 8, !tbaa !5
  br label %213

201:                                              ; preds = %176
  %202 = getelementptr inbounds i8, ptr %170, i64 1
  %203 = call fastcc i32 @normal_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %202, ptr noundef %2, ptr noundef nonnull %5), !range !69
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load ptr, ptr %5, align 8, !tbaa !5
  br label %213

207:                                              ; preds = %201
  %208 = icmp eq i32 %203, 0
  br i1 %208, label %209, label %308

209:                                              ; preds = %207
  %210 = load ptr, ptr %5, align 8, !tbaa !5
  br label %305

211:                                              ; preds = %176
  %212 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %212, ptr %5, align 8, !tbaa !5
  br label %213

213:                                              ; preds = %205, %183, %191, %199, %211
  %214 = phi ptr [ %206, %205 ], [ %184, %183 ], [ %192, %191 ], [ %200, %199 ], [ %212, %211 ]
  %215 = ptrtoint ptr %214 to i64
  %216 = sub i64 %6, %215
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %168, label %308

218:                                              ; preds = %168
  %219 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %219, ptr %5, align 8, !tbaa !5
  %220 = ptrtoint ptr %219 to i64
  %221 = sub i64 %6, %220
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %308

223:                                              ; preds = %218
  %224 = load i8, ptr %219, align 1, !tbaa !9
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !9
  switch i8 %227, label %305 [
    i8 21, label %228
    i8 9, label %228
    i8 10, label %228
    i8 17, label %287
    i8 11, label %284
  ]

228:                                              ; preds = %223, %223, %223
  %229 = getelementptr inbounds i8, ptr %170, i64 2
  %230 = ptrtoint ptr %229 to i64
  %231 = sub i64 %6, %230
  %232 = icmp sgt i64 %231, 0
  br i1 %232, label %233, label %308

233:                                              ; preds = %228, %279
  %234 = phi i64 [ %282, %279 ], [ %231, %228 ]
  %235 = phi ptr [ %280, %279 ], [ %229, %228 ]
  %236 = phi ptr [ %235, %279 ], [ %219, %228 ]
  %237 = load i8, ptr %235, align 1, !tbaa !9
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !9
  switch i8 %240, label %305 [
    i8 17, label %287
    i8 22, label %241
    i8 24, label %241
    i8 5, label %243
    i8 6, label %255
    i8 7, label %267
    i8 21, label %279
    i8 9, label %279
    i8 10, label %279
    i8 11, label %284
  ]

241:                                              ; preds = %233, %233
  %242 = getelementptr inbounds i8, ptr %236, i64 2
  store ptr %242, ptr %5, align 8, !tbaa !5
  br label %299

243:                                              ; preds = %233
  %244 = icmp eq i64 %234, 1
  br i1 %244, label %308, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr %13, align 8, !tbaa !54
  %247 = tail call i32 %246(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %305

249:                                              ; preds = %245
  %250 = load ptr, ptr %16, align 8, !tbaa !55
  %251 = tail call i32 %250(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %305, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %236, i64 3
  store ptr %254, ptr %5, align 8, !tbaa !5
  br label %299

255:                                              ; preds = %233
  %256 = icmp ult i64 %234, 3
  br i1 %256, label %308, label %257

257:                                              ; preds = %255
  %258 = load ptr, ptr %12, align 8, !tbaa !57
  %259 = tail call i32 %258(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %305

261:                                              ; preds = %257
  %262 = load ptr, ptr %15, align 8, !tbaa !58
  %263 = tail call i32 %262(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %305, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds i8, ptr %236, i64 4
  store ptr %266, ptr %5, align 8, !tbaa !5
  br label %299

267:                                              ; preds = %233
  %268 = icmp ult i64 %234, 4
  br i1 %268, label %308, label %269

269:                                              ; preds = %267
  %270 = load ptr, ptr %11, align 8, !tbaa !60
  %271 = tail call i32 %270(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %305

273:                                              ; preds = %269
  %274 = load ptr, ptr %14, align 8, !tbaa !61
  %275 = tail call i32 %274(ptr noundef nonnull %0, ptr noundef nonnull %235) #14
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %305, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds i8, ptr %236, i64 5
  store ptr %278, ptr %5, align 8, !tbaa !5
  br label %299

279:                                              ; preds = %233, %233, %233
  %280 = getelementptr inbounds i8, ptr %235, i64 1
  %281 = ptrtoint ptr %280 to i64
  %282 = sub i64 %6, %281
  %283 = icmp sgt i64 %282, 0
  br i1 %283, label %233, label %308

284:                                              ; preds = %223, %233
  %285 = phi ptr [ %235, %233 ], [ %219, %223 ]
  %286 = getelementptr inbounds i8, ptr %285, i64 1
  br label %305

287:                                              ; preds = %223, %233
  %288 = phi ptr [ %235, %233 ], [ %219, %223 ]
  %289 = getelementptr inbounds i8, ptr %288, i64 1
  store ptr %289, ptr %5, align 8, !tbaa !5
  %290 = ptrtoint ptr %289 to i64
  %291 = sub i64 %6, %290
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %287
  %294 = load i8, ptr %289, align 1, !tbaa !9
  %295 = icmp eq i8 %294, 62
  %296 = getelementptr inbounds i8, ptr %288, i64 2
  %297 = select i1 %295, ptr %296, ptr %289
  %298 = select i1 %295, i32 3, i32 0
  br label %305

299:                                              ; preds = %241, %253, %265, %277, %78, %90, %102, %114, %64, %52, %40, %28
  %300 = phi ptr [ %115, %114 ], [ %103, %102 ], [ %91, %90 ], [ %79, %78 ], [ %65, %64 ], [ %53, %52 ], [ %41, %40 ], [ %29, %28 ], [ %278, %277 ], [ %266, %265 ], [ %254, %253 ], [ %242, %241 ]
  %301 = phi i32 [ 1, %114 ], [ 1, %102 ], [ 1, %90 ], [ 1, %78 ], [ %23, %64 ], [ %23, %52 ], [ %23, %40 ], [ %23, %28 ], [ 0, %277 ], [ 0, %265 ], [ 0, %253 ], [ 0, %241 ]
  %302 = ptrtoint ptr %300 to i64
  %303 = sub i64 %6, %302
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %20, label %308, !llvm.loop !94

305:                                              ; preds = %20, %269, %273, %257, %261, %245, %249, %223, %73, %106, %110, %94, %98, %82, %86, %66, %56, %60, %44, %48, %32, %36, %121, %153, %176, %176, %176, %176, %195, %187, %179, %233, %293, %284, %209
  %306 = phi ptr [ %210, %209 ], [ %286, %284 ], [ %297, %293 ], [ %235, %233 ], [ %170, %179 ], [ %170, %187 ], [ %170, %195 ], [ %170, %176 ], [ %170, %176 ], [ %170, %176 ], [ %170, %176 ], [ %155, %153 ], [ %122, %121 ], [ %22, %36 ], [ %22, %32 ], [ %22, %48 ], [ %22, %44 ], [ %22, %60 ], [ %22, %56 ], [ %22, %66 ], [ %69, %86 ], [ %69, %82 ], [ %69, %98 ], [ %69, %94 ], [ %69, %110 ], [ %69, %106 ], [ %69, %73 ], [ %219, %223 ], [ %235, %249 ], [ %235, %245 ], [ %235, %261 ], [ %235, %257 ], [ %235, %273 ], [ %235, %269 ], [ %22, %20 ]
  %307 = phi i32 [ 0, %209 ], [ 1, %284 ], [ %298, %293 ], [ 0, %233 ], [ 0, %179 ], [ 0, %187 ], [ 0, %195 ], [ 0, %176 ], [ 0, %176 ], [ 0, %176 ], [ 0, %176 ], [ 0, %153 ], [ 0, %121 ], [ 0, %36 ], [ 0, %32 ], [ 0, %48 ], [ 0, %44 ], [ 0, %60 ], [ 0, %56 ], [ 0, %66 ], [ 0, %86 ], [ 0, %82 ], [ 0, %98 ], [ 0, %94 ], [ 0, %110 ], [ 0, %106 ], [ 0, %73 ], [ 0, %223 ], [ 0, %249 ], [ 0, %245 ], [ 0, %261 ], [ 0, %257 ], [ 0, %273 ], [ 0, %269 ], [ 0, %20 ]
  store ptr %306, ptr %3, align 8, !tbaa !5
  br label %308

308:                                              ; preds = %30, %42, %54, %68, %80, %92, %104, %299, %218, %243, %255, %267, %161, %116, %133, %228, %127, %156, %213, %177, %185, %193, %279, %305, %4, %207, %287
  %309 = phi i32 [ -1, %287 ], [ %203, %207 ], [ -1, %4 ], [ %307, %305 ], [ -1, %279 ], [ -1, %213 ], [ -2, %177 ], [ -2, %185 ], [ -2, %193 ], [ -1, %156 ], [ -1, %127 ], [ -1, %228 ], [ -1, %133 ], [ -1, %116 ], [ -1, %161 ], [ -2, %30 ], [ -2, %42 ], [ -2, %54 ], [ -1, %68 ], [ -2, %80 ], [ -2, %92 ], [ -2, %104 ], [ -1, %299 ], [ -1, %218 ], [ -2, %243 ], [ -2, %255 ], [ -2, %267 ]
  ret i32 %309
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @utf8_toUtf8(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = ptrtoint ptr %4 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %9, %13
  %15 = getelementptr inbounds i8, ptr %6, i64 %13
  %16 = select i1 %14, ptr %15, ptr %2
  %17 = icmp ugt ptr %16, %6
  br i1 %17, label %18, label %57

18:                                               ; preds = %5
  %19 = ptrtoint ptr %16 to i64
  %20 = sub i64 %8, %19
  %21 = getelementptr i8, ptr %16, i64 %20
  br label %22

22:                                               ; preds = %53, %18
  %23 = phi ptr [ %25, %53 ], [ %16, %18 ]
  %24 = phi i64 [ %55, %53 ], [ 0, %18 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 248
  %29 = icmp eq i32 %28, 240
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = add i64 %24, -3
  %32 = icmp ult i64 %31, -4
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = getelementptr inbounds i8, ptr %23, i64 3
  br label %57

35:                                               ; preds = %22
  %36 = and i32 %27, 240
  %37 = icmp eq i32 %36, 224
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = add i64 %24, -2
  %40 = icmp ult i64 %39, -3
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %23, i64 2
  br label %57

43:                                               ; preds = %35
  %44 = and i32 %27, 224
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = add i64 %24, -1
  %48 = icmp ult i64 %47, -2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %23, i64 1
  br label %57

51:                                               ; preds = %43
  %52 = icmp sgt i8 %26, -1
  br i1 %52, label %57, label %53

53:                                               ; preds = %51, %46, %38, %30
  %54 = phi i64 [ %24, %51 ], [ 0, %46 ], [ 0, %38 ], [ 0, %30 ]
  %55 = add i64 %54, 1
  %56 = icmp ugt ptr %25, %6
  br i1 %56, label %22, label %57, !llvm.loop !10

57:                                               ; preds = %51, %53, %5, %33, %41, %49
  %58 = phi ptr [ %34, %33 ], [ %42, %41 ], [ %50, %49 ], [ %16, %5 ], [ %23, %51 ], [ %21, %53 ]
  %59 = icmp ult ptr %58, %16
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %60, %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %6, i64 %61, i1 false)
  %62 = load ptr, ptr %1, align 8, !tbaa !5
  %63 = getelementptr inbounds i8, ptr %62, i64 %61
  store ptr %63, ptr %1, align 8, !tbaa !5
  %64 = load ptr, ptr %3, align 8, !tbaa !5
  %65 = getelementptr inbounds i8, ptr %64, i64 %61
  store ptr %65, ptr %3, align 8, !tbaa !5
  %66 = zext i1 %59 to i32
  %67 = select i1 %14, i32 2, i32 %66
  ret i32 %67
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @utf8_toUtf16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %3, align 8, !tbaa !5
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = icmp ult ptr %7, %2
  %9 = icmp ult ptr %6, %4
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %104

11:                                               ; preds = %5
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %2 to i64
  br label %14

14:                                               ; preds = %11, %98
  %15 = phi ptr [ %7, %11 ], [ %100, %98 ]
  %16 = phi ptr [ %6, %11 ], [ %99, %98 ]
  %17 = load i8, ptr %15, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %94 [
    i8 5, label %21
    i8 6, label %36
    i8 7, label %56
  ]

21:                                               ; preds = %14
  %22 = ptrtoint ptr %15 to i64
  %23 = sub i64 %13, %22
  %24 = icmp slt i64 %23, 2
  br i1 %24, label %109, label %25

25:                                               ; preds = %21
  %26 = and i8 %17, 31
  %27 = zext nneg i8 %26 to i16
  %28 = shl nuw nsw i16 %27, 6
  %29 = getelementptr inbounds i8, ptr %15, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = and i8 %30, 63
  %32 = zext nneg i8 %31 to i16
  %33 = or disjoint i16 %28, %32
  %34 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %33, ptr %16, align 2, !tbaa !12
  %35 = getelementptr inbounds i8, ptr %15, i64 2
  br label %98

36:                                               ; preds = %14
  %37 = ptrtoint ptr %15 to i64
  %38 = sub i64 %13, %37
  %39 = icmp slt i64 %38, 3
  br i1 %39, label %109, label %40

40:                                               ; preds = %36
  %41 = zext i8 %17 to i16
  %42 = shl i16 %41, 12
  %43 = getelementptr inbounds i8, ptr %15, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = and i8 %44, 63
  %46 = zext nneg i8 %45 to i16
  %47 = shl nuw nsw i16 %46, 6
  %48 = or disjoint i16 %47, %42
  %49 = getelementptr inbounds i8, ptr %15, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = and i8 %50, 63
  %52 = zext nneg i8 %51 to i16
  %53 = or disjoint i16 %48, %52
  %54 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %53, ptr %16, align 2, !tbaa !12
  %55 = getelementptr inbounds i8, ptr %15, i64 3
  br label %98

56:                                               ; preds = %14
  %57 = ptrtoint ptr %16 to i64
  %58 = sub i64 %12, %57
  %59 = icmp slt i64 %58, 4
  br i1 %59, label %109, label %60

60:                                               ; preds = %56
  %61 = ptrtoint ptr %15 to i64
  %62 = sub i64 %13, %61
  %63 = icmp slt i64 %62, 4
  br i1 %63, label %109, label %64

64:                                               ; preds = %60
  %65 = and i8 %17, 7
  %66 = zext nneg i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 18
  %68 = getelementptr inbounds i8, ptr %15, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = and i8 %69, 63
  %71 = zext nneg i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 12
  %73 = getelementptr inbounds i8, ptr %15, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = and i8 %74, 63
  %76 = zext nneg i8 %75 to i64
  %77 = shl nuw nsw i64 %76, 6
  %78 = getelementptr inbounds i8, ptr %15, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !9
  %80 = and i8 %79, 63
  %81 = zext nneg i8 %80 to i64
  %82 = add nuw nsw i64 %67, 16711680
  %83 = add nuw nsw i64 %82, %72
  %84 = or disjoint i64 %83, %77
  %85 = lshr i64 %84, 10
  %86 = trunc i64 %85 to i16
  %87 = or i16 %86, -10240
  store i16 %87, ptr %16, align 2, !tbaa !12
  %88 = or disjoint i64 %77, %81
  %89 = trunc i64 %88 to i16
  %90 = or i16 %89, -9216
  %91 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %90, ptr %91, align 2, !tbaa !12
  %92 = getelementptr inbounds i16, ptr %16, i64 2
  %93 = getelementptr inbounds i8, ptr %15, i64 4
  br label %98

94:                                               ; preds = %14
  %95 = getelementptr inbounds i8, ptr %15, i64 1
  %96 = sext i8 %17 to i16
  %97 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %96, ptr %16, align 2, !tbaa !12
  br label %98

98:                                               ; preds = %64, %94, %40, %25
  %99 = phi ptr [ %97, %94 ], [ %92, %64 ], [ %54, %40 ], [ %34, %25 ]
  %100 = phi ptr [ %95, %94 ], [ %93, %64 ], [ %55, %40 ], [ %35, %25 ]
  %101 = icmp ult ptr %100, %2
  %102 = icmp ult ptr %99, %4
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %14, label %104, !llvm.loop !95

104:                                              ; preds = %98, %5
  %105 = phi ptr [ %6, %5 ], [ %99, %98 ]
  %106 = phi ptr [ %7, %5 ], [ %100, %98 ]
  %107 = phi i1 [ %8, %5 ], [ %101, %98 ]
  %108 = select i1 %107, i32 2, i32 0
  br label %109

109:                                              ; preds = %60, %56, %21, %36, %104
  %110 = phi ptr [ %105, %104 ], [ %16, %36 ], [ %16, %21 ], [ %16, %56 ], [ %16, %60 ]
  %111 = phi ptr [ %106, %104 ], [ %15, %36 ], [ %15, %21 ], [ %15, %56 ], [ %15, %60 ]
  %112 = phi i32 [ %108, %104 ], [ 1, %60 ], [ 2, %56 ], [ 1, %21 ], [ 1, %36 ]
  store ptr %111, ptr %1, align 8, !tbaa !5
  store ptr %110, ptr %3, align 8, !tbaa !5
  ret i32 %112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isName2(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = lshr i32 %4, 2
  %6 = and i32 %5, 7
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = shl nuw nsw i32 %4, 1
  %13 = and i32 %12, 6
  %14 = or disjoint i32 %11, %13
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %17, 5
  %19 = and i32 %18, 1
  %20 = or disjoint i32 %19, %14
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = and i32 %17, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isName3(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = shl i8 %3, 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 15
  %11 = or disjoint i32 %10, %5
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = shl nuw nsw i32 %8, 1
  %18 = and i32 %17, 6
  %19 = or disjoint i32 %16, %18
  %20 = getelementptr inbounds i8, ptr %1, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 5
  %24 = and i32 %23, 1
  %25 = or disjoint i32 %24, %19
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @isNever(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isNmstrt2(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = lshr i32 %4, 2
  %6 = and i32 %5, 7
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = shl nuw nsw i32 %4, 1
  %13 = and i32 %12, 6
  %14 = or disjoint i32 %11, %13
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %17, 5
  %19 = and i32 %18, 1
  %20 = or disjoint i32 %19, %14
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = and i32 %17, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isNmstrt3(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = shl i8 %3, 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %8, 2
  %10 = and i32 %9, 15
  %11 = or disjoint i32 %10, %5
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = shl nuw nsw i32 %8, 1
  %18 = and i32 %17, 6
  %19 = or disjoint i32 %16, %18
  %20 = getelementptr inbounds i8, ptr %1, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 5
  %24 = and i32 %23, 1
  %25 = or disjoint i32 %24, %19
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isInvalid2(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = icmp ult i8 %3, -62
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp ugt i8 %7, -65
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi i32 [ 1, %5 ], [ 1, %2 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isInvalid3(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds i8, ptr %1, i64 2
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !9
  %8 = icmp eq i8 %7, -17
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, -65
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = icmp ugt i8 %4, -67
  br i1 %14, label %37, label %29

15:                                               ; preds = %6
  %16 = icmp ugt i8 %4, -65
  br i1 %16, label %37, label %19

17:                                               ; preds = %9
  %18 = icmp ugt i8 %4, -65
  br i1 %18, label %37, label %26

19:                                               ; preds = %15
  %20 = icmp eq i8 %7, -32
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !9
  br i1 %20, label %23, label %26

23:                                               ; preds = %19
  %24 = add i8 %22, 64
  %25 = icmp ult i8 %24, -32
  br label %34

26:                                               ; preds = %19, %17
  %27 = phi i8 [ %11, %17 ], [ %22, %19 ]
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %34, label %29

29:                                               ; preds = %13, %26
  %30 = phi i8 [ %27, %26 ], [ -65, %13 ]
  %31 = icmp eq i8 %7, -19
  %32 = select i1 %31, i8 -97, i8 -65
  %33 = icmp ugt i8 %30, %32
  br label %34

34:                                               ; preds = %26, %29, %23
  %35 = phi i1 [ %25, %23 ], [ true, %26 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %17, %34, %15, %13, %2
  %38 = phi i32 [ 1, %15 ], [ 1, %13 ], [ 1, %2 ], [ %36, %34 ], [ 1, %17 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @utf8_isInvalid4(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds i8, ptr %1, i64 3
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = icmp sgt i8 %4, -65
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp sgt i8 %8, -65
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %1, align 1, !tbaa !9
  %12 = icmp eq i8 %11, -16
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  br i1 %12, label %15, label %18

15:                                               ; preds = %10
  %16 = add i8 %14, 64
  %17 = icmp ult i8 %16, -48
  br label %24

18:                                               ; preds = %10
  %19 = icmp sgt i8 %14, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = icmp eq i8 %11, -12
  %22 = select i1 %21, i8 -113, i8 -65
  %23 = icmp ugt i8 %14, %22
  br label %24

24:                                               ; preds = %18, %20, %15
  %25 = phi i1 [ %17, %15 ], [ true, %18 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %24, %6, %2
  %28 = phi i32 [ 1, %6 ], [ 1, %2 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @little2_prologTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #10 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %327

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = icmp eq i64 %9, 1
  br i1 %17, label %327, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds i8, ptr %1, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %21 [
    i8 0, label %26
    i8 -40, label %169
    i8 -39, label %169
    i8 -38, label %169
    i8 -37, label %169
    i8 -36, label %203
    i8 -35, label %203
    i8 -34, label %203
    i8 -33, label %203
    i8 -1, label %23
  ]

21:                                               ; preds = %18
  %22 = load i8, ptr %1, align 1, !tbaa !9
  br label %175

23:                                               ; preds = %18
  %24 = load i8, ptr %1, align 1, !tbaa !9
  %25 = icmp ugt i8 %24, -3
  br i1 %25, label %203, label %175

26:                                               ; preds = %18
  %27 = load i8, ptr %1, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  switch i8 %30, label %203 [
    i8 12, label %31
    i8 13, label %34
    i8 2, label %37
    i8 9, label %62
    i8 21, label %66
    i8 10, label %66
    i8 30, label %94
    i8 35, label %97
    i8 20, label %99
    i8 4, label %101
    i8 31, label %127
    i8 32, label %129
    i8 36, label %152
    i8 11, label %154
    i8 19, label %156
    i8 5, label %159
    i8 6, label %164
    i8 7, label %169
    i8 22, label %204
    i8 24, label %204
    i8 25, label %174
    i8 26, label %174
    i8 27, label %174
    i8 23, label %174
    i8 29, label %175
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = tail call fastcc i32 @little2_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef nonnull %32, ptr noundef nonnull %16, ptr noundef %3)
  br label %327

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %1, i64 2
  %36 = tail call fastcc i32 @little2_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef nonnull %35, ptr noundef nonnull %16, ptr noundef %3)
  br label %327

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = ptrtoint ptr %16 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %43, label %327

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %1, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !9
  switch i8 %45, label %60 [
    i8 0, label %49
    i8 -1, label %46
    i8 -33, label %61
    i8 -34, label %61
    i8 -35, label %61
    i8 -36, label %61
  ]

46:                                               ; preds = %43
  %47 = load i8, ptr %38, align 1, !tbaa !9
  %48 = icmp ugt i8 %47, -3
  br i1 %48, label %61, label %60

49:                                               ; preds = %43
  %50 = load i8, ptr %38, align 1, !tbaa !9
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !9
  switch i8 %53, label %61 [
    i8 16, label %54
    i8 15, label %57
    i8 22, label %60
    i8 24, label %60
    i8 29, label %60
    i8 5, label %60
    i8 6, label %60
    i8 7, label %60
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %1, i64 4
  %56 = tail call fastcc i32 @little2_scanDecl(ptr noundef nonnull %0, ptr noundef nonnull %55, ptr noundef nonnull %16, ptr noundef %3), !range !51
  br label %327

57:                                               ; preds = %49
  %58 = getelementptr inbounds i8, ptr %1, i64 4
  %59 = tail call fastcc i32 @little2_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef nonnull %16, ptr noundef %3)
  br label %327

60:                                               ; preds = %46, %43, %49, %49, %49, %49, %49, %49
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %327

61:                                               ; preds = %43, %43, %43, %43, %46, %49
  store ptr %38, ptr %3, align 8, !tbaa !5
  br label %327

62:                                               ; preds = %26
  %63 = getelementptr inbounds i8, ptr %1, i64 2
  %64 = icmp eq ptr %63, %16
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store ptr %16, ptr %3, align 8, !tbaa !5
  br label %327

66:                                               ; preds = %62, %26, %26
  %67 = ptrtoint ptr %16 to i64
  %68 = getelementptr inbounds i8, ptr %1, i64 2
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %67, %69
  %71 = icmp sgt i64 %70, 1
  br i1 %71, label %72, label %92

72:                                               ; preds = %66, %87
  %73 = phi ptr [ %88, %87 ], [ %68, %66 ]
  %74 = phi ptr [ %73, %87 ], [ %1, %66 ]
  %75 = getelementptr inbounds i8, ptr %74, i64 3
  %76 = load i8, ptr %75, align 1, !tbaa !9
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i8, ptr %73, align 1, !tbaa !9
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !9
  switch i8 %82, label %86 [
    i8 21, label %87
    i8 10, label %87
    i8 9, label %83
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, ptr %74, i64 4
  %85 = icmp eq ptr %84, %16
  br i1 %85, label %86, label %87

86:                                               ; preds = %72, %83, %78
  store ptr %73, ptr %3, align 8, !tbaa !5
  br label %327

87:                                               ; preds = %83, %78, %78
  %88 = getelementptr inbounds i8, ptr %73, i64 2
  %89 = ptrtoint ptr %88 to i64
  %90 = sub i64 %67, %89
  %91 = icmp sgt i64 %90, 1
  br i1 %91, label %72, label %92

92:                                               ; preds = %87, %66
  %93 = phi ptr [ %68, %66 ], [ %88, %87 ]
  store ptr %93, ptr %3, align 8, !tbaa !5
  br label %327

94:                                               ; preds = %26
  %95 = getelementptr inbounds i8, ptr %1, i64 2
  %96 = tail call fastcc i32 @little2_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %95, ptr noundef nonnull %16, ptr noundef %3), !range !52
  br label %327

97:                                               ; preds = %26
  %98 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %98, ptr %3, align 8, !tbaa !5
  br label %327

99:                                               ; preds = %26
  %100 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %100, ptr %3, align 8, !tbaa !5
  br label %327

101:                                              ; preds = %26
  %102 = getelementptr inbounds i8, ptr %1, i64 2
  %103 = ptrtoint ptr %16 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = icmp sgt i64 %105, 1
  br i1 %106, label %107, label %327

107:                                              ; preds = %101
  %108 = getelementptr inbounds i8, ptr %1, i64 3
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i8, ptr %102, align 1, !tbaa !9
  %113 = icmp eq i8 %112, 93
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = icmp ugt i64 %105, 3
  br i1 %115, label %116, label %327

116:                                              ; preds = %114
  %117 = getelementptr inbounds i8, ptr %1, i64 5
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = getelementptr inbounds i8, ptr %1, i64 4
  %122 = load i8, ptr %121, align 1, !tbaa !9
  %123 = icmp eq i8 %122, 62
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = getelementptr inbounds i8, ptr %1, i64 6
  store ptr %125, ptr %3, align 8, !tbaa !5
  br label %327

126:                                              ; preds = %116, %120, %111, %107
  store ptr %102, ptr %3, align 8, !tbaa !5
  br label %327

127:                                              ; preds = %26
  %128 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %128, ptr %3, align 8, !tbaa !5
  br label %327

129:                                              ; preds = %26
  %130 = getelementptr inbounds i8, ptr %1, i64 2
  %131 = ptrtoint ptr %16 to i64
  %132 = ptrtoint ptr %130 to i64
  %133 = sub i64 %131, %132
  %134 = icmp sgt i64 %133, 1
  br i1 %134, label %135, label %327

135:                                              ; preds = %129
  %136 = getelementptr inbounds i8, ptr %1, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !9
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i8, ptr %130, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !9
  switch i8 %143, label %151 [
    i8 33, label %144
    i8 15, label %146
    i8 34, label %148
    i8 9, label %150
    i8 10, label %150
    i8 21, label %150
    i8 11, label %150
    i8 35, label %150
    i8 36, label %150
    i8 32, label %150
  ]

144:                                              ; preds = %139
  %145 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %145, ptr %3, align 8, !tbaa !5
  br label %327

146:                                              ; preds = %139
  %147 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %147, ptr %3, align 8, !tbaa !5
  br label %327

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %149, ptr %3, align 8, !tbaa !5
  br label %327

150:                                              ; preds = %139, %139, %139, %139, %139, %139, %139
  store ptr %130, ptr %3, align 8, !tbaa !5
  br label %327

151:                                              ; preds = %135, %139
  store ptr %130, ptr %3, align 8, !tbaa !5
  br label %327

152:                                              ; preds = %26
  %153 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %153, ptr %3, align 8, !tbaa !5
  br label %327

154:                                              ; preds = %26
  %155 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %155, ptr %3, align 8, !tbaa !5
  br label %327

156:                                              ; preds = %26
  %157 = getelementptr inbounds i8, ptr %1, i64 2
  %158 = tail call fastcc i32 @little2_scanPoundName(ptr noundef nonnull %0, ptr noundef nonnull %157, ptr noundef nonnull %16, ptr noundef %3), !range !53
  br label %327

159:                                              ; preds = %26
  %160 = ptrtoint ptr %16 to i64
  %161 = sub i64 %160, %8
  %162 = icmp slt i64 %161, 2
  br i1 %162, label %327, label %163

163:                                              ; preds = %159
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %327

164:                                              ; preds = %26
  %165 = ptrtoint ptr %16 to i64
  %166 = sub i64 %165, %8
  %167 = icmp slt i64 %166, 3
  br i1 %167, label %327, label %168

168:                                              ; preds = %164
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %327

169:                                              ; preds = %18, %18, %18, %18, %26
  %170 = ptrtoint ptr %16 to i64
  %171 = sub i64 %170, %8
  %172 = icmp slt i64 %171, 4
  br i1 %172, label %327, label %173

173:                                              ; preds = %169
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %327

174:                                              ; preds = %26, %26, %26, %26
  br label %204

175:                                              ; preds = %21, %23, %26
  %176 = phi i8 [ %22, %21 ], [ %24, %23 ], [ %27, %26 ]
  %177 = zext i8 %20 to i64
  %178 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !9
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 3
  %182 = zext i8 %176 to i32
  %183 = lshr i32 %182, 5
  %184 = or disjoint i32 %183, %181
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !14
  %188 = and i32 %182, 31
  %189 = shl nuw i32 1, %188
  %190 = and i32 %189, %187
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %175
  %193 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %177
  %194 = load i8, ptr %193, align 1, !tbaa !9
  %195 = zext i8 %194 to i32
  %196 = shl nuw nsw i32 %195, 3
  %197 = or disjoint i32 %196, %183
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !14
  %201 = and i32 %200, %189
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %18, %18, %18, %18, %23, %192, %26
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %327

204:                                              ; preds = %192, %175, %26, %26, %174
  %205 = phi i32 [ 19, %174 ], [ 18, %26 ], [ 18, %26 ], [ 18, %175 ], [ 19, %192 ]
  %206 = getelementptr inbounds i8, ptr %1, i64 2
  %207 = ptrtoint ptr %16 to i64
  %208 = ptrtoint ptr %206 to i64
  %209 = sub i64 %207, %208
  %210 = icmp sgt i64 %209, 1
  br i1 %210, label %211, label %324

211:                                              ; preds = %204, %318
  %212 = phi i64 [ %322, %318 ], [ %209, %204 ]
  %213 = phi i32 [ %320, %318 ], [ %205, %204 ]
  %214 = phi ptr [ %319, %318 ], [ %206, %204 ]
  %215 = getelementptr inbounds i8, ptr %214, i64 1
  %216 = load i8, ptr %215, align 1, !tbaa !9
  switch i8 %216, label %217 [
    i8 0, label %222
    i8 -40, label %251
    i8 -39, label %251
    i8 -38, label %251
    i8 -37, label %251
    i8 -36, label %317
    i8 -35, label %317
    i8 -34, label %317
    i8 -33, label %317
    i8 -1, label %219
  ]

217:                                              ; preds = %211
  %218 = load i8, ptr %214, align 1, !tbaa !9
  br label %227

219:                                              ; preds = %211
  %220 = load i8, ptr %214, align 1, !tbaa !9
  %221 = icmp ugt i8 %220, -3
  br i1 %221, label %317, label %227

222:                                              ; preds = %211
  %223 = load i8, ptr %214, align 1, !tbaa !9
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !9
  switch i8 %226, label %317 [
    i8 29, label %227
    i8 22, label %245
    i8 24, label %245
    i8 25, label %245
    i8 26, label %245
    i8 27, label %245
    i8 5, label %247
    i8 6, label %248
    i8 7, label %251
    i8 11, label %254
    i8 32, label %254
    i8 35, label %254
    i8 36, label %254
    i8 20, label %254
    i8 30, label %254
    i8 21, label %254
    i8 9, label %254
    i8 10, label %254
    i8 23, label %255
    i8 34, label %302
    i8 33, label %307
    i8 15, label %312
  ]

227:                                              ; preds = %217, %219, %222
  %228 = phi i8 [ %218, %217 ], [ %220, %219 ], [ %223, %222 ]
  %229 = zext i8 %216 to i64
  %230 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !9
  %232 = zext i8 %231 to i32
  %233 = shl nuw nsw i32 %232, 3
  %234 = zext i8 %228 to i32
  %235 = lshr i32 %234, 5
  %236 = or disjoint i32 %235, %233
  %237 = zext nneg i32 %236 to i64
  %238 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !14
  %240 = and i32 %234, 31
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %227
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

245:                                              ; preds = %227, %222, %222, %222, %222, %222
  %246 = getelementptr inbounds i8, ptr %214, i64 2
  br label %318

247:                                              ; preds = %222
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

248:                                              ; preds = %222
  %249 = icmp eq i64 %212, 2
  br i1 %249, label %327, label %250

250:                                              ; preds = %248
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

251:                                              ; preds = %211, %211, %211, %211, %222
  %252 = icmp ult i64 %212, 4
  br i1 %252, label %327, label %253

253:                                              ; preds = %251
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

254:                                              ; preds = %222, %222, %222, %222, %222, %222, %222, %222, %222
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

255:                                              ; preds = %222
  %256 = getelementptr inbounds i8, ptr %214, i64 2
  switch i32 %213, label %318 [
    i32 18, label %257
    i32 41, label %301
  ]

257:                                              ; preds = %255
  %258 = ptrtoint ptr %256 to i64
  %259 = sub i64 %207, %258
  %260 = icmp sgt i64 %259, 1
  br i1 %260, label %261, label %327

261:                                              ; preds = %257
  %262 = getelementptr inbounds i8, ptr %214, i64 3
  %263 = load i8, ptr %262, align 1, !tbaa !9
  switch i8 %263, label %264 [
    i8 0, label %269
    i8 -40, label %298
    i8 -39, label %298
    i8 -38, label %298
    i8 -37, label %298
    i8 -36, label %318
    i8 -35, label %318
    i8 -34, label %318
    i8 -33, label %318
    i8 -1, label %266
  ]

264:                                              ; preds = %261
  %265 = load i8, ptr %256, align 1, !tbaa !9
  br label %274

266:                                              ; preds = %261
  %267 = load i8, ptr %256, align 1, !tbaa !9
  %268 = icmp ugt i8 %267, -3
  br i1 %268, label %318, label %274

269:                                              ; preds = %261
  %270 = load i8, ptr %256, align 1, !tbaa !9
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !9
  switch i8 %273, label %318 [
    i8 29, label %274
    i8 22, label %292
    i8 24, label %292
    i8 25, label %292
    i8 26, label %292
    i8 27, label %292
    i8 5, label %294
    i8 6, label %295
    i8 7, label %298
  ]

274:                                              ; preds = %264, %266, %269
  %275 = phi i8 [ %265, %264 ], [ %267, %266 ], [ %270, %269 ]
  %276 = zext i8 %263 to i64
  %277 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !9
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 3
  %281 = zext i8 %275 to i32
  %282 = lshr i32 %281, 5
  %283 = or disjoint i32 %282, %280
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !14
  %287 = and i32 %281, 31
  %288 = shl nuw i32 1, %287
  %289 = and i32 %288, %286
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %274
  store ptr %256, ptr %3, align 8, !tbaa !5
  br label %327

292:                                              ; preds = %274, %269, %269, %269, %269, %269
  %293 = getelementptr inbounds i8, ptr %214, i64 4
  br label %318

294:                                              ; preds = %269
  store ptr %256, ptr %3, align 8, !tbaa !5
  br label %327

295:                                              ; preds = %269
  %296 = icmp eq i64 %259, 2
  br i1 %296, label %327, label %297

297:                                              ; preds = %295
  store ptr %256, ptr %3, align 8, !tbaa !5
  br label %327

298:                                              ; preds = %261, %261, %261, %261, %269
  %299 = icmp ult i64 %259, 4
  br i1 %299, label %327, label %300

300:                                              ; preds = %298
  store ptr %256, ptr %3, align 8, !tbaa !5
  br label %327

301:                                              ; preds = %255
  br label %318

302:                                              ; preds = %222
  %303 = icmp eq i32 %213, 19
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

305:                                              ; preds = %302
  %306 = getelementptr inbounds i8, ptr %214, i64 2
  store ptr %306, ptr %3, align 8, !tbaa !5
  br label %327

307:                                              ; preds = %222
  %308 = icmp eq i32 %213, 19
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

310:                                              ; preds = %307
  %311 = getelementptr inbounds i8, ptr %214, i64 2
  store ptr %311, ptr %3, align 8, !tbaa !5
  br label %327

312:                                              ; preds = %222
  %313 = icmp eq i32 %213, 19
  br i1 %313, label %314, label %315

314:                                              ; preds = %312
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

315:                                              ; preds = %312
  %316 = getelementptr inbounds i8, ptr %214, i64 2
  store ptr %316, ptr %3, align 8, !tbaa !5
  br label %327

317:                                              ; preds = %211, %211, %211, %211, %219, %222
  store ptr %214, ptr %3, align 8, !tbaa !5
  br label %327

318:                                              ; preds = %261, %261, %261, %261, %266, %269, %301, %255, %292, %245
  %319 = phi ptr [ %256, %255 ], [ %256, %301 ], [ %293, %292 ], [ %246, %245 ], [ %256, %269 ], [ %256, %266 ], [ %256, %261 ], [ %256, %261 ], [ %256, %261 ], [ %256, %261 ]
  %320 = phi i32 [ %213, %255 ], [ 19, %301 ], [ 41, %292 ], [ %213, %245 ], [ 19, %269 ], [ 19, %266 ], [ 19, %261 ], [ 19, %261 ], [ 19, %261 ], [ 19, %261 ]
  %321 = ptrtoint ptr %319 to i64
  %322 = sub i64 %207, %321
  %323 = icmp sgt i64 %322, 1
  br i1 %323, label %211, label %324, !llvm.loop !96

324:                                              ; preds = %318, %204
  %325 = phi i32 [ %205, %204 ], [ %320, %318 ]
  %326 = sub nsw i32 0, %325
  br label %327

327:                                              ; preds = %257, %298, %295, %251, %248, %169, %164, %159, %129, %114, %101, %37, %4, %6, %324, %317, %315, %314, %310, %309, %305, %304, %300, %297, %294, %291, %254, %253, %250, %247, %244, %203, %173, %168, %163, %156, %154, %152, %151, %150, %148, %146, %144, %127, %126, %124, %99, %97, %94, %92, %86, %65, %61, %60, %57, %54, %34, %31
  %328 = phi i32 [ 0, %203 ], [ 0, %317 ], [ 0, %314 ], [ 30, %315 ], [ 0, %309 ], [ 31, %310 ], [ 0, %304 ], [ 32, %305 ], [ 0, %300 ], [ 0, %297 ], [ 0, %294 ], [ 0, %291 ], [ %213, %254 ], [ 0, %253 ], [ 0, %250 ], [ 0, %247 ], [ 0, %244 ], [ %326, %324 ], [ 0, %173 ], [ 0, %168 ], [ 0, %163 ], [ %158, %156 ], [ 17, %154 ], [ 21, %152 ], [ 0, %151 ], [ 24, %150 ], [ 37, %148 ], [ 35, %146 ], [ 36, %144 ], [ 23, %127 ], [ 34, %124 ], [ 26, %126 ], [ 25, %99 ], [ 38, %97 ], [ %96, %94 ], [ 15, %86 ], [ 15, %92 ], [ -15, %65 ], [ 0, %61 ], [ 29, %60 ], [ %59, %57 ], [ %56, %54 ], [ %36, %34 ], [ %33, %31 ], [ -1, %6 ], [ -4, %4 ], [ -1, %37 ], [ -26, %101 ], [ -1, %114 ], [ -24, %129 ], [ -2, %159 ], [ -2, %164 ], [ -2, %169 ], [ -2, %248 ], [ -2, %251 ], [ -2, %295 ], [ -2, %298 ], [ -1, %257 ]
  ret i32 %328
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @little2_contentTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #10 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %526

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = xor i1 %13, true
  %18 = or i1 %11, %17
  br i1 %18, label %19, label %526

19:                                               ; preds = %6
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %460 [
    i8 0, label %25
    i8 -40, label %453
    i8 -39, label %453
    i8 -38, label %453
    i8 -37, label %453
    i8 -36, label %459
    i8 -35, label %459
    i8 -34, label %459
    i8 -33, label %459
    i8 -1, label %22
  ]

22:                                               ; preds = %19
  %23 = load i8, ptr %1, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %459, label %460

25:                                               ; preds = %19
  %26 = load i8, ptr %1, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !9
  switch i8 %29, label %460 [
    i8 2, label %30
    i8 3, label %389
    i8 9, label %392
    i8 10, label %413
    i8 4, label %415
    i8 5, label %441
    i8 6, label %447
    i8 7, label %453
    i8 0, label %459
    i8 1, label %459
    i8 8, label %459
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = ptrtoint ptr %16 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = icmp sgt i64 %34, 1
  br i1 %35, label %36, label %526

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %1, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !9
  switch i8 %38, label %39 [
    i8 0, label %44
    i8 -40, label %76
    i8 -39, label %76
    i8 -38, label %76
    i8 -37, label %76
    i8 -36, label %217
    i8 -35, label %217
    i8 -34, label %217
    i8 -33, label %217
    i8 -1, label %41
  ]

39:                                               ; preds = %36
  %40 = load i8, ptr %31, align 1, !tbaa !9
  br label %49

41:                                               ; preds = %36
  %42 = load i8, ptr %31, align 1, !tbaa !9
  %43 = icmp ugt i8 %42, -3
  br i1 %43, label %217, label %49

44:                                               ; preds = %36
  %45 = load i8, ptr %31, align 1, !tbaa !9
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !9
  switch i8 %48, label %217 [
    i8 29, label %49
    i8 22, label %67
    i8 24, label %67
    i8 5, label %72
    i8 6, label %73
    i8 7, label %76
    i8 16, label %79
    i8 15, label %100
    i8 17, label %103
  ]

49:                                               ; preds = %44, %41, %39
  %50 = phi i8 [ %40, %39 ], [ %42, %41 ], [ %45, %44 ]
  %51 = zext i8 %38 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 3
  %56 = zext i8 %50 to i32
  %57 = lshr i32 %56, 5
  %58 = or disjoint i32 %55, %57
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !14
  %62 = and i32 %56, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %526

67:                                               ; preds = %49, %44, %44
  %68 = getelementptr inbounds i8, ptr %1, i64 4
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %32, %69
  %71 = icmp sgt i64 %70, 1
  br i1 %71, label %218, label %526

72:                                               ; preds = %44
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %526

73:                                               ; preds = %44
  %74 = icmp eq i64 %34, 2
  br i1 %74, label %526, label %75

75:                                               ; preds = %73
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %526

76:                                               ; preds = %44, %36, %36, %36, %36
  %77 = icmp ult i64 %34, 4
  br i1 %77, label %526, label %78

78:                                               ; preds = %76
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %526

79:                                               ; preds = %44
  %80 = getelementptr inbounds i8, ptr %1, i64 4
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %32, %81
  %83 = icmp sgt i64 %82, 1
  br i1 %83, label %84, label %526

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %1, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i8, ptr %80, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !9
  switch i8 %92, label %99 [
    i8 27, label %93
    i8 20, label %96
  ]

93:                                               ; preds = %88
  %94 = getelementptr inbounds i8, ptr %1, i64 6
  %95 = tail call fastcc i32 @little2_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %94, ptr noundef nonnull %16, ptr noundef %3), !range !64
  br label %526

96:                                               ; preds = %88
  %97 = getelementptr inbounds i8, ptr %1, i64 6
  %98 = tail call fastcc i32 @little2_scanCdataSection(ptr noundef nonnull %97, ptr noundef nonnull %16, ptr noundef %3)
  br label %526

99:                                               ; preds = %88, %84
  store ptr %80, ptr %3, align 8, !tbaa !5
  br label %526

100:                                              ; preds = %44
  %101 = getelementptr inbounds i8, ptr %1, i64 4
  %102 = tail call fastcc i32 @little2_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %101, ptr noundef nonnull %16, ptr noundef %3)
  br label %526

103:                                              ; preds = %44
  %104 = getelementptr inbounds i8, ptr %1, i64 4
  %105 = ptrtoint ptr %104 to i64
  %106 = sub i64 %32, %105
  %107 = icmp sgt i64 %106, 1
  br i1 %107, label %108, label %526

108:                                              ; preds = %103
  %109 = getelementptr inbounds i8, ptr %1, i64 5
  %110 = load i8, ptr %109, align 1, !tbaa !9
  switch i8 %110, label %111 [
    i8 0, label %116
    i8 -40, label %145
    i8 -39, label %145
    i8 -38, label %145
    i8 -37, label %145
    i8 -36, label %214
    i8 -35, label %214
    i8 -34, label %214
    i8 -33, label %214
    i8 -1, label %113
  ]

111:                                              ; preds = %108
  %112 = load i8, ptr %104, align 1, !tbaa !9
  br label %121

113:                                              ; preds = %108
  %114 = load i8, ptr %104, align 1, !tbaa !9
  %115 = icmp ugt i8 %114, -3
  br i1 %115, label %214, label %121

116:                                              ; preds = %108
  %117 = load i8, ptr %104, align 1, !tbaa !9
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !9
  switch i8 %120, label %214 [
    i8 29, label %121
    i8 22, label %138
    i8 24, label %138
    i8 7, label %145
    i8 6, label %143
  ]

121:                                              ; preds = %116, %113, %111
  %122 = phi i8 [ %112, %111 ], [ %114, %113 ], [ %117, %116 ]
  %123 = zext i8 %110 to i64
  %124 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !9
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 3
  %128 = zext i8 %122 to i32
  %129 = lshr i32 %128, 5
  %130 = or disjoint i32 %127, %129
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !14
  %134 = and i32 %128, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %214, label %138

138:                                              ; preds = %121, %116, %116
  %139 = getelementptr inbounds i8, ptr %1, i64 6
  %140 = ptrtoint ptr %139 to i64
  %141 = sub i64 %32, %140
  %142 = icmp sgt i64 %141, 1
  br i1 %142, label %147, label %526

143:                                              ; preds = %116
  %144 = icmp eq i64 %106, 2
  br i1 %144, label %526, label %214

145:                                              ; preds = %116, %108, %108, %108, %108
  %146 = icmp ult i64 %106, 4
  br i1 %146, label %526, label %214

147:                                              ; preds = %138, %209
  %148 = phi i64 [ %212, %209 ], [ %141, %138 ]
  %149 = phi ptr [ %210, %209 ], [ %139, %138 ]
  %150 = phi ptr [ %149, %209 ], [ %104, %138 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !9
  switch i8 %152, label %153 [
    i8 0, label %158
    i8 -40, label %182
    i8 -39, label %182
    i8 -38, label %182
    i8 -37, label %182
    i8 -36, label %214
    i8 -35, label %214
    i8 -34, label %214
    i8 -33, label %214
    i8 -1, label %155
  ]

153:                                              ; preds = %147
  %154 = load i8, ptr %149, align 1, !tbaa !9
  br label %163

155:                                              ; preds = %147
  %156 = load i8, ptr %149, align 1, !tbaa !9
  %157 = icmp ugt i8 %156, -3
  br i1 %157, label %214, label %163

158:                                              ; preds = %147
  %159 = load i8, ptr %149, align 1, !tbaa !9
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !9
  switch i8 %162, label %214 [
    i8 29, label %163
    i8 22, label %209
    i8 24, label %209
    i8 25, label %209
    i8 26, label %209
    i8 27, label %209
    i8 11, label %207
    i8 6, label %180
    i8 7, label %182
    i8 21, label %184
    i8 9, label %184
    i8 10, label %184
    i8 23, label %209
  ]

163:                                              ; preds = %158, %155, %153
  %164 = phi i8 [ %154, %153 ], [ %156, %155 ], [ %159, %158 ]
  %165 = zext i8 %152 to i64
  %166 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = zext i8 %167 to i32
  %169 = shl nuw nsw i32 %168, 3
  %170 = zext i8 %164 to i32
  %171 = lshr i32 %170, 5
  %172 = or disjoint i32 %169, %171
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !14
  %176 = and i32 %170, 31
  %177 = shl nuw i32 1, %176
  %178 = and i32 %177, %175
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %214, label %209

180:                                              ; preds = %158
  %181 = icmp eq i64 %148, 2
  br i1 %181, label %526, label %214

182:                                              ; preds = %158, %147, %147, %147, %147
  %183 = icmp ult i64 %148, 4
  br i1 %183, label %526, label %214

184:                                              ; preds = %158, %158, %158
  %185 = getelementptr inbounds i8, ptr %149, i64 2
  %186 = ptrtoint ptr %185 to i64
  %187 = sub i64 %32, %186
  %188 = icmp sgt i64 %187, 1
  br i1 %188, label %189, label %526

189:                                              ; preds = %184, %202
  %190 = phi ptr [ %203, %202 ], [ %185, %184 ]
  %191 = phi ptr [ %190, %202 ], [ %149, %184 ]
  %192 = getelementptr inbounds i8, ptr %191, i64 3
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %189
  %196 = load i8, ptr %190, align 1, !tbaa !9
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !9
  switch i8 %199, label %214 [
    i8 21, label %202
    i8 9, label %202
    i8 10, label %202
    i8 11, label %200
  ]

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, ptr %191, i64 4
  br label %214

202:                                              ; preds = %195, %195, %195
  %203 = getelementptr inbounds i8, ptr %190, i64 2
  %204 = ptrtoint ptr %203 to i64
  %205 = sub i64 %32, %204
  %206 = icmp sgt i64 %205, 1
  br i1 %206, label %189, label %526, !llvm.loop !97

207:                                              ; preds = %158
  %208 = getelementptr inbounds i8, ptr %150, i64 4
  br label %214

209:                                              ; preds = %163, %158, %158, %158, %158, %158, %158
  %210 = getelementptr inbounds i8, ptr %149, i64 2
  %211 = ptrtoint ptr %210 to i64
  %212 = sub i64 %32, %211
  %213 = icmp sgt i64 %212, 1
  br i1 %213, label %147, label %526, !llvm.loop !98

214:                                              ; preds = %163, %158, %155, %147, %147, %147, %147, %195, %189, %207, %200, %182, %180, %145, %143, %121, %116, %113, %108, %108, %108, %108
  %215 = phi ptr [ %208, %207 ], [ %201, %200 ], [ %104, %121 ], [ %104, %143 ], [ %104, %145 ], [ %104, %108 ], [ %104, %108 ], [ %104, %108 ], [ %104, %108 ], [ %104, %113 ], [ %104, %116 ], [ %149, %180 ], [ %149, %182 ], [ %190, %189 ], [ %190, %195 ], [ %149, %147 ], [ %149, %147 ], [ %149, %147 ], [ %149, %147 ], [ %149, %155 ], [ %149, %158 ], [ %149, %163 ]
  %216 = phi i32 [ 5, %207 ], [ 5, %200 ], [ 0, %121 ], [ 0, %143 ], [ 0, %145 ], [ 0, %108 ], [ 0, %108 ], [ 0, %108 ], [ 0, %108 ], [ 0, %113 ], [ 0, %116 ], [ 0, %180 ], [ 0, %182 ], [ 0, %189 ], [ 0, %195 ], [ 0, %147 ], [ 0, %147 ], [ 0, %147 ], [ 0, %147 ], [ 0, %155 ], [ 0, %158 ], [ 0, %163 ]
  store ptr %215, ptr %3, align 8, !tbaa !5
  br label %526

217:                                              ; preds = %44, %41, %36, %36, %36, %36
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %526

218:                                              ; preds = %67, %382
  %219 = phi i64 [ %387, %382 ], [ %70, %67 ]
  %220 = phi i32 [ %384, %382 ], [ 0, %67 ]
  %221 = phi ptr [ %385, %382 ], [ %68, %67 ]
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  %223 = load i8, ptr %222, align 1, !tbaa !9
  switch i8 %223, label %224 [
    i8 0, label %229
    i8 -40, label %256
    i8 -39, label %256
    i8 -38, label %256
    i8 -37, label %256
    i8 -36, label %381
    i8 -35, label %381
    i8 -34, label %381
    i8 -33, label %381
    i8 -1, label %226
  ]

224:                                              ; preds = %218
  %225 = load i8, ptr %221, align 1, !tbaa !9
  br label %234

226:                                              ; preds = %218
  %227 = load i8, ptr %221, align 1, !tbaa !9
  %228 = icmp ugt i8 %227, -3
  br i1 %228, label %381, label %234

229:                                              ; preds = %218
  %230 = load i8, ptr %221, align 1, !tbaa !9
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !9
  switch i8 %233, label %381 [
    i8 29, label %234
    i8 22, label %382
    i8 24, label %382
    i8 25, label %382
    i8 26, label %382
    i8 27, label %382
    i8 5, label %252
    i8 6, label %253
    i8 7, label %256
    i8 23, label %259
    i8 21, label %306
    i8 9, label %306
    i8 10, label %306
    i8 11, label %362
    i8 17, label %365
  ]

234:                                              ; preds = %229, %226, %224
  %235 = phi i8 [ %225, %224 ], [ %227, %226 ], [ %230, %229 ]
  %236 = zext i8 %223 to i64
  %237 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !9
  %239 = zext i8 %238 to i32
  %240 = shl nuw nsw i32 %239, 3
  %241 = zext i8 %235 to i32
  %242 = lshr i32 %241, 5
  %243 = or disjoint i32 %240, %242
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !14
  %247 = and i32 %241, 31
  %248 = shl nuw i32 1, %247
  %249 = and i32 %248, %246
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %382

251:                                              ; preds = %234
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

252:                                              ; preds = %229
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

253:                                              ; preds = %229
  %254 = icmp eq i64 %219, 2
  br i1 %254, label %526, label %255

255:                                              ; preds = %253
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

256:                                              ; preds = %229, %218, %218, %218, %218
  %257 = icmp ult i64 %219, 4
  br i1 %257, label %526, label %258

258:                                              ; preds = %256
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

259:                                              ; preds = %229
  %260 = icmp eq i32 %220, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %259
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

262:                                              ; preds = %259
  %263 = getelementptr inbounds i8, ptr %221, i64 2
  %264 = ptrtoint ptr %263 to i64
  %265 = sub i64 %32, %264
  %266 = icmp sgt i64 %265, 1
  br i1 %266, label %267, label %526

267:                                              ; preds = %262
  %268 = getelementptr inbounds i8, ptr %221, i64 3
  %269 = load i8, ptr %268, align 1, !tbaa !9
  switch i8 %269, label %270 [
    i8 0, label %275
    i8 -40, label %302
    i8 -39, label %302
    i8 -38, label %302
    i8 -37, label %302
    i8 -36, label %305
    i8 -35, label %305
    i8 -34, label %305
    i8 -33, label %305
    i8 -1, label %272
  ]

270:                                              ; preds = %267
  %271 = load i8, ptr %263, align 1, !tbaa !9
  br label %280

272:                                              ; preds = %267
  %273 = load i8, ptr %263, align 1, !tbaa !9
  %274 = icmp ugt i8 %273, -3
  br i1 %274, label %305, label %280

275:                                              ; preds = %267
  %276 = load i8, ptr %263, align 1, !tbaa !9
  %277 = zext i8 %276 to i64
  %278 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !9
  switch i8 %279, label %305 [
    i8 29, label %280
    i8 22, label %382
    i8 24, label %382
    i8 5, label %298
    i8 6, label %299
    i8 7, label %302
  ]

280:                                              ; preds = %275, %272, %270
  %281 = phi i8 [ %271, %270 ], [ %273, %272 ], [ %276, %275 ]
  %282 = zext i8 %269 to i64
  %283 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !9
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 3
  %287 = zext i8 %281 to i32
  %288 = lshr i32 %287, 5
  %289 = or disjoint i32 %286, %288
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !14
  %293 = and i32 %287, 31
  %294 = shl nuw i32 1, %293
  %295 = and i32 %294, %292
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %382

297:                                              ; preds = %280
  store ptr %263, ptr %3, align 8, !tbaa !5
  br label %526

298:                                              ; preds = %275
  store ptr %263, ptr %3, align 8, !tbaa !5
  br label %526

299:                                              ; preds = %275
  %300 = icmp eq i64 %265, 2
  br i1 %300, label %526, label %301

301:                                              ; preds = %299
  store ptr %263, ptr %3, align 8, !tbaa !5
  br label %526

302:                                              ; preds = %275, %267, %267, %267, %267
  %303 = icmp ult i64 %265, 4
  br i1 %303, label %526, label %304

304:                                              ; preds = %302
  store ptr %263, ptr %3, align 8, !tbaa !5
  br label %526

305:                                              ; preds = %275, %272, %267, %267, %267, %267
  store ptr %263, ptr %3, align 8, !tbaa !5
  br label %526

306:                                              ; preds = %229, %229, %229
  %307 = getelementptr inbounds i8, ptr %221, i64 2
  %308 = ptrtoint ptr %307 to i64
  %309 = sub i64 %32, %308
  %310 = icmp sgt i64 %309, 1
  br i1 %310, label %311, label %526

311:                                              ; preds = %306, %356
  %312 = phi i64 [ %359, %356 ], [ %309, %306 ]
  %313 = phi ptr [ %357, %356 ], [ %307, %306 ]
  %314 = phi ptr [ %313, %356 ], [ %221, %306 ]
  %315 = getelementptr inbounds i8, ptr %314, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !9
  switch i8 %316, label %317 [
    i8 0, label %323
    i8 -40, label %353
    i8 -39, label %353
    i8 -38, label %353
    i8 -37, label %353
    i8 -36, label %361
    i8 -35, label %361
    i8 -34, label %361
    i8 -33, label %361
    i8 -1, label %320
  ]

317:                                              ; preds = %311
  %318 = load i8, ptr %313, align 1, !tbaa !9
  %319 = zext i8 %316 to i64
  br label %328

320:                                              ; preds = %311
  %321 = load i8, ptr %313, align 1, !tbaa !9
  %322 = icmp ugt i8 %321, -3
  br i1 %322, label %361, label %328

323:                                              ; preds = %311
  %324 = load i8, ptr %313, align 1, !tbaa !9
  %325 = zext i8 %324 to i64
  %326 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !9
  switch i8 %327, label %361 [
    i8 29, label %328
    i8 22, label %346
    i8 24, label %346
    i8 5, label %349
    i8 6, label %350
    i8 7, label %353
    i8 11, label %362
    i8 17, label %365
    i8 21, label %356
    i8 9, label %356
    i8 10, label %356
  ]

328:                                              ; preds = %323, %320, %317
  %329 = phi i8 [ %321, %320 ], [ %318, %317 ], [ %324, %323 ]
  %330 = phi i64 [ 255, %320 ], [ %319, %317 ], [ 0, %323 ]
  %331 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !9
  %333 = zext i8 %332 to i32
  %334 = shl nuw nsw i32 %333, 3
  %335 = zext i8 %329 to i32
  %336 = lshr i32 %335, 5
  %337 = or disjoint i32 %334, %336
  %338 = zext nneg i32 %337 to i64
  %339 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !14
  %341 = and i32 %335, 31
  %342 = shl nuw i32 1, %341
  %343 = and i32 %342, %340
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %328
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %526

346:                                              ; preds = %323, %323, %328
  %347 = getelementptr inbounds i8, ptr %314, i64 4
  %348 = tail call fastcc i32 @little2_scanAtts(ptr noundef nonnull %0, ptr noundef nonnull %347, ptr noundef nonnull %16, ptr noundef %3)
  br label %526

349:                                              ; preds = %323
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %526

350:                                              ; preds = %323
  %351 = icmp eq i64 %312, 2
  br i1 %351, label %526, label %352

352:                                              ; preds = %350
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %526

353:                                              ; preds = %323, %311, %311, %311, %311
  %354 = icmp ult i64 %312, 4
  br i1 %354, label %526, label %355

355:                                              ; preds = %353
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %526

356:                                              ; preds = %323, %323, %323
  %357 = getelementptr inbounds i8, ptr %313, i64 2
  %358 = ptrtoint ptr %357 to i64
  %359 = sub i64 %32, %358
  %360 = icmp sgt i64 %359, 1
  br i1 %360, label %311, label %526, !llvm.loop !99

361:                                              ; preds = %323, %311, %311, %311, %311, %320
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %526

362:                                              ; preds = %229, %323
  %363 = phi ptr [ %313, %323 ], [ %221, %229 ]
  %364 = getelementptr inbounds i8, ptr %363, i64 2
  store ptr %364, ptr %3, align 8, !tbaa !5
  br label %526

365:                                              ; preds = %229, %323
  %366 = phi ptr [ %313, %323 ], [ %221, %229 ]
  %367 = getelementptr inbounds i8, ptr %366, i64 2
  %368 = ptrtoint ptr %367 to i64
  %369 = sub i64 %32, %368
  %370 = icmp sgt i64 %369, 1
  br i1 %370, label %371, label %526

371:                                              ; preds = %365
  %372 = getelementptr inbounds i8, ptr %366, i64 3
  %373 = load i8, ptr %372, align 1, !tbaa !9
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %371
  %376 = load i8, ptr %367, align 1, !tbaa !9
  %377 = icmp eq i8 %376, 62
  br i1 %377, label %379, label %378

378:                                              ; preds = %375, %371
  store ptr %367, ptr %3, align 8, !tbaa !5
  br label %526

379:                                              ; preds = %375
  %380 = getelementptr inbounds i8, ptr %366, i64 4
  store ptr %380, ptr %3, align 8, !tbaa !5
  br label %526

381:                                              ; preds = %229, %226, %218, %218, %218, %218
  store ptr %221, ptr %3, align 8, !tbaa !5
  br label %526

382:                                              ; preds = %280, %275, %275, %234, %229, %229, %229, %229, %229
  %383 = phi i64 [ 2, %234 ], [ 2, %229 ], [ 2, %229 ], [ 2, %229 ], [ 2, %229 ], [ 2, %229 ], [ 4, %280 ], [ 4, %275 ], [ 4, %275 ]
  %384 = phi i32 [ %220, %234 ], [ %220, %229 ], [ %220, %229 ], [ %220, %229 ], [ %220, %229 ], [ %220, %229 ], [ 1, %280 ], [ 1, %275 ], [ 1, %275 ]
  %385 = getelementptr inbounds i8, ptr %221, i64 %383
  %386 = ptrtoint ptr %385 to i64
  %387 = sub i64 %32, %386
  %388 = icmp sgt i64 %387, 1
  br i1 %388, label %218, label %526, !llvm.loop !100

389:                                              ; preds = %25
  %390 = getelementptr inbounds i8, ptr %1, i64 2
  %391 = tail call fastcc i32 @little2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %390, ptr noundef nonnull %16, ptr noundef %3), !range !69
  br label %526

392:                                              ; preds = %25
  %393 = getelementptr inbounds i8, ptr %1, i64 2
  %394 = ptrtoint ptr %16 to i64
  %395 = ptrtoint ptr %393 to i64
  %396 = sub i64 %394, %395
  %397 = icmp sgt i64 %396, 1
  br i1 %397, label %398, label %526

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, ptr %1, i64 3
  %400 = load i8, ptr %399, align 1, !tbaa !9
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load i8, ptr %393, align 1, !tbaa !9
  %404 = zext i8 %403 to i64
  %405 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !9
  %407 = freeze i8 %406
  %408 = icmp eq i8 %407, 10
  %409 = getelementptr inbounds i8, ptr %1, i64 4
  %410 = select i1 %408, ptr %409, ptr %393
  br label %411

411:                                              ; preds = %402, %398
  %412 = phi ptr [ %393, %398 ], [ %410, %402 ]
  store ptr %412, ptr %3, align 8, !tbaa !5
  br label %526

413:                                              ; preds = %25
  %414 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %414, ptr %3, align 8, !tbaa !5
  br label %526

415:                                              ; preds = %25
  %416 = getelementptr inbounds i8, ptr %1, i64 2
  %417 = ptrtoint ptr %16 to i64
  %418 = ptrtoint ptr %416 to i64
  %419 = sub i64 %417, %418
  %420 = icmp sgt i64 %419, 1
  br i1 %420, label %421, label %526

421:                                              ; preds = %415
  %422 = getelementptr inbounds i8, ptr %1, i64 3
  %423 = load i8, ptr %422, align 1, !tbaa !9
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %463

425:                                              ; preds = %421
  %426 = load i8, ptr %416, align 1, !tbaa !9
  %427 = icmp eq i8 %426, 93
  br i1 %427, label %428, label %463

428:                                              ; preds = %425
  %429 = getelementptr inbounds i8, ptr %1, i64 4
  %430 = ptrtoint ptr %429 to i64
  %431 = sub i64 %417, %430
  %432 = icmp sgt i64 %431, 1
  br i1 %432, label %433, label %526

433:                                              ; preds = %428
  %434 = getelementptr inbounds i8, ptr %1, i64 5
  %435 = load i8, ptr %434, align 1, !tbaa !9
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %463

437:                                              ; preds = %433
  %438 = load i8, ptr %429, align 1, !tbaa !9
  %439 = icmp eq i8 %438, 62
  br i1 %439, label %440, label %463

440:                                              ; preds = %437
  store ptr %429, ptr %3, align 8, !tbaa !5
  br label %526

441:                                              ; preds = %25
  %442 = ptrtoint ptr %16 to i64
  %443 = sub i64 %442, %8
  %444 = icmp slt i64 %443, 2
  br i1 %444, label %526, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds i8, ptr %1, i64 2
  br label %463

447:                                              ; preds = %25
  %448 = ptrtoint ptr %16 to i64
  %449 = sub i64 %448, %8
  %450 = icmp slt i64 %449, 3
  br i1 %450, label %526, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds i8, ptr %1, i64 3
  br label %463

453:                                              ; preds = %19, %19, %19, %19, %25
  %454 = ptrtoint ptr %16 to i64
  %455 = sub i64 %454, %8
  %456 = icmp slt i64 %455, 4
  br i1 %456, label %526, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, ptr %1, i64 4
  br label %463

459:                                              ; preds = %19, %19, %19, %19, %22, %25, %25, %25
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %526

460:                                              ; preds = %19, %22, %25
  %461 = getelementptr inbounds i8, ptr %1, i64 2
  %462 = ptrtoint ptr %16 to i64
  br label %463

463:                                              ; preds = %433, %437, %421, %425, %460, %457, %451, %445
  %464 = phi i64 [ %417, %433 ], [ %417, %437 ], [ %417, %421 ], [ %417, %425 ], [ %462, %460 ], [ %454, %457 ], [ %448, %451 ], [ %442, %445 ]
  %465 = phi ptr [ %416, %433 ], [ %416, %437 ], [ %416, %421 ], [ %416, %425 ], [ %461, %460 ], [ %458, %457 ], [ %452, %451 ], [ %446, %445 ]
  %466 = ptrtoint ptr %465 to i64
  %467 = sub i64 %464, %466
  %468 = icmp sgt i64 %467, 1
  br i1 %468, label %469, label %524

469:                                              ; preds = %463, %519
  %470 = phi i64 [ %522, %519 ], [ %467, %463 ]
  %471 = phi ptr [ %520, %519 ], [ %465, %463 ]
  %472 = getelementptr inbounds i8, ptr %471, i64 1
  %473 = load i8, ptr %472, align 1, !tbaa !9
  switch i8 %473, label %517 [
    i8 0, label %477
    i8 -40, label %489
    i8 -39, label %489
    i8 -38, label %489
    i8 -37, label %489
    i8 -36, label %516
    i8 -35, label %516
    i8 -34, label %516
    i8 -33, label %516
    i8 -1, label %474
  ]

474:                                              ; preds = %469
  %475 = load i8, ptr %471, align 1, !tbaa !9
  %476 = icmp ugt i8 %475, -3
  br i1 %476, label %516, label %517

477:                                              ; preds = %469
  %478 = load i8, ptr %471, align 1, !tbaa !9
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !9
  switch i8 %481, label %517 [
    i8 5, label %482
    i8 6, label %484
    i8 7, label %489
    i8 4, label %494
    i8 3, label %516
    i8 2, label %516
    i8 0, label %516
    i8 1, label %516
    i8 8, label %516
    i8 9, label %516
    i8 10, label %516
  ]

482:                                              ; preds = %477
  %483 = getelementptr inbounds i8, ptr %471, i64 2
  br label %519

484:                                              ; preds = %477
  %485 = icmp eq i64 %470, 2
  br i1 %485, label %486, label %487

486:                                              ; preds = %484
  store ptr %471, ptr %3, align 8, !tbaa !5
  br label %526

487:                                              ; preds = %484
  %488 = getelementptr inbounds i8, ptr %471, i64 3
  br label %519

489:                                              ; preds = %469, %469, %469, %469, %477
  %490 = icmp ult i64 %470, 4
  br i1 %490, label %491, label %492

491:                                              ; preds = %489
  store ptr %471, ptr %3, align 8, !tbaa !5
  br label %526

492:                                              ; preds = %489
  %493 = getelementptr inbounds i8, ptr %471, i64 4
  br label %519

494:                                              ; preds = %477
  %495 = icmp ugt i64 %470, 3
  br i1 %495, label %496, label %516

496:                                              ; preds = %494
  %497 = getelementptr inbounds i8, ptr %471, i64 2
  %498 = getelementptr inbounds i8, ptr %471, i64 3
  %499 = load i8, ptr %498, align 1, !tbaa !9
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %501, label %519

501:                                              ; preds = %496
  %502 = load i8, ptr %497, align 1, !tbaa !9
  %503 = icmp eq i8 %502, 93
  br i1 %503, label %504, label %519

504:                                              ; preds = %501
  %505 = icmp ugt i64 %470, 5
  br i1 %505, label %506, label %516

506:                                              ; preds = %504
  %507 = getelementptr inbounds i8, ptr %471, i64 5
  %508 = load i8, ptr %507, align 1, !tbaa !9
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %519

510:                                              ; preds = %506
  %511 = getelementptr inbounds i8, ptr %471, i64 4
  %512 = load i8, ptr %511, align 1, !tbaa !9
  %513 = icmp eq i8 %512, 62
  br i1 %513, label %514, label %519

514:                                              ; preds = %510
  %515 = getelementptr inbounds i8, ptr %471, i64 4
  store ptr %515, ptr %3, align 8, !tbaa !5
  br label %526

516:                                              ; preds = %469, %469, %469, %469, %474, %494, %504, %477, %477, %477, %477, %477, %477, %477
  store ptr %471, ptr %3, align 8, !tbaa !5
  br label %526

517:                                              ; preds = %469, %474, %477
  %518 = getelementptr inbounds i8, ptr %471, i64 2
  br label %519

519:                                              ; preds = %506, %510, %496, %501, %517, %492, %487, %482
  %520 = phi ptr [ %518, %517 ], [ %493, %492 ], [ %488, %487 ], [ %483, %482 ], [ %497, %501 ], [ %497, %496 ], [ %497, %510 ], [ %497, %506 ]
  %521 = ptrtoint ptr %520 to i64
  %522 = sub i64 %464, %521
  %523 = icmp sgt i64 %522, 1
  br i1 %523, label %469, label %524, !llvm.loop !101

524:                                              ; preds = %519, %463
  %525 = phi ptr [ %465, %463 ], [ %520, %519 ]
  store ptr %525, ptr %3, align 8, !tbaa !5
  br label %526

526:                                              ; preds = %209, %202, %382, %262, %356, %381, %379, %378, %365, %362, %361, %355, %353, %352, %350, %349, %346, %345, %306, %305, %304, %302, %301, %299, %298, %297, %261, %258, %256, %255, %253, %252, %251, %217, %214, %184, %182, %180, %145, %143, %138, %103, %100, %99, %96, %93, %79, %78, %76, %75, %73, %72, %67, %66, %30, %453, %447, %441, %428, %415, %392, %6, %4, %524, %516, %514, %491, %486, %459, %440, %413, %411, %389
  %527 = phi i32 [ -1, %6 ], [ 6, %516 ], [ 0, %514 ], [ 6, %491 ], [ 6, %486 ], [ 6, %524 ], [ 0, %459 ], [ 0, %440 ], [ 7, %413 ], [ 7, %411 ], [ %391, %389 ], [ -4, %4 ], [ -3, %392 ], [ -5, %415 ], [ -5, %428 ], [ -2, %441 ], [ -2, %447 ], [ -2, %453 ], [ 0, %217 ], [ %102, %100 ], [ 0, %99 ], [ %98, %96 ], [ %95, %93 ], [ 0, %78 ], [ 0, %75 ], [ 0, %72 ], [ 0, %381 ], [ 4, %379 ], [ 0, %378 ], [ 2, %362 ], [ 0, %361 ], [ 0, %355 ], [ 0, %352 ], [ 0, %349 ], [ %348, %346 ], [ 0, %345 ], [ 0, %261 ], [ 0, %305 ], [ 0, %304 ], [ 0, %301 ], [ 0, %298 ], [ 0, %297 ], [ 0, %258 ], [ 0, %255 ], [ 0, %252 ], [ 0, %251 ], [ 0, %66 ], [ -1, %30 ], [ -2, %73 ], [ -2, %76 ], [ -1, %79 ], [ -2, %253 ], [ -2, %256 ], [ -2, %299 ], [ -2, %302 ], [ -2, %350 ], [ -2, %353 ], [ -1, %365 ], [ -1, %103 ], [ -2, %143 ], [ -2, %145 ], [ -2, %180 ], [ -2, %182 ], [ -1, %184 ], [ -1, %138 ], [ %216, %214 ], [ -1, %306 ], [ -1, %67 ], [ -1, %356 ], [ -1, %262 ], [ -1, %382 ], [ -1, %202 ], [ -1, %209 ]
  ret i32 %527
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_cdataSectionTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %131

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = xor i1 %13, true
  %18 = or i1 %11, %17
  br i1 %18, label %19, label %131

19:                                               ; preds = %6
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %96 [
    i8 0, label %25
    i8 -40, label %90
    i8 -39, label %90
    i8 -38, label %90
    i8 -37, label %90
    i8 -36, label %128
    i8 -35, label %128
    i8 -34, label %128
    i8 -33, label %128
    i8 -1, label %22
  ]

22:                                               ; preds = %19
  %23 = load i8, ptr %1, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %128, label %96

25:                                               ; preds = %19
  %26 = load i8, ptr %1, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !9
  switch i8 %29, label %96 [
    i8 4, label %30
    i8 9, label %57
    i8 10, label %76
    i8 5, label %78
    i8 6, label %84
    i8 7, label %90
    i8 0, label %128
    i8 1, label %128
    i8 8, label %128
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = ptrtoint ptr %16 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = icmp sgt i64 %34, 1
  br i1 %35, label %36, label %131

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %1, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load i8, ptr %31, align 1, !tbaa !9
  %42 = icmp eq i8 %41, 93
  br i1 %42, label %43, label %99

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %1, i64 4
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %32, %45
  %47 = icmp sgt i64 %46, 1
  br i1 %47, label %48, label %131

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %1, i64 5
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %48
  %53 = load i8, ptr %44, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 62
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, ptr %1, i64 6
  br label %128

57:                                               ; preds = %25
  %58 = getelementptr inbounds i8, ptr %1, i64 2
  %59 = ptrtoint ptr %16 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp sgt i64 %61, 1
  br i1 %62, label %63, label %131

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %1, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %128

67:                                               ; preds = %63
  %68 = load i8, ptr %58, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = freeze i8 %71
  %73 = icmp eq i8 %72, 10
  %74 = getelementptr inbounds i8, ptr %1, i64 4
  %75 = select i1 %73, ptr %74, ptr %58
  br label %128

76:                                               ; preds = %25
  %77 = getelementptr inbounds i8, ptr %1, i64 2
  br label %128

78:                                               ; preds = %25
  %79 = ptrtoint ptr %16 to i64
  %80 = sub i64 %79, %8
  %81 = icmp slt i64 %80, 2
  br i1 %81, label %131, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %1, i64 2
  br label %99

84:                                               ; preds = %25
  %85 = ptrtoint ptr %16 to i64
  %86 = sub i64 %85, %8
  %87 = icmp slt i64 %86, 3
  br i1 %87, label %131, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %1, i64 3
  br label %99

90:                                               ; preds = %19, %19, %19, %19, %25
  %91 = ptrtoint ptr %16 to i64
  %92 = sub i64 %91, %8
  %93 = icmp slt i64 %92, 4
  br i1 %93, label %131, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %1, i64 4
  br label %99

96:                                               ; preds = %19, %22, %25
  %97 = getelementptr inbounds i8, ptr %1, i64 2
  %98 = ptrtoint ptr %16 to i64
  br label %99

99:                                               ; preds = %48, %52, %36, %40, %96, %94, %88, %82
  %100 = phi i64 [ %32, %48 ], [ %32, %52 ], [ %32, %36 ], [ %32, %40 ], [ %98, %96 ], [ %91, %94 ], [ %85, %88 ], [ %79, %82 ]
  %101 = phi ptr [ %31, %48 ], [ %31, %52 ], [ %31, %36 ], [ %31, %40 ], [ %97, %96 ], [ %95, %94 ], [ %89, %88 ], [ %83, %82 ]
  %102 = ptrtoint ptr %101 to i64
  %103 = sub i64 %100, %102
  %104 = icmp sgt i64 %103, 1
  br i1 %104, label %105, label %128

105:                                              ; preds = %99, %122
  %106 = phi i64 [ %126, %122 ], [ %103, %99 ]
  %107 = phi ptr [ %124, %122 ], [ %101, %99 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !9
  switch i8 %109, label %122 [
    i8 0, label %113
    i8 -40, label %120
    i8 -39, label %120
    i8 -38, label %120
    i8 -37, label %120
    i8 -36, label %128
    i8 -35, label %128
    i8 -34, label %128
    i8 -33, label %128
    i8 -1, label %110
  ]

110:                                              ; preds = %105
  %111 = load i8, ptr %107, align 1, !tbaa !9
  %112 = icmp ugt i8 %111, -3
  br i1 %112, label %128, label %122

113:                                              ; preds = %105
  %114 = load i8, ptr %107, align 1, !tbaa !9
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !9
  switch i8 %117, label %122 [
    i8 4, label %128
    i8 6, label %118
    i8 7, label %120
    i8 0, label %128
    i8 1, label %128
    i8 8, label %128
    i8 9, label %128
    i8 10, label %128
  ]

118:                                              ; preds = %113
  %119 = icmp eq i64 %106, 2
  br i1 %119, label %128, label %122

120:                                              ; preds = %105, %105, %105, %105, %113
  %121 = icmp ult i64 %106, 4
  br i1 %121, label %128, label %122

122:                                              ; preds = %113, %110, %105, %120, %118
  %123 = phi i64 [ 3, %118 ], [ 4, %120 ], [ 2, %105 ], [ 2, %110 ], [ 2, %113 ]
  %124 = getelementptr inbounds i8, ptr %107, i64 %123
  %125 = ptrtoint ptr %124 to i64
  %126 = sub i64 %100, %125
  %127 = icmp sgt i64 %126, 1
  br i1 %127, label %105, label %128, !llvm.loop !102

128:                                              ; preds = %113, %113, %113, %113, %113, %113, %122, %110, %105, %105, %105, %105, %120, %118, %99, %25, %25, %25, %22, %19, %19, %19, %19, %63, %67, %55, %76
  %129 = phi ptr [ %77, %76 ], [ %56, %55 ], [ %58, %63 ], [ %75, %67 ], [ %1, %19 ], [ %1, %19 ], [ %1, %19 ], [ %1, %19 ], [ %1, %22 ], [ %1, %25 ], [ %1, %25 ], [ %1, %25 ], [ %101, %99 ], [ %107, %118 ], [ %107, %120 ], [ %107, %105 ], [ %107, %105 ], [ %107, %105 ], [ %107, %105 ], [ %107, %110 ], [ %107, %113 ], [ %107, %113 ], [ %107, %113 ], [ %107, %113 ], [ %107, %113 ], [ %107, %113 ], [ %124, %122 ]
  %130 = phi i32 [ 7, %76 ], [ 40, %55 ], [ 7, %63 ], [ 7, %67 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %22 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 6, %99 ], [ 6, %118 ], [ 6, %120 ], [ 6, %105 ], [ 6, %105 ], [ 6, %105 ], [ 6, %105 ], [ 6, %110 ], [ 6, %122 ], [ 6, %113 ], [ 6, %113 ], [ 6, %113 ], [ 6, %113 ], [ 6, %113 ], [ 6, %113 ]
  store ptr %129, ptr %3, align 8, !tbaa !5
  br label %131

131:                                              ; preds = %128, %90, %84, %78, %57, %43, %30, %6, %4
  %132 = phi i32 [ -1, %6 ], [ -4, %4 ], [ -1, %30 ], [ -1, %43 ], [ -1, %57 ], [ -2, %78 ], [ -2, %84 ], [ -2, %90 ], [ %130, %128 ]
  ret i32 %132
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_ignoreSectionTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  %10 = and i64 %7, -2
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = select i1 %9, ptr %2, ptr %11
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %6
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %107

16:                                               ; preds = %4, %98
  %17 = phi i64 [ %102, %98 ], [ %14, %4 ]
  %18 = phi i32 [ %100, %98 ], [ 0, %4 ]
  %19 = phi ptr [ %99, %98 ], [ %1, %4 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %96 [
    i8 0, label %25
    i8 -40, label %36
    i8 -39, label %36
    i8 -38, label %36
    i8 -37, label %36
    i8 -36, label %104
    i8 -35, label %104
    i8 -34, label %104
    i8 -33, label %104
    i8 -1, label %22
  ]

22:                                               ; preds = %16
  %23 = load i8, ptr %19, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %104, label %96

25:                                               ; preds = %16
  %26 = load i8, ptr %19, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !9
  switch i8 %29, label %96 [
    i8 5, label %30
    i8 6, label %32
    i8 7, label %36
    i8 0, label %104
    i8 1, label %104
    i8 8, label %104
    i8 2, label %40
    i8 4, label %67
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %19, i64 2
  br label %98

32:                                               ; preds = %25
  %33 = icmp eq i64 %17, 2
  br i1 %33, label %107, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds i8, ptr %19, i64 3
  br label %98

36:                                               ; preds = %16, %16, %16, %16, %25
  %37 = icmp ult i64 %17, 4
  br i1 %37, label %107, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %19, i64 4
  br label %98

40:                                               ; preds = %25
  %41 = getelementptr inbounds i8, ptr %19, i64 2
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %13, %42
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %107

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, ptr %19, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load i8, ptr %41, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 33
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %19, i64 4
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %13, %54
  %56 = icmp sgt i64 %55, 1
  br i1 %56, label %57, label %107

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %19, i64 5
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %57
  %62 = load i8, ptr %53, align 1, !tbaa !9
  %63 = icmp eq i8 %62, 91
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = add nsw i32 %18, 1
  %66 = getelementptr inbounds i8, ptr %19, i64 6
  br label %98

67:                                               ; preds = %25
  %68 = getelementptr inbounds i8, ptr %19, i64 2
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %13, %69
  %71 = icmp sgt i64 %70, 1
  br i1 %71, label %72, label %107

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %19, i64 3
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load i8, ptr %68, align 1, !tbaa !9
  %78 = icmp eq i8 %77, 93
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %19, i64 4
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %13, %81
  %83 = icmp sgt i64 %82, 1
  br i1 %83, label %84, label %107

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %19, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i8, ptr %80, align 1, !tbaa !9
  %90 = icmp eq i8 %89, 62
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = getelementptr inbounds i8, ptr %19, i64 6
  %93 = icmp eq i32 %18, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = add nsw i32 %18, -1
  br label %98

96:                                               ; preds = %16, %22, %25
  %97 = getelementptr inbounds i8, ptr %19, i64 2
  br label %98

98:                                               ; preds = %72, %76, %94, %88, %84, %45, %49, %64, %61, %57, %96, %38, %34, %30
  %99 = phi ptr [ %97, %96 ], [ %92, %94 ], [ %80, %88 ], [ %80, %84 ], [ %68, %76 ], [ %68, %72 ], [ %66, %64 ], [ %53, %61 ], [ %53, %57 ], [ %41, %49 ], [ %41, %45 ], [ %39, %38 ], [ %35, %34 ], [ %31, %30 ]
  %100 = phi i32 [ %18, %96 ], [ %95, %94 ], [ %18, %88 ], [ %18, %84 ], [ %18, %76 ], [ %18, %72 ], [ %65, %64 ], [ %18, %61 ], [ %18, %57 ], [ %18, %49 ], [ %18, %45 ], [ %18, %38 ], [ %18, %34 ], [ %18, %30 ]
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %13, %101
  %103 = icmp sgt i64 %102, 1
  br i1 %103, label %16, label %107, !llvm.loop !103

104:                                              ; preds = %91, %25, %25, %25, %22, %16, %16, %16, %16
  %105 = phi ptr [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %22 ], [ %19, %25 ], [ %19, %25 ], [ %19, %25 ], [ %92, %91 ]
  %106 = phi i32 [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %22 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 42, %91 ]
  store ptr %105, ptr %3, align 8, !tbaa !5
  br label %107

107:                                              ; preds = %32, %36, %40, %52, %67, %79, %98, %104, %4
  %108 = phi i32 [ -1, %4 ], [ %106, %104 ], [ -2, %32 ], [ -2, %36 ], [ -1, %40 ], [ -1, %52 ], [ -1, %67 ], [ -1, %79 ], [ -1, %98 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_attributeValueTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %69

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %69

11:                                               ; preds = %6, %62
  %12 = phi ptr [ %64, %62 ], [ %1, %6 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %62 [
    i8 0, label %15
    i8 -40, label %21
    i8 -39, label %21
    i8 -38, label %21
    i8 -37, label %21
  ]

15:                                               ; preds = %11
  %16 = load i8, ptr %12, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %62 [
    i8 21, label %57
    i8 6, label %20
    i8 7, label %21
    i8 3, label %22
    i8 2, label %28
    i8 10, label %29
    i8 9, label %34
  ]

20:                                               ; preds = %15
  br label %62

21:                                               ; preds = %11, %11, %11, %11, %15
  br label %62

22:                                               ; preds = %15
  %23 = icmp eq ptr %12, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = tail call fastcc i32 @little2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %69

27:                                               ; preds = %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

28:                                               ; preds = %15
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

29:                                               ; preds = %15
  %30 = icmp eq ptr %12, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %69

33:                                               ; preds = %29
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

34:                                               ; preds = %15
  %35 = icmp eq ptr %12, %1
  br i1 %35, label %36, label %56

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %1, i64 2
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %1, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i8, ptr %37, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = freeze i8 %49
  %51 = icmp eq i8 %50, 10
  %52 = getelementptr inbounds i8, ptr %1, i64 4
  %53 = select i1 %51, ptr %52, ptr %37
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi ptr [ %37, %41 ], [ %53, %45 ]
  store ptr %55, ptr %3, align 8, !tbaa !5
  br label %69

56:                                               ; preds = %34
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

57:                                               ; preds = %15
  %58 = icmp eq ptr %12, %1
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %69

61:                                               ; preds = %57
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

62:                                               ; preds = %15, %11, %21, %20
  %63 = phi i64 [ 4, %21 ], [ 3, %20 ], [ 2, %11 ], [ 2, %15 ]
  %64 = getelementptr inbounds i8, ptr %12, i64 %63
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %7, %65
  %67 = icmp sgt i64 %66, 1
  br i1 %67, label %11, label %68, !llvm.loop !104

68:                                               ; preds = %62
  store ptr %64, ptr %3, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %36, %6, %4, %68, %61, %59, %56, %54, %33, %31, %28, %27, %24
  %70 = phi i32 [ 39, %59 ], [ 6, %61 ], [ 7, %54 ], [ 6, %56 ], [ 7, %31 ], [ 6, %33 ], [ 0, %28 ], [ %26, %24 ], [ 6, %27 ], [ 6, %68 ], [ -4, %4 ], [ -1, %6 ], [ -3, %36 ]
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_entityValueTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %71

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %71

11:                                               ; preds = %6, %64
  %12 = phi ptr [ %66, %64 ], [ %1, %6 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %64 [
    i8 0, label %15
    i8 -40, label %21
    i8 -39, label %21
    i8 -38, label %21
    i8 -37, label %21
  ]

15:                                               ; preds = %11
  %16 = load i8, ptr %12, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %64 [
    i8 9, label %41
    i8 6, label %20
    i8 7, label %21
    i8 3, label %22
    i8 30, label %28
    i8 10, label %36
  ]

20:                                               ; preds = %15
  br label %64

21:                                               ; preds = %11, %11, %11, %11, %15
  br label %64

22:                                               ; preds = %15
  %23 = icmp eq ptr %12, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = tail call fastcc i32 @little2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %71

27:                                               ; preds = %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

28:                                               ; preds = %15
  %29 = icmp eq ptr %12, %1
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = tail call fastcc i32 @little2_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef nonnull %2, ptr noundef %3), !range !52
  %33 = icmp eq i32 %32, 22
  %34 = select i1 %33, i32 0, i32 %32
  br label %71

35:                                               ; preds = %28
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

36:                                               ; preds = %15
  %37 = icmp eq ptr %12, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %39, ptr %3, align 8, !tbaa !5
  br label %71

40:                                               ; preds = %36
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

41:                                               ; preds = %15
  %42 = icmp eq ptr %12, %1
  br i1 %42, label %43, label %63

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %1, i64 2
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %7, %45
  %47 = icmp sgt i64 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %1, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i8, ptr %44, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = freeze i8 %56
  %58 = icmp eq i8 %57, 10
  %59 = getelementptr inbounds i8, ptr %1, i64 4
  %60 = select i1 %58, ptr %59, ptr %44
  br label %61

61:                                               ; preds = %52, %48
  %62 = phi ptr [ %44, %48 ], [ %60, %52 ]
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %71

63:                                               ; preds = %41
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

64:                                               ; preds = %15, %11, %21, %20
  %65 = phi i64 [ 4, %21 ], [ 3, %20 ], [ 2, %11 ], [ 2, %15 ]
  %66 = getelementptr inbounds i8, ptr %12, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %7, %67
  %69 = icmp sgt i64 %68, 1
  br i1 %69, label %11, label %70, !llvm.loop !105

70:                                               ; preds = %64
  store ptr %66, ptr %3, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %43, %6, %4, %70, %63, %61, %40, %38, %35, %30, %27, %24
  %72 = phi i32 [ 7, %61 ], [ 6, %63 ], [ 7, %38 ], [ 6, %40 ], [ %34, %30 ], [ 6, %35 ], [ %26, %24 ], [ 6, %27 ], [ 6, %70 ], [ -4, %4 ], [ -1, %6 ], [ -3, %43 ]
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @little2_nameMatchesAscii(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = load i8, ptr %3, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %2 to i64
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i8 [ %5, %7 ], [ %26, %23 ]
  %11 = phi ptr [ %3, %7 ], [ %25, %23 ]
  %12 = phi ptr [ %1, %7 ], [ %24, %23 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %8, %13
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i8, ptr %12, align 1, !tbaa !9
  %22 = icmp eq i8 %21, %10
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %12, i64 2
  %25 = getelementptr inbounds i8, ptr %11, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %9, !llvm.loop !106

28:                                               ; preds = %23, %4
  %29 = phi ptr [ %1, %4 ], [ %24, %23 ]
  %30 = icmp eq ptr %29, %2
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %16, %20, %9, %28
  %33 = phi i32 [ %31, %28 ], [ 0, %9 ], [ 0, %20 ], [ 0, %16 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @little2_nameLength(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  br label %3

3:                                                ; preds = %32, %2
  %4 = phi ptr [ %1, %2 ], [ %34, %32 ]
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !9
  switch i8 %6, label %32 [
    i8 0, label %10
    i8 -40, label %17
    i8 -39, label %17
    i8 -38, label %17
    i8 -37, label %17
    i8 -36, label %18
    i8 -35, label %18
    i8 -34, label %18
    i8 -33, label %18
    i8 -1, label %7
  ]

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !tbaa !9
  %9 = icmp ugt i8 %8, -3
  br i1 %9, label %18, label %32

10:                                               ; preds = %3
  %11 = load i8, ptr %4, align 1, !tbaa !9
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = add i8 %14, -5
  %16 = icmp ult i8 %15, 25
  br i1 %16, label %23, label %18

17:                                               ; preds = %3, %3, %3, %3
  br label %32

18:                                               ; preds = %23, %10, %3, %3, %3, %3, %7
  %19 = ptrtoint ptr %4 to i64
  %20 = ptrtoint ptr %1 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  ret i32 %22

23:                                               ; preds = %10
  %24 = zext nneg i8 %15 to i32
  %25 = lshr i32 25034759, %24
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %23
  %29 = zext nneg i8 %15 to i64
  %30 = getelementptr inbounds [25 x i64], ptr @switch.table.big2_nameLength, i64 0, i64 %29
  %31 = load i64, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %7, %3, %17
  %33 = phi i64 [ 4, %17 ], [ 2, %3 ], [ 2, %7 ], [ %31, %28 ]
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  br label %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal ptr @little2_skipS(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #7 {
  %3 = getelementptr inbounds i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %1, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %17 [
    i8 10, label %12
    i8 9, label %12
    i8 21, label %12
  ]

12:                                               ; preds = %6, %6, %6
  %13 = getelementptr inbounds i8, ptr %7, i64 2
  %14 = getelementptr inbounds i8, ptr %7, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %6, %12, %2
  %18 = phi ptr [ %1, %2 ], [ %13, %12 ], [ %7, %6 ]
  ret ptr %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @little2_getAtts(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi ptr [ %1, %4 ], [ %14, %13 ]
  %7 = phi i32 [ 1, %4 ], [ %15, %13 ]
  %8 = phi i32 [ 0, %4 ], [ %16, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %17, %13 ]
  %10 = getelementptr inbounds i8, ptr %6, i64 2
  %11 = getelementptr inbounds i8, ptr %6, i64 3
  %12 = load i8, ptr %11, align 1, !tbaa !9
  switch i8 %12, label %55 [
    i8 0, label %23
    i8 -40, label %44
    i8 -39, label %44
    i8 -38, label %44
    i8 -37, label %44
    i8 -36, label %13
    i8 -35, label %13
    i8 -34, label %13
    i8 -33, label %13
    i8 -1, label %18
  ]

13:                                               ; preds = %5, %5, %5, %5, %18, %137, %147, %102, %146, %82, %84, %65, %67, %57, %59, %36, %40, %38, %28, %32, %30, %52, %55, %71, %78, %88, %95, %99, %97, %103, %105, %133, %136, %138, %140, %143, %23
  %14 = phi ptr [ %10, %23 ], [ %10, %143 ], [ %10, %140 ], [ %10, %138 ], [ %10, %136 ], [ %10, %133 ], [ %10, %105 ], [ %10, %103 ], [ %10, %99 ], [ %10, %97 ], [ %10, %95 ], [ %10, %88 ], [ %10, %78 ], [ %10, %71 ], [ %10, %55 ], [ %54, %52 ], [ %10, %30 ], [ %10, %32 ], [ %10, %28 ], [ %11, %38 ], [ %11, %40 ], [ %11, %36 ], [ %10, %59 ], [ %10, %57 ], [ %10, %67 ], [ %10, %65 ], [ %10, %84 ], [ %10, %82 ], [ %10, %102 ], [ %10, %146 ], [ %10, %137 ], [ %10, %147 ], [ %10, %18 ], [ %10, %5 ], [ %10, %5 ], [ %10, %5 ], [ %10, %5 ]
  %15 = phi i32 [ %7, %23 ], [ 2, %143 ], [ 2, %140 ], [ 2, %138 ], [ 2, %136 ], [ 2, %133 ], [ 2, %105 ], [ 2, %103 ], [ %7, %99 ], [ %7, %97 ], [ 0, %95 ], [ 2, %88 ], [ 0, %78 ], [ 2, %71 ], [ %7, %55 ], [ %53, %52 ], [ 1, %30 ], [ 1, %32 ], [ %7, %28 ], [ 1, %38 ], [ 1, %40 ], [ %7, %36 ], [ 1, %59 ], [ 1, %57 ], [ 2, %67 ], [ 2, %65 ], [ 2, %84 ], [ 2, %82 ], [ 0, %102 ], [ %7, %146 ], [ 0, %137 ], [ %7, %147 ], [ %7, %18 ], [ %7, %5 ], [ %7, %5 ], [ %7, %5 ], [ %7, %5 ]
  %16 = phi i32 [ %8, %23 ], [ %8, %143 ], [ %8, %140 ], [ %8, %138 ], [ %8, %136 ], [ %8, %133 ], [ %8, %105 ], [ %8, %103 ], [ %8, %99 ], [ %8, %97 ], [ %96, %95 ], [ %8, %88 ], [ %79, %78 ], [ %8, %71 ], [ %8, %55 ], [ %8, %52 ], [ %8, %30 ], [ %8, %32 ], [ %8, %28 ], [ %8, %38 ], [ %8, %40 ], [ %8, %36 ], [ %8, %59 ], [ %8, %57 ], [ %8, %67 ], [ %8, %65 ], [ %8, %84 ], [ %8, %82 ], [ %8, %102 ], [ %8, %146 ], [ %8, %137 ], [ %8, %147 ], [ %8, %18 ], [ %8, %5 ], [ %8, %5 ], [ %8, %5 ], [ %8, %5 ]
  %17 = phi i32 [ %9, %23 ], [ %9, %143 ], [ %9, %140 ], [ %9, %138 ], [ %9, %136 ], [ %9, %133 ], [ %9, %105 ], [ %9, %103 ], [ %9, %99 ], [ %9, %97 ], [ 13, %95 ], [ %9, %88 ], [ 12, %78 ], [ %9, %71 ], [ %9, %55 ], [ %9, %52 ], [ %9, %30 ], [ %9, %32 ], [ %9, %28 ], [ %9, %38 ], [ %9, %40 ], [ %9, %36 ], [ %9, %59 ], [ %9, %57 ], [ 12, %67 ], [ 12, %65 ], [ 13, %84 ], [ 13, %82 ], [ %9, %102 ], [ %9, %146 ], [ %9, %137 ], [ %9, %147 ], [ %9, %18 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ]
  br label %5

18:                                               ; preds = %5
  %19 = load i8, ptr %10, align 1, !tbaa !9
  %20 = icmp ult i8 %19, -2
  %21 = icmp eq i32 %7, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %57, label %13

23:                                               ; preds = %5
  %24 = load i8, ptr %10, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !9
  switch i8 %27, label %13 [
    i8 5, label %28
    i8 6, label %36
    i8 7, label %44
    i8 29, label %55
    i8 22, label %55
    i8 24, label %55
    i8 12, label %63
    i8 13, label %80
    i8 3, label %97
    i8 21, label %102
    i8 9, label %137
    i8 10, label %137
    i8 11, label %143
    i8 17, label %143
  ]

28:                                               ; preds = %23
  %29 = icmp eq i32 %7, 0
  br i1 %29, label %30, label %13

30:                                               ; preds = %28
  %31 = icmp slt i32 %8, %2
  br i1 %31, label %32, label %13

32:                                               ; preds = %30
  %33 = sext i32 %8 to i64
  %34 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %33
  store ptr %10, ptr %34, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %33, i32 3
  store i8 1, ptr %35, align 8, !tbaa !78
  br label %13

36:                                               ; preds = %23
  %37 = icmp eq i32 %7, 0
  br i1 %37, label %38, label %13

38:                                               ; preds = %36
  %39 = icmp slt i32 %8, %2
  br i1 %39, label %40, label %13

40:                                               ; preds = %38
  %41 = sext i32 %8 to i64
  %42 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %41
  store ptr %10, ptr %42, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %41, i32 3
  store i8 1, ptr %43, align 8, !tbaa !78
  br label %13

44:                                               ; preds = %5, %5, %5, %5, %23
  %45 = icmp eq i32 %7, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = icmp slt i32 %8, %2
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = sext i32 %8 to i64
  %50 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %49
  store ptr %10, ptr %50, align 8, !tbaa !76
  %51 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %49, i32 3
  store i8 1, ptr %51, align 8, !tbaa !78
  br label %52

52:                                               ; preds = %46, %48, %44
  %53 = phi i32 [ %7, %44 ], [ 1, %48 ], [ 1, %46 ]
  %54 = getelementptr inbounds i8, ptr %6, i64 4
  br label %13

55:                                               ; preds = %5, %23, %23, %23
  %56 = icmp eq i32 %7, 0
  br i1 %56, label %57, label %13

57:                                               ; preds = %18, %55
  %58 = icmp slt i32 %8, %2
  br i1 %58, label %59, label %13

59:                                               ; preds = %57
  %60 = sext i32 %8 to i64
  %61 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %60
  store ptr %10, ptr %61, align 8, !tbaa !76
  %62 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %60, i32 3
  store i8 1, ptr %62, align 8, !tbaa !78
  br label %13

63:                                               ; preds = %23
  %64 = icmp eq i32 %7, 2
  br i1 %64, label %71, label %65

65:                                               ; preds = %63
  %66 = icmp slt i32 %8, %2
  br i1 %66, label %67, label %13

67:                                               ; preds = %65
  %68 = getelementptr inbounds i8, ptr %6, i64 4
  %69 = sext i32 %8 to i64
  %70 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %69, i32 1
  store ptr %68, ptr %70, align 8, !tbaa !79
  br label %13

71:                                               ; preds = %63
  %72 = icmp eq i32 %9, 12
  br i1 %72, label %73, label %13

73:                                               ; preds = %71
  %74 = icmp slt i32 %8, %2
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = sext i32 %8 to i64
  %77 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %76, i32 2
  store ptr %10, ptr %77, align 8, !tbaa !80
  br label %78

78:                                               ; preds = %75, %73
  %79 = add nsw i32 %8, 1
  br label %13

80:                                               ; preds = %23
  %81 = icmp eq i32 %7, 2
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = icmp slt i32 %8, %2
  br i1 %83, label %84, label %13

84:                                               ; preds = %82
  %85 = getelementptr inbounds i8, ptr %6, i64 4
  %86 = sext i32 %8 to i64
  %87 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %86, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !79
  br label %13

88:                                               ; preds = %80
  %89 = icmp eq i32 %9, 13
  br i1 %89, label %90, label %13

90:                                               ; preds = %88
  %91 = icmp slt i32 %8, %2
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = sext i32 %8 to i64
  %94 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %93, i32 2
  store ptr %10, ptr %94, align 8, !tbaa !80
  br label %95

95:                                               ; preds = %92, %90
  %96 = add nsw i32 %8, 1
  br label %13

97:                                               ; preds = %23
  %98 = icmp slt i32 %8, %2
  br i1 %98, label %99, label %13

99:                                               ; preds = %97
  %100 = sext i32 %8 to i64
  %101 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %100, i32 3
  store i8 0, ptr %101, align 8, !tbaa !78
  br label %13

102:                                              ; preds = %23
  switch i32 %7, label %146 [
    i32 1, label %13
    i32 2, label %103
  ]

103:                                              ; preds = %102
  %104 = icmp slt i32 %8, %2
  br i1 %104, label %105, label %13

105:                                              ; preds = %103
  %106 = sext i32 %8 to i64
  %107 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %106, i32 3
  %108 = load i8, ptr %107, align 8, !tbaa !78
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %13, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %106, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !79
  %113 = icmp ne ptr %10, %112
  %114 = icmp eq i8 %24, 32
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = getelementptr inbounds i8, ptr %6, i64 4
  %118 = getelementptr inbounds i8, ptr %6, i64 5
  %119 = load i8, ptr %118, align 1, !tbaa !9
  switch i8 %119, label %132 [
    i8 0, label %120
    i8 -40, label %133
    i8 -39, label %133
    i8 -38, label %133
    i8 -37, label %133
    i8 -36, label %128
    i8 -35, label %128
    i8 -34, label %128
    i8 -33, label %128
    i8 -1, label %129
  ]

120:                                              ; preds = %116
  %121 = load i8, ptr %117, align 1, !tbaa !9
  %122 = icmp eq i8 %121, 32
  br i1 %122, label %136, label %123

123:                                              ; preds = %120
  %124 = zext i8 %121 to i64
  %125 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !9
  %127 = zext i8 %126 to i32
  br label %133

128:                                              ; preds = %116, %116, %116, %116
  br label %133

129:                                              ; preds = %116
  %130 = load i8, ptr %117, align 1, !tbaa !9
  %131 = icmp ugt i8 %130, -3
  br i1 %131, label %133, label %132

132:                                              ; preds = %116, %129
  br label %133

133:                                              ; preds = %116, %116, %116, %116, %132, %129, %128, %123
  %134 = phi i32 [ %127, %123 ], [ 29, %132 ], [ 8, %128 ], [ 0, %129 ], [ 7, %116 ], [ 7, %116 ], [ 7, %116 ], [ 7, %116 ]
  %135 = icmp eq i32 %134, %9
  br i1 %135, label %136, label %13

136:                                              ; preds = %133, %120, %110
  store i8 0, ptr %107, align 8, !tbaa !78
  br label %13

137:                                              ; preds = %23, %23
  switch i32 %7, label %147 [
    i32 1, label %13
    i32 2, label %138
  ]

138:                                              ; preds = %137
  %139 = icmp slt i32 %8, %2
  br i1 %139, label %140, label %13

140:                                              ; preds = %138
  %141 = sext i32 %8 to i64
  %142 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %141, i32 3
  store i8 0, ptr %142, align 8, !tbaa !78
  br label %13

143:                                              ; preds = %23, %23
  %144 = icmp eq i32 %7, 2
  br i1 %144, label %13, label %145

145:                                              ; preds = %143
  ret i32 %8

146:                                              ; preds = %102
  br label %13

147:                                              ; preds = %137
  br label %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @little2_charRefNumber(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds i8, ptr %1, i64 4
  %4 = getelementptr inbounds i8, ptr %1, i64 5
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %2
  br label %42

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 120
  br i1 %10, label %11, label %7

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %1, i64 6
  br label %13

13:                                               ; preds = %39, %11
  %14 = phi i32 [ 0, %11 ], [ %40, %39 ]
  %15 = phi ptr [ %12, %11 ], [ %41, %39 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load i8, ptr %15, align 1, !tbaa !9
  %21 = icmp eq i8 %20, 59
  br i1 %21, label %60, label %22

22:                                               ; preds = %19
  %23 = sext i8 %20 to i32
  switch i8 %20, label %39 [
    i8 48, label %24
    i8 49, label %24
    i8 50, label %24
    i8 51, label %24
    i8 52, label %24
    i8 53, label %24
    i8 54, label %24
    i8 55, label %24
    i8 56, label %24
    i8 57, label %24
    i8 65, label %28
    i8 66, label %28
    i8 67, label %28
    i8 68, label %28
    i8 69, label %28
    i8 70, label %28
    i8 97, label %32
    i8 98, label %32
    i8 99, label %32
    i8 100, label %32
    i8 101, label %32
    i8 102, label %32
  ]

24:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %25 = shl i32 %14, 4
  %26 = add nsw i32 %23, -48
  %27 = or i32 %26, %25
  br label %36

28:                                               ; preds = %22, %22, %22, %22, %22, %22
  %29 = shl i32 %14, 4
  %30 = add i32 %29, -55
  %31 = add i32 %30, %23
  br label %36

32:                                               ; preds = %22, %22, %22, %22, %22, %22
  %33 = shl i32 %14, 4
  %34 = add i32 %33, -87
  %35 = add i32 %34, %23
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = phi i32 [ %35, %32 ], [ %31, %28 ], [ %27, %24 ]
  %38 = icmp slt i32 %37, 1114112
  br i1 %38, label %39, label %72

39:                                               ; preds = %13, %22, %36
  %40 = phi i32 [ %37, %36 ], [ %14, %22 ], [ %14, %13 ]
  %41 = getelementptr inbounds i8, ptr %15, i64 2
  br label %13, !llvm.loop !107

42:                                               ; preds = %7, %53
  %43 = phi i32 [ %57, %53 ], [ 0, %7 ]
  %44 = phi ptr [ %59, %53 ], [ %3, %7 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i8, ptr %44, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 59
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = sext i8 %49 to i32
  br label %53

53:                                               ; preds = %42, %51
  %54 = phi i32 [ %52, %51 ], [ -1, %42 ]
  %55 = mul nsw i32 %43, 10
  %56 = add i32 %55, -48
  %57 = add i32 %56, %54
  %58 = icmp slt i32 %57, 1114112
  %59 = getelementptr inbounds i8, ptr %44, i64 2
  br i1 %58, label %42, label %72, !llvm.loop !108

60:                                               ; preds = %48, %19
  %61 = phi i32 [ %14, %19 ], [ %43, %48 ]
  %62 = ashr i32 %61, 8
  switch i32 %62, label %71 [
    i32 216, label %72
    i32 217, label %72
    i32 218, label %72
    i32 219, label %72
    i32 220, label %72
    i32 221, label %72
    i32 222, label %72
    i32 223, label %72
    i32 0, label %63
    i32 255, label %68
  ]

63:                                               ; preds = %60
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %71

68:                                               ; preds = %60
  %69 = and i32 %61, -2
  %70 = icmp eq i32 %69, 65534
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %63, %60
  br label %72

72:                                               ; preds = %53, %36, %71, %68, %63, %60, %60, %60, %60, %60, %60, %60, %60
  %73 = phi i32 [ %61, %71 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %63 ], [ -1, %68 ], [ -1, %36 ], [ -1, %53 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @little2_predefinedEntityName(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #9 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv i64 %6, 2
  switch i64 %7, label %104 [
    i64 2, label %8
    i64 3, label %27
    i64 4, label %50
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %1, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %104

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 116
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %1, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %16
  %21 = load i8, ptr %1, align 1, !tbaa !9
  %22 = freeze i8 %21
  %23 = icmp eq i8 %22, 103
  %24 = select i1 %23, i32 62, i32 0
  %25 = icmp eq i8 %22, 108
  %26 = select i1 %25, i32 60, i32 %24
  br label %105

27:                                               ; preds = %3
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load i8, ptr %1, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 97
  br i1 %33, label %34, label %104

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %1, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %1, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 109
  br i1 %41, label %42, label %104

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %1, i64 5
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %1, i64 4
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 112
  br i1 %49, label %105, label %104

50:                                               ; preds = %3
  %51 = getelementptr inbounds i8, ptr %1, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %104

54:                                               ; preds = %50
  %55 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %55, label %104 [
    i8 113, label %56
    i8 97, label %80
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds i8, ptr %1, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %1, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp eq i8 %62, 117
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %1, i64 5
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %1, i64 4
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 111
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %1, i64 7
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %1, i64 6
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 116
  br i1 %79, label %105, label %104

80:                                               ; preds = %54
  %81 = getelementptr inbounds i8, ptr %1, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %1, i64 2
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 112
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %1, i64 5
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %1, i64 4
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = icmp eq i8 %94, 111
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %1, i64 7
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %1, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = icmp eq i8 %102, 115
  br i1 %103, label %105, label %104

104:                                              ; preds = %50, %54, %64, %68, %76, %72, %60, %56, %88, %92, %100, %96, %84, %80, %27, %31, %42, %46, %38, %34, %8, %12, %3
  br label %105

105:                                              ; preds = %20, %16, %100, %76, %46, %104
  %106 = phi i32 [ 0, %104 ], [ 38, %46 ], [ 34, %76 ], [ 39, %100 ], [ 0, %16 ], [ %26, %20 ]
  ret i32 %106
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @little2_updatePosition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %67

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.position, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %62
  %12 = phi ptr [ %1, %9 ], [ %63, %62 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %58 [
    i8 0, label %15
    i8 -40, label %28
    i8 -39, label %28
    i8 -38, label %28
    i8 -37, label %28
  ]

15:                                               ; preds = %11
  %16 = load i8, ptr %12, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %58 [
    i8 5, label %20
    i8 6, label %24
    i8 7, label %28
    i8 10, label %32
    i8 9, label %36
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %12, i64 2
  %22 = load i64, ptr %10, align 8, !tbaa !40
  %23 = add i64 %22, 1
  store i64 %23, ptr %10, align 8, !tbaa !40
  br label %62

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %12, i64 3
  %26 = load i64, ptr %10, align 8, !tbaa !40
  %27 = add i64 %26, 1
  store i64 %27, ptr %10, align 8, !tbaa !40
  br label %62

28:                                               ; preds = %11, %11, %11, %11, %15
  %29 = getelementptr inbounds i8, ptr %12, i64 4
  %30 = load i64, ptr %10, align 8, !tbaa !40
  %31 = add i64 %30, 1
  store i64 %31, ptr %10, align 8, !tbaa !40
  br label %62

32:                                               ; preds = %15
  store i64 0, ptr %10, align 8, !tbaa !40
  %33 = load i64, ptr %3, align 8, !tbaa !43
  %34 = add i64 %33, 1
  store i64 %34, ptr %3, align 8, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %12, i64 2
  br label %62

36:                                               ; preds = %15
  %37 = load i64, ptr %3, align 8, !tbaa !43
  %38 = add i64 %37, 1
  store i64 %38, ptr %3, align 8, !tbaa !43
  %39 = getelementptr inbounds i8, ptr %12, i64 2
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %5, %40
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, ptr %12, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i8, ptr %39, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = freeze i8 %51
  %53 = icmp eq i8 %52, 10
  %54 = getelementptr inbounds i8, ptr %12, i64 4
  %55 = select i1 %53, ptr %54, ptr %39
  br label %56

56:                                               ; preds = %47, %43, %36
  %57 = phi ptr [ %39, %36 ], [ %39, %43 ], [ %55, %47 ]
  store i64 0, ptr %10, align 8, !tbaa !40
  br label %62

58:                                               ; preds = %11, %15
  %59 = getelementptr inbounds i8, ptr %12, i64 2
  %60 = load i64, ptr %10, align 8, !tbaa !40
  %61 = add i64 %60, 1
  store i64 %61, ptr %10, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %58, %56, %32, %28, %24, %20
  %63 = phi ptr [ %59, %58 ], [ %57, %56 ], [ %35, %32 ], [ %29, %28 ], [ %25, %24 ], [ %21, %20 ]
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %5, %64
  %66 = icmp sgt i64 %65, 1
  br i1 %66, label %11, label %67, !llvm.loop !109

67:                                               ; preds = %62, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_isPublicId(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds i8, ptr %2, i64 -2
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %4, %27
  %12 = phi ptr [ %28, %27 ], [ %7, %4 ]
  %13 = phi ptr [ %12, %27 ], [ %1, %4 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load i8, ptr %12, align 1, !tbaa !9
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %26 [
    i8 25, label %27
    i8 24, label %27
    i8 27, label %27
    i8 13, label %27
    i8 31, label %27
    i8 32, label %27
    i8 34, label %27
    i8 35, label %27
    i8 17, label %27
    i8 14, label %27
    i8 15, label %27
    i8 9, label %27
    i8 10, label %27
    i8 18, label %27
    i8 16, label %27
    i8 33, label %27
    i8 30, label %27
    i8 19, label %27
    i8 23, label %27
    i8 21, label %22
    i8 26, label %24
    i8 22, label %24
  ]

22:                                               ; preds = %17
  %23 = icmp eq i8 %18, 9
  br i1 %23, label %32, label %27

24:                                               ; preds = %17, %17
  %25 = icmp sgt i8 %18, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %17, %24
  switch i8 %18, label %32 [
    i8 36, label %27
    i8 64, label %27
  ]

27:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %22, %24, %26, %26
  %28 = getelementptr inbounds i8, ptr %12, i64 2
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 %6, %29
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %11, label %33, !llvm.loop !110

32:                                               ; preds = %26, %11, %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %27, %32, %4
  %34 = phi i32 [ 1, %4 ], [ 0, %32 ], [ 1, %27 ]
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @little2_toUtf8(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, -2
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %13, label %113

13:                                               ; preds = %5
  %14 = ptrtoint ptr %4 to i64
  %15 = ptrtoint ptr %11 to i64
  br label %16

16:                                               ; preds = %13, %109
  %17 = phi ptr [ %6, %13 ], [ %111, %109 ]
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  switch i8 %20, label %42 [
    i8 0, label %22
    i8 1, label %29
    i8 2, label %29
    i8 3, label %29
    i8 4, label %29
    i8 5, label %29
    i8 6, label %29
    i8 7, label %29
    i8 -40, label %62
    i8 -39, label %62
    i8 -38, label %62
    i8 -37, label %62
  ]

22:                                               ; preds = %16
  %23 = icmp sgt i8 %18, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %113, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %28, ptr %3, align 8, !tbaa !5
  store i8 %18, ptr %25, align 1, !tbaa !9
  br label %109

29:                                               ; preds = %22, %16, %16, %16, %16, %16, %16, %16
  %30 = load ptr, ptr %3, align 8, !tbaa !5
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %14, %31
  %33 = icmp slt i64 %32, 2
  br i1 %33, label %113, label %34

34:                                               ; preds = %29
  %35 = tail call i8 @llvm.fshl.i8(i8 %20, i8 %18, i8 2)
  %36 = or i8 %35, -64
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %37, ptr %3, align 8, !tbaa !5
  store i8 %36, ptr %30, align 1, !tbaa !9
  %38 = and i8 %18, 63
  %39 = or disjoint i8 %38, -128
  %40 = load ptr, ptr %3, align 8, !tbaa !5
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %3, align 8, !tbaa !5
  store i8 %39, ptr %40, align 1, !tbaa !9
  br label %109

42:                                               ; preds = %16
  %43 = load ptr, ptr %3, align 8, !tbaa !5
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %14, %44
  %46 = icmp slt i64 %45, 3
  br i1 %46, label %113, label %47

47:                                               ; preds = %42
  %48 = lshr i8 %20, 4
  %49 = or disjoint i8 %48, -32
  %50 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %50, ptr %3, align 8, !tbaa !5
  store i8 %49, ptr %43, align 1, !tbaa !9
  %51 = shl i8 %20, 2
  %52 = and i8 %51, 60
  %53 = lshr i8 %18, 6
  %54 = or disjoint i8 %53, %52
  %55 = or disjoint i8 %54, -128
  %56 = load ptr, ptr %3, align 8, !tbaa !5
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %3, align 8, !tbaa !5
  store i8 %55, ptr %56, align 1, !tbaa !9
  %58 = and i8 %18, 63
  %59 = or disjoint i8 %58, -128
  %60 = load ptr, ptr %3, align 8, !tbaa !5
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %61, ptr %3, align 8, !tbaa !5
  store i8 %59, ptr %60, align 1, !tbaa !9
  br label %109

62:                                               ; preds = %16, %16, %16, %16
  %63 = load ptr, ptr %3, align 8, !tbaa !5
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %14, %64
  %66 = icmp slt i64 %65, 4
  br i1 %66, label %113, label %67

67:                                               ; preds = %62
  %68 = ptrtoint ptr %17 to i64
  %69 = sub i64 %15, %68
  %70 = icmp slt i64 %69, 4
  br i1 %70, label %113, label %71

71:                                               ; preds = %67
  %72 = shl nuw nsw i32 %21, 2
  %73 = and i32 %72, 12
  %74 = zext i8 %18 to i32
  %75 = lshr i32 %74, 6
  %76 = or disjoint i32 %73, %75
  %77 = add nuw nsw i32 %76, 1
  %78 = trunc i32 %77 to i8
  %79 = lshr i8 %78, 2
  %80 = or i8 %79, -16
  %81 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %81, ptr %3, align 8, !tbaa !5
  store i8 %80, ptr %63, align 1, !tbaa !9
  %82 = lshr i32 %74, 2
  %83 = and i32 %82, 15
  %84 = shl nuw nsw i32 %77, 4
  %85 = and i32 %84, 48
  %86 = or disjoint i32 %85, %83
  %87 = trunc i32 %86 to i8
  %88 = or disjoint i8 %87, -128
  %89 = load ptr, ptr %3, align 8, !tbaa !5
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %3, align 8, !tbaa !5
  store i8 %88, ptr %89, align 1, !tbaa !9
  %91 = getelementptr inbounds i8, ptr %17, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = shl i8 %18, 4
  %94 = and i8 %93, 48
  %95 = getelementptr inbounds i8, ptr %17, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = shl i8 %96, 2
  %98 = and i8 %97, 12
  %99 = lshr i8 %92, 6
  %100 = or disjoint i8 %94, %99
  %101 = or disjoint i8 %100, %98
  %102 = or disjoint i8 %101, -128
  %103 = load ptr, ptr %3, align 8, !tbaa !5
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %104, ptr %3, align 8, !tbaa !5
  store i8 %102, ptr %103, align 1, !tbaa !9
  %105 = and i8 %92, 63
  %106 = or disjoint i8 %105, -128
  %107 = load ptr, ptr %3, align 8, !tbaa !5
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %108, ptr %3, align 8, !tbaa !5
  store i8 %106, ptr %107, align 1, !tbaa !9
  br label %109

109:                                              ; preds = %71, %47, %34, %27
  %110 = phi ptr [ %17, %47 ], [ %91, %71 ], [ %17, %34 ], [ %17, %27 ]
  %111 = getelementptr inbounds i8, ptr %110, i64 2
  %112 = icmp ult ptr %111, %11
  br i1 %112, label %16, label %113, !llvm.loop !111

113:                                              ; preds = %109, %67, %62, %42, %29, %24, %5
  %114 = phi ptr [ %6, %5 ], [ %17, %24 ], [ %17, %29 ], [ %17, %42 ], [ %17, %62 ], [ %17, %67 ], [ %111, %109 ]
  %115 = phi i32 [ 0, %5 ], [ 2, %24 ], [ 2, %29 ], [ 2, %42 ], [ 2, %62 ], [ 1, %67 ], [ 0, %109 ]
  store ptr %114, ptr %1, align 8, !tbaa !5
  ret i32 %115
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @little2_toUtf16(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, -2
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  %13 = ptrtoint ptr %4 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %10, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = getelementptr inbounds i8, ptr %11, i64 -1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = and i8 %19, -8
  %21 = icmp eq i8 %20, -40
  %22 = select i1 %21, i64 -2, i64 0
  %23 = getelementptr inbounds i8, ptr %11, i64 %22
  %24 = zext i1 %21 to i32
  br label %25

25:                                               ; preds = %17, %5
  %26 = phi ptr [ %11, %5 ], [ %23, %17 ]
  %27 = phi i32 [ 0, %5 ], [ %24, %17 ]
  %28 = icmp ult ptr %6, %26
  br i1 %28, label %29, label %41

29:                                               ; preds = %25, %33
  %30 = phi ptr [ %37, %33 ], [ %6, %25 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !5
  %32 = icmp ult ptr %31, %4
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i16, ptr %30, align 1
  %35 = getelementptr inbounds i16, ptr %31, i64 1
  store ptr %35, ptr %3, align 8, !tbaa !5
  store i16 %34, ptr %31, align 2, !tbaa !12
  %36 = load ptr, ptr %1, align 8, !tbaa !5
  %37 = getelementptr inbounds i8, ptr %36, i64 2
  store ptr %37, ptr %1, align 8, !tbaa !5
  %38 = icmp ult ptr %37, %26
  br i1 %38, label %29, label %41, !llvm.loop !112

39:                                               ; preds = %29
  %40 = icmp eq ptr %31, %4
  br i1 %40, label %42, label %41

41:                                               ; preds = %33, %25, %39
  br label %42

42:                                               ; preds = %39, %41
  %43 = phi i32 [ %27, %41 ], [ 2, %39 ]
  ret i32 %43
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @little2_scanLit(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %59

10:                                               ; preds = %5, %54
  %11 = phi i64 [ %57, %54 ], [ %8, %5 ]
  %12 = phi ptr [ %55, %54 ], [ %2, %5 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %52 [
    i8 0, label %18
    i8 -40, label %29
    i8 -39, label %29
    i8 -38, label %29
    i8 -37, label %29
    i8 -36, label %33
    i8 -35, label %33
    i8 -34, label %33
    i8 -33, label %33
    i8 -1, label %15
  ]

15:                                               ; preds = %10
  %16 = load i8, ptr %12, align 1, !tbaa !9
  %17 = icmp ugt i8 %16, -3
  br i1 %17, label %33, label %52

18:                                               ; preds = %10
  %19 = load i8, ptr %12, align 1, !tbaa !9
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !9
  switch i8 %22, label %52 [
    i8 5, label %23
    i8 6, label %25
    i8 7, label %29
    i8 0, label %33
    i8 1, label %33
    i8 8, label %33
    i8 12, label %34
    i8 13, label %34
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %12, i64 2
  br label %54

25:                                               ; preds = %18
  %26 = icmp eq i64 %11, 2
  br i1 %26, label %59, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %12, i64 3
  br label %54

29:                                               ; preds = %10, %10, %10, %10, %18
  %30 = icmp ult i64 %11, 4
  br i1 %30, label %59, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, ptr %12, i64 4
  br label %54

33:                                               ; preds = %10, %10, %10, %10, %15, %18, %18, %18
  store ptr %12, ptr %4, align 8, !tbaa !5
  br label %59

34:                                               ; preds = %18, %18
  %35 = zext nneg i8 %22 to i32
  %36 = getelementptr inbounds i8, ptr %12, i64 2
  %37 = icmp eq i32 %35, %0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = ptrtoint ptr %36 to i64
  %40 = sub i64 %6, %39
  %41 = icmp sgt i64 %40, 1
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  store ptr %36, ptr %4, align 8, !tbaa !5
  %43 = getelementptr inbounds i8, ptr %12, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8, ptr %36, align 1, !tbaa !9
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  switch i8 %50, label %51 [
    i8 21, label %59
    i8 9, label %59
    i8 10, label %59
    i8 11, label %59
    i8 30, label %59
    i8 20, label %59
  ]

51:                                               ; preds = %42, %46
  br label %59

52:                                               ; preds = %10, %15, %18
  %53 = getelementptr inbounds i8, ptr %12, i64 2
  br label %54

54:                                               ; preds = %23, %27, %31, %52, %34
  %55 = phi ptr [ %53, %52 ], [ %36, %34 ], [ %32, %31 ], [ %28, %27 ], [ %24, %23 ]
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %6, %56
  %58 = icmp sgt i64 %57, 1
  br i1 %58, label %10, label %59

59:                                               ; preds = %54, %25, %29, %5, %46, %46, %46, %46, %46, %46, %38, %33, %51
  %60 = phi i32 [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ -27, %38 ], [ 0, %33 ], [ 0, %51 ], [ -1, %5 ], [ -1, %54 ], [ -2, %25 ], [ -2, %29 ]
  ret i32 %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @little2_scanDecl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %61

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i8, ptr %1, align 1, !tbaa !9
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !9
  switch i8 %17, label %28 [
    i8 27, label %18
    i8 20, label %21
    i8 22, label %23
    i8 24, label %23
  ]

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %1, i64 2
  %20 = tail call fastcc i32 @little2_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef %2, ptr noundef %3), !range !64
  br label %61

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %22, ptr %3, align 8, !tbaa !5
  br label %61

23:                                               ; preds = %13, %13
  %24 = getelementptr inbounds i8, ptr %1, i64 2
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %5, %25
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %29, label %61

28:                                               ; preds = %9, %13
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %61

29:                                               ; preds = %23, %55
  %30 = phi i64 [ %58, %55 ], [ %26, %23 ]
  %31 = phi ptr [ %56, %55 ], [ %24, %23 ]
  %32 = phi ptr [ %31, %55 ], [ %1, %23 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i8, ptr %31, align 1, !tbaa !9
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  switch i8 %40, label %60 [
    i8 30, label %41
    i8 21, label %54
    i8 9, label %54
    i8 10, label %54
    i8 22, label %55
    i8 24, label %55
  ]

41:                                               ; preds = %36
  %42 = icmp ugt i64 %30, 3
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %32, i64 5
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %32, i64 4
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !9
  switch i8 %52, label %54 [
    i8 21, label %53
    i8 9, label %53
    i8 10, label %53
    i8 30, label %53
  ]

53:                                               ; preds = %47, %47, %47, %47
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

54:                                               ; preds = %36, %36, %36, %43, %47
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

55:                                               ; preds = %36, %36
  %56 = getelementptr inbounds i8, ptr %31, i64 2
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %5, %57
  %59 = icmp sgt i64 %58, 1
  br i1 %59, label %29, label %61, !llvm.loop !113

60:                                               ; preds = %29, %36
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %55, %23, %41, %4, %60, %54, %53, %28, %21, %18
  %62 = phi i32 [ 0, %28 ], [ 0, %60 ], [ 16, %54 ], [ 0, %53 ], [ 33, %21 ], [ %20, %18 ], [ -1, %4 ], [ -1, %41 ], [ -1, %23 ], [ -1, %55 ]
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @little2_scanPi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %202

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  switch i8 %12, label %15 [
    i8 -40, label %53
    i8 -39, label %53
    i8 -38, label %53
    i8 -37, label %53
    i8 -36, label %56
    i8 -35, label %56
    i8 -34, label %56
    i8 -33, label %56
    i8 -1, label %17
  ]

15:                                               ; preds = %14
  %16 = load i8, ptr %1, align 1, !tbaa !9
  br label %25

17:                                               ; preds = %14
  %18 = load i8, ptr %1, align 1, !tbaa !9
  %19 = icmp ugt i8 %18, -3
  br i1 %19, label %56, label %25

20:                                               ; preds = %10
  %21 = load i8, ptr %1, align 1, !tbaa !9
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !9
  switch i8 %24, label %56 [
    i8 29, label %25
    i8 22, label %43
    i8 24, label %43
    i8 5, label %49
    i8 6, label %50
    i8 7, label %53
  ]

25:                                               ; preds = %15, %17, %20
  %26 = phi i8 [ %16, %15 ], [ %18, %17 ], [ %21, %20 ]
  %27 = zext i8 %12 to i64
  %28 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 3
  %32 = zext i8 %26 to i32
  %33 = lshr i32 %32, 5
  %34 = or disjoint i32 %33, %31
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = and i32 %32, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %202

43:                                               ; preds = %25, %20, %20
  %44 = phi i8 [ %26, %25 ], [ %21, %20 ], [ %21, %20 ]
  %45 = getelementptr inbounds i8, ptr %1, i64 2
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %6, %46
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %57, label %202

49:                                               ; preds = %20
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %202

50:                                               ; preds = %20
  %51 = icmp eq i64 %8, 2
  br i1 %51, label %202, label %52

52:                                               ; preds = %50
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %202

53:                                               ; preds = %14, %14, %14, %14, %20
  %54 = icmp ult i64 %8, 4
  br i1 %54, label %202, label %55

55:                                               ; preds = %53
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %202

56:                                               ; preds = %14, %14, %14, %14, %17, %20
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %202

57:                                               ; preds = %43, %92
  %58 = phi i64 [ %95, %92 ], [ %47, %43 ]
  %59 = phi i64 [ %94, %92 ], [ %46, %43 ]
  %60 = phi ptr [ %93, %92 ], [ %45, %43 ]
  %61 = phi ptr [ %60, %92 ], [ %1, %43 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !9
  switch i8 %63, label %64 [
    i8 0, label %69
    i8 -40, label %101
    i8 -39, label %101
    i8 -38, label %101
    i8 -37, label %101
    i8 -36, label %200
    i8 -35, label %200
    i8 -34, label %200
    i8 -33, label %200
    i8 -1, label %66
  ]

64:                                               ; preds = %57
  %65 = load i8, ptr %60, align 1, !tbaa !9
  br label %74

66:                                               ; preds = %57
  %67 = load i8, ptr %60, align 1, !tbaa !9
  %68 = icmp ugt i8 %67, -3
  br i1 %68, label %200, label %74

69:                                               ; preds = %57
  %70 = load i8, ptr %60, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !9
  switch i8 %73, label %200 [
    i8 29, label %74
    i8 22, label %92
    i8 24, label %92
    i8 25, label %92
    i8 26, label %92
    i8 27, label %92
    i8 5, label %97
    i8 6, label %98
    i8 7, label %101
    i8 21, label %104
    i8 9, label %104
    i8 10, label %104
    i8 15, label %181
  ]

74:                                               ; preds = %64, %66, %69
  %75 = phi i8 [ %65, %64 ], [ %67, %66 ], [ %70, %69 ]
  %76 = zext i8 %63 to i64
  %77 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 3
  %81 = zext i8 %75 to i32
  %82 = lshr i32 %81, 5
  %83 = or disjoint i32 %82, %80
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !14
  %87 = and i32 %81, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

92:                                               ; preds = %74, %69, %69, %69, %69, %69
  %93 = getelementptr inbounds i8, ptr %60, i64 2
  %94 = ptrtoint ptr %93 to i64
  %95 = sub i64 %6, %94
  %96 = icmp sgt i64 %95, 1
  br i1 %96, label %57, label %202, !llvm.loop !114

97:                                               ; preds = %69
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

98:                                               ; preds = %69
  %99 = icmp eq i64 %58, 2
  br i1 %99, label %202, label %100

100:                                              ; preds = %98
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

101:                                              ; preds = %57, %57, %57, %57, %69
  %102 = icmp ult i64 %58, 4
  br i1 %102, label %202, label %103

103:                                              ; preds = %101
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

104:                                              ; preds = %69, %69, %69
  store i32 11, ptr %5, align 4, !tbaa !14
  %105 = sub i64 %59, %7
  %106 = icmp ne i64 %105, 6
  %107 = or i1 %13, %106
  br i1 %107, label %130, label %108

108:                                              ; preds = %104
  switch i8 %44, label %130 [
    i8 120, label %110
    i8 88, label %109
  ]

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %108
  %111 = phi i32 [ 1, %109 ], [ 0, %108 ]
  %112 = getelementptr inbounds i8, ptr %1, i64 3
  %113 = load i8, ptr %112, align 1, !tbaa !9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load i8, ptr %45, align 1, !tbaa !9
  switch i8 %116, label %130 [
    i8 109, label %118
    i8 77, label %117
  ]

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ 1, %117 ], [ %111, %115 ]
  %120 = getelementptr inbounds i8, ptr %1, i64 5
  %121 = load i8, ptr %120, align 1, !tbaa !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = getelementptr inbounds i8, ptr %1, i64 4
  %125 = load i8, ptr %124, align 1, !tbaa !9
  switch i8 %125, label %130 [
    i8 108, label %126
    i8 76, label %129
  ]

126:                                              ; preds = %123
  %127 = icmp eq i32 %119, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  store i32 12, ptr %5, align 4, !tbaa !14
  br label %130

129:                                              ; preds = %123, %126
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

130:                                              ; preds = %104, %128, %108, %115, %123, %110, %118
  %131 = phi i32 [ 11, %104 ], [ 12, %128 ], [ 11, %108 ], [ 11, %115 ], [ 11, %123 ], [ 11, %110 ], [ 11, %118 ]
  %132 = getelementptr inbounds i8, ptr %61, i64 4
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %6, %133
  %135 = icmp sgt i64 %134, 1
  br i1 %135, label %136, label %202

136:                                              ; preds = %130, %176
  %137 = phi i64 [ %179, %176 ], [ %134, %130 ]
  %138 = phi ptr [ %177, %176 ], [ %132, %130 ]
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !9
  switch i8 %140, label %174 [
    i8 0, label %144
    i8 -40, label %155
    i8 -39, label %155
    i8 -38, label %155
    i8 -37, label %155
    i8 -36, label %159
    i8 -35, label %159
    i8 -34, label %159
    i8 -33, label %159
    i8 -1, label %141
  ]

141:                                              ; preds = %136
  %142 = load i8, ptr %138, align 1, !tbaa !9
  %143 = icmp ugt i8 %142, -3
  br i1 %143, label %159, label %174

144:                                              ; preds = %136
  %145 = load i8, ptr %138, align 1, !tbaa !9
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !9
  switch i8 %148, label %174 [
    i8 5, label %149
    i8 6, label %151
    i8 7, label %155
    i8 0, label %159
    i8 1, label %159
    i8 8, label %159
    i8 15, label %160
  ]

149:                                              ; preds = %144
  %150 = getelementptr inbounds i8, ptr %138, i64 2
  br label %176

151:                                              ; preds = %144
  %152 = icmp eq i64 %137, 2
  br i1 %152, label %202, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds i8, ptr %138, i64 3
  br label %176

155:                                              ; preds = %136, %136, %136, %136, %144
  %156 = icmp ult i64 %137, 4
  br i1 %156, label %202, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds i8, ptr %138, i64 4
  br label %176

159:                                              ; preds = %136, %136, %136, %136, %141, %144, %144, %144
  store ptr %138, ptr %3, align 8, !tbaa !5
  br label %202

160:                                              ; preds = %144
  %161 = getelementptr inbounds i8, ptr %138, i64 2
  %162 = ptrtoint ptr %161 to i64
  %163 = sub i64 %6, %162
  %164 = icmp sgt i64 %163, 1
  br i1 %164, label %165, label %202

165:                                              ; preds = %160
  %166 = getelementptr inbounds i8, ptr %138, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i8, ptr %161, align 1, !tbaa !9
  %171 = icmp eq i8 %170, 62
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %138, i64 4
  store ptr %173, ptr %3, align 8, !tbaa !5
  br label %202

174:                                              ; preds = %136, %141, %144
  %175 = getelementptr inbounds i8, ptr %138, i64 2
  br label %176

176:                                              ; preds = %165, %169, %174, %157, %153, %149
  %177 = phi ptr [ %175, %174 ], [ %161, %169 ], [ %161, %165 ], [ %158, %157 ], [ %154, %153 ], [ %150, %149 ]
  %178 = ptrtoint ptr %177 to i64
  %179 = sub i64 %6, %178
  %180 = icmp sgt i64 %179, 1
  br i1 %180, label %136, label %202, !llvm.loop !115

181:                                              ; preds = %69
  %182 = call fastcc i32 @little2_checkPiTarget(ptr noundef %1, ptr noundef nonnull %60, ptr noundef nonnull %5)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %202

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %61, i64 4
  %187 = ptrtoint ptr %186 to i64
  %188 = sub i64 %6, %187
  %189 = icmp sgt i64 %188, 1
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = getelementptr inbounds i8, ptr %61, i64 5
  %192 = load i8, ptr %191, align 1, !tbaa !9
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i8, ptr %186, align 1, !tbaa !9
  %196 = icmp eq i8 %195, 62
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %61, i64 6
  store ptr %198, ptr %3, align 8, !tbaa !5
  %199 = load i32, ptr %5, align 4, !tbaa !14
  br label %202

200:                                              ; preds = %57, %57, %57, %57, %66, %69, %190, %194
  %201 = phi ptr [ %186, %194 ], [ %186, %190 ], [ %60, %69 ], [ %60, %66 ], [ %60, %57 ], [ %60, %57 ], [ %60, %57 ], [ %60, %57 ]
  store ptr %201, ptr %3, align 8, !tbaa !5
  br label %202

202:                                              ; preds = %92, %151, %155, %160, %176, %43, %130, %185, %101, %98, %53, %50, %4, %200, %197, %184, %172, %159, %129, %103, %100, %97, %91, %56, %55, %52, %49, %42
  %203 = phi i32 [ 0, %56 ], [ 0, %55 ], [ 0, %52 ], [ 0, %49 ], [ 0, %200 ], [ %199, %197 ], [ 0, %184 ], [ %131, %172 ], [ 0, %159 ], [ 0, %129 ], [ 0, %103 ], [ 0, %100 ], [ 0, %97 ], [ 0, %91 ], [ 0, %42 ], [ -1, %4 ], [ -2, %50 ], [ -2, %53 ], [ -2, %98 ], [ -2, %101 ], [ -1, %185 ], [ -1, %130 ], [ -1, %43 ], [ -2, %151 ], [ -2, %155 ], [ -1, %160 ], [ -1, %176 ], [ -1, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %203
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @little2_scanPercent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %94

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %20 [
    i8 0, label %15
    i8 -40, label %44
    i8 -39, label %44
    i8 -38, label %44
    i8 -37, label %44
    i8 -36, label %91
    i8 -35, label %91
    i8 -34, label %91
    i8 -33, label %91
    i8 -1, label %12
  ]

12:                                               ; preds = %9
  %13 = load i8, ptr %1, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %91, label %20

15:                                               ; preds = %9
  %16 = load i8, ptr %1, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %91 [
    i8 29, label %20
    i8 22, label %37
    i8 24, label %37
    i8 30, label %46
    i8 6, label %42
    i8 7, label %44
    i8 21, label %46
    i8 10, label %46
    i8 9, label %46
  ]

20:                                               ; preds = %9, %12, %15
  %21 = zext i8 %11 to i64
  %22 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 3
  %26 = load i8, ptr %1, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, 5
  %29 = or disjoint i32 %28, %25
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = and i32 %27, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %91, label %37

37:                                               ; preds = %20, %15, %15
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %5, %39
  %41 = icmp sgt i64 %40, 1
  br i1 %41, label %47, label %94

42:                                               ; preds = %15
  %43 = icmp eq i64 %7, 2
  br i1 %43, label %94, label %91

44:                                               ; preds = %9, %9, %9, %9, %15
  %45 = icmp ult i64 %7, 4
  br i1 %45, label %94, label %91

46:                                               ; preds = %15, %15, %15, %15
  br label %91

47:                                               ; preds = %37, %80
  %48 = phi i64 [ %83, %80 ], [ %40, %37 ]
  %49 = phi ptr [ %81, %80 ], [ %38, %37 ]
  %50 = phi ptr [ %49, %80 ], [ %1, %37 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 3
  %52 = load i8, ptr %51, align 1, !tbaa !9
  switch i8 %52, label %53 [
    i8 0, label %58
    i8 -40, label %87
    i8 -39, label %87
    i8 -38, label %87
    i8 -37, label %87
    i8 -36, label %91
    i8 -35, label %91
    i8 -34, label %91
    i8 -33, label %91
    i8 -1, label %55
  ]

53:                                               ; preds = %47
  %54 = load i8, ptr %49, align 1, !tbaa !9
  br label %63

55:                                               ; preds = %47
  %56 = load i8, ptr %49, align 1, !tbaa !9
  %57 = icmp ugt i8 %56, -3
  br i1 %57, label %91, label %63

58:                                               ; preds = %47
  %59 = load i8, ptr %49, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !9
  switch i8 %62, label %91 [
    i8 29, label %63
    i8 22, label %80
    i8 24, label %80
    i8 25, label %80
    i8 26, label %80
    i8 27, label %80
    i8 18, label %89
    i8 6, label %85
    i8 7, label %87
  ]

63:                                               ; preds = %53, %55, %58
  %64 = phi i8 [ %54, %53 ], [ %56, %55 ], [ %59, %58 ]
  %65 = zext i8 %52 to i64
  %66 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = zext i8 %64 to i32
  %71 = lshr i32 %70, 5
  %72 = or disjoint i32 %71, %69
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !14
  %76 = and i32 %70, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %63, %58, %58, %58, %58, %58
  %81 = getelementptr inbounds i8, ptr %49, i64 2
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %5, %82
  %84 = icmp sgt i64 %83, 1
  br i1 %84, label %47, label %94, !llvm.loop !116

85:                                               ; preds = %58
  %86 = icmp eq i64 %48, 2
  br i1 %86, label %94, label %91

87:                                               ; preds = %47, %47, %47, %47, %58
  %88 = icmp ult i64 %48, 4
  br i1 %88, label %94, label %91

89:                                               ; preds = %58
  %90 = getelementptr inbounds i8, ptr %50, i64 4
  br label %91

91:                                               ; preds = %58, %55, %47, %47, %47, %47, %63, %87, %85, %15, %12, %9, %9, %9, %9, %44, %42, %20, %46, %89
  %92 = phi ptr [ %90, %89 ], [ %1, %46 ], [ %1, %20 ], [ %1, %42 ], [ %1, %44 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %12 ], [ %1, %15 ], [ %49, %85 ], [ %49, %87 ], [ %49, %63 ], [ %49, %47 ], [ %49, %47 ], [ %49, %47 ], [ %49, %47 ], [ %49, %55 ], [ %49, %58 ]
  %93 = phi i32 [ 28, %89 ], [ 22, %46 ], [ 0, %20 ], [ 0, %42 ], [ 0, %44 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ], [ 0, %85 ], [ 0, %87 ], [ 0, %63 ], [ 0, %47 ], [ 0, %47 ], [ 0, %47 ], [ 0, %47 ], [ 0, %55 ], [ 0, %58 ]
  store ptr %92, ptr %3, align 8, !tbaa !5
  br label %94

94:                                               ; preds = %80, %91, %37, %87, %85, %44, %42, %4
  %95 = phi i32 [ -1, %4 ], [ -2, %42 ], [ -2, %44 ], [ -2, %85 ], [ -2, %87 ], [ -1, %37 ], [ %93, %91 ], [ -1, %80 ]
  ret i32 %95
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @little2_scanPoundName(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %92

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %20 [
    i8 0, label %15
    i8 -40, label %44
    i8 -39, label %44
    i8 -38, label %44
    i8 -37, label %44
    i8 -36, label %89
    i8 -35, label %89
    i8 -34, label %89
    i8 -33, label %89
    i8 -1, label %12
  ]

12:                                               ; preds = %9
  %13 = load i8, ptr %1, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %89, label %20

15:                                               ; preds = %9
  %16 = load i8, ptr %1, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %89 [
    i8 29, label %20
    i8 22, label %37
    i8 24, label %37
    i8 7, label %44
    i8 6, label %42
  ]

20:                                               ; preds = %9, %12, %15
  %21 = zext i8 %11 to i64
  %22 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 3
  %26 = load i8, ptr %1, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, 5
  %29 = or disjoint i32 %28, %25
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = and i32 %27, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %89, label %37

37:                                               ; preds = %20, %15, %15
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %5, %39
  %41 = icmp sgt i64 %40, 1
  br i1 %41, label %46, label %92

42:                                               ; preds = %15
  %43 = icmp eq i64 %7, 2
  br i1 %43, label %92, label %89

44:                                               ; preds = %15, %9, %9, %9, %9
  %45 = icmp ult i64 %7, 4
  br i1 %45, label %92, label %89

46:                                               ; preds = %37, %79
  %47 = phi i64 [ %82, %79 ], [ %40, %37 ]
  %48 = phi ptr [ %80, %79 ], [ %38, %37 ]
  %49 = phi ptr [ %48, %79 ], [ %1, %37 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !9
  switch i8 %51, label %52 [
    i8 0, label %57
    i8 -40, label %86
    i8 -39, label %86
    i8 -38, label %86
    i8 -37, label %86
    i8 -36, label %89
    i8 -35, label %89
    i8 -34, label %89
    i8 -33, label %89
    i8 -1, label %54
  ]

52:                                               ; preds = %46
  %53 = load i8, ptr %48, align 1, !tbaa !9
  br label %62

54:                                               ; preds = %46
  %55 = load i8, ptr %48, align 1, !tbaa !9
  %56 = icmp ugt i8 %55, -3
  br i1 %56, label %89, label %62

57:                                               ; preds = %46
  %58 = load i8, ptr %48, align 1, !tbaa !9
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !9
  switch i8 %61, label %89 [
    i8 29, label %62
    i8 22, label %79
    i8 24, label %79
    i8 25, label %79
    i8 26, label %79
    i8 27, label %79
    i8 36, label %88
    i8 6, label %84
    i8 7, label %86
    i8 9, label %88
    i8 10, label %88
    i8 21, label %88
    i8 32, label %88
    i8 11, label %88
    i8 30, label %88
  ]

62:                                               ; preds = %52, %54, %57
  %63 = phi i8 [ %53, %52 ], [ %55, %54 ], [ %58, %57 ]
  %64 = zext i8 %51 to i64
  %65 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 3
  %69 = zext i8 %63 to i32
  %70 = lshr i32 %69, 5
  %71 = or disjoint i32 %70, %68
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !14
  %75 = and i32 %69, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %62, %57, %57, %57, %57, %57
  %80 = getelementptr inbounds i8, ptr %48, i64 2
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %5, %81
  %83 = icmp sgt i64 %82, 1
  br i1 %83, label %46, label %92, !llvm.loop !117

84:                                               ; preds = %57
  %85 = icmp eq i64 %47, 2
  br i1 %85, label %92, label %89

86:                                               ; preds = %46, %46, %46, %46, %57
  %87 = icmp ult i64 %47, 4
  br i1 %87, label %92, label %89

88:                                               ; preds = %57, %57, %57, %57, %57, %57, %57
  br label %89

89:                                               ; preds = %57, %54, %46, %46, %46, %46, %62, %88, %86, %84, %15, %12, %9, %9, %9, %9, %44, %42, %20
  %90 = phi ptr [ %1, %20 ], [ %1, %42 ], [ %1, %44 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %12 ], [ %1, %15 ], [ %48, %84 ], [ %48, %86 ], [ %48, %88 ], [ %48, %62 ], [ %48, %46 ], [ %48, %46 ], [ %48, %46 ], [ %48, %46 ], [ %48, %54 ], [ %48, %57 ]
  %91 = phi i32 [ 0, %20 ], [ 0, %42 ], [ 0, %44 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ], [ 0, %84 ], [ 0, %86 ], [ 20, %88 ], [ 0, %62 ], [ 0, %46 ], [ 0, %46 ], [ 0, %46 ], [ 0, %46 ], [ 0, %54 ], [ 0, %57 ]
  store ptr %90, ptr %3, align 8, !tbaa !5
  br label %92

92:                                               ; preds = %79, %89, %37, %86, %84, %44, %42, %4
  %93 = phi i32 [ -1, %4 ], [ -2, %42 ], [ -2, %44 ], [ -2, %84 ], [ -2, %86 ], [ -20, %37 ], [ %91, %89 ], [ -20, %79 ]
  ret i32 %93
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @little2_scanComment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %81

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %9
  %14 = load i8, ptr %1, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %16, label %78

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %1, i64 2
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %5, %18
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %81

21:                                               ; preds = %16, %73
  %22 = phi i64 [ %76, %73 ], [ %19, %16 ]
  %23 = phi ptr [ %74, %73 ], [ %17, %16 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !9
  switch i8 %25, label %71 [
    i8 0, label %29
    i8 -40, label %40
    i8 -39, label %40
    i8 -38, label %40
    i8 -37, label %40
    i8 -36, label %78
    i8 -35, label %78
    i8 -34, label %78
    i8 -33, label %78
    i8 -1, label %26
  ]

26:                                               ; preds = %21
  %27 = load i8, ptr %23, align 1, !tbaa !9
  %28 = icmp ugt i8 %27, -3
  br i1 %28, label %78, label %71

29:                                               ; preds = %21
  %30 = load i8, ptr %23, align 1, !tbaa !9
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !9
  switch i8 %33, label %71 [
    i8 5, label %34
    i8 6, label %36
    i8 7, label %40
    i8 0, label %78
    i8 1, label %78
    i8 8, label %78
    i8 27, label %44
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %23, i64 2
  br label %73

36:                                               ; preds = %29
  %37 = icmp eq i64 %22, 2
  br i1 %37, label %81, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %23, i64 3
  br label %73

40:                                               ; preds = %21, %21, %21, %21, %29
  %41 = icmp ult i64 %22, 4
  br i1 %41, label %81, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %23, i64 4
  br label %73

44:                                               ; preds = %29
  %45 = getelementptr inbounds i8, ptr %23, i64 2
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %5, %46
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %23, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = load i8, ptr %45, align 1, !tbaa !9
  %55 = icmp eq i8 %54, 45
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %23, i64 4
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %5, %58
  %60 = icmp sgt i64 %59, 1
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %23, i64 5
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i8, ptr %57, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 62
  %68 = getelementptr inbounds i8, ptr %23, i64 6
  %69 = select i1 %67, ptr %68, ptr %57
  %70 = select i1 %67, i32 13, i32 0
  br label %78

71:                                               ; preds = %21, %26, %29
  %72 = getelementptr inbounds i8, ptr %23, i64 2
  br label %73

73:                                               ; preds = %49, %53, %71, %42, %38, %34
  %74 = phi ptr [ %72, %71 ], [ %45, %53 ], [ %45, %49 ], [ %43, %42 ], [ %39, %38 ], [ %35, %34 ]
  %75 = ptrtoint ptr %74 to i64
  %76 = sub i64 %5, %75
  %77 = icmp sgt i64 %76, 1
  br i1 %77, label %21, label %81, !llvm.loop !118

78:                                               ; preds = %29, %29, %29, %26, %21, %21, %21, %21, %65, %61, %9, %13
  %79 = phi ptr [ %1, %13 ], [ %1, %9 ], [ %57, %61 ], [ %69, %65 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %26 ], [ %23, %29 ], [ %23, %29 ], [ %23, %29 ]
  %80 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 0, %61 ], [ %70, %65 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %26 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ]
  store ptr %79, ptr %3, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %36, %40, %44, %73, %78, %16, %4, %56
  %82 = phi i32 [ -1, %56 ], [ -1, %4 ], [ -1, %16 ], [ %80, %78 ], [ -2, %36 ], [ -2, %40 ], [ -1, %44 ], [ -1, %73 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @little2_checkPiTarget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  store i32 11, ptr %2, align 4, !tbaa !14
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq i64 %6, 6
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load i8, ptr %0, align 1, !tbaa !9
  switch i8 %13, label %36 [
    i8 120, label %15
    i8 88, label %14
  ]

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ 1, %14 ], [ 0, %12 ]
  %17 = getelementptr inbounds i8, ptr %0, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 2
  %22 = load i8, ptr %21, align 1, !tbaa !9
  switch i8 %22, label %36 [
    i8 109, label %24
    i8 77, label %23
  ]

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ 1, %23 ], [ %16, %20 ]
  %26 = getelementptr inbounds i8, ptr %0, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 4
  %31 = load i8, ptr %30, align 1, !tbaa !9
  switch i8 %31, label %36 [
    i8 108, label %33
    i8 76, label %32
  ]

32:                                               ; preds = %29
  br label %36

33:                                               ; preds = %29
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i32 12, ptr %2, align 4, !tbaa !14
  br label %36

36:                                               ; preds = %24, %15, %8, %32, %33, %29, %20, %12, %3, %35
  %37 = phi i32 [ 1, %35 ], [ 1, %3 ], [ 1, %12 ], [ 1, %20 ], [ 1, %29 ], [ 0, %33 ], [ 0, %32 ], [ 1, %8 ], [ 1, %15 ], [ 1, %24 ]
  ret i32 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @little2_scanRef(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %166

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %20 [
    i8 0, label %15
    i8 -40, label %44
    i8 -39, label %44
    i8 -38, label %44
    i8 -37, label %44
    i8 -36, label %163
    i8 -35, label %163
    i8 -34, label %163
    i8 -33, label %163
    i8 -1, label %12
  ]

12:                                               ; preds = %9
  %13 = load i8, ptr %1, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %163, label %20

15:                                               ; preds = %9
  %16 = load i8, ptr %1, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %163 [
    i8 29, label %20
    i8 22, label %37
    i8 24, label %37
    i8 19, label %46
    i8 6, label %42
    i8 7, label %44
  ]

20:                                               ; preds = %9, %12, %15
  %21 = zext i8 %11 to i64
  %22 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 3
  %26 = load i8, ptr %1, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, 5
  %29 = or disjoint i32 %28, %25
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = and i32 %27, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %163, label %37

37:                                               ; preds = %20, %15, %15
  %38 = getelementptr inbounds i8, ptr %1, i64 2
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %5, %39
  %41 = icmp sgt i64 %40, 1
  br i1 %41, label %119, label %166

42:                                               ; preds = %15
  %43 = icmp eq i64 %7, 2
  br i1 %43, label %166, label %163

44:                                               ; preds = %9, %9, %9, %9, %15
  %45 = icmp ult i64 %7, 4
  br i1 %45, label %166, label %163

46:                                               ; preds = %15
  %47 = getelementptr inbounds i8, ptr %1, i64 2
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %5, %48
  %50 = icmp sgt i64 %49, 1
  br i1 %50, label %51, label %166

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %1, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %163

55:                                               ; preds = %51
  %56 = load i8, ptr %47, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 120
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %1, i64 4
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %5, %60
  %62 = icmp sgt i64 %61, 1
  br i1 %62, label %63, label %166

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, ptr %1, i64 5
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %163

67:                                               ; preds = %63
  %68 = load i8, ptr %59, align 1, !tbaa !9
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = and i8 %71, -2
  %73 = icmp eq i8 %72, 24
  br i1 %73, label %74, label %163

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, ptr %1, i64 6
  %76 = ptrtoint ptr %75 to i64
  %77 = sub i64 %5, %76
  %78 = icmp sgt i64 %77, 1
  br i1 %78, label %79, label %166

79:                                               ; preds = %74, %92
  %80 = phi ptr [ %93, %92 ], [ %75, %74 ]
  %81 = phi ptr [ %80, %92 ], [ %59, %74 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %163

85:                                               ; preds = %79
  %86 = load i8, ptr %80, align 1, !tbaa !9
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !9
  switch i8 %89, label %163 [
    i8 25, label %92
    i8 24, label %92
    i8 18, label %90
  ]

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %81, i64 4
  br label %163

92:                                               ; preds = %85, %85
  %93 = getelementptr inbounds i8, ptr %80, i64 2
  %94 = ptrtoint ptr %93 to i64
  %95 = sub i64 %5, %94
  %96 = icmp sgt i64 %95, 1
  br i1 %96, label %79, label %166, !llvm.loop !119

97:                                               ; preds = %55
  %98 = zext i8 %56 to i64
  %99 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !9
  %101 = icmp eq i8 %100, 25
  br i1 %101, label %102, label %163

102:                                              ; preds = %97, %112
  %103 = phi ptr [ %104, %112 ], [ %47, %97 ]
  %104 = getelementptr inbounds i8, ptr %103, i64 2
  %105 = ptrtoint ptr %104 to i64
  %106 = sub i64 %5, %105
  %107 = icmp sgt i64 %106, 1
  br i1 %107, label %108, label %166

108:                                              ; preds = %102
  %109 = getelementptr inbounds i8, ptr %103, i64 3
  %110 = load i8, ptr %109, align 1, !tbaa !9
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %108
  %113 = load i8, ptr %104, align 1, !tbaa !9
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !9
  switch i8 %116, label %163 [
    i8 25, label %102
    i8 18, label %117
  ], !llvm.loop !120

117:                                              ; preds = %112
  %118 = getelementptr inbounds i8, ptr %103, i64 4
  br label %163

119:                                              ; preds = %37, %152
  %120 = phi i64 [ %155, %152 ], [ %40, %37 ]
  %121 = phi ptr [ %153, %152 ], [ %38, %37 ]
  %122 = phi ptr [ %121, %152 ], [ %1, %37 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 3
  %124 = load i8, ptr %123, align 1, !tbaa !9
  switch i8 %124, label %125 [
    i8 0, label %130
    i8 -40, label %159
    i8 -39, label %159
    i8 -38, label %159
    i8 -37, label %159
    i8 -36, label %163
    i8 -35, label %163
    i8 -34, label %163
    i8 -33, label %163
    i8 -1, label %127
  ]

125:                                              ; preds = %119
  %126 = load i8, ptr %121, align 1, !tbaa !9
  br label %135

127:                                              ; preds = %119
  %128 = load i8, ptr %121, align 1, !tbaa !9
  %129 = icmp ugt i8 %128, -3
  br i1 %129, label %163, label %135

130:                                              ; preds = %119
  %131 = load i8, ptr %121, align 1, !tbaa !9
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !9
  switch i8 %134, label %163 [
    i8 29, label %135
    i8 22, label %152
    i8 24, label %152
    i8 25, label %152
    i8 26, label %152
    i8 27, label %152
    i8 18, label %161
    i8 6, label %157
    i8 7, label %159
  ]

135:                                              ; preds = %125, %127, %130
  %136 = phi i8 [ %126, %125 ], [ %128, %127 ], [ %131, %130 ]
  %137 = zext i8 %124 to i64
  %138 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !9
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 3
  %142 = zext i8 %136 to i32
  %143 = lshr i32 %142, 5
  %144 = or disjoint i32 %143, %141
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !14
  %148 = and i32 %142, 31
  %149 = shl nuw i32 1, %148
  %150 = and i32 %149, %147
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %135, %130, %130, %130, %130, %130
  %153 = getelementptr inbounds i8, ptr %121, i64 2
  %154 = ptrtoint ptr %153 to i64
  %155 = sub i64 %5, %154
  %156 = icmp sgt i64 %155, 1
  br i1 %156, label %119, label %166, !llvm.loop !121

157:                                              ; preds = %130
  %158 = icmp eq i64 %120, 2
  br i1 %158, label %166, label %163

159:                                              ; preds = %119, %119, %119, %119, %130
  %160 = icmp ult i64 %120, 4
  br i1 %160, label %166, label %163

161:                                              ; preds = %130
  %162 = getelementptr inbounds i8, ptr %122, i64 4
  br label %163

163:                                              ; preds = %108, %112, %79, %85, %130, %127, %119, %119, %119, %119, %135, %159, %157, %15, %12, %9, %9, %9, %9, %51, %63, %67, %90, %97, %117, %44, %42, %20, %161
  %164 = phi ptr [ %162, %161 ], [ %1, %20 ], [ %1, %42 ], [ %1, %44 ], [ %118, %117 ], [ %91, %90 ], [ %59, %63 ], [ %59, %67 ], [ %47, %51 ], [ %47, %97 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %12 ], [ %1, %15 ], [ %121, %157 ], [ %121, %159 ], [ %121, %135 ], [ %121, %119 ], [ %121, %119 ], [ %121, %119 ], [ %121, %119 ], [ %121, %127 ], [ %121, %130 ], [ %80, %85 ], [ %80, %79 ], [ %104, %112 ], [ %104, %108 ]
  %165 = phi i32 [ 9, %161 ], [ 0, %20 ], [ 0, %42 ], [ 0, %44 ], [ 10, %117 ], [ 10, %90 ], [ 0, %63 ], [ 0, %67 ], [ 0, %51 ], [ 0, %97 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ], [ 0, %157 ], [ 0, %159 ], [ 0, %135 ], [ 0, %119 ], [ 0, %119 ], [ 0, %119 ], [ 0, %119 ], [ 0, %127 ], [ 0, %130 ], [ 0, %85 ], [ 0, %79 ], [ 0, %112 ], [ 0, %108 ]
  store ptr %164, ptr %3, align 8, !tbaa !5
  br label %166

166:                                              ; preds = %102, %92, %152, %163, %37, %74, %58, %46, %159, %157, %44, %42, %4
  %167 = phi i32 [ -1, %4 ], [ -2, %42 ], [ -2, %44 ], [ -2, %157 ], [ -2, %159 ], [ -1, %46 ], [ -1, %58 ], [ -1, %74 ], [ -1, %37 ], [ %165, %163 ], [ -1, %152 ], [ -1, %92 ], [ -1, %102 ]
  ret i32 %167
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @little2_scanCdataSection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 11
  br i1 %7, label %8, label %61

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i64 12
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  %14 = load i8, ptr %0, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 67
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 2
  %18 = getelementptr inbounds i8, ptr %0, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load i8, ptr %17, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 68
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  %26 = getelementptr inbounds i8, ptr %0, i64 5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load i8, ptr %25, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 65
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %0, i64 6
  %34 = getelementptr inbounds i8, ptr %0, i64 7
  %35 = load i8, ptr %34, align 1, !tbaa !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load i8, ptr %33, align 1, !tbaa !9
  %39 = icmp eq i8 %38, 84
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %0, i64 8
  %42 = getelementptr inbounds i8, ptr %0, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i8, ptr %41, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 65
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %0, i64 10
  %50 = getelementptr inbounds i8, ptr %0, i64 11
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i8, ptr %49, align 1, !tbaa !9
  %55 = icmp eq i8 %54, 91
  %56 = select i1 %55, ptr %9, ptr %49
  %57 = select i1 %55, i32 8, i32 0
  br label %58

58:                                               ; preds = %53, %8, %13, %16, %21, %24, %29, %32, %37, %40, %45, %48
  %59 = phi ptr [ %0, %13 ], [ %0, %8 ], [ %17, %16 ], [ %17, %21 ], [ %25, %24 ], [ %25, %29 ], [ %33, %32 ], [ %33, %37 ], [ %41, %40 ], [ %41, %45 ], [ %49, %48 ], [ %56, %53 ]
  %60 = phi i32 [ 0, %13 ], [ 0, %8 ], [ 0, %16 ], [ 0, %21 ], [ 0, %24 ], [ 0, %29 ], [ 0, %32 ], [ 0, %37 ], [ 0, %40 ], [ 0, %45 ], [ 0, %48 ], [ %57, %53 ]
  store ptr %59, ptr %2, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %58, %3
  %62 = phi i32 [ -1, %3 ], [ %60, %58 ]
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @little2_scanAtts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !5
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %286

10:                                               ; preds = %4, %277
  %11 = phi i64 [ %281, %277 ], [ %8, %4 ]
  %12 = phi ptr [ %278, %277 ], [ %1, %4 ]
  %13 = phi i32 [ %279, %277 ], [ 0, %4 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !9
  switch i8 %15, label %16 [
    i8 0, label %21
    i8 -40, label %47
    i8 -39, label %47
    i8 -38, label %47
    i8 -37, label %47
    i8 -36, label %283
    i8 -35, label %283
    i8 -34, label %283
    i8 -33, label %283
    i8 -1, label %18
  ]

16:                                               ; preds = %10
  %17 = load i8, ptr %12, align 1, !tbaa !9
  br label %26

18:                                               ; preds = %10
  %19 = load i8, ptr %12, align 1, !tbaa !9
  %20 = icmp ugt i8 %19, -3
  br i1 %20, label %283, label %26

21:                                               ; preds = %10
  %22 = load i8, ptr %12, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !9
  switch i8 %25, label %283 [
    i8 29, label %26
    i8 22, label %43
    i8 24, label %43
    i8 25, label %43
    i8 26, label %43
    i8 27, label %43
    i8 14, label %114
    i8 6, label %45
    i8 7, label %47
    i8 23, label %49
    i8 21, label %92
    i8 9, label %92
    i8 10, label %92
  ]

26:                                               ; preds = %16, %18, %21
  %27 = phi i8 [ %17, %16 ], [ %19, %18 ], [ %22, %21 ]
  %28 = zext i8 %15 to i64
  %29 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 3
  %33 = zext i8 %27 to i32
  %34 = lshr i32 %33, 5
  %35 = or disjoint i32 %34, %32
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !14
  %39 = and i32 %33, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %283, label %43

43:                                               ; preds = %26, %21, %21, %21, %21, %21
  %44 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %44, ptr %5, align 8, !tbaa !5
  br label %277

45:                                               ; preds = %21
  %46 = icmp eq i64 %11, 2
  br i1 %46, label %286, label %283

47:                                               ; preds = %10, %10, %10, %10, %21
  %48 = icmp ult i64 %11, 4
  br i1 %48, label %286, label %283

49:                                               ; preds = %21
  %50 = icmp eq i32 %13, 0
  br i1 %50, label %51, label %283

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %52, ptr %5, align 8, !tbaa !5
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %6, %53
  %55 = icmp sgt i64 %54, 1
  br i1 %55, label %56, label %286

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %12, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !9
  switch i8 %58, label %59 [
    i8 0, label %64
    i8 -40, label %90
    i8 -39, label %90
    i8 -38, label %90
    i8 -37, label %90
    i8 -36, label %283
    i8 -35, label %283
    i8 -34, label %283
    i8 -33, label %283
    i8 -1, label %61
  ]

59:                                               ; preds = %56
  %60 = load i8, ptr %52, align 1, !tbaa !9
  br label %69

61:                                               ; preds = %56
  %62 = load i8, ptr %52, align 1, !tbaa !9
  %63 = icmp ugt i8 %62, -3
  br i1 %63, label %283, label %69

64:                                               ; preds = %56
  %65 = load i8, ptr %52, align 1, !tbaa !9
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !9
  switch i8 %68, label %283 [
    i8 29, label %69
    i8 22, label %86
    i8 24, label %86
    i8 7, label %90
    i8 6, label %88
  ]

69:                                               ; preds = %59, %61, %64
  %70 = phi i8 [ %60, %59 ], [ %62, %61 ], [ %65, %64 ]
  %71 = zext i8 %58 to i64
  %72 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 3
  %76 = zext i8 %70 to i32
  %77 = lshr i32 %76, 5
  %78 = or disjoint i32 %77, %75
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !14
  %82 = and i32 %76, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %283, label %86

86:                                               ; preds = %69, %64, %64
  %87 = getelementptr inbounds i8, ptr %12, i64 4
  store ptr %87, ptr %5, align 8, !tbaa !5
  br label %277

88:                                               ; preds = %64
  %89 = icmp eq i64 %54, 2
  br i1 %89, label %286, label %283

90:                                               ; preds = %64, %56, %56, %56, %56
  %91 = icmp ult i64 %54, 4
  br i1 %91, label %286, label %283

92:                                               ; preds = %21, %21, %21
  %93 = getelementptr inbounds i8, ptr %12, i64 2
  %94 = ptrtoint ptr %93 to i64
  %95 = sub i64 %6, %94
  %96 = icmp sgt i64 %95, 1
  br i1 %96, label %97, label %286

97:                                               ; preds = %92, %108
  %98 = phi ptr [ %109, %108 ], [ %93, %92 ]
  %99 = phi ptr [ %98, %108 ], [ %12, %92 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 3
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %283

103:                                              ; preds = %97
  %104 = load i8, ptr %98, align 1, !tbaa !9
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !9
  switch i8 %107, label %283 [
    i8 14, label %113
    i8 21, label %108
    i8 10, label %108
    i8 9, label %108
  ]

108:                                              ; preds = %103, %103, %103
  %109 = getelementptr inbounds i8, ptr %98, i64 2
  %110 = ptrtoint ptr %109 to i64
  %111 = sub i64 %6, %110
  %112 = icmp sgt i64 %111, 1
  br i1 %112, label %97, label %286

113:                                              ; preds = %103
  store ptr %98, ptr %5, align 8, !tbaa !5
  br label %114

114:                                              ; preds = %21, %113
  %115 = phi ptr [ %98, %113 ], [ %12, %21 ]
  %116 = getelementptr inbounds i8, ptr %115, i64 2
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %6, %117
  %119 = icmp sgt i64 %118, 1
  br i1 %119, label %120, label %286

120:                                              ; preds = %114, %135
  %121 = phi ptr [ %136, %135 ], [ %116, %114 ]
  %122 = phi ptr [ %121, %135 ], [ %115, %114 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 3
  %124 = load i8, ptr %123, align 1, !tbaa !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %283

126:                                              ; preds = %120
  %127 = load i8, ptr %121, align 1, !tbaa !9
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 254
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %140, label %134

134:                                              ; preds = %126
  switch i8 %130, label %283 [
    i8 21, label %135
    i8 10, label %135
    i8 9, label %135
  ]

135:                                              ; preds = %134, %134, %134
  %136 = getelementptr inbounds i8, ptr %121, i64 2
  %137 = ptrtoint ptr %136 to i64
  %138 = sub i64 %6, %137
  %139 = icmp sgt i64 %138, 1
  br i1 %139, label %120, label %286

140:                                              ; preds = %126
  %141 = getelementptr inbounds i8, ptr %122, i64 4
  store ptr %141, ptr %5, align 8, !tbaa !5
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %6, %142
  %144 = icmp sgt i64 %143, 1
  br i1 %144, label %145, label %286

145:                                              ; preds = %140, %188
  %146 = phi i64 [ %191, %188 ], [ %143, %140 ]
  %147 = phi ptr [ %189, %188 ], [ %141, %140 ]
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !9
  switch i8 %149, label %160 [
    i8 0, label %150
    i8 -40, label %161
    i8 -39, label %161
    i8 -38, label %161
    i8 -37, label %161
    i8 -36, label %156
    i8 -35, label %156
    i8 -34, label %156
    i8 -33, label %156
    i8 -1, label %157
  ]

150:                                              ; preds = %145
  %151 = load i8, ptr %147, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !9
  %155 = zext i8 %154 to i32
  br label %161

156:                                              ; preds = %145, %145, %145, %145
  br label %161

157:                                              ; preds = %145
  %158 = load i8, ptr %147, align 1, !tbaa !9
  %159 = icmp ugt i8 %158, -3
  br i1 %159, label %161, label %160

160:                                              ; preds = %145, %157
  br label %161

161:                                              ; preds = %145, %145, %145, %145, %160, %157, %156, %150
  %162 = phi i32 [ %155, %150 ], [ 29, %160 ], [ 8, %156 ], [ 0, %157 ], [ 7, %145 ], [ 7, %145 ], [ 7, %145 ], [ 7, %145 ]
  %163 = icmp eq i32 %162, %131
  br i1 %163, label %193, label %164

164:                                              ; preds = %161
  %165 = trunc i32 %162 to i8
  switch i8 %165, label %186 [
    i8 5, label %166
    i8 6, label %168
    i8 7, label %172
    i8 0, label %283
    i8 1, label %283
    i8 8, label %283
    i8 3, label %176
    i8 2, label %283
  ]

166:                                              ; preds = %164
  %167 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %167, ptr %5, align 8, !tbaa !5
  br label %188

168:                                              ; preds = %164
  %169 = icmp eq i64 %146, 2
  br i1 %169, label %286, label %170

170:                                              ; preds = %168
  %171 = getelementptr inbounds i8, ptr %147, i64 3
  store ptr %171, ptr %5, align 8, !tbaa !5
  br label %188

172:                                              ; preds = %164
  %173 = icmp ult i64 %146, 4
  br i1 %173, label %286, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, ptr %147, i64 4
  store ptr %175, ptr %5, align 8, !tbaa !5
  br label %188

176:                                              ; preds = %164
  %177 = getelementptr inbounds i8, ptr %147, i64 2
  %178 = call fastcc i32 @little2_scanRef(ptr noundef %0, ptr noundef nonnull %177, ptr noundef %2, ptr noundef nonnull %5), !range !69
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load ptr, ptr %5, align 8, !tbaa !5
  br label %188

182:                                              ; preds = %176
  %183 = icmp eq i32 %178, 0
  br i1 %183, label %184, label %286

184:                                              ; preds = %182
  %185 = load ptr, ptr %5, align 8, !tbaa !5
  br label %283

186:                                              ; preds = %164
  %187 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %187, ptr %5, align 8, !tbaa !5
  br label %188

188:                                              ; preds = %180, %166, %170, %174, %186
  %189 = phi ptr [ %181, %180 ], [ %167, %166 ], [ %171, %170 ], [ %175, %174 ], [ %187, %186 ]
  %190 = ptrtoint ptr %189 to i64
  %191 = sub i64 %6, %190
  %192 = icmp sgt i64 %191, 1
  br i1 %192, label %145, label %286

193:                                              ; preds = %161
  %194 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %194, ptr %5, align 8, !tbaa !5
  %195 = ptrtoint ptr %194 to i64
  %196 = sub i64 %6, %195
  %197 = icmp sgt i64 %196, 1
  br i1 %197, label %198, label %286

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %147, i64 3
  %200 = load i8, ptr %199, align 1, !tbaa !9
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %283

202:                                              ; preds = %198
  %203 = load i8, ptr %194, align 1, !tbaa !9
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !9
  switch i8 %206, label %283 [
    i8 21, label %207
    i8 9, label %207
    i8 10, label %207
    i8 17, label %259
    i8 11, label %256
  ]

207:                                              ; preds = %202, %202, %202
  %208 = getelementptr inbounds i8, ptr %147, i64 4
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %6, %209
  %211 = icmp sgt i64 %210, 1
  br i1 %211, label %212, label %286

212:                                              ; preds = %207, %251
  %213 = phi i64 [ %254, %251 ], [ %210, %207 ]
  %214 = phi ptr [ %252, %251 ], [ %208, %207 ]
  %215 = phi ptr [ %214, %251 ], [ %194, %207 ]
  %216 = getelementptr inbounds i8, ptr %215, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !9
  switch i8 %217, label %226 [
    i8 0, label %221
    i8 -40, label %249
    i8 -39, label %249
    i8 -38, label %249
    i8 -37, label %249
    i8 -36, label %283
    i8 -35, label %283
    i8 -34, label %283
    i8 -33, label %283
    i8 -1, label %218
  ]

218:                                              ; preds = %212
  store ptr %214, ptr %5, align 8, !tbaa !5
  %219 = load i8, ptr %214, align 1, !tbaa !9
  %220 = icmp ugt i8 %219, -3
  br i1 %220, label %283, label %228

221:                                              ; preds = %212
  %222 = load i8, ptr %214, align 1, !tbaa !9
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !9
  switch i8 %225, label %283 [
    i8 29, label %226
    i8 22, label %275
    i8 24, label %275
    i8 17, label %259
    i8 6, label %247
    i8 7, label %249
    i8 21, label %251
    i8 9, label %251
    i8 10, label %251
    i8 11, label %256
  ]

226:                                              ; preds = %221, %212
  store ptr %214, ptr %5, align 8, !tbaa !5
  %227 = load i8, ptr %214, align 1, !tbaa !9
  br label %228

228:                                              ; preds = %226, %218
  %229 = phi i8 [ %227, %226 ], [ %219, %218 ]
  %230 = getelementptr inbounds i8, ptr %215, i64 3
  %231 = load i8, ptr %230, align 1, !tbaa !9
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !9
  %235 = zext i8 %234 to i32
  %236 = shl nuw nsw i32 %235, 3
  %237 = zext i8 %229 to i32
  %238 = lshr i32 %237, 5
  %239 = or disjoint i32 %238, %236
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !14
  %243 = and i32 %237, 31
  %244 = shl nuw i32 1, %243
  %245 = and i32 %244, %242
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %283, label %275

247:                                              ; preds = %221
  %248 = icmp eq i64 %213, 2
  br i1 %248, label %286, label %283

249:                                              ; preds = %212, %212, %212, %212, %221
  %250 = icmp ult i64 %213, 4
  br i1 %250, label %286, label %283

251:                                              ; preds = %221, %221, %221
  %252 = getelementptr inbounds i8, ptr %214, i64 2
  %253 = ptrtoint ptr %252 to i64
  %254 = sub i64 %6, %253
  %255 = icmp sgt i64 %254, 1
  br i1 %255, label %212, label %286

256:                                              ; preds = %202, %221
  %257 = phi ptr [ %214, %221 ], [ %194, %202 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 2
  br label %283

259:                                              ; preds = %202, %221
  %260 = phi ptr [ %214, %221 ], [ %194, %202 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 2
  store ptr %261, ptr %5, align 8, !tbaa !5
  %262 = ptrtoint ptr %261 to i64
  %263 = sub i64 %6, %262
  %264 = icmp sgt i64 %263, 1
  br i1 %264, label %265, label %286

265:                                              ; preds = %259
  %266 = getelementptr inbounds i8, ptr %260, i64 3
  %267 = load i8, ptr %266, align 1, !tbaa !9
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %265
  %270 = load i8, ptr %261, align 1, !tbaa !9
  %271 = icmp eq i8 %270, 62
  %272 = getelementptr inbounds i8, ptr %260, i64 4
  %273 = select i1 %271, ptr %272, ptr %261
  %274 = select i1 %271, i32 3, i32 0
  br label %283

275:                                              ; preds = %221, %221, %228
  %276 = getelementptr inbounds i8, ptr %215, i64 4
  store ptr %276, ptr %5, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %275, %86, %43
  %278 = phi ptr [ %276, %275 ], [ %87, %86 ], [ %44, %43 ]
  %279 = phi i32 [ 0, %275 ], [ 1, %86 ], [ %13, %43 ]
  %280 = ptrtoint ptr %278 to i64
  %281 = sub i64 %6, %280
  %282 = icmp sgt i64 %281, 1
  br i1 %282, label %10, label %286, !llvm.loop !122

283:                                              ; preds = %21, %18, %10, %10, %10, %10, %218, %228, %202, %198, %64, %61, %56, %56, %56, %56, %69, %49, %26, %97, %103, %134, %120, %164, %164, %164, %164, %221, %212, %212, %212, %212, %269, %265, %249, %247, %90, %88, %47, %45, %256, %184
  %284 = phi ptr [ %185, %184 ], [ %258, %256 ], [ %12, %45 ], [ %12, %47 ], [ %52, %88 ], [ %52, %90 ], [ %214, %247 ], [ %214, %249 ], [ %261, %265 ], [ %273, %269 ], [ %214, %212 ], [ %214, %212 ], [ %214, %212 ], [ %214, %212 ], [ %214, %221 ], [ %147, %164 ], [ %147, %164 ], [ %147, %164 ], [ %147, %164 ], [ %121, %120 ], [ %121, %134 ], [ %98, %103 ], [ %98, %97 ], [ %12, %26 ], [ %12, %49 ], [ %52, %69 ], [ %52, %56 ], [ %52, %56 ], [ %52, %56 ], [ %52, %56 ], [ %52, %61 ], [ %52, %64 ], [ %194, %198 ], [ %194, %202 ], [ %214, %228 ], [ %214, %218 ], [ %12, %10 ], [ %12, %10 ], [ %12, %10 ], [ %12, %10 ], [ %12, %18 ], [ %12, %21 ]
  %285 = phi i32 [ 0, %184 ], [ 1, %256 ], [ 0, %45 ], [ 0, %47 ], [ 0, %88 ], [ 0, %90 ], [ 0, %247 ], [ 0, %249 ], [ 0, %265 ], [ %274, %269 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %212 ], [ 0, %221 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 0, %164 ], [ 0, %120 ], [ 0, %134 ], [ 0, %103 ], [ 0, %97 ], [ 0, %26 ], [ 0, %49 ], [ 0, %69 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ], [ 0, %61 ], [ 0, %64 ], [ 0, %198 ], [ 0, %202 ], [ 0, %228 ], [ 0, %218 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %18 ], [ 0, %21 ]
  store ptr %284, ptr %3, align 8, !tbaa !5
  br label %286

286:                                              ; preds = %51, %277, %193, %140, %92, %114, %207, %108, %135, %188, %168, %172, %251, %283, %4, %182, %259, %249, %247, %90, %88, %47, %45
  %287 = phi i32 [ -2, %45 ], [ -2, %47 ], [ -2, %88 ], [ -2, %90 ], [ -1, %259 ], [ -2, %249 ], [ -2, %247 ], [ %178, %182 ], [ -1, %4 ], [ %285, %283 ], [ -1, %251 ], [ -1, %188 ], [ -2, %168 ], [ -2, %172 ], [ -1, %135 ], [ -1, %108 ], [ -1, %207 ], [ -1, %114 ], [ -1, %92 ], [ -1, %140 ], [ -1, %193 ], [ -1, %277 ], [ -1, %51 ]
  ret i32 %287
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @initScan(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 {
  %7 = icmp ult ptr %3, %4
  br i1 %7, label %8, label %117

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.INIT_ENCODING, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %15 = load i8, ptr %14, align 1, !tbaa !36
  %16 = add i8 %15, -3
  %17 = icmp ult i8 %16, 3
  br i1 %17, label %117, label %18

18:                                               ; preds = %13
  %19 = load i8, ptr %3, align 1, !tbaa !9
  switch i8 %19, label %107 [
    i8 -2, label %20
    i8 -1, label %20
    i8 -17, label %20
    i8 0, label %117
    i8 60, label %117
  ]

20:                                               ; preds = %18, %18, %18
  %21 = icmp eq i8 %15, 0
  %22 = icmp eq i32 %2, 1
  %23 = and i1 %22, %21
  br i1 %23, label %107, label %117

24:                                               ; preds = %8
  %25 = load i8, ptr %3, align 1, !tbaa !9
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = load i8, ptr %11, align 1, !tbaa !9
  %29 = zext i8 %28 to i16
  %30 = or disjoint i16 %27, %29
  switch i16 %30, label %83 [
    i16 -257, label %31
    i16 15360, label %41
    i16 -2, label %58
    i16 -4165, label %68
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %33 = load i8, ptr %32, align 1, !tbaa !36
  %34 = icmp eq i8 %33, 0
  %35 = icmp eq i32 %2, 1
  %36 = and i1 %35, %34
  br i1 %36, label %107, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %38, ptr %5, align 8, !tbaa !5
  %39 = getelementptr inbounds ptr, ptr %0, i64 4
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  store ptr %40, ptr %10, align 8, !tbaa !5
  br label %117

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %43 = load i8, ptr %42, align 1, !tbaa !36
  %44 = icmp eq i8 %43, 4
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = icmp eq i8 %43, 3
  %47 = icmp eq i32 %2, 1
  %48 = and i1 %47, %46
  br i1 %48, label %107, label %51

49:                                               ; preds = %41
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %107, label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds ptr, ptr %0, i64 5
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  store ptr %53, ptr %10, align 8, !tbaa !5
  %54 = zext nneg i32 %2 to i64
  %55 = getelementptr inbounds [4 x ptr], ptr %53, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = tail call i32 %56(ptr noundef %53, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %117

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %60 = load i8, ptr %59, align 1, !tbaa !36
  %61 = icmp eq i8 %60, 0
  %62 = icmp eq i32 %2, 1
  %63 = and i1 %62, %61
  br i1 %63, label %107, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %65, ptr %5, align 8, !tbaa !5
  %66 = getelementptr inbounds ptr, ptr %0, i64 5
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  store ptr %67, ptr %10, align 8, !tbaa !5
  br label %117

68:                                               ; preds = %24
  %69 = icmp eq i32 %2, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %72 = load i8, ptr %71, align 1, !tbaa !36
  switch i8 %72, label %73 [
    i8 5, label %107
    i8 4, label %107
    i8 3, label %107
    i8 0, label %107
  ]

73:                                               ; preds = %70, %68
  %74 = getelementptr inbounds i8, ptr %3, i64 2
  %75 = icmp eq ptr %74, %4
  br i1 %75, label %117, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr %74, align 1, !tbaa !9
  %78 = icmp eq i8 %77, -65
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %3, i64 3
  store ptr %80, ptr %5, align 8, !tbaa !5
  %81 = getelementptr inbounds ptr, ptr %0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  store ptr %82, ptr %10, align 8, !tbaa !5
  br label %117

83:                                               ; preds = %24
  %84 = icmp eq i8 %25, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %83
  %86 = icmp eq i32 %2, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %89 = load i8, ptr %88, align 1, !tbaa !36
  %90 = icmp eq i8 %89, 5
  br i1 %90, label %107, label %91

91:                                               ; preds = %87, %85
  %92 = getelementptr inbounds ptr, ptr %0, i64 4
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  store ptr %93, ptr %10, align 8, !tbaa !5
  %94 = zext nneg i32 %2 to i64
  %95 = getelementptr inbounds [4 x ptr], ptr %93, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = tail call i32 %96(ptr noundef %93, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %117

98:                                               ; preds = %83
  %99 = icmp ne i8 %28, 0
  %100 = icmp eq i32 %2, 1
  %101 = or i1 %100, %99
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds ptr, ptr %0, i64 5
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  store ptr %104, ptr %10, align 8, !tbaa !5
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = tail call i32 %105(ptr noundef nonnull %104, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %117

107:                                              ; preds = %70, %70, %70, %70, %31, %45, %49, %58, %76, %87, %98, %18, %20
  %108 = getelementptr inbounds %struct.encoding, ptr %1, i64 0, i32 14
  %109 = load i8, ptr %108, align 1, !tbaa !36
  %110 = sext i8 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %0, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  store ptr %112, ptr %10, align 8, !tbaa !5
  %113 = zext nneg i32 %2 to i64
  %114 = getelementptr inbounds [4 x ptr], ptr %112, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = tail call i32 %115(ptr noundef %112, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #14
  br label %117

117:                                              ; preds = %73, %18, %18, %20, %13, %6, %107, %102, %91, %79, %64, %51, %37
  %118 = phi i32 [ %116, %107 ], [ %97, %91 ], [ %106, %102 ], [ 14, %79 ], [ 14, %64 ], [ %57, %51 ], [ 14, %37 ], [ -4, %6 ], [ -1, %13 ], [ -1, %20 ], [ -1, %18 ], [ -1, %18 ], [ -1, %73 ]
  ret i32 %118
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ascii_toUtf8(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr nocapture noundef %3, ptr noundef readnone %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = icmp ult ptr %6, %2
  br i1 %7, label %8, label %21

8:                                                ; preds = %5, %12
  %9 = phi ptr [ %17, %12 ], [ %6, %5 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !5
  %11 = icmp ult ptr %10, %4
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %13, ptr %1, align 8, !tbaa !5
  %14 = load i8, ptr %9, align 1, !tbaa !9
  %15 = load ptr, ptr %3, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %16, ptr %3, align 8, !tbaa !5
  store i8 %14, ptr %15, align 1, !tbaa !9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = icmp ult ptr %17, %2
  br i1 %18, label %8, label %21, !llvm.loop !123

19:                                               ; preds = %8
  %20 = icmp eq ptr %10, %4
  br i1 %20, label %22, label %21

21:                                               ; preds = %12, %5, %19
  br label %22

22:                                               ; preds = %19, %21
  %23 = phi i32 [ 0, %21 ], [ 2, %19 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @big2_prologTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #10 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %334

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = icmp eq i64 %9, 1
  br i1 %17, label %334, label %18

18:                                               ; preds = %6
  %19 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %19, label %20 [
    i8 0, label %27
    i8 -40, label %172
    i8 -39, label %172
    i8 -38, label %172
    i8 -37, label %172
    i8 -36, label %206
    i8 -35, label %206
    i8 -34, label %206
    i8 -33, label %206
    i8 -1, label %23
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !9
  br label %178

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = icmp ugt i8 %25, -3
  br i1 %26, label %206, label %178

27:                                               ; preds = %18
  %28 = getelementptr inbounds i8, ptr %1, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !9
  switch i8 %32, label %206 [
    i8 12, label %33
    i8 13, label %36
    i8 2, label %39
    i8 9, label %65
    i8 21, label %69
    i8 10, label %69
    i8 30, label %97
    i8 35, label %100
    i8 20, label %102
    i8 4, label %104
    i8 31, label %130
    i8 32, label %132
    i8 36, label %155
    i8 11, label %157
    i8 19, label %159
    i8 5, label %162
    i8 6, label %167
    i8 7, label %172
    i8 22, label %207
    i8 24, label %207
    i8 25, label %177
    i8 26, label %177
    i8 27, label %177
    i8 23, label %177
    i8 29, label %178
  ]

33:                                               ; preds = %27
  %34 = getelementptr inbounds i8, ptr %1, i64 2
  %35 = tail call fastcc i32 @big2_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef nonnull %34, ptr noundef nonnull %16, ptr noundef %3)
  br label %334

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, ptr %1, i64 2
  %38 = tail call fastcc i32 @big2_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef nonnull %37, ptr noundef nonnull %16, ptr noundef %3)
  br label %334

39:                                               ; preds = %27
  %40 = getelementptr inbounds i8, ptr %1, i64 2
  %41 = ptrtoint ptr %16 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %334

45:                                               ; preds = %39
  %46 = load i8, ptr %40, align 1, !tbaa !9
  switch i8 %46, label %63 [
    i8 0, label %51
    i8 -1, label %47
    i8 -33, label %64
    i8 -34, label %64
    i8 -35, label %64
    i8 -36, label %64
  ]

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %1, i64 3
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp ugt i8 %49, -3
  br i1 %50, label %64, label %63

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %1, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  switch i8 %56, label %64 [
    i8 16, label %57
    i8 15, label %60
    i8 22, label %63
    i8 24, label %63
    i8 29, label %63
    i8 5, label %63
    i8 6, label %63
    i8 7, label %63
  ]

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, ptr %1, i64 4
  %59 = tail call fastcc i32 @big2_scanDecl(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef nonnull %16, ptr noundef %3), !range !51
  br label %334

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, ptr %1, i64 4
  %62 = tail call fastcc i32 @big2_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull %16, ptr noundef %3)
  br label %334

63:                                               ; preds = %47, %45, %51, %51, %51, %51, %51, %51
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %334

64:                                               ; preds = %45, %45, %45, %45, %47, %51
  store ptr %40, ptr %3, align 8, !tbaa !5
  br label %334

65:                                               ; preds = %27
  %66 = getelementptr inbounds i8, ptr %1, i64 2
  %67 = icmp eq ptr %66, %16
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store ptr %16, ptr %3, align 8, !tbaa !5
  br label %334

69:                                               ; preds = %65, %27, %27
  %70 = ptrtoint ptr %16 to i64
  %71 = getelementptr inbounds i8, ptr %1, i64 2
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %70, %72
  %74 = icmp sgt i64 %73, 1
  br i1 %74, label %75, label %95

75:                                               ; preds = %69, %90
  %76 = phi ptr [ %91, %90 ], [ %71, %69 ]
  %77 = phi ptr [ %76, %90 ], [ %1, %69 ]
  %78 = load i8, ptr %76, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %77, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !9
  switch i8 %85, label %89 [
    i8 21, label %90
    i8 10, label %90
    i8 9, label %86
  ]

86:                                               ; preds = %80
  %87 = getelementptr inbounds i8, ptr %77, i64 4
  %88 = icmp eq ptr %87, %16
  br i1 %88, label %89, label %90

89:                                               ; preds = %75, %86, %80
  store ptr %76, ptr %3, align 8, !tbaa !5
  br label %334

90:                                               ; preds = %86, %80, %80
  %91 = getelementptr inbounds i8, ptr %76, i64 2
  %92 = ptrtoint ptr %91 to i64
  %93 = sub i64 %70, %92
  %94 = icmp sgt i64 %93, 1
  br i1 %94, label %75, label %95

95:                                               ; preds = %90, %69
  %96 = phi ptr [ %71, %69 ], [ %91, %90 ]
  store ptr %96, ptr %3, align 8, !tbaa !5
  br label %334

97:                                               ; preds = %27
  %98 = getelementptr inbounds i8, ptr %1, i64 2
  %99 = tail call fastcc i32 @big2_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %98, ptr noundef nonnull %16, ptr noundef %3), !range !52
  br label %334

100:                                              ; preds = %27
  %101 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %101, ptr %3, align 8, !tbaa !5
  br label %334

102:                                              ; preds = %27
  %103 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %103, ptr %3, align 8, !tbaa !5
  br label %334

104:                                              ; preds = %27
  %105 = getelementptr inbounds i8, ptr %1, i64 2
  %106 = ptrtoint ptr %16 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = icmp sgt i64 %108, 1
  br i1 %109, label %110, label %334

110:                                              ; preds = %104
  %111 = load i8, ptr %105, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %1, i64 3
  %115 = load i8, ptr %114, align 1, !tbaa !9
  %116 = icmp eq i8 %115, 93
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = icmp ugt i64 %108, 3
  br i1 %118, label %119, label %334

119:                                              ; preds = %117
  %120 = getelementptr inbounds i8, ptr %1, i64 4
  %121 = load i8, ptr %120, align 1, !tbaa !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = getelementptr inbounds i8, ptr %1, i64 5
  %125 = load i8, ptr %124, align 1, !tbaa !9
  %126 = icmp eq i8 %125, 62
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, ptr %1, i64 6
  store ptr %128, ptr %3, align 8, !tbaa !5
  br label %334

129:                                              ; preds = %119, %123, %113, %110
  store ptr %105, ptr %3, align 8, !tbaa !5
  br label %334

130:                                              ; preds = %27
  %131 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %131, ptr %3, align 8, !tbaa !5
  br label %334

132:                                              ; preds = %27
  %133 = getelementptr inbounds i8, ptr %1, i64 2
  %134 = ptrtoint ptr %16 to i64
  %135 = ptrtoint ptr %133 to i64
  %136 = sub i64 %134, %135
  %137 = icmp sgt i64 %136, 1
  br i1 %137, label %138, label %334

138:                                              ; preds = %132
  %139 = load i8, ptr %133, align 1, !tbaa !9
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = getelementptr inbounds i8, ptr %1, i64 3
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !9
  switch i8 %146, label %154 [
    i8 33, label %147
    i8 15, label %149
    i8 34, label %151
    i8 9, label %153
    i8 10, label %153
    i8 21, label %153
    i8 11, label %153
    i8 35, label %153
    i8 36, label %153
    i8 32, label %153
  ]

147:                                              ; preds = %141
  %148 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %148, ptr %3, align 8, !tbaa !5
  br label %334

149:                                              ; preds = %141
  %150 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %150, ptr %3, align 8, !tbaa !5
  br label %334

151:                                              ; preds = %141
  %152 = getelementptr inbounds i8, ptr %1, i64 4
  store ptr %152, ptr %3, align 8, !tbaa !5
  br label %334

153:                                              ; preds = %141, %141, %141, %141, %141, %141, %141
  store ptr %133, ptr %3, align 8, !tbaa !5
  br label %334

154:                                              ; preds = %138, %141
  store ptr %133, ptr %3, align 8, !tbaa !5
  br label %334

155:                                              ; preds = %27
  %156 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %156, ptr %3, align 8, !tbaa !5
  br label %334

157:                                              ; preds = %27
  %158 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %158, ptr %3, align 8, !tbaa !5
  br label %334

159:                                              ; preds = %27
  %160 = getelementptr inbounds i8, ptr %1, i64 2
  %161 = tail call fastcc i32 @big2_scanPoundName(ptr noundef nonnull %0, ptr noundef nonnull %160, ptr noundef nonnull %16, ptr noundef %3), !range !53
  br label %334

162:                                              ; preds = %27
  %163 = ptrtoint ptr %16 to i64
  %164 = sub i64 %163, %8
  %165 = icmp slt i64 %164, 2
  br i1 %165, label %334, label %166

166:                                              ; preds = %162
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %334

167:                                              ; preds = %27
  %168 = ptrtoint ptr %16 to i64
  %169 = sub i64 %168, %8
  %170 = icmp slt i64 %169, 3
  br i1 %170, label %334, label %171

171:                                              ; preds = %167
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %334

172:                                              ; preds = %18, %18, %18, %18, %27
  %173 = ptrtoint ptr %16 to i64
  %174 = sub i64 %173, %8
  %175 = icmp slt i64 %174, 4
  br i1 %175, label %334, label %176

176:                                              ; preds = %172
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %334

177:                                              ; preds = %27, %27, %27, %27
  br label %207

178:                                              ; preds = %20, %23, %27
  %179 = phi i8 [ %22, %20 ], [ %25, %23 ], [ %29, %27 ]
  %180 = zext i8 %19 to i64
  %181 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !9
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 3
  %185 = zext i8 %179 to i32
  %186 = lshr i32 %185, 5
  %187 = or disjoint i32 %186, %184
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !14
  %191 = and i32 %185, 31
  %192 = shl nuw i32 1, %191
  %193 = and i32 %192, %190
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %178
  %196 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %180
  %197 = load i8, ptr %196, align 1, !tbaa !9
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 3
  %200 = or disjoint i32 %199, %186
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !14
  %204 = and i32 %203, %192
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %18, %18, %18, %18, %23, %195, %27
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %334

207:                                              ; preds = %195, %178, %27, %27, %177
  %208 = phi i32 [ 19, %177 ], [ 18, %27 ], [ 18, %27 ], [ 18, %178 ], [ 19, %195 ]
  %209 = getelementptr inbounds i8, ptr %1, i64 2
  %210 = ptrtoint ptr %16 to i64
  %211 = ptrtoint ptr %209 to i64
  %212 = sub i64 %210, %211
  %213 = icmp sgt i64 %212, 1
  br i1 %213, label %214, label %331

214:                                              ; preds = %207, %325
  %215 = phi i64 [ %329, %325 ], [ %212, %207 ]
  %216 = phi i32 [ %327, %325 ], [ %208, %207 ]
  %217 = phi ptr [ %326, %325 ], [ %209, %207 ]
  %218 = load i8, ptr %217, align 1, !tbaa !9
  switch i8 %218, label %219 [
    i8 0, label %226
    i8 -40, label %256
    i8 -39, label %256
    i8 -38, label %256
    i8 -37, label %256
    i8 -36, label %324
    i8 -35, label %324
    i8 -34, label %324
    i8 -33, label %324
    i8 -1, label %222
  ]

219:                                              ; preds = %214
  %220 = getelementptr inbounds i8, ptr %217, i64 1
  %221 = load i8, ptr %220, align 1, !tbaa !9
  br label %232

222:                                              ; preds = %214
  %223 = getelementptr inbounds i8, ptr %217, i64 1
  %224 = load i8, ptr %223, align 1, !tbaa !9
  %225 = icmp ugt i8 %224, -3
  br i1 %225, label %324, label %232

226:                                              ; preds = %214
  %227 = getelementptr inbounds i8, ptr %217, i64 1
  %228 = load i8, ptr %227, align 1, !tbaa !9
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !9
  switch i8 %231, label %324 [
    i8 29, label %232
    i8 22, label %250
    i8 24, label %250
    i8 25, label %250
    i8 26, label %250
    i8 27, label %250
    i8 5, label %252
    i8 6, label %253
    i8 7, label %256
    i8 11, label %259
    i8 32, label %259
    i8 35, label %259
    i8 36, label %259
    i8 20, label %259
    i8 30, label %259
    i8 21, label %259
    i8 9, label %259
    i8 10, label %259
    i8 23, label %260
    i8 34, label %309
    i8 33, label %314
    i8 15, label %319
  ]

232:                                              ; preds = %219, %222, %226
  %233 = phi i8 [ %221, %219 ], [ %224, %222 ], [ %228, %226 ]
  %234 = zext i8 %218 to i64
  %235 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !9
  %237 = zext i8 %236 to i32
  %238 = shl nuw nsw i32 %237, 3
  %239 = zext i8 %233 to i32
  %240 = lshr i32 %239, 5
  %241 = or disjoint i32 %240, %238
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !14
  %245 = and i32 %239, 31
  %246 = shl nuw i32 1, %245
  %247 = and i32 %246, %244
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %232
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

250:                                              ; preds = %232, %226, %226, %226, %226, %226
  %251 = getelementptr inbounds i8, ptr %217, i64 2
  br label %325

252:                                              ; preds = %226
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

253:                                              ; preds = %226
  %254 = icmp eq i64 %215, 2
  br i1 %254, label %334, label %255

255:                                              ; preds = %253
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

256:                                              ; preds = %214, %214, %214, %214, %226
  %257 = icmp ult i64 %215, 4
  br i1 %257, label %334, label %258

258:                                              ; preds = %256
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

259:                                              ; preds = %226, %226, %226, %226, %226, %226, %226, %226, %226
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

260:                                              ; preds = %226
  %261 = getelementptr inbounds i8, ptr %217, i64 2
  switch i32 %216, label %325 [
    i32 18, label %262
    i32 41, label %308
  ]

262:                                              ; preds = %260
  %263 = ptrtoint ptr %261 to i64
  %264 = sub i64 %210, %263
  %265 = icmp sgt i64 %264, 1
  br i1 %265, label %266, label %334

266:                                              ; preds = %262
  %267 = load i8, ptr %261, align 1, !tbaa !9
  switch i8 %267, label %268 [
    i8 0, label %275
    i8 -40, label %305
    i8 -39, label %305
    i8 -38, label %305
    i8 -37, label %305
    i8 -36, label %325
    i8 -35, label %325
    i8 -34, label %325
    i8 -33, label %325
    i8 -1, label %271
  ]

268:                                              ; preds = %266
  %269 = getelementptr inbounds i8, ptr %217, i64 3
  %270 = load i8, ptr %269, align 1, !tbaa !9
  br label %281

271:                                              ; preds = %266
  %272 = getelementptr inbounds i8, ptr %217, i64 3
  %273 = load i8, ptr %272, align 1, !tbaa !9
  %274 = icmp ugt i8 %273, -3
  br i1 %274, label %325, label %281

275:                                              ; preds = %266
  %276 = getelementptr inbounds i8, ptr %217, i64 3
  %277 = load i8, ptr %276, align 1, !tbaa !9
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !9
  switch i8 %280, label %325 [
    i8 29, label %281
    i8 22, label %299
    i8 24, label %299
    i8 25, label %299
    i8 26, label %299
    i8 27, label %299
    i8 5, label %301
    i8 6, label %302
    i8 7, label %305
  ]

281:                                              ; preds = %268, %271, %275
  %282 = phi i8 [ %270, %268 ], [ %273, %271 ], [ %277, %275 ]
  %283 = zext i8 %267 to i64
  %284 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !9
  %286 = zext i8 %285 to i32
  %287 = shl nuw nsw i32 %286, 3
  %288 = zext i8 %282 to i32
  %289 = lshr i32 %288, 5
  %290 = or disjoint i32 %289, %287
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !14
  %294 = and i32 %288, 31
  %295 = shl nuw i32 1, %294
  %296 = and i32 %295, %293
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %281
  store ptr %261, ptr %3, align 8, !tbaa !5
  br label %334

299:                                              ; preds = %281, %275, %275, %275, %275, %275
  %300 = getelementptr inbounds i8, ptr %217, i64 4
  br label %325

301:                                              ; preds = %275
  store ptr %261, ptr %3, align 8, !tbaa !5
  br label %334

302:                                              ; preds = %275
  %303 = icmp eq i64 %264, 2
  br i1 %303, label %334, label %304

304:                                              ; preds = %302
  store ptr %261, ptr %3, align 8, !tbaa !5
  br label %334

305:                                              ; preds = %266, %266, %266, %266, %275
  %306 = icmp ult i64 %264, 4
  br i1 %306, label %334, label %307

307:                                              ; preds = %305
  store ptr %261, ptr %3, align 8, !tbaa !5
  br label %334

308:                                              ; preds = %260
  br label %325

309:                                              ; preds = %226
  %310 = icmp eq i32 %216, 19
  br i1 %310, label %311, label %312

311:                                              ; preds = %309
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

312:                                              ; preds = %309
  %313 = getelementptr inbounds i8, ptr %217, i64 2
  store ptr %313, ptr %3, align 8, !tbaa !5
  br label %334

314:                                              ; preds = %226
  %315 = icmp eq i32 %216, 19
  br i1 %315, label %316, label %317

316:                                              ; preds = %314
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

317:                                              ; preds = %314
  %318 = getelementptr inbounds i8, ptr %217, i64 2
  store ptr %318, ptr %3, align 8, !tbaa !5
  br label %334

319:                                              ; preds = %226
  %320 = icmp eq i32 %216, 19
  br i1 %320, label %321, label %322

321:                                              ; preds = %319
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

322:                                              ; preds = %319
  %323 = getelementptr inbounds i8, ptr %217, i64 2
  store ptr %323, ptr %3, align 8, !tbaa !5
  br label %334

324:                                              ; preds = %214, %214, %214, %214, %222, %226
  store ptr %217, ptr %3, align 8, !tbaa !5
  br label %334

325:                                              ; preds = %266, %266, %266, %266, %271, %275, %308, %260, %299, %250
  %326 = phi ptr [ %261, %260 ], [ %261, %308 ], [ %300, %299 ], [ %251, %250 ], [ %261, %275 ], [ %261, %271 ], [ %261, %266 ], [ %261, %266 ], [ %261, %266 ], [ %261, %266 ]
  %327 = phi i32 [ %216, %260 ], [ 19, %308 ], [ 41, %299 ], [ %216, %250 ], [ 19, %275 ], [ 19, %271 ], [ 19, %266 ], [ 19, %266 ], [ 19, %266 ], [ 19, %266 ]
  %328 = ptrtoint ptr %326 to i64
  %329 = sub i64 %210, %328
  %330 = icmp sgt i64 %329, 1
  br i1 %330, label %214, label %331, !llvm.loop !124

331:                                              ; preds = %325, %207
  %332 = phi i32 [ %208, %207 ], [ %327, %325 ]
  %333 = sub nsw i32 0, %332
  br label %334

334:                                              ; preds = %262, %305, %302, %256, %253, %172, %167, %162, %132, %117, %104, %39, %4, %6, %331, %324, %322, %321, %317, %316, %312, %311, %307, %304, %301, %298, %259, %258, %255, %252, %249, %206, %176, %171, %166, %159, %157, %155, %154, %153, %151, %149, %147, %130, %129, %127, %102, %100, %97, %95, %89, %68, %64, %63, %60, %57, %36, %33
  %335 = phi i32 [ 0, %206 ], [ 0, %324 ], [ 0, %321 ], [ 30, %322 ], [ 0, %316 ], [ 31, %317 ], [ 0, %311 ], [ 32, %312 ], [ 0, %307 ], [ 0, %304 ], [ 0, %301 ], [ 0, %298 ], [ %216, %259 ], [ 0, %258 ], [ 0, %255 ], [ 0, %252 ], [ 0, %249 ], [ %333, %331 ], [ 0, %176 ], [ 0, %171 ], [ 0, %166 ], [ %161, %159 ], [ 17, %157 ], [ 21, %155 ], [ 0, %154 ], [ 24, %153 ], [ 37, %151 ], [ 35, %149 ], [ 36, %147 ], [ 23, %130 ], [ 34, %127 ], [ 26, %129 ], [ 25, %102 ], [ 38, %100 ], [ %99, %97 ], [ 15, %89 ], [ 15, %95 ], [ -15, %68 ], [ 0, %64 ], [ 29, %63 ], [ %62, %60 ], [ %59, %57 ], [ %38, %36 ], [ %35, %33 ], [ -1, %6 ], [ -4, %4 ], [ -1, %39 ], [ -26, %104 ], [ -1, %117 ], [ -24, %132 ], [ -2, %162 ], [ -2, %167 ], [ -2, %172 ], [ -2, %253 ], [ -2, %256 ], [ -2, %302 ], [ -2, %305 ], [ -1, %262 ]
  ret i32 %335
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @big2_contentTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #10 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %540

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = xor i1 %13, true
  %18 = or i1 %11, %17
  br i1 %18, label %19, label %540

19:                                               ; preds = %6
  %20 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %20, label %473 [
    i8 0, label %25
    i8 -40, label %466
    i8 -39, label %466
    i8 -38, label %466
    i8 -37, label %466
    i8 -36, label %472
    i8 -35, label %472
    i8 -34, label %472
    i8 -33, label %472
    i8 -1, label %21
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %472, label %473

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %1, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  switch i8 %30, label %473 [
    i8 2, label %31
    i8 3, label %402
    i8 9, label %405
    i8 10, label %426
    i8 4, label %428
    i8 5, label %454
    i8 6, label %460
    i8 7, label %466
    i8 0, label %472
    i8 1, label %472
    i8 8, label %472
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = ptrtoint ptr %16 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = icmp sgt i64 %35, 1
  br i1 %36, label %37, label %540

37:                                               ; preds = %31
  %38 = load i8, ptr %32, align 1, !tbaa !9
  switch i8 %38, label %39 [
    i8 0, label %46
    i8 -40, label %79
    i8 -39, label %79
    i8 -38, label %79
    i8 -37, label %79
    i8 -36, label %224
    i8 -35, label %224
    i8 -34, label %224
    i8 -33, label %224
    i8 -1, label %42
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %1, i64 3
  %41 = load i8, ptr %40, align 1, !tbaa !9
  br label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %1, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp ugt i8 %44, -3
  br i1 %45, label %224, label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds i8, ptr %1, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  switch i8 %51, label %224 [
    i8 29, label %52
    i8 22, label %70
    i8 24, label %70
    i8 5, label %75
    i8 6, label %76
    i8 7, label %79
    i8 16, label %82
    i8 15, label %103
    i8 17, label %106
  ]

52:                                               ; preds = %46, %42, %39
  %53 = phi i8 [ %41, %39 ], [ %44, %42 ], [ %48, %46 ]
  %54 = zext i8 %38 to i64
  %55 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 3
  %59 = zext i8 %53 to i32
  %60 = lshr i32 %59, 5
  %61 = or disjoint i32 %58, %60
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !14
  %65 = and i32 %59, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %540

70:                                               ; preds = %52, %46, %46
  %71 = getelementptr inbounds i8, ptr %1, i64 4
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %33, %72
  %74 = icmp sgt i64 %73, 1
  br i1 %74, label %225, label %540

75:                                               ; preds = %46
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %540

76:                                               ; preds = %46
  %77 = icmp eq i64 %35, 2
  br i1 %77, label %540, label %78

78:                                               ; preds = %76
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %540

79:                                               ; preds = %46, %37, %37, %37, %37
  %80 = icmp ult i64 %35, 4
  br i1 %80, label %540, label %81

81:                                               ; preds = %79
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %540

82:                                               ; preds = %46
  %83 = getelementptr inbounds i8, ptr %1, i64 4
  %84 = ptrtoint ptr %83 to i64
  %85 = sub i64 %33, %84
  %86 = icmp sgt i64 %85, 1
  br i1 %86, label %87, label %540

87:                                               ; preds = %82
  %88 = load i8, ptr %83, align 1, !tbaa !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %1, i64 5
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !9
  switch i8 %95, label %102 [
    i8 27, label %96
    i8 20, label %99
  ]

96:                                               ; preds = %90
  %97 = getelementptr inbounds i8, ptr %1, i64 6
  %98 = tail call fastcc i32 @big2_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %97, ptr noundef nonnull %16, ptr noundef %3), !range !64
  br label %540

99:                                               ; preds = %90
  %100 = getelementptr inbounds i8, ptr %1, i64 6
  %101 = tail call fastcc i32 @big2_scanCdataSection(ptr noundef nonnull %100, ptr noundef nonnull %16, ptr noundef %3)
  br label %540

102:                                              ; preds = %90, %87
  store ptr %83, ptr %3, align 8, !tbaa !5
  br label %540

103:                                              ; preds = %46
  %104 = getelementptr inbounds i8, ptr %1, i64 4
  %105 = tail call fastcc i32 @big2_scanPi(ptr noundef nonnull %0, ptr noundef nonnull %104, ptr noundef nonnull %16, ptr noundef %3)
  br label %540

106:                                              ; preds = %46
  %107 = getelementptr inbounds i8, ptr %1, i64 4
  %108 = ptrtoint ptr %107 to i64
  %109 = sub i64 %33, %108
  %110 = icmp sgt i64 %109, 1
  br i1 %110, label %111, label %540

111:                                              ; preds = %106
  %112 = load i8, ptr %107, align 1, !tbaa !9
  switch i8 %112, label %113 [
    i8 0, label %120
    i8 -40, label %150
    i8 -39, label %150
    i8 -38, label %150
    i8 -37, label %150
    i8 -36, label %221
    i8 -35, label %221
    i8 -34, label %221
    i8 -33, label %221
    i8 -1, label %116
  ]

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %1, i64 5
  %115 = load i8, ptr %114, align 1, !tbaa !9
  br label %126

116:                                              ; preds = %111
  %117 = getelementptr inbounds i8, ptr %1, i64 5
  %118 = load i8, ptr %117, align 1, !tbaa !9
  %119 = icmp ugt i8 %118, -3
  br i1 %119, label %221, label %126

120:                                              ; preds = %111
  %121 = getelementptr inbounds i8, ptr %1, i64 5
  %122 = load i8, ptr %121, align 1, !tbaa !9
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !9
  switch i8 %125, label %221 [
    i8 29, label %126
    i8 22, label %143
    i8 24, label %143
    i8 7, label %150
    i8 6, label %148
  ]

126:                                              ; preds = %120, %116, %113
  %127 = phi i8 [ %115, %113 ], [ %118, %116 ], [ %122, %120 ]
  %128 = zext i8 %112 to i64
  %129 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 3
  %133 = zext i8 %127 to i32
  %134 = lshr i32 %133, 5
  %135 = or disjoint i32 %132, %134
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !14
  %139 = and i32 %133, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %221, label %143

143:                                              ; preds = %126, %120, %120
  %144 = getelementptr inbounds i8, ptr %1, i64 6
  %145 = ptrtoint ptr %144 to i64
  %146 = sub i64 %33, %145
  %147 = icmp sgt i64 %146, 1
  br i1 %147, label %152, label %540

148:                                              ; preds = %120
  %149 = icmp eq i64 %109, 2
  br i1 %149, label %540, label %221

150:                                              ; preds = %120, %111, %111, %111, %111
  %151 = icmp ult i64 %109, 4
  br i1 %151, label %540, label %221

152:                                              ; preds = %143, %216
  %153 = phi i64 [ %219, %216 ], [ %146, %143 ]
  %154 = phi ptr [ %217, %216 ], [ %144, %143 ]
  %155 = phi ptr [ %154, %216 ], [ %107, %143 ]
  %156 = load i8, ptr %154, align 1, !tbaa !9
  switch i8 %156, label %157 [
    i8 0, label %164
    i8 -40, label %189
    i8 -39, label %189
    i8 -38, label %189
    i8 -37, label %189
    i8 -36, label %221
    i8 -35, label %221
    i8 -34, label %221
    i8 -33, label %221
    i8 -1, label %160
  ]

157:                                              ; preds = %152
  %158 = getelementptr inbounds i8, ptr %155, i64 3
  %159 = load i8, ptr %158, align 1, !tbaa !9
  br label %170

160:                                              ; preds = %152
  %161 = getelementptr inbounds i8, ptr %155, i64 3
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = icmp ugt i8 %162, -3
  br i1 %163, label %221, label %170

164:                                              ; preds = %152
  %165 = getelementptr inbounds i8, ptr %155, i64 3
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !9
  switch i8 %169, label %221 [
    i8 29, label %170
    i8 22, label %216
    i8 24, label %216
    i8 25, label %216
    i8 26, label %216
    i8 27, label %216
    i8 11, label %214
    i8 6, label %187
    i8 7, label %189
    i8 21, label %191
    i8 9, label %191
    i8 10, label %191
    i8 23, label %216
  ]

170:                                              ; preds = %164, %160, %157
  %171 = phi i8 [ %159, %157 ], [ %162, %160 ], [ %166, %164 ]
  %172 = zext i8 %156 to i64
  %173 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !9
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 3
  %177 = zext i8 %171 to i32
  %178 = lshr i32 %177, 5
  %179 = or disjoint i32 %176, %178
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !14
  %183 = and i32 %177, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %221, label %216

187:                                              ; preds = %164
  %188 = icmp eq i64 %153, 2
  br i1 %188, label %540, label %221

189:                                              ; preds = %164, %152, %152, %152, %152
  %190 = icmp ult i64 %153, 4
  br i1 %190, label %540, label %221

191:                                              ; preds = %164, %164, %164
  %192 = getelementptr inbounds i8, ptr %154, i64 2
  %193 = ptrtoint ptr %192 to i64
  %194 = sub i64 %33, %193
  %195 = icmp sgt i64 %194, 1
  br i1 %195, label %196, label %540

196:                                              ; preds = %191, %209
  %197 = phi ptr [ %210, %209 ], [ %192, %191 ]
  %198 = phi ptr [ %197, %209 ], [ %154, %191 ]
  %199 = load i8, ptr %197, align 1, !tbaa !9
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %196
  %202 = getelementptr inbounds i8, ptr %198, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !9
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !9
  switch i8 %206, label %221 [
    i8 21, label %209
    i8 9, label %209
    i8 10, label %209
    i8 11, label %207
  ]

207:                                              ; preds = %201
  %208 = getelementptr inbounds i8, ptr %198, i64 4
  br label %221

209:                                              ; preds = %201, %201, %201
  %210 = getelementptr inbounds i8, ptr %197, i64 2
  %211 = ptrtoint ptr %210 to i64
  %212 = sub i64 %33, %211
  %213 = icmp sgt i64 %212, 1
  br i1 %213, label %196, label %540, !llvm.loop !125

214:                                              ; preds = %164
  %215 = getelementptr inbounds i8, ptr %155, i64 4
  br label %221

216:                                              ; preds = %170, %164, %164, %164, %164, %164, %164
  %217 = getelementptr inbounds i8, ptr %154, i64 2
  %218 = ptrtoint ptr %217 to i64
  %219 = sub i64 %33, %218
  %220 = icmp sgt i64 %219, 1
  br i1 %220, label %152, label %540, !llvm.loop !126

221:                                              ; preds = %170, %164, %160, %152, %152, %152, %152, %201, %196, %214, %207, %189, %187, %150, %148, %126, %120, %116, %111, %111, %111, %111
  %222 = phi ptr [ %215, %214 ], [ %208, %207 ], [ %107, %126 ], [ %107, %148 ], [ %107, %150 ], [ %107, %111 ], [ %107, %111 ], [ %107, %111 ], [ %107, %111 ], [ %107, %116 ], [ %107, %120 ], [ %154, %187 ], [ %154, %189 ], [ %197, %196 ], [ %197, %201 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %152 ], [ %154, %160 ], [ %154, %164 ], [ %154, %170 ]
  %223 = phi i32 [ 5, %214 ], [ 5, %207 ], [ 0, %126 ], [ 0, %148 ], [ 0, %150 ], [ 0, %111 ], [ 0, %111 ], [ 0, %111 ], [ 0, %111 ], [ 0, %116 ], [ 0, %120 ], [ 0, %187 ], [ 0, %189 ], [ 0, %196 ], [ 0, %201 ], [ 0, %152 ], [ 0, %152 ], [ 0, %152 ], [ 0, %152 ], [ 0, %160 ], [ 0, %164 ], [ 0, %170 ]
  store ptr %222, ptr %3, align 8, !tbaa !5
  br label %540

224:                                              ; preds = %46, %42, %37, %37, %37, %37
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %540

225:                                              ; preds = %70, %395
  %226 = phi i64 [ %400, %395 ], [ %73, %70 ]
  %227 = phi i32 [ %397, %395 ], [ 0, %70 ]
  %228 = phi ptr [ %398, %395 ], [ %71, %70 ]
  %229 = load i8, ptr %228, align 1, !tbaa !9
  switch i8 %229, label %230 [
    i8 0, label %237
    i8 -40, label %265
    i8 -39, label %265
    i8 -38, label %265
    i8 -37, label %265
    i8 -36, label %394
    i8 -35, label %394
    i8 -34, label %394
    i8 -33, label %394
    i8 -1, label %233
  ]

230:                                              ; preds = %225
  %231 = getelementptr inbounds i8, ptr %228, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !9
  br label %243

233:                                              ; preds = %225
  %234 = getelementptr inbounds i8, ptr %228, i64 1
  %235 = load i8, ptr %234, align 1, !tbaa !9
  %236 = icmp ugt i8 %235, -3
  br i1 %236, label %394, label %243

237:                                              ; preds = %225
  %238 = getelementptr inbounds i8, ptr %228, i64 1
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !9
  switch i8 %242, label %394 [
    i8 29, label %243
    i8 22, label %395
    i8 24, label %395
    i8 25, label %395
    i8 26, label %395
    i8 27, label %395
    i8 5, label %261
    i8 6, label %262
    i8 7, label %265
    i8 23, label %268
    i8 21, label %317
    i8 9, label %317
    i8 10, label %317
    i8 11, label %375
    i8 17, label %378
  ]

243:                                              ; preds = %237, %233, %230
  %244 = phi i8 [ %232, %230 ], [ %235, %233 ], [ %239, %237 ]
  %245 = zext i8 %229 to i64
  %246 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i32
  %249 = shl nuw nsw i32 %248, 3
  %250 = zext i8 %244 to i32
  %251 = lshr i32 %250, 5
  %252 = or disjoint i32 %249, %251
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !14
  %256 = and i32 %250, 31
  %257 = shl nuw i32 1, %256
  %258 = and i32 %257, %255
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %395

260:                                              ; preds = %243
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

261:                                              ; preds = %237
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

262:                                              ; preds = %237
  %263 = icmp eq i64 %226, 2
  br i1 %263, label %540, label %264

264:                                              ; preds = %262
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

265:                                              ; preds = %237, %225, %225, %225, %225
  %266 = icmp ult i64 %226, 4
  br i1 %266, label %540, label %267

267:                                              ; preds = %265
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

268:                                              ; preds = %237
  %269 = icmp eq i32 %227, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %268
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

271:                                              ; preds = %268
  %272 = getelementptr inbounds i8, ptr %228, i64 2
  %273 = ptrtoint ptr %272 to i64
  %274 = sub i64 %33, %273
  %275 = icmp sgt i64 %274, 1
  br i1 %275, label %276, label %540

276:                                              ; preds = %271
  %277 = load i8, ptr %272, align 1, !tbaa !9
  switch i8 %277, label %278 [
    i8 0, label %285
    i8 -40, label %313
    i8 -39, label %313
    i8 -38, label %313
    i8 -37, label %313
    i8 -36, label %316
    i8 -35, label %316
    i8 -34, label %316
    i8 -33, label %316
    i8 -1, label %281
  ]

278:                                              ; preds = %276
  %279 = getelementptr inbounds i8, ptr %228, i64 3
  %280 = load i8, ptr %279, align 1, !tbaa !9
  br label %291

281:                                              ; preds = %276
  %282 = getelementptr inbounds i8, ptr %228, i64 3
  %283 = load i8, ptr %282, align 1, !tbaa !9
  %284 = icmp ugt i8 %283, -3
  br i1 %284, label %316, label %291

285:                                              ; preds = %276
  %286 = getelementptr inbounds i8, ptr %228, i64 3
  %287 = load i8, ptr %286, align 1, !tbaa !9
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !9
  switch i8 %290, label %316 [
    i8 29, label %291
    i8 22, label %395
    i8 24, label %395
    i8 5, label %309
    i8 6, label %310
    i8 7, label %313
  ]

291:                                              ; preds = %285, %281, %278
  %292 = phi i8 [ %280, %278 ], [ %283, %281 ], [ %287, %285 ]
  %293 = zext i8 %277 to i64
  %294 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !9
  %296 = zext i8 %295 to i32
  %297 = shl nuw nsw i32 %296, 3
  %298 = zext i8 %292 to i32
  %299 = lshr i32 %298, 5
  %300 = or disjoint i32 %297, %299
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !14
  %304 = and i32 %298, 31
  %305 = shl nuw i32 1, %304
  %306 = and i32 %305, %303
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %395

308:                                              ; preds = %291
  store ptr %272, ptr %3, align 8, !tbaa !5
  br label %540

309:                                              ; preds = %285
  store ptr %272, ptr %3, align 8, !tbaa !5
  br label %540

310:                                              ; preds = %285
  %311 = icmp eq i64 %274, 2
  br i1 %311, label %540, label %312

312:                                              ; preds = %310
  store ptr %272, ptr %3, align 8, !tbaa !5
  br label %540

313:                                              ; preds = %285, %276, %276, %276, %276
  %314 = icmp ult i64 %274, 4
  br i1 %314, label %540, label %315

315:                                              ; preds = %313
  store ptr %272, ptr %3, align 8, !tbaa !5
  br label %540

316:                                              ; preds = %285, %281, %276, %276, %276, %276
  store ptr %272, ptr %3, align 8, !tbaa !5
  br label %540

317:                                              ; preds = %237, %237, %237
  %318 = getelementptr inbounds i8, ptr %228, i64 2
  %319 = ptrtoint ptr %318 to i64
  %320 = sub i64 %33, %319
  %321 = icmp sgt i64 %320, 1
  br i1 %321, label %322, label %540

322:                                              ; preds = %317, %369
  %323 = phi i64 [ %372, %369 ], [ %320, %317 ]
  %324 = phi ptr [ %370, %369 ], [ %318, %317 ]
  %325 = phi ptr [ %324, %369 ], [ %228, %317 ]
  %326 = load i8, ptr %324, align 1, !tbaa !9
  switch i8 %326, label %327 [
    i8 0, label %335
    i8 -40, label %366
    i8 -39, label %366
    i8 -38, label %366
    i8 -37, label %366
    i8 -36, label %374
    i8 -35, label %374
    i8 -34, label %374
    i8 -33, label %374
    i8 -1, label %331
  ]

327:                                              ; preds = %322
  %328 = getelementptr inbounds i8, ptr %325, i64 3
  %329 = load i8, ptr %328, align 1, !tbaa !9
  %330 = zext i8 %326 to i64
  br label %341

331:                                              ; preds = %322
  %332 = getelementptr inbounds i8, ptr %325, i64 3
  %333 = load i8, ptr %332, align 1, !tbaa !9
  %334 = icmp ugt i8 %333, -3
  br i1 %334, label %374, label %341

335:                                              ; preds = %322
  %336 = getelementptr inbounds i8, ptr %325, i64 3
  %337 = load i8, ptr %336, align 1, !tbaa !9
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !9
  switch i8 %340, label %374 [
    i8 29, label %341
    i8 22, label %359
    i8 24, label %359
    i8 5, label %362
    i8 6, label %363
    i8 7, label %366
    i8 11, label %375
    i8 17, label %378
    i8 21, label %369
    i8 9, label %369
    i8 10, label %369
  ]

341:                                              ; preds = %335, %331, %327
  %342 = phi i8 [ %333, %331 ], [ %329, %327 ], [ %337, %335 ]
  %343 = phi i64 [ 255, %331 ], [ %330, %327 ], [ 0, %335 ]
  %344 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !9
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 3
  %348 = zext i8 %342 to i32
  %349 = lshr i32 %348, 5
  %350 = or disjoint i32 %347, %349
  %351 = zext nneg i32 %350 to i64
  %352 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !14
  %354 = and i32 %348, 31
  %355 = shl nuw i32 1, %354
  %356 = and i32 %355, %353
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %341
  store ptr %324, ptr %3, align 8, !tbaa !5
  br label %540

359:                                              ; preds = %335, %335, %341
  %360 = getelementptr inbounds i8, ptr %325, i64 4
  %361 = tail call fastcc i32 @big2_scanAtts(ptr noundef nonnull %0, ptr noundef nonnull %360, ptr noundef %16, ptr noundef %3)
  br label %540

362:                                              ; preds = %335
  store ptr %324, ptr %3, align 8, !tbaa !5
  br label %540

363:                                              ; preds = %335
  %364 = icmp eq i64 %323, 2
  br i1 %364, label %540, label %365

365:                                              ; preds = %363
  store ptr %324, ptr %3, align 8, !tbaa !5
  br label %540

366:                                              ; preds = %335, %322, %322, %322, %322
  %367 = icmp ult i64 %323, 4
  br i1 %367, label %540, label %368

368:                                              ; preds = %366
  store ptr %324, ptr %3, align 8, !tbaa !5
  br label %540

369:                                              ; preds = %335, %335, %335
  %370 = getelementptr inbounds i8, ptr %324, i64 2
  %371 = ptrtoint ptr %370 to i64
  %372 = sub i64 %33, %371
  %373 = icmp sgt i64 %372, 1
  br i1 %373, label %322, label %540, !llvm.loop !127

374:                                              ; preds = %335, %322, %322, %322, %322, %331
  store ptr %324, ptr %3, align 8, !tbaa !5
  br label %540

375:                                              ; preds = %237, %335
  %376 = phi ptr [ %324, %335 ], [ %228, %237 ]
  %377 = getelementptr inbounds i8, ptr %376, i64 2
  store ptr %377, ptr %3, align 8, !tbaa !5
  br label %540

378:                                              ; preds = %237, %335
  %379 = phi ptr [ %324, %335 ], [ %228, %237 ]
  %380 = getelementptr inbounds i8, ptr %379, i64 2
  %381 = ptrtoint ptr %380 to i64
  %382 = sub i64 %33, %381
  %383 = icmp sgt i64 %382, 1
  br i1 %383, label %384, label %540

384:                                              ; preds = %378
  %385 = load i8, ptr %380, align 1, !tbaa !9
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = getelementptr inbounds i8, ptr %379, i64 3
  %389 = load i8, ptr %388, align 1, !tbaa !9
  %390 = icmp eq i8 %389, 62
  br i1 %390, label %392, label %391

391:                                              ; preds = %387, %384
  store ptr %380, ptr %3, align 8, !tbaa !5
  br label %540

392:                                              ; preds = %387
  %393 = getelementptr inbounds i8, ptr %379, i64 4
  store ptr %393, ptr %3, align 8, !tbaa !5
  br label %540

394:                                              ; preds = %237, %233, %225, %225, %225, %225
  store ptr %228, ptr %3, align 8, !tbaa !5
  br label %540

395:                                              ; preds = %291, %285, %285, %243, %237, %237, %237, %237, %237
  %396 = phi i64 [ 2, %243 ], [ 2, %237 ], [ 2, %237 ], [ 2, %237 ], [ 2, %237 ], [ 2, %237 ], [ 4, %291 ], [ 4, %285 ], [ 4, %285 ]
  %397 = phi i32 [ %227, %243 ], [ %227, %237 ], [ %227, %237 ], [ %227, %237 ], [ %227, %237 ], [ %227, %237 ], [ 1, %291 ], [ 1, %285 ], [ 1, %285 ]
  %398 = getelementptr inbounds i8, ptr %228, i64 %396
  %399 = ptrtoint ptr %398 to i64
  %400 = sub i64 %33, %399
  %401 = icmp sgt i64 %400, 1
  br i1 %401, label %225, label %540, !llvm.loop !128

402:                                              ; preds = %25
  %403 = getelementptr inbounds i8, ptr %1, i64 2
  %404 = tail call fastcc i32 @big2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %403, ptr noundef nonnull %16, ptr noundef %3), !range !69
  br label %540

405:                                              ; preds = %25
  %406 = getelementptr inbounds i8, ptr %1, i64 2
  %407 = ptrtoint ptr %16 to i64
  %408 = ptrtoint ptr %406 to i64
  %409 = sub i64 %407, %408
  %410 = icmp sgt i64 %409, 1
  br i1 %410, label %411, label %540

411:                                              ; preds = %405
  %412 = load i8, ptr %406, align 1, !tbaa !9
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %424

414:                                              ; preds = %411
  %415 = getelementptr inbounds i8, ptr %1, i64 3
  %416 = load i8, ptr %415, align 1, !tbaa !9
  %417 = zext i8 %416 to i64
  %418 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !9
  %420 = freeze i8 %419
  %421 = icmp eq i8 %420, 10
  %422 = getelementptr inbounds i8, ptr %1, i64 4
  %423 = select i1 %421, ptr %422, ptr %406
  br label %424

424:                                              ; preds = %414, %411
  %425 = phi ptr [ %406, %411 ], [ %423, %414 ]
  store ptr %425, ptr %3, align 8, !tbaa !5
  br label %540

426:                                              ; preds = %25
  %427 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %427, ptr %3, align 8, !tbaa !5
  br label %540

428:                                              ; preds = %25
  %429 = getelementptr inbounds i8, ptr %1, i64 2
  %430 = ptrtoint ptr %16 to i64
  %431 = ptrtoint ptr %429 to i64
  %432 = sub i64 %430, %431
  %433 = icmp sgt i64 %432, 1
  br i1 %433, label %434, label %540

434:                                              ; preds = %428
  %435 = load i8, ptr %429, align 1, !tbaa !9
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %476

437:                                              ; preds = %434
  %438 = getelementptr inbounds i8, ptr %1, i64 3
  %439 = load i8, ptr %438, align 1, !tbaa !9
  %440 = icmp eq i8 %439, 93
  br i1 %440, label %441, label %476

441:                                              ; preds = %437
  %442 = getelementptr inbounds i8, ptr %1, i64 4
  %443 = ptrtoint ptr %442 to i64
  %444 = sub i64 %430, %443
  %445 = icmp sgt i64 %444, 1
  br i1 %445, label %446, label %540

446:                                              ; preds = %441
  %447 = load i8, ptr %442, align 1, !tbaa !9
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %476

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, ptr %1, i64 5
  %451 = load i8, ptr %450, align 1, !tbaa !9
  %452 = icmp eq i8 %451, 62
  br i1 %452, label %453, label %476

453:                                              ; preds = %449
  store ptr %442, ptr %3, align 8, !tbaa !5
  br label %540

454:                                              ; preds = %25
  %455 = ptrtoint ptr %16 to i64
  %456 = sub i64 %455, %8
  %457 = icmp slt i64 %456, 2
  br i1 %457, label %540, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds i8, ptr %1, i64 2
  br label %476

460:                                              ; preds = %25
  %461 = ptrtoint ptr %16 to i64
  %462 = sub i64 %461, %8
  %463 = icmp slt i64 %462, 3
  br i1 %463, label %540, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds i8, ptr %1, i64 3
  br label %476

466:                                              ; preds = %19, %19, %19, %19, %25
  %467 = ptrtoint ptr %16 to i64
  %468 = sub i64 %467, %8
  %469 = icmp slt i64 %468, 4
  br i1 %469, label %540, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds i8, ptr %1, i64 4
  br label %476

472:                                              ; preds = %19, %19, %19, %19, %21, %25, %25, %25
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %540

473:                                              ; preds = %19, %21, %25
  %474 = getelementptr inbounds i8, ptr %1, i64 2
  %475 = ptrtoint ptr %16 to i64
  br label %476

476:                                              ; preds = %446, %449, %434, %437, %473, %470, %464, %458
  %477 = phi i64 [ %430, %446 ], [ %430, %449 ], [ %430, %434 ], [ %430, %437 ], [ %475, %473 ], [ %467, %470 ], [ %461, %464 ], [ %455, %458 ]
  %478 = phi ptr [ %429, %446 ], [ %429, %449 ], [ %429, %434 ], [ %429, %437 ], [ %474, %473 ], [ %471, %470 ], [ %465, %464 ], [ %459, %458 ]
  %479 = ptrtoint ptr %478 to i64
  %480 = sub i64 %477, %479
  %481 = icmp sgt i64 %480, 1
  br i1 %481, label %482, label %538

482:                                              ; preds = %476, %533
  %483 = phi i64 [ %536, %533 ], [ %480, %476 ]
  %484 = phi ptr [ %534, %533 ], [ %478, %476 ]
  %485 = load i8, ptr %484, align 1, !tbaa !9
  switch i8 %485, label %531 [
    i8 0, label %490
    i8 -40, label %503
    i8 -39, label %503
    i8 -38, label %503
    i8 -37, label %503
    i8 -36, label %530
    i8 -35, label %530
    i8 -34, label %530
    i8 -33, label %530
    i8 -1, label %486
  ]

486:                                              ; preds = %482
  %487 = getelementptr inbounds i8, ptr %484, i64 1
  %488 = load i8, ptr %487, align 1, !tbaa !9
  %489 = icmp ugt i8 %488, -3
  br i1 %489, label %530, label %531

490:                                              ; preds = %482
  %491 = getelementptr inbounds i8, ptr %484, i64 1
  %492 = load i8, ptr %491, align 1, !tbaa !9
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !9
  switch i8 %495, label %531 [
    i8 5, label %496
    i8 6, label %498
    i8 7, label %503
    i8 4, label %508
    i8 3, label %530
    i8 2, label %530
    i8 0, label %530
    i8 1, label %530
    i8 8, label %530
    i8 9, label %530
    i8 10, label %530
  ]

496:                                              ; preds = %490
  %497 = getelementptr inbounds i8, ptr %484, i64 2
  br label %533

498:                                              ; preds = %490
  %499 = icmp eq i64 %483, 2
  br i1 %499, label %500, label %501

500:                                              ; preds = %498
  store ptr %484, ptr %3, align 8, !tbaa !5
  br label %540

501:                                              ; preds = %498
  %502 = getelementptr inbounds i8, ptr %484, i64 3
  br label %533

503:                                              ; preds = %482, %482, %482, %482, %490
  %504 = icmp ult i64 %483, 4
  br i1 %504, label %505, label %506

505:                                              ; preds = %503
  store ptr %484, ptr %3, align 8, !tbaa !5
  br label %540

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %484, i64 4
  br label %533

508:                                              ; preds = %490
  %509 = icmp ugt i64 %483, 3
  br i1 %509, label %510, label %530

510:                                              ; preds = %508
  %511 = getelementptr inbounds i8, ptr %484, i64 2
  %512 = load i8, ptr %511, align 1, !tbaa !9
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %514, label %533

514:                                              ; preds = %510
  %515 = getelementptr inbounds i8, ptr %484, i64 3
  %516 = load i8, ptr %515, align 1, !tbaa !9
  %517 = icmp eq i8 %516, 93
  br i1 %517, label %518, label %533

518:                                              ; preds = %514
  %519 = icmp ugt i64 %483, 5
  br i1 %519, label %520, label %530

520:                                              ; preds = %518
  %521 = getelementptr inbounds i8, ptr %484, i64 4
  %522 = load i8, ptr %521, align 1, !tbaa !9
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %533

524:                                              ; preds = %520
  %525 = getelementptr inbounds i8, ptr %484, i64 5
  %526 = load i8, ptr %525, align 1, !tbaa !9
  %527 = icmp eq i8 %526, 62
  br i1 %527, label %528, label %533

528:                                              ; preds = %524
  %529 = getelementptr inbounds i8, ptr %484, i64 4
  store ptr %529, ptr %3, align 8, !tbaa !5
  br label %540

530:                                              ; preds = %482, %482, %482, %482, %486, %508, %518, %490, %490, %490, %490, %490, %490, %490
  store ptr %484, ptr %3, align 8, !tbaa !5
  br label %540

531:                                              ; preds = %482, %486, %490
  %532 = getelementptr inbounds i8, ptr %484, i64 2
  br label %533

533:                                              ; preds = %520, %524, %510, %514, %531, %506, %501, %496
  %534 = phi ptr [ %532, %531 ], [ %507, %506 ], [ %502, %501 ], [ %497, %496 ], [ %511, %514 ], [ %511, %510 ], [ %511, %524 ], [ %511, %520 ]
  %535 = ptrtoint ptr %534 to i64
  %536 = sub i64 %477, %535
  %537 = icmp sgt i64 %536, 1
  br i1 %537, label %482, label %538, !llvm.loop !129

538:                                              ; preds = %533, %476
  %539 = phi ptr [ %478, %476 ], [ %534, %533 ]
  store ptr %539, ptr %3, align 8, !tbaa !5
  br label %540

540:                                              ; preds = %216, %209, %395, %271, %369, %394, %392, %391, %378, %375, %374, %368, %366, %365, %363, %362, %359, %358, %317, %316, %315, %313, %312, %310, %309, %308, %270, %267, %265, %264, %262, %261, %260, %224, %221, %191, %189, %187, %150, %148, %143, %106, %103, %102, %99, %96, %82, %81, %79, %78, %76, %75, %70, %69, %31, %466, %460, %454, %441, %428, %405, %6, %4, %538, %530, %528, %505, %500, %472, %453, %426, %424, %402
  %541 = phi i32 [ -1, %6 ], [ 6, %530 ], [ 0, %528 ], [ 6, %505 ], [ 6, %500 ], [ 6, %538 ], [ 0, %472 ], [ 0, %453 ], [ 7, %426 ], [ 7, %424 ], [ %404, %402 ], [ -4, %4 ], [ -3, %405 ], [ -5, %428 ], [ -5, %441 ], [ -2, %454 ], [ -2, %460 ], [ -2, %466 ], [ 0, %224 ], [ %105, %103 ], [ 0, %102 ], [ %101, %99 ], [ %98, %96 ], [ 0, %81 ], [ 0, %78 ], [ 0, %75 ], [ 0, %394 ], [ 4, %392 ], [ 0, %391 ], [ 2, %375 ], [ 0, %374 ], [ 0, %368 ], [ 0, %365 ], [ 0, %362 ], [ %361, %359 ], [ 0, %358 ], [ 0, %270 ], [ 0, %316 ], [ 0, %315 ], [ 0, %312 ], [ 0, %309 ], [ 0, %308 ], [ 0, %267 ], [ 0, %264 ], [ 0, %261 ], [ 0, %260 ], [ 0, %69 ], [ -1, %31 ], [ -2, %76 ], [ -2, %79 ], [ -1, %82 ], [ -2, %262 ], [ -2, %265 ], [ -2, %310 ], [ -2, %313 ], [ -2, %363 ], [ -2, %366 ], [ -1, %378 ], [ -1, %106 ], [ -2, %148 ], [ -2, %150 ], [ -2, %187 ], [ -2, %189 ], [ -1, %191 ], [ -1, %143 ], [ %223, %221 ], [ -1, %317 ], [ -1, %70 ], [ -1, %369 ], [ -1, %271 ], [ -1, %395 ], [ -1, %209 ], [ -1, %216 ]
  ret i32 %541
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_cdataSectionTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %133

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 1
  %11 = icmp eq i64 %10, 0
  %12 = and i64 %9, -2
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds i8, ptr %1, i64 %12
  %15 = or i1 %11, %13
  %16 = select i1 %15, ptr %2, ptr %14
  %17 = xor i1 %13, true
  %18 = or i1 %11, %17
  br i1 %18, label %19, label %133

19:                                               ; preds = %6
  %20 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %20, label %97 [
    i8 0, label %25
    i8 -40, label %91
    i8 -39, label %91
    i8 -38, label %91
    i8 -37, label %91
    i8 -36, label %130
    i8 -35, label %130
    i8 -34, label %130
    i8 -33, label %130
    i8 -1, label %21
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %130, label %97

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, ptr %1, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  switch i8 %30, label %97 [
    i8 4, label %31
    i8 9, label %58
    i8 10, label %77
    i8 5, label %79
    i8 6, label %85
    i8 7, label %91
    i8 0, label %130
    i8 1, label %130
    i8 8, label %130
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = ptrtoint ptr %16 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = icmp sgt i64 %35, 1
  br i1 %36, label %37, label %133

37:                                               ; preds = %31
  %38 = load i8, ptr %32, align 1, !tbaa !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %1, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 93
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %1, i64 4
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %33, %46
  %48 = icmp sgt i64 %47, 1
  br i1 %48, label %49, label %133

49:                                               ; preds = %44
  %50 = load i8, ptr %45, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %100

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %1, i64 5
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = icmp eq i8 %54, 62
  br i1 %55, label %56, label %100

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %1, i64 6
  br label %130

58:                                               ; preds = %25
  %59 = getelementptr inbounds i8, ptr %1, i64 2
  %60 = ptrtoint ptr %16 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = icmp sgt i64 %62, 1
  br i1 %63, label %64, label %133

64:                                               ; preds = %58
  %65 = load i8, ptr %59, align 1, !tbaa !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %130

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %1, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = freeze i8 %72
  %74 = icmp eq i8 %73, 10
  %75 = getelementptr inbounds i8, ptr %1, i64 4
  %76 = select i1 %74, ptr %75, ptr %59
  br label %130

77:                                               ; preds = %25
  %78 = getelementptr inbounds i8, ptr %1, i64 2
  br label %130

79:                                               ; preds = %25
  %80 = ptrtoint ptr %16 to i64
  %81 = sub i64 %80, %8
  %82 = icmp slt i64 %81, 2
  br i1 %82, label %133, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %1, i64 2
  br label %100

85:                                               ; preds = %25
  %86 = ptrtoint ptr %16 to i64
  %87 = sub i64 %86, %8
  %88 = icmp slt i64 %87, 3
  br i1 %88, label %133, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %1, i64 3
  br label %100

91:                                               ; preds = %19, %19, %19, %19, %25
  %92 = ptrtoint ptr %16 to i64
  %93 = sub i64 %92, %8
  %94 = icmp slt i64 %93, 4
  br i1 %94, label %133, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %1, i64 4
  br label %100

97:                                               ; preds = %19, %21, %25
  %98 = getelementptr inbounds i8, ptr %1, i64 2
  %99 = ptrtoint ptr %16 to i64
  br label %100

100:                                              ; preds = %49, %52, %37, %40, %97, %95, %89, %83
  %101 = phi i64 [ %33, %49 ], [ %33, %52 ], [ %33, %37 ], [ %33, %40 ], [ %99, %97 ], [ %92, %95 ], [ %86, %89 ], [ %80, %83 ]
  %102 = phi ptr [ %32, %49 ], [ %32, %52 ], [ %32, %37 ], [ %32, %40 ], [ %98, %97 ], [ %96, %95 ], [ %90, %89 ], [ %84, %83 ]
  %103 = ptrtoint ptr %102 to i64
  %104 = sub i64 %101, %103
  %105 = icmp sgt i64 %104, 1
  br i1 %105, label %106, label %130

106:                                              ; preds = %100, %124
  %107 = phi i64 [ %128, %124 ], [ %104, %100 ]
  %108 = phi ptr [ %126, %124 ], [ %102, %100 ]
  %109 = load i8, ptr %108, align 1, !tbaa !9
  switch i8 %109, label %124 [
    i8 0, label %114
    i8 -40, label %122
    i8 -39, label %122
    i8 -38, label %122
    i8 -37, label %122
    i8 -36, label %130
    i8 -35, label %130
    i8 -34, label %130
    i8 -33, label %130
    i8 -1, label %110
  ]

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %108, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !9
  %113 = icmp ugt i8 %112, -3
  br i1 %113, label %130, label %124

114:                                              ; preds = %106
  %115 = getelementptr inbounds i8, ptr %108, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !9
  switch i8 %119, label %124 [
    i8 4, label %130
    i8 6, label %120
    i8 7, label %122
    i8 0, label %130
    i8 1, label %130
    i8 8, label %130
    i8 9, label %130
    i8 10, label %130
  ]

120:                                              ; preds = %114
  %121 = icmp eq i64 %107, 2
  br i1 %121, label %130, label %124

122:                                              ; preds = %106, %106, %106, %106, %114
  %123 = icmp ult i64 %107, 4
  br i1 %123, label %130, label %124

124:                                              ; preds = %114, %110, %106, %122, %120
  %125 = phi i64 [ 3, %120 ], [ 4, %122 ], [ 2, %106 ], [ 2, %110 ], [ 2, %114 ]
  %126 = getelementptr inbounds i8, ptr %108, i64 %125
  %127 = ptrtoint ptr %126 to i64
  %128 = sub i64 %101, %127
  %129 = icmp sgt i64 %128, 1
  br i1 %129, label %106, label %130, !llvm.loop !130

130:                                              ; preds = %114, %114, %114, %114, %114, %114, %124, %110, %106, %106, %106, %106, %122, %120, %100, %25, %25, %25, %21, %19, %19, %19, %19, %64, %67, %56, %77
  %131 = phi ptr [ %78, %77 ], [ %57, %56 ], [ %59, %64 ], [ %76, %67 ], [ %1, %19 ], [ %1, %19 ], [ %1, %19 ], [ %1, %19 ], [ %1, %21 ], [ %1, %25 ], [ %1, %25 ], [ %1, %25 ], [ %102, %100 ], [ %108, %120 ], [ %108, %122 ], [ %108, %106 ], [ %108, %106 ], [ %108, %106 ], [ %108, %106 ], [ %108, %110 ], [ %108, %114 ], [ %108, %114 ], [ %108, %114 ], [ %108, %114 ], [ %108, %114 ], [ %108, %114 ], [ %126, %124 ]
  %132 = phi i32 [ 7, %77 ], [ 40, %56 ], [ 7, %64 ], [ 7, %67 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %19 ], [ 0, %21 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 6, %100 ], [ 6, %120 ], [ 6, %122 ], [ 6, %106 ], [ 6, %106 ], [ 6, %106 ], [ 6, %106 ], [ 6, %110 ], [ 6, %124 ], [ 6, %114 ], [ 6, %114 ], [ 6, %114 ], [ 6, %114 ], [ 6, %114 ], [ 6, %114 ]
  store ptr %131, ptr %3, align 8, !tbaa !5
  br label %133

133:                                              ; preds = %130, %91, %85, %79, %58, %44, %31, %6, %4
  %134 = phi i32 [ -1, %6 ], [ -4, %4 ], [ -1, %31 ], [ -1, %44 ], [ -1, %58 ], [ -2, %79 ], [ -2, %85 ], [ -2, %91 ], [ %132, %130 ]
  ret i32 %134
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_ignoreSectionTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  %10 = and i64 %7, -2
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = select i1 %9, ptr %2, ptr %11
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %6
  %15 = icmp sgt i64 %14, 1
  br i1 %15, label %16, label %108

16:                                               ; preds = %4, %99
  %17 = phi i64 [ %103, %99 ], [ %14, %4 ]
  %18 = phi i32 [ %101, %99 ], [ 0, %4 ]
  %19 = phi ptr [ %100, %99 ], [ %1, %4 ]
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %97 [
    i8 0, label %25
    i8 -40, label %37
    i8 -39, label %37
    i8 -38, label %37
    i8 -37, label %37
    i8 -36, label %105
    i8 -35, label %105
    i8 -34, label %105
    i8 -33, label %105
    i8 -1, label %21
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = icmp ugt i8 %23, -3
  br i1 %24, label %105, label %97

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  switch i8 %30, label %97 [
    i8 5, label %31
    i8 6, label %33
    i8 7, label %37
    i8 0, label %105
    i8 1, label %105
    i8 8, label %105
    i8 2, label %41
    i8 4, label %68
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %19, i64 2
  br label %99

33:                                               ; preds = %25
  %34 = icmp eq i64 %17, 2
  br i1 %34, label %108, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %19, i64 3
  br label %99

37:                                               ; preds = %16, %16, %16, %16, %25
  %38 = icmp ult i64 %17, 4
  br i1 %38, label %108, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %19, i64 4
  br label %99

41:                                               ; preds = %25
  %42 = getelementptr inbounds i8, ptr %19, i64 2
  %43 = ptrtoint ptr %42 to i64
  %44 = sub i64 %13, %43
  %45 = icmp sgt i64 %44, 1
  br i1 %45, label %46, label %108

46:                                               ; preds = %41
  %47 = load i8, ptr %42, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %19, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 33
  br i1 %52, label %53, label %99

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %19, i64 4
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %13, %55
  %57 = icmp sgt i64 %56, 1
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load i8, ptr %54, align 1, !tbaa !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %19, i64 5
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 91
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = add nsw i32 %18, 1
  %67 = getelementptr inbounds i8, ptr %19, i64 6
  br label %99

68:                                               ; preds = %25
  %69 = getelementptr inbounds i8, ptr %19, i64 2
  %70 = ptrtoint ptr %69 to i64
  %71 = sub i64 %13, %70
  %72 = icmp sgt i64 %71, 1
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load i8, ptr %69, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, ptr %19, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 93
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %19, i64 4
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %13, %82
  %84 = icmp sgt i64 %83, 1
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i8, ptr %81, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = getelementptr inbounds i8, ptr %19, i64 5
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = icmp eq i8 %90, 62
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %19, i64 6
  %94 = icmp eq i32 %18, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = add nsw i32 %18, -1
  br label %99

97:                                               ; preds = %16, %21, %25
  %98 = getelementptr inbounds i8, ptr %19, i64 2
  br label %99

99:                                               ; preds = %73, %76, %95, %88, %85, %46, %49, %65, %61, %58, %97, %39, %35, %31
  %100 = phi ptr [ %98, %97 ], [ %93, %95 ], [ %81, %88 ], [ %81, %85 ], [ %69, %76 ], [ %69, %73 ], [ %67, %65 ], [ %54, %61 ], [ %54, %58 ], [ %42, %49 ], [ %42, %46 ], [ %40, %39 ], [ %36, %35 ], [ %32, %31 ]
  %101 = phi i32 [ %18, %97 ], [ %96, %95 ], [ %18, %88 ], [ %18, %85 ], [ %18, %76 ], [ %18, %73 ], [ %66, %65 ], [ %18, %61 ], [ %18, %58 ], [ %18, %49 ], [ %18, %46 ], [ %18, %39 ], [ %18, %35 ], [ %18, %31 ]
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %13, %102
  %104 = icmp sgt i64 %103, 1
  br i1 %104, label %16, label %108, !llvm.loop !131

105:                                              ; preds = %92, %25, %25, %25, %21, %16, %16, %16, %16
  %106 = phi ptr [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %21 ], [ %19, %25 ], [ %19, %25 ], [ %19, %25 ], [ %93, %92 ]
  %107 = phi i32 [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %16 ], [ 0, %21 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ], [ 42, %92 ]
  store ptr %106, ptr %3, align 8, !tbaa !5
  br label %108

108:                                              ; preds = %33, %37, %41, %53, %68, %80, %99, %105, %4
  %109 = phi i32 [ -1, %4 ], [ %107, %105 ], [ -2, %33 ], [ -2, %37 ], [ -1, %41 ], [ -1, %53 ], [ -1, %68 ], [ -1, %80 ], [ -1, %99 ]
  ret i32 %109
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_attributeValueTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %69

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %69

11:                                               ; preds = %6, %62
  %12 = phi ptr [ %64, %62 ], [ %1, %6 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %62 [
    i8 0, label %14
    i8 -40, label %21
    i8 -39, label %21
    i8 -38, label %21
    i8 -37, label %21
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %62 [
    i8 21, label %57
    i8 6, label %20
    i8 7, label %21
    i8 3, label %22
    i8 2, label %28
    i8 10, label %29
    i8 9, label %34
  ]

20:                                               ; preds = %14
  br label %62

21:                                               ; preds = %11, %11, %11, %11, %14
  br label %62

22:                                               ; preds = %14
  %23 = icmp eq ptr %12, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = tail call fastcc i32 @big2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %69

27:                                               ; preds = %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

28:                                               ; preds = %14
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

29:                                               ; preds = %14
  %30 = icmp eq ptr %12, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %32, ptr %3, align 8, !tbaa !5
  br label %69

33:                                               ; preds = %29
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

34:                                               ; preds = %14
  %35 = icmp eq ptr %12, %1
  br i1 %35, label %36, label %56

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %1, i64 2
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = load i8, ptr %37, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %1, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = freeze i8 %49
  %51 = icmp eq i8 %50, 10
  %52 = getelementptr inbounds i8, ptr %1, i64 4
  %53 = select i1 %51, ptr %52, ptr %37
  br label %54

54:                                               ; preds = %44, %41
  %55 = phi ptr [ %37, %41 ], [ %53, %44 ]
  store ptr %55, ptr %3, align 8, !tbaa !5
  br label %69

56:                                               ; preds = %34
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

57:                                               ; preds = %14
  %58 = icmp eq ptr %12, %1
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %60, ptr %3, align 8, !tbaa !5
  br label %69

61:                                               ; preds = %57
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %69

62:                                               ; preds = %14, %11, %21, %20
  %63 = phi i64 [ 4, %21 ], [ 3, %20 ], [ 2, %11 ], [ 2, %14 ]
  %64 = getelementptr inbounds i8, ptr %12, i64 %63
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %7, %65
  %67 = icmp sgt i64 %66, 1
  br i1 %67, label %11, label %68, !llvm.loop !132

68:                                               ; preds = %62
  store ptr %64, ptr %3, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %36, %6, %4, %68, %61, %59, %56, %54, %33, %31, %28, %27, %24
  %70 = phi i32 [ 39, %59 ], [ 6, %61 ], [ 7, %54 ], [ 6, %56 ], [ 7, %31 ], [ 6, %33 ], [ 0, %28 ], [ %26, %24 ], [ 6, %27 ], [ 6, %68 ], [ -4, %4 ], [ -1, %6 ], [ -3, %36 ]
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_entityValueTok(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult ptr %1, %2
  br i1 %5, label %6, label %71

6:                                                ; preds = %4
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %71

11:                                               ; preds = %6, %64
  %12 = phi ptr [ %66, %64 ], [ %1, %6 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %64 [
    i8 0, label %14
    i8 -40, label %21
    i8 -39, label %21
    i8 -38, label %21
    i8 -37, label %21
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %64 [
    i8 9, label %41
    i8 6, label %20
    i8 7, label %21
    i8 3, label %22
    i8 30, label %28
    i8 10, label %36
  ]

20:                                               ; preds = %14
  br label %64

21:                                               ; preds = %11, %11, %11, %11, %14
  br label %64

22:                                               ; preds = %14
  %23 = icmp eq ptr %12, %1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = tail call fastcc i32 @big2_scanRef(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %2, ptr noundef %3), !range !69
  br label %71

27:                                               ; preds = %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

28:                                               ; preds = %14
  %29 = icmp eq ptr %12, %1
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = tail call fastcc i32 @big2_scanPercent(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef nonnull %2, ptr noundef %3), !range !52
  %33 = icmp eq i32 %32, 22
  %34 = select i1 %33, i32 0, i32 %32
  br label %71

35:                                               ; preds = %28
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

36:                                               ; preds = %14
  %37 = icmp eq ptr %12, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %39, ptr %3, align 8, !tbaa !5
  br label %71

40:                                               ; preds = %36
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

41:                                               ; preds = %14
  %42 = icmp eq ptr %12, %1
  br i1 %42, label %43, label %63

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %1, i64 2
  %45 = ptrtoint ptr %44 to i64
  %46 = sub i64 %7, %45
  %47 = icmp sgt i64 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load i8, ptr %44, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %1, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = freeze i8 %56
  %58 = icmp eq i8 %57, 10
  %59 = getelementptr inbounds i8, ptr %1, i64 4
  %60 = select i1 %58, ptr %59, ptr %44
  br label %61

61:                                               ; preds = %51, %48
  %62 = phi ptr [ %44, %48 ], [ %60, %51 ]
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %71

63:                                               ; preds = %41
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %71

64:                                               ; preds = %14, %11, %21, %20
  %65 = phi i64 [ 4, %21 ], [ 3, %20 ], [ 2, %11 ], [ 2, %14 ]
  %66 = getelementptr inbounds i8, ptr %12, i64 %65
  %67 = ptrtoint ptr %66 to i64
  %68 = sub i64 %7, %67
  %69 = icmp sgt i64 %68, 1
  br i1 %69, label %11, label %70, !llvm.loop !133

70:                                               ; preds = %64
  store ptr %66, ptr %3, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %43, %6, %4, %70, %63, %61, %40, %38, %35, %30, %27, %24
  %72 = phi i32 [ 7, %61 ], [ 6, %63 ], [ 7, %38 ], [ 6, %40 ], [ %34, %30 ], [ 6, %35 ], [ %26, %24 ], [ 6, %27 ], [ 6, %70 ], [ -4, %4 ], [ -1, %6 ], [ -3, %43 ]
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @big2_nameMatchesAscii(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = load i8, ptr %3, align 1, !tbaa !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = ptrtoint ptr %2 to i64
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i8 [ %5, %7 ], [ %26, %23 ]
  %11 = phi ptr [ %3, %7 ], [ %25, %23 ]
  %12 = phi ptr [ %1, %7 ], [ %24, %23 ]
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %8, %13
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = load i8, ptr %12, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %12, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = icmp eq i8 %21, %10
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %12, i64 2
  %25 = getelementptr inbounds i8, ptr %11, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %9, !llvm.loop !134

28:                                               ; preds = %23, %4
  %29 = phi ptr [ %1, %4 ], [ %24, %23 ]
  %30 = icmp eq ptr %29, %2
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %16, %19, %9, %28
  %33 = phi i32 [ %31, %28 ], [ 0, %9 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_nameLength(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  br label %3

3:                                                ; preds = %33, %2
  %4 = phi ptr [ %1, %2 ], [ %35, %33 ]
  %5 = load i8, ptr %4, align 1, !tbaa !9
  switch i8 %5, label %33 [
    i8 0, label %10
    i8 -40, label %18
    i8 -39, label %18
    i8 -38, label %18
    i8 -37, label %18
    i8 -36, label %19
    i8 -35, label %19
    i8 -34, label %19
    i8 -33, label %19
    i8 -1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp ugt i8 %8, -3
  br i1 %9, label %19, label %33

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = add i8 %15, -5
  %17 = icmp ult i8 %16, 25
  br i1 %17, label %24, label %19

18:                                               ; preds = %3, %3, %3, %3
  br label %33

19:                                               ; preds = %24, %10, %3, %3, %3, %3, %6
  %20 = ptrtoint ptr %4 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  ret i32 %23

24:                                               ; preds = %10
  %25 = zext nneg i8 %16 to i32
  %26 = lshr i32 25034759, %25
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %24
  %30 = zext nneg i8 %16 to i64
  %31 = getelementptr inbounds [25 x i64], ptr @switch.table.big2_nameLength, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8
  br label %33

33:                                               ; preds = %29, %6, %3, %18
  %34 = phi i64 [ 4, %18 ], [ 2, %3 ], [ 2, %6 ], [ %32, %29 ]
  %35 = getelementptr inbounds i8, ptr %4, i64 %34
  br label %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef ptr @big2_skipS(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #7 {
  %3 = load i8, ptr %1, align 1, !tbaa !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2, %12
  %6 = phi ptr [ %13, %12 ], [ %1, %2 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %16 [
    i8 10, label %12
    i8 9, label %12
    i8 21, label %12
  ]

12:                                               ; preds = %5, %5, %5
  %13 = getelementptr inbounds i8, ptr %6, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %5, %12, %2
  %17 = phi ptr [ %1, %2 ], [ %13, %12 ], [ %6, %5 ]
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @big2_getAtts(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  br label %5

5:                                                ; preds = %34, %4
  %6 = phi ptr [ %1, %4 ], [ %35, %34 ]
  %7 = phi i32 [ 1, %4 ], [ %36, %34 ]
  %8 = phi i32 [ 0, %4 ], [ %37, %34 ]
  %9 = phi i32 [ 0, %4 ], [ %38, %34 ]
  %10 = getelementptr inbounds i8, ptr %6, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !9
  switch i8 %11, label %56 [
    i8 0, label %18
    i8 -40, label %45
    i8 -39, label %45
    i8 -38, label %45
    i8 -37, label %45
    i8 -36, label %34
    i8 -35, label %34
    i8 -34, label %34
    i8 -33, label %34
    i8 -1, label %12
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %6, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp ult i8 %14, -2
  %16 = icmp eq i32 %7, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %58, label %34

18:                                               ; preds = %5
  %19 = getelementptr inbounds i8, ptr %6, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  switch i8 %23, label %34 [
    i8 5, label %24
    i8 6, label %32
    i8 7, label %45
    i8 29, label %56
    i8 22, label %56
    i8 24, label %56
    i8 12, label %64
    i8 13, label %81
    i8 3, label %98
    i8 21, label %103
    i8 9, label %139
    i8 10, label %139
    i8 11, label %145
    i8 17, label %145
  ]

24:                                               ; preds = %18
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = icmp slt i32 %8, %2
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = sext i32 %8 to i64
  %30 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %29
  store ptr %10, ptr %30, align 8, !tbaa !76
  %31 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %29, i32 3
  store i8 1, ptr %31, align 8, !tbaa !78
  br label %34

32:                                               ; preds = %18
  %33 = icmp eq i32 %7, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32, %41, %39, %5, %5, %5, %5, %12, %139, %149, %103, %148, %83, %85, %66, %68, %58, %60, %24, %28, %26, %53, %56, %72, %79, %89, %96, %100, %98, %104, %106, %135, %138, %140, %142, %145, %18
  %35 = phi ptr [ %10, %18 ], [ %10, %145 ], [ %10, %142 ], [ %10, %140 ], [ %10, %138 ], [ %10, %135 ], [ %10, %106 ], [ %10, %104 ], [ %10, %100 ], [ %10, %98 ], [ %10, %96 ], [ %10, %89 ], [ %10, %79 ], [ %10, %72 ], [ %10, %56 ], [ %55, %53 ], [ %10, %26 ], [ %10, %28 ], [ %10, %24 ], [ %10, %60 ], [ %10, %58 ], [ %10, %68 ], [ %10, %66 ], [ %10, %85 ], [ %10, %83 ], [ %10, %103 ], [ %10, %148 ], [ %10, %139 ], [ %10, %149 ], [ %10, %12 ], [ %10, %5 ], [ %10, %5 ], [ %10, %5 ], [ %10, %5 ], [ %19, %39 ], [ %19, %41 ], [ %19, %32 ]
  %36 = phi i32 [ %7, %18 ], [ 2, %145 ], [ 2, %142 ], [ 2, %140 ], [ 2, %138 ], [ 2, %135 ], [ 2, %106 ], [ 2, %104 ], [ %7, %100 ], [ %7, %98 ], [ 0, %96 ], [ 2, %89 ], [ 0, %79 ], [ 2, %72 ], [ %7, %56 ], [ %54, %53 ], [ 1, %26 ], [ 1, %28 ], [ %7, %24 ], [ 1, %60 ], [ 1, %58 ], [ 2, %68 ], [ 2, %66 ], [ 2, %85 ], [ 2, %83 ], [ 0, %103 ], [ %7, %148 ], [ 0, %139 ], [ %7, %149 ], [ %7, %12 ], [ %7, %5 ], [ %7, %5 ], [ %7, %5 ], [ %7, %5 ], [ 1, %39 ], [ 1, %41 ], [ %7, %32 ]
  %37 = phi i32 [ %8, %18 ], [ %8, %145 ], [ %8, %142 ], [ %8, %140 ], [ %8, %138 ], [ %8, %135 ], [ %8, %106 ], [ %8, %104 ], [ %8, %100 ], [ %8, %98 ], [ %97, %96 ], [ %8, %89 ], [ %80, %79 ], [ %8, %72 ], [ %8, %56 ], [ %8, %53 ], [ %8, %26 ], [ %8, %28 ], [ %8, %24 ], [ %8, %60 ], [ %8, %58 ], [ %8, %68 ], [ %8, %66 ], [ %8, %85 ], [ %8, %83 ], [ %8, %103 ], [ %8, %148 ], [ %8, %139 ], [ %8, %149 ], [ %8, %12 ], [ %8, %5 ], [ %8, %5 ], [ %8, %5 ], [ %8, %5 ], [ %8, %39 ], [ %8, %41 ], [ %8, %32 ]
  %38 = phi i32 [ %9, %18 ], [ %9, %145 ], [ %9, %142 ], [ %9, %140 ], [ %9, %138 ], [ %9, %135 ], [ %9, %106 ], [ %9, %104 ], [ %9, %100 ], [ %9, %98 ], [ 13, %96 ], [ %9, %89 ], [ 12, %79 ], [ %9, %72 ], [ %9, %56 ], [ %9, %53 ], [ %9, %26 ], [ %9, %28 ], [ %9, %24 ], [ %9, %60 ], [ %9, %58 ], [ 12, %68 ], [ 12, %66 ], [ 13, %85 ], [ 13, %83 ], [ %9, %103 ], [ %9, %148 ], [ %9, %139 ], [ %9, %149 ], [ %9, %12 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %5 ], [ %9, %39 ], [ %9, %41 ], [ %9, %32 ]
  br label %5

39:                                               ; preds = %32
  %40 = icmp slt i32 %8, %2
  br i1 %40, label %41, label %34

41:                                               ; preds = %39
  %42 = sext i32 %8 to i64
  %43 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %42
  store ptr %10, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %42, i32 3
  store i8 1, ptr %44, align 8, !tbaa !78
  br label %34

45:                                               ; preds = %5, %5, %5, %5, %18
  %46 = icmp eq i32 %7, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = icmp slt i32 %8, %2
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = sext i32 %8 to i64
  %51 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %50
  store ptr %10, ptr %51, align 8, !tbaa !76
  %52 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %50, i32 3
  store i8 1, ptr %52, align 8, !tbaa !78
  br label %53

53:                                               ; preds = %47, %49, %45
  %54 = phi i32 [ %7, %45 ], [ 1, %49 ], [ 1, %47 ]
  %55 = getelementptr inbounds i8, ptr %6, i64 4
  br label %34

56:                                               ; preds = %5, %18, %18, %18
  %57 = icmp eq i32 %7, 0
  br i1 %57, label %58, label %34

58:                                               ; preds = %12, %56
  %59 = icmp slt i32 %8, %2
  br i1 %59, label %60, label %34

60:                                               ; preds = %58
  %61 = sext i32 %8 to i64
  %62 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %61
  store ptr %10, ptr %62, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %61, i32 3
  store i8 1, ptr %63, align 8, !tbaa !78
  br label %34

64:                                               ; preds = %18
  %65 = icmp eq i32 %7, 2
  br i1 %65, label %72, label %66

66:                                               ; preds = %64
  %67 = icmp slt i32 %8, %2
  br i1 %67, label %68, label %34

68:                                               ; preds = %66
  %69 = getelementptr inbounds i8, ptr %6, i64 4
  %70 = sext i32 %8 to i64
  %71 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %70, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !79
  br label %34

72:                                               ; preds = %64
  %73 = icmp eq i32 %9, 12
  br i1 %73, label %74, label %34

74:                                               ; preds = %72
  %75 = icmp slt i32 %8, %2
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = sext i32 %8 to i64
  %78 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %77, i32 2
  store ptr %10, ptr %78, align 8, !tbaa !80
  br label %79

79:                                               ; preds = %76, %74
  %80 = add nsw i32 %8, 1
  br label %34

81:                                               ; preds = %18
  %82 = icmp eq i32 %7, 2
  br i1 %82, label %89, label %83

83:                                               ; preds = %81
  %84 = icmp slt i32 %8, %2
  br i1 %84, label %85, label %34

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, ptr %6, i64 4
  %87 = sext i32 %8 to i64
  %88 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %87, i32 1
  store ptr %86, ptr %88, align 8, !tbaa !79
  br label %34

89:                                               ; preds = %81
  %90 = icmp eq i32 %9, 13
  br i1 %90, label %91, label %34

91:                                               ; preds = %89
  %92 = icmp slt i32 %8, %2
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = sext i32 %8 to i64
  %95 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %94, i32 2
  store ptr %10, ptr %95, align 8, !tbaa !80
  br label %96

96:                                               ; preds = %93, %91
  %97 = add nsw i32 %8, 1
  br label %34

98:                                               ; preds = %18
  %99 = icmp slt i32 %8, %2
  br i1 %99, label %100, label %34

100:                                              ; preds = %98
  %101 = sext i32 %8 to i64
  %102 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %101, i32 3
  store i8 0, ptr %102, align 8, !tbaa !78
  br label %34

103:                                              ; preds = %18
  switch i32 %7, label %148 [
    i32 1, label %34
    i32 2, label %104
  ]

104:                                              ; preds = %103
  %105 = icmp slt i32 %8, %2
  br i1 %105, label %106, label %34

106:                                              ; preds = %104
  %107 = sext i32 %8 to i64
  %108 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %107, i32 3
  %109 = load i8, ptr %108, align 8, !tbaa !78
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %34, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %107, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !79
  %114 = icmp ne ptr %10, %113
  %115 = icmp eq i8 %20, 32
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = getelementptr inbounds i8, ptr %6, i64 4
  %119 = load i8, ptr %118, align 1, !tbaa !9
  switch i8 %119, label %134 [
    i8 0, label %120
    i8 -40, label %135
    i8 -39, label %135
    i8 -38, label %135
    i8 -37, label %135
    i8 -36, label %129
    i8 -35, label %129
    i8 -34, label %129
    i8 -33, label %129
    i8 -1, label %130
  ]

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %6, i64 5
  %122 = load i8, ptr %121, align 1, !tbaa !9
  %123 = icmp eq i8 %122, 32
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = zext i8 %122 to i64
  %126 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !9
  %128 = zext i8 %127 to i32
  br label %135

129:                                              ; preds = %117, %117, %117, %117
  br label %135

130:                                              ; preds = %117
  %131 = getelementptr inbounds i8, ptr %6, i64 5
  %132 = load i8, ptr %131, align 1, !tbaa !9
  %133 = icmp ugt i8 %132, -3
  br i1 %133, label %135, label %134

134:                                              ; preds = %117, %130
  br label %135

135:                                              ; preds = %117, %117, %117, %117, %134, %130, %129, %124
  %136 = phi i32 [ %128, %124 ], [ 29, %134 ], [ 8, %129 ], [ 0, %130 ], [ 7, %117 ], [ 7, %117 ], [ 7, %117 ], [ 7, %117 ]
  %137 = icmp eq i32 %136, %9
  br i1 %137, label %138, label %34

138:                                              ; preds = %135, %120, %111
  store i8 0, ptr %108, align 8, !tbaa !78
  br label %34

139:                                              ; preds = %18, %18
  switch i32 %7, label %149 [
    i32 1, label %34
    i32 2, label %140
  ]

140:                                              ; preds = %139
  %141 = icmp slt i32 %8, %2
  br i1 %141, label %142, label %34

142:                                              ; preds = %140
  %143 = sext i32 %8 to i64
  %144 = getelementptr inbounds %struct.ATTRIBUTE, ptr %3, i64 %143, i32 3
  store i8 0, ptr %144, align 8, !tbaa !78
  br label %34

145:                                              ; preds = %18, %18
  %146 = icmp eq i32 %7, 2
  br i1 %146, label %34, label %147

147:                                              ; preds = %145
  ret i32 %8

148:                                              ; preds = %103
  br label %34

149:                                              ; preds = %139
  br label %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @big2_charRefNumber(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds i8, ptr %1, i64 4
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %2
  br label %42

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %1, i64 5
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 120
  br i1 %10, label %11, label %6

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %1, i64 6
  br label %13

13:                                               ; preds = %39, %11
  %14 = phi i32 [ 0, %11 ], [ %40, %39 ]
  %15 = phi ptr [ %12, %11 ], [ %41, %39 ]
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = icmp eq i8 %20, 59
  br i1 %21, label %60, label %22

22:                                               ; preds = %18
  %23 = sext i8 %20 to i32
  switch i8 %20, label %39 [
    i8 48, label %24
    i8 49, label %24
    i8 50, label %24
    i8 51, label %24
    i8 52, label %24
    i8 53, label %24
    i8 54, label %24
    i8 55, label %24
    i8 56, label %24
    i8 57, label %24
    i8 65, label %28
    i8 66, label %28
    i8 67, label %28
    i8 68, label %28
    i8 69, label %28
    i8 70, label %28
    i8 97, label %32
    i8 98, label %32
    i8 99, label %32
    i8 100, label %32
    i8 101, label %32
    i8 102, label %32
  ]

24:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %25 = shl i32 %14, 4
  %26 = add nsw i32 %23, -48
  %27 = or i32 %26, %25
  br label %36

28:                                               ; preds = %22, %22, %22, %22, %22, %22
  %29 = shl i32 %14, 4
  %30 = add i32 %29, -55
  %31 = add i32 %30, %23
  br label %36

32:                                               ; preds = %22, %22, %22, %22, %22, %22
  %33 = shl i32 %14, 4
  %34 = add i32 %33, -87
  %35 = add i32 %34, %23
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = phi i32 [ %35, %32 ], [ %31, %28 ], [ %27, %24 ]
  %38 = icmp slt i32 %37, 1114112
  br i1 %38, label %39, label %72

39:                                               ; preds = %13, %22, %36
  %40 = phi i32 [ %37, %36 ], [ %14, %22 ], [ %14, %13 ]
  %41 = getelementptr inbounds i8, ptr %15, i64 2
  br label %13, !llvm.loop !135

42:                                               ; preds = %6, %53
  %43 = phi i32 [ %57, %53 ], [ 0, %6 ]
  %44 = phi ptr [ %59, %53 ], [ %3, %6 ]
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 59
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = sext i8 %49 to i32
  br label %53

53:                                               ; preds = %42, %51
  %54 = phi i32 [ %52, %51 ], [ -1, %42 ]
  %55 = mul nsw i32 %43, 10
  %56 = add i32 %55, -48
  %57 = add i32 %56, %54
  %58 = icmp slt i32 %57, 1114112
  %59 = getelementptr inbounds i8, ptr %44, i64 2
  br i1 %58, label %42, label %72, !llvm.loop !136

60:                                               ; preds = %47, %18
  %61 = phi i32 [ %14, %18 ], [ %43, %47 ]
  %62 = ashr i32 %61, 8
  switch i32 %62, label %71 [
    i32 216, label %72
    i32 217, label %72
    i32 218, label %72
    i32 219, label %72
    i32 220, label %72
    i32 221, label %72
    i32 222, label %72
    i32 223, label %72
    i32 0, label %63
    i32 255, label %68
  ]

63:                                               ; preds = %60
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds %struct.normal_encoding, ptr @latin1_encoding, i64 0, i32 1, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %71

68:                                               ; preds = %60
  %69 = and i32 %61, -2
  %70 = icmp eq i32 %69, 65534
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %63, %60
  br label %72

72:                                               ; preds = %53, %36, %71, %68, %63, %60, %60, %60, %60, %60, %60, %60, %60
  %73 = phi i32 [ %61, %71 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %60 ], [ -1, %63 ], [ -1, %68 ], [ -1, %36 ], [ -1, %53 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @big2_predefinedEntityName(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #9 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv i64 %6, 2
  switch i64 %7, label %104 [
    i64 2, label %8
    i64 3, label %27
    i64 4, label %50
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %1, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %104

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %1, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 116
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  %17 = load i8, ptr %1, align 1, !tbaa !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %1, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = freeze i8 %21
  %23 = icmp eq i8 %22, 103
  %24 = select i1 %23, i32 62, i32 0
  %25 = icmp eq i8 %22, 108
  %26 = select i1 %25, i32 60, i32 %24
  br label %105

27:                                               ; preds = %3
  %28 = load i8, ptr %1, align 1, !tbaa !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %104

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = icmp eq i8 %32, 97
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %1, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %1, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp eq i8 %40, 109
  br i1 %41, label %42, label %104

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %1, i64 4
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %1, i64 5
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = icmp eq i8 %48, 112
  br i1 %49, label %105, label %104

50:                                               ; preds = %3
  %51 = load i8, ptr %1, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %1, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !9
  switch i8 %55, label %104 [
    i8 113, label %56
    i8 97, label %80
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %1, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %1, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = icmp eq i8 %62, 117
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %1, i64 4
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %1, i64 5
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = icmp eq i8 %70, 111
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %1, i64 6
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %1, i64 7
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = icmp eq i8 %78, 116
  br i1 %79, label %105, label %104

80:                                               ; preds = %53
  %81 = getelementptr inbounds i8, ptr %1, i64 2
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, ptr %1, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp eq i8 %86, 112
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %1, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %1, i64 5
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = icmp eq i8 %94, 111
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %1, i64 6
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %1, i64 7
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = icmp eq i8 %102, 115
  br i1 %103, label %105, label %104

104:                                              ; preds = %50, %53, %64, %68, %76, %72, %60, %56, %88, %92, %100, %96, %84, %80, %27, %30, %42, %46, %38, %34, %8, %12, %3
  br label %105

105:                                              ; preds = %19, %16, %100, %76, %46, %104
  %106 = phi i32 [ 0, %104 ], [ 38, %46 ], [ 34, %76 ], [ 39, %100 ], [ 0, %16 ], [ %26, %19 ]
  ret i32 %106
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @big2_updatePosition(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %67

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.position, ptr %3, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %62
  %12 = phi ptr [ %1, %9 ], [ %63, %62 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %58 [
    i8 0, label %14
    i8 -40, label %28
    i8 -39, label %28
    i8 -38, label %28
    i8 -37, label %28
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  switch i8 %19, label %58 [
    i8 5, label %20
    i8 6, label %24
    i8 7, label %28
    i8 10, label %32
    i8 9, label %36
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %12, i64 2
  %22 = load i64, ptr %10, align 8, !tbaa !40
  %23 = add i64 %22, 1
  store i64 %23, ptr %10, align 8, !tbaa !40
  br label %62

24:                                               ; preds = %14
  %25 = getelementptr inbounds i8, ptr %12, i64 3
  %26 = load i64, ptr %10, align 8, !tbaa !40
  %27 = add i64 %26, 1
  store i64 %27, ptr %10, align 8, !tbaa !40
  br label %62

28:                                               ; preds = %11, %11, %11, %11, %14
  %29 = getelementptr inbounds i8, ptr %12, i64 4
  %30 = load i64, ptr %10, align 8, !tbaa !40
  %31 = add i64 %30, 1
  store i64 %31, ptr %10, align 8, !tbaa !40
  br label %62

32:                                               ; preds = %14
  store i64 0, ptr %10, align 8, !tbaa !40
  %33 = load i64, ptr %3, align 8, !tbaa !43
  %34 = add i64 %33, 1
  store i64 %34, ptr %3, align 8, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %12, i64 2
  br label %62

36:                                               ; preds = %14
  %37 = load i64, ptr %3, align 8, !tbaa !43
  %38 = add i64 %37, 1
  store i64 %38, ptr %3, align 8, !tbaa !43
  %39 = getelementptr inbounds i8, ptr %12, i64 2
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %5, %40
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load i8, ptr %39, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %12, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = freeze i8 %51
  %53 = icmp eq i8 %52, 10
  %54 = getelementptr inbounds i8, ptr %12, i64 4
  %55 = select i1 %53, ptr %54, ptr %39
  br label %56

56:                                               ; preds = %46, %43, %36
  %57 = phi ptr [ %39, %36 ], [ %39, %43 ], [ %55, %46 ]
  store i64 0, ptr %10, align 8, !tbaa !40
  br label %62

58:                                               ; preds = %11, %14
  %59 = getelementptr inbounds i8, ptr %12, i64 2
  %60 = load i64, ptr %10, align 8, !tbaa !40
  %61 = add i64 %60, 1
  store i64 %61, ptr %10, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %58, %56, %32, %28, %24, %20
  %63 = phi ptr [ %59, %58 ], [ %57, %56 ], [ %35, %32 ], [ %29, %28 ], [ %25, %24 ], [ %21, %20 ]
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %5, %64
  %66 = icmp sgt i64 %65, 1
  br i1 %66, label %11, label %67, !llvm.loop !137

67:                                               ; preds = %62, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_isPublicId(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds i8, ptr %2, i64 -2
  %6 = ptrtoint ptr %5 to i64
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = icmp sgt i64 %9, 1
  br i1 %10, label %11, label %33

11:                                               ; preds = %4, %27
  %12 = phi ptr [ %28, %27 ], [ %7, %4 ]
  %13 = phi ptr [ %12, %27 ], [ %1, %4 ]
  %14 = load i8, ptr %12, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %13, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %26 [
    i8 25, label %27
    i8 24, label %27
    i8 27, label %27
    i8 13, label %27
    i8 31, label %27
    i8 32, label %27
    i8 34, label %27
    i8 35, label %27
    i8 17, label %27
    i8 14, label %27
    i8 15, label %27
    i8 9, label %27
    i8 10, label %27
    i8 18, label %27
    i8 16, label %27
    i8 33, label %27
    i8 30, label %27
    i8 19, label %27
    i8 23, label %27
    i8 21, label %22
    i8 26, label %24
    i8 22, label %24
  ]

22:                                               ; preds = %16
  %23 = icmp eq i8 %18, 9
  br i1 %23, label %32, label %27

24:                                               ; preds = %16, %16
  %25 = icmp sgt i8 %18, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %16, %24
  switch i8 %18, label %32 [
    i8 36, label %27
    i8 64, label %27
  ]

27:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %22, %24, %26, %26
  %28 = getelementptr inbounds i8, ptr %12, i64 2
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 %6, %29
  %31 = icmp sgt i64 %30, 1
  br i1 %31, label %11, label %33, !llvm.loop !138

32:                                               ; preds = %26, %11, %22
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %27, %32, %4
  %34 = phi i32 [ 1, %4 ], [ 0, %32 ], [ 1, %27 ]
  ret i32 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @big2_toUtf8(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, -2
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = icmp sgt i64 %10, 0
  br i1 %12, label %13, label %113

13:                                               ; preds = %5
  %14 = ptrtoint ptr %4 to i64
  %15 = ptrtoint ptr %11 to i64
  br label %16

16:                                               ; preds = %13, %109
  %17 = phi ptr [ %6, %13 ], [ %111, %109 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = load i8, ptr %17, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  switch i8 %20, label %42 [
    i8 0, label %22
    i8 1, label %29
    i8 2, label %29
    i8 3, label %29
    i8 4, label %29
    i8 5, label %29
    i8 6, label %29
    i8 7, label %29
    i8 -40, label %62
    i8 -39, label %62
    i8 -38, label %62
    i8 -37, label %62
  ]

22:                                               ; preds = %16
  %23 = icmp sgt i8 %19, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 8, !tbaa !5
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %113, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %28, ptr %3, align 8, !tbaa !5
  store i8 %19, ptr %25, align 1, !tbaa !9
  br label %109

29:                                               ; preds = %22, %16, %16, %16, %16, %16, %16, %16
  %30 = load ptr, ptr %3, align 8, !tbaa !5
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %14, %31
  %33 = icmp slt i64 %32, 2
  br i1 %33, label %113, label %34

34:                                               ; preds = %29
  %35 = tail call i8 @llvm.fshl.i8(i8 %20, i8 %19, i8 2)
  %36 = or i8 %35, -64
  %37 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %37, ptr %3, align 8, !tbaa !5
  store i8 %36, ptr %30, align 1, !tbaa !9
  %38 = and i8 %19, 63
  %39 = or disjoint i8 %38, -128
  %40 = load ptr, ptr %3, align 8, !tbaa !5
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %3, align 8, !tbaa !5
  store i8 %39, ptr %40, align 1, !tbaa !9
  br label %109

42:                                               ; preds = %16
  %43 = load ptr, ptr %3, align 8, !tbaa !5
  %44 = ptrtoint ptr %43 to i64
  %45 = sub i64 %14, %44
  %46 = icmp slt i64 %45, 3
  br i1 %46, label %113, label %47

47:                                               ; preds = %42
  %48 = lshr i8 %20, 4
  %49 = or disjoint i8 %48, -32
  %50 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %50, ptr %3, align 8, !tbaa !5
  store i8 %49, ptr %43, align 1, !tbaa !9
  %51 = shl i8 %20, 2
  %52 = and i8 %51, 60
  %53 = lshr i8 %19, 6
  %54 = or disjoint i8 %53, %52
  %55 = or disjoint i8 %54, -128
  %56 = load ptr, ptr %3, align 8, !tbaa !5
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %3, align 8, !tbaa !5
  store i8 %55, ptr %56, align 1, !tbaa !9
  %58 = and i8 %19, 63
  %59 = or disjoint i8 %58, -128
  %60 = load ptr, ptr %3, align 8, !tbaa !5
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %61, ptr %3, align 8, !tbaa !5
  store i8 %59, ptr %60, align 1, !tbaa !9
  br label %109

62:                                               ; preds = %16, %16, %16, %16
  %63 = load ptr, ptr %3, align 8, !tbaa !5
  %64 = ptrtoint ptr %63 to i64
  %65 = sub i64 %14, %64
  %66 = icmp slt i64 %65, 4
  br i1 %66, label %113, label %67

67:                                               ; preds = %62
  %68 = ptrtoint ptr %17 to i64
  %69 = sub i64 %15, %68
  %70 = icmp slt i64 %69, 4
  br i1 %70, label %113, label %71

71:                                               ; preds = %67
  %72 = shl nuw nsw i32 %21, 2
  %73 = and i32 %72, 12
  %74 = zext i8 %19 to i32
  %75 = lshr i32 %74, 6
  %76 = or disjoint i32 %73, %75
  %77 = add nuw nsw i32 %76, 1
  %78 = trunc i32 %77 to i8
  %79 = lshr i8 %78, 2
  %80 = or i8 %79, -16
  %81 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %81, ptr %3, align 8, !tbaa !5
  store i8 %80, ptr %63, align 1, !tbaa !9
  %82 = lshr i32 %74, 2
  %83 = and i32 %82, 15
  %84 = shl nuw nsw i32 %77, 4
  %85 = and i32 %84, 48
  %86 = or disjoint i32 %85, %83
  %87 = trunc i32 %86 to i8
  %88 = or disjoint i8 %87, -128
  %89 = load ptr, ptr %3, align 8, !tbaa !5
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %3, align 8, !tbaa !5
  store i8 %88, ptr %89, align 1, !tbaa !9
  %91 = getelementptr inbounds i8, ptr %17, i64 2
  %92 = getelementptr inbounds i8, ptr %17, i64 3
  %93 = load i8, ptr %92, align 1, !tbaa !9
  %94 = shl i8 %19, 4
  %95 = and i8 %94, 48
  %96 = load i8, ptr %91, align 1, !tbaa !9
  %97 = shl i8 %96, 2
  %98 = and i8 %97, 12
  %99 = lshr i8 %93, 6
  %100 = or disjoint i8 %95, %99
  %101 = or disjoint i8 %100, %98
  %102 = or disjoint i8 %101, -128
  %103 = load ptr, ptr %3, align 8, !tbaa !5
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %104, ptr %3, align 8, !tbaa !5
  store i8 %102, ptr %103, align 1, !tbaa !9
  %105 = and i8 %93, 63
  %106 = or disjoint i8 %105, -128
  %107 = load ptr, ptr %3, align 8, !tbaa !5
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %108, ptr %3, align 8, !tbaa !5
  store i8 %106, ptr %107, align 1, !tbaa !9
  br label %109

109:                                              ; preds = %71, %47, %34, %27
  %110 = phi ptr [ %17, %47 ], [ %91, %71 ], [ %17, %34 ], [ %17, %27 ]
  %111 = getelementptr inbounds i8, ptr %110, i64 2
  %112 = icmp ult ptr %111, %11
  br i1 %112, label %16, label %113, !llvm.loop !139

113:                                              ; preds = %109, %67, %62, %42, %29, %24, %5
  %114 = phi ptr [ %6, %5 ], [ %17, %24 ], [ %17, %29 ], [ %17, %42 ], [ %17, %62 ], [ %17, %67 ], [ %111, %109 ]
  %115 = phi i32 [ 0, %5 ], [ 2, %24 ], [ 2, %29 ], [ 2, %42 ], [ 2, %62 ], [ 1, %67 ], [ 0, %109 ]
  store ptr %114, ptr %1, align 8, !tbaa !5
  ret i32 %115
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @big2_toUtf16(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #10 {
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, -2
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  %13 = ptrtoint ptr %4 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp sgt i64 %10, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds i8, ptr %11, i64 -2
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = and i8 %19, -8
  %21 = icmp eq i8 %20, -40
  %22 = select i1 %21, ptr %18, ptr %11
  %23 = zext i1 %21 to i32
  br label %24

24:                                               ; preds = %17, %5
  %25 = phi ptr [ %11, %5 ], [ %22, %17 ]
  %26 = phi i32 [ 0, %5 ], [ %23, %17 ]
  %27 = icmp ult ptr %6, %25
  br i1 %27, label %28, label %46

28:                                               ; preds = %24, %32
  %29 = phi ptr [ %42, %32 ], [ %6, %24 ]
  %30 = load ptr, ptr %3, align 8, !tbaa !5
  %31 = icmp ult ptr %30, %4
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i8, ptr %29, align 1, !tbaa !9
  %34 = zext i8 %33 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i16
  %39 = or disjoint i16 %35, %38
  %40 = getelementptr inbounds i16, ptr %30, i64 1
  store ptr %40, ptr %3, align 8, !tbaa !5
  store i16 %39, ptr %30, align 2, !tbaa !12
  %41 = load ptr, ptr %1, align 8, !tbaa !5
  %42 = getelementptr inbounds i8, ptr %41, i64 2
  store ptr %42, ptr %1, align 8, !tbaa !5
  %43 = icmp ult ptr %42, %25
  br i1 %43, label %28, label %46, !llvm.loop !140

44:                                               ; preds = %28
  %45 = icmp eq ptr %30, %4
  br i1 %45, label %47, label %46

46:                                               ; preds = %32, %24, %44
  br label %47

47:                                               ; preds = %44, %46
  %48 = phi i32 [ %26, %46 ], [ 2, %44 ]
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @big2_scanLit(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %60

10:                                               ; preds = %5, %55
  %11 = phi i64 [ %58, %55 ], [ %8, %5 ]
  %12 = phi ptr [ %56, %55 ], [ %2, %5 ]
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %53 [
    i8 0, label %18
    i8 -40, label %30
    i8 -39, label %30
    i8 -38, label %30
    i8 -37, label %30
    i8 -36, label %34
    i8 -35, label %34
    i8 -34, label %34
    i8 -33, label %34
    i8 -1, label %14
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp ugt i8 %16, -3
  br i1 %17, label %34, label %53

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  switch i8 %23, label %53 [
    i8 5, label %24
    i8 6, label %26
    i8 7, label %30
    i8 0, label %34
    i8 1, label %34
    i8 8, label %34
    i8 12, label %35
    i8 13, label %35
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds i8, ptr %12, i64 2
  br label %55

26:                                               ; preds = %18
  %27 = icmp eq i64 %11, 2
  br i1 %27, label %60, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %12, i64 3
  br label %55

30:                                               ; preds = %10, %10, %10, %10, %18
  %31 = icmp ult i64 %11, 4
  br i1 %31, label %60, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, ptr %12, i64 4
  br label %55

34:                                               ; preds = %10, %10, %10, %10, %14, %18, %18, %18
  store ptr %12, ptr %4, align 8, !tbaa !5
  br label %60

35:                                               ; preds = %18, %18
  %36 = zext nneg i8 %23 to i32
  %37 = getelementptr inbounds i8, ptr %12, i64 2
  %38 = icmp eq i32 %36, %0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = ptrtoint ptr %37 to i64
  %41 = sub i64 %6, %40
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  store ptr %37, ptr %4, align 8, !tbaa !5
  %44 = load i8, ptr %37, align 1, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %12, i64 3
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.normal_encoding, ptr %1, i64 0, i32 1, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  switch i8 %51, label %52 [
    i8 21, label %60
    i8 9, label %60
    i8 10, label %60
    i8 11, label %60
    i8 30, label %60
    i8 20, label %60
  ]

52:                                               ; preds = %43, %46
  br label %60

53:                                               ; preds = %10, %14, %18
  %54 = getelementptr inbounds i8, ptr %12, i64 2
  br label %55

55:                                               ; preds = %24, %28, %32, %53, %35
  %56 = phi ptr [ %54, %53 ], [ %37, %35 ], [ %33, %32 ], [ %29, %28 ], [ %25, %24 ]
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %6, %57
  %59 = icmp sgt i64 %58, 1
  br i1 %59, label %10, label %60

60:                                               ; preds = %55, %26, %30, %5, %46, %46, %46, %46, %46, %46, %39, %34, %52
  %61 = phi i32 [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ 27, %46 ], [ -27, %39 ], [ 0, %34 ], [ 0, %52 ], [ -1, %5 ], [ -1, %55 ], [ -2, %26 ], [ -2, %30 ]
  ret i32 %61
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @big2_scanDecl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %61

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !9
  switch i8 %17, label %28 [
    i8 27, label %18
    i8 20, label %21
    i8 22, label %23
    i8 24, label %23
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds i8, ptr %1, i64 2
  %20 = tail call fastcc i32 @big2_scanComment(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef %2, ptr noundef %3), !range !64
  br label %61

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8, ptr %1, i64 2
  store ptr %22, ptr %3, align 8, !tbaa !5
  br label %61

23:                                               ; preds = %12, %12
  %24 = getelementptr inbounds i8, ptr %1, i64 2
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %5, %25
  %27 = icmp sgt i64 %26, 1
  br i1 %27, label %29, label %61

28:                                               ; preds = %9, %12
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %61

29:                                               ; preds = %23, %55
  %30 = phi i64 [ %58, %55 ], [ %26, %23 ]
  %31 = phi ptr [ %56, %55 ], [ %24, %23 ]
  %32 = phi ptr [ %31, %55 ], [ %1, %23 ]
  %33 = load i8, ptr %31, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %32, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !9
  switch i8 %40, label %60 [
    i8 30, label %41
    i8 21, label %54
    i8 9, label %54
    i8 10, label %54
    i8 22, label %55
    i8 24, label %55
  ]

41:                                               ; preds = %35
  %42 = icmp ugt i64 %30, 3
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %32, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %32, i64 5
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !9
  switch i8 %52, label %54 [
    i8 21, label %53
    i8 9, label %53
    i8 10, label %53
    i8 30, label %53
  ]

53:                                               ; preds = %47, %47, %47, %47
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

54:                                               ; preds = %35, %35, %35, %43, %47
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

55:                                               ; preds = %35, %35
  %56 = getelementptr inbounds i8, ptr %31, i64 2
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %5, %57
  %59 = icmp sgt i64 %58, 1
  br i1 %59, label %29, label %61, !llvm.loop !141

60:                                               ; preds = %29, %35
  store ptr %31, ptr %3, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %55, %23, %41, %4, %60, %54, %53, %28, %21, %18
  %62 = phi i32 [ 0, %28 ], [ 0, %60 ], [ 16, %54 ], [ 0, %53 ], [ 33, %21 ], [ %20, %18 ], [ -1, %4 ], [ -1, %41 ], [ -1, %23 ], [ -1, %55 ]
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @big2_scanPi(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %207

10:                                               ; preds = %4
  %11 = load i8, ptr %1, align 1, !tbaa !9
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  switch i8 %11, label %14 [
    i8 -40, label %55
    i8 -39, label %55
    i8 -38, label %55
    i8 -37, label %55
    i8 -36, label %58
    i8 -35, label %58
    i8 -34, label %58
    i8 -33, label %58
    i8 -1, label %17
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !9
  br label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp ugt i8 %19, -3
  br i1 %20, label %58, label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !9
  switch i8 %26, label %58 [
    i8 29, label %27
    i8 22, label %45
    i8 24, label %45
    i8 5, label %51
    i8 6, label %52
    i8 7, label %55
  ]

27:                                               ; preds = %14, %17, %21
  %28 = phi i8 [ %16, %14 ], [ %19, %17 ], [ %23, %21 ]
  %29 = zext i8 %11 to i64
  %30 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 3
  %34 = zext i8 %28 to i32
  %35 = lshr i32 %34, 5
  %36 = or disjoint i32 %35, %33
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !14
  %40 = and i32 %34, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %207

45:                                               ; preds = %27, %21, %21
  %46 = phi i8 [ %28, %27 ], [ %23, %21 ], [ %23, %21 ]
  %47 = getelementptr inbounds i8, ptr %1, i64 2
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %6, %48
  %50 = icmp sgt i64 %49, 1
  br i1 %50, label %59, label %207

51:                                               ; preds = %21
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %207

52:                                               ; preds = %21
  %53 = icmp eq i64 %8, 2
  br i1 %53, label %207, label %54

54:                                               ; preds = %52
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %207

55:                                               ; preds = %13, %13, %13, %13, %21
  %56 = icmp ult i64 %8, 4
  br i1 %56, label %207, label %57

57:                                               ; preds = %55
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %207

58:                                               ; preds = %13, %13, %13, %13, %17, %21
  store ptr %1, ptr %3, align 8, !tbaa !5
  br label %207

59:                                               ; preds = %45, %96
  %60 = phi i64 [ %99, %96 ], [ %49, %45 ]
  %61 = phi i64 [ %98, %96 ], [ %48, %45 ]
  %62 = phi ptr [ %97, %96 ], [ %47, %45 ]
  %63 = phi ptr [ %62, %96 ], [ %1, %45 ]
  %64 = load i8, ptr %62, align 1, !tbaa !9
  switch i8 %64, label %65 [
    i8 0, label %72
    i8 -40, label %105
    i8 -39, label %105
    i8 -38, label %105
    i8 -37, label %105
    i8 -36, label %205
    i8 -35, label %205
    i8 -34, label %205
    i8 -33, label %205
    i8 -1, label %68
  ]

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, ptr %63, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !9
  br label %78

68:                                               ; preds = %59
  %69 = getelementptr inbounds i8, ptr %63, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = icmp ugt i8 %70, -3
  br i1 %71, label %205, label %78

72:                                               ; preds = %59
  %73 = getelementptr inbounds i8, ptr %63, i64 3
  %74 = load i8, ptr %73, align 1, !tbaa !9
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  switch i8 %77, label %205 [
    i8 29, label %78
    i8 22, label %96
    i8 24, label %96
    i8 25, label %96
    i8 26, label %96
    i8 27, label %96
    i8 5, label %101
    i8 6, label %102
    i8 7, label %105
    i8 21, label %108
    i8 9, label %108
    i8 10, label %108
    i8 15, label %186
  ]

78:                                               ; preds = %65, %68, %72
  %79 = phi i8 [ %67, %65 ], [ %70, %68 ], [ %74, %72 ]
  %80 = zext i8 %64 to i64
  %81 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = zext i8 %79 to i32
  %86 = lshr i32 %85, 5
  %87 = or disjoint i32 %86, %84
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !14
  %91 = and i32 %85, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %78
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

96:                                               ; preds = %78, %72, %72, %72, %72, %72
  %97 = getelementptr inbounds i8, ptr %62, i64 2
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 %6, %98
  %100 = icmp sgt i64 %99, 1
  br i1 %100, label %59, label %207, !llvm.loop !142

101:                                              ; preds = %72
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

102:                                              ; preds = %72
  %103 = icmp eq i64 %60, 2
  br i1 %103, label %207, label %104

104:                                              ; preds = %102
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

105:                                              ; preds = %59, %59, %59, %59, %72
  %106 = icmp ult i64 %60, 4
  br i1 %106, label %207, label %107

107:                                              ; preds = %105
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

108:                                              ; preds = %72, %72, %72
  store i32 11, ptr %5, align 4, !tbaa !14
  %109 = sub i64 %61, %7
  %110 = icmp ne i64 %109, 6
  %111 = or i1 %12, %110
  br i1 %111, label %134, label %112

112:                                              ; preds = %108
  switch i8 %46, label %134 [
    i8 120, label %114
    i8 88, label %113
  ]

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %112
  %115 = phi i32 [ 1, %113 ], [ 0, %112 ]
  %116 = load i8, ptr %47, align 1, !tbaa !9
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = getelementptr inbounds i8, ptr %1, i64 3
  %120 = load i8, ptr %119, align 1, !tbaa !9
  switch i8 %120, label %134 [
    i8 109, label %122
    i8 77, label %121
  ]

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ 1, %121 ], [ %115, %118 ]
  %124 = getelementptr inbounds i8, ptr %1, i64 4
  %125 = load i8, ptr %124, align 1, !tbaa !9
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = getelementptr inbounds i8, ptr %1, i64 5
  %129 = load i8, ptr %128, align 1, !tbaa !9
  switch i8 %129, label %134 [
    i8 108, label %130
    i8 76, label %133
  ]

130:                                              ; preds = %127
  %131 = icmp eq i32 %123, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  store i32 12, ptr %5, align 4, !tbaa !14
  br label %134

133:                                              ; preds = %127, %130
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

134:                                              ; preds = %108, %132, %112, %118, %127, %114, %122
  %135 = phi i32 [ 11, %108 ], [ 12, %132 ], [ 11, %112 ], [ 11, %118 ], [ 11, %127 ], [ 11, %114 ], [ 11, %122 ]
  %136 = getelementptr inbounds i8, ptr %63, i64 4
  %137 = ptrtoint ptr %136 to i64
  %138 = sub i64 %6, %137
  %139 = icmp sgt i64 %138, 1
  br i1 %139, label %140, label %207

140:                                              ; preds = %134, %181
  %141 = phi i64 [ %184, %181 ], [ %138, %134 ]
  %142 = phi ptr [ %182, %181 ], [ %136, %134 ]
  %143 = load i8, ptr %142, align 1, !tbaa !9
  switch i8 %143, label %179 [
    i8 0, label %148
    i8 -40, label %160
    i8 -39, label %160
    i8 -38, label %160
    i8 -37, label %160
    i8 -36, label %164
    i8 -35, label %164
    i8 -34, label %164
    i8 -33, label %164
    i8 -1, label %144
  ]

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %142, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !9
  %147 = icmp ugt i8 %146, -3
  br i1 %147, label %164, label %179

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %142, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !9
  switch i8 %153, label %179 [
    i8 5, label %154
    i8 6, label %156
    i8 7, label %160
    i8 0, label %164
    i8 1, label %164
    i8 8, label %164
    i8 15, label %165
  ]

154:                                              ; preds = %148
  %155 = getelementptr inbounds i8, ptr %142, i64 2
  br label %181

156:                                              ; preds = %148
  %157 = icmp eq i64 %141, 2
  br i1 %157, label %207, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds i8, ptr %142, i64 3
  br label %181

160:                                              ; preds = %140, %140, %140, %140, %148
  %161 = icmp ult i64 %141, 4
  br i1 %161, label %207, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %142, i64 4
  br label %181

164:                                              ; preds = %140, %140, %140, %140, %144, %148, %148, %148
  store ptr %142, ptr %3, align 8, !tbaa !5
  br label %207

165:                                              ; preds = %148
  %166 = getelementptr inbounds i8, ptr %142, i64 2
  %167 = ptrtoint ptr %166 to i64
  %168 = sub i64 %6, %167
  %169 = icmp sgt i64 %168, 1
  br i1 %169, label %170, label %207

170:                                              ; preds = %165
  %171 = load i8, ptr %166, align 1, !tbaa !9
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %142, i64 3
  %175 = load i8, ptr %174, align 1, !tbaa !9
  %176 = icmp eq i8 %175, 62
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds i8, ptr %142, i64 4
  store ptr %178, ptr %3, align 8, !tbaa !5
  br label %207

179:                                              ; preds = %140, %144, %148
  %180 = getelementptr inbounds i8, ptr %142, i64 2
  br label %181

181:                                              ; preds = %170, %173, %179, %162, %158, %154
  %182 = phi ptr [ %180, %179 ], [ %166, %173 ], [ %166, %170 ], [ %163, %162 ], [ %159, %158 ], [ %155, %154 ]
  %183 = ptrtoint ptr %182 to i64
  %184 = sub i64 %6, %183
  %185 = icmp sgt i64 %184, 1
  br i1 %185, label %140, label %207, !llvm.loop !143

186:                                              ; preds = %72
  %187 = call fastcc i32 @big2_checkPiTarget(ptr noundef nonnull %1, ptr noundef nonnull %62, ptr noundef nonnull %5)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store ptr %62, ptr %3, align 8, !tbaa !5
  br label %207

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %63, i64 4
  %192 = ptrtoint ptr %191 to i64
  %193 = sub i64 %6, %192
  %194 = icmp sgt i64 %193, 1
  br i1 %194, label %195, label %207

195:                                              ; preds = %190
  %196 = load i8, ptr %191, align 1, !tbaa !9
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, ptr %63, i64 5
  %200 = load i8, ptr %199, align 1, !tbaa !9
  %201 = icmp eq i8 %200, 62
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %63, i64 6
  store ptr %203, ptr %3, align 8, !tbaa !5
  %204 = load i32, ptr %5, align 4, !tbaa !14
  br label %207

205:                                              ; preds = %59, %59, %59, %59, %68, %72, %195, %198
  %206 = phi ptr [ %191, %198 ], [ %191, %195 ], [ %62, %72 ], [ %62, %68 ], [ %62, %59 ], [ %62, %59 ], [ %62, %59 ], [ %62, %59 ]
  store ptr %206, ptr %3, align 8, !tbaa !5
  br label %207

207:                                              ; preds = %96, %156, %160, %165, %181, %45, %134, %190, %105, %102, %55, %52, %4, %205, %202, %189, %177, %164, %133, %107, %104, %101, %95, %58, %57, %54, %51, %44
  %208 = phi i32 [ 0, %58 ], [ 0, %57 ], [ 0, %54 ], [ 0, %51 ], [ 0, %205 ], [ %204, %202 ], [ 0, %189 ], [ %135, %177 ], [ 0, %164 ], [ 0, %133 ], [ 0, %107 ], [ 0, %104 ], [ 0, %101 ], [ 0, %95 ], [ 0, %44 ], [ -1, %4 ], [ -2, %52 ], [ -2, %55 ], [ -2, %102 ], [ -2, %105 ], [ -1, %190 ], [ -1, %134 ], [ -1, %45 ], [ -2, %156 ], [ -2, %160 ], [ -1, %165 ], [ -1, %181 ], [ -1, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %208
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @big2_scanPercent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %98

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %10, label %21 [
    i8 0, label %15
    i8 -40, label %46
    i8 -39, label %46
    i8 -38, label %46
    i8 -37, label %46
    i8 -36, label %95
    i8 -35, label %95
    i8 -34, label %95
    i8 -33, label %95
    i8 -1, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %95, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %95 [
    i8 29, label %21
    i8 22, label %39
    i8 24, label %39
    i8 30, label %48
    i8 6, label %44
    i8 7, label %46
    i8 21, label %48
    i8 10, label %48
    i8 9, label %48
  ]

21:                                               ; preds = %9, %11, %15
  %22 = zext i8 %10 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %29, 5
  %31 = or disjoint i32 %30, %26
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %21, %15, %15
  %40 = getelementptr inbounds i8, ptr %1, i64 2
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %5, %41
  %43 = icmp sgt i64 %42, 1
  br i1 %43, label %49, label %98

44:                                               ; preds = %15
  %45 = icmp eq i64 %7, 2
  br i1 %45, label %98, label %95

46:                                               ; preds = %9, %9, %9, %9, %15
  %47 = icmp ult i64 %7, 4
  br i1 %47, label %98, label %95

48:                                               ; preds = %15, %15, %15, %15
  br label %95

49:                                               ; preds = %39, %84
  %50 = phi i64 [ %87, %84 ], [ %42, %39 ]
  %51 = phi ptr [ %85, %84 ], [ %40, %39 ]
  %52 = phi ptr [ %51, %84 ], [ %1, %39 ]
  %53 = load i8, ptr %51, align 1, !tbaa !9
  switch i8 %53, label %54 [
    i8 0, label %61
    i8 -40, label %91
    i8 -39, label %91
    i8 -38, label %91
    i8 -37, label %91
    i8 -36, label %95
    i8 -35, label %95
    i8 -34, label %95
    i8 -33, label %95
    i8 -1, label %57
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %52, i64 3
  %56 = load i8, ptr %55, align 1, !tbaa !9
  br label %67

57:                                               ; preds = %49
  %58 = getelementptr inbounds i8, ptr %52, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = icmp ugt i8 %59, -3
  br i1 %60, label %95, label %67

61:                                               ; preds = %49
  %62 = getelementptr inbounds i8, ptr %52, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  switch i8 %66, label %95 [
    i8 29, label %67
    i8 22, label %84
    i8 24, label %84
    i8 25, label %84
    i8 26, label %84
    i8 27, label %84
    i8 18, label %93
    i8 6, label %89
    i8 7, label %91
  ]

67:                                               ; preds = %54, %57, %61
  %68 = phi i8 [ %56, %54 ], [ %59, %57 ], [ %63, %61 ]
  %69 = zext i8 %53 to i64
  %70 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 3
  %74 = zext i8 %68 to i32
  %75 = lshr i32 %74, 5
  %76 = or disjoint i32 %75, %73
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !14
  %80 = and i32 %74, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %67, %61, %61, %61, %61, %61
  %85 = getelementptr inbounds i8, ptr %51, i64 2
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %5, %86
  %88 = icmp sgt i64 %87, 1
  br i1 %88, label %49, label %98, !llvm.loop !144

89:                                               ; preds = %61
  %90 = icmp eq i64 %50, 2
  br i1 %90, label %98, label %95

91:                                               ; preds = %49, %49, %49, %49, %61
  %92 = icmp ult i64 %50, 4
  br i1 %92, label %98, label %95

93:                                               ; preds = %61
  %94 = getelementptr inbounds i8, ptr %52, i64 4
  br label %95

95:                                               ; preds = %61, %57, %49, %49, %49, %49, %67, %91, %89, %15, %11, %9, %9, %9, %9, %46, %44, %21, %48, %93
  %96 = phi ptr [ %94, %93 ], [ %1, %48 ], [ %1, %21 ], [ %1, %44 ], [ %1, %46 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %11 ], [ %1, %15 ], [ %51, %89 ], [ %51, %91 ], [ %51, %67 ], [ %51, %49 ], [ %51, %49 ], [ %51, %49 ], [ %51, %49 ], [ %51, %57 ], [ %51, %61 ]
  %97 = phi i32 [ 28, %93 ], [ 22, %48 ], [ 0, %21 ], [ 0, %44 ], [ 0, %46 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %15 ], [ 0, %89 ], [ 0, %91 ], [ 0, %67 ], [ 0, %49 ], [ 0, %49 ], [ 0, %49 ], [ 0, %49 ], [ 0, %57 ], [ 0, %61 ]
  store ptr %96, ptr %3, align 8, !tbaa !5
  br label %98

98:                                               ; preds = %84, %95, %39, %91, %89, %46, %44, %4
  %99 = phi i32 [ -1, %4 ], [ -2, %44 ], [ -2, %46 ], [ -2, %89 ], [ -2, %91 ], [ -1, %39 ], [ %97, %95 ], [ -1, %84 ]
  ret i32 %99
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @big2_scanPoundName(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %96

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %10, label %21 [
    i8 0, label %15
    i8 -40, label %46
    i8 -39, label %46
    i8 -38, label %46
    i8 -37, label %46
    i8 -36, label %93
    i8 -35, label %93
    i8 -34, label %93
    i8 -33, label %93
    i8 -1, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %93, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %93 [
    i8 29, label %21
    i8 22, label %39
    i8 24, label %39
    i8 7, label %46
    i8 6, label %44
  ]

21:                                               ; preds = %9, %11, %15
  %22 = zext i8 %10 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %29, 5
  %31 = or disjoint i32 %30, %26
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %93, label %39

39:                                               ; preds = %21, %15, %15
  %40 = getelementptr inbounds i8, ptr %1, i64 2
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %5, %41
  %43 = icmp sgt i64 %42, 1
  br i1 %43, label %48, label %96

44:                                               ; preds = %15
  %45 = icmp eq i64 %7, 2
  br i1 %45, label %96, label %93

46:                                               ; preds = %15, %9, %9, %9, %9
  %47 = icmp ult i64 %7, 4
  br i1 %47, label %96, label %93

48:                                               ; preds = %39, %83
  %49 = phi i64 [ %86, %83 ], [ %42, %39 ]
  %50 = phi ptr [ %84, %83 ], [ %40, %39 ]
  %51 = phi ptr [ %50, %83 ], [ %1, %39 ]
  %52 = load i8, ptr %50, align 1, !tbaa !9
  switch i8 %52, label %53 [
    i8 0, label %60
    i8 -40, label %90
    i8 -39, label %90
    i8 -38, label %90
    i8 -37, label %90
    i8 -36, label %93
    i8 -35, label %93
    i8 -34, label %93
    i8 -33, label %93
    i8 -1, label %56
  ]

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %51, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !9
  br label %66

56:                                               ; preds = %48
  %57 = getelementptr inbounds i8, ptr %51, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp ugt i8 %58, -3
  br i1 %59, label %93, label %66

60:                                               ; preds = %48
  %61 = getelementptr inbounds i8, ptr %51, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !9
  switch i8 %65, label %93 [
    i8 29, label %66
    i8 22, label %83
    i8 24, label %83
    i8 25, label %83
    i8 26, label %83
    i8 27, label %83
    i8 36, label %92
    i8 6, label %88
    i8 7, label %90
    i8 9, label %92
    i8 10, label %92
    i8 21, label %92
    i8 32, label %92
    i8 11, label %92
    i8 30, label %92
  ]

66:                                               ; preds = %53, %56, %60
  %67 = phi i8 [ %55, %53 ], [ %58, %56 ], [ %62, %60 ]
  %68 = zext i8 %52 to i64
  %69 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 3
  %73 = zext i8 %67 to i32
  %74 = lshr i32 %73, 5
  %75 = or disjoint i32 %74, %72
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !14
  %79 = and i32 %73, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %66, %60, %60, %60, %60, %60
  %84 = getelementptr inbounds i8, ptr %50, i64 2
  %85 = ptrtoint ptr %84 to i64
  %86 = sub i64 %5, %85
  %87 = icmp sgt i64 %86, 1
  br i1 %87, label %48, label %96, !llvm.loop !145

88:                                               ; preds = %60
  %89 = icmp eq i64 %49, 2
  br i1 %89, label %96, label %93

90:                                               ; preds = %48, %48, %48, %48, %60
  %91 = icmp ult i64 %49, 4
  br i1 %91, label %96, label %93

92:                                               ; preds = %60, %60, %60, %60, %60, %60, %60
  br label %93

93:                                               ; preds = %60, %56, %48, %48, %48, %48, %66, %92, %90, %88, %15, %11, %9, %9, %9, %9, %46, %44, %21
  %94 = phi ptr [ %1, %21 ], [ %1, %44 ], [ %1, %46 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %11 ], [ %1, %15 ], [ %50, %88 ], [ %50, %90 ], [ %50, %92 ], [ %50, %66 ], [ %50, %48 ], [ %50, %48 ], [ %50, %48 ], [ %50, %48 ], [ %50, %56 ], [ %50, %60 ]
  %95 = phi i32 [ 0, %21 ], [ 0, %44 ], [ 0, %46 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %15 ], [ 0, %88 ], [ 0, %90 ], [ 20, %92 ], [ 0, %66 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %48 ], [ 0, %56 ], [ 0, %60 ]
  store ptr %94, ptr %3, align 8, !tbaa !5
  br label %96

96:                                               ; preds = %83, %93, %39, %90, %88, %46, %44, %4
  %97 = phi i32 [ -1, %4 ], [ -2, %44 ], [ -2, %46 ], [ -2, %88 ], [ -2, %90 ], [ -20, %39 ], [ %95, %93 ], [ -20, %83 ]
  ret i32 %97
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @big2_scanComment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %82

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %1, i64 2
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %5, %18
  %20 = icmp sgt i64 %19, 1
  br i1 %20, label %21, label %82

21:                                               ; preds = %16, %74
  %22 = phi i64 [ %77, %74 ], [ %19, %16 ]
  %23 = phi ptr [ %75, %74 ], [ %17, %16 ]
  %24 = load i8, ptr %23, align 1, !tbaa !9
  switch i8 %24, label %72 [
    i8 0, label %29
    i8 -40, label %41
    i8 -39, label %41
    i8 -38, label %41
    i8 -37, label %41
    i8 -36, label %79
    i8 -35, label %79
    i8 -34, label %79
    i8 -33, label %79
    i8 -1, label %25
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp ugt i8 %27, -3
  br i1 %28, label %79, label %72

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !9
  switch i8 %34, label %72 [
    i8 5, label %35
    i8 6, label %37
    i8 7, label %41
    i8 0, label %79
    i8 1, label %79
    i8 8, label %79
    i8 27, label %45
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %23, i64 2
  br label %74

37:                                               ; preds = %29
  %38 = icmp eq i64 %22, 2
  br i1 %38, label %82, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %23, i64 3
  br label %74

41:                                               ; preds = %21, %21, %21, %21, %29
  %42 = icmp ult i64 %22, 4
  br i1 %42, label %82, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %23, i64 4
  br label %74

45:                                               ; preds = %29
  %46 = getelementptr inbounds i8, ptr %23, i64 2
  %47 = ptrtoint ptr %46 to i64
  %48 = sub i64 %5, %47
  %49 = icmp sgt i64 %48, 1
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  %51 = load i8, ptr %46, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %23, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = icmp eq i8 %55, 45
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %23, i64 4
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %5, %59
  %61 = icmp sgt i64 %60, 1
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i8, ptr %58, align 1, !tbaa !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %23, i64 5
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = icmp eq i8 %67, 62
  %69 = getelementptr inbounds i8, ptr %23, i64 6
  %70 = select i1 %68, ptr %69, ptr %58
  %71 = select i1 %68, i32 13, i32 0
  br label %79

72:                                               ; preds = %21, %25, %29
  %73 = getelementptr inbounds i8, ptr %23, i64 2
  br label %74

74:                                               ; preds = %50, %53, %72, %43, %39, %35
  %75 = phi ptr [ %73, %72 ], [ %46, %53 ], [ %46, %50 ], [ %44, %43 ], [ %40, %39 ], [ %36, %35 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = sub i64 %5, %76
  %78 = icmp sgt i64 %77, 1
  br i1 %78, label %21, label %82, !llvm.loop !146

79:                                               ; preds = %29, %29, %29, %25, %21, %21, %21, %21, %65, %62, %9, %12
  %80 = phi ptr [ %1, %12 ], [ %1, %9 ], [ %58, %62 ], [ %70, %65 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %21 ], [ %23, %25 ], [ %23, %29 ], [ %23, %29 ], [ %23, %29 ]
  %81 = phi i32 [ 0, %12 ], [ 0, %9 ], [ 0, %62 ], [ %71, %65 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ]
  store ptr %80, ptr %3, align 8, !tbaa !5
  br label %82

82:                                               ; preds = %37, %41, %45, %74, %79, %16, %4, %57
  %83 = phi i32 [ -1, %57 ], [ -1, %4 ], [ -1, %16 ], [ %81, %79 ], [ -2, %37 ], [ -2, %41 ], [ -1, %45 ], [ -1, %74 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @big2_checkPiTarget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  store i32 11, ptr %2, align 4, !tbaa !14
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq i64 %6, 6
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %13, label %36 [
    i8 120, label %15
    i8 88, label %14
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 1, %14 ], [ 0, %11 ]
  %17 = getelementptr inbounds i8, ptr %0, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !9
  switch i8 %22, label %36 [
    i8 109, label %24
    i8 77, label %23
  ]

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ 1, %23 ], [ %16, %20 ]
  %26 = getelementptr inbounds i8, ptr %0, i64 4
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !9
  switch i8 %31, label %36 [
    i8 108, label %33
    i8 76, label %32
  ]

32:                                               ; preds = %29
  br label %36

33:                                               ; preds = %29
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store i32 12, ptr %2, align 4, !tbaa !14
  br label %36

36:                                               ; preds = %24, %15, %8, %32, %33, %29, %20, %11, %3, %35
  %37 = phi i32 [ 1, %35 ], [ 1, %3 ], [ 1, %11 ], [ 1, %20 ], [ 1, %29 ], [ 0, %33 ], [ 0, %32 ], [ 1, %8 ], [ 1, %15 ], [ 1, %24 ]
  ret i32 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @big2_scanRef(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 1
  br i1 %8, label %9, label %170

9:                                                ; preds = %4
  %10 = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %10, label %21 [
    i8 0, label %15
    i8 -40, label %46
    i8 -39, label %46
    i8 -38, label %46
    i8 -37, label %46
    i8 -36, label %167
    i8 -35, label %167
    i8 -34, label %167
    i8 -33, label %167
    i8 -1, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp ugt i8 %13, -3
  br i1 %14, label %167, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  switch i8 %20, label %167 [
    i8 29, label %21
    i8 22, label %39
    i8 24, label %39
    i8 19, label %48
    i8 6, label %44
    i8 7, label %46
  ]

21:                                               ; preds = %9, %11, %15
  %22 = zext i8 %10 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %29, 5
  %31 = or disjoint i32 %30, %26
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %29, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %167, label %39

39:                                               ; preds = %21, %15, %15
  %40 = getelementptr inbounds i8, ptr %1, i64 2
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %5, %41
  %43 = icmp sgt i64 %42, 1
  br i1 %43, label %121, label %170

44:                                               ; preds = %15
  %45 = icmp eq i64 %7, 2
  br i1 %45, label %170, label %167

46:                                               ; preds = %9, %9, %9, %9, %15
  %47 = icmp ult i64 %7, 4
  br i1 %47, label %170, label %167

48:                                               ; preds = %15
  %49 = getelementptr inbounds i8, ptr %1, i64 2
  %50 = ptrtoint ptr %49 to i64
  %51 = sub i64 %5, %50
  %52 = icmp sgt i64 %51, 1
  br i1 %52, label %53, label %170

53:                                               ; preds = %48
  %54 = load i8, ptr %49, align 1, !tbaa !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %167

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %1, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 120
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %1, i64 4
  %62 = ptrtoint ptr %61 to i64
  %63 = sub i64 %5, %62
  %64 = icmp sgt i64 %63, 1
  br i1 %64, label %65, label %170

65:                                               ; preds = %60
  %66 = load i8, ptr %61, align 1, !tbaa !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %167

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %1, i64 5
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = and i8 %73, -2
  %75 = icmp eq i8 %74, 24
  br i1 %75, label %76, label %167

76:                                               ; preds = %68
  %77 = getelementptr inbounds i8, ptr %1, i64 6
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %5, %78
  %80 = icmp sgt i64 %79, 1
  br i1 %80, label %81, label %170

81:                                               ; preds = %76, %94
  %82 = phi ptr [ %95, %94 ], [ %77, %76 ]
  %83 = phi ptr [ %82, %94 ], [ %61, %76 ]
  %84 = load i8, ptr %82, align 1, !tbaa !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %167

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %83, i64 3
  %88 = load i8, ptr %87, align 1, !tbaa !9
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !9
  switch i8 %91, label %167 [
    i8 25, label %94
    i8 24, label %94
    i8 18, label %92
  ]

92:                                               ; preds = %86
  %93 = getelementptr inbounds i8, ptr %83, i64 4
  br label %167

94:                                               ; preds = %86, %86
  %95 = getelementptr inbounds i8, ptr %82, i64 2
  %96 = ptrtoint ptr %95 to i64
  %97 = sub i64 %5, %96
  %98 = icmp sgt i64 %97, 1
  br i1 %98, label %81, label %170, !llvm.loop !147

99:                                               ; preds = %56
  %100 = zext i8 %58 to i64
  %101 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = icmp eq i8 %102, 25
  br i1 %103, label %104, label %167

104:                                              ; preds = %99, %113
  %105 = phi ptr [ %106, %113 ], [ %49, %99 ]
  %106 = getelementptr inbounds i8, ptr %105, i64 2
  %107 = ptrtoint ptr %106 to i64
  %108 = sub i64 %5, %107
  %109 = icmp sgt i64 %108, 1
  br i1 %109, label %110, label %170

110:                                              ; preds = %104
  %111 = load i8, ptr %106, align 1, !tbaa !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %167

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %105, i64 3
  %115 = load i8, ptr %114, align 1, !tbaa !9
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !9
  switch i8 %118, label %167 [
    i8 25, label %104
    i8 18, label %119
  ], !llvm.loop !148

119:                                              ; preds = %113
  %120 = getelementptr inbounds i8, ptr %105, i64 4
  br label %167

121:                                              ; preds = %39, %156
  %122 = phi i64 [ %159, %156 ], [ %42, %39 ]
  %123 = phi ptr [ %157, %156 ], [ %40, %39 ]
  %124 = phi ptr [ %123, %156 ], [ %1, %39 ]
  %125 = load i8, ptr %123, align 1, !tbaa !9
  switch i8 %125, label %126 [
    i8 0, label %133
    i8 -40, label %163
    i8 -39, label %163
    i8 -38, label %163
    i8 -37, label %163
    i8 -36, label %167
    i8 -35, label %167
    i8 -34, label %167
    i8 -33, label %167
    i8 -1, label %129
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds i8, ptr %124, i64 3
  %128 = load i8, ptr %127, align 1, !tbaa !9
  br label %139

129:                                              ; preds = %121
  %130 = getelementptr inbounds i8, ptr %124, i64 3
  %131 = load i8, ptr %130, align 1, !tbaa !9
  %132 = icmp ugt i8 %131, -3
  br i1 %132, label %167, label %139

133:                                              ; preds = %121
  %134 = getelementptr inbounds i8, ptr %124, i64 3
  %135 = load i8, ptr %134, align 1, !tbaa !9
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !9
  switch i8 %138, label %167 [
    i8 29, label %139
    i8 22, label %156
    i8 24, label %156
    i8 25, label %156
    i8 26, label %156
    i8 27, label %156
    i8 18, label %165
    i8 6, label %161
    i8 7, label %163
  ]

139:                                              ; preds = %126, %129, %133
  %140 = phi i8 [ %128, %126 ], [ %131, %129 ], [ %135, %133 ]
  %141 = zext i8 %125 to i64
  %142 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 3
  %146 = zext i8 %140 to i32
  %147 = lshr i32 %146, 5
  %148 = or disjoint i32 %147, %145
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !14
  %152 = and i32 %146, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %139, %133, %133, %133, %133, %133
  %157 = getelementptr inbounds i8, ptr %123, i64 2
  %158 = ptrtoint ptr %157 to i64
  %159 = sub i64 %5, %158
  %160 = icmp sgt i64 %159, 1
  br i1 %160, label %121, label %170, !llvm.loop !149

161:                                              ; preds = %133
  %162 = icmp eq i64 %122, 2
  br i1 %162, label %170, label %167

163:                                              ; preds = %121, %121, %121, %121, %133
  %164 = icmp ult i64 %122, 4
  br i1 %164, label %170, label %167

165:                                              ; preds = %133
  %166 = getelementptr inbounds i8, ptr %124, i64 4
  br label %167

167:                                              ; preds = %110, %113, %81, %86, %133, %129, %121, %121, %121, %121, %139, %163, %161, %15, %11, %9, %9, %9, %9, %53, %65, %68, %92, %99, %119, %46, %44, %21, %165
  %168 = phi ptr [ %166, %165 ], [ %1, %21 ], [ %1, %44 ], [ %1, %46 ], [ %120, %119 ], [ %93, %92 ], [ %61, %65 ], [ %61, %68 ], [ %49, %53 ], [ %49, %99 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %9 ], [ %1, %11 ], [ %1, %15 ], [ %123, %161 ], [ %123, %163 ], [ %123, %139 ], [ %123, %121 ], [ %123, %121 ], [ %123, %121 ], [ %123, %121 ], [ %123, %129 ], [ %123, %133 ], [ %82, %86 ], [ %82, %81 ], [ %106, %113 ], [ %106, %110 ]
  %169 = phi i32 [ 9, %165 ], [ 0, %21 ], [ 0, %44 ], [ 0, %46 ], [ 10, %119 ], [ 10, %92 ], [ 0, %65 ], [ 0, %68 ], [ 0, %53 ], [ 0, %99 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %11 ], [ 0, %15 ], [ 0, %161 ], [ 0, %163 ], [ 0, %139 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %121 ], [ 0, %129 ], [ 0, %133 ], [ 0, %86 ], [ 0, %81 ], [ 0, %113 ], [ 0, %110 ]
  store ptr %168, ptr %3, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %104, %94, %156, %167, %39, %76, %60, %48, %163, %161, %46, %44, %4
  %171 = phi i32 [ -1, %4 ], [ -2, %44 ], [ -2, %46 ], [ -2, %161 ], [ -2, %163 ], [ -1, %48 ], [ -1, %60 ], [ -1, %76 ], [ -1, %39 ], [ %169, %167 ], [ -1, %156 ], [ -1, %94 ], [ -1, %104 ]
  ret i32 %171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @big2_scanCdataSection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 11
  br i1 %7, label %8, label %61

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i64 12
  %10 = load i8, ptr %0, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 67
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %0, i64 2
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp eq i8 %22, 68
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 5
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = icmp eq i8 %30, 65
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 6
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %0, i64 7
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = icmp eq i8 %38, 84
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %0, i64 8
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 9
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 65
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 10
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %0, i64 11
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = icmp eq i8 %54, 91
  %56 = select i1 %55, ptr %9, ptr %49
  %57 = select i1 %55, i32 8, i32 0
  br label %58

58:                                               ; preds = %52, %8, %12, %16, %20, %24, %28, %32, %36, %40, %44, %48
  %59 = phi ptr [ %0, %12 ], [ %0, %8 ], [ %17, %16 ], [ %17, %20 ], [ %25, %24 ], [ %25, %28 ], [ %33, %32 ], [ %33, %36 ], [ %41, %40 ], [ %41, %44 ], [ %49, %48 ], [ %56, %52 ]
  %60 = phi i32 [ 0, %12 ], [ 0, %8 ], [ 0, %16 ], [ 0, %20 ], [ 0, %24 ], [ 0, %28 ], [ 0, %32 ], [ 0, %36 ], [ 0, %40 ], [ 0, %44 ], [ 0, %48 ], [ %57, %52 ]
  store ptr %59, ptr %2, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %58, %3
  %62 = phi i32 [ -1, %3 ], [ %60, %58 ]
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @big2_scanAtts(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !5
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %6, %7
  %9 = icmp sgt i64 %8, 1
  br i1 %9, label %10, label %291

10:                                               ; preds = %4, %282
  %11 = phi i64 [ %286, %282 ], [ %8, %4 ]
  %12 = phi ptr [ %283, %282 ], [ %1, %4 ]
  %13 = phi i32 [ %284, %282 ], [ 0, %4 ]
  %14 = load i8, ptr %12, align 1, !tbaa !9
  switch i8 %14, label %15 [
    i8 0, label %22
    i8 -40, label %49
    i8 -39, label %49
    i8 -38, label %49
    i8 -37, label %49
    i8 -36, label %288
    i8 -35, label %288
    i8 -34, label %288
    i8 -33, label %288
    i8 -1, label %18
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !9
  br label %28

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = icmp ugt i8 %20, -3
  br i1 %21, label %288, label %28

22:                                               ; preds = %10
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !9
  switch i8 %27, label %288 [
    i8 29, label %28
    i8 22, label %45
    i8 24, label %45
    i8 25, label %45
    i8 26, label %45
    i8 27, label %45
    i8 14, label %118
    i8 6, label %47
    i8 7, label %49
    i8 23, label %51
    i8 21, label %96
    i8 9, label %96
    i8 10, label %96
  ]

28:                                               ; preds = %15, %18, %22
  %29 = phi i8 [ %17, %15 ], [ %20, %18 ], [ %24, %22 ]
  %30 = zext i8 %14 to i64
  %31 = getelementptr inbounds [256 x i8], ptr @namePages, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 3
  %35 = zext i8 %29 to i32
  %36 = lshr i32 %35, 5
  %37 = or disjoint i32 %36, %34
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !14
  %41 = and i32 %35, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %288, label %45

45:                                               ; preds = %28, %22, %22, %22, %22, %22
  %46 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %46, ptr %5, align 8, !tbaa !5
  br label %282

47:                                               ; preds = %22
  %48 = icmp eq i64 %11, 2
  br i1 %48, label %291, label %288

49:                                               ; preds = %10, %10, %10, %10, %22
  %50 = icmp ult i64 %11, 4
  br i1 %50, label %291, label %288

51:                                               ; preds = %22
  %52 = icmp eq i32 %13, 0
  br i1 %52, label %53, label %288

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %54, ptr %5, align 8, !tbaa !5
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %6, %55
  %57 = icmp sgt i64 %56, 1
  br i1 %57, label %58, label %291

58:                                               ; preds = %53
  %59 = load i8, ptr %54, align 1, !tbaa !9
  switch i8 %59, label %60 [
    i8 0, label %67
    i8 -40, label %94
    i8 -39, label %94
    i8 -38, label %94
    i8 -37, label %94
    i8 -36, label %288
    i8 -35, label %288
    i8 -34, label %288
    i8 -33, label %288
    i8 -1, label %63
  ]

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, ptr %12, i64 3
  %62 = load i8, ptr %61, align 1, !tbaa !9
  br label %73

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, ptr %12, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = icmp ugt i8 %65, -3
  br i1 %66, label %288, label %73

67:                                               ; preds = %58
  %68 = getelementptr inbounds i8, ptr %12, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !9
  switch i8 %72, label %288 [
    i8 29, label %73
    i8 22, label %90
    i8 24, label %90
    i8 7, label %94
    i8 6, label %92
  ]

73:                                               ; preds = %60, %63, %67
  %74 = phi i8 [ %62, %60 ], [ %65, %63 ], [ %69, %67 ]
  %75 = zext i8 %59 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !9
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 3
  %80 = zext i8 %74 to i32
  %81 = lshr i32 %80, 5
  %82 = or disjoint i32 %81, %79
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !14
  %86 = and i32 %80, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %288, label %90

90:                                               ; preds = %73, %67, %67
  %91 = getelementptr inbounds i8, ptr %12, i64 4
  store ptr %91, ptr %5, align 8, !tbaa !5
  br label %282

92:                                               ; preds = %67
  %93 = icmp eq i64 %56, 2
  br i1 %93, label %291, label %288

94:                                               ; preds = %67, %58, %58, %58, %58
  %95 = icmp ult i64 %56, 4
  br i1 %95, label %291, label %288

96:                                               ; preds = %22, %22, %22
  %97 = getelementptr inbounds i8, ptr %12, i64 2
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 %6, %98
  %100 = icmp sgt i64 %99, 1
  br i1 %100, label %101, label %291

101:                                              ; preds = %96, %112
  %102 = phi ptr [ %113, %112 ], [ %97, %96 ]
  %103 = phi ptr [ %102, %112 ], [ %12, %96 ]
  %104 = load i8, ptr %102, align 1, !tbaa !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %288

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, ptr %103, i64 3
  %108 = load i8, ptr %107, align 1, !tbaa !9
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !9
  switch i8 %111, label %288 [
    i8 14, label %117
    i8 21, label %112
    i8 10, label %112
    i8 9, label %112
  ]

112:                                              ; preds = %106, %106, %106
  %113 = getelementptr inbounds i8, ptr %102, i64 2
  %114 = ptrtoint ptr %113 to i64
  %115 = sub i64 %6, %114
  %116 = icmp sgt i64 %115, 1
  br i1 %116, label %101, label %291

117:                                              ; preds = %106
  store ptr %102, ptr %5, align 8, !tbaa !5
  br label %118

118:                                              ; preds = %22, %117
  %119 = phi ptr [ %102, %117 ], [ %12, %22 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 2
  %121 = ptrtoint ptr %120 to i64
  %122 = sub i64 %6, %121
  %123 = icmp sgt i64 %122, 1
  br i1 %123, label %124, label %291

124:                                              ; preds = %118, %139
  %125 = phi ptr [ %140, %139 ], [ %120, %118 ]
  %126 = phi ptr [ %125, %139 ], [ %119, %118 ]
  %127 = load i8, ptr %125, align 1, !tbaa !9
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %288

129:                                              ; preds = %124
  %130 = getelementptr inbounds i8, ptr %126, i64 3
  %131 = load i8, ptr %130, align 1, !tbaa !9
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !9
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 254
  %137 = icmp eq i32 %136, 12
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  switch i8 %134, label %288 [
    i8 21, label %139
    i8 10, label %139
    i8 9, label %139
  ]

139:                                              ; preds = %138, %138, %138
  %140 = getelementptr inbounds i8, ptr %125, i64 2
  %141 = ptrtoint ptr %140 to i64
  %142 = sub i64 %6, %141
  %143 = icmp sgt i64 %142, 1
  br i1 %143, label %124, label %291

144:                                              ; preds = %129
  %145 = getelementptr inbounds i8, ptr %126, i64 4
  store ptr %145, ptr %5, align 8, !tbaa !5
  %146 = ptrtoint ptr %145 to i64
  %147 = sub i64 %6, %146
  %148 = icmp sgt i64 %147, 1
  br i1 %148, label %149, label %291

149:                                              ; preds = %144, %193
  %150 = phi i64 [ %196, %193 ], [ %147, %144 ]
  %151 = phi ptr [ %194, %193 ], [ %145, %144 ]
  %152 = load i8, ptr %151, align 1, !tbaa !9
  switch i8 %152, label %165 [
    i8 0, label %153
    i8 -40, label %166
    i8 -39, label %166
    i8 -38, label %166
    i8 -37, label %166
    i8 -36, label %160
    i8 -35, label %160
    i8 -34, label %160
    i8 -33, label %160
    i8 -1, label %161
  ]

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %151, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !9
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !9
  %159 = zext i8 %158 to i32
  br label %166

160:                                              ; preds = %149, %149, %149, %149
  br label %166

161:                                              ; preds = %149
  %162 = getelementptr inbounds i8, ptr %151, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !9
  %164 = icmp ugt i8 %163, -3
  br i1 %164, label %166, label %165

165:                                              ; preds = %149, %161
  br label %166

166:                                              ; preds = %149, %149, %149, %149, %165, %161, %160, %153
  %167 = phi i32 [ %159, %153 ], [ 29, %165 ], [ 8, %160 ], [ 0, %161 ], [ 7, %149 ], [ 7, %149 ], [ 7, %149 ], [ 7, %149 ]
  %168 = icmp eq i32 %167, %135
  br i1 %168, label %198, label %169

169:                                              ; preds = %166
  %170 = trunc i32 %167 to i8
  switch i8 %170, label %191 [
    i8 5, label %171
    i8 6, label %173
    i8 7, label %177
    i8 0, label %288
    i8 1, label %288
    i8 8, label %288
    i8 3, label %181
    i8 2, label %288
  ]

171:                                              ; preds = %169
  %172 = getelementptr inbounds i8, ptr %151, i64 2
  store ptr %172, ptr %5, align 8, !tbaa !5
  br label %193

173:                                              ; preds = %169
  %174 = icmp eq i64 %150, 2
  br i1 %174, label %291, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds i8, ptr %151, i64 3
  store ptr %176, ptr %5, align 8, !tbaa !5
  br label %193

177:                                              ; preds = %169
  %178 = icmp ult i64 %150, 4
  br i1 %178, label %291, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds i8, ptr %151, i64 4
  store ptr %180, ptr %5, align 8, !tbaa !5
  br label %193

181:                                              ; preds = %169
  %182 = getelementptr inbounds i8, ptr %151, i64 2
  %183 = call fastcc i32 @big2_scanRef(ptr noundef %0, ptr noundef nonnull %182, ptr noundef %2, ptr noundef nonnull %5), !range !69
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load ptr, ptr %5, align 8, !tbaa !5
  br label %193

187:                                              ; preds = %181
  %188 = icmp eq i32 %183, 0
  br i1 %188, label %189, label %291

189:                                              ; preds = %187
  %190 = load ptr, ptr %5, align 8, !tbaa !5
  br label %288

191:                                              ; preds = %169
  %192 = getelementptr inbounds i8, ptr %151, i64 2
  store ptr %192, ptr %5, align 8, !tbaa !5
  br label %193

193:                                              ; preds = %185, %171, %175, %179, %191
  %194 = phi ptr [ %186, %185 ], [ %172, %171 ], [ %176, %175 ], [ %180, %179 ], [ %192, %191 ]
  %195 = ptrtoint ptr %194 to i64
  %196 = sub i64 %6, %195
  %197 = icmp sgt i64 %196, 1
  br i1 %197, label %149, label %291

198:                                              ; preds = %166
  %199 = getelementptr inbounds i8, ptr %151, i64 2
  store ptr %199, ptr %5, align 8, !tbaa !5
  %200 = ptrtoint ptr %199 to i64
  %201 = sub i64 %6, %200
  %202 = icmp sgt i64 %201, 1
  br i1 %202, label %203, label %291

203:                                              ; preds = %198
  %204 = load i8, ptr %199, align 1, !tbaa !9
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %288

206:                                              ; preds = %203
  %207 = getelementptr inbounds i8, ptr %151, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !9
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !9
  switch i8 %211, label %288 [
    i8 21, label %212
    i8 9, label %212
    i8 10, label %212
    i8 17, label %264
    i8 11, label %261
  ]

212:                                              ; preds = %206, %206, %206
  %213 = getelementptr inbounds i8, ptr %151, i64 4
  %214 = ptrtoint ptr %213 to i64
  %215 = sub i64 %6, %214
  %216 = icmp sgt i64 %215, 1
  br i1 %216, label %217, label %291

217:                                              ; preds = %212, %256
  %218 = phi i64 [ %259, %256 ], [ %215, %212 ]
  %219 = phi ptr [ %257, %256 ], [ %213, %212 ]
  %220 = phi ptr [ %219, %256 ], [ %199, %212 ]
  %221 = load i8, ptr %219, align 1, !tbaa !9
  switch i8 %221, label %232 [
    i8 0, label %226
    i8 -40, label %254
    i8 -39, label %254
    i8 -38, label %254
    i8 -37, label %254
    i8 -36, label %288
    i8 -35, label %288
    i8 -34, label %288
    i8 -33, label %288
    i8 -1, label %222
  ]

222:                                              ; preds = %217
  store ptr %219, ptr %5, align 8, !tbaa !5
  %223 = getelementptr inbounds i8, ptr %220, i64 3
  %224 = load i8, ptr %223, align 1, !tbaa !9
  %225 = icmp ugt i8 %224, -3
  br i1 %225, label %288, label %235

226:                                              ; preds = %217
  %227 = getelementptr inbounds i8, ptr %220, i64 3
  %228 = load i8, ptr %227, align 1, !tbaa !9
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds %struct.normal_encoding, ptr %0, i64 0, i32 1, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !9
  switch i8 %231, label %288 [
    i8 29, label %232
    i8 22, label %280
    i8 24, label %280
    i8 17, label %264
    i8 6, label %252
    i8 7, label %254
    i8 21, label %256
    i8 9, label %256
    i8 10, label %256
    i8 11, label %261
  ]

232:                                              ; preds = %226, %217
  store ptr %219, ptr %5, align 8, !tbaa !5
  %233 = getelementptr inbounds i8, ptr %220, i64 3
  %234 = load i8, ptr %233, align 1, !tbaa !9
  br label %235

235:                                              ; preds = %232, %222
  %236 = phi i8 [ %234, %232 ], [ %224, %222 ]
  %237 = zext i8 %221 to i64
  %238 = getelementptr inbounds [256 x i8], ptr @nmstrtPages, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !9
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %240, 3
  %242 = zext i8 %236 to i32
  %243 = lshr i32 %242, 5
  %244 = or disjoint i32 %243, %241
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds [320 x i32], ptr @namingBitmap, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !14
  %248 = and i32 %242, 31
  %249 = shl nuw i32 1, %248
  %250 = and i32 %249, %247
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %288, label %280

252:                                              ; preds = %226
  %253 = icmp eq i64 %218, 2
  br i1 %253, label %291, label %288

254:                                              ; preds = %217, %217, %217, %217, %226
  %255 = icmp ult i64 %218, 4
  br i1 %255, label %291, label %288

256:                                              ; preds = %226, %226, %226
  %257 = getelementptr inbounds i8, ptr %219, i64 2
  %258 = ptrtoint ptr %257 to i64
  %259 = sub i64 %6, %258
  %260 = icmp sgt i64 %259, 1
  br i1 %260, label %217, label %291

261:                                              ; preds = %206, %226
  %262 = phi ptr [ %219, %226 ], [ %199, %206 ]
  %263 = getelementptr inbounds i8, ptr %262, i64 2
  br label %288

264:                                              ; preds = %206, %226
  %265 = phi ptr [ %219, %226 ], [ %199, %206 ]
  %266 = getelementptr inbounds i8, ptr %265, i64 2
  store ptr %266, ptr %5, align 8, !tbaa !5
  %267 = ptrtoint ptr %266 to i64
  %268 = sub i64 %6, %267
  %269 = icmp sgt i64 %268, 1
  br i1 %269, label %270, label %291

270:                                              ; preds = %264
  %271 = load i8, ptr %266, align 1, !tbaa !9
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %270
  %274 = getelementptr inbounds i8, ptr %265, i64 3
  %275 = load i8, ptr %274, align 1, !tbaa !9
  %276 = icmp eq i8 %275, 62
  %277 = getelementptr inbounds i8, ptr %265, i64 4
  %278 = select i1 %276, ptr %277, ptr %266
  %279 = select i1 %276, i32 3, i32 0
  br label %288

280:                                              ; preds = %226, %226, %235
  %281 = getelementptr inbounds i8, ptr %220, i64 4
  store ptr %281, ptr %5, align 8, !tbaa !5
  br label %282

282:                                              ; preds = %280, %90, %45
  %283 = phi ptr [ %281, %280 ], [ %91, %90 ], [ %46, %45 ]
  %284 = phi i32 [ 0, %280 ], [ 1, %90 ], [ %13, %45 ]
  %285 = ptrtoint ptr %283 to i64
  %286 = sub i64 %6, %285
  %287 = icmp sgt i64 %286, 1
  br i1 %287, label %10, label %291, !llvm.loop !150

288:                                              ; preds = %22, %18, %10, %10, %10, %10, %222, %235, %206, %203, %67, %63, %58, %58, %58, %58, %73, %51, %28, %101, %106, %138, %124, %169, %169, %169, %169, %226, %217, %217, %217, %217, %273, %270, %254, %252, %94, %92, %49, %47, %261, %189
  %289 = phi ptr [ %190, %189 ], [ %263, %261 ], [ %12, %47 ], [ %12, %49 ], [ %54, %92 ], [ %54, %94 ], [ %219, %252 ], [ %219, %254 ], [ %266, %270 ], [ %278, %273 ], [ %219, %217 ], [ %219, %217 ], [ %219, %217 ], [ %219, %217 ], [ %219, %226 ], [ %151, %169 ], [ %151, %169 ], [ %151, %169 ], [ %151, %169 ], [ %125, %124 ], [ %125, %138 ], [ %102, %106 ], [ %102, %101 ], [ %12, %28 ], [ %12, %51 ], [ %54, %73 ], [ %54, %58 ], [ %54, %58 ], [ %54, %58 ], [ %54, %58 ], [ %54, %63 ], [ %54, %67 ], [ %199, %203 ], [ %199, %206 ], [ %219, %235 ], [ %219, %222 ], [ %12, %10 ], [ %12, %10 ], [ %12, %10 ], [ %12, %10 ], [ %12, %18 ], [ %12, %22 ]
  %290 = phi i32 [ 0, %189 ], [ 1, %261 ], [ 0, %47 ], [ 0, %49 ], [ 0, %92 ], [ 0, %94 ], [ 0, %252 ], [ 0, %254 ], [ 0, %270 ], [ %279, %273 ], [ 0, %217 ], [ 0, %217 ], [ 0, %217 ], [ 0, %217 ], [ 0, %226 ], [ 0, %169 ], [ 0, %169 ], [ 0, %169 ], [ 0, %169 ], [ 0, %124 ], [ 0, %138 ], [ 0, %106 ], [ 0, %101 ], [ 0, %28 ], [ 0, %51 ], [ 0, %73 ], [ 0, %58 ], [ 0, %58 ], [ 0, %58 ], [ 0, %58 ], [ 0, %63 ], [ 0, %67 ], [ 0, %203 ], [ 0, %206 ], [ 0, %235 ], [ 0, %222 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ 0, %18 ], [ 0, %22 ]
  store ptr %289, ptr %3, align 8, !tbaa !5
  br label %291

291:                                              ; preds = %53, %282, %198, %144, %96, %118, %212, %112, %139, %193, %173, %177, %256, %288, %4, %187, %264, %254, %252, %94, %92, %49, %47
  %292 = phi i32 [ -2, %47 ], [ -2, %49 ], [ -2, %92 ], [ -2, %94 ], [ -1, %264 ], [ -2, %254 ], [ -2, %252 ], [ %183, %187 ], [ -1, %4 ], [ %290, %288 ], [ -1, %256 ], [ -1, %193 ], [ -2, %173 ], [ -2, %177 ], [ -1, %139 ], [ -1, %112 ], [ -1, %212 ], [ -1, %118 ], [ -1, %96 ], [ -1, %144 ], [ -1, %198 ], [ -1, %282 ], [ -1, %53 ]
  ret i32 %292
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @parsePseudoAttribute(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #6 {
  %8 = alloca ptr, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1 x i8], align 1
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca [1 x i8], align 1
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [1 x i8], align 1
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca [1 x i8], align 1
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca [1 x i8], align 1
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca [1 x i8], align 1
  %28 = alloca ptr, align 8
  %29 = icmp eq ptr %1, %2
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store ptr null, ptr %3, align 8, !tbaa !5
  br label %170

31:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26)
  store ptr %1, ptr %26, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #14
  store ptr %27, ptr %28, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  %35 = call i32 %33(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %2, ptr noundef nonnull %28, ptr noundef nonnull %34) #14
  %36 = load ptr, ptr %28, align 8, !tbaa !5
  %37 = icmp eq ptr %36, %27
  %38 = load i8, ptr %27, align 1
  %39 = sext i8 %38 to i32
  %40 = select i1 %37, i32 -1, i32 %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26)
  switch i32 %40, label %44 [
    i32 32, label %41
    i32 13, label %41
    i32 10, label %41
    i32 9, label %41
  ]

41:                                               ; preds = %31, %31, %31, %31
  %42 = getelementptr inbounds %struct.encoding, ptr %0, i64 0, i32 12
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  br label %45

44:                                               ; preds = %31
  store ptr %1, ptr %6, align 8, !tbaa !5
  br label %170

45:                                               ; preds = %57, %41
  %46 = phi ptr [ %1, %41 ], [ %49, %57 ]
  %47 = load i32, ptr %42, align 8, !tbaa !45
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23)
  store ptr %49, ptr %23, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #14
  store ptr %24, ptr %25, align 8, !tbaa !5
  %50 = load ptr, ptr %32, align 8, !tbaa !48
  %51 = call i32 %50(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %43) #14
  %52 = load ptr, ptr %25, align 8, !tbaa !5
  %53 = icmp eq ptr %52, %24
  %54 = load i8, ptr %24, align 1
  %55 = sext i8 %54 to i32
  %56 = select i1 %53, i32 -1, i32 %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23)
  switch i32 %56, label %58 [
    i32 32, label %57
    i32 13, label %57
    i32 10, label %57
    i32 9, label %57
  ]

57:                                               ; preds = %45, %45, %45, %45
  br label %45, !llvm.loop !151

58:                                               ; preds = %45
  %59 = icmp eq ptr %49, %2
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  store ptr null, ptr %3, align 8, !tbaa !5
  br label %170

61:                                               ; preds = %58
  store ptr %49, ptr %3, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, ptr %21, i64 1
  br label %63

63:                                               ; preds = %90, %61
  %64 = phi ptr [ %49, %61 ], [ %93, %90 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20)
  store ptr %64, ptr %20, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  store ptr %21, ptr %22, align 8, !tbaa !5
  %65 = load ptr, ptr %32, align 8, !tbaa !48
  %66 = call i32 %65(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %2, ptr noundef nonnull %22, ptr noundef nonnull %62) #14
  %67 = load ptr, ptr %22, align 8, !tbaa !5
  %68 = icmp eq ptr %67, %21
  %69 = load i8, ptr %21, align 1
  %70 = sext i8 %69 to i32
  %71 = select i1 %68, i32 -1, i32 %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20)
  switch i32 %71, label %90 [
    i32 -1, label %72
    i32 61, label %73
    i32 32, label %74
    i32 13, label %74
    i32 10, label %74
    i32 9, label %74
  ]

72:                                               ; preds = %63
  store ptr %64, ptr %6, align 8, !tbaa !5
  br label %170

73:                                               ; preds = %63
  store ptr %64, ptr %4, align 8, !tbaa !5
  br label %94

74:                                               ; preds = %63, %63, %63, %63
  store ptr %64, ptr %4, align 8, !tbaa !5
  %75 = getelementptr inbounds i8, ptr %18, i64 1
  br label %76

76:                                               ; preds = %88, %74
  %77 = phi ptr [ %64, %74 ], [ %80, %88 ]
  %78 = load i32, ptr %42, align 8, !tbaa !45
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17)
  store ptr %80, ptr %17, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  store ptr %18, ptr %19, align 8, !tbaa !5
  %81 = load ptr, ptr %32, align 8, !tbaa !48
  %82 = call i32 %81(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %19, ptr noundef nonnull %75) #14
  %83 = load ptr, ptr %19, align 8, !tbaa !5
  %84 = icmp eq ptr %83, %18
  %85 = load i8, ptr %18, align 1
  %86 = sext i8 %85 to i32
  %87 = select i1 %84, i32 -1, i32 %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17)
  switch i32 %87, label %89 [
    i32 32, label %88
    i32 13, label %88
    i32 10, label %88
    i32 9, label %88
    i32 61, label %94
  ]

88:                                               ; preds = %76, %76, %76, %76
  br label %76, !llvm.loop !152

89:                                               ; preds = %76
  store ptr %80, ptr %6, align 8, !tbaa !5
  br label %170

90:                                               ; preds = %63
  %91 = load i32, ptr %42, align 8, !tbaa !45
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %64, i64 %92
  br label %63

94:                                               ; preds = %76, %73
  %95 = phi ptr [ %64, %73 ], [ %80, %76 ]
  %96 = load ptr, ptr %3, align 8, !tbaa !5
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store ptr %95, ptr %6, align 8, !tbaa !5
  br label %170

99:                                               ; preds = %94
  %100 = load i32, ptr %42, align 8, !tbaa !45
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %95, i64 %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14)
  store ptr %102, ptr %14, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  store ptr %15, ptr %16, align 8, !tbaa !5
  %103 = load ptr, ptr %32, align 8, !tbaa !48
  %104 = getelementptr inbounds i8, ptr %15, i64 1
  %105 = call i32 %103(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %2, ptr noundef nonnull %16, ptr noundef nonnull %104) #14
  %106 = load ptr, ptr %16, align 8, !tbaa !5
  %107 = icmp eq ptr %106, %15
  %108 = load i8, ptr %15, align 1
  %109 = sext i8 %108 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14)
  %110 = getelementptr inbounds i8, ptr %12, i64 1
  %111 = select i1 %107, i32 -1, i32 %109
  br label %112

112:                                              ; preds = %115, %99
  %113 = phi ptr [ %102, %99 ], [ %118, %115 ]
  %114 = phi i32 [ %111, %99 ], [ %125, %115 ]
  switch i32 %114, label %126 [
    i32 32, label %115
    i32 13, label %115
    i32 10, label %115
    i32 9, label %115
    i32 39, label %127
    i32 34, label %127
  ]

115:                                              ; preds = %112, %112, %112, %112
  %116 = load i32, ptr %42, align 8, !tbaa !45
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %113, i64 %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11)
  store ptr %118, ptr %11, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  store ptr %12, ptr %13, align 8, !tbaa !5
  %119 = load ptr, ptr %32, align 8, !tbaa !48
  %120 = call i32 %119(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %110) #14
  %121 = load ptr, ptr %13, align 8, !tbaa !5
  %122 = icmp eq ptr %121, %12
  %123 = load i8, ptr %12, align 1
  %124 = sext i8 %123 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11)
  %125 = select i1 %122, i32 -1, i32 %124
  br label %112

126:                                              ; preds = %112
  store ptr %113, ptr %6, align 8, !tbaa !5
  br label %170

127:                                              ; preds = %112, %112
  %128 = load i32, ptr %42, align 8, !tbaa !45
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %113, i64 %129
  store ptr %130, ptr %5, align 8, !tbaa !5
  %131 = getelementptr inbounds i8, ptr %9, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %130, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr %9, ptr %10, align 8, !tbaa !5
  %132 = load ptr, ptr %32, align 8, !tbaa !48
  %133 = call i32 %132(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %131) #14
  %134 = load ptr, ptr %10, align 8, !tbaa !5
  %135 = icmp eq ptr %134, %9
  %136 = load i8, ptr %9, align 1
  %137 = sext i8 %136 to i32
  %138 = select i1 %135, i32 -1, i32 %137
  %139 = freeze i32 %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %140 = icmp eq i32 %139, %114
  br i1 %140, label %165, label %141

141:                                              ; preds = %127, %152
  %142 = phi i32 [ %163, %152 ], [ %139, %127 ]
  %143 = phi ptr [ %155, %152 ], [ %130, %127 ]
  %144 = and i32 %142, -33
  %145 = add i32 %144, -91
  %146 = icmp ult i32 %145, -26
  %147 = add i32 %142, -58
  %148 = icmp ult i32 %147, -10
  %149 = and i1 %148, %146
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  switch i32 %142, label %151 [
    i32 95, label %152
    i32 46, label %152
    i32 45, label %152
  ]

151:                                              ; preds = %150
  store ptr %143, ptr %6, align 8, !tbaa !5
  br label %170

152:                                              ; preds = %150, %150, %150, %141
  %153 = load i32, ptr %42, align 8, !tbaa !45
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %143, i64 %154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %155, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr %9, ptr %10, align 8, !tbaa !5
  %156 = load ptr, ptr %32, align 8, !tbaa !48
  %157 = call i32 %156(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %131) #14
  %158 = load ptr, ptr %10, align 8, !tbaa !5
  %159 = icmp eq ptr %158, %9
  %160 = load i8, ptr %9, align 1
  %161 = sext i8 %160 to i32
  %162 = select i1 %159, i32 -1, i32 %161
  %163 = freeze i32 %162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %164 = icmp eq i32 %163, %114
  br i1 %164, label %165, label %141

165:                                              ; preds = %152, %127
  %166 = phi ptr [ %130, %127 ], [ %155, %152 ]
  %167 = load i32, ptr %42, align 8, !tbaa !45
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %166, i64 %168
  store ptr %169, ptr %6, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %165, %151, %126, %98, %89, %72, %60, %44, %30
  %171 = phi i32 [ 1, %30 ], [ 1, %60 ], [ 0, %72 ], [ 0, %98 ], [ 0, %126 ], [ 1, %165 ], [ 0, %151 ], [ 0, %89 ], [ 0, %44 ]
  ret i32 %171
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #13

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = !{!19, !6, i64 472}
!19 = !{!"unknown_encoding", !20, i64 0, !6, i64 464, !6, i64 472, !7, i64 480, !7, i64 992}
!20 = !{!"normal_encoding", !21, i64 0, !7, i64 136, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456}
!21 = !{!"encoding", !7, i64 0, !7, i64 32, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !15, i64 128, !7, i64 132, !7, i64 133}
!22 = !{!19, !6, i64 464}
!23 = !{!19, !6, i64 392}
!24 = !{!19, !6, i64 400}
!25 = !{!19, !6, i64 408}
!26 = !{!19, !6, i64 416}
!27 = !{!19, !6, i64 424}
!28 = !{!19, !6, i64 432}
!29 = !{!19, !6, i64 440}
!30 = !{!19, !6, i64 448}
!31 = !{!19, !6, i64 456}
!32 = !{!19, !6, i64 112}
!33 = !{!19, !6, i64 120}
!34 = distinct !{!34, !11}
!35 = !{i32 -2147483648, i32 7}
!36 = !{!37, !7, i64 133}
!37 = !{!"", !21, i64 0, !6, i64 136}
!38 = !{!37, !6, i64 96}
!39 = !{!37, !6, i64 136}
!40 = !{!41, !42, i64 8}
!41 = !{!"position", !42, i64 0, !42, i64 8}
!42 = !{!"long", !7, i64 0}
!43 = !{!41, !42, i64 0}
!44 = distinct !{!44, !11}
!45 = !{!21, !15, i64 128}
!46 = !{i32 0, i32 2}
!47 = !{!21, !6, i64 48}
!48 = !{!21, !6, i64 112}
!49 = !{ptr @findEncoding, ptr @findEncodingNS}
!50 = distinct !{!50, !11}
!51 = !{i32 -2, i32 34}
!52 = !{i32 -2, i32 29}
!53 = !{i32 -20, i32 21}
!54 = !{!20, !6, i64 440}
!55 = !{!20, !6, i64 416}
!56 = !{!20, !6, i64 392}
!57 = !{!20, !6, i64 448}
!58 = !{!20, !6, i64 424}
!59 = !{!20, !6, i64 400}
!60 = !{!20, !6, i64 456}
!61 = !{!20, !6, i64 432}
!62 = !{!20, !6, i64 408}
!63 = distinct !{!63, !11}
!64 = !{i32 -2, i32 14}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = !{i32 -2, i32 11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = !{!77, !6, i64 0}
!77 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24}
!78 = !{!77, !7, i64 24}
!79 = !{!77, !6, i64 8}
!80 = !{!77, !6, i64 16}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !11}
!150 = distinct !{!150, !11}
!151 = distinct !{!151, !11}
!152 = distinct !{!152, !11}
