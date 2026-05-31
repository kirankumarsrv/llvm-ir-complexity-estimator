; ModuleID = 'corpus_src/stb/stb_vorbis.c'
source_filename = "corpus_src/stb/stb_vorbis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stb_vorbis = type { i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i8, i32, %struct.ProbedPage, %struct.ProbedPage, %struct.stb_vorbis_alloc, i32, i32, i32, i32, [2 x i32], i32, i32, i32, ptr, i32, [64 x i16], ptr, i32, [64 x i16], ptr, i32, ptr, i32, [64 x %struct.Mode], i32, [16 x ptr], [16 x ptr], [16 x ptr], i32, [16 x ptr], i32, i32, [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, [255 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.CRCscan], i32, i32 }
%struct.ProbedPage = type { i32, i32, i32 }
%struct.stb_vorbis_alloc = type { ptr, i32 }
%struct.Mode = type { i8, i8, i16, i16 }
%struct.CRCscan = type { i32, i32, i32, i32, i32 }
%struct.Residue = type { i32, i32, i32, i8, i8, ptr, ptr }
%struct.Codebook = type { i32, i32, ptr, float, float, i8, i8, i8, i8, i32, ptr, ptr, [1024 x i16], ptr, ptr, i32 }
%struct.Mapping = type { i16, ptr, i8, [15 x i8], [15 x i8] }
%struct.stb_vorbis_info = type { i32, i32, i32, i32, i32, i32 }
%struct.stb_vorbis_comment = type { ptr, i32, ptr }
%struct.MappingChannel = type { i8, i8, i8 }
%union.Floor = type { %struct.Floor1 }
%struct.Floor1 = type { i8, [32 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x [8 x i16]], [250 x i16], [250 x i8], [250 x [2 x i8]], i8, i8, i32 }
%struct.stbv__floor_ordering = type { i16, i16 }
%struct.Floor0 = type { i8, i16, i16, i8, i8, i8, [16 x i8] }

@.str = private unnamed_addr constant [21 x i8] c"f->current_loc_valid\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"corpus_src/stb/stb_vorbis.c\00", align 1
@__PRETTY_FUNCTION__.stb_vorbis_seek_frame = private unnamed_addr constant [54 x i8] c"int stb_vorbis_seek_frame(stb_vorbis *, unsigned int)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"f->current_loc <= sample_number\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"sample_number > frame_start\00", align 1
@__PRETTY_FUNCTION__.stb_vorbis_seek = private unnamed_addr constant [48 x i8] c"int stb_vorbis_seek(stb_vorbis *, unsigned int)\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"f->channel_buffer_start + (int) (sample_number-frame_start) <= f->channel_buffer_end\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@ogg_page_header = internal global [4 x i8] c"OggS", align 4
@crc_table = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [56 x i8] c"f->alloc.alloc_buffer_length_in_bytes == f->temp_offset\00", align 1
@__PRETTY_FUNCTION__.vorbis_decode_initial = private unnamed_addr constant [69 x i8] c"int vorbis_decode_initial(vorb *, int *, int *, int *, int *, int *)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"f->valid_bits >= n\00", align 1
@__PRETTY_FUNCTION__.get_bits = private unnamed_addr constant [29 x i8] c"uint32 get_bits(vorb *, int)\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"f->bytes_in_seg == 0\00", align 1
@__PRETTY_FUNCTION__.next_segment = private unnamed_addr constant [25 x i8] c"int next_segment(vorb *)\00", align 1
@ilog.log2_4 = internal unnamed_addr constant [16 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04", align 16
@vorbis_decode_packet_rest.range_list = internal unnamed_addr constant [4 x i32] [i32 256, i32 128, i32 86, i32 64], align 16
@__PRETTY_FUNCTION__.vorbis_decode_packet_rest = private unnamed_addr constant [80 x i8] c"int vorbis_decode_packet_rest(vorb *, int *, Mode *, int, int, int, int, int *)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"!c->sparse\00", align 1
@__PRETTY_FUNCTION__.codebook_decode_scalar_raw = private unnamed_addr constant [51 x i8] c"int codebook_decode_scalar_raw(vorb *, Codebook *)\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"!c->sparse || z < c->sorted_entries\00", align 1
@__PRETTY_FUNCTION__.codebook_decode_deinterleave_repeat = private unnamed_addr constant [99 x i8] c"int codebook_decode_deinterleave_repeat(vorb *, Codebook *, float **, int, int *, int *, int, int)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"z < c->sorted_entries\00", align 1
@__PRETTY_FUNCTION__.codebook_decode_start = private unnamed_addr constant [46 x i8] c"int codebook_decode_start(vorb *, Codebook *)\00", align 1
@inverse_db_table = internal unnamed_addr constant [256 x float] [float 0x3E7C9687C0000000, float 0x3E7E722120000000, float 0x3E80365160000000, float 0x3E81440780000000, float 0x3E82634460000000, float 0x3E83952C00000000, float 0x3E84DAF4E0000000, float 0x3E8635E960000000, float 0x3E87A76A00000000, float 0x3E8930EE00000000, float 0x3E8AD40460000000, float 0x3E8C925700000000, float 0x3E8E6DAAA0000000, float 0x3E9033F100000000, float 0x3E91417F80000000, float 0x3E92609260000000, float 0x3E93924D20000000, float 0x3E94D7E640000000, float 0x3E9632A7E0000000, float 0x3E97A3F260000000, float 0x3E992D3C80000000, float 0x3E9AD015A0000000, float 0x3E9C8E26C0000000, float 0x3E9E6934C0000000, float 0x3EA0319100000000, float 0x3EA13EF800000000, float 0x3EA25DE0C0000000, float 0x3EA38F6EC0000000, float 0x3EA4D4D800000000, float 0x3EA62F66E0000000, float 0x3EA7A07B40000000, float 0x3EA9298BC0000000, float 0x3EAACC2760000000, float 0x3EAC89F720000000, float 0x3EAE64BF80000000, float 0x3EB02F3140000000, float 0x3EB13C70C0000000, float 0x3EB25B2F80000000, float 0x3EB38C90A0000000, float 0x3EB4D1CA40000000, float 0x3EB62C2660000000, float 0x3EB79D04A0000000, float 0x3EB925DB80000000, float 0x3EBAC839C0000000, float 0x3EBC85C820000000, float 0x3EBE604AE0000000, float 0x3EC02CD1E0000000, float 0x3EC139E9E0000000, float 0x3EC2587EA0000000, float 0x3EC389B300000000, float 0x3EC4CEBD00000000, float 0x3EC628E640000000, float 0x3EC7998E80000000, float 0x3EC9222BC0000000, float 0x3ECAC44CA0000000, float 0x3ECC8199C0000000, float 0x3ECE5BD700000000, float 0x3ED02A72E0000000, float 0x3ED1376380000000, float 0x3ED255CE40000000, float 0x3ED386D5E0000000, float 0x3ED4CBB020000000, float 0x3ED625A6A0000000, float 0x3ED79618E0000000, float 0x3ED91E7C80000000, float 0x3EDAC06020000000, float 0x3EDC7D6C00000000, float 0x3EDE5763C0000000, float 0x3EE0281440000000, float 0x3EE134DD60000000, float 0x3EE2531E20000000, float 0x3EE383F920000000, float 0x3EE4C8A3C0000000, float 0x3EE62267A0000000, float 0x3EE792A3C0000000, float 0x3EE91ACDE0000000, float 0x3EEABC7440000000, float 0x3EEC793EE0000000, float 0x3EEE52F120000000, float 0x3EF025B5E0000000, float 0x3EF13257C0000000, float 0x3EF2506E80000000, float 0x3EF3811CC0000000, float 0x3EF4C597C0000000, float 0x3EF61F28E0000000, float 0x3EF78F2F20000000, float 0x3EF9171FC0000000, float 0x3EFAB888E0000000, float 0x3EFC751240000000, float 0x3EFE4E7F00000000, float 0x3F00235800000000, float 0x3F012FD260000000, float 0x3F024DBF20000000, float 0x3F037E40C0000000, float 0x3F04C28C40000000, float 0x3F061BEAC0000000, float 0x3F078BBB00000000, float 0x3F09137240000000, float 0x3F0AB49E40000000, float 0x3F0C70E660000000, float 0x3F0E4A0DC0000000, float 0x3F1020FA60000000, float 0x3F112D4D60000000, float 0x3F124B1040000000, float 0x3F137B6540000000, float 0x3F14BF8120000000, float 0x3F1618AD00000000, float 0x3F17884760000000, float 0x3F190FC520000000, float 0x3F1AB0B400000000, float 0x3F1C6CBB20000000, float 0x3F1E459D00000000, float 0x3F201E9D20000000, float 0x3F212AC8C0000000, float 0x3F224861C0000000, float 0x3F23788A20000000, float 0x3F24BC76A0000000, float 0x3F26156FE0000000, float 0x3F2784D440000000, float 0x3F290C18A0000000, float 0x3F2AACCA60000000, float 0x3F2C689060000000, float 0x3F2E412D00000000, float 0x3F301C4020000000, float 0x3F31284480000000, float 0x3F3245B3A0000000, float 0x3F3375AF60000000, float 0x3F34B96C60000000, float 0x3F36123320000000, float 0x3F378161A0000000, float 0x3F39086CC0000000, float 0x3F3AA8E160000000, float 0x3F3C646640000000, float 0x3F3E3CBDA0000000, float 0x3F4019E3A0000000, float 0x3F4125C0A0000000, float 0x3F42430600000000, float 0x3F4372D520000000, float 0x3F44B662A0000000, float 0x3F460EF6E0000000, float 0x3F477DEF80000000, float 0x3F4904C140000000, float 0x3F4AA4F8E0000000, float 0x3F4C603CC0000000, float 0x3F4E384F00000000, float 0x3F50178760000000, float 0x3F51233D20000000, float 0x3F524058C0000000, float 0x3F536FFB60000000, float 0x3F54B35960000000, float 0x3F560BBB00000000, float 0x3F577A7DE0000000, float 0x3F59011660000000, float 0x3F5AA11100000000, float 0x3F5C5C13E0000000, float 0x3F5E33E0E0000000, float 0x3F60152B80000000, float 0x3F6120BA00000000, float 0x3F623DABC0000000, float 0x3F636D21E0000000, float 0x3F64B05080000000, float 0x3F66087FA0000000, float 0x3F67770CE0000000, float 0x3F68FD6C20000000, float 0x3F6A9D29A0000000, float 0x3F6C57EBA0000000, float 0x3F6E2F7380000000, float 0x3F7012CFE0000000, float 0x3F711E3740000000, float 0x3F723AFF20000000, float 0x3F736A48E0000000, float 0x3F74AD4820000000, float 0x3F760544E0000000, float 0x3F77739C40000000, float 0x3F78F9C240000000, float 0x3F7A9942E0000000, float 0x3F7C53C400000000, float 0x3F7E2B06A0000000, float 0x3F801074C0000000, float 0x3F811BB4E0000000, float 0x3F82385300000000, float 0x3F83677040000000, float 0x3F84AA4020000000, float 0x3F86020A80000000, float 0x3F87702C20000000, float 0x3F88F61900000000, float 0x3F8A955CA0000000, float 0x3F8C4F9D00000000, float 0x3F8E269A80000000, float 0x3F900E19E0000000, float 0x3F911932C0000000, float 0x3F9235A740000000, float 0x3F93649800000000, float 0x3F94A738A0000000, float 0x3F95FED0A0000000, float 0x3F976CBCA0000000, float 0x3F98F27040000000, float 0x3F9A917720000000, float 0x3F9C4B7680000000, float 0x3F9E222F20000000, float 0x3FA00BBF60000000, float 0x3FA116B120000000, float 0x3FA232FBE0000000, float 0x3FA361C040000000, float 0x3FA4A431A0000000, float 0x3FA5FB9720000000, float 0x3FA7694DA0000000, float 0x3FA8EEC800000000, float 0x3FAA8D9220000000, float 0x3FAC4750A0000000, float 0x3FAE1DC440000000, float 0x3FB0096540000000, float 0x3FB1142FE0000000, float 0x3FB2305100000000, float 0x3FB35EE900000000, float 0x3FB4A12B00000000, float 0x3FB5F85E40000000, float 0x3FB765DF00000000, float 0x3FB8EB2060000000, float 0x3FBA89ADA0000000, float 0x3FBC432B80000000, float 0x3FBE195A20000000, float 0x3FC0070B60000000, float 0x3FC111AEE0000000, float 0x3FC22DA660000000, float 0x3FC35C1200000000, float 0x3FC49E24E0000000, float 0x3FC5F525C0000000, float 0x3FC76270E0000000, float 0x3FC8E77940000000, float 0x3FCA85C9A0000000, float 0x3FCC3F06E0000000, float 0x3FCE14F080000000, float 0x3FD004B1E0000000, float 0x3FD10F2E60000000, float 0x3FD22AFC40000000, float 0x3FD3593B80000000, float 0x3FD49B1F20000000, float 0x3FD5F1EDA0000000, float 0x3FD75F0360000000, float 0x3FD8E3D2A0000000, float 0x3FDA81E660000000, float 0x3FDC3AE2E0000000, float 0x3FDE1087A0000000, float 0x3FE00258C0000000, float 0x3FE10CAE40000000, float 0x3FE2285260000000, float 0x3FE3566560000000, float 0x3FE49819C0000000, float 0x3FE5EEB620000000, float 0x3FE75B9640000000, float 0x3FE8E02CA0000000, float 0x3FEA7E03A0000000, float 0x3FEC36BF60000000, float 0x3FEE0C1F60000000, float 1.000000e+00], align 16
@.str.14 = private unnamed_addr constant [13 x i8] c"(n & 3) == 0\00", align 1
@__PRETTY_FUNCTION__.imdct_step3_iter0_loop = private unnamed_addr constant [61 x i8] c"void imdct_step3_iter0_loop(int, float *, int, int, float *)\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"f->temp_offset == f->alloc.alloc_buffer_length_in_bytes\00", align 1
@__PRETTY_FUNCTION__.start_decoder = private unnamed_addr constant [26 x i8] c"int start_decoder(vorb *)\00", align 1
@vorbis_validate.vorbis = internal global [6 x i8] c"vorbis", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"c->sorted_entries == 0\00", align 1
@__PRETTY_FUNCTION__.compute_codewords = private unnamed_addr constant [58 x i8] c"int compute_codewords(Codebook *, uint8 *, int, uint32 *)\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"len[k] < 32\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"z < 32\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"available[y] == 0\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"k == c->sorted_entries\00", align 1
@__PRETTY_FUNCTION__.compute_sorted_huffman = private unnamed_addr constant [59 x i8] c"void compute_sorted_huffman(Codebook *, uint8 *, uint32 *)\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"c->sorted_codewords[x] == code\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"len != NO_CODE\00", align 1
@__PRETTY_FUNCTION__.include_in_sort = private unnamed_addr constant [39 x i8] c"int include_in_sort(Codebook *, uint8)\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"right.last_decoded_sample != ~0U\00", align 1
@__PRETTY_FUNCTION__.seek_to_sample_coarse = private unnamed_addr constant [48 x i8] c"int seek_to_sample_coarse(stb_vorbis *, uint32)\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"left.page_end < right.page_start\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"mid.page_start < right.page_start\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"end_pos >= 0\00", align 1
@convert_samples_short.channel_selector = internal unnamed_addr constant [3 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 4]], align 16
@channel_position = internal unnamed_addr constant [7 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\07\00\00\00\00\00", [6 x i8] c"\03\05\00\00\00\00", [6 x i8] c"\03\07\05\00\00\00", [6 x i8] c"\03\05\03\05\00\00", [6 x i8] c"\03\07\05\03\05\00", [6 x i8] c"\03\07\05\03\05\07"], align 16
@.str.27 = private unnamed_addr constant [11 x i8] c"buf_c == 2\00", align 1
@__PRETTY_FUNCTION__.convert_channels_short_interleaved = private unnamed_addr constant [79 x i8] c"void convert_channels_short_interleaved(int, short *, int, float **, int, int)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @stb_vorbis_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call fastcc void @vorbis_deinit(ptr noundef nonnull %0)
  %4 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %0) #27
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vorbis_deinit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  tail call void @free(ptr noundef %7) #27
  br label %8

8:                                                ; preds = %1, %5
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 7
  br label %14

14:                                               ; preds = %12, %24
  %15 = phi i32 [ %10, %12 ], [ %25, %24 ]
  %16 = phi i64 [ 0, %12 ], [ %26, %24 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !15
  %21 = getelementptr inbounds ptr, ptr %20, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !16
  tail call void @free(ptr noundef %22) #27
  %23 = load i32, ptr %9, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %14, %19
  %25 = phi i32 [ %15, %14 ], [ %23, %19 ]
  %26 = add nuw nsw i64 %16, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %14, label %29, !llvm.loop !17

29:                                               ; preds = %24, %8
  %30 = load ptr, ptr %2, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  tail call void @free(ptr noundef %34) #27
  br label %35

35:                                               ; preds = %29, %32
  %36 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 34
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %96, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 32
  %41 = load i32, ptr %40, align 8, !tbaa !20
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 28
  br label %45

45:                                               ; preds = %43, %91
  %46 = phi i64 [ 0, %43 ], [ %92, %91 ]
  %47 = load ptr, ptr %36, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.Residue, ptr %47, i64 %46, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %85, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.Residue, ptr %47, i64 %46, i32 4
  %53 = load ptr, ptr %44, align 8, !tbaa !23
  %54 = load i8, ptr %52, align 1, !tbaa !24
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.Codebook, ptr %53, i64 %55, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !25
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %51, %71
  %60 = phi i8 [ %72, %71 ], [ %54, %51 ]
  %61 = phi ptr [ %73, %71 ], [ %53, %51 ]
  %62 = phi i64 [ %74, %71 ], [ 0, %51 ]
  %63 = load ptr, ptr %2, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load ptr, ptr %48, align 8, !tbaa !21
  %67 = getelementptr inbounds ptr, ptr %66, i64 %62
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  tail call void @free(ptr noundef %68) #27
  %69 = load ptr, ptr %44, align 8, !tbaa !23
  %70 = load i8, ptr %52, align 1, !tbaa !24
  br label %71

71:                                               ; preds = %59, %65
  %72 = phi i8 [ %60, %59 ], [ %70, %65 ]
  %73 = phi ptr [ %61, %59 ], [ %69, %65 ]
  %74 = add nuw nsw i64 %62, 1
  %75 = zext i8 %72 to i64
  %76 = getelementptr inbounds %struct.Codebook, ptr %73, i64 %75, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !25
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %59, label %80, !llvm.loop !28

80:                                               ; preds = %71, %51
  %81 = load ptr, ptr %2, align 8, !tbaa !5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load ptr, ptr %48, align 8, !tbaa !21
  tail call void @free(ptr noundef %84) #27
  br label %85

85:                                               ; preds = %83, %45
  %86 = load ptr, ptr %2, align 8, !tbaa !5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.Residue, ptr %47, i64 %46, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !29
  tail call void @free(ptr noundef %90) #27
  br label %91

91:                                               ; preds = %80, %85, %88
  %92 = add nuw nsw i64 %46, 1
  %93 = load i32, ptr %40, align 8, !tbaa !20
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %45, label %96, !llvm.loop !30

96:                                               ; preds = %91, %39, %35
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 28
  %98 = load ptr, ptr %97, align 8, !tbaa !23
  %99 = icmp eq ptr %98, null
  br i1 %99, label %145, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 27
  %102 = load i32, ptr %101, align 8, !tbaa !31
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %100, %135
  %105 = phi i64 [ %136, %135 ], [ 0, %100 ]
  %106 = load ptr, ptr %97, align 8, !tbaa !23
  %107 = load ptr, ptr %2, align 8, !tbaa !5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Codebook, ptr %106, i64 %105, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !32
  tail call void @free(ptr noundef %111) #27
  %112 = load ptr, ptr %2, align 8, !tbaa !5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Codebook, ptr %106, i64 %105, i32 10
  %116 = load ptr, ptr %115, align 8, !tbaa !33
  tail call void @free(ptr noundef %116) #27
  %117 = load ptr, ptr %2, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.Codebook, ptr %106, i64 %105, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  tail call void @free(ptr noundef %121) #27
  %122 = load ptr, ptr %2, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.Codebook, ptr %106, i64 %105, i32 13
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  tail call void @free(ptr noundef %126) #27
  %127 = load ptr, ptr %2, align 8, !tbaa !5
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.Codebook, ptr %106, i64 %105, i32 14
  %131 = load ptr, ptr %130, align 8, !tbaa !36
  %132 = icmp eq ptr %131, null
  %133 = getelementptr inbounds i32, ptr %131, i64 -1
  %134 = select i1 %132, ptr null, ptr %133
  tail call void @free(ptr noundef %134) #27
  br label %135

135:                                              ; preds = %109, %104, %114, %119, %124, %129
  %136 = add nuw nsw i64 %105, 1
  %137 = load i32, ptr %101, align 8, !tbaa !31
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %104, label %140, !llvm.loop !37

140:                                              ; preds = %135, %100
  %141 = load ptr, ptr %2, align 8, !tbaa !5
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load ptr, ptr %97, align 8, !tbaa !23
  tail call void @free(ptr noundef %144) #27
  br label %145

145:                                              ; preds = %143, %96
  %146 = load ptr, ptr %2, align 8, !tbaa !5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 31
  %150 = load ptr, ptr %149, align 8, !tbaa !38
  tail call void @free(ptr noundef %150) #27
  %151 = load ptr, ptr %2, align 8, !tbaa !5
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void @free(ptr noundef %154) #27
  br label %155

155:                                              ; preds = %140, %145, %148, %153
  %156 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 36
  %157 = load ptr, ptr %156, align 8, !tbaa !39
  %158 = icmp eq ptr %157, null
  br i1 %158, label %183, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 35
  %161 = load i32, ptr %160, align 8, !tbaa !40
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159, %173
  %164 = phi i32 [ %174, %173 ], [ %161, %159 ]
  %165 = phi i64 [ %175, %173 ], [ 0, %159 ]
  %166 = load ptr, ptr %2, align 8, !tbaa !5
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load ptr, ptr %156, align 8, !tbaa !39
  %170 = getelementptr inbounds %struct.Mapping, ptr %169, i64 %165, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !41
  tail call void @free(ptr noundef %171) #27
  %172 = load i32, ptr %160, align 8, !tbaa !40
  br label %173

173:                                              ; preds = %163, %168
  %174 = phi i32 [ %164, %163 ], [ %172, %168 ]
  %175 = add nuw nsw i64 %165, 1
  %176 = sext i32 %174 to i64
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %163, label %178, !llvm.loop !44

178:                                              ; preds = %173, %159
  %179 = load ptr, ptr %2, align 8, !tbaa !5
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load ptr, ptr %156, align 8, !tbaa !39
  tail call void @free(ptr noundef %182) #27
  br label %183

183:                                              ; preds = %181, %178, %155
  %184 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !45
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %207, %183
  %188 = load ptr, ptr %2, align 8, !tbaa !5
  %189 = icmp eq ptr %188, null
  br i1 %189, label %214, label %262

190:                                              ; preds = %183, %207
  %191 = phi i64 [ %208, %207 ], [ 0, %183 ]
  %192 = load ptr, ptr %2, align 8, !tbaa !5
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %191
  %196 = load ptr, ptr %195, align 8, !tbaa !16
  tail call void @free(ptr noundef %196) #27
  %197 = load ptr, ptr %2, align 8, !tbaa !5
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 42, i64 %191
  %201 = load ptr, ptr %200, align 8, !tbaa !16
  tail call void @free(ptr noundef %201) #27
  %202 = load ptr, ptr %2, align 8, !tbaa !5
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 44, i64 %191
  %206 = load ptr, ptr %205, align 8, !tbaa !16
  tail call void @free(ptr noundef %206) #27
  br label %207

207:                                              ; preds = %190, %194, %199, %204
  %208 = add nuw nsw i64 %191, 1
  %209 = load i32, ptr %184, align 4, !tbaa !45
  %210 = sext i32 %209 to i64
  %211 = icmp slt i64 %208, %210
  %212 = icmp ult i64 %191, 15
  %213 = and i1 %212, %211
  br i1 %213, label %190, label %187, !llvm.loop !46

214:                                              ; preds = %187
  %215 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 47, i64 0
  %216 = load ptr, ptr %215, align 8, !tbaa !16
  tail call void @free(ptr noundef %216) #27
  %217 = load ptr, ptr %2, align 8, !tbaa !5
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %262

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 48, i64 0
  %221 = load ptr, ptr %220, align 8, !tbaa !16
  tail call void @free(ptr noundef %221) #27
  %222 = load ptr, ptr %2, align 8, !tbaa !5
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %262

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 49, i64 0
  %226 = load ptr, ptr %225, align 8, !tbaa !16
  tail call void @free(ptr noundef %226) #27
  %227 = load ptr, ptr %2, align 8, !tbaa !5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %262

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50, i64 0
  %231 = load ptr, ptr %230, align 8, !tbaa !16
  tail call void @free(ptr noundef %231) #27
  %232 = load ptr, ptr %2, align 8, !tbaa !5
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %262

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 51, i64 0
  %236 = load ptr, ptr %235, align 8, !tbaa !16
  tail call void @free(ptr noundef %236) #27
  %237 = load ptr, ptr %2, align 8, !tbaa !5
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %262

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 47, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !16
  tail call void @free(ptr noundef %241) #27
  %242 = load ptr, ptr %2, align 8, !tbaa !5
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %262

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 48, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !16
  tail call void @free(ptr noundef %246) #27
  %247 = load ptr, ptr %2, align 8, !tbaa !5
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 49, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !16
  tail call void @free(ptr noundef %251) #27
  %252 = load ptr, ptr %2, align 8, !tbaa !5
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !16
  tail call void @free(ptr noundef %256) #27
  %257 = load ptr, ptr %2, align 8, !tbaa !5
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 51, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !16
  tail call void @free(ptr noundef %261) #27
  br label %262

262:                                              ; preds = %229, %224, %219, %187, %214, %259, %254, %249, %244, %239, %234
  %263 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 10
  %264 = load i32, ptr %263, align 4, !tbaa !47
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !48
  %269 = tail call i32 @fclose(ptr noundef %268)
  br label %270

270:                                              ; preds = %266, %262
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @stb_vorbis_get_sample_offset(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  %3 = load i32, ptr %2, align 4, !tbaa !49
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %7 = load i32, ptr %6, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @stb_vorbis_get_info(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.stb_vorbis_info) align 4 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct.stb_vorbis_info, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %1, align 8, !tbaa !51
  store i32 %5, ptr %0, align 4, !tbaa !52
  %6 = load <4 x i32>, ptr %3, align 4, !tbaa !54
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x i32> %7, ptr %4, align 4, !tbaa !54
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %1, i64 0, i32 26
  %9 = load i32, ptr %8, align 4, !tbaa !55
  %10 = ashr i32 %9, 1
  %11 = getelementptr inbounds %struct.stb_vorbis_info, ptr %0, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @stb_vorbis_get_comment(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.stb_vorbis_comment) align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  store ptr %4, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.stb_vorbis_comment, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.stb_vorbis_comment, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @stb_vorbis_get_error(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  %3 = load i32, ptr %2, align 4, !tbaa !61
  store i32 0, ptr %2, align 4, !tbaa !61
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @stb_vorbis_flush_pushdata(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %2, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 69
  store i32 0, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 67
  store i32 0, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  store i32 0, ptr %5, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  store i8 0, ptr %6, align 1, !tbaa !65
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 68
  store i32 0, ptr %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %9, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_decode_frame_pushdata(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %11 = load i8, ptr %10, align 4, !tbaa !69
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %14, align 4
  br label %403

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 69
  %17 = load i32, ptr %16, align 8, !tbaa !63
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %303

19:                                               ; preds = %15
  store i32 0, ptr %5, align 4, !tbaa !54
  %20 = load i32, ptr %16, align 8, !tbaa !63
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = zext nneg i32 %20 to i64
  %24 = and i64 %23, 3
  %25 = icmp ult i32 %20, 4
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = and i64 %23, 2147483644
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %38, %28 ]
  %30 = phi i64 [ 0, %26 ], [ %39, %28 ]
  %31 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %29, i32 3
  store i32 0, ptr %31, align 4, !tbaa !70
  %32 = or disjoint i64 %29, 1
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %32, i32 3
  store i32 0, ptr %33, align 4, !tbaa !70
  %34 = or disjoint i64 %29, 2
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %34, i32 3
  store i32 0, ptr %35, align 4, !tbaa !70
  %36 = or disjoint i64 %29, 3
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %36, i32 3
  store i32 0, ptr %37, align 4, !tbaa !70
  %38 = add nuw nsw i64 %29, 4
  %39 = add i64 %30, 4
  %40 = icmp eq i64 %39, %27
  br i1 %40, label %41, label %28, !llvm.loop !72

41:                                               ; preds = %28, %22
  %42 = phi i64 [ 0, %22 ], [ %38, %28 ]
  %43 = icmp eq i64 %24, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %44
  %45 = phi i64 [ %48, %44 ], [ %42, %41 ]
  %46 = phi i64 [ %49, %44 ], [ 0, %41 ]
  %47 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %45, i32 3
  store i32 0, ptr %47, align 4, !tbaa !70
  %48 = add nuw nsw i64 %45, 1
  %49 = add i64 %46, 1
  %50 = icmp eq i64 %49, %24
  br i1 %50, label %51, label %44, !llvm.loop !73

51:                                               ; preds = %44, %41
  %52 = icmp slt i32 %20, 4
  br i1 %52, label %53, label %206

53:                                               ; preds = %51, %19
  %54 = icmp slt i32 %2, 4
  br i1 %54, label %403, label %55

55:                                               ; preds = %53
  %56 = add nsw i32 %2, -3
  %57 = getelementptr i8, ptr %1, i64 -1
  br label %58

58:                                               ; preds = %200, %55
  %59 = phi i32 [ 0, %55 ], [ %201, %200 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %1, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !75
  %63 = icmp eq i8 %62, 79
  br i1 %63, label %64, label %197

64:                                               ; preds = %58
  %65 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %61, ptr noundef nonnull dereferenceable(4) @ogg_page_header, i64 4)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %197

67:                                               ; preds = %64
  %68 = add nuw nsw i32 %59, 26
  %69 = icmp slt i32 %68, %56
  br i1 %69, label %70, label %202

70:                                               ; preds = %67
  %71 = add nuw nsw i32 %59, 27
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds i8, ptr %1, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !75
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %71, %75
  %77 = icmp slt i32 %76, %56
  br i1 %77, label %78, label %202

78:                                               ; preds = %70
  %79 = add nuw nsw i32 %75, 27
  %80 = icmp eq i8 %74, 0
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = zext i32 %71 to i64
  %83 = zext i8 %74 to i64
  %84 = getelementptr i8, ptr %1, i64 %82
  %85 = icmp ult i8 %74, 8
  br i1 %85, label %107, label %86

86:                                               ; preds = %81
  %87 = and i64 %83, 248
  %88 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %79, i64 0
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi i64 [ 0, %86 ], [ %101, %89 ]
  %91 = phi <4 x i32> [ %88, %86 ], [ %99, %89 ]
  %92 = phi <4 x i32> [ zeroinitializer, %86 ], [ %100, %89 ]
  %93 = getelementptr i8, ptr %84, i64 %90
  %94 = getelementptr i8, ptr %93, i64 4
  %95 = load <4 x i8>, ptr %93, align 1, !tbaa !75
  %96 = load <4 x i8>, ptr %94, align 1, !tbaa !75
  %97 = zext <4 x i8> %95 to <4 x i32>
  %98 = zext <4 x i8> %96 to <4 x i32>
  %99 = add <4 x i32> %91, %97
  %100 = add <4 x i32> %92, %98
  %101 = add nuw i64 %90, 8
  %102 = icmp eq i64 %101, %87
  br i1 %102, label %103, label %89, !llvm.loop !76

103:                                              ; preds = %89
  %104 = add <4 x i32> %100, %99
  %105 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %104)
  %106 = icmp eq i64 %87, %83
  br i1 %106, label %110, label %107

107:                                              ; preds = %81, %103
  %108 = phi i64 [ 0, %81 ], [ %87, %103 ]
  %109 = phi i32 [ %79, %81 ], [ %105, %103 ]
  br label %112

110:                                              ; preds = %112, %103, %78
  %111 = phi i32 [ %79, %78 ], [ %105, %103 ], [ %118, %112 ]
  br label %121

112:                                              ; preds = %107, %112
  %113 = phi i64 [ %119, %112 ], [ %108, %107 ]
  %114 = phi i32 [ %118, %112 ], [ %109, %107 ]
  %115 = getelementptr i8, ptr %84, i64 %113
  %116 = load i8, ptr %115, align 1, !tbaa !75
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %114, %117
  %119 = add nuw nsw i64 %113, 1
  %120 = icmp eq i64 %119, %83
  br i1 %120, label %110, label %112, !llvm.loop !79

121:                                              ; preds = %121, %110
  %122 = phi i64 [ 0, %110 ], [ %145, %121 ]
  %123 = phi i32 [ 0, %110 ], [ %144, %121 ]
  %124 = getelementptr i8, ptr %61, i64 %122
  %125 = load i8, ptr %124, align 1, !tbaa !75
  %126 = shl i32 %123, 8
  %127 = zext i8 %125 to i32
  %128 = lshr i32 %123, 24
  %129 = xor i32 %128, %127
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !54
  %133 = xor i32 %132, %126
  %134 = or disjoint i64 %122, 1
  %135 = getelementptr i8, ptr %61, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !75
  %137 = shl i32 %133, 8
  %138 = zext i8 %136 to i32
  %139 = lshr i32 %133, 24
  %140 = xor i32 %139, %138
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !54
  %144 = xor i32 %143, %137
  %145 = add nuw nsw i64 %122, 2
  %146 = icmp eq i64 %145, 22
  br i1 %146, label %147, label %121, !llvm.loop !80

147:                                              ; preds = %121
  %148 = lshr i32 %144, 24
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !54
  %152 = shl i32 %144, 8
  %153 = xor i32 %151, %152
  %154 = lshr i32 %153, 24
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !54
  %158 = shl i32 %153, 8
  %159 = xor i32 %158, %157
  %160 = lshr i32 %159, 24
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !54
  %164 = shl i32 %159, 8
  %165 = xor i32 %164, %163
  %166 = lshr i32 %165, 24
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !54
  %170 = shl i32 %165, 8
  %171 = xor i32 %170, %169
  %172 = load i32, ptr %16, align 8, !tbaa !63
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %16, align 8, !tbaa !63
  %174 = add nsw i32 %111, -26
  %175 = sext i32 %172 to i64
  %176 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %175
  %177 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %175, i32 1
  store i32 %174, ptr %177, align 4, !tbaa !81
  %178 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %175, i32 2
  store i32 %171, ptr %178, align 4, !tbaa !82
  %179 = getelementptr i8, ptr %61, i64 22
  %180 = load i32, ptr %179, align 1
  store i32 %180, ptr %176, align 4, !tbaa !83
  %181 = load i8, ptr %73, align 1, !tbaa !75
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %71, %182
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr i8, ptr %57, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !75
  %187 = icmp eq i8 %186, -1
  br i1 %187, label %191, label %188

188:                                              ; preds = %147
  %189 = getelementptr i8, ptr %61, i64 6
  %190 = load i32, ptr %189, align 1
  br label %191

191:                                              ; preds = %188, %147
  %192 = phi i32 [ %190, %188 ], [ -1, %147 ]
  %193 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %175, i32 4
  store i32 %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %175, i32 3
  store i32 %68, ptr %194, align 4, !tbaa !70
  %195 = icmp eq i32 %173, 4
  %196 = add nuw nsw i32 %59, 1
  br i1 %195, label %202, label %200

197:                                              ; preds = %64, %58
  %198 = add nuw nsw i32 %59, 1
  %199 = icmp slt i32 %198, %56
  br i1 %199, label %200, label %202

200:                                              ; preds = %197, %191
  %201 = phi i32 [ %198, %197 ], [ %196, %191 ]
  br label %58, !llvm.loop !84

202:                                              ; preds = %197, %191, %70, %67
  %203 = phi i32 [ %56, %191 ], [ %59, %67 ], [ %59, %70 ], [ %56, %197 ]
  %204 = load i32, ptr %16, align 8, !tbaa !63
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %403

206:                                              ; preds = %202, %51
  %207 = phi i32 [ %203, %202 ], [ %2, %51 ]
  %208 = phi i32 [ %204, %202 ], [ %20, %51 ]
  br label %209

209:                                              ; preds = %299, %206
  %210 = phi i32 [ %300, %299 ], [ %208, %206 ]
  %211 = phi i32 [ %301, %299 ], [ 0, %206 ]
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %212
  %214 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %212, i32 3
  %215 = load i32, ptr %214, align 4, !tbaa !70
  %216 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %212, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !81
  %218 = sub nsw i32 %207, %215
  %219 = tail call i32 @llvm.smin.i32(i32 %217, i32 %218)
  %220 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %212, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !82
  %222 = icmp sgt i32 %219, 0
  br i1 %222, label %223, label %275

223:                                              ; preds = %209
  %224 = sext i32 %215 to i64
  %225 = zext nneg i32 %219 to i64
  %226 = getelementptr i8, ptr %1, i64 %224
  %227 = and i64 %225, 1
  %228 = icmp eq i32 %219, 1
  br i1 %228, label %259, label %229

229:                                              ; preds = %223
  %230 = and i64 %225, 2147483646
  br label %231

231:                                              ; preds = %231, %229
  %232 = phi i64 [ 0, %229 ], [ %256, %231 ]
  %233 = phi i32 [ %221, %229 ], [ %255, %231 ]
  %234 = phi i64 [ 0, %229 ], [ %257, %231 ]
  %235 = getelementptr i8, ptr %226, i64 %232
  %236 = load i8, ptr %235, align 1, !tbaa !75
  %237 = shl i32 %233, 8
  %238 = zext i8 %236 to i32
  %239 = lshr i32 %233, 24
  %240 = xor i32 %239, %238
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !54
  %244 = xor i32 %243, %237
  %245 = or disjoint i64 %232, 1
  %246 = getelementptr i8, ptr %226, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !75
  %248 = shl i32 %244, 8
  %249 = zext i8 %247 to i32
  %250 = lshr i32 %244, 24
  %251 = xor i32 %250, %249
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !54
  %255 = xor i32 %254, %248
  %256 = add nuw nsw i64 %232, 2
  %257 = add i64 %234, 2
  %258 = icmp eq i64 %257, %230
  br i1 %258, label %259, label %231, !llvm.loop !85

259:                                              ; preds = %231, %223
  %260 = phi i32 [ undef, %223 ], [ %255, %231 ]
  %261 = phi i64 [ 0, %223 ], [ %256, %231 ]
  %262 = phi i32 [ %221, %223 ], [ %255, %231 ]
  %263 = icmp eq i64 %227, 0
  br i1 %263, label %275, label %264

264:                                              ; preds = %259
  %265 = getelementptr i8, ptr %226, i64 %261
  %266 = load i8, ptr %265, align 1, !tbaa !75
  %267 = shl i32 %262, 8
  %268 = zext i8 %266 to i32
  %269 = lshr i32 %262, 24
  %270 = xor i32 %269, %268
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !54
  %274 = xor i32 %273, %267
  br label %275

275:                                              ; preds = %264, %259, %209
  %276 = phi i32 [ %221, %209 ], [ %260, %259 ], [ %274, %264 ]
  %277 = sub nsw i32 %217, %219
  store i32 %277, ptr %216, align 4, !tbaa !81
  store i32 %276, ptr %220, align 4, !tbaa !82
  %278 = icmp sgt i32 %217, %218
  br i1 %278, label %297, label %279

279:                                              ; preds = %275
  %280 = load i32, ptr %213, align 4, !tbaa !83
  %281 = icmp eq i32 %276, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = add nsw i32 %219, %215
  store i32 -1, ptr %16, align 8, !tbaa !63
  %284 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %284, align 8, !tbaa !62
  %285 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  store i32 -1, ptr %285, align 8, !tbaa !86
  %286 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %212, i32 4
  %287 = load i32, ptr %286, align 4, !tbaa !87
  %288 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  store i32 %287, ptr %288, align 8, !tbaa !50
  %289 = icmp ne i32 %287, -1
  %290 = zext i1 %289 to i32
  %291 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  store i32 %290, ptr %291, align 4, !tbaa !49
  br label %403

292:                                              ; preds = %279
  %293 = add nsw i32 %210, -1
  store i32 %293, ptr %16, align 8, !tbaa !63
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 70, i64 %294
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %213, ptr noundef nonnull align 4 dereferenceable(20) %295, i64 20, i1 false), !tbaa.struct !88
  %296 = load i32, ptr %16, align 8, !tbaa !63
  br label %299

297:                                              ; preds = %275
  %298 = add nsw i32 %211, 1
  br label %299

299:                                              ; preds = %297, %292
  %300 = phi i32 [ %296, %292 ], [ %210, %297 ]
  %301 = phi i32 [ %211, %292 ], [ %298, %297 ]
  %302 = icmp slt i32 %301, %300
  br i1 %302, label %209, label %403, !llvm.loop !89

303:                                              ; preds = %15
  %304 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  store ptr %1, ptr %304, align 8, !tbaa !90
  %305 = sext i32 %2 to i64
  %306 = getelementptr inbounds i8, ptr %1, i64 %305
  %307 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  store ptr %306, ptr %307, align 8, !tbaa !91
  %308 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 0, ptr %308, align 4, !tbaa !61
  %309 = tail call fastcc i32 @is_whole_packet_present(ptr noundef nonnull %0)
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  store i32 0, ptr %5, align 4, !tbaa !54
  br label %403

312:                                              ; preds = %303
  %313 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %359

315:                                              ; preds = %312
  %316 = load i32, ptr %308, align 4, !tbaa !61
  switch i32 %316, label %351 [
    i32 35, label %317
    i32 32, label %332
  ]

317:                                              ; preds = %315
  store i32 0, ptr %308, align 4, !tbaa !61
  %318 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %319 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  br label %320

320:                                              ; preds = %323, %317
  %321 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %319, align 8, !tbaa !93
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load i32, ptr %318, align 8, !tbaa !94
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %320, label %326, !llvm.loop !95

326:                                              ; preds = %323, %320
  store i32 0, ptr %5, align 4, !tbaa !54
  %327 = load ptr, ptr %304, align 8, !tbaa !90
  %328 = ptrtoint ptr %327 to i64
  %329 = ptrtoint ptr %1 to i64
  %330 = sub i64 %328, %329
  %331 = trunc i64 %330 to i32
  br label %403

332:                                              ; preds = %315
  %333 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  %334 = load i32, ptr %333, align 8, !tbaa !62
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %351

336:                                              ; preds = %332
  store i32 0, ptr %308, align 4, !tbaa !61
  %337 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %338 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  br label %339

339:                                              ; preds = %342, %336
  %340 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %338, align 8, !tbaa !93
  %341 = icmp eq i32 %340, -1
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load i32, ptr %337, align 8, !tbaa !94
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %339, label %345, !llvm.loop !96

345:                                              ; preds = %342, %339
  store i32 0, ptr %5, align 4, !tbaa !54
  %346 = load ptr, ptr %304, align 8, !tbaa !90
  %347 = ptrtoint ptr %346 to i64
  %348 = ptrtoint ptr %1 to i64
  %349 = sub i64 %347, %348
  %350 = trunc i64 %349 to i32
  br label %403

351:                                              ; preds = %315, %332
  %352 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %352, align 8, !tbaa !62
  store i32 0, ptr %16, align 8, !tbaa !63
  %353 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 67
  store i32 0, ptr %353, align 8, !tbaa !64
  %354 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  store i32 0, ptr %354, align 4, !tbaa !49
  %355 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  store i8 0, ptr %355, align 1, !tbaa !65
  %356 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 68
  store i32 0, ptr %356, align 4, !tbaa !66
  %357 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %357, align 4, !tbaa !67
  %358 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %358, align 8, !tbaa !68
  store i32 0, ptr %5, align 4, !tbaa !54
  br label %403

359:                                              ; preds = %312
  %360 = load i32, ptr %7, align 4, !tbaa !54
  %361 = load i32, ptr %9, align 4, !tbaa !54
  %362 = load i32, ptr %8, align 4, !tbaa !54
  %363 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %360, i32 noundef %361, i32 noundef %362)
  %364 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %365 = load i32, ptr %364, align 4, !tbaa !45
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %393

367:                                              ; preds = %359
  %368 = sext i32 %361 to i64
  %369 = zext nneg i32 %365 to i64
  %370 = icmp eq i32 %365, 1
  br i1 %370, label %383, label %371

371:                                              ; preds = %367
  %372 = and i64 %369, 2147483646
  br label %373

373:                                              ; preds = %373, %371
  %374 = phi i64 [ 0, %371 ], [ %379, %373 ]
  %375 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %374
  %376 = load <2 x ptr>, ptr %375, align 8, !tbaa !16
  %377 = getelementptr inbounds float, <2 x ptr> %376, i64 %368
  %378 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %374
  store <2 x ptr> %377, ptr %378, align 8, !tbaa !16
  %379 = add nuw i64 %374, 2
  %380 = icmp eq i64 %379, %372
  br i1 %380, label %381, label %373, !llvm.loop !97

381:                                              ; preds = %373
  %382 = icmp eq i64 %372, %369
  br i1 %382, label %393, label %383

383:                                              ; preds = %367, %381
  %384 = phi i64 [ 0, %367 ], [ %372, %381 ]
  br label %385

385:                                              ; preds = %383, %385
  %386 = phi i64 [ %391, %385 ], [ %384, %383 ]
  %387 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !16
  %389 = getelementptr inbounds float, ptr %388, i64 %368
  %390 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %386
  store ptr %389, ptr %390, align 8, !tbaa !16
  %391 = add nuw nsw i64 %386, 1
  %392 = icmp eq i64 %391, %369
  br i1 %392, label %393, label %385, !llvm.loop !98

393:                                              ; preds = %385, %381, %359
  %394 = icmp eq ptr %3, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %393
  store i32 %365, ptr %3, align 4, !tbaa !54
  br label %396

396:                                              ; preds = %395, %393
  store i32 %363, ptr %5, align 4, !tbaa !54
  %397 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41
  store ptr %397, ptr %4, align 8, !tbaa !16
  %398 = load ptr, ptr %304, align 8, !tbaa !90
  %399 = ptrtoint ptr %398 to i64
  %400 = ptrtoint ptr %1 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  br label %403

403:                                              ; preds = %299, %282, %202, %53, %326, %345, %351, %396, %311, %13
  %404 = phi i32 [ %402, %396 ], [ 0, %311 ], [ 0, %13 ], [ %331, %326 ], [ %350, %345 ], [ 1, %351 ], [ 0, %53 ], [ %283, %282 ], [ %203, %202 ], [ %207, %299 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  ret i32 %404
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_whole_packet_present(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ne i32 %3, -1
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %9 = load i32, ptr %8, align 8, !tbaa !99
  %10 = icmp slt i32 %3, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = sext i32 %3 to i64
  br label %13

13:                                               ; preds = %11, %21
  %14 = phi i64 [ %12, %11 ], [ %22, %21 ]
  %15 = phi ptr [ %5, %11 ], [ %19, %21 ]
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !75
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = icmp eq i8 %17, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = add nsw i64 %14, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %9, %23
  br i1 %24, label %27, label %13, !llvm.loop !100

25:                                               ; preds = %13
  %26 = trunc i64 %14 to i32
  br label %27

27:                                               ; preds = %21, %25, %7
  %28 = phi i32 [ %3, %7 ], [ %26, %25 ], [ %9, %21 ]
  %29 = phi ptr [ %5, %7 ], [ %19, %25 ], [ %19, %21 ]
  %30 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp ugt ptr %29, %31
  br i1 %32, label %100, label %33

33:                                               ; preds = %27
  %34 = icmp eq i32 %28, %9
  %35 = icmp eq i32 %28, -1
  %36 = or i1 %35, %34
  br label %37

37:                                               ; preds = %33, %1
  %38 = phi ptr [ %29, %33 ], [ %5, %1 ]
  %39 = phi i1 [ %36, %33 ], [ true, %1 ]
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  br label %42

42:                                               ; preds = %95, %37
  %43 = phi i1 [ %6, %37 ], [ true, %95 ]
  %44 = phi ptr [ %38, %37 ], [ %97, %95 ]
  %45 = phi i1 [ %39, %37 ], [ %98, %95 ]
  br i1 %45, label %46, label %103

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %44, i64 26
  %48 = load ptr, ptr %40, align 8, !tbaa !91
  %49 = icmp ult ptr %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %44, ptr noundef nonnull dereferenceable(4) @ogg_page_header, i64 4)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %100

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %44, i64 4
  %55 = load i8, ptr %54, align 1, !tbaa !75
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %53
  br i1 %43, label %66, label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %41, align 8, !tbaa !62
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds i8, ptr %44, i64 5
  %63 = load i8, ptr %62, align 1, !tbaa !75
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %71, label %100

66:                                               ; preds = %57
  %67 = getelementptr inbounds i8, ptr %44, i64 5
  %68 = load i8, ptr %67, align 1, !tbaa !75
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %66, %58, %61
  %72 = load i8, ptr %47, align 1, !tbaa !75
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds i8, ptr %44, i64 27
  %75 = zext i8 %72 to i64
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = icmp ugt ptr %76, %48
  br i1 %77, label %100, label %78

78:                                               ; preds = %71
  %79 = icmp eq i8 %72, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %78
  %81 = zext i8 %72 to i64
  br label %82

82:                                               ; preds = %80, %90
  %83 = phi i64 [ 0, %80 ], [ %91, %90 ]
  %84 = phi ptr [ %76, %80 ], [ %88, %90 ]
  %85 = getelementptr inbounds i8, ptr %74, i64 %83
  %86 = load i8, ptr %85, align 1, !tbaa !75
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8, ptr %84, i64 %87
  %89 = icmp eq i8 %86, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = add nuw nsw i64 %83, 1
  %92 = icmp eq i64 %91, %81
  br i1 %92, label %95, label %82, !llvm.loop !101

93:                                               ; preds = %82
  %94 = trunc i64 %83 to i32
  br label %95

95:                                               ; preds = %90, %93, %78
  %96 = phi i32 [ 0, %78 ], [ %94, %93 ], [ %73, %90 ]
  %97 = phi ptr [ %76, %78 ], [ %88, %93 ], [ %88, %90 ]
  %98 = icmp eq i32 %96, %73
  %99 = icmp ugt ptr %97, %48
  br i1 %99, label %100, label %42, !llvm.loop !102

100:                                              ; preds = %95, %71, %66, %61, %53, %50, %46, %27
  %101 = phi i32 [ 1, %27 ], [ 1, %46 ], [ 21, %50 ], [ 21, %53 ], [ 21, %61 ], [ 21, %66 ], [ 1, %71 ], [ 1, %95 ]
  %102 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %42, %100
  %104 = phi i32 [ 0, %100 ], [ 1, %42 ]
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @vorbis_decode_packet(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [16 x ptr], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  %13 = call fastcc i32 @vorbis_decode_initial(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %11, ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %10), !range !103
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %917, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 38
  %17 = load i32, ptr %10, align 4, !tbaa !54
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.Mode, ptr %16, i64 %18
  %20 = load i32, ptr %2, align 4, !tbaa !54
  %21 = load i32, ptr %3, align 4, !tbaa !54
  %22 = load i32, ptr %12, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #27
  %23 = load i8, ptr %19, align 2, !tbaa !104
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 24, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !54
  %27 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 36
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.Mode, ptr %16, i64 %18, i32 1
  %30 = load i8, ptr %29, align 1, !tbaa !106
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31
  %33 = ashr i32 %26, 1
  %34 = sub nsw i32 0, %33
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !45
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %480

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 1
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 31
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %42 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %43 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 28
  %44 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %45 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %46 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 1
  br label %47

47:                                               ; preds = %475, %38
  %48 = phi i64 [ 0, %38 ], [ %476, %475 ]
  %49 = load ptr, ptr %39, align 8, !tbaa !41
  %50 = getelementptr inbounds %struct.MappingChannel, ptr %49, i64 %48, i32 2
  %51 = load i8, ptr %50, align 1, !tbaa !107
  %52 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %48
  store i32 0, ptr %52, align 4, !tbaa !54
  %53 = zext i8 %51 to i64
  %54 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 3, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !75
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 30, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !109
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 21, ptr %61, align 4
  br label %915

62:                                               ; preds = %47
  %63 = load ptr, ptr %40, align 8, !tbaa !38
  %64 = getelementptr inbounds %union.Floor, ptr %63, i64 %56
  %65 = load i32, ptr %41, align 8, !tbaa !93
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %474, label %67

67:                                               ; preds = %62
  %68 = icmp eq i32 %65, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %42, align 4, !tbaa !110
  br label %83

71:                                               ; preds = %67
  store i32 0, ptr %42, align 4, !tbaa !110
  br label %72

72:                                               ; preds = %75, %71
  %73 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %41, align 8, !tbaa !93
  %77 = shl i32 %73, %76
  %78 = load i32, ptr %42, align 4, !tbaa !110
  %79 = add i32 %78, %77
  store i32 %79, ptr %42, align 4, !tbaa !110
  %80 = add nsw i32 %76, 8
  store i32 %80, ptr %41, align 8, !tbaa !93
  %81 = icmp slt i32 %76, -7
  br i1 %81, label %72, label %83, !llvm.loop !111

82:                                               ; preds = %72
  store i32 -1, ptr %41, align 8, !tbaa !93
  br label %474

83:                                               ; preds = %75, %69
  %84 = phi i32 [ %70, %69 ], [ %79, %75 ]
  %85 = phi i32 [ %65, %69 ], [ %80, %75 ]
  %86 = and i32 %84, 1
  %87 = lshr i32 %84, 1
  store i32 %87, ptr %42, align 4, !tbaa !110
  %88 = add nsw i32 %85, -1
  store i32 %88, ptr %41, align 8, !tbaa !93
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %474, label %90

90:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #27
  %91 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 9
  %92 = load i8, ptr %91, align 4, !tbaa !112
  %93 = zext i8 %92 to i64
  %94 = add nsw i64 %93, -1
  %95 = getelementptr inbounds [4 x i32], ptr @vorbis_decode_packet_rest.range_list, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !54
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 44, i64 %48
  %98 = load ptr, ptr %97, align 8, !tbaa !16
  %99 = lshr i32 %96, 5
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !75
  %103 = sext i8 %102 to i32
  %104 = add nsw i32 %103, 4
  %105 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %104)
  %106 = trunc i32 %105 to i16
  store i16 %106, ptr %98, align 2, !tbaa !109
  %107 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %104)
  %108 = trunc i32 %107 to i16
  %109 = getelementptr inbounds i16, ptr %98, i64 1
  store i16 %108, ptr %109, align 2, !tbaa !109
  %110 = load i8, ptr %64, align 4, !tbaa !114
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %281, label %112

112:                                              ; preds = %90, %275
  %113 = phi i64 [ %277, %275 ], [ 0, %90 ]
  %114 = phi i32 [ %276, %275 ], [ 2, %90 ]
  %115 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 1, i64 %113
  %116 = load i8, ptr %115, align 1, !tbaa !75
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 2, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !75
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 3, i64 %117
  %122 = load i8, ptr %121, align 1, !tbaa !75
  %123 = zext i8 %122 to i32
  %124 = shl nsw i32 -1, %123
  %125 = xor i32 %124, -1
  %126 = icmp eq i8 %122, 0
  br i1 %126, label %189, label %127

127:                                              ; preds = %112
  %128 = load ptr, ptr %43, align 8, !tbaa !23
  %129 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 4, i64 %117
  %130 = load i8, ptr %129, align 1, !tbaa !75
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds %struct.Codebook, ptr %128, i64 %131
  %133 = load i32, ptr %41, align 8, !tbaa !93
  %134 = icmp slt i32 %133, 10
  br i1 %134, label %135, label %155

135:                                              ; preds = %127
  %136 = icmp eq i32 %133, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %135
  store i32 0, ptr %42, align 4, !tbaa !110
  br label %138

138:                                              ; preds = %137, %135
  br label %139

139:                                              ; preds = %138, %148
  %140 = load i32, ptr %45, align 4, !tbaa !115
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i8, ptr %44, align 4, !tbaa !116
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %142, %139
  %146 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %155, label %148

148:                                              ; preds = %145
  %149 = load i32, ptr %41, align 8, !tbaa !93
  %150 = shl i32 %146, %149
  %151 = load i32, ptr %42, align 4, !tbaa !110
  %152 = add i32 %151, %150
  store i32 %152, ptr %42, align 4, !tbaa !110
  %153 = add nsw i32 %149, 8
  store i32 %153, ptr %41, align 8, !tbaa !93
  %154 = icmp slt i32 %149, 17
  br i1 %154, label %139, label %155, !llvm.loop !117

155:                                              ; preds = %148, %145, %142, %127
  %156 = load i32, ptr %42, align 4, !tbaa !110
  %157 = and i32 %156, 1023
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds %struct.Codebook, ptr %128, i64 %131, i32 12, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !109
  %161 = icmp sgt i16 %160, -1
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = zext nneg i16 %160 to i32
  %164 = getelementptr inbounds %struct.Codebook, ptr %128, i64 %131, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !32
  %166 = zext nneg i16 %160 to i64
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !75
  %169 = zext i8 %168 to i32
  %170 = lshr i32 %156, %169
  store i32 %170, ptr %42, align 4, !tbaa !110
  %171 = load i32, ptr %41, align 8, !tbaa !93
  %172 = sub nsw i32 %171, %169
  %173 = tail call i32 @llvm.smax.i32(i32 %172, i32 0)
  %174 = icmp sgt i32 %172, -1
  %175 = select i1 %174, i32 %163, i32 -1
  store i32 %173, ptr %41, align 8, !tbaa !93
  br label %178

176:                                              ; preds = %155
  %177 = tail call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %132)
  br label %178

178:                                              ; preds = %176, %162
  %179 = phi i32 [ %175, %162 ], [ %177, %176 ]
  %180 = getelementptr inbounds %struct.Codebook, ptr %128, i64 %131, i32 8
  %181 = load i8, ptr %180, align 1, !tbaa !118
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.Codebook, ptr %128, i64 %131, i32 14
  %185 = load ptr, ptr %184, align 8, !tbaa !36
  %186 = sext i32 %179 to i64
  %187 = getelementptr inbounds i32, ptr %185, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !54
  br label %189

189:                                              ; preds = %183, %178, %112
  %190 = phi i32 [ 0, %112 ], [ %188, %183 ], [ %179, %178 ]
  %191 = icmp eq i8 %119, 0
  br i1 %191, label %275, label %192

192:                                              ; preds = %189
  %193 = sext i32 %114 to i64
  br label %194

194:                                              ; preds = %267, %192
  %195 = phi i64 [ %193, %192 ], [ %270, %267 ]
  %196 = phi i32 [ 0, %192 ], [ %271, %267 ]
  %197 = phi i32 [ %190, %192 ], [ %202, %267 ]
  %198 = and i32 %197, %125
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 5, i64 %117, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !109
  %202 = ashr i32 %197, %123
  %203 = icmp sgt i16 %201, -1
  br i1 %203, label %204, label %267

204:                                              ; preds = %194
  %205 = zext nneg i16 %201 to i64
  %206 = load ptr, ptr %43, align 8, !tbaa !23
  %207 = getelementptr inbounds %struct.Codebook, ptr %206, i64 %205
  %208 = load i32, ptr %41, align 8, !tbaa !93
  %209 = icmp slt i32 %208, 10
  br i1 %209, label %210, label %230

210:                                              ; preds = %204
  %211 = icmp eq i32 %208, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  store i32 0, ptr %42, align 4, !tbaa !110
  br label %213

213:                                              ; preds = %212, %210
  br label %214

214:                                              ; preds = %213, %223
  %215 = load i32, ptr %45, align 4, !tbaa !115
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i8, ptr %44, align 4, !tbaa !116
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %230, label %220

220:                                              ; preds = %217, %214
  %221 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %230, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr %41, align 8, !tbaa !93
  %225 = shl i32 %221, %224
  %226 = load i32, ptr %42, align 4, !tbaa !110
  %227 = add i32 %226, %225
  store i32 %227, ptr %42, align 4, !tbaa !110
  %228 = add nsw i32 %224, 8
  store i32 %228, ptr %41, align 8, !tbaa !93
  %229 = icmp slt i32 %224, 17
  br i1 %229, label %214, label %230, !llvm.loop !117

230:                                              ; preds = %223, %220, %217, %204
  %231 = load i32, ptr %42, align 4, !tbaa !110
  %232 = and i32 %231, 1023
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds %struct.Codebook, ptr %206, i64 %205, i32 12, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !109
  %236 = icmp sgt i16 %235, -1
  br i1 %236, label %237, label %251

237:                                              ; preds = %230
  %238 = zext nneg i16 %235 to i32
  %239 = getelementptr inbounds %struct.Codebook, ptr %206, i64 %205, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !32
  %241 = zext nneg i16 %235 to i64
  %242 = getelementptr inbounds i8, ptr %240, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !75
  %244 = zext i8 %243 to i32
  %245 = lshr i32 %231, %244
  store i32 %245, ptr %42, align 4, !tbaa !110
  %246 = load i32, ptr %41, align 8, !tbaa !93
  %247 = sub nsw i32 %246, %244
  %248 = tail call i32 @llvm.smax.i32(i32 %247, i32 0)
  %249 = icmp sgt i32 %247, -1
  %250 = select i1 %249, i32 %238, i32 -1
  store i32 %248, ptr %41, align 8, !tbaa !93
  br label %253

251:                                              ; preds = %230
  %252 = tail call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %207)
  br label %253

253:                                              ; preds = %251, %237
  %254 = phi i32 [ %250, %237 ], [ %252, %251 ]
  %255 = getelementptr inbounds %struct.Codebook, ptr %206, i64 %205, i32 8
  %256 = load i8, ptr %255, align 1, !tbaa !118
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.Codebook, ptr %206, i64 %205, i32 14
  %260 = load ptr, ptr %259, align 8, !tbaa !36
  %261 = sext i32 %254 to i64
  %262 = getelementptr inbounds i32, ptr %260, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !54
  br label %264

264:                                              ; preds = %258, %253
  %265 = phi i32 [ %263, %258 ], [ %254, %253 ]
  %266 = trunc i32 %265 to i16
  br label %267

267:                                              ; preds = %264, %194
  %268 = phi i16 [ %266, %264 ], [ 0, %194 ]
  %269 = getelementptr inbounds i16, ptr %98, i64 %195
  store i16 %268, ptr %269, align 2, !tbaa !109
  %270 = add nsw i64 %195, 1
  %271 = add nuw nsw i32 %196, 1
  %272 = icmp eq i32 %271, %120
  br i1 %272, label %273, label %194, !llvm.loop !119

273:                                              ; preds = %267
  %274 = trunc i64 %270 to i32
  br label %275

275:                                              ; preds = %273, %189
  %276 = phi i32 [ %114, %189 ], [ %274, %273 ]
  %277 = add nuw nsw i64 %113, 1
  %278 = load i8, ptr %64, align 4, !tbaa !114
  %279 = zext i8 %278 to i64
  %280 = icmp ult i64 %277, %279
  br i1 %280, label %112, label %281, !llvm.loop !120

281:                                              ; preds = %275, %90
  %282 = load i32, ptr %41, align 8, !tbaa !93
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %473, label %284

284:                                              ; preds = %281
  store i8 1, ptr %46, align 1, !tbaa !75
  store i8 1, ptr %7, align 16, !tbaa !75
  %285 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 11
  %286 = load i32, ptr %285, align 4, !tbaa !121
  %287 = icmp sgt i32 %286, 2
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = zext nneg i32 %286 to i64
  br label %390

290:                                              ; preds = %459, %284
  %291 = icmp sgt i32 %286, 0
  br i1 %291, label %292, label %462

292:                                              ; preds = %290
  %293 = zext nneg i32 %286 to i64
  %294 = icmp ult i32 %286, 16
  br i1 %294, label %388, label %295

295:                                              ; preds = %292
  %296 = and i64 %293, 2147483632
  br label %297

297:                                              ; preds = %383, %295
  %298 = phi i64 [ 0, %295 ], [ %384, %383 ]
  %299 = or disjoint i64 %298, 8
  %300 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %298
  %301 = getelementptr inbounds i8, ptr %300, i64 8
  %302 = load <8 x i8>, ptr %300, align 16, !tbaa !75
  %303 = load <8 x i8>, ptr %301, align 8, !tbaa !75
  %304 = icmp eq <8 x i8> %302, zeroinitializer
  %305 = icmp eq <8 x i8> %303, zeroinitializer
  %306 = extractelement <8 x i1> %304, i64 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %297
  %308 = getelementptr inbounds i16, ptr %98, i64 %298
  store i16 -1, ptr %308, align 2, !tbaa !109
  br label %309

309:                                              ; preds = %307, %297
  %310 = extractelement <8 x i1> %304, i64 1
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = or disjoint i64 %298, 1
  %313 = getelementptr inbounds i16, ptr %98, i64 %312
  store i16 -1, ptr %313, align 2, !tbaa !109
  br label %314

314:                                              ; preds = %311, %309
  %315 = extractelement <8 x i1> %304, i64 2
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  %317 = or disjoint i64 %298, 2
  %318 = getelementptr inbounds i16, ptr %98, i64 %317
  store i16 -1, ptr %318, align 2, !tbaa !109
  br label %319

319:                                              ; preds = %316, %314
  %320 = extractelement <8 x i1> %304, i64 3
  br i1 %320, label %321, label %324

321:                                              ; preds = %319
  %322 = or disjoint i64 %298, 3
  %323 = getelementptr inbounds i16, ptr %98, i64 %322
  store i16 -1, ptr %323, align 2, !tbaa !109
  br label %324

324:                                              ; preds = %321, %319
  %325 = extractelement <8 x i1> %304, i64 4
  br i1 %325, label %326, label %329

326:                                              ; preds = %324
  %327 = or disjoint i64 %298, 4
  %328 = getelementptr inbounds i16, ptr %98, i64 %327
  store i16 -1, ptr %328, align 2, !tbaa !109
  br label %329

329:                                              ; preds = %326, %324
  %330 = extractelement <8 x i1> %304, i64 5
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  %332 = or disjoint i64 %298, 5
  %333 = getelementptr inbounds i16, ptr %98, i64 %332
  store i16 -1, ptr %333, align 2, !tbaa !109
  br label %334

334:                                              ; preds = %331, %329
  %335 = extractelement <8 x i1> %304, i64 6
  br i1 %335, label %336, label %339

336:                                              ; preds = %334
  %337 = or disjoint i64 %298, 6
  %338 = getelementptr inbounds i16, ptr %98, i64 %337
  store i16 -1, ptr %338, align 2, !tbaa !109
  br label %339

339:                                              ; preds = %336, %334
  %340 = extractelement <8 x i1> %304, i64 7
  br i1 %340, label %341, label %344

341:                                              ; preds = %339
  %342 = or disjoint i64 %298, 7
  %343 = getelementptr inbounds i16, ptr %98, i64 %342
  store i16 -1, ptr %343, align 2, !tbaa !109
  br label %344

344:                                              ; preds = %341, %339
  %345 = extractelement <8 x i1> %305, i64 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %344
  %347 = getelementptr inbounds i16, ptr %98, i64 %299
  store i16 -1, ptr %347, align 2, !tbaa !109
  br label %348

348:                                              ; preds = %346, %344
  %349 = extractelement <8 x i1> %305, i64 1
  br i1 %349, label %350, label %353

350:                                              ; preds = %348
  %351 = or disjoint i64 %298, 9
  %352 = getelementptr inbounds i16, ptr %98, i64 %351
  store i16 -1, ptr %352, align 2, !tbaa !109
  br label %353

353:                                              ; preds = %350, %348
  %354 = extractelement <8 x i1> %305, i64 2
  br i1 %354, label %355, label %358

355:                                              ; preds = %353
  %356 = or disjoint i64 %298, 10
  %357 = getelementptr inbounds i16, ptr %98, i64 %356
  store i16 -1, ptr %357, align 2, !tbaa !109
  br label %358

358:                                              ; preds = %355, %353
  %359 = extractelement <8 x i1> %305, i64 3
  br i1 %359, label %360, label %363

360:                                              ; preds = %358
  %361 = or disjoint i64 %298, 11
  %362 = getelementptr inbounds i16, ptr %98, i64 %361
  store i16 -1, ptr %362, align 2, !tbaa !109
  br label %363

363:                                              ; preds = %360, %358
  %364 = extractelement <8 x i1> %305, i64 4
  br i1 %364, label %365, label %368

365:                                              ; preds = %363
  %366 = or disjoint i64 %298, 12
  %367 = getelementptr inbounds i16, ptr %98, i64 %366
  store i16 -1, ptr %367, align 2, !tbaa !109
  br label %368

368:                                              ; preds = %365, %363
  %369 = extractelement <8 x i1> %305, i64 5
  br i1 %369, label %370, label %373

370:                                              ; preds = %368
  %371 = or disjoint i64 %298, 13
  %372 = getelementptr inbounds i16, ptr %98, i64 %371
  store i16 -1, ptr %372, align 2, !tbaa !109
  br label %373

373:                                              ; preds = %370, %368
  %374 = extractelement <8 x i1> %305, i64 6
  br i1 %374, label %375, label %378

375:                                              ; preds = %373
  %376 = or disjoint i64 %298, 14
  %377 = getelementptr inbounds i16, ptr %98, i64 %376
  store i16 -1, ptr %377, align 2, !tbaa !109
  br label %378

378:                                              ; preds = %375, %373
  %379 = extractelement <8 x i1> %305, i64 7
  br i1 %379, label %380, label %383

380:                                              ; preds = %378
  %381 = or disjoint i64 %298, 15
  %382 = getelementptr inbounds i16, ptr %98, i64 %381
  store i16 -1, ptr %382, align 2, !tbaa !109
  br label %383

383:                                              ; preds = %380, %378
  %384 = add nuw i64 %298, 16
  %385 = icmp eq i64 %384, %296
  br i1 %385, label %386, label %297, !llvm.loop !122

386:                                              ; preds = %383
  %387 = icmp eq i64 %296, %293
  br i1 %387, label %462, label %388

388:                                              ; preds = %292, %386
  %389 = phi i64 [ 0, %292 ], [ %296, %386 ]
  br label %463

390:                                              ; preds = %459, %288
  %391 = phi i64 [ 2, %288 ], [ %460, %459 ]
  %392 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 8, i64 %391
  %393 = load i8, ptr %392, align 2, !tbaa !75
  %394 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 8, i64 %391, i64 1
  %395 = load i8, ptr %394, align 1, !tbaa !75
  %396 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 6, i64 %391
  %397 = load i16, ptr %396, align 2, !tbaa !109
  %398 = zext i16 %397 to i32
  %399 = zext i8 %393 to i64
  %400 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 6, i64 %399
  %401 = load i16, ptr %400, align 2, !tbaa !109
  %402 = zext i16 %401 to i32
  %403 = zext i8 %395 to i64
  %404 = getelementptr inbounds %struct.Floor1, ptr %64, i64 0, i32 6, i64 %403
  %405 = load i16, ptr %404, align 2, !tbaa !109
  %406 = zext i16 %405 to i32
  %407 = getelementptr inbounds i16, ptr %98, i64 %399
  %408 = load i16, ptr %407, align 2, !tbaa !109
  %409 = sext i16 %408 to i32
  %410 = getelementptr inbounds i16, ptr %98, i64 %403
  %411 = load i16, ptr %410, align 2, !tbaa !109
  %412 = sext i16 %411 to i32
  %413 = sub nsw i32 %412, %409
  %414 = sub nsw i32 %406, %402
  %415 = tail call i32 @llvm.abs.i32(i32 %413, i1 true)
  %416 = sub nsw i32 %398, %402
  %417 = mul nsw i32 %415, %416
  %418 = sdiv i32 %417, %414
  %419 = icmp slt i32 %413, 0
  %420 = sub i32 0, %418
  %421 = select i1 %419, i32 %420, i32 %418
  %422 = add i32 %421, %409
  %423 = getelementptr inbounds i16, ptr %98, i64 %391
  %424 = load i16, ptr %423, align 2, !tbaa !109
  %425 = sext i16 %424 to i32
  %426 = sub nsw i32 %96, %422
  %427 = icmp eq i16 %424, 0
  br i1 %427, label %454, label %428

428:                                              ; preds = %390
  %429 = tail call i32 @llvm.smin.i32(i32 %426, i32 %422)
  %430 = shl nsw i32 %429, 1
  %431 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %403
  store i8 1, ptr %431, align 1, !tbaa !75
  %432 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %399
  store i8 1, ptr %432, align 1, !tbaa !75
  %433 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %391
  store i8 1, ptr %433, align 1, !tbaa !75
  %434 = icmp sgt i32 %430, %425
  br i1 %434, label %442, label %435

435:                                              ; preds = %428
  %436 = icmp sgt i32 %426, %422
  br i1 %436, label %459, label %437

437:                                              ; preds = %435
  %438 = sub i32 %422, %425
  %439 = add nsw i32 %438, %426
  %440 = trunc i32 %439 to i16
  %441 = add i16 %440, -1
  br label %457

442:                                              ; preds = %428
  %443 = and i32 %425, 1
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %442
  %446 = add nsw i32 %425, 1
  %447 = lshr exact i32 %446, 1
  %448 = sub i32 %422, %447
  %449 = trunc i32 %448 to i16
  br label %457

450:                                              ; preds = %442
  %451 = ashr exact i32 %425, 1
  %452 = add nsw i32 %422, %451
  %453 = trunc i32 %452 to i16
  br label %457

454:                                              ; preds = %390
  %455 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %391
  store i8 0, ptr %455, align 1, !tbaa !75
  %456 = trunc i32 %422 to i16
  br label %457

457:                                              ; preds = %454, %450, %445, %437
  %458 = phi i16 [ %441, %437 ], [ %453, %450 ], [ %449, %445 ], [ %456, %454 ]
  store i16 %458, ptr %423, align 2, !tbaa !109
  br label %459

459:                                              ; preds = %457, %435
  %460 = add nuw nsw i64 %391, 1
  %461 = icmp eq i64 %460, %289
  br i1 %461, label %290, label %390, !llvm.loop !123

462:                                              ; preds = %470, %386, %290
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #27
  br label %475

463:                                              ; preds = %388, %470
  %464 = phi i64 [ %471, %470 ], [ %389, %388 ]
  %465 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !75
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %468, label %470

468:                                              ; preds = %463
  %469 = getelementptr inbounds i16, ptr %98, i64 %464
  store i16 -1, ptr %469, align 2, !tbaa !109
  br label %470

470:                                              ; preds = %468, %463
  %471 = add nuw nsw i64 %464, 1
  %472 = icmp eq i64 %471, %293
  br i1 %472, label %462, label %463, !llvm.loop !124

473:                                              ; preds = %281
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #27
  br label %474

474:                                              ; preds = %473, %83, %82, %62
  store i32 1, ptr %52, align 4, !tbaa !54
  br label %475

475:                                              ; preds = %474, %462
  %476 = add nuw nsw i64 %48, 1
  %477 = load i32, ptr %35, align 4, !tbaa !45
  %478 = sext i32 %477 to i64
  %479 = icmp slt i64 %476, %478
  br i1 %479, label %47, label %480, !llvm.loop !125

480:                                              ; preds = %475, %15
  %481 = phi i32 [ %36, %15 ], [ %477, %475 ]
  %482 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %483 = load ptr, ptr %482, align 8, !tbaa !5
  %484 = icmp eq ptr %483, null
  br i1 %484, label %492, label %485

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19, i32 1
  %487 = load i32, ptr %486, align 8, !tbaa !126
  %488 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %489 = load i32, ptr %488, align 4, !tbaa !127
  %490 = icmp eq i32 %487, %489
  br i1 %490, label %492, label %491

491:                                              ; preds = %485
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 3293, ptr noundef nonnull @__PRETTY_FUNCTION__.vorbis_decode_packet_rest) #28
  unreachable

492:                                              ; preds = %485, %480
  %493 = sext i32 %481 to i64
  %494 = shl nsw i64 %493, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 16 %5, i64 %494, i1 false)
  %495 = load i16, ptr %32, align 8, !tbaa !128
  %496 = icmp eq i16 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %492
  %498 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !41
  %500 = zext i16 %495 to i64
  br label %507

501:                                              ; preds = %524, %492
  %502 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 2
  %503 = load i8, ptr %502, align 8, !tbaa !129
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %570, label %505

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 1
  br label %527

507:                                              ; preds = %524, %497
  %508 = phi i64 [ 0, %497 ], [ %525, %524 ]
  %509 = getelementptr inbounds %struct.MappingChannel, ptr %499, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !130
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !54
  %514 = icmp eq i32 %513, 0
  %515 = getelementptr inbounds %struct.MappingChannel, ptr %499, i64 %508, i32 1
  %516 = load i8, ptr %515, align 1, !tbaa !131
  %517 = zext i8 %516 to i64
  br i1 %514, label %522, label %518

518:                                              ; preds = %507
  %519 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %517
  %520 = load i32, ptr %519, align 4, !tbaa !54
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %518, %507
  %523 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %517
  store i32 0, ptr %523, align 4, !tbaa !54
  store i32 0, ptr %512, align 4, !tbaa !54
  br label %524

524:                                              ; preds = %522, %518
  %525 = add nuw nsw i64 %508, 1
  %526 = icmp eq i64 %525, %500
  br i1 %526, label %501, label %507, !llvm.loop !132

527:                                              ; preds = %559, %505
  %528 = phi i64 [ 0, %505 ], [ %564, %559 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #27
  %529 = load i32, ptr %35, align 4, !tbaa !45
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %559

531:                                              ; preds = %527
  %532 = load ptr, ptr %506, align 8, !tbaa !41
  %533 = zext nneg i32 %529 to i64
  br label %534

534:                                              ; preds = %555, %531
  %535 = phi i64 [ 0, %531 ], [ %557, %555 ]
  %536 = phi i32 [ 0, %531 ], [ %556, %555 ]
  %537 = getelementptr inbounds %struct.MappingChannel, ptr %532, i64 %535, i32 2
  %538 = load i8, ptr %537, align 1, !tbaa !107
  %539 = zext i8 %538 to i64
  %540 = icmp eq i64 %528, %539
  br i1 %540, label %541, label %555

541:                                              ; preds = %534
  %542 = getelementptr inbounds [256 x i32], ptr %5, i64 0, i64 %535
  %543 = load i32, ptr %542, align 4, !tbaa !54
  %544 = icmp eq i32 %543, 0
  %545 = sext i32 %536 to i64
  %546 = getelementptr inbounds [256 x i8], ptr %9, i64 0, i64 %545
  br i1 %544, label %547, label %550

547:                                              ; preds = %541
  %548 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %535
  %549 = load ptr, ptr %548, align 8, !tbaa !16
  br label %550

550:                                              ; preds = %541, %547
  %551 = phi i8 [ 0, %547 ], [ 1, %541 ]
  %552 = phi ptr [ %549, %547 ], [ null, %541 ]
  store i8 %551, ptr %546, align 1
  %553 = getelementptr inbounds [16 x ptr], ptr %8, i64 0, i64 %545
  store ptr %552, ptr %553, align 8, !tbaa !16
  %554 = add nsw i32 %536, 1
  br label %555

555:                                              ; preds = %550, %534
  %556 = phi i32 [ %554, %550 ], [ %536, %534 ]
  %557 = add nuw nsw i64 %535, 1
  %558 = icmp eq i64 %557, %533
  br i1 %558, label %559, label %534, !llvm.loop !133

559:                                              ; preds = %555, %527
  %560 = phi i32 [ 0, %527 ], [ %556, %555 ]
  %561 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 4, i64 %528
  %562 = load i8, ptr %561, align 1, !tbaa !75
  %563 = zext i8 %562 to i32
  call fastcc void @decode_residue(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %560, i32 noundef %33, i32 noundef %563, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #27
  %564 = add nuw nsw i64 %528, 1
  %565 = load i8, ptr %502, align 8, !tbaa !129
  %566 = zext i8 %565 to i64
  %567 = icmp ult i64 %564, %566
  br i1 %567, label %527, label %568, !llvm.loop !134

568:                                              ; preds = %559
  %569 = load ptr, ptr %482, align 8, !tbaa !5
  br label %570

570:                                              ; preds = %568, %501
  %571 = phi ptr [ %569, %568 ], [ %483, %501 ]
  %572 = icmp eq ptr %571, null
  br i1 %572, label %580, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19, i32 1
  %575 = load i32, ptr %574, align 8, !tbaa !126
  %576 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %577 = load i32, ptr %576, align 4, !tbaa !127
  %578 = icmp eq i32 %575, %577
  br i1 %578, label %580, label %579

579:                                              ; preds = %573
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 3326, ptr noundef nonnull @__PRETTY_FUNCTION__.vorbis_decode_packet_rest) #28
  unreachable

580:                                              ; preds = %573, %570
  %581 = load i16, ptr %32, align 8, !tbaa !128
  %582 = icmp eq i16 %581, 0
  br i1 %582, label %595, label %583

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !41
  %586 = icmp sgt i32 %33, 0
  %587 = zext i16 %581 to i64
  %588 = zext i32 %33 to i64
  %589 = shl nuw nsw i64 %588, 2
  %590 = icmp ult i32 %33, 4
  %591 = and i64 %588, 2147483644
  %592 = icmp eq i64 %591, %588
  br label %604

593:                                              ; preds = %670, %649, %604
  %594 = icmp sgt i64 %605, 1
  br i1 %594, label %604, label %595, !llvm.loop !135

595:                                              ; preds = %593, %580
  %596 = load i32, ptr %35, align 4, !tbaa !45
  %597 = icmp sgt i32 %596, 0
  br i1 %597, label %598, label %836

598:                                              ; preds = %595
  %599 = sext i32 %33 to i64
  %600 = shl nsw i64 %599, 2
  %601 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 1
  %602 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 31
  %603 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  br label %677

604:                                              ; preds = %593, %583
  %605 = phi i64 [ %587, %583 ], [ %606, %593 ]
  %606 = add nsw i64 %605, -1
  %607 = getelementptr inbounds %struct.MappingChannel, ptr %585, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !130
  %609 = zext i8 %608 to i64
  %610 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %609
  %611 = load ptr, ptr %610, align 8, !tbaa !16
  %612 = getelementptr inbounds %struct.MappingChannel, ptr %585, i64 %606, i32 1
  %613 = load i8, ptr %612, align 1, !tbaa !131
  %614 = zext i8 %613 to i64
  %615 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %614
  %616 = load ptr, ptr %615, align 8, !tbaa !16
  br i1 %586, label %617, label %593

617:                                              ; preds = %604
  br i1 %590, label %650, label %618

618:                                              ; preds = %617
  %619 = getelementptr i8, ptr %611, i64 %589
  %620 = getelementptr i8, ptr %616, i64 %589
  %621 = icmp ult ptr %611, %620
  %622 = icmp ult ptr %616, %619
  %623 = and i1 %621, %622
  br i1 %623, label %650, label %624

624:                                              ; preds = %618, %624
  %625 = phi i64 [ %647, %624 ], [ 0, %618 ]
  %626 = getelementptr inbounds float, ptr %611, i64 %625
  %627 = load <4 x float>, ptr %626, align 4, !tbaa !136, !alias.scope !137, !noalias !140
  %628 = fcmp ogt <4 x float> %627, zeroinitializer
  %629 = getelementptr inbounds float, ptr %616, i64 %625
  %630 = load <4 x float>, ptr %629, align 4, !tbaa !136, !alias.scope !140
  %631 = fcmp ogt <4 x float> %630, zeroinitializer
  %632 = xor <4 x i1> %628, <i1 true, i1 true, i1 true, i1 true>
  %633 = select <4 x i1> %628, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %631
  %634 = select <4 x i1> %632, <4 x i1> %631, <4 x i1> zeroinitializer
  %635 = xor <4 x i1> %631, <i1 true, i1 true, i1 true, i1 true>
  %636 = select <4 x i1> %628, <4 x i1> %635, <4 x i1> zeroinitializer
  %637 = select <4 x i1> %636, <4 x float> zeroinitializer, <4 x float> %630
  %638 = fneg <4 x float> %637
  %639 = select <4 x i1> %634, <4 x float> %630, <4 x float> %638
  %640 = select <4 x i1> %633, <4 x float> %639, <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %641 = fadd <4 x float> %627, %640
  %642 = select <4 x i1> %636, <4 x float> %630, <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %643 = select <4 x i1> %634, <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %642
  %644 = fneg <4 x float> %630
  %645 = select <4 x i1> %633, <4 x float> %643, <4 x float> %644
  %646 = fadd <4 x float> %627, %645
  store <4 x float> %646, ptr %626, align 4, !tbaa !136, !alias.scope !137, !noalias !140
  store <4 x float> %641, ptr %629, align 4, !tbaa !136, !alias.scope !140
  %647 = add nuw i64 %625, 4
  %648 = icmp eq i64 %647, %591
  br i1 %648, label %649, label %624, !llvm.loop !142

649:                                              ; preds = %624
  br i1 %592, label %593, label %650

650:                                              ; preds = %618, %617, %649
  %651 = phi i64 [ 0, %618 ], [ 0, %617 ], [ %591, %649 ]
  br label %652

652:                                              ; preds = %650, %670
  %653 = phi i64 [ %673, %670 ], [ %651, %650 ]
  %654 = getelementptr inbounds float, ptr %611, i64 %653
  %655 = load float, ptr %654, align 4, !tbaa !136
  %656 = fcmp ogt float %655, 0.000000e+00
  %657 = getelementptr inbounds float, ptr %616, i64 %653
  %658 = load float, ptr %657, align 4, !tbaa !136
  %659 = fcmp ogt float %658, 0.000000e+00
  br i1 %656, label %660, label %665

660:                                              ; preds = %652
  br i1 %659, label %661, label %663

661:                                              ; preds = %660
  %662 = fsub float %655, %658
  br label %670

663:                                              ; preds = %660
  %664 = fadd float %655, %658
  br label %670

665:                                              ; preds = %652
  br i1 %659, label %666, label %668

666:                                              ; preds = %665
  %667 = fadd float %655, %658
  br label %670

668:                                              ; preds = %665
  %669 = fsub float %655, %658
  br label %670

670:                                              ; preds = %668, %666, %663, %661
  %671 = phi float [ %662, %661 ], [ %655, %663 ], [ %667, %666 ], [ %655, %668 ]
  %672 = phi float [ %655, %661 ], [ %664, %663 ], [ %655, %666 ], [ %669, %668 ]
  store float %672, ptr %654, align 4, !tbaa !136
  store float %671, ptr %657, align 4, !tbaa !136
  %673 = add nuw nsw i64 %653, 1
  %674 = icmp eq i64 %673, %588
  br i1 %674, label %593, label %652, !llvm.loop !143

675:                                              ; preds = %821
  %676 = icmp sgt i32 %822, 0
  br i1 %676, label %826, label %836

677:                                              ; preds = %821, %598
  %678 = phi i32 [ %596, %598 ], [ %822, %821 ]
  %679 = phi i64 [ 0, %598 ], [ %823, %821 ]
  %680 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %679
  %681 = load i32, ptr %680, align 4, !tbaa !54
  %682 = icmp eq i32 %681, 0
  %683 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %679
  %684 = load ptr, ptr %683, align 8, !tbaa !16
  br i1 %682, label %687, label %685

685:                                              ; preds = %677
  tail call void @llvm.memset.p0.i64(ptr align 4 %684, i8 0, i64 %600, i1 false)
  %686 = load i32, ptr %35, align 4, !tbaa !45
  br label %821

687:                                              ; preds = %677
  %688 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 44, i64 %679
  %689 = load ptr, ptr %688, align 8, !tbaa !16
  %690 = load ptr, ptr %601, align 8, !tbaa !41
  %691 = getelementptr inbounds %struct.MappingChannel, ptr %690, i64 %679, i32 2
  %692 = load i8, ptr %691, align 1, !tbaa !107
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds %struct.Mapping, ptr %28, i64 %31, i32 3, i64 %693
  %695 = load i8, ptr %694, align 1, !tbaa !75
  %696 = zext i8 %695 to i64
  %697 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 30, i64 %696
  %698 = load i16, ptr %697, align 2, !tbaa !109
  %699 = icmp eq i16 %698, 0
  br i1 %699, label %700, label %701

700:                                              ; preds = %687
  store i32 21, ptr %603, align 4
  br label %821

701:                                              ; preds = %687
  %702 = load ptr, ptr %602, align 8, !tbaa !38
  %703 = getelementptr inbounds %union.Floor, ptr %702, i64 %696
  %704 = load i16, ptr %689, align 2, !tbaa !109
  %705 = sext i16 %704 to i32
  %706 = getelementptr inbounds %struct.Floor1, ptr %703, i64 0, i32 9
  %707 = load i8, ptr %706, align 4, !tbaa !112
  %708 = zext i8 %707 to i32
  %709 = mul nsw i32 %708, %705
  %710 = getelementptr inbounds %struct.Floor1, ptr %703, i64 0, i32 11
  %711 = load i32, ptr %710, align 4, !tbaa !121
  %712 = icmp sgt i32 %711, 1
  br i1 %712, label %713, label %783

713:                                              ; preds = %701
  %714 = zext nneg i32 %711 to i64
  br label %715

715:                                              ; preds = %778, %713
  %716 = phi i64 [ 1, %713 ], [ %781, %778 ]
  %717 = phi i32 [ %709, %713 ], [ %780, %778 ]
  %718 = phi i32 [ 0, %713 ], [ %779, %778 ]
  %719 = getelementptr inbounds %struct.Floor1, ptr %703, i64 0, i32 7, i64 %716
  %720 = load i8, ptr %719, align 1, !tbaa !75
  %721 = zext i8 %720 to i64
  %722 = getelementptr inbounds i16, ptr %689, i64 %721
  %723 = load i16, ptr %722, align 2, !tbaa !109
  %724 = icmp sgt i16 %723, -1
  br i1 %724, label %725, label %778

725:                                              ; preds = %715
  %726 = zext nneg i16 %723 to i32
  %727 = mul nuw nsw i32 %726, %708
  %728 = getelementptr inbounds %struct.Floor1, ptr %703, i64 0, i32 6, i64 %721
  %729 = load i16, ptr %728, align 2, !tbaa !109
  %730 = zext i16 %729 to i32
  %731 = icmp eq i32 %718, %730
  br i1 %731, label %778, label %732

732:                                              ; preds = %725
  %733 = sub nsw i32 %727, %717
  %734 = sub nsw i32 %730, %718
  %735 = tail call i32 @llvm.abs.i32(i32 %733, i1 true)
  %736 = sdiv i32 %733, %734
  %737 = icmp sgt i32 %733, -1
  %738 = select i1 %737, i32 1, i32 -1
  %739 = tail call i32 @llvm.abs.i32(i32 %736, i1 true)
  %740 = mul nsw i32 %739, %734
  %741 = sub nsw i32 %735, %740
  %742 = tail call i32 @llvm.smin.i32(i32 %730, i32 %33)
  %743 = icmp sgt i32 %742, %718
  br i1 %743, label %744, label %778

744:                                              ; preds = %732
  %745 = and i32 %717, 255
  %746 = zext nneg i32 %745 to i64
  %747 = getelementptr inbounds [256 x float], ptr @inverse_db_table, i64 0, i64 %746
  %748 = load float, ptr %747, align 4, !tbaa !136
  %749 = zext nneg i32 %718 to i64
  %750 = getelementptr inbounds float, ptr %684, i64 %749
  %751 = load float, ptr %750, align 4, !tbaa !136
  %752 = fmul float %748, %751
  store float %752, ptr %750, align 4, !tbaa !136
  %753 = add nuw nsw i32 %718, 1
  %754 = icmp slt i32 %753, %742
  br i1 %754, label %755, label %778

755:                                              ; preds = %744
  %756 = add nuw nsw i64 %749, 1
  br label %757

757:                                              ; preds = %757, %755
  %758 = phi i64 [ %756, %755 ], [ %775, %757 ]
  %759 = phi i32 [ 0, %755 ], [ %765, %757 ]
  %760 = phi i32 [ %717, %755 ], [ %767, %757 ]
  %761 = add nsw i32 %759, %741
  %762 = icmp slt i32 %761, %734
  %763 = select i1 %762, i32 0, i32 %738
  %764 = select i1 %762, i32 0, i32 %734
  %765 = sub nsw i32 %761, %764
  %766 = add i32 %760, %736
  %767 = add i32 %766, %763
  %768 = and i32 %767, 255
  %769 = zext nneg i32 %768 to i64
  %770 = getelementptr inbounds [256 x float], ptr @inverse_db_table, i64 0, i64 %769
  %771 = load float, ptr %770, align 4, !tbaa !136
  %772 = getelementptr inbounds float, ptr %684, i64 %758
  %773 = load float, ptr %772, align 4, !tbaa !136
  %774 = fmul float %771, %773
  store float %774, ptr %772, align 4, !tbaa !136
  %775 = add nuw nsw i64 %758, 1
  %776 = trunc i64 %775 to i32
  %777 = icmp eq i32 %742, %776
  br i1 %777, label %778, label %757, !llvm.loop !144

778:                                              ; preds = %757, %744, %732, %725, %715
  %779 = phi i32 [ %718, %715 ], [ %718, %725 ], [ %730, %732 ], [ %730, %744 ], [ %730, %757 ]
  %780 = phi i32 [ %717, %715 ], [ %727, %725 ], [ %727, %732 ], [ %727, %744 ], [ %727, %757 ]
  %781 = add nuw nsw i64 %716, 1
  %782 = icmp eq i64 %781, %714
  br i1 %782, label %783, label %715, !llvm.loop !145

783:                                              ; preds = %778, %701
  %784 = phi i32 [ 0, %701 ], [ %779, %778 ]
  %785 = phi i32 [ %709, %701 ], [ %780, %778 ]
  %786 = icmp slt i32 %784, %33
  br i1 %786, label %787, label %821

787:                                              ; preds = %783
  %788 = sext i32 %785 to i64
  %789 = getelementptr inbounds [256 x float], ptr @inverse_db_table, i64 0, i64 %788
  %790 = load float, ptr %789, align 4, !tbaa !136
  %791 = zext i32 %784 to i64
  %792 = sub nsw i64 %599, %791
  %793 = icmp ult i64 %792, 8
  br i1 %793, label %812, label %794

794:                                              ; preds = %787
  %795 = and i64 %792, -8
  %796 = add nsw i64 %795, %791
  %797 = insertelement <4 x float> poison, float %790, i64 0
  %798 = shufflevector <4 x float> %797, <4 x float> poison, <4 x i32> zeroinitializer
  %799 = getelementptr float, ptr %684, i64 %791
  br label %800

800:                                              ; preds = %800, %794
  %801 = phi i64 [ 0, %794 ], [ %808, %800 ]
  %802 = getelementptr float, ptr %799, i64 %801
  %803 = getelementptr inbounds float, ptr %802, i64 4
  %804 = load <4 x float>, ptr %802, align 4, !tbaa !136
  %805 = load <4 x float>, ptr %803, align 4, !tbaa !136
  %806 = fmul <4 x float> %798, %804
  %807 = fmul <4 x float> %798, %805
  store <4 x float> %806, ptr %802, align 4, !tbaa !136
  store <4 x float> %807, ptr %803, align 4, !tbaa !136
  %808 = add nuw i64 %801, 8
  %809 = icmp eq i64 %808, %795
  br i1 %809, label %810, label %800, !llvm.loop !146

810:                                              ; preds = %800
  %811 = icmp eq i64 %792, %795
  br i1 %811, label %821, label %812

812:                                              ; preds = %787, %810
  %813 = phi i64 [ %791, %787 ], [ %796, %810 ]
  br label %814

814:                                              ; preds = %812, %814
  %815 = phi i64 [ %819, %814 ], [ %813, %812 ]
  %816 = getelementptr inbounds float, ptr %684, i64 %815
  %817 = load float, ptr %816, align 4, !tbaa !136
  %818 = fmul float %790, %817
  store float %818, ptr %816, align 4, !tbaa !136
  %819 = add nuw nsw i64 %815, 1
  %820 = icmp eq i64 %819, %599
  br i1 %820, label %821, label %814, !llvm.loop !147

821:                                              ; preds = %814, %810, %783, %700, %685
  %822 = phi i32 [ %678, %783 ], [ %678, %700 ], [ %686, %685 ], [ %678, %810 ], [ %678, %814 ]
  %823 = add nuw nsw i64 %679, 1
  %824 = sext i32 %822 to i64
  %825 = icmp slt i64 %823, %824
  br i1 %825, label %677, label %675, !llvm.loop !148

826:                                              ; preds = %675, %826
  %827 = phi i64 [ %832, %826 ], [ 0, %675 ]
  %828 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %827
  %829 = load ptr, ptr %828, align 8, !tbaa !16
  %830 = load i8, ptr %19, align 2, !tbaa !104
  %831 = zext i8 %830 to i32
  tail call fastcc void @inverse_mdct(ptr noundef %829, i32 noundef %26, ptr noundef nonnull %0, i32 noundef %831)
  %832 = add nuw nsw i64 %827, 1
  %833 = load i32, ptr %35, align 4, !tbaa !45
  %834 = sext i32 %833 to i64
  %835 = icmp slt i64 %832, %834
  br i1 %835, label %826, label %836, !llvm.loop !149

836:                                              ; preds = %826, %675, %595
  br label %837

837:                                              ; preds = %836, %837
  %838 = tail call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  %839 = icmp eq i32 %838, -1
  br i1 %839, label %840, label %837, !llvm.loop !150

840:                                              ; preds = %837
  %841 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  %842 = load i8, ptr %841, align 1, !tbaa !65
  %843 = icmp eq i8 %842, 0
  br i1 %843, label %849, label %844

844:                                              ; preds = %840
  %845 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  store i32 %34, ptr %845, align 8, !tbaa !50
  %846 = sub nsw i32 %26, %22
  %847 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 67
  store i32 %846, ptr %847, align 8, !tbaa !64
  %848 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  store i32 1, ptr %848, align 4, !tbaa !49
  store i8 0, ptr %841, align 1, !tbaa !65
  br label %860

849:                                              ; preds = %840
  %850 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 67
  %851 = load i32, ptr %850, align 8, !tbaa !64
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %860, label %853

853:                                              ; preds = %849
  %854 = sub nsw i32 %21, %20
  %855 = icmp slt i32 %851, %854
  br i1 %855, label %858, label %856

856:                                              ; preds = %853
  %857 = sub nsw i32 %851, %854
  store i32 %857, ptr %850, align 8, !tbaa !64
  store i32 %21, ptr %2, align 4, !tbaa !54
  br label %860

858:                                              ; preds = %853
  %859 = add nsw i32 %851, %20
  store i32 %859, ptr %2, align 4, !tbaa !54
  store i32 0, ptr %850, align 8, !tbaa !64
  br label %860

860:                                              ; preds = %858, %856, %849, %844
  %861 = phi i32 [ %20, %844 ], [ %21, %856 ], [ %859, %858 ], [ %20, %849 ]
  %862 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 61
  %863 = load i32, ptr %862, align 8, !tbaa !151
  %864 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 65
  %865 = load i32, ptr %864, align 8, !tbaa !152
  %866 = icmp eq i32 %863, %865
  %867 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  %868 = load i32, ptr %867, align 4, !tbaa !49
  %869 = icmp eq i32 %868, 0
  br i1 %866, label %870, label %895

870:                                              ; preds = %860
  br i1 %869, label %890, label %871

871:                                              ; preds = %870
  %872 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %873 = load i8, ptr %872, align 1, !tbaa !153
  %874 = and i8 %873, 4
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %890, label %876

876:                                              ; preds = %871
  %877 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 66
  %878 = load i32, ptr %877, align 4, !tbaa !154
  %879 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %880 = load i32, ptr %879, align 8, !tbaa !50
  %881 = sub i32 %22, %861
  %882 = add i32 %881, %880
  %883 = icmp ult i32 %878, %882
  br i1 %883, label %884, label %890

884:                                              ; preds = %876
  %885 = tail call i32 @llvm.usub.sat.i32(i32 %878, i32 %880)
  %886 = add nsw i32 %885, %861
  %887 = tail call i32 @llvm.smin.i32(i32 %886, i32 %22)
  store i32 %887, ptr %1, align 4, !tbaa !54
  %888 = load i32, ptr %879, align 8, !tbaa !50
  %889 = add i32 %888, %887
  store i32 %889, ptr %879, align 8, !tbaa !50
  br label %915

890:                                              ; preds = %876, %871, %870
  %891 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 66
  %892 = load i32, ptr %891, align 4, !tbaa !154
  %893 = sub i32 %861, %33
  %894 = add i32 %893, %892
  store i32 1, ptr %867, align 4, !tbaa !49
  br label %899

895:                                              ; preds = %860
  br i1 %869, label %904, label %896

896:                                              ; preds = %895
  %897 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %898 = load i32, ptr %897, align 8, !tbaa !50
  br label %899

899:                                              ; preds = %896, %890
  %900 = phi i32 [ %898, %896 ], [ %894, %890 ]
  %901 = sub i32 %21, %861
  %902 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %903 = add i32 %901, %900
  store i32 %903, ptr %902, align 8, !tbaa !50
  br label %904

904:                                              ; preds = %899, %895
  %905 = load ptr, ptr %482, align 8, !tbaa !5
  %906 = icmp eq ptr %905, null
  br i1 %906, label %914, label %907

907:                                              ; preds = %904
  %908 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19, i32 1
  %909 = load i32, ptr %908, align 8, !tbaa !126
  %910 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %911 = load i32, ptr %910, align 4, !tbaa !127
  %912 = icmp eq i32 %909, %911
  br i1 %912, label %914, label %913

913:                                              ; preds = %907
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 3442, ptr noundef nonnull @__PRETTY_FUNCTION__.vorbis_decode_packet_rest) #28
  unreachable

914:                                              ; preds = %907, %904
  store i32 %22, ptr %1, align 4, !tbaa !54
  br label %915

915:                                              ; preds = %60, %884, %914
  %916 = phi i32 [ 1, %914 ], [ 0, %60 ], [ 1, %884 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #27
  br label %917

917:                                              ; preds = %4, %915
  %918 = phi i32 [ %916, %915 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  ret i32 %918
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @vorbis_finish_frame(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !45
  br label %153

11:                                               ; preds = %4
  %12 = shl i32 %6, 1
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  %14 = load i32, ptr %13, align 8, !tbaa !155
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50
  br label %24

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 26
  %20 = load i32, ptr %19, align 4, !tbaa !55
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %22, label %249

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50, i64 1
  br label %24

24:                                               ; preds = %16, %22
  %25 = phi ptr [ %23, %22 ], [ %17, %16 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %249, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = sub i32 %1, %3
  store i32 %33, ptr %5, align 8, !tbaa !62
  br label %243

34:                                               ; preds = %28
  %35 = icmp sgt i32 %6, 0
  %36 = sext i32 %6 to i64
  %37 = sext i32 %2 to i64
  %38 = zext nneg i32 %30 to i64
  %39 = zext i32 %6 to i64
  %40 = getelementptr float, ptr %26, i64 %36
  %41 = shl nuw nsw i64 %39, 2
  %42 = add nsw i64 %37, %39
  %43 = shl nsw i64 %42, 2
  %44 = sub nsw i64 %36, %39
  %45 = shl nsw i64 %44, 2
  %46 = getelementptr i8, ptr %26, i64 %45
  %47 = getelementptr i8, ptr %26, i64 %41
  %48 = icmp ult i32 %6, 8
  %49 = and i64 %39, 2147483640
  %50 = icmp eq i64 %49, %39
  %51 = and i64 %39, 1
  %52 = icmp eq i64 %51, 0
  %53 = add nsw i64 %39, -1
  br label %54

54:                                               ; preds = %34, %150
  %55 = phi i64 [ 0, %34 ], [ %151, %150 ]
  br i1 %35, label %56, label %150

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 42, i64 %55
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  %61 = getelementptr float, ptr %58, i64 %37
  br i1 %48, label %105, label %62

62:                                               ; preds = %56
  %63 = getelementptr i8, ptr %58, i64 %43
  %64 = getelementptr i8, ptr %60, i64 %41
  %65 = icmp ult ptr %61, %40
  %66 = icmp ult ptr %46, %63
  %67 = and i1 %65, %66
  %68 = icmp ult ptr %61, %47
  %69 = icmp ult ptr %26, %63
  %70 = and i1 %68, %69
  %71 = or i1 %67, %70
  %72 = icmp ult ptr %61, %64
  %73 = icmp ult ptr %60, %63
  %74 = and i1 %72, %73
  %75 = or i1 %71, %74
  br i1 %75, label %105, label %76

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %102, %76 ], [ 0, %62 ]
  %78 = getelementptr float, ptr %61, i64 %77
  %79 = getelementptr float, ptr %78, i64 4
  %80 = load <4 x float>, ptr %78, align 4, !tbaa !136, !alias.scope !156, !noalias !159
  %81 = load <4 x float>, ptr %79, align 4, !tbaa !136, !alias.scope !156, !noalias !159
  %82 = getelementptr inbounds float, ptr %26, i64 %77
  %83 = getelementptr inbounds float, ptr %82, i64 4
  %84 = load <4 x float>, ptr %82, align 4, !tbaa !136, !alias.scope !163
  %85 = load <4 x float>, ptr %83, align 4, !tbaa !136, !alias.scope !163
  %86 = getelementptr inbounds float, ptr %60, i64 %77
  %87 = getelementptr inbounds float, ptr %86, i64 4
  %88 = load <4 x float>, ptr %86, align 4, !tbaa !136, !alias.scope !164
  %89 = load <4 x float>, ptr %87, align 4, !tbaa !136, !alias.scope !164
  %90 = xor i64 %77, -1
  %91 = getelementptr float, ptr %40, i64 %90
  %92 = getelementptr float, ptr %91, i64 -3
  %93 = getelementptr float, ptr %91, i64 -7
  %94 = load <4 x float>, ptr %92, align 4, !tbaa !136, !alias.scope !165
  %95 = shufflevector <4 x float> %94, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %96 = load <4 x float>, ptr %93, align 4, !tbaa !136, !alias.scope !165
  %97 = shufflevector <4 x float> %96, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %98 = fmul <4 x float> %88, %95
  %99 = fmul <4 x float> %89, %97
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %84, <4 x float> %98)
  %101 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %81, <4 x float> %85, <4 x float> %99)
  store <4 x float> %100, ptr %78, align 4, !tbaa !136, !alias.scope !156, !noalias !159
  store <4 x float> %101, ptr %79, align 4, !tbaa !136, !alias.scope !156, !noalias !159
  %102 = add nuw i64 %77, 8
  %103 = icmp eq i64 %102, %49
  br i1 %103, label %104, label %76, !llvm.loop !166

104:                                              ; preds = %76
  br i1 %50, label %150, label %105

105:                                              ; preds = %62, %56, %104
  %106 = phi i64 [ 0, %62 ], [ 0, %56 ], [ %49, %104 ]
  br i1 %52, label %120, label %107

107:                                              ; preds = %105
  %108 = getelementptr float, ptr %61, i64 %106
  %109 = load float, ptr %108, align 4, !tbaa !136
  %110 = getelementptr inbounds float, ptr %26, i64 %106
  %111 = load float, ptr %110, align 4, !tbaa !136
  %112 = getelementptr inbounds float, ptr %60, i64 %106
  %113 = load float, ptr %112, align 4, !tbaa !136
  %114 = xor i64 %106, -1
  %115 = getelementptr float, ptr %40, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !136
  %117 = fmul float %113, %116
  %118 = tail call float @llvm.fmuladd.f32(float %109, float %111, float %117)
  store float %118, ptr %108, align 4, !tbaa !136
  %119 = or disjoint i64 %106, 1
  br label %120

120:                                              ; preds = %107, %105
  %121 = phi i64 [ %106, %105 ], [ %119, %107 ]
  %122 = icmp eq i64 %106, %53
  br i1 %122, label %150, label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %148, %123 ], [ %121, %120 ]
  %125 = getelementptr float, ptr %61, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !136
  %127 = getelementptr inbounds float, ptr %26, i64 %124
  %128 = load float, ptr %127, align 4, !tbaa !136
  %129 = getelementptr inbounds float, ptr %60, i64 %124
  %130 = load float, ptr %129, align 4, !tbaa !136
  %131 = xor i64 %124, -1
  %132 = getelementptr float, ptr %40, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !136
  %134 = fmul float %130, %133
  %135 = tail call float @llvm.fmuladd.f32(float %126, float %128, float %134)
  store float %135, ptr %125, align 4, !tbaa !136
  %136 = add nuw nsw i64 %124, 1
  %137 = getelementptr float, ptr %61, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !136
  %139 = getelementptr inbounds float, ptr %26, i64 %136
  %140 = load float, ptr %139, align 4, !tbaa !136
  %141 = getelementptr inbounds float, ptr %60, i64 %136
  %142 = load float, ptr %141, align 4, !tbaa !136
  %143 = sub i64 -2, %124
  %144 = getelementptr float, ptr %40, i64 %143
  %145 = load float, ptr %144, align 4, !tbaa !136
  %146 = fmul float %142, %145
  %147 = tail call float @llvm.fmuladd.f32(float %138, float %140, float %146)
  store float %147, ptr %137, align 4, !tbaa !136
  %148 = add nuw nsw i64 %124, 2
  %149 = icmp eq i64 %148, %39
  br i1 %149, label %150, label %123, !llvm.loop !167

150:                                              ; preds = %120, %123, %104, %54
  %151 = add nuw nsw i64 %55, 1
  %152 = icmp eq i64 %151, %38
  br i1 %152, label %153, label %54, !llvm.loop !168

153:                                              ; preds = %150, %8
  %154 = phi i32 [ %10, %8 ], [ %30, %150 ]
  %155 = sub i32 %1, %3
  store i32 %155, ptr %5, align 8, !tbaa !62
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %242

157:                                              ; preds = %153
  %158 = icmp slt i32 %3, %1
  %159 = sext i32 %3 to i64
  %160 = zext nneg i32 %154 to i64
  %161 = zext i32 %155 to i64
  %162 = icmp ult i32 %155, 8
  %163 = shl nsw i64 %159, 2
  %164 = and i64 %161, 4294967288
  %165 = add nsw i64 %164, %159
  %166 = icmp eq i64 %164, %161
  %167 = and i64 %161, 3
  %168 = icmp eq i64 %167, 0
  br label %169

169:                                              ; preds = %157, %239
  %170 = phi i64 [ 0, %157 ], [ %240, %239 ]
  br i1 %158, label %171, label %239

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %170
  %173 = load ptr, ptr %172, align 8, !tbaa !16
  %174 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 42, i64 %170
  %175 = load ptr, ptr %174, align 8, !tbaa !16
  br i1 %162, label %195, label %176

176:                                              ; preds = %171
  %177 = ptrtoint ptr %175 to i64
  %178 = ptrtoint ptr %173 to i64
  %179 = add i64 %163, %178
  %180 = sub i64 %177, %179
  %181 = icmp ult i64 %180, 32
  br i1 %181, label %195, label %182

182:                                              ; preds = %176
  %183 = getelementptr float, ptr %173, i64 %159
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %192, %184 ]
  %186 = getelementptr float, ptr %183, i64 %185
  %187 = getelementptr inbounds float, ptr %186, i64 4
  %188 = load <4 x float>, ptr %186, align 4, !tbaa !136
  %189 = load <4 x float>, ptr %187, align 4, !tbaa !136
  %190 = getelementptr inbounds float, ptr %175, i64 %185
  %191 = getelementptr inbounds float, ptr %190, i64 4
  store <4 x float> %188, ptr %190, align 4, !tbaa !136
  store <4 x float> %189, ptr %191, align 4, !tbaa !136
  %192 = add nuw i64 %185, 8
  %193 = icmp eq i64 %192, %164
  br i1 %193, label %194, label %184, !llvm.loop !169

194:                                              ; preds = %184
  br i1 %166, label %239, label %195

195:                                              ; preds = %176, %171, %194
  %196 = phi i64 [ 0, %176 ], [ 0, %171 ], [ %164, %194 ]
  %197 = phi i64 [ %159, %176 ], [ %159, %171 ], [ %165, %194 ]
  br i1 %168, label %209, label %198

198:                                              ; preds = %195, %198
  %199 = phi i64 [ %205, %198 ], [ %196, %195 ]
  %200 = phi i64 [ %206, %198 ], [ %197, %195 ]
  %201 = phi i64 [ %207, %198 ], [ 0, %195 ]
  %202 = getelementptr inbounds float, ptr %173, i64 %200
  %203 = load float, ptr %202, align 4, !tbaa !136
  %204 = getelementptr inbounds float, ptr %175, i64 %199
  store float %203, ptr %204, align 4, !tbaa !136
  %205 = add nuw nsw i64 %199, 1
  %206 = add nsw i64 %200, 1
  %207 = add i64 %201, 1
  %208 = icmp eq i64 %207, %167
  br i1 %208, label %209, label %198, !llvm.loop !170

209:                                              ; preds = %198, %195
  %210 = phi i64 [ %196, %195 ], [ %205, %198 ]
  %211 = phi i64 [ %197, %195 ], [ %206, %198 ]
  %212 = sub nsw i64 %196, %161
  %213 = icmp ugt i64 %212, -4
  br i1 %213, label %239, label %214

214:                                              ; preds = %209
  %215 = getelementptr float, ptr %173, i64 1
  %216 = getelementptr float, ptr %175, i64 1
  %217 = getelementptr float, ptr %173, i64 2
  %218 = getelementptr float, ptr %175, i64 2
  %219 = getelementptr float, ptr %173, i64 3
  %220 = getelementptr float, ptr %175, i64 3
  br label %221

221:                                              ; preds = %221, %214
  %222 = phi i64 [ %210, %214 ], [ %236, %221 ]
  %223 = phi i64 [ %211, %214 ], [ %237, %221 ]
  %224 = getelementptr inbounds float, ptr %173, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !136
  %226 = getelementptr inbounds float, ptr %175, i64 %222
  store float %225, ptr %226, align 4, !tbaa !136
  %227 = getelementptr float, ptr %215, i64 %223
  %228 = load float, ptr %227, align 4, !tbaa !136
  %229 = getelementptr float, ptr %216, i64 %222
  store float %228, ptr %229, align 4, !tbaa !136
  %230 = getelementptr float, ptr %217, i64 %223
  %231 = load float, ptr %230, align 4, !tbaa !136
  %232 = getelementptr float, ptr %218, i64 %222
  store float %231, ptr %232, align 4, !tbaa !136
  %233 = getelementptr float, ptr %219, i64 %223
  %234 = load float, ptr %233, align 4, !tbaa !136
  %235 = getelementptr float, ptr %220, i64 %222
  store float %234, ptr %235, align 4, !tbaa !136
  %236 = add nuw nsw i64 %222, 4
  %237 = add nsw i64 %223, 4
  %238 = icmp eq i64 %236, %161
  br i1 %238, label %239, label %221, !llvm.loop !171

239:                                              ; preds = %209, %221, %194, %169
  %240 = add nuw nsw i64 %170, 1
  %241 = icmp eq i64 %240, %160
  br i1 %241, label %242, label %169, !llvm.loop !172

242:                                              ; preds = %239, %153
  br i1 %7, label %249, label %243

243:                                              ; preds = %32, %242
  %244 = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %245 = sub nsw i32 %244, %2
  %246 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 68
  %247 = load i32, ptr %246, align 4, !tbaa !66
  %248 = add i32 %247, %245
  store i32 %248, ptr %246, align 4, !tbaa !66
  br label %249

249:                                              ; preds = %18, %24, %242, %243
  %250 = phi i32 [ %245, %243 ], [ 0, %242 ], [ 0, %24 ], [ 0, %18 ]
  ret i32 %250
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stb_vorbis_open_pushdata(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.stb_vorbis, align 8
  call void @llvm.lifetime.start.p0(i64 1904, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %6, i8 0, i64 1904, i1 false)
  %7 = icmp eq ptr %4, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !173
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !126
  %12 = and i32 %11, -8
  store i32 %12, ptr %10, align 8, !tbaa !126
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 21
  store i32 %12, ptr %13, align 4, !tbaa !127
  br label %14

14:                                               ; preds = %5, %8
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 22
  store i32 0, ptr %15, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 23
  store i32 0, ptr %16, align 4, !tbaa !61
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 11
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 28
  store ptr null, ptr %18, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 69
  store i32 -1, ptr %19, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 10
  store i32 0, ptr %20, align 4, !tbaa !47
  %21 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 8
  store ptr null, ptr %21, align 8, !tbaa !48
  store ptr %0, ptr %17, align 8, !tbaa !90
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 13
  store ptr %23, ptr %24, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 15
  store i8 1, ptr %25, align 4, !tbaa !69
  %26 = call fastcc i32 @start_decoder(ptr noundef nonnull %6)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load i32, ptr %15, align 8, !tbaa !94
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %16, align 4
  %32 = select i1 %30, i32 %31, i32 1
  store i32 %32, ptr %3, align 4, !tbaa !54
  call fastcc void @vorbis_deinit(ptr noundef nonnull %6)
  br label %63

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !174
  %36 = add i32 %35, 1904
  store i32 %36, ptr %34, align 8, !tbaa !174
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 20
  %42 = load i32, ptr %41, align 8, !tbaa !175
  %43 = add nsw i32 %42, 1904
  %44 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 21
  %45 = load i32, ptr %44, align 4, !tbaa !127
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %40
  %48 = sext i32 %42 to i64
  %49 = getelementptr inbounds i8, ptr %38, i64 %48
  store i32 %43, ptr %41, align 8, !tbaa !175
  br label %52

50:                                               ; preds = %33
  %51 = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #29
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi ptr [ %49, %47 ], [ %51, %50 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %53, ptr noundef nonnull align 8 dereferenceable(1904) %6, i64 1904, i1 false), !tbaa.struct !176
  %56 = getelementptr inbounds %struct.stb_vorbis, ptr %53, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  %58 = ptrtoint ptr %57 to i64
  %59 = ptrtoint ptr %0 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %2, align 4, !tbaa !54
  store i32 0, ptr %3, align 4, !tbaa !54
  br label %63

62:                                               ; preds = %40, %52
  call fastcc void @vorbis_deinit(ptr noundef nonnull %6)
  br label %63

63:                                               ; preds = %62, %55, %28
  %64 = phi ptr [ %53, %55 ], [ null, %62 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 1904, ptr nonnull %6) #27
  ret ptr %64
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @start_decoder(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 4
  %3 = alloca [250 x %struct.stbv__floor_ordering], align 16
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #27
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  store i8 1, ptr %5, align 1, !tbaa !65
  %6 = tail call fastcc i32 @start_page(ptr noundef %0), !range !103
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %1777, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %10 = load i8, ptr %9, align 1, !tbaa !153
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %15, align 4
  br label %1777

16:                                               ; preds = %8
  %17 = and i32 %11, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %20, align 4
  br label %1777

21:                                               ; preds = %16
  %22 = and i32 %11, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %25, align 4
  br label %1777

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %28 = load i32, ptr %27, align 8, !tbaa !99
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %31, align 4
  br label %1777

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55
  %34 = load i8, ptr %33, align 4, !tbaa !75
  switch i8 %34, label %60 [
    i8 30, label %62
    i8 64, label %35
  ]

35:                                               ; preds = %32
  %36 = call fastcc i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 6), !range !103
  %37 = icmp ne i32 %36, 0
  %38 = load <4 x i8>, ptr %2, align 4
  %39 = freeze <4 x i8> %38
  %40 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 4
  %41 = load i8, ptr %40, align 4
  %42 = freeze i8 %41
  %43 = icmp eq i8 %42, 101
  %44 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 5
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 97
  %47 = bitcast <4 x i8> %39 to i32
  %48 = icmp eq i32 %47, 1752394086
  %49 = and i1 %48, %43
  %50 = and i1 %49, %37
  %51 = select i1 %50, i1 %46, i1 false
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %54 = icmp eq i8 %53, 100
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 38, ptr %59, align 4
  br label %1777

60:                                               ; preds = %32, %55, %52, %35
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %61, align 4
  br label %1777

62:                                               ; preds = %32
  %63 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %64 = icmp eq i8 %63, 1
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %66, align 4
  br label %1777

67:                                               ; preds = %62
  %68 = call fastcc i32 @getn(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 6), !range !103
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 10, ptr %71, align 4
  br label %1777

72:                                               ; preds = %67
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @vorbis_validate.vorbis, i64 6)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %76, align 4
  br label %1777

77:                                               ; preds = %72
  %78 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %81, align 4
  br label %1777

82:                                               ; preds = %77
  %83 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  store i32 %84, ptr %85, align 4, !tbaa !45
  %86 = icmp eq i8 %83, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %88, align 4
  br label %1777

89:                                               ; preds = %82
  %90 = icmp ugt i8 %83, 16
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 5, ptr %92, align 4
  br label %1777

93:                                               ; preds = %89
  %94 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  store i32 %94, ptr %0, align 8, !tbaa !51
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %97, align 4
  br label %1777

98:                                               ; preds = %93
  %99 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %100 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %101 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %102 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 15
  %105 = lshr i32 %103, 4
  %106 = shl nuw nsw i32 1, %104
  %107 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  store i32 %106, ptr %107, align 8, !tbaa !155
  %108 = shl nuw nsw i32 1, %105
  %109 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 26
  store i32 %108, ptr %109, align 4, !tbaa !55
  %110 = add nsw i32 %104, -14
  %111 = icmp ult i32 %110, -8
  br i1 %111, label %112, label %114

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %113, align 4
  br label %1777

114:                                              ; preds = %98
  %115 = add i8 %102, 32
  %116 = icmp sgt i8 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %118, align 4
  br label %1777

119:                                              ; preds = %114
  %120 = icmp ugt i32 %104, %105
  br i1 %120, label %121, label %123

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %122, align 4
  br label %1777

123:                                              ; preds = %119
  %124 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 34, ptr %128, align 4
  br label %1777

129:                                              ; preds = %123
  %130 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %1777, label %132

132:                                              ; preds = %129
  %133 = tail call fastcc i32 @start_packet(ptr noundef nonnull %0), !range !103
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %1777, label %135

135:                                              ; preds = %132
  %136 = tail call fastcc i32 @next_segment(ptr noundef nonnull %0), !range !177
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %1777, label %138

138:                                              ; preds = %135
  %139 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %140 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  store i32 0, ptr %140, align 8, !tbaa !93
  %141 = icmp eq i32 %139, 3
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %144 = trunc i32 %143 to i8
  store i8 %144, ptr %2, align 4, !tbaa !75
  %145 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 1
  store i8 %146, ptr %147, align 1, !tbaa !75
  %148 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 2
  store i8 %149, ptr %150, align 2, !tbaa !75
  %151 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 3
  store i8 %152, ptr %153, align 1, !tbaa !75
  %154 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 4
  store i8 %155, ptr %156, align 4, !tbaa !75
  %157 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 5
  store i8 %158, ptr %159, align 1, !tbaa !75
  %160 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @vorbis_validate.vorbis, i64 6)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %164

162:                                              ; preds = %138
  %163 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %163, align 4
  br label %1777

164:                                              ; preds = %142
  %165 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %165, align 4
  br label %1777

166:                                              ; preds = %142
  %167 = tail call fastcc i32 @get32_packet(ptr noundef nonnull %0)
  %168 = add nsw i32 %167, 1
  %169 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %168)
  %170 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 5
  store ptr %169, ptr %170, align 8, !tbaa !13
  %171 = icmp eq ptr %169, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = icmp sgt i32 %167, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %172
  %175 = zext nneg i32 %167 to i64
  br label %178

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %177, align 4
  br label %1777

178:                                              ; preds = %174, %178
  %179 = phi i64 [ 0, %174 ], [ %184, %178 ]
  %180 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %181 = trunc i32 %180 to i8
  %182 = load ptr, ptr %170, align 8, !tbaa !13
  %183 = getelementptr inbounds i8, ptr %182, i64 %179
  store i8 %181, ptr %183, align 1, !tbaa !75
  %184 = add nuw nsw i64 %179, 1
  %185 = icmp eq i64 %184, %175
  br i1 %185, label %186, label %178, !llvm.loop !178

186:                                              ; preds = %178
  %187 = load ptr, ptr %170, align 8, !tbaa !13
  br label %188

188:                                              ; preds = %186, %172
  %189 = phi ptr [ %187, %186 ], [ %169, %172 ]
  %190 = sext i32 %167 to i64
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  store i8 0, ptr %191, align 1, !tbaa !75
  %192 = tail call fastcc i32 @get32_packet(ptr noundef nonnull %0)
  %193 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 6
  store i32 %192, ptr %193, align 8, !tbaa !14
  %194 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 7
  store ptr null, ptr %194, align 8, !tbaa !15
  %195 = icmp sgt i32 %192, 0
  br i1 %195, label %196, label %244

196:                                              ; preds = %188
  %197 = shl i32 %192, 3
  %198 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %197)
  store ptr %198, ptr %194, align 8, !tbaa !15
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %201, align 4
  br label %1777

202:                                              ; preds = %196
  %203 = load i32, ptr %193, align 8, !tbaa !14
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %244

205:                                              ; preds = %202, %236
  %206 = phi i64 [ %240, %236 ], [ 0, %202 ]
  %207 = tail call fastcc i32 @get32_packet(ptr noundef nonnull %0)
  %208 = add nsw i32 %207, 1
  %209 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %208)
  %210 = load ptr, ptr %194, align 8, !tbaa !15
  %211 = getelementptr inbounds ptr, ptr %210, i64 %206
  store ptr %209, ptr %211, align 8, !tbaa !16
  %212 = load ptr, ptr %194, align 8, !tbaa !15
  %213 = getelementptr inbounds ptr, ptr %212, i64 %206
  %214 = load ptr, ptr %213, align 8, !tbaa !16
  %215 = icmp eq ptr %214, null
  br i1 %215, label %220, label %216

216:                                              ; preds = %205
  %217 = icmp sgt i32 %207, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %216
  %219 = zext nneg i32 %207 to i64
  br label %222

220:                                              ; preds = %205
  %221 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %221, align 4
  br label %1777

222:                                              ; preds = %218, %222
  %223 = phi i64 [ 0, %218 ], [ %230, %222 ]
  %224 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %225 = trunc i32 %224 to i8
  %226 = load ptr, ptr %194, align 8, !tbaa !15
  %227 = getelementptr inbounds ptr, ptr %226, i64 %206
  %228 = load ptr, ptr %227, align 8, !tbaa !16
  %229 = getelementptr inbounds i8, ptr %228, i64 %223
  store i8 %225, ptr %229, align 1, !tbaa !75
  %230 = add nuw nsw i64 %223, 1
  %231 = icmp eq i64 %230, %219
  br i1 %231, label %232, label %222, !llvm.loop !179

232:                                              ; preds = %222
  %233 = load ptr, ptr %194, align 8, !tbaa !15
  %234 = getelementptr inbounds ptr, ptr %233, i64 %206
  %235 = load ptr, ptr %234, align 8, !tbaa !16
  br label %236

236:                                              ; preds = %232, %216
  %237 = phi ptr [ %235, %232 ], [ %214, %216 ]
  %238 = sext i32 %207 to i64
  %239 = getelementptr inbounds i8, ptr %237, i64 %238
  store i8 0, ptr %239, align 1, !tbaa !75
  %240 = add nuw nsw i64 %206, 1
  %241 = load i32, ptr %193, align 8, !tbaa !14
  %242 = sext i32 %241 to i64
  %243 = icmp slt i64 %240, %242
  br i1 %243, label %205, label %244, !llvm.loop !180

244:                                              ; preds = %236, %188, %202
  %245 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %249, align 4
  br label %1777

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %252 = load i8, ptr %251, align 4, !tbaa !116
  %253 = zext i8 %252 to i32
  tail call fastcc void @skip(ptr noundef nonnull %0, i32 noundef %253)
  store i8 0, ptr %251, align 4, !tbaa !116
  br label %254

254:                                              ; preds = %254, %250
  %255 = tail call fastcc i32 @next_segment(ptr noundef nonnull %0), !range !177
  tail call fastcc void @skip(ptr noundef nonnull %0, i32 noundef %255)
  store i8 0, ptr %251, align 4, !tbaa !116
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %254, !llvm.loop !181

257:                                              ; preds = %254
  %258 = tail call fastcc i32 @start_packet(ptr noundef nonnull %0), !range !103
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %1777, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %262 = load i8, ptr %261, align 4, !tbaa !69
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %260
  %265 = tail call fastcc i32 @is_whole_packet_present(ptr noundef nonnull %0)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  %269 = load i32, ptr %268, align 4, !tbaa !61
  %270 = icmp eq i32 %269, 21
  br i1 %270, label %271, label %1777

271:                                              ; preds = %267
  store i32 20, ptr %268, align 4, !tbaa !61
  br label %1777

272:                                              ; preds = %264, %260
  tail call fastcc void @crc32_init()
  %273 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %274 = icmp eq i32 %273, 5
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %277 = trunc i32 %276 to i8
  store i8 %277, ptr %2, align 4, !tbaa !75
  %278 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %279 = trunc i32 %278 to i8
  store i8 %279, ptr %147, align 1, !tbaa !75
  %280 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %281 = trunc i32 %280 to i8
  store i8 %281, ptr %150, align 2, !tbaa !75
  %282 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %283 = trunc i32 %282 to i8
  store i8 %283, ptr %153, align 1, !tbaa !75
  %284 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %285 = trunc i32 %284 to i8
  store i8 %285, ptr %156, align 4, !tbaa !75
  %286 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %140, align 8, !tbaa !93
  %287 = trunc i32 %286 to i8
  store i8 %287, ptr %159, align 1, !tbaa !75
  %288 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @vorbis_validate.vorbis, i64 6)
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %292

290:                                              ; preds = %272
  %291 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %291, align 4
  br label %1777

292:                                              ; preds = %275
  %293 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %293, align 4
  br label %1777

294:                                              ; preds = %275
  %295 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %296 = add i32 %295, 1
  %297 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 27
  store i32 %296, ptr %297, align 8, !tbaa !31
  %298 = mul i32 %296, 2120
  %299 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %298)
  %300 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 28
  store ptr %299, ptr %300, align 8, !tbaa !23
  %301 = icmp eq ptr %299, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %303, align 4
  br label %1777

304:                                              ; preds = %294
  %305 = load i32, ptr %297, align 8, !tbaa !31
  %306 = sext i32 %305 to i64
  %307 = mul nsw i64 %306, 2120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %299, i8 0, i64 %307, i1 false)
  %308 = load i32, ptr %297, align 8, !tbaa !31
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %903

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 4
  %312 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %313 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  br label %314

314:                                              ; preds = %310, %898
  %315 = phi i64 [ 0, %310 ], [ %899, %898 ]
  %316 = load ptr, ptr %300, align 8, !tbaa !23
  %317 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315
  %318 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %319 = and i32 %318, 255
  %320 = icmp eq i32 %319, 66
  br i1 %320, label %323, label %321

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %322, align 4
  br label %1777

323:                                              ; preds = %314
  %324 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %325 = and i32 %324, 255
  %326 = icmp eq i32 %325, 67
  br i1 %326, label %329, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %328, align 4
  br label %1777

329:                                              ; preds = %323
  %330 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %331 = and i32 %330, 255
  %332 = icmp eq i32 %331, 86
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %334, align 4
  br label %1777

335:                                              ; preds = %329
  %336 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %337 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %338 = shl i32 %337, 8
  %339 = and i32 %336, 255
  %340 = or disjoint i32 %338, %339
  store i32 %340, ptr %317, align 8, !tbaa !182
  %341 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %342 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %343 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %344 = shl i32 %343, 16
  %345 = shl i32 %342, 8
  %346 = and i32 %345, 65280
  %347 = or disjoint i32 %344, %346
  %348 = and i32 %341, 255
  %349 = or disjoint i32 %347, %348
  %350 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 1
  store i32 %349, ptr %350, align 4, !tbaa !25
  %351 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %335
  %354 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  br label %355

355:                                              ; preds = %335, %353
  %356 = phi i32 [ %354, %353 ], [ 0, %335 ]
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 8
  store i8 %357, ptr %358, align 1, !tbaa !118
  %359 = load i32, ptr %317, align 8, !tbaa !182
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %355
  %362 = load i32, ptr %350, align 4, !tbaa !25
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %365, align 4
  br label %1777

366:                                              ; preds = %361, %355
  %367 = icmp eq i8 %357, 0
  %368 = load i32, ptr %350, align 4, !tbaa !25
  br i1 %367, label %371, label %369

369:                                              ; preds = %366
  %370 = tail call fastcc ptr @setup_temp_malloc(ptr noundef nonnull %0, i32 noundef %368)
  br label %374

371:                                              ; preds = %366
  %372 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %368)
  %373 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 2
  store ptr %372, ptr %373, align 8, !tbaa !32
  br label %374

374:                                              ; preds = %371, %369
  %375 = phi ptr [ %370, %369 ], [ %372, %371 ]
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %378, align 4
  br label %1777

379:                                              ; preds = %374
  br i1 %352, label %380, label %383

380:                                              ; preds = %379
  %381 = load i32, ptr %350, align 4, !tbaa !25
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %411, label %436

383:                                              ; preds = %379
  %384 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  %385 = load i32, ptr %350, align 4, !tbaa !25
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %436

387:                                              ; preds = %383, %404
  %388 = phi i32 [ %409, %404 ], [ %385, %383 ]
  %389 = phi i32 [ %391, %404 ], [ %384, %383 ]
  %390 = phi i32 [ %399, %404 ], [ 0, %383 ]
  %391 = add i32 %389, 1
  %392 = sub nsw i32 %388, %390
  %393 = tail call fastcc i32 @ilog(i32 noundef %392), !range !183
  %394 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %393)
  %395 = icmp sgt i32 %391, 31
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %397, align 4
  br label %1777

398:                                              ; preds = %387
  %399 = add nsw i32 %394, %390
  %400 = load i32, ptr %350, align 4, !tbaa !25
  %401 = icmp sgt i32 %399, %400
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %403, align 4
  br label %1777

404:                                              ; preds = %398
  %405 = sext i32 %390 to i64
  %406 = getelementptr inbounds i8, ptr %375, i64 %405
  %407 = trunc i32 %391 to i8
  %408 = sext i32 %394 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %406, i8 %407, i64 %408, i1 false)
  %409 = load i32, ptr %350, align 4, !tbaa !25
  %410 = icmp slt i32 %399, %409
  br i1 %410, label %387, label %436, !llvm.loop !184

411:                                              ; preds = %380, %430
  %412 = phi i64 [ %432, %430 ], [ 0, %380 ]
  %413 = phi i32 [ %431, %430 ], [ 0, %380 ]
  %414 = load i8, ptr %358, align 1, !tbaa !118
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %419, label %416

416:                                              ; preds = %411
  %417 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %411, %416
  %420 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  %421 = trunc i32 %420 to i8
  %422 = add i8 %421, 1
  %423 = getelementptr inbounds i8, ptr %375, i64 %412
  store i8 %422, ptr %423, align 1, !tbaa !75
  %424 = add nsw i32 %413, 1
  %425 = icmp eq i8 %422, 32
  br i1 %425, label %428, label %430

426:                                              ; preds = %416
  %427 = getelementptr inbounds i8, ptr %375, i64 %412
  store i8 -1, ptr %427, align 1, !tbaa !75
  br label %430

428:                                              ; preds = %419
  %429 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %429, align 4
  br label %1777

430:                                              ; preds = %419, %426
  %431 = phi i32 [ %413, %426 ], [ %424, %419 ]
  %432 = add nuw nsw i64 %412, 1
  %433 = load i32, ptr %350, align 4, !tbaa !25
  %434 = sext i32 %433 to i64
  %435 = icmp slt i64 %432, %434
  br i1 %435, label %411, label %436, !llvm.loop !185

436:                                              ; preds = %404, %430, %383, %380
  %437 = phi i32 [ %381, %380 ], [ %385, %383 ], [ %433, %430 ], [ %409, %404 ]
  %438 = phi i32 [ 0, %380 ], [ 0, %383 ], [ %431, %430 ], [ 0, %404 ]
  %439 = load i8, ptr %358, align 1, !tbaa !118
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %468, label %441

441:                                              ; preds = %436
  %442 = ashr i32 %437, 2
  %443 = icmp slt i32 %438, %442
  br i1 %443, label %502, label %444

444:                                              ; preds = %441
  %445 = load i32, ptr %311, align 8, !tbaa !186
  %446 = icmp sgt i32 %437, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32 %437, ptr %311, align 8, !tbaa !186
  br label %448

448:                                              ; preds = %447, %444
  %449 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %437)
  %450 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 2
  store ptr %449, ptr %450, align 8, !tbaa !32
  %451 = icmp eq ptr %449, null
  br i1 %451, label %452, label %454

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %453, align 4
  br label %1777

454:                                              ; preds = %448
  %455 = load i32, ptr %350, align 4, !tbaa !25
  %456 = sext i32 %455 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %449, ptr nonnull align 1 %375, i64 %456, i1 false)
  %457 = load ptr, ptr %312, align 8, !tbaa !5
  %458 = icmp eq ptr %457, null
  br i1 %458, label %465, label %459

459:                                              ; preds = %454
  %460 = load i32, ptr %350, align 4, !tbaa !25
  %461 = add nsw i32 %460, 7
  %462 = and i32 %461, -8
  %463 = load i32, ptr %313, align 4, !tbaa !127
  %464 = add nsw i32 %462, %463
  store i32 %464, ptr %313, align 4, !tbaa !127
  br label %466

465:                                              ; preds = %454
  tail call void @free(ptr noundef %375) #27
  br label %466

466:                                              ; preds = %459, %465
  %467 = load ptr, ptr %450, align 8, !tbaa !32
  store i8 0, ptr %358, align 1, !tbaa !118
  br label %468

468:                                              ; preds = %466, %436
  %469 = phi ptr [ %375, %436 ], [ %467, %466 ]
  %470 = load i32, ptr %350, align 4, !tbaa !25
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %516

472:                                              ; preds = %468
  %473 = zext nneg i32 %470 to i64
  %474 = icmp ult i32 %470, 8
  br i1 %474, label %499, label %475

475:                                              ; preds = %472
  %476 = and i64 %473, 2147483640
  br label %477

477:                                              ; preds = %477, %475
  %478 = phi i64 [ 0, %475 ], [ %493, %477 ]
  %479 = phi <4 x i32> [ zeroinitializer, %475 ], [ %491, %477 ]
  %480 = phi <4 x i32> [ zeroinitializer, %475 ], [ %492, %477 ]
  %481 = getelementptr inbounds i8, ptr %469, i64 %478
  %482 = getelementptr inbounds i8, ptr %481, i64 4
  %483 = load <4 x i8>, ptr %481, align 1, !tbaa !75
  %484 = load <4 x i8>, ptr %482, align 1, !tbaa !75
  %485 = add <4 x i8> %483, <i8 -11, i8 -11, i8 -11, i8 -11>
  %486 = add <4 x i8> %484, <i8 -11, i8 -11, i8 -11, i8 -11>
  %487 = icmp ult <4 x i8> %485, <i8 -12, i8 -12, i8 -12, i8 -12>
  %488 = icmp ult <4 x i8> %486, <i8 -12, i8 -12, i8 -12, i8 -12>
  %489 = zext <4 x i1> %487 to <4 x i32>
  %490 = zext <4 x i1> %488 to <4 x i32>
  %491 = add <4 x i32> %479, %489
  %492 = add <4 x i32> %480, %490
  %493 = add nuw i64 %478, 8
  %494 = icmp eq i64 %493, %476
  br i1 %494, label %495, label %477, !llvm.loop !187

495:                                              ; preds = %477
  %496 = add <4 x i32> %492, %491
  %497 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %496)
  %498 = icmp eq i64 %476, %473
  br i1 %498, label %516, label %499

499:                                              ; preds = %472, %495
  %500 = phi i64 [ 0, %472 ], [ %476, %495 ]
  %501 = phi i32 [ 0, %472 ], [ %497, %495 ]
  br label %505

502:                                              ; preds = %441
  %503 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 15
  store i32 %438, ptr %503, align 8, !tbaa !188
  %504 = icmp eq i32 %438, 0
  br i1 %504, label %550, label %527

505:                                              ; preds = %499, %505
  %506 = phi i64 [ %514, %505 ], [ %500, %499 ]
  %507 = phi i32 [ %513, %505 ], [ %501, %499 ]
  %508 = getelementptr inbounds i8, ptr %469, i64 %506
  %509 = load i8, ptr %508, align 1, !tbaa !75
  %510 = add i8 %509, -11
  %511 = icmp ult i8 %510, -12
  %512 = zext i1 %511 to i32
  %513 = add nuw nsw i32 %507, %512
  %514 = add nuw nsw i64 %506, 1
  %515 = icmp eq i64 %514, %473
  br i1 %515, label %516, label %505, !llvm.loop !189

516:                                              ; preds = %505, %495, %468
  %517 = phi i32 [ 0, %468 ], [ %497, %495 ], [ %513, %505 ]
  %518 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 15
  store i32 %517, ptr %518, align 8, !tbaa !188
  %519 = shl i32 %470, 2
  %520 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %519)
  %521 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 11
  store ptr %520, ptr %521, align 8, !tbaa !34
  %522 = icmp eq ptr %520, null
  br i1 %522, label %525, label %523

523:                                              ; preds = %516
  %524 = load i32, ptr %350, align 4, !tbaa !25
  br label %559

525:                                              ; preds = %516
  %526 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %526, align 4
  br label %1777

527:                                              ; preds = %502
  %528 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %438)
  %529 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 2
  store ptr %528, ptr %529, align 8, !tbaa !32
  %530 = icmp eq ptr %528, null
  br i1 %530, label %531, label %533

531:                                              ; preds = %527
  %532 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %532, align 4
  br label %1777

533:                                              ; preds = %527
  %534 = load i32, ptr %503, align 8, !tbaa !188
  %535 = shl i32 %534, 2
  %536 = tail call fastcc ptr @setup_temp_malloc(ptr noundef nonnull %0, i32 noundef %535)
  %537 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 11
  store ptr %536, ptr %537, align 8, !tbaa !34
  %538 = icmp eq ptr %536, null
  br i1 %538, label %539, label %541

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %540, align 4
  br label %1777

541:                                              ; preds = %533
  %542 = load i32, ptr %503, align 8, !tbaa !188
  %543 = shl i32 %542, 2
  %544 = tail call fastcc ptr @setup_temp_malloc(ptr noundef nonnull %0, i32 noundef %543)
  %545 = icmp eq ptr %544, null
  br i1 %545, label %548, label %546

546:                                              ; preds = %541
  %547 = load i32, ptr %503, align 8, !tbaa !188
  br label %550

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %549, align 4
  br label %1777

550:                                              ; preds = %546, %502
  %551 = phi i32 [ %547, %546 ], [ 0, %502 ]
  %552 = phi ptr [ %544, %546 ], [ null, %502 ]
  %553 = load i32, ptr %350, align 4, !tbaa !25
  %554 = shl i32 %551, 3
  %555 = add i32 %554, %553
  %556 = load i32, ptr %311, align 8, !tbaa !186
  %557 = icmp ugt i32 %555, %556
  br i1 %557, label %558, label %559

558:                                              ; preds = %550
  store i32 %555, ptr %311, align 8, !tbaa !186
  br label %559

559:                                              ; preds = %523, %558, %550
  %560 = phi ptr [ %469, %523 ], [ %375, %550 ], [ %375, %558 ]
  %561 = phi i32 [ %524, %523 ], [ %553, %550 ], [ %553, %558 ]
  %562 = phi ptr [ %518, %523 ], [ %503, %550 ], [ %503, %558 ]
  %563 = phi ptr [ null, %523 ], [ %552, %550 ], [ %552, %558 ]
  %564 = tail call fastcc i32 @compute_codewords(ptr noundef nonnull %317, ptr noundef %560, i32 noundef %561, ptr noundef %563)
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %575

566:                                              ; preds = %559
  %567 = load i8, ptr %358, align 1, !tbaa !118
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %573, label %569

569:                                              ; preds = %566
  %570 = load ptr, ptr %312, align 8, !tbaa !5
  %571 = icmp eq ptr %570, null
  br i1 %571, label %572, label %573

572:                                              ; preds = %569
  tail call void @free(ptr noundef %563) #27
  br label %573

573:                                              ; preds = %569, %572, %566
  %574 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %574, align 4
  br label %1777

575:                                              ; preds = %559
  %576 = load i32, ptr %562, align 8, !tbaa !188
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %597, label %578

578:                                              ; preds = %575
  %579 = shl i32 %576, 2
  %580 = add i32 %579, 4
  %581 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %580)
  %582 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 13
  store ptr %581, ptr %582, align 8, !tbaa !35
  %583 = icmp eq ptr %581, null
  br i1 %583, label %584, label %586

584:                                              ; preds = %578
  %585 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %585, align 4
  br label %1777

586:                                              ; preds = %578
  %587 = load i32, ptr %562, align 8, !tbaa !188
  %588 = shl i32 %587, 2
  %589 = add i32 %588, 4
  %590 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %589)
  %591 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 14
  store ptr %590, ptr %591, align 8, !tbaa !36
  %592 = icmp eq ptr %590, null
  br i1 %592, label %593, label %595

593:                                              ; preds = %586
  %594 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %594, align 4
  br label %1777

595:                                              ; preds = %586
  %596 = getelementptr inbounds i32, ptr %590, i64 1
  store ptr %596, ptr %591, align 8, !tbaa !36
  store i32 -1, ptr %590, align 4, !tbaa !54
  tail call fastcc void @compute_sorted_huffman(ptr noundef nonnull %317, ptr noundef %560, ptr noundef %563)
  br label %597

597:                                              ; preds = %595, %575
  %598 = load i8, ptr %358, align 1, !tbaa !118
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %637, label %600

600:                                              ; preds = %597
  %601 = load ptr, ptr %312, align 8, !tbaa !5
  %602 = icmp eq ptr %601, null
  br i1 %602, label %611, label %603

603:                                              ; preds = %600
  %604 = load i32, ptr %562, align 8, !tbaa !188
  %605 = shl i32 %604, 2
  %606 = add nsw i32 %605, 7
  %607 = and i32 %606, -8
  %608 = load i32, ptr %313, align 4, !tbaa !127
  %609 = add nsw i32 %607, %608
  store i32 %609, ptr %313, align 4, !tbaa !127
  %610 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 11
  br label %615

611:                                              ; preds = %600
  tail call void @free(ptr noundef %563) #27
  %612 = load ptr, ptr %312, align 8, !tbaa !5
  %613 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 11
  %614 = icmp eq ptr %612, null
  br i1 %614, label %623, label %615

615:                                              ; preds = %611, %603
  %616 = phi ptr [ %610, %603 ], [ %613, %611 ]
  %617 = load i32, ptr %562, align 8, !tbaa !188
  %618 = shl i32 %617, 2
  %619 = add nsw i32 %618, 7
  %620 = and i32 %619, -8
  %621 = load i32, ptr %313, align 4, !tbaa !127
  %622 = add nsw i32 %620, %621
  store i32 %622, ptr %313, align 4, !tbaa !127
  br label %627

623:                                              ; preds = %611
  %624 = load ptr, ptr %613, align 8, !tbaa !34
  tail call void @free(ptr noundef %624) #27
  %625 = load ptr, ptr %312, align 8, !tbaa !5
  %626 = icmp eq ptr %625, null
  br i1 %626, label %634, label %627

627:                                              ; preds = %615, %623
  %628 = phi ptr [ %616, %615 ], [ %613, %623 ]
  %629 = load i32, ptr %350, align 4, !tbaa !25
  %630 = add nsw i32 %629, 7
  %631 = and i32 %630, -8
  %632 = load i32, ptr %313, align 4, !tbaa !127
  %633 = add nsw i32 %631, %632
  store i32 %633, ptr %313, align 4, !tbaa !127
  br label %635

634:                                              ; preds = %623
  tail call void @free(ptr noundef %560) #27
  br label %635

635:                                              ; preds = %627, %634
  %636 = phi ptr [ %628, %627 ], [ %613, %634 ]
  store ptr null, ptr %636, align 8, !tbaa !34
  br label %637

637:                                              ; preds = %635, %597
  tail call fastcc void @compute_accelerated_huffman(ptr noundef nonnull %317)
  %638 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %639 = trunc i32 %638 to i8
  %640 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 6
  store i8 %639, ptr %640, align 1, !tbaa !190
  %641 = and i32 %638, 255
  %642 = icmp ugt i32 %641, 2
  br i1 %642, label %643, label %645

643:                                              ; preds = %637
  %644 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %644, align 4
  br label %1777

645:                                              ; preds = %637
  %646 = icmp eq i32 %641, 0
  br i1 %646, label %898, label %647

647:                                              ; preds = %645
  %648 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 32)
  %649 = tail call fastcc float @float32_unpack(i32 noundef %648)
  %650 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 3
  store float %649, ptr %650, align 8, !tbaa !191
  %651 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 32)
  %652 = tail call fastcc float @float32_unpack(i32 noundef %651)
  %653 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 4
  store float %652, ptr %653, align 4, !tbaa !192
  %654 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %655 = trunc i32 %654 to i8
  %656 = add i8 %655, 1
  %657 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 5
  store i8 %656, ptr %657, align 8, !tbaa !193
  %658 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %659 = trunc i32 %658 to i8
  %660 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 7
  store i8 %659, ptr %660, align 2, !tbaa !194
  %661 = load i8, ptr %640, align 1, !tbaa !190
  %662 = icmp eq i8 %661, 1
  %663 = load i32, ptr %350, align 4, !tbaa !25
  %664 = load i32, ptr %317, align 8, !tbaa !182
  br i1 %662, label %665, label %670

665:                                              ; preds = %647
  %666 = tail call fastcc i32 @lookup1_values(i32 noundef %663, i32 noundef %664)
  %667 = icmp sgt i32 %666, -1
  br i1 %667, label %672, label %668

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %669, align 4
  br label %1777

670:                                              ; preds = %647
  %671 = mul nsw i32 %664, %663
  br label %672

672:                                              ; preds = %665, %670
  %673 = phi i32 [ %671, %670 ], [ %666, %665 ]
  %674 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 9
  store i32 %673, ptr %674, align 4, !tbaa !195
  %675 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 9
  %676 = icmp eq i32 %673, 0
  br i1 %676, label %677, label %679

677:                                              ; preds = %672
  %678 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %678, align 4
  br label %1777

679:                                              ; preds = %672
  %680 = shl i32 %673, 1
  %681 = tail call fastcc ptr @setup_temp_malloc(ptr noundef nonnull %0, i32 noundef %680)
  %682 = icmp eq ptr %681, null
  br i1 %682, label %686, label %683

683:                                              ; preds = %679
  %684 = load i32, ptr %675, align 4, !tbaa !195
  %685 = icmp sgt i32 %684, 0
  br i1 %685, label %688, label %714

686:                                              ; preds = %679
  %687 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %687, align 4
  br label %1777

688:                                              ; preds = %683, %707
  %689 = phi i64 [ %710, %707 ], [ 0, %683 ]
  %690 = load i8, ptr %657, align 8, !tbaa !193
  %691 = zext i8 %690 to i32
  %692 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %691)
  %693 = icmp eq i32 %692, -1
  br i1 %693, label %694, label %707

694:                                              ; preds = %688
  %695 = load ptr, ptr %312, align 8, !tbaa !5
  %696 = icmp eq ptr %695, null
  br i1 %696, label %704, label %697

697:                                              ; preds = %694
  %698 = load i32, ptr %675, align 4, !tbaa !195
  %699 = shl i32 %698, 1
  %700 = add nsw i32 %699, 7
  %701 = and i32 %700, -8
  %702 = load i32, ptr %313, align 4, !tbaa !127
  %703 = add nsw i32 %701, %702
  store i32 %703, ptr %313, align 4, !tbaa !127
  br label %705

704:                                              ; preds = %694
  tail call void @free(ptr noundef nonnull %681) #27
  br label %705

705:                                              ; preds = %704, %697
  %706 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %706, align 4
  br label %1777

707:                                              ; preds = %688
  %708 = trunc i32 %692 to i16
  %709 = getelementptr inbounds i16, ptr %681, i64 %689
  store i16 %708, ptr %709, align 2, !tbaa !109
  %710 = add nuw nsw i64 %689, 1
  %711 = load i32, ptr %675, align 4, !tbaa !195
  %712 = sext i32 %711 to i64
  %713 = icmp slt i64 %710, %712
  br i1 %713, label %688, label %714, !llvm.loop !196

714:                                              ; preds = %707, %683
  %715 = phi i32 [ %684, %683 ], [ %711, %707 ]
  %716 = load i8, ptr %640, align 1, !tbaa !190
  %717 = icmp eq i8 %716, 1
  br i1 %717, label %718, label %819

718:                                              ; preds = %714
  %719 = load i8, ptr %358, align 1, !tbaa !118
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %724, label %721

721:                                              ; preds = %718
  %722 = load i32, ptr %562, align 8, !tbaa !188
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %887, label %726

724:                                              ; preds = %718
  %725 = load i32, ptr %350, align 4, !tbaa !25
  br label %726

726:                                              ; preds = %721, %724
  %727 = phi i32 [ %725, %724 ], [ %722, %721 ]
  %728 = shl i32 %727, 2
  %729 = load i32, ptr %317, align 8, !tbaa !182
  %730 = mul i32 %728, %729
  %731 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %730)
  %732 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 10
  store ptr %731, ptr %732, align 8, !tbaa !33
  %733 = icmp eq ptr %731, null
  br i1 %733, label %734, label %747

734:                                              ; preds = %726
  %735 = load ptr, ptr %312, align 8, !tbaa !5
  %736 = icmp eq ptr %735, null
  br i1 %736, label %744, label %737

737:                                              ; preds = %734
  %738 = load i32, ptr %675, align 4, !tbaa !195
  %739 = shl i32 %738, 1
  %740 = add nsw i32 %739, 7
  %741 = and i32 %740, -8
  %742 = load i32, ptr %313, align 4, !tbaa !127
  %743 = add nsw i32 %741, %742
  store i32 %743, ptr %313, align 4, !tbaa !127
  br label %745

744:                                              ; preds = %734
  tail call void @free(ptr noundef nonnull %681) #27
  br label %745

745:                                              ; preds = %737, %744
  %746 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %746, align 4
  br label %1777

747:                                              ; preds = %726
  %748 = select i1 %720, ptr %350, ptr %562
  %749 = load i32, ptr %748, align 4, !tbaa !54
  %750 = icmp sgt i32 %749, 0
  br i1 %750, label %751, label %818

751:                                              ; preds = %747
  %752 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 14
  %753 = load i32, ptr %317, align 8, !tbaa !182
  %754 = icmp sgt i32 %753, 0
  %755 = sext i32 %753 to i64
  %756 = zext nneg i32 %749 to i64
  %757 = zext nneg i32 %753 to i64
  br label %758

758:                                              ; preds = %751, %814
  %759 = phi i64 [ 0, %751 ], [ %816, %814 ]
  %760 = phi float [ 0.000000e+00, %751 ], [ %815, %814 ]
  %761 = trunc i64 %759 to i32
  br i1 %720, label %766, label %762

762:                                              ; preds = %758
  %763 = load ptr, ptr %752, align 8, !tbaa !36
  %764 = getelementptr inbounds i32, ptr %763, i64 %759
  %765 = load i32, ptr %764, align 4, !tbaa !54
  br label %766

766:                                              ; preds = %758, %762
  %767 = phi i32 [ %765, %762 ], [ %761, %758 ]
  br i1 %754, label %768, label %814

768:                                              ; preds = %766
  %769 = load i32, ptr %675, align 4, !tbaa !195
  %770 = load i8, ptr %660, align 2, !tbaa !194
  %771 = icmp eq i8 %770, 0
  %772 = trunc i64 %759 to i32
  %773 = mul i32 %753, %772
  %774 = zext i32 %773 to i64
  %775 = getelementptr float, ptr %731, i64 %774
  br label %776

776:                                              ; preds = %768, %811
  %777 = phi i64 [ 0, %768 ], [ %792, %811 ]
  %778 = phi float [ %760, %768 ], [ %791, %811 ]
  %779 = phi i32 [ 1, %768 ], [ %812, %811 ]
  %780 = udiv i32 %767, %779
  %781 = urem i32 %780, %769
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i16, ptr %681, i64 %782
  %784 = load i16, ptr %783, align 2, !tbaa !109
  %785 = uitofp i16 %784 to float
  %786 = load float, ptr %653, align 4, !tbaa !192
  %787 = load float, ptr %650, align 8, !tbaa !191
  %788 = tail call float @llvm.fmuladd.f32(float %785, float %786, float %787)
  %789 = fadd float %778, %788
  %790 = getelementptr float, ptr %775, i64 %777
  store float %789, ptr %790, align 4, !tbaa !136
  %791 = select i1 %771, float %778, float %789
  %792 = add nuw nsw i64 %777, 1
  %793 = icmp slt i64 %792, %755
  br i1 %793, label %794, label %811

794:                                              ; preds = %776
  %795 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %769, i32 %779)
  %796 = extractvalue { i32, i1 } %795, 1
  br i1 %796, label %797, label %809

797:                                              ; preds = %794
  %798 = load ptr, ptr %312, align 8, !tbaa !5
  %799 = icmp eq ptr %798, null
  br i1 %799, label %806, label %800

800:                                              ; preds = %797
  %801 = shl i32 %769, 1
  %802 = add nsw i32 %801, 7
  %803 = and i32 %802, -8
  %804 = load i32, ptr %313, align 4, !tbaa !127
  %805 = add nsw i32 %804, %803
  store i32 %805, ptr %313, align 4, !tbaa !127
  br label %807

806:                                              ; preds = %797
  tail call void @free(ptr noundef nonnull %681) #27
  br label %807

807:                                              ; preds = %800, %806
  %808 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %808, align 4
  br label %1777

809:                                              ; preds = %794
  %810 = mul i32 %769, %779
  br label %811

811:                                              ; preds = %776, %809
  %812 = phi i32 [ %810, %809 ], [ %779, %776 ]
  %813 = icmp eq i64 %792, %757
  br i1 %813, label %814, label %776, !llvm.loop !197

814:                                              ; preds = %811, %766
  %815 = phi float [ %760, %766 ], [ %791, %811 ]
  %816 = add nuw nsw i64 %759, 1
  %817 = icmp eq i64 %816, %756
  br i1 %817, label %818, label %758, !llvm.loop !198

818:                                              ; preds = %814, %747
  store i8 2, ptr %640, align 1, !tbaa !190
  br label %887

819:                                              ; preds = %714
  %820 = shl i32 %715, 2
  %821 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %820)
  %822 = getelementptr inbounds %struct.Codebook, ptr %316, i64 %315, i32 10
  store ptr %821, ptr %822, align 8, !tbaa !33
  %823 = icmp eq ptr %821, null
  br i1 %823, label %835, label %824

824:                                              ; preds = %819
  %825 = load i32, ptr %675, align 4, !tbaa !195
  %826 = icmp sgt i32 %825, 0
  br i1 %826, label %827, label %887

827:                                              ; preds = %824
  %828 = load i8, ptr %660, align 2, !tbaa !194
  %829 = icmp eq i8 %828, 0
  %830 = zext nneg i32 %825 to i64
  %831 = and i64 %830, 1
  %832 = icmp eq i32 %825, 1
  br i1 %832, label %874, label %833

833:                                              ; preds = %827
  %834 = and i64 %830, 2147483646
  br label %848

835:                                              ; preds = %819
  %836 = load ptr, ptr %312, align 8, !tbaa !5
  %837 = icmp eq ptr %836, null
  br i1 %837, label %845, label %838

838:                                              ; preds = %835
  %839 = load i32, ptr %675, align 4, !tbaa !195
  %840 = shl i32 %839, 1
  %841 = add nsw i32 %840, 7
  %842 = and i32 %841, -8
  %843 = load i32, ptr %313, align 4, !tbaa !127
  %844 = add nsw i32 %842, %843
  store i32 %844, ptr %313, align 4, !tbaa !127
  br label %846

845:                                              ; preds = %835
  tail call void @free(ptr noundef nonnull %681) #27
  br label %846

846:                                              ; preds = %845, %838
  %847 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %847, align 4
  br label %1777

848:                                              ; preds = %848, %833
  %849 = phi i64 [ 0, %833 ], [ %871, %848 ]
  %850 = phi float [ 0.000000e+00, %833 ], [ %870, %848 ]
  %851 = phi i64 [ 0, %833 ], [ %872, %848 ]
  %852 = getelementptr inbounds i16, ptr %681, i64 %849
  %853 = load i16, ptr %852, align 2, !tbaa !109
  %854 = uitofp i16 %853 to float
  %855 = load float, ptr %653, align 4, !tbaa !192
  %856 = load float, ptr %650, align 8, !tbaa !191
  %857 = tail call float @llvm.fmuladd.f32(float %854, float %855, float %856)
  %858 = fadd float %850, %857
  %859 = getelementptr inbounds float, ptr %821, i64 %849
  store float %858, ptr %859, align 4, !tbaa !136
  %860 = select i1 %829, float %850, float %858
  %861 = or disjoint i64 %849, 1
  %862 = getelementptr inbounds i16, ptr %681, i64 %861
  %863 = load i16, ptr %862, align 2, !tbaa !109
  %864 = uitofp i16 %863 to float
  %865 = load float, ptr %653, align 4, !tbaa !192
  %866 = load float, ptr %650, align 8, !tbaa !191
  %867 = tail call float @llvm.fmuladd.f32(float %864, float %865, float %866)
  %868 = fadd float %860, %867
  %869 = getelementptr inbounds float, ptr %821, i64 %861
  store float %868, ptr %869, align 4, !tbaa !136
  %870 = select i1 %829, float %850, float %868
  %871 = add nuw nsw i64 %849, 2
  %872 = add i64 %851, 2
  %873 = icmp eq i64 %872, %834
  br i1 %873, label %874, label %848, !llvm.loop !199

874:                                              ; preds = %848, %827
  %875 = phi i64 [ 0, %827 ], [ %871, %848 ]
  %876 = phi float [ 0.000000e+00, %827 ], [ %870, %848 ]
  %877 = icmp eq i64 %831, 0
  br i1 %877, label %887, label %878

878:                                              ; preds = %874
  %879 = getelementptr inbounds i16, ptr %681, i64 %875
  %880 = load i16, ptr %879, align 2, !tbaa !109
  %881 = uitofp i16 %880 to float
  %882 = load float, ptr %653, align 4, !tbaa !192
  %883 = load float, ptr %650, align 8, !tbaa !191
  %884 = tail call float @llvm.fmuladd.f32(float %881, float %882, float %883)
  %885 = fadd float %876, %884
  %886 = getelementptr inbounds float, ptr %821, i64 %875
  store float %885, ptr %886, align 4, !tbaa !136
  br label %887

887:                                              ; preds = %878, %874, %824, %818, %721
  %888 = load ptr, ptr %312, align 8, !tbaa !5
  %889 = icmp eq ptr %888, null
  br i1 %889, label %897, label %890

890:                                              ; preds = %887
  %891 = load i32, ptr %675, align 4, !tbaa !195
  %892 = shl i32 %891, 1
  %893 = add nsw i32 %892, 7
  %894 = and i32 %893, -8
  %895 = load i32, ptr %313, align 4, !tbaa !127
  %896 = add nsw i32 %894, %895
  store i32 %896, ptr %313, align 4, !tbaa !127
  br label %898

897:                                              ; preds = %887
  tail call void @free(ptr noundef %681) #27
  br label %898

898:                                              ; preds = %890, %897, %645
  %899 = add nuw nsw i64 %315, 1
  %900 = load i32, ptr %297, align 8, !tbaa !31
  %901 = sext i32 %900 to i64
  %902 = icmp slt i64 %899, %901
  br i1 %902, label %314, label %903, !llvm.loop !200

903:                                              ; preds = %898, %304
  %904 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %905 = add i32 %904, 1
  %906 = and i32 %905, 255
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %917, label %911

908:                                              ; preds = %911
  %909 = add nuw nsw i32 %912, 1
  %910 = icmp eq i32 %909, %906
  br i1 %910, label %917, label %911, !llvm.loop !201

911:                                              ; preds = %903, %908
  %912 = phi i32 [ %909, %908 ], [ 0, %903 ]
  %913 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %908, label %915

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %916, align 4
  br label %1777

917:                                              ; preds = %908, %903
  %918 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %919 = add i32 %918, 1
  %920 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 29
  store i32 %919, ptr %920, align 8, !tbaa !202
  %921 = mul i32 %919, 1596
  %922 = tail call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %921)
  %923 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 31
  store ptr %922, ptr %923, align 8, !tbaa !38
  %924 = icmp eq ptr %922, null
  br i1 %924, label %928, label %925

925:                                              ; preds = %917
  %926 = load i32, ptr %920, align 8, !tbaa !202
  %927 = icmp sgt i32 %926, 0
  br i1 %927, label %930, label %1250

928:                                              ; preds = %917
  %929 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %929, align 4
  br label %1777

930:                                              ; preds = %925, %1243
  %931 = phi i64 [ %1246, %1243 ], [ 0, %925 ]
  %932 = phi i32 [ %1245, %1243 ], [ 0, %925 ]
  %933 = mul nuw nsw i64 %931, 1596
  %934 = add nuw i64 %933, 338
  %935 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %936 = trunc i32 %935 to i16
  %937 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 30, i64 %931
  store i16 %936, ptr %937, align 2, !tbaa !109
  %938 = and i32 %935, 65535
  %939 = icmp ugt i32 %938, 1
  br i1 %939, label %940, label %942

940:                                              ; preds = %930
  %941 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %941, align 4
  br label %1777

942:                                              ; preds = %930
  %943 = icmp eq i32 %938, 0
  br i1 %943, label %944, label %977

944:                                              ; preds = %942
  %945 = load ptr, ptr %923, align 8, !tbaa !38
  %946 = getelementptr inbounds %union.Floor, ptr %945, i64 %931
  %947 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %948 = trunc i32 %947 to i8
  store i8 %948, ptr %946, align 2, !tbaa !203
  %949 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %950 = trunc i32 %949 to i16
  %951 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 1
  store i16 %950, ptr %951, align 2, !tbaa !205
  %952 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %953 = trunc i32 %952 to i16
  %954 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 2
  store i16 %953, ptr %954, align 2, !tbaa !206
  %955 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %956 = trunc i32 %955 to i8
  %957 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 3
  store i8 %956, ptr %957, align 2, !tbaa !207
  %958 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %959 = trunc i32 %958 to i8
  %960 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 4
  store i8 %959, ptr %960, align 1, !tbaa !208
  %961 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %962 = trunc i32 %961 to i8
  %963 = add i8 %962, 1
  %964 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 5
  store i8 %963, ptr %964, align 2, !tbaa !209
  %965 = icmp eq i8 %963, 0
  br i1 %965, label %975, label %966

966:                                              ; preds = %944, %966
  %967 = phi i64 [ %971, %966 ], [ 0, %944 ]
  %968 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %969 = trunc i32 %968 to i8
  %970 = getelementptr inbounds %struct.Floor0, ptr %946, i64 0, i32 6, i64 %967
  store i8 %969, ptr %970, align 1, !tbaa !75
  %971 = add nuw nsw i64 %967, 1
  %972 = load i8, ptr %964, align 2, !tbaa !209
  %973 = zext i8 %972 to i64
  %974 = icmp ult i64 %971, %973
  br i1 %974, label %966, label %975, !llvm.loop !210

975:                                              ; preds = %966, %944
  %976 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 4, ptr %976, align 4
  br label %1777

977:                                              ; preds = %942
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #27
  %978 = load ptr, ptr %923, align 8, !tbaa !38
  %979 = getelementptr inbounds %union.Floor, ptr %978, i64 %931
  %980 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  %981 = trunc i32 %980 to i8
  store i8 %981, ptr %979, align 4, !tbaa !114
  %982 = and i32 %980, 255
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1039, label %987

984:                                              ; preds = %987
  %985 = add nuw nsw i32 %994, 1
  %986 = zext nneg i32 %985 to i64
  br label %999

987:                                              ; preds = %977, %987
  %988 = phi i64 [ %995, %987 ], [ 0, %977 ]
  %989 = phi i32 [ %994, %987 ], [ -1, %977 ]
  %990 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %991 = trunc i32 %990 to i8
  %992 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 1, i64 %988
  store i8 %991, ptr %992, align 1, !tbaa !75
  %993 = and i32 %990, 255
  %994 = call i32 @llvm.smax.i32(i32 %993, i32 %989)
  %995 = add nuw nsw i64 %988, 1
  %996 = load i8, ptr %979, align 4, !tbaa !114
  %997 = zext i8 %996 to i64
  %998 = icmp ult i64 %995, %997
  br i1 %998, label %987, label %984, !llvm.loop !211

999:                                              ; preds = %984, %1036
  %1000 = phi i64 [ 0, %984 ], [ %1037, %1036 ]
  %1001 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 3)
  %1002 = trunc i32 %1001 to i8
  %1003 = add i8 %1002, 1
  %1004 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 2, i64 %1000
  store i8 %1003, ptr %1004, align 1, !tbaa !75
  %1005 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %1006 = trunc i32 %1005 to i8
  %1007 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 3, i64 %1000
  store i8 %1006, ptr %1007, align 1, !tbaa !75
  %1008 = icmp eq i8 %1006, 0
  br i1 %1008, label %1019, label %1009

1009:                                             ; preds = %999
  %1010 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1011 = trunc i32 %1010 to i8
  %1012 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 4, i64 %1000
  store i8 %1011, ptr %1012, align 1, !tbaa !75
  %1013 = and i32 %1010, 255
  %1014 = load i32, ptr %297, align 8, !tbaa !31
  %1015 = icmp slt i32 %1013, %1014
  br i1 %1015, label %1016, label %1241

1016:                                             ; preds = %1009
  %1017 = load i8, ptr %1007, align 1, !tbaa !75
  %1018 = icmp eq i8 %1017, 31
  br i1 %1018, label %1036, label %1019

1019:                                             ; preds = %999, %1016
  br label %1027

1020:                                             ; preds = %1027
  %1021 = add nuw nsw i64 %1028, 1
  %1022 = load i8, ptr %1007, align 1, !tbaa !75
  %1023 = zext nneg i8 %1022 to i32
  %1024 = shl nuw i32 1, %1023
  %1025 = sext i32 %1024 to i64
  %1026 = icmp slt i64 %1021, %1025
  br i1 %1026, label %1027, label %1036, !llvm.loop !212

1027:                                             ; preds = %1019, %1020
  %1028 = phi i64 [ %1021, %1020 ], [ 0, %1019 ]
  %1029 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1030 = trunc i32 %1029 to i16
  %1031 = add i16 %1030, -1
  %1032 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 5, i64 %1000, i64 %1028
  store i16 %1031, ptr %1032, align 2, !tbaa !109
  %1033 = sext i16 %1031 to i32
  %1034 = load i32, ptr %297, align 8, !tbaa !31
  %1035 = icmp sgt i32 %1034, %1033
  br i1 %1035, label %1020, label %1241

1036:                                             ; preds = %1020, %1016
  %1037 = add nuw nsw i64 %1000, 1
  %1038 = icmp eq i64 %1037, %986
  br i1 %1038, label %1039, label %999, !llvm.loop !213

1039:                                             ; preds = %1036, %977
  %1040 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %1041 = trunc i32 %1040 to i8
  %1042 = add i8 %1041, 1
  %1043 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 9
  store i8 %1042, ptr %1043, align 4, !tbaa !112
  %1044 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %1045 = trunc i32 %1044 to i8
  %1046 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 10
  store i8 %1045, ptr %1046, align 1, !tbaa !214
  %1047 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6
  store i16 0, ptr %1047, align 2, !tbaa !109
  %1048 = and i32 %1044, 255
  %1049 = shl nuw i32 1, %1048
  %1050 = trunc i32 %1049 to i16
  %1051 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 1
  store i16 %1050, ptr %1051, align 2, !tbaa !109
  %1052 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 11
  store i32 2, ptr %1052, align 4, !tbaa !121
  %1053 = load i8, ptr %979, align 4, !tbaa !114
  %1054 = icmp eq i8 %1053, 0
  br i1 %1054, label %1057, label %1110

1055:                                             ; preds = %1136
  %1056 = icmp sgt i32 %1137, 0
  br i1 %1056, label %1057, label %1169

1057:                                             ; preds = %1039, %1055
  %1058 = phi i32 [ %1137, %1055 ], [ 2, %1039 ]
  %1059 = zext nneg i32 %1058 to i64
  %1060 = icmp ult i32 %1058, 8
  br i1 %1060, label %1091, label %1061

1061:                                             ; preds = %1057
  %1062 = shl nuw nsw i64 %1059, 2
  %1063 = getelementptr i8, ptr %3, i64 %1062
  %1064 = getelementptr i8, ptr %978, i64 %934
  %1065 = shl nuw nsw i64 %1059, 1
  %1066 = getelementptr i8, ptr %978, i64 %934
  %1067 = getelementptr i8, ptr %1066, i64 %1065
  %1068 = icmp ult ptr %3, %1067
  %1069 = icmp ult ptr %1064, %1063
  %1070 = and i1 %1068, %1069
  br i1 %1070, label %1091, label %1071

1071:                                             ; preds = %1061
  %1072 = and i64 %1059, 2147483640
  br label %1073

1073:                                             ; preds = %1073, %1071
  %1074 = phi i64 [ 0, %1071 ], [ %1086, %1073 ]
  %1075 = phi <4 x i16> [ <i16 0, i16 1, i16 2, i16 3>, %1071 ], [ %1087, %1073 ]
  %1076 = add <4 x i16> %1075, <i16 4, i16 4, i16 4, i16 4>
  %1077 = or disjoint i64 %1074, 4
  %1078 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1074
  %1079 = getelementptr inbounds i16, ptr %1078, i64 4
  %1080 = load <4 x i16>, ptr %1078, align 2, !tbaa !109, !alias.scope !215
  %1081 = load <4 x i16>, ptr %1079, align 2, !tbaa !109, !alias.scope !215
  %1082 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1074
  %1083 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1077
  %1084 = shufflevector <4 x i16> %1080, <4 x i16> %1075, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %1084, ptr %1082, align 16, !tbaa !109
  %1085 = shufflevector <4 x i16> %1081, <4 x i16> %1076, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %1085, ptr %1083, align 16, !tbaa !109
  %1086 = add nuw i64 %1074, 8
  %1087 = add <4 x i16> %1075, <i16 8, i16 8, i16 8, i16 8>
  %1088 = icmp eq i64 %1086, %1072
  br i1 %1088, label %1089, label %1073, !llvm.loop !218

1089:                                             ; preds = %1073
  %1090 = icmp eq i64 %1072, %1059
  br i1 %1090, label %1169, label %1091

1091:                                             ; preds = %1061, %1057, %1089
  %1092 = phi i64 [ 0, %1061 ], [ 0, %1057 ], [ %1072, %1089 ]
  %1093 = and i64 %1059, 3
  %1094 = icmp eq i64 %1093, 0
  br i1 %1094, label %1106, label %1095

1095:                                             ; preds = %1091, %1095
  %1096 = phi i64 [ %1103, %1095 ], [ %1092, %1091 ]
  %1097 = phi i64 [ %1104, %1095 ], [ 0, %1091 ]
  %1098 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1096
  %1099 = load i16, ptr %1098, align 2, !tbaa !109
  %1100 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1096
  store i16 %1099, ptr %1100, align 4, !tbaa !219
  %1101 = trunc i64 %1096 to i16
  %1102 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1096, i32 1
  store i16 %1101, ptr %1102, align 2, !tbaa !221
  %1103 = add nuw nsw i64 %1096, 1
  %1104 = add i64 %1097, 1
  %1105 = icmp eq i64 %1104, %1093
  br i1 %1105, label %1106, label %1095, !llvm.loop !222

1106:                                             ; preds = %1095, %1091
  %1107 = phi i64 [ %1092, %1091 ], [ %1103, %1095 ]
  %1108 = sub nsw i64 %1092, %1059
  %1109 = icmp ugt i64 %1108, -4
  br i1 %1109, label %1169, label %1142

1110:                                             ; preds = %1039, %1136
  %1111 = phi i32 [ %1137, %1136 ], [ 2, %1039 ]
  %1112 = phi i8 [ %1138, %1136 ], [ %1053, %1039 ]
  %1113 = phi i64 [ %1139, %1136 ], [ 0, %1039 ]
  %1114 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 1, i64 %1113
  %1115 = load i8, ptr %1114, align 1, !tbaa !75
  %1116 = zext i8 %1115 to i64
  %1117 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 2, i64 %1116
  %1118 = load i8, ptr %1117, align 1, !tbaa !75
  %1119 = icmp eq i8 %1118, 0
  br i1 %1119, label %1136, label %1120

1120:                                             ; preds = %1110, %1120
  %1121 = phi i32 [ %1130, %1120 ], [ 0, %1110 ]
  %1122 = load i8, ptr %1046, align 1, !tbaa !214
  %1123 = zext i8 %1122 to i32
  %1124 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %1123)
  %1125 = trunc i32 %1124 to i16
  %1126 = load i32, ptr %1052, align 4, !tbaa !121
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1127
  store i16 %1125, ptr %1128, align 2, !tbaa !109
  %1129 = add nsw i32 %1126, 1
  store i32 %1129, ptr %1052, align 4, !tbaa !121
  %1130 = add nuw nsw i32 %1121, 1
  %1131 = load i8, ptr %1117, align 1, !tbaa !75
  %1132 = zext i8 %1131 to i32
  %1133 = icmp ult i32 %1130, %1132
  br i1 %1133, label %1120, label %1134, !llvm.loop !223

1134:                                             ; preds = %1120
  %1135 = load i8, ptr %979, align 4, !tbaa !114
  br label %1136

1136:                                             ; preds = %1134, %1110
  %1137 = phi i32 [ %1129, %1134 ], [ %1111, %1110 ]
  %1138 = phi i8 [ %1135, %1134 ], [ %1112, %1110 ]
  %1139 = add nuw nsw i64 %1113, 1
  %1140 = zext i8 %1138 to i64
  %1141 = icmp ult i64 %1139, %1140
  br i1 %1141, label %1110, label %1055, !llvm.loop !224

1142:                                             ; preds = %1106, %1142
  %1143 = phi i64 [ %1167, %1142 ], [ %1107, %1106 ]
  %1144 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1143
  %1145 = load i16, ptr %1144, align 2, !tbaa !109
  %1146 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1143
  store i16 %1145, ptr %1146, align 4, !tbaa !219
  %1147 = trunc i64 %1143 to i16
  %1148 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1143, i32 1
  store i16 %1147, ptr %1148, align 2, !tbaa !221
  %1149 = add nuw nsw i64 %1143, 1
  %1150 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1149
  %1151 = load i16, ptr %1150, align 2, !tbaa !109
  %1152 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1149
  store i16 %1151, ptr %1152, align 4, !tbaa !219
  %1153 = trunc i64 %1149 to i16
  %1154 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1149, i32 1
  store i16 %1153, ptr %1154, align 2, !tbaa !221
  %1155 = add nuw nsw i64 %1143, 2
  %1156 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1155
  %1157 = load i16, ptr %1156, align 2, !tbaa !109
  %1158 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1155
  store i16 %1157, ptr %1158, align 4, !tbaa !219
  %1159 = trunc i64 %1155 to i16
  %1160 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1155, i32 1
  store i16 %1159, ptr %1160, align 2, !tbaa !221
  %1161 = add nuw nsw i64 %1143, 3
  %1162 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 6, i64 %1161
  %1163 = load i16, ptr %1162, align 2, !tbaa !109
  %1164 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1161
  store i16 %1163, ptr %1164, align 4, !tbaa !219
  %1165 = trunc i64 %1161 to i16
  %1166 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1161, i32 1
  store i16 %1165, ptr %1166, align 2, !tbaa !221
  %1167 = add nuw nsw i64 %1143, 4
  %1168 = icmp eq i64 %1167, %1059
  br i1 %1168, label %1169, label %1142, !llvm.loop !225

1169:                                             ; preds = %1106, %1142, %1089, %1055
  %1170 = phi i32 [ %1137, %1055 ], [ %1058, %1089 ], [ %1058, %1142 ], [ %1058, %1106 ]
  %1171 = sext i32 %1170 to i64
  call void @qsort(ptr noundef nonnull %3, i64 noundef %1171, i64 noundef 4, ptr noundef nonnull @point_compare) #27
  %1172 = load i32, ptr %1052, align 4, !tbaa !121
  %1173 = call i32 @llvm.smax.i32(i32 %1172, i32 1)
  %1174 = add nsw i32 %1173, -1
  %1175 = zext nneg i32 %1174 to i64
  br label %1176

1176:                                             ; preds = %1181, %1169
  %1177 = phi i64 [ %1184, %1181 ], [ 0, %1169 ]
  %1178 = icmp eq i64 %1177, %1175
  br i1 %1178, label %1179, label %1181

1179:                                             ; preds = %1176
  %1180 = icmp sgt i32 %1172, 0
  br i1 %1180, label %1190, label %1243

1181:                                             ; preds = %1176
  %1182 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1177
  %1183 = load i16, ptr %1182, align 4, !tbaa !219
  %1184 = add nuw nsw i64 %1177, 1
  %1185 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1184
  %1186 = load i16, ptr %1185, align 4, !tbaa !219
  %1187 = icmp eq i16 %1183, %1186
  br i1 %1187, label %1241, label %1176, !llvm.loop !226

1188:                                             ; preds = %1190
  %1189 = icmp sgt i32 %1197, 2
  br i1 %1189, label %1200, label %1243

1190:                                             ; preds = %1179, %1190
  %1191 = phi i64 [ %1196, %1190 ], [ 0, %1179 ]
  %1192 = getelementptr inbounds [250 x %struct.stbv__floor_ordering], ptr %3, i64 0, i64 %1191, i32 1
  %1193 = load i16, ptr %1192, align 2, !tbaa !221
  %1194 = trunc i16 %1193 to i8
  %1195 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 7, i64 %1191
  store i8 %1194, ptr %1195, align 1, !tbaa !75
  %1196 = add nuw nsw i64 %1191, 1
  %1197 = load i32, ptr %1052, align 4, !tbaa !121
  %1198 = sext i32 %1197 to i64
  %1199 = icmp slt i64 %1196, %1198
  br i1 %1199, label %1190, label %1188, !llvm.loop !227

1200:                                             ; preds = %1188, %1234
  %1201 = phi i64 [ %1237, %1234 ], [ 2, %1188 ]
  %1202 = getelementptr inbounds i16, ptr %1047, i64 %1201
  br label %1203

1203:                                             ; preds = %1229, %1200
  %1204 = phi i8 [ 0, %1200 ], [ %1220, %1229 ]
  %1205 = phi i8 [ 0, %1200 ], [ %1230, %1229 ]
  %1206 = phi i64 [ 0, %1200 ], [ %1232, %1229 ]
  %1207 = phi i32 [ 65536, %1200 ], [ %1231, %1229 ]
  %1208 = phi i32 [ -1, %1200 ], [ %1221, %1229 ]
  %1209 = getelementptr inbounds i16, ptr %1047, i64 %1206
  %1210 = load i16, ptr %1209, align 2, !tbaa !109
  %1211 = zext i16 %1210 to i32
  %1212 = icmp slt i32 %1208, %1211
  br i1 %1212, label %1213, label %1219

1213:                                             ; preds = %1203
  %1214 = load i16, ptr %1202, align 2, !tbaa !109
  %1215 = icmp ult i16 %1210, %1214
  %1216 = trunc i64 %1206 to i8
  %1217 = select i1 %1215, i8 %1216, i8 %1204
  %1218 = select i1 %1215, i32 %1211, i32 %1208
  br label %1219

1219:                                             ; preds = %1213, %1203
  %1220 = phi i8 [ %1204, %1203 ], [ %1217, %1213 ]
  %1221 = phi i32 [ %1208, %1203 ], [ %1218, %1213 ]
  %1222 = icmp sgt i32 %1207, %1211
  br i1 %1222, label %1223, label %1229

1223:                                             ; preds = %1219
  %1224 = load i16, ptr %1202, align 2, !tbaa !109
  %1225 = icmp ugt i16 %1210, %1224
  %1226 = trunc i64 %1206 to i8
  %1227 = select i1 %1225, i8 %1226, i8 %1205
  %1228 = select i1 %1225, i32 %1211, i32 %1207
  br label %1229

1229:                                             ; preds = %1223, %1219
  %1230 = phi i8 [ %1205, %1219 ], [ %1227, %1223 ]
  %1231 = phi i32 [ %1207, %1219 ], [ %1228, %1223 ]
  %1232 = add nuw nsw i64 %1206, 1
  %1233 = icmp eq i64 %1232, %1201
  br i1 %1233, label %1234, label %1203, !llvm.loop !228

1234:                                             ; preds = %1229
  %1235 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 8, i64 %1201
  store i8 %1220, ptr %1235, align 2, !tbaa !75
  %1236 = getelementptr inbounds %struct.Floor1, ptr %979, i64 0, i32 8, i64 %1201, i64 1
  store i8 %1230, ptr %1236, align 1, !tbaa !75
  %1237 = add nuw nsw i64 %1201, 1
  %1238 = load i32, ptr %1052, align 4, !tbaa !121
  %1239 = sext i32 %1238 to i64
  %1240 = icmp slt i64 %1237, %1239
  br i1 %1240, label %1200, label %1243, !llvm.loop !229

1241:                                             ; preds = %1009, %1181, %1027
  %1242 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1242, align 4
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #27
  br label %1777

1243:                                             ; preds = %1234, %1179, %1188
  %1244 = phi i32 [ %1197, %1188 ], [ %1172, %1179 ], [ %1238, %1234 ]
  %1245 = call i32 @llvm.smax.i32(i32 %1244, i32 %932)
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #27
  %1246 = add nuw nsw i64 %931, 1
  %1247 = load i32, ptr %920, align 8, !tbaa !202
  %1248 = sext i32 %1247 to i64
  %1249 = icmp slt i64 %1246, %1248
  br i1 %1249, label %930, label %1250, !llvm.loop !230

1250:                                             ; preds = %1243, %925
  %1251 = phi i32 [ 0, %925 ], [ %1245, %1243 ]
  %1252 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %1253 = add i32 %1252, 1
  %1254 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 32
  store i32 %1253, ptr %1254, align 8, !tbaa !20
  %1255 = shl i32 %1253, 5
  %1256 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1255)
  %1257 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 34
  store ptr %1256, ptr %1257, align 8, !tbaa !19
  %1258 = icmp eq ptr %1256, null
  br i1 %1258, label %1259, label %1261

1259:                                             ; preds = %1250
  %1260 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %1260, align 4
  br label %1777

1261:                                             ; preds = %1250
  %1262 = load i32, ptr %1254, align 8, !tbaa !20
  %1263 = sext i32 %1262 to i64
  %1264 = shl nsw i64 %1263, 5
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1256, i8 0, i64 %1264, i1 false)
  %1265 = load i32, ptr %1254, align 8, !tbaa !20
  %1266 = icmp sgt i32 %1265, 0
  br i1 %1266, label %1267, label %1432

1267:                                             ; preds = %1261, %1427
  %1268 = phi i64 [ %1428, %1427 ], [ 0, %1261 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #27
  %1269 = load ptr, ptr %1257, align 8, !tbaa !19
  %1270 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %1271 = trunc i32 %1270 to i16
  %1272 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 33, i64 %1268
  store i16 %1271, ptr %1272, align 2, !tbaa !109
  %1273 = and i32 %1270, 65535
  %1274 = icmp ugt i32 %1273, 2
  br i1 %1274, label %1774, label %1275

1275:                                             ; preds = %1267
  %1276 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268
  %1277 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  store i32 %1277, ptr %1276, align 8, !tbaa !231
  %1278 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  %1279 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 1
  store i32 %1278, ptr %1279, align 4, !tbaa !232
  %1280 = load i32, ptr %1276, align 8, !tbaa !231
  %1281 = icmp ult i32 %1278, %1280
  br i1 %1281, label %1774, label %1282

1282:                                             ; preds = %1275
  %1283 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 24)
  %1284 = add i32 %1283, 1
  %1285 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 2
  store i32 %1284, ptr %1285, align 8, !tbaa !233
  %1286 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %1287 = trunc i32 %1286 to i8
  %1288 = add i8 %1287, 1
  %1289 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 3
  store i8 %1288, ptr %1289, align 4, !tbaa !234
  %1290 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1291 = trunc i32 %1290 to i8
  %1292 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 4
  store i8 %1291, ptr %1292, align 1, !tbaa !24
  %1293 = and i32 %1290, 255
  %1294 = load i32, ptr %297, align 8, !tbaa !31
  %1295 = icmp slt i32 %1293, %1294
  br i1 %1295, label %1296, label %1774

1296:                                             ; preds = %1282
  %1297 = load i8, ptr %1289, align 4, !tbaa !234
  %1298 = icmp eq i8 %1297, 0
  br i1 %1298, label %1316, label %1299

1299:                                             ; preds = %1296, %1306
  %1300 = phi i64 [ %1312, %1306 ], [ 0, %1296 ]
  %1301 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 3)
  %1302 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1306, label %1304

1304:                                             ; preds = %1299
  %1305 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 5)
  br label %1306

1306:                                             ; preds = %1304, %1299
  %1307 = phi i32 [ %1305, %1304 ], [ 0, %1299 ]
  %1308 = shl i32 %1307, 3
  %1309 = add i32 %1308, %1301
  %1310 = trunc i32 %1309 to i8
  %1311 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %1300
  store i8 %1310, ptr %1311, align 1, !tbaa !75
  %1312 = add nuw nsw i64 %1300, 1
  %1313 = load i8, ptr %1289, align 4, !tbaa !234
  %1314 = zext i8 %1313 to i64
  %1315 = icmp ult i64 %1312, %1314
  br i1 %1315, label %1299, label %1316, !llvm.loop !235

1316:                                             ; preds = %1306, %1296
  %1317 = phi i8 [ 0, %1296 ], [ %1313, %1306 ]
  %1318 = zext i8 %1317 to i32
  %1319 = shl nuw nsw i32 %1318, 4
  %1320 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1319)
  %1321 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 6
  store ptr %1320, ptr %1321, align 8, !tbaa !29
  %1322 = icmp eq ptr %1320, null
  br i1 %1322, label %1774, label %1323

1323:                                             ; preds = %1316
  %1324 = load i8, ptr %1289, align 4, !tbaa !234
  %1325 = icmp eq i8 %1324, 0
  br i1 %1325, label %1359, label %1326

1326:                                             ; preds = %1323, %1354
  %1327 = phi ptr [ %1351, %1354 ], [ %1320, %1323 ]
  %1328 = phi i64 [ %1355, %1354 ], [ 0, %1323 ]
  %1329 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %1328
  %1330 = load i8, ptr %1329, align 1, !tbaa !75
  %1331 = zext i8 %1330 to i32
  br label %1332

1332:                                             ; preds = %1326, %1350
  %1333 = phi ptr [ %1327, %1326 ], [ %1351, %1350 ]
  %1334 = phi i64 [ 0, %1326 ], [ %1352, %1350 ]
  %1335 = trunc i64 %1334 to i32
  %1336 = shl nuw nsw i32 1, %1335
  %1337 = and i32 %1336, %1331
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1348, label %1339

1339:                                             ; preds = %1332
  %1340 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1341 = trunc i32 %1340 to i16
  %1342 = load ptr, ptr %1321, align 8, !tbaa !29
  %1343 = getelementptr inbounds [8 x i16], ptr %1342, i64 %1328, i64 %1334
  store i16 %1341, ptr %1343, align 2, !tbaa !109
  %1344 = shl i32 %1340, 16
  %1345 = ashr exact i32 %1344, 16
  %1346 = load i32, ptr %297, align 8, !tbaa !31
  %1347 = icmp slt i32 %1345, %1346
  br i1 %1347, label %1350, label %1774

1348:                                             ; preds = %1332
  %1349 = getelementptr inbounds [8 x i16], ptr %1333, i64 %1328, i64 %1334
  store i16 -1, ptr %1349, align 2, !tbaa !109
  br label %1350

1350:                                             ; preds = %1348, %1339
  %1351 = phi ptr [ %1333, %1348 ], [ %1342, %1339 ]
  %1352 = add nuw nsw i64 %1334, 1
  %1353 = icmp eq i64 %1352, 8
  br i1 %1353, label %1354, label %1332, !llvm.loop !236

1354:                                             ; preds = %1350
  %1355 = add nuw nsw i64 %1328, 1
  %1356 = load i8, ptr %1289, align 4, !tbaa !234
  %1357 = zext i8 %1356 to i64
  %1358 = icmp ult i64 %1355, %1357
  br i1 %1358, label %1326, label %1359, !llvm.loop !237

1359:                                             ; preds = %1354, %1323
  %1360 = load ptr, ptr %300, align 8, !tbaa !23
  %1361 = load i8, ptr %1292, align 1, !tbaa !24
  %1362 = zext i8 %1361 to i64
  %1363 = getelementptr inbounds %struct.Codebook, ptr %1360, i64 %1362, i32 1
  %1364 = load i32, ptr %1363, align 4, !tbaa !25
  %1365 = shl i32 %1364, 3
  %1366 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1365)
  %1367 = getelementptr inbounds %struct.Residue, ptr %1269, i64 %1268, i32 5
  store ptr %1366, ptr %1367, align 8, !tbaa !21
  %1368 = icmp eq ptr %1366, null
  br i1 %1368, label %1774, label %1369

1369:                                             ; preds = %1359
  %1370 = load ptr, ptr %300, align 8, !tbaa !23
  %1371 = load i8, ptr %1292, align 1, !tbaa !24
  %1372 = zext i8 %1371 to i64
  %1373 = getelementptr inbounds %struct.Codebook, ptr %1370, i64 %1372, i32 1
  %1374 = load i32, ptr %1373, align 4, !tbaa !25
  %1375 = sext i32 %1374 to i64
  %1376 = shl nsw i64 %1375, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1366, i8 0, i64 %1376, i1 false)
  %1377 = load ptr, ptr %300, align 8, !tbaa !23
  %1378 = load i8, ptr %1292, align 1, !tbaa !24
  %1379 = zext i8 %1378 to i64
  %1380 = getelementptr inbounds %struct.Codebook, ptr %1377, i64 %1379, i32 1
  %1381 = load i32, ptr %1380, align 4, !tbaa !25
  %1382 = icmp sgt i32 %1381, 0
  br i1 %1382, label %1383, label %1427

1383:                                             ; preds = %1369, %1418
  %1384 = phi i64 [ %1419, %1418 ], [ 0, %1369 ]
  %1385 = phi i64 [ %1422, %1418 ], [ %1379, %1369 ]
  %1386 = phi ptr [ %1420, %1418 ], [ %1377, %1369 ]
  %1387 = getelementptr inbounds %struct.Codebook, ptr %1386, i64 %1385
  %1388 = load i32, ptr %1387, align 8, !tbaa !182
  %1389 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1388)
  %1390 = load ptr, ptr %1367, align 8, !tbaa !21
  %1391 = getelementptr inbounds ptr, ptr %1390, i64 %1384
  store ptr %1389, ptr %1391, align 8, !tbaa !16
  %1392 = load ptr, ptr %1367, align 8, !tbaa !21
  %1393 = getelementptr inbounds ptr, ptr %1392, i64 %1384
  %1394 = load ptr, ptr %1393, align 8, !tbaa !16
  %1395 = icmp eq ptr %1394, null
  br i1 %1395, label %1774, label %1396

1396:                                             ; preds = %1383
  %1397 = icmp sgt i32 %1388, 0
  br i1 %1397, label %1398, label %1418

1398:                                             ; preds = %1396
  %1399 = zext nneg i32 %1388 to i64
  %1400 = trunc i64 %1384 to i32
  %1401 = load i8, ptr %1289, align 4, !tbaa !234
  br label %1402

1402:                                             ; preds = %1398, %1402
  %1403 = phi i8 [ %1401, %1398 ], [ %1414, %1402 ]
  %1404 = phi i64 [ %1399, %1398 ], [ %1406, %1402 ]
  %1405 = phi i32 [ %1400, %1398 ], [ %1416, %1402 ]
  %1406 = add nsw i64 %1404, -1
  %1407 = zext i8 %1403 to i32
  %1408 = srem i32 %1405, %1407
  %1409 = trunc i32 %1408 to i8
  %1410 = load ptr, ptr %1367, align 8, !tbaa !21
  %1411 = getelementptr inbounds ptr, ptr %1410, i64 %1384
  %1412 = load ptr, ptr %1411, align 8, !tbaa !16
  %1413 = getelementptr inbounds i8, ptr %1412, i64 %1406
  store i8 %1409, ptr %1413, align 1, !tbaa !75
  %1414 = load i8, ptr %1289, align 4, !tbaa !234
  %1415 = zext i8 %1414 to i32
  %1416 = sdiv i32 %1405, %1415
  %1417 = icmp ugt i64 %1404, 1
  br i1 %1417, label %1402, label %1418, !llvm.loop !238

1418:                                             ; preds = %1402, %1396
  %1419 = add nuw nsw i64 %1384, 1
  %1420 = load ptr, ptr %300, align 8, !tbaa !23
  %1421 = load i8, ptr %1292, align 1, !tbaa !24
  %1422 = zext i8 %1421 to i64
  %1423 = getelementptr inbounds %struct.Codebook, ptr %1420, i64 %1422, i32 1
  %1424 = load i32, ptr %1423, align 4, !tbaa !25
  %1425 = sext i32 %1424 to i64
  %1426 = icmp slt i64 %1419, %1425
  br i1 %1426, label %1383, label %1427, !llvm.loop !239

1427:                                             ; preds = %1418, %1369
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #27
  %1428 = add nuw nsw i64 %1268, 1
  %1429 = load i32, ptr %1254, align 8, !tbaa !20
  %1430 = sext i32 %1429 to i64
  %1431 = icmp slt i64 %1428, %1430
  br i1 %1431, label %1267, label %1432, !llvm.loop !240

1432:                                             ; preds = %1427, %1261
  %1433 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %1434 = add i32 %1433, 1
  %1435 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 35
  store i32 %1434, ptr %1435, align 8, !tbaa !40
  %1436 = mul i32 %1434, 48
  %1437 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1436)
  %1438 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 36
  store ptr %1437, ptr %1438, align 8, !tbaa !39
  %1439 = icmp eq ptr %1437, null
  br i1 %1439, label %1440, label %1442

1440:                                             ; preds = %1432
  %1441 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %1441, align 4
  br label %1777

1442:                                             ; preds = %1432
  %1443 = load i32, ptr %1435, align 8, !tbaa !40
  %1444 = sext i32 %1443 to i64
  %1445 = mul nsw i64 %1444, 48
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1437, i8 0, i64 %1445, i1 false)
  %1446 = load i32, ptr %1435, align 8, !tbaa !40
  %1447 = icmp sgt i32 %1446, 0
  br i1 %1447, label %1448, label %1619

1448:                                             ; preds = %1442, %1614
  %1449 = phi i64 [ %1615, %1614 ], [ 0, %1442 ]
  %1450 = load ptr, ptr %1438, align 8, !tbaa !39
  %1451 = getelementptr inbounds %struct.Mapping, ptr %1450, i64 %1449
  %1452 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1456, label %1454

1454:                                             ; preds = %1448
  %1455 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1455, align 4
  br label %1777

1456:                                             ; preds = %1448
  %1457 = load i32, ptr %85, align 4, !tbaa !45
  %1458 = mul i32 %1457, 3
  %1459 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1458)
  %1460 = getelementptr inbounds %struct.Mapping, ptr %1450, i64 %1449, i32 1
  store ptr %1459, ptr %1460, align 8, !tbaa !41
  %1461 = icmp eq ptr %1459, null
  br i1 %1461, label %1462, label %1464

1462:                                             ; preds = %1456
  %1463 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %1463, align 4
  br label %1777

1464:                                             ; preds = %1456
  %1465 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1471, label %1467

1467:                                             ; preds = %1464
  %1468 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %1469 = trunc i32 %1468 to i8
  %1470 = add i8 %1469, 1
  br label %1471

1471:                                             ; preds = %1464, %1467
  %1472 = phi i8 [ %1470, %1467 ], [ 1, %1464 ]
  %1473 = getelementptr inbounds %struct.Mapping, ptr %1450, i64 %1449, i32 2
  store i8 %1472, ptr %1473, align 8
  %1474 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1524, label %1476

1476:                                             ; preds = %1471
  %1477 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1478 = trunc i32 %1477 to i16
  %1479 = add i16 %1478, 1
  store i16 %1479, ptr %1451, align 8, !tbaa !128
  %1480 = zext i16 %1479 to i32
  %1481 = load i32, ptr %85, align 4, !tbaa !45
  %1482 = icmp slt i32 %1481, %1480
  br i1 %1482, label %1485, label %1483

1483:                                             ; preds = %1476
  %1484 = icmp eq i16 %1479, 0
  br i1 %1484, label %1525, label %1492

1485:                                             ; preds = %1476
  %1486 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1486, align 4
  br label %1777

1487:                                             ; preds = %1520
  %1488 = add nuw nsw i64 %1494, 1
  %1489 = load i16, ptr %1451, align 8, !tbaa !128
  %1490 = zext i16 %1489 to i64
  %1491 = icmp ult i64 %1488, %1490
  br i1 %1491, label %1492, label %1525, !llvm.loop !241

1492:                                             ; preds = %1483, %1487
  %1493 = phi i32 [ %1511, %1487 ], [ %1481, %1483 ]
  %1494 = phi i64 [ %1488, %1487 ], [ 0, %1483 ]
  %1495 = add nsw i32 %1493, -1
  %1496 = call fastcc i32 @ilog(i32 noundef %1495), !range !183
  %1497 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = load ptr, ptr %1460, align 8, !tbaa !41
  %1500 = getelementptr inbounds %struct.MappingChannel, ptr %1499, i64 %1494
  store i8 %1498, ptr %1500, align 1, !tbaa !130
  %1501 = load i32, ptr %85, align 4, !tbaa !45
  %1502 = add nsw i32 %1501, -1
  %1503 = call fastcc i32 @ilog(i32 noundef %1502), !range !183
  %1504 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = load ptr, ptr %1460, align 8, !tbaa !41
  %1507 = getelementptr inbounds %struct.MappingChannel, ptr %1506, i64 %1494, i32 1
  store i8 %1505, ptr %1507, align 1, !tbaa !131
  %1508 = getelementptr inbounds %struct.MappingChannel, ptr %1506, i64 %1494
  %1509 = load i8, ptr %1508, align 1, !tbaa !130
  %1510 = zext i8 %1509 to i32
  %1511 = load i32, ptr %85, align 4, !tbaa !45
  %1512 = icmp sgt i32 %1511, %1510
  br i1 %1512, label %1515, label %1513

1513:                                             ; preds = %1492
  %1514 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1514, align 4
  br label %1777

1515:                                             ; preds = %1492
  %1516 = and i32 %1504, 255
  %1517 = icmp ugt i32 %1511, %1516
  br i1 %1517, label %1520, label %1518

1518:                                             ; preds = %1515
  %1519 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1519, align 4
  br label %1777

1520:                                             ; preds = %1515
  %1521 = icmp eq i8 %1509, %1505
  br i1 %1521, label %1522, label %1487

1522:                                             ; preds = %1520
  %1523 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1523, align 4
  br label %1777

1524:                                             ; preds = %1471
  store i16 0, ptr %1451, align 8, !tbaa !128
  br label %1525

1525:                                             ; preds = %1487, %1483, %1524
  %1526 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 2)
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1530, label %1528

1528:                                             ; preds = %1525
  %1529 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1529, align 4
  br label %1777

1530:                                             ; preds = %1525
  %1531 = load i8, ptr %1473, align 8, !tbaa !129
  %1532 = icmp ugt i8 %1531, 1
  %1533 = load i32, ptr %85, align 4, !tbaa !45
  %1534 = icmp sgt i32 %1533, 0
  br i1 %1532, label %1543, label %1535

1535:                                             ; preds = %1530
  br i1 %1534, label %1536, label %1584

1536:                                             ; preds = %1535
  %1537 = load ptr, ptr %1460, align 8, !tbaa !41
  %1538 = zext nneg i32 %1533 to i64
  %1539 = and i64 %1538, 3
  %1540 = icmp ult i32 %1533, 4
  br i1 %1540, label %1574, label %1541

1541:                                             ; preds = %1536
  %1542 = and i64 %1538, 2147483644
  br label %1561

1543:                                             ; preds = %1530
  br i1 %1534, label %1549, label %1587

1544:                                             ; preds = %1549
  %1545 = add nuw nsw i64 %1550, 1
  %1546 = load i32, ptr %85, align 4, !tbaa !45
  %1547 = sext i32 %1546 to i64
  %1548 = icmp slt i64 %1545, %1547
  br i1 %1548, label %1549, label %1584, !llvm.loop !242

1549:                                             ; preds = %1543, %1544
  %1550 = phi i64 [ %1545, %1544 ], [ 0, %1543 ]
  %1551 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 4)
  %1552 = trunc i32 %1551 to i8
  %1553 = load ptr, ptr %1460, align 8, !tbaa !41
  %1554 = getelementptr inbounds %struct.MappingChannel, ptr %1553, i64 %1550, i32 2
  store i8 %1552, ptr %1554, align 1, !tbaa !107
  %1555 = and i32 %1551, 255
  %1556 = load i8, ptr %1473, align 8, !tbaa !129
  %1557 = zext i8 %1556 to i32
  %1558 = icmp ult i32 %1555, %1557
  br i1 %1558, label %1544, label %1559

1559:                                             ; preds = %1549
  %1560 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1560, align 4
  br label %1777

1561:                                             ; preds = %1561, %1541
  %1562 = phi i64 [ 0, %1541 ], [ %1571, %1561 ]
  %1563 = phi i64 [ 0, %1541 ], [ %1572, %1561 ]
  %1564 = getelementptr inbounds %struct.MappingChannel, ptr %1537, i64 %1562, i32 2
  store i8 0, ptr %1564, align 1, !tbaa !107
  %1565 = or disjoint i64 %1562, 1
  %1566 = getelementptr inbounds %struct.MappingChannel, ptr %1537, i64 %1565, i32 2
  store i8 0, ptr %1566, align 1, !tbaa !107
  %1567 = or disjoint i64 %1562, 2
  %1568 = getelementptr inbounds %struct.MappingChannel, ptr %1537, i64 %1567, i32 2
  store i8 0, ptr %1568, align 1, !tbaa !107
  %1569 = or disjoint i64 %1562, 3
  %1570 = getelementptr inbounds %struct.MappingChannel, ptr %1537, i64 %1569, i32 2
  store i8 0, ptr %1570, align 1, !tbaa !107
  %1571 = add nuw nsw i64 %1562, 4
  %1572 = add i64 %1563, 4
  %1573 = icmp eq i64 %1572, %1542
  br i1 %1573, label %1574, label %1561, !llvm.loop !243

1574:                                             ; preds = %1561, %1536
  %1575 = phi i64 [ 0, %1536 ], [ %1571, %1561 ]
  %1576 = icmp eq i64 %1539, 0
  br i1 %1576, label %1584, label %1577

1577:                                             ; preds = %1574, %1577
  %1578 = phi i64 [ %1581, %1577 ], [ %1575, %1574 ]
  %1579 = phi i64 [ %1582, %1577 ], [ 0, %1574 ]
  %1580 = getelementptr inbounds %struct.MappingChannel, ptr %1537, i64 %1578, i32 2
  store i8 0, ptr %1580, align 1, !tbaa !107
  %1581 = add nuw nsw i64 %1578, 1
  %1582 = add i64 %1579, 1
  %1583 = icmp eq i64 %1582, %1539
  br i1 %1583, label %1584, label %1577, !llvm.loop !244

1584:                                             ; preds = %1574, %1577, %1544, %1535
  %1585 = phi i8 [ %1531, %1535 ], [ %1556, %1544 ], [ %1531, %1577 ], [ %1531, %1574 ]
  %1586 = icmp eq i8 %1585, 0
  br i1 %1586, label %1614, label %1587

1587:                                             ; preds = %1543, %1584
  br label %1593

1588:                                             ; preds = %1608
  %1589 = add nuw nsw i64 %1594, 1
  %1590 = load i8, ptr %1473, align 8, !tbaa !129
  %1591 = zext i8 %1590 to i64
  %1592 = icmp ult i64 %1589, %1591
  br i1 %1592, label %1593, label %1614, !llvm.loop !245

1593:                                             ; preds = %1587, %1588
  %1594 = phi i64 [ %1589, %1588 ], [ 0, %1587 ]
  %1595 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1596 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1597 = trunc i32 %1596 to i8
  %1598 = getelementptr inbounds %struct.Mapping, ptr %1450, i64 %1449, i32 3, i64 %1594
  store i8 %1597, ptr %1598, align 1, !tbaa !75
  %1599 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1600 = trunc i32 %1599 to i8
  %1601 = getelementptr inbounds %struct.Mapping, ptr %1450, i64 %1449, i32 4, i64 %1594
  store i8 %1600, ptr %1601, align 1, !tbaa !75
  %1602 = load i8, ptr %1598, align 1, !tbaa !75
  %1603 = zext i8 %1602 to i32
  %1604 = load i32, ptr %920, align 8, !tbaa !202
  %1605 = icmp sgt i32 %1604, %1603
  br i1 %1605, label %1608, label %1606

1606:                                             ; preds = %1593
  %1607 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1607, align 4
  br label %1777

1608:                                             ; preds = %1593
  %1609 = and i32 %1599, 255
  %1610 = load i32, ptr %1254, align 8, !tbaa !20
  %1611 = icmp slt i32 %1609, %1610
  br i1 %1611, label %1588, label %1612

1612:                                             ; preds = %1608
  %1613 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1613, align 4
  br label %1777

1614:                                             ; preds = %1588, %1584
  %1615 = add nuw nsw i64 %1449, 1
  %1616 = load i32, ptr %1435, align 8, !tbaa !40
  %1617 = sext i32 %1616 to i64
  %1618 = icmp slt i64 %1615, %1617
  br i1 %1618, label %1448, label %1619, !llvm.loop !246

1619:                                             ; preds = %1614, %1442
  %1620 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6)
  %1621 = add i32 %1620, 1
  %1622 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 37
  store i32 %1621, ptr %1622, align 8, !tbaa !247
  %1623 = icmp ult i32 %1620, 2147483647
  br i1 %1623, label %1625, label %1624

1624:                                             ; preds = %1627, %1619
  br label %1661

1625:                                             ; preds = %1619
  %1626 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 38
  br label %1632

1627:                                             ; preds = %1655
  %1628 = add nuw nsw i64 %1633, 1
  %1629 = load i32, ptr %1622, align 8, !tbaa !247
  %1630 = sext i32 %1629 to i64
  %1631 = icmp slt i64 %1628, %1630
  br i1 %1631, label %1632, label %1624, !llvm.loop !248

1632:                                             ; preds = %1625, %1627
  %1633 = phi i64 [ 0, %1625 ], [ %1628, %1627 ]
  %1634 = getelementptr inbounds %struct.Mode, ptr %1626, i64 %1633
  %1635 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %1636 = trunc i32 %1635 to i8
  store i8 %1636, ptr %1634, align 2, !tbaa !104
  %1637 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %1638 = trunc i32 %1637 to i16
  %1639 = getelementptr inbounds %struct.Mode, ptr %1626, i64 %1633, i32 2
  store i16 %1638, ptr %1639, align 2, !tbaa !249
  %1640 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %1641 = trunc i32 %1640 to i16
  %1642 = getelementptr inbounds %struct.Mode, ptr %1626, i64 %1633, i32 3
  store i16 %1641, ptr %1642, align 2, !tbaa !250
  %1643 = call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %1644 = trunc i32 %1643 to i8
  %1645 = getelementptr inbounds %struct.Mode, ptr %1626, i64 %1633, i32 1
  store i8 %1644, ptr %1645, align 1, !tbaa !106
  %1646 = load i16, ptr %1639, align 2, !tbaa !249
  %1647 = icmp eq i16 %1646, 0
  br i1 %1647, label %1650, label %1648

1648:                                             ; preds = %1632
  %1649 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1649, align 4
  br label %1777

1650:                                             ; preds = %1632
  %1651 = load i16, ptr %1642, align 2, !tbaa !250
  %1652 = icmp eq i16 %1651, 0
  br i1 %1652, label %1655, label %1653

1653:                                             ; preds = %1650
  %1654 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1654, align 4
  br label %1777

1655:                                             ; preds = %1650
  %1656 = and i32 %1643, 255
  %1657 = load i32, ptr %1435, align 8, !tbaa !40
  %1658 = icmp slt i32 %1656, %1657
  br i1 %1658, label %1627, label %1659

1659:                                             ; preds = %1655
  %1660 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 20, ptr %1660, align 4
  br label %1777

1661:                                             ; preds = %1624, %1661
  %1662 = call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  %1663 = icmp eq i32 %1662, -1
  br i1 %1663, label %1664, label %1661, !llvm.loop !150

1664:                                             ; preds = %1661
  %1665 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %1665, align 8, !tbaa !62
  %1666 = load i32, ptr %85, align 4, !tbaa !45
  %1667 = icmp sgt i32 %1666, 0
  br i1 %1667, label %1668, label %1699

1668:                                             ; preds = %1664
  %1669 = shl nuw i32 %1251, 1
  br label %1670

1670:                                             ; preds = %1668, %1691
  %1671 = phi i64 [ 0, %1668 ], [ %1695, %1691 ]
  %1672 = load i32, ptr %109, align 4, !tbaa !55
  %1673 = shl i32 %1672, 2
  %1674 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1673)
  %1675 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %1671
  store ptr %1674, ptr %1675, align 8, !tbaa !16
  %1676 = load i32, ptr %109, align 4, !tbaa !55
  %1677 = shl i32 %1676, 1
  %1678 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1677)
  %1679 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 42, i64 %1671
  store ptr %1678, ptr %1679, align 8, !tbaa !16
  %1680 = call fastcc ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %1669)
  %1681 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 44, i64 %1671
  store ptr %1680, ptr %1681, align 8, !tbaa !16
  %1682 = load ptr, ptr %1675, align 8, !tbaa !16
  %1683 = icmp eq ptr %1682, null
  br i1 %1683, label %1689, label %1684

1684:                                             ; preds = %1670
  %1685 = load ptr, ptr %1679, align 8, !tbaa !16
  %1686 = icmp eq ptr %1685, null
  %1687 = icmp eq ptr %1680, null
  %1688 = select i1 %1686, i1 true, i1 %1687
  br i1 %1688, label %1689, label %1691

1689:                                             ; preds = %1684, %1670
  %1690 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %1690, align 4
  br label %1777

1691:                                             ; preds = %1684
  %1692 = load i32, ptr %109, align 4, !tbaa !55
  %1693 = sext i32 %1692 to i64
  %1694 = shl nsw i64 %1693, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1682, i8 0, i64 %1694, i1 false)
  %1695 = add nuw nsw i64 %1671, 1
  %1696 = load i32, ptr %85, align 4, !tbaa !45
  %1697 = sext i32 %1696 to i64
  %1698 = icmp slt i64 %1695, %1697
  br i1 %1698, label %1670, label %1699, !llvm.loop !251

1699:                                             ; preds = %1691, %1664
  %1700 = load i32, ptr %107, align 8, !tbaa !155
  %1701 = call fastcc i32 @init_blocksize(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %1700), !range !103
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1777, label %1703

1703:                                             ; preds = %1699
  %1704 = load i32, ptr %109, align 4, !tbaa !55
  %1705 = call fastcc i32 @init_blocksize(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1704), !range !103
  %1706 = icmp eq i32 %1705, 0
  br i1 %1706, label %1777, label %1707

1707:                                             ; preds = %1703
  %1708 = load i32, ptr %107, align 8, !tbaa !155
  %1709 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 24
  store i32 %1708, ptr %1709, align 8, !tbaa !54
  %1710 = load i32, ptr %109, align 4, !tbaa !55
  %1711 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 24, i64 1
  store i32 %1710, ptr %1711, align 4, !tbaa !54
  %1712 = shl i32 %1710, 1
  %1713 = load i32, ptr %1254, align 8, !tbaa !20
  %1714 = icmp sgt i32 %1713, 0
  br i1 %1714, label %1715, label %1738

1715:                                             ; preds = %1707
  %1716 = load ptr, ptr %1257, align 8, !tbaa !19
  %1717 = sdiv i32 %1710, 2
  %1718 = zext nneg i32 %1713 to i64
  br label %1719

1719:                                             ; preds = %1715, %1719
  %1720 = phi i64 [ 0, %1715 ], [ %1733, %1719 ]
  %1721 = phi i32 [ 0, %1715 ], [ %1732, %1719 ]
  %1722 = getelementptr inbounds %struct.Residue, ptr %1716, i64 %1720
  %1723 = load i32, ptr %1722, align 8, !tbaa !231
  %1724 = call i32 @llvm.umin.i32(i32 %1723, i32 %1717)
  %1725 = getelementptr inbounds %struct.Residue, ptr %1716, i64 %1720, i32 1
  %1726 = load i32, ptr %1725, align 4, !tbaa !232
  %1727 = call i32 @llvm.umin.i32(i32 %1726, i32 %1717)
  %1728 = sub i32 %1727, %1724
  %1729 = getelementptr inbounds %struct.Residue, ptr %1716, i64 %1720, i32 2
  %1730 = load i32, ptr %1729, align 8, !tbaa !233
  %1731 = udiv i32 %1728, %1730
  %1732 = call i32 @llvm.smax.i32(i32 %1731, i32 %1721)
  %1733 = add nuw nsw i64 %1720, 1
  %1734 = icmp eq i64 %1733, %1718
  br i1 %1734, label %1735, label %1719, !llvm.loop !252

1735:                                             ; preds = %1719
  %1736 = shl i32 %1732, 3
  %1737 = add i32 %1736, 8
  br label %1738

1738:                                             ; preds = %1735, %1707
  %1739 = phi i32 [ 8, %1707 ], [ %1737, %1735 ]
  %1740 = load i32, ptr %85, align 4, !tbaa !45
  %1741 = mul i32 %1740, %1739
  %1742 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 3
  %1743 = call i32 @llvm.umax.i32(i32 %1712, i32 %1741)
  store i32 %1743, ptr %1742, align 4, !tbaa !253
  %1744 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %1745 = load ptr, ptr %1744, align 8, !tbaa !5
  %1746 = icmp eq ptr %1745, null
  br i1 %1746, label %1765, label %1747

1747:                                             ; preds = %1738
  %1748 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %1749 = load i32, ptr %1748, align 4, !tbaa !127
  %1750 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19, i32 1
  %1751 = load i32, ptr %1750, align 8, !tbaa !126
  %1752 = icmp eq i32 %1749, %1751
  br i1 %1752, label %1754, label %1753

1753:                                             ; preds = %1747
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 4187, ptr noundef nonnull @__PRETTY_FUNCTION__.start_decoder) #28
  unreachable

1754:                                             ; preds = %1747
  %1755 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %1756 = load i32, ptr %1755, align 8, !tbaa !175
  %1757 = sext i32 %1756 to i64
  %1758 = zext i32 %1743 to i64
  %1759 = add nuw nsw i64 %1758, 1904
  %1760 = add nsw i64 %1759, %1757
  %1761 = zext i32 %1749 to i64
  %1762 = icmp ugt i64 %1760, %1761
  br i1 %1762, label %1763, label %1765

1763:                                             ; preds = %1754
  %1764 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %1764, align 4
  br label %1777

1765:                                             ; preds = %1754, %1738
  %1766 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %1767 = load i32, ptr %1766, align 8, !tbaa !86
  %1768 = icmp eq i32 %1767, -1
  br i1 %1768, label %1769, label %1772

1769:                                             ; preds = %1765
  %1770 = call i32 @stb_vorbis_get_file_offset(ptr noundef nonnull %0)
  %1771 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  store i32 %1770, ptr %1771, align 8, !tbaa !254
  br label %1777

1772:                                             ; preds = %1765
  %1773 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  store i32 0, ptr %1773, align 8, !tbaa !254
  br label %1777

1774:                                             ; preds = %1359, %1316, %1282, %1275, %1267, %1383, %1339
  %1775 = phi i32 [ 20, %1339 ], [ 3, %1383 ], [ 20, %1267 ], [ 20, %1275 ], [ 20, %1282 ], [ 3, %1316 ], [ 3, %1359 ]
  %1776 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 %1775, ptr %1776, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #27
  br label %1777

1777:                                             ; preds = %1612, %1606, %1559, %1528, %1522, %1518, %1513, %1485, %1462, %1454, %807, %745, %846, %705, %668, %686, %677, %531, %539, %548, %1241, %428, %402, %396, %915, %1648, %1653, %1659, %321, %327, %333, %364, %452, %584, %593, %643, %573, %525, %377, %112, %117, %121, %1769, %1772, %1703, %1699, %1774, %267, %271, %257, %135, %132, %129, %1, %1763, %1689, %1440, %1259, %975, %940, %928, %302, %292, %290, %248, %220, %200, %176, %164, %162, %127, %96, %91, %87, %80, %75, %70, %65, %60, %58, %30, %24, %19, %14
  %1778 = phi i32 [ 0, %19 ], [ 0, %24 ], [ 0, %30 ], [ 0, %58 ], [ 0, %60 ], [ 0, %65 ], [ 0, %80 ], [ 0, %91 ], [ 0, %162 ], [ 0, %176 ], [ 0, %200 ], [ 0, %220 ], [ 0, %290 ], [ 0, %302 ], [ 0, %915 ], [ 0, %928 ], [ 0, %940 ], [ 0, %975 ], [ 0, %1259 ], [ 0, %1440 ], [ 0, %1689 ], [ 0, %1763 ], [ 0, %292 ], [ 0, %248 ], [ 0, %164 ], [ 0, %127 ], [ 0, %96 ], [ 0, %87 ], [ 0, %75 ], [ 0, %70 ], [ 0, %14 ], [ 0, %1 ], [ 0, %129 ], [ 0, %132 ], [ 0, %135 ], [ 0, %257 ], [ 0, %271 ], [ 0, %267 ], [ 0, %1774 ], [ 0, %1699 ], [ 0, %1703 ], [ 1, %1772 ], [ 1, %1769 ], [ 0, %121 ], [ 0, %117 ], [ 0, %112 ], [ 0, %377 ], [ 0, %428 ], [ 0, %525 ], [ 0, %573 ], [ 0, %643 ], [ 0, %593 ], [ 0, %584 ], [ 0, %452 ], [ 0, %364 ], [ 0, %333 ], [ 0, %327 ], [ 0, %321 ], [ 0, %1659 ], [ 0, %1653 ], [ 0, %1648 ], [ 0, %396 ], [ 0, %402 ], [ 0, %1241 ], [ 0, %548 ], [ 0, %539 ], [ 0, %531 ], [ 0, %677 ], [ 0, %686 ], [ 0, %668 ], [ 0, %705 ], [ 0, %846 ], [ 0, %745 ], [ 0, %807 ], [ 0, %1454 ], [ 0, %1462 ], [ 0, %1485 ], [ 0, %1513 ], [ 0, %1518 ], [ 0, %1522 ], [ 0, %1528 ], [ 0, %1559 ], [ 0, %1606 ], [ 0, %1612 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #27
  ret i32 %1778
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @stb_vorbis_get_file_offset(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 4, !tbaa !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  br label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = tail call i64 @ftell(ptr noundef %18)
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !256
  %22 = trunc i64 %19 to i32
  %23 = sub i32 %22, %21
  br label %24

24:                                               ; preds = %1, %16, %9
  %25 = phi i32 [ %15, %9 ], [ %23, %16 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stb_vorbis_seek_frame(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ProbedPage, align 4
  %8 = alloca %struct.ProbedPage, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %15 = load i8, ptr %14, align 4, !tbaa !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %18, align 4
  br label %711

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %20 = tail call i32 @stb_vorbis_stream_length_in_samples(ptr noundef nonnull %0), !range !257
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %540, label %22

22:                                               ; preds = %19
  %23 = icmp ult i32 %20, %1
  br i1 %23, label %540, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 26
  %26 = load i32, ptr %25, align 4, !tbaa !55
  %27 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  %28 = load i32, ptr %27, align 8, !tbaa !155
  %29 = sub nsw i32 %26, %28
  %30 = ashr i32 %29, 2
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %30)
  %32 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %32, i64 12, i1 false), !tbaa.struct !258
  %33 = getelementptr inbounds %struct.ProbedPage, ptr %7, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ProbedPage, ptr %7, i64 0, i32 1
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %36 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  br label %41

41:                                               ; preds = %78, %24
  %42 = load i32, ptr %33, align 4, !tbaa !259
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load i32, ptr %34, align 4, !tbaa !260
  %46 = load i8, ptr %14, align 4, !tbaa !69
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  store i32 0, ptr %35, align 8, !tbaa !94
  %49 = load ptr, ptr %36, align 8, !tbaa !90
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %37, align 8, !tbaa !255
  %53 = zext i32 %45 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr %38, align 8, !tbaa !91
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store ptr %55, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %78

58:                                               ; preds = %51
  store ptr %54, ptr %36, align 8, !tbaa !90
  br label %78

59:                                               ; preds = %48
  %60 = load i32, ptr %39, align 8, !tbaa !256
  %61 = add i32 %60, %45
  %62 = icmp ult i32 %61, %45
  %63 = icmp slt i32 %45, 0
  %64 = or i1 %63, %62
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %68

66:                                               ; preds = %59
  %67 = zext i32 %61 to i64
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i64 [ 2147483647, %65 ], [ %67, %66 ]
  %70 = load ptr, ptr %40, align 8, !tbaa !48
  %71 = tail call i32 @fseek(ptr noundef %70, i64 noundef %69, i32 noundef 0)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  store i32 1, ptr %35, align 8, !tbaa !94
  %74 = load ptr, ptr %40, align 8, !tbaa !48
  %75 = load i32, ptr %39, align 8, !tbaa !256
  %76 = zext i32 %75 to i64
  %77 = tail call i32 @fseek(ptr noundef %74, i64 noundef %76, i32 noundef 2)
  br label %78

78:                                               ; preds = %73, %68, %58, %57, %44
  %79 = call fastcc i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef nonnull %7), !range !103
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %538, label %41, !llvm.loop !261

81:                                               ; preds = %41
  %82 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa.struct !262
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 4730, ptr noundef nonnull @__PRETTY_FUNCTION__.seek_to_sample_coarse) #28
  unreachable

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18
  %88 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa.struct !263
  %90 = load i32, ptr %87, align 8, !tbaa.struct !258
  %91 = icmp ugt i32 %31, %42
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i32, ptr %34, align 4, !tbaa !260
  %94 = icmp eq i32 %93, %90
  br i1 %94, label %331, label %95

95:                                               ; preds = %92
  %96 = uitofp i32 %31 to double
  %97 = getelementptr inbounds %struct.ProbedPage, ptr %8, i64 0, i32 2
  %98 = getelementptr inbounds %struct.ProbedPage, ptr %8, i64 0, i32 1
  br label %106

99:                                               ; preds = %86
  %100 = tail call i32 @stb_vorbis_seek_start(ptr noundef nonnull %0)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %543, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %104 = load i32, ptr %103, align 8, !tbaa !50
  %105 = icmp ugt i32 %104, %1
  br i1 %105, label %540, label %544

106:                                              ; preds = %324, %95
  %107 = phi i32 [ %93, %95 ], [ %325, %324 ]
  %108 = phi i32 [ undef, %95 ], [ %272, %324 ]
  %109 = phi i32 [ %83, %95 ], [ %328, %324 ]
  %110 = phi i32 [ 0, %95 ], [ %329, %324 ]
  %111 = phi double [ 0.000000e+00, %95 ], [ %267, %324 ]
  %112 = phi double [ 0.000000e+00, %95 ], [ %266, %324 ]
  %113 = phi i32 [ %89, %95 ], [ %327, %324 ]
  %114 = phi i32 [ %90, %95 ], [ %326, %324 ]
  %115 = icmp ult i32 %107, %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %106
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 4743, ptr noundef nonnull @__PRETTY_FUNCTION__.seek_to_sample_coarse) #28
  unreachable

117:                                              ; preds = %106
  %118 = sub i32 %114, %107
  %119 = icmp ult i32 %118, 65537
  br i1 %119, label %120, label %153

120:                                              ; preds = %117
  %121 = load i8, ptr %14, align 4, !tbaa !69
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %265

123:                                              ; preds = %120
  store i32 0, ptr %35, align 8, !tbaa !94
  %124 = load ptr, ptr %36, align 8, !tbaa !90
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %37, align 8, !tbaa !255
  %128 = zext i32 %107 to i64
  %129 = getelementptr inbounds i8, ptr %127, i64 %128
  %130 = load ptr, ptr %38, align 8, !tbaa !91
  %131 = icmp ult ptr %129, %130
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  store ptr %130, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %265

133:                                              ; preds = %126
  store ptr %129, ptr %36, align 8, !tbaa !90
  br label %265

134:                                              ; preds = %123
  %135 = load i32, ptr %39, align 8, !tbaa !256
  %136 = add i32 %135, %107
  %137 = icmp ult i32 %136, %107
  %138 = icmp slt i32 %107, 0
  %139 = or i1 %138, %137
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %143

141:                                              ; preds = %134
  %142 = zext i32 %136 to i64
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i64 [ 2147483647, %140 ], [ %142, %141 ]
  %145 = load ptr, ptr %40, align 8, !tbaa !48
  %146 = tail call i32 @fseek(ptr noundef %145, i64 noundef %144, i32 noundef 0)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %265, label %148

148:                                              ; preds = %143
  store i32 1, ptr %35, align 8, !tbaa !94
  %149 = load ptr, ptr %40, align 8, !tbaa !48
  %150 = load i32, ptr %39, align 8, !tbaa !256
  %151 = zext i32 %150 to i64
  %152 = tail call i32 @fseek(ptr noundef %149, i64 noundef %151, i32 noundef 2)
  br label %265

153:                                              ; preds = %117
  %154 = icmp ult i32 %110, 2
  br i1 %154, label %155, label %224

155:                                              ; preds = %153
  %156 = icmp eq i32 %110, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %155
  %158 = load i32, ptr %7, align 4, !tbaa !264
  %159 = sub i32 %113, %158
  %160 = uitofp i32 %159 to double
  %161 = uitofp i32 %109 to double
  %162 = fdiv double %160, %161
  %163 = uitofp i32 %158 to double
  %164 = load i32, ptr %33, align 4, !tbaa !259
  %165 = sub i32 %31, %164
  %166 = uitofp i32 %165 to double
  %167 = tail call double @llvm.fmuladd.f64(double %162, double %166, double %163)
  br label %181

168:                                              ; preds = %155
  %169 = uitofp i32 %108 to double
  %170 = fsub double %96, %169
  %171 = fmul double %170, %111
  %172 = fcmp oge double %171, 0.000000e+00
  %173 = fcmp olt double %171, 8.000000e+03
  %174 = and i1 %172, %173
  %175 = select i1 %174, double 8.000000e+03, double %171
  %176 = fcmp olt double %175, 0.000000e+00
  %177 = fcmp ogt double %175, -8.000000e+03
  %178 = and i1 %176, %177
  %179 = select i1 %178, double -8.000000e+03, double %175
  %180 = tail call double @llvm.fmuladd.f64(double %179, double 2.000000e+00, double %112)
  br label %181

181:                                              ; preds = %168, %157
  %182 = phi double [ %167, %157 ], [ %180, %168 ]
  %183 = phi double [ %162, %157 ], [ %111, %168 ]
  %184 = uitofp i32 %107 to double
  %185 = fcmp olt double %182, %184
  %186 = select i1 %185, double %184, double %182
  %187 = add i32 %114, -65536
  %188 = uitofp i32 %187 to double
  %189 = fcmp ogt double %186, %188
  %190 = select i1 %189, double %188, double %186
  %191 = fptoui double %190 to i32
  %192 = load i8, ptr %14, align 4, !tbaa !69
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %181
  store i32 0, ptr %35, align 8, !tbaa !94
  %195 = load ptr, ptr %36, align 8, !tbaa !90
  %196 = icmp eq ptr %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %194
  %198 = load ptr, ptr %37, align 8, !tbaa !255
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds i8, ptr %198, i64 %199
  %201 = load ptr, ptr %38, align 8, !tbaa !91
  %202 = icmp ult ptr %200, %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  store ptr %201, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %260

204:                                              ; preds = %197
  store ptr %200, ptr %36, align 8, !tbaa !90
  br label %260

205:                                              ; preds = %194
  %206 = load i32, ptr %39, align 8, !tbaa !256
  %207 = add i32 %206, %191
  %208 = icmp ult i32 %207, %191
  %209 = icmp slt i32 %191, 0
  %210 = or i1 %209, %208
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %214

212:                                              ; preds = %205
  %213 = zext i32 %207 to i64
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i64 [ 2147483647, %211 ], [ %213, %212 ]
  %216 = load ptr, ptr %40, align 8, !tbaa !48
  %217 = tail call i32 @fseek(ptr noundef %216, i64 noundef %215, i32 noundef 0)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %260, label %219

219:                                              ; preds = %214
  store i32 1, ptr %35, align 8, !tbaa !94
  %220 = load ptr, ptr %40, align 8, !tbaa !48
  %221 = load i32, ptr %39, align 8, !tbaa !256
  %222 = zext i32 %221 to i64
  %223 = tail call i32 @fseek(ptr noundef %220, i64 noundef %222, i32 noundef 2)
  br label %260

224:                                              ; preds = %153
  %225 = lshr i32 %118, 1
  %226 = add i32 %107, -32768
  %227 = add i32 %226, %225
  %228 = load i8, ptr %14, align 4, !tbaa !69
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %260

230:                                              ; preds = %224
  store i32 0, ptr %35, align 8, !tbaa !94
  %231 = load ptr, ptr %36, align 8, !tbaa !90
  %232 = icmp eq ptr %231, null
  br i1 %232, label %241, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %37, align 8, !tbaa !255
  %235 = zext i32 %227 to i64
  %236 = getelementptr inbounds i8, ptr %234, i64 %235
  %237 = load ptr, ptr %38, align 8, !tbaa !91
  %238 = icmp ult ptr %236, %237
  br i1 %238, label %240, label %239

239:                                              ; preds = %233
  store ptr %237, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %260

240:                                              ; preds = %233
  store ptr %236, ptr %36, align 8, !tbaa !90
  br label %260

241:                                              ; preds = %230
  %242 = load i32, ptr %39, align 8, !tbaa !256
  %243 = add i32 %242, %227
  %244 = icmp ult i32 %243, %227
  %245 = icmp slt i32 %227, 0
  %246 = or i1 %245, %244
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %250

248:                                              ; preds = %241
  %249 = zext i32 %243 to i64
  br label %250

250:                                              ; preds = %248, %247
  %251 = phi i64 [ 2147483647, %247 ], [ %249, %248 ]
  %252 = load ptr, ptr %40, align 8, !tbaa !48
  %253 = tail call i32 @fseek(ptr noundef %252, i64 noundef %251, i32 noundef 0)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  store i32 1, ptr %35, align 8, !tbaa !94
  %256 = load ptr, ptr %40, align 8, !tbaa !48
  %257 = load i32, ptr %39, align 8, !tbaa !256
  %258 = zext i32 %257 to i64
  %259 = tail call i32 @fseek(ptr noundef %256, i64 noundef %258, i32 noundef 2)
  br label %260

260:                                              ; preds = %255, %250, %240, %239, %224, %219, %214, %204, %203, %181
  %261 = phi double [ %190, %181 ], [ %190, %203 ], [ %190, %204 ], [ %190, %214 ], [ %190, %219 ], [ %112, %224 ], [ %112, %239 ], [ %112, %240 ], [ %112, %250 ], [ %112, %255 ]
  %262 = phi double [ %183, %181 ], [ %183, %203 ], [ %183, %204 ], [ %183, %214 ], [ %183, %219 ], [ %111, %224 ], [ %111, %239 ], [ %111, %240 ], [ %111, %250 ], [ %111, %255 ]
  %263 = tail call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef null, ptr noundef null)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %538, label %265

265:                                              ; preds = %260, %148, %143, %133, %132, %120
  %266 = phi double [ %261, %260 ], [ %112, %120 ], [ %112, %132 ], [ %112, %133 ], [ %112, %143 ], [ %112, %148 ]
  %267 = phi double [ %262, %260 ], [ %111, %120 ], [ %111, %132 ], [ %111, %133 ], [ %111, %143 ], [ %111, %148 ]
  br label %268

268:                                              ; preds = %308, %265
  %269 = call fastcc i32 @get_seek_page_info(ptr noundef nonnull %0, ptr noundef nonnull %8), !range !103
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %538, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %97, align 4
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %274, label %312

274:                                              ; preds = %271
  %275 = load i32, ptr %98, align 4, !tbaa !260
  %276 = load i8, ptr %14, align 4, !tbaa !69
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %308

278:                                              ; preds = %274
  store i32 0, ptr %35, align 8, !tbaa !94
  %279 = load ptr, ptr %36, align 8, !tbaa !90
  %280 = icmp eq ptr %279, null
  br i1 %280, label %289, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %37, align 8, !tbaa !255
  %283 = zext i32 %275 to i64
  %284 = getelementptr inbounds i8, ptr %282, i64 %283
  %285 = load ptr, ptr %38, align 8, !tbaa !91
  %286 = icmp ult ptr %284, %285
  br i1 %286, label %288, label %287

287:                                              ; preds = %281
  store ptr %285, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %308

288:                                              ; preds = %281
  store ptr %284, ptr %36, align 8, !tbaa !90
  br label %308

289:                                              ; preds = %278
  %290 = load i32, ptr %39, align 8, !tbaa !256
  %291 = add i32 %290, %275
  %292 = icmp ult i32 %291, %275
  %293 = icmp slt i32 %275, 0
  %294 = or i1 %293, %292
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %298

296:                                              ; preds = %289
  %297 = zext i32 %291 to i64
  br label %298

298:                                              ; preds = %296, %295
  %299 = phi i64 [ 2147483647, %295 ], [ %297, %296 ]
  %300 = load ptr, ptr %40, align 8, !tbaa !48
  %301 = tail call i32 @fseek(ptr noundef %300, i64 noundef %299, i32 noundef 0)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %298
  store i32 1, ptr %35, align 8, !tbaa !94
  %304 = load ptr, ptr %40, align 8, !tbaa !48
  %305 = load i32, ptr %39, align 8, !tbaa !256
  %306 = zext i32 %305 to i64
  %307 = tail call i32 @fseek(ptr noundef %304, i64 noundef %306, i32 noundef 2)
  br label %308

308:                                              ; preds = %303, %298, %288, %287, %274
  %309 = load i32, ptr %8, align 4, !tbaa !264
  %310 = icmp ult i32 %309, %114
  br i1 %310, label %268, label %311

311:                                              ; preds = %308
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 4785, ptr noundef nonnull @__PRETTY_FUNCTION__.seek_to_sample_coarse) #28
  unreachable

312:                                              ; preds = %271
  %313 = load i32, ptr %8, align 4
  %314 = icmp eq i32 %313, %114
  br i1 %314, label %315, label %318

315:                                              ; preds = %312
  %316 = icmp ugt i32 %110, 1
  %317 = or i1 %316, %119
  br i1 %317, label %331, label %324

318:                                              ; preds = %312
  %319 = icmp ult i32 %31, %272
  br i1 %319, label %320, label %322

320:                                              ; preds = %318
  %321 = load i32, ptr %98, align 4, !tbaa.struct !263
  br label %324

322:                                              ; preds = %318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !258
  %323 = load i32, ptr %34, align 4, !tbaa !260
  br label %324

324:                                              ; preds = %322, %320, %315
  %325 = phi i32 [ %107, %315 ], [ %107, %320 ], [ %323, %322 ]
  %326 = phi i32 [ %114, %315 ], [ %313, %320 ], [ %114, %322 ]
  %327 = phi i32 [ %113, %315 ], [ %321, %320 ], [ %113, %322 ]
  %328 = phi i32 [ %109, %315 ], [ %272, %320 ], [ %109, %322 ]
  %329 = add nuw nsw i32 %110, 1
  %330 = icmp eq i32 %325, %326
  br i1 %330, label %331, label %106, !llvm.loop !265

331:                                              ; preds = %324, %315, %92
  %332 = load i32, ptr %7, align 4, !tbaa !264
  tail call fastcc void @set_file_offset(ptr noundef nonnull %0, i32 noundef %332)
  %333 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %540, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 65
  %337 = load i32, ptr %336, align 8, !tbaa !152
  %338 = icmp sgt i32 %337, -1
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %341 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  %342 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  br label %344

343:                                              ; preds = %335
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 4808, ptr noundef nonnull @__PRETTY_FUNCTION__.seek_to_sample_coarse) #28
  unreachable

344:                                              ; preds = %493, %339
  %345 = phi i32 [ %495, %493 ], [ %337, %339 ]
  %346 = phi i32 [ %490, %493 ], [ %332, %339 ]
  %347 = zext i32 %345 to i64
  br label %348

348:                                              ; preds = %352, %344
  %349 = phi i64 [ %353, %352 ], [ %347, %344 ]
  %350 = trunc i64 %349 to i32
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %348
  %353 = add nsw i64 %349, -1
  %354 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !75
  %356 = icmp eq i8 %355, -1
  br i1 %356, label %348, label %498, !llvm.loop !266

357:                                              ; preds = %348
  %358 = load i8, ptr %340, align 1, !tbaa !153
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %496, label %361

361:                                              ; preds = %357
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %362 = icmp ugt i32 %346, 65535
  br i1 %362, label %365, label %363

363:                                              ; preds = %361
  %364 = load i32, ptr %341, align 8, !tbaa !254
  br label %369

365:                                              ; preds = %361
  %366 = add i32 %346, -65536
  %367 = load i32, ptr %341, align 8, !tbaa !254
  %368 = call i32 @llvm.umax.i32(i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %365, %363
  %370 = phi i32 [ %364, %363 ], [ %368, %365 ]
  %371 = load i8, ptr %14, align 4, !tbaa !69
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %403

373:                                              ; preds = %369
  store i32 0, ptr %35, align 8, !tbaa !94
  %374 = load ptr, ptr %36, align 8, !tbaa !90
  %375 = icmp eq ptr %374, null
  br i1 %375, label %384, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %37, align 8, !tbaa !255
  %378 = zext i32 %370 to i64
  %379 = getelementptr inbounds i8, ptr %377, i64 %378
  %380 = load ptr, ptr %38, align 8, !tbaa !91
  %381 = icmp ult ptr %379, %380
  br i1 %381, label %383, label %382

382:                                              ; preds = %376
  store ptr %380, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %403

383:                                              ; preds = %376
  store ptr %379, ptr %36, align 8, !tbaa !90
  br label %403

384:                                              ; preds = %373
  %385 = load i32, ptr %39, align 8, !tbaa !256
  %386 = add i32 %385, %370
  %387 = icmp ult i32 %386, %370
  %388 = icmp slt i32 %370, 0
  %389 = or i1 %388, %387
  br i1 %389, label %390, label %391

390:                                              ; preds = %384
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %393

391:                                              ; preds = %384
  %392 = zext i32 %386 to i64
  br label %393

393:                                              ; preds = %391, %390
  %394 = phi i64 [ 2147483647, %390 ], [ %392, %391 ]
  %395 = load ptr, ptr %40, align 8, !tbaa !48
  %396 = call i32 @fseek(ptr noundef %395, i64 noundef %394, i32 noundef 0)
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %393
  store i32 1, ptr %35, align 8, !tbaa !94
  %399 = load ptr, ptr %40, align 8, !tbaa !48
  %400 = load i32, ptr %39, align 8, !tbaa !256
  %401 = zext i32 %400 to i64
  %402 = call i32 @fseek(ptr noundef %399, i64 noundef %401, i32 noundef 2)
  br label %403

403:                                              ; preds = %398, %393, %383, %382, %369
  %404 = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef null)
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %470, label %406

406:                                              ; preds = %403, %467
  %407 = load i32, ptr %6, align 4, !tbaa !54
  %408 = icmp ult i32 %407, %346
  %409 = load i8, ptr %14, align 4, !tbaa !69
  br i1 %408, label %433, label %410

410:                                              ; preds = %406
  %411 = icmp eq i8 %409, 0
  br i1 %411, label %412, label %427

412:                                              ; preds = %410
  %413 = load ptr, ptr %36, align 8, !tbaa !90
  %414 = icmp eq ptr %413, null
  br i1 %414, label %421, label %415

415:                                              ; preds = %412
  %416 = load ptr, ptr %37, align 8, !tbaa !255
  %417 = ptrtoint ptr %413 to i64
  %418 = ptrtoint ptr %416 to i64
  %419 = sub i64 %417, %418
  %420 = trunc i64 %419 to i32
  br label %427

421:                                              ; preds = %412
  %422 = load ptr, ptr %40, align 8, !tbaa !48
  %423 = call i64 @ftell(ptr noundef %422)
  %424 = load i32, ptr %39, align 8, !tbaa !256
  %425 = trunc i64 %423 to i32
  %426 = sub i32 %425, %424
  br label %427

427:                                              ; preds = %421, %415, %410
  %428 = phi i32 [ %420, %415 ], [ %426, %421 ], [ 0, %410 ]
  %429 = icmp ult i32 %428, %346
  br i1 %429, label %471, label %430

430:                                              ; preds = %427
  %431 = load i32, ptr %6, align 4, !tbaa !54
  %432 = load i8, ptr %14, align 4, !tbaa !69
  br label %433

433:                                              ; preds = %430, %406
  %434 = phi i8 [ %432, %430 ], [ %409, %406 ]
  %435 = phi i32 [ %431, %430 ], [ %407, %406 ]
  %436 = icmp eq i8 %434, 0
  br i1 %436, label %437, label %467

437:                                              ; preds = %433
  store i32 0, ptr %35, align 8, !tbaa !94
  %438 = load ptr, ptr %36, align 8, !tbaa !90
  %439 = icmp eq ptr %438, null
  br i1 %439, label %448, label %440

440:                                              ; preds = %437
  %441 = load ptr, ptr %37, align 8, !tbaa !255
  %442 = zext i32 %435 to i64
  %443 = getelementptr inbounds i8, ptr %441, i64 %442
  %444 = load ptr, ptr %38, align 8, !tbaa !91
  %445 = icmp ult ptr %443, %444
  br i1 %445, label %447, label %446

446:                                              ; preds = %440
  store ptr %444, ptr %36, align 8, !tbaa !90
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %467

447:                                              ; preds = %440
  store ptr %443, ptr %36, align 8, !tbaa !90
  br label %467

448:                                              ; preds = %437
  %449 = load i32, ptr %39, align 8, !tbaa !256
  %450 = add i32 %449, %435
  %451 = icmp ult i32 %450, %435
  %452 = icmp slt i32 %435, 0
  %453 = or i1 %452, %451
  br i1 %453, label %454, label %455

454:                                              ; preds = %448
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %457

455:                                              ; preds = %448
  %456 = zext i32 %450 to i64
  br label %457

457:                                              ; preds = %455, %454
  %458 = phi i64 [ 2147483647, %454 ], [ %456, %455 ]
  %459 = load ptr, ptr %40, align 8, !tbaa !48
  %460 = call i32 @fseek(ptr noundef %459, i64 noundef %458, i32 noundef 0)
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %467, label %462

462:                                              ; preds = %457
  store i32 1, ptr %35, align 8, !tbaa !94
  %463 = load ptr, ptr %40, align 8, !tbaa !48
  %464 = load i32, ptr %39, align 8, !tbaa !256
  %465 = zext i32 %464 to i64
  %466 = call i32 @fseek(ptr noundef %463, i64 noundef %465, i32 noundef 2)
  br label %467

467:                                              ; preds = %462, %457, %447, %446, %433
  %468 = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef null)
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %406, !llvm.loop !267

470:                                              ; preds = %403, %467
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %538

471:                                              ; preds = %427
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  %472 = load i8, ptr %14, align 4, !tbaa !69
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %474, label %489

474:                                              ; preds = %471
  %475 = load ptr, ptr %36, align 8, !tbaa !90
  %476 = icmp eq ptr %475, null
  br i1 %476, label %483, label %477

477:                                              ; preds = %474
  %478 = load ptr, ptr %37, align 8, !tbaa !255
  %479 = ptrtoint ptr %475 to i64
  %480 = ptrtoint ptr %478 to i64
  %481 = sub i64 %479, %480
  %482 = trunc i64 %481 to i32
  br label %489

483:                                              ; preds = %474
  %484 = load ptr, ptr %40, align 8, !tbaa !48
  %485 = call i64 @ftell(ptr noundef %484)
  %486 = load i32, ptr %39, align 8, !tbaa !256
  %487 = trunc i64 %485 to i32
  %488 = sub i32 %487, %486
  br label %489

489:                                              ; preds = %483, %477, %471
  %490 = phi i32 [ %482, %477 ], [ %488, %483 ], [ 0, %471 ]
  %491 = call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %538, label %493

493:                                              ; preds = %489
  %494 = load i32, ptr %342, align 8, !tbaa !99
  %495 = add nsw i32 %494, -1
  br label %344

496:                                              ; preds = %357
  %497 = call i32 @llvm.smin.i32(i32 %345, i32 0)
  br label %498

498:                                              ; preds = %352, %496
  %499 = phi i32 [ %497, %496 ], [ %350, %352 ]
  %500 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  store i32 0, ptr %500, align 4, !tbaa !49
  %501 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  store i32 0, ptr %501, align 4, !tbaa !115
  %502 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  store i32 0, ptr %502, align 8, !tbaa !93
  %503 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 64
  store i32 0, ptr %503, align 4, !tbaa !268
  %504 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  store i8 0, ptr %504, align 4, !tbaa !116
  %505 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %505, align 8, !tbaa !62
  %506 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  store i32 %499, ptr %506, align 8, !tbaa !86
  br i1 %351, label %507, label %531

507:                                              ; preds = %498
  %508 = and i64 %349, 4294967295
  br label %509

509:                                              ; preds = %528, %507
  %510 = phi i64 [ 0, %507 ], [ %529, %528 ]
  %511 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !75
  %513 = load ptr, ptr %36, align 8, !tbaa !90
  %514 = icmp eq ptr %513, null
  br i1 %514, label %521, label %515

515:                                              ; preds = %509
  %516 = zext i8 %512 to i64
  %517 = getelementptr inbounds i8, ptr %513, i64 %516
  store ptr %517, ptr %36, align 8, !tbaa !90
  %518 = load ptr, ptr %38, align 8, !tbaa !91
  %519 = icmp ult ptr %517, %518
  br i1 %519, label %528, label %520

520:                                              ; preds = %515
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %528

521:                                              ; preds = %509
  %522 = load ptr, ptr %40, align 8, !tbaa !48
  %523 = call i64 @ftell(ptr noundef %522)
  %524 = load ptr, ptr %40, align 8, !tbaa !48
  %525 = zext i8 %512 to i64
  %526 = add nsw i64 %523, %525
  %527 = call i32 @fseek(ptr noundef %524, i64 noundef %526, i32 noundef 0)
  br label %528

528:                                              ; preds = %521, %520, %515
  %529 = add nuw nsw i64 %510, 1
  %530 = icmp eq i64 %529, %508
  br i1 %530, label %531, label %509, !llvm.loop !269

531:                                              ; preds = %528, %498
  %532 = call fastcc i32 @vorbis_pump_first_frame(ptr noundef nonnull %0)
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %543, label %534

534:                                              ; preds = %531
  %535 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %536 = load i32, ptr %535, align 8, !tbaa !50
  %537 = icmp ugt i32 %536, %1
  br i1 %537, label %540, label %544

538:                                              ; preds = %78, %260, %268, %489, %470
  %539 = call i32 @stb_vorbis_seek_start(ptr noundef %0)
  br label %540

540:                                              ; preds = %538, %534, %331, %102, %22, %19
  %541 = phi i32 [ 37, %538 ], [ 7, %19 ], [ 11, %22 ], [ 37, %102 ], [ 37, %331 ], [ 37, %534 ]
  %542 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 %541, ptr %542, align 4
  br label %543

543:                                              ; preds = %99, %531, %540
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  br label %711

544:                                              ; preds = %534, %102
  %545 = phi i32 [ %536, %534 ], [ %104, %102 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  %546 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 46
  %547 = load i32, ptr %546, align 4, !tbaa !49
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %544
  call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 4890, ptr noundef nonnull @__PRETTY_FUNCTION__.stb_vorbis_seek_frame) #28
  unreachable

550:                                              ; preds = %544
  %551 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %552 = icmp ugt i32 %545, %1
  br i1 %552, label %553, label %554

553:                                              ; preds = %550
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 4891, ptr noundef nonnull @__PRETTY_FUNCTION__.stb_vorbis_seek_frame) #28
  unreachable

554:                                              ; preds = %550
  %555 = load i32, ptr %25, align 4, !tbaa !55
  %556 = mul nsw i32 %555, 3
  %557 = load i32, ptr %27, align 8, !tbaa !155
  %558 = sub nsw i32 %556, %557
  %559 = ashr i32 %558, 2
  %560 = icmp ult i32 %545, %1
  br i1 %560, label %561, label %706

561:                                              ; preds = %554
  %562 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 37
  %563 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %564 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 64
  %565 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %566 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %567 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %568 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  br label %569

569:                                              ; preds = %561, %703
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #27
  %570 = call fastcc i32 @vorbis_decode_initial(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13), !range !103
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %673, label %572

572:                                              ; preds = %569
  %573 = load i32, ptr %562, align 8, !tbaa !247
  %574 = add nsw i32 %573, -1
  %575 = icmp slt i32 %573, 1
  br i1 %575, label %635, label %576

576:                                              ; preds = %572
  %577 = icmp ult i32 %573, 16385
  br i1 %577, label %578, label %601

578:                                              ; preds = %576
  %579 = icmp ult i32 %573, 17
  br i1 %579, label %580, label %585

580:                                              ; preds = %578
  %581 = zext nneg i32 %574 to i64
  %582 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !75
  %584 = sext i8 %583 to i16
  br label %635

585:                                              ; preds = %578
  %586 = icmp ult i32 %573, 513
  br i1 %586, label %587, label %594

587:                                              ; preds = %585
  %588 = lshr i32 %574, 5
  %589 = zext nneg i32 %588 to i64
  %590 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %589
  %591 = load i8, ptr %590, align 1, !tbaa !75
  %592 = sext i8 %591 to i16
  %593 = add nsw i16 %592, 5
  br label %635

594:                                              ; preds = %585
  %595 = lshr i32 %574, 10
  %596 = zext nneg i32 %595 to i64
  %597 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %596
  %598 = load i8, ptr %597, align 1, !tbaa !75
  %599 = sext i8 %598 to i16
  %600 = add nsw i16 %599, 10
  br label %635

601:                                              ; preds = %576
  %602 = icmp ult i32 %573, 16777217
  br i1 %602, label %603, label %619

603:                                              ; preds = %601
  %604 = icmp ult i32 %573, 524289
  br i1 %604, label %605, label %612

605:                                              ; preds = %603
  %606 = lshr i32 %574, 15
  %607 = zext nneg i32 %606 to i64
  %608 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !75
  %610 = sext i8 %609 to i16
  %611 = add nsw i16 %610, 15
  br label %635

612:                                              ; preds = %603
  %613 = lshr i32 %574, 20
  %614 = zext nneg i32 %613 to i64
  %615 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %614
  %616 = load i8, ptr %615, align 1, !tbaa !75
  %617 = sext i8 %616 to i16
  %618 = add nsw i16 %617, 20
  br label %635

619:                                              ; preds = %601
  %620 = icmp ult i32 %573, 536870913
  br i1 %620, label %621, label %628

621:                                              ; preds = %619
  %622 = lshr i32 %574, 25
  %623 = zext nneg i32 %622 to i64
  %624 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %623
  %625 = load i8, ptr %624, align 1, !tbaa !75
  %626 = sext i8 %625 to i16
  %627 = add nsw i16 %626, 25
  br label %635

628:                                              ; preds = %619
  %629 = lshr i32 %574, 30
  %630 = zext nneg i32 %629 to i64
  %631 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %630
  %632 = load i8, ptr %631, align 1, !tbaa !75
  %633 = sext i8 %632 to i16
  %634 = add nsw i16 %633, 30
  br label %635

635:                                              ; preds = %628, %621, %612, %605, %594, %587, %580, %572
  %636 = phi i16 [ %584, %580 ], [ %593, %587 ], [ %600, %594 ], [ %611, %605 ], [ %618, %612 ], [ %627, %621 ], [ %634, %628 ], [ 0, %572 ]
  %637 = load i32, ptr %13, align 4, !tbaa !54
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 38, i64 %638
  %640 = load i8, ptr %639, align 2, !tbaa !104
  %641 = icmp eq i8 %640, 0
  %642 = select i1 %641, i16 1, i16 3
  %643 = add nsw i16 %636, 7
  %644 = add nsw i16 %643, %642
  %645 = sdiv i16 %644, 8
  %646 = sext i16 %645 to i32
  %647 = load i8, ptr %563, align 4, !tbaa !116
  %648 = trunc i16 %645 to i8
  %649 = add i8 %647, %648
  store i8 %649, ptr %563, align 4, !tbaa !116
  %650 = load i32, ptr %564, align 4, !tbaa !268
  %651 = sub nsw i32 %650, %646
  store i32 %651, ptr %564, align 4, !tbaa !268
  %652 = sub nsw i32 0, %646
  %653 = load ptr, ptr %36, align 8, !tbaa !90
  %654 = icmp eq ptr %653, null
  br i1 %654, label %661, label %655

655:                                              ; preds = %635
  %656 = sext i32 %652 to i64
  %657 = getelementptr inbounds i8, ptr %653, i64 %656
  store ptr %657, ptr %36, align 8, !tbaa !90
  %658 = load ptr, ptr %38, align 8, !tbaa !91
  %659 = icmp ult ptr %657, %658
  br i1 %659, label %668, label %660

660:                                              ; preds = %655
  store i32 1, ptr %35, align 8, !tbaa !94
  br label %668

661:                                              ; preds = %635
  %662 = load ptr, ptr %40, align 8, !tbaa !48
  %663 = call i64 @ftell(ptr noundef %662)
  %664 = load ptr, ptr %40, align 8, !tbaa !48
  %665 = sext i32 %652 to i64
  %666 = add nsw i64 %663, %665
  %667 = call i32 @fseek(ptr noundef %664, i64 noundef %666, i32 noundef 0)
  br label %668

668:                                              ; preds = %661, %660, %655
  %669 = load i32, ptr %565, align 8, !tbaa !86
  %670 = icmp eq i32 %669, -1
  br i1 %670, label %671, label %675

671:                                              ; preds = %668
  %672 = load i32, ptr %566, align 8, !tbaa !99
  br label %675

673:                                              ; preds = %569
  %674 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 37, ptr %674, align 4
  br label %701

675:                                              ; preds = %671, %668
  %676 = phi i32 [ %672, %671 ], [ %669, %668 ]
  %677 = add nsw i32 %676, -1
  store i32 %677, ptr %565, align 8, !tbaa !86
  store i32 0, ptr %567, align 8, !tbaa !93
  %678 = load i32, ptr %11, align 4, !tbaa !54
  %679 = load i32, ptr %9, align 4, !tbaa !54
  %680 = sub nsw i32 %678, %679
  %681 = load i32, ptr %551, align 8, !tbaa !50
  %682 = add i32 %681, %680
  %683 = icmp ugt i32 %682, %1
  br i1 %683, label %701, label %684

684:                                              ; preds = %675
  %685 = add i32 %682, %559
  %686 = icmp ugt i32 %685, %1
  br i1 %686, label %687, label %696

687:                                              ; preds = %684
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %688 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %695, label %690

690:                                              ; preds = %687
  %691 = load i32, ptr %3, align 4, !tbaa !54
  %692 = load i32, ptr %5, align 4, !tbaa !54
  %693 = load i32, ptr %4, align 4, !tbaa !54
  %694 = call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %691, i32 noundef %692, i32 noundef %693)
  br label %695

695:                                              ; preds = %687, %690
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  br label %703

696:                                              ; preds = %684
  store i32 %682, ptr %551, align 8, !tbaa !50
  store i32 0, ptr %568, align 8, !tbaa !62
  %697 = call fastcc i32 @maybe_start_packet(ptr noundef nonnull %0)
  br label %698

698:                                              ; preds = %698, %696
  %699 = call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  %700 = icmp eq i32 %699, -1
  br i1 %700, label %703, label %698, !llvm.loop !150

701:                                              ; preds = %675, %673
  %702 = phi i32 [ 0, %673 ], [ 1, %675 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  br label %711

703:                                              ; preds = %698, %695
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  %704 = load i32, ptr %551, align 8, !tbaa !50
  %705 = icmp ult i32 %704, %1
  br i1 %705, label %569, label %706, !llvm.loop !270

706:                                              ; preds = %703, %554
  %707 = phi i32 [ %545, %554 ], [ %704, %703 ]
  %708 = icmp eq i32 %707, %1
  br i1 %708, label %711, label %709

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 37, ptr %710, align 4
  br label %711

711:                                              ; preds = %701, %543, %706, %709, %17
  %712 = phi i32 [ 0, %17 ], [ 0, %709 ], [ 1, %706 ], [ 0, %543 ], [ %702, %701 ]
  ret i32 %712
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @vorbis_pump_first_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %5 = call fastcc i32 @vorbis_decode_packet(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !tbaa !54
  %9 = load i32, ptr %4, align 4, !tbaa !54
  %10 = load i32, ptr %3, align 4, !tbaa !54
  %11 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef %0, i32 noundef %8, i32 noundef %9, i32 noundef %10)
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret i32 %5
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @maybe_start_packet(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp ult ptr %7, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %14, align 8, !tbaa !94
  br label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %16, ptr %6, align 8, !tbaa !90
  %17 = load i8, ptr %7, align 1, !tbaa !75
  br label %27

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = tail call i32 @fgetc(ptr noundef %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %24, align 8, !tbaa !94
  br label %27

25:                                               ; preds = %18
  %26 = trunc i32 %21 to i8
  br label %27

27:                                               ; preds = %13, %15, %23, %25
  %28 = phi i8 [ 0, %13 ], [ %17, %15 ], [ 0, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !94
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %27
  %33 = icmp eq i8 %28, 79
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 30, ptr %35, align 4
  br label %118

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8, !tbaa !90
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = icmp ult ptr %37, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %44, ptr %6, align 8, !tbaa !90
  %45 = load i8, ptr %37, align 1, !tbaa !75
  br label %53

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = tail call i32 @fgetc(ptr noundef %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = trunc i32 %49 to i8
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8 [ %45, %43 ], [ %52, %51 ]
  %55 = icmp eq i8 %54, 103
  br i1 %55, label %59, label %57

56:                                               ; preds = %46, %39
  store i32 1, ptr %29, align 8, !tbaa !94
  br label %57

57:                                               ; preds = %56, %53
  %58 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 30, ptr %58, align 4
  br label %118

59:                                               ; preds = %53
  %60 = load ptr, ptr %6, align 8, !tbaa !90
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %64 = load ptr, ptr %63, align 8, !tbaa !91
  %65 = icmp ult ptr %60, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %67, ptr %6, align 8, !tbaa !90
  %68 = load i8, ptr %60, align 1, !tbaa !75
  br label %76

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = tail call i32 @fgetc(ptr noundef %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = trunc i32 %72 to i8
  br label %76

76:                                               ; preds = %66, %74
  %77 = phi i8 [ %68, %66 ], [ %75, %74 ]
  %78 = icmp eq i8 %77, 103
  br i1 %78, label %82, label %80

79:                                               ; preds = %69, %62
  store i32 1, ptr %29, align 8, !tbaa !94
  br label %80

80:                                               ; preds = %79, %76
  %81 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 30, ptr %81, align 4
  br label %118

82:                                               ; preds = %76
  %83 = tail call fastcc zeroext i8 @get8(ptr noundef nonnull %0)
  %84 = icmp eq i8 %83, 83
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 30, ptr %86, align 4
  br label %118

87:                                               ; preds = %82
  %88 = tail call fastcc i32 @start_page_no_capturepattern(ptr noundef nonnull %0), !range !103
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %92 = load i8, ptr %91, align 1, !tbaa !153
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  store i32 0, ptr %96, align 4, !tbaa !115
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  store i8 0, ptr %97, align 4, !tbaa !116
  %98 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 32, ptr %98, align 4
  br label %118

99:                                               ; preds = %90, %1
  %100 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  br label %101

101:                                              ; preds = %107, %99
  %102 = load i32, ptr %2, align 8, !tbaa !86
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load i8, ptr %100, align 1, !tbaa !153
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %101, label %111, !llvm.loop !271

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 32, ptr %112, align 4
  br label %118

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  store i32 0, ptr %114, align 4, !tbaa !115
  %115 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  store i32 0, ptr %115, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 64
  store i32 0, ptr %116, align 4, !tbaa !268
  %117 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  store i8 0, ptr %117, align 4, !tbaa !116
  br label %118

118:                                              ; preds = %104, %87, %27, %95, %85, %80, %57, %34, %113, %111
  %119 = phi i32 [ 0, %111 ], [ 1, %113 ], [ 0, %34 ], [ 0, %57 ], [ 0, %80 ], [ 0, %85 ], [ 0, %95 ], [ 0, %27 ], [ 0, %87 ], [ 0, %104 ]
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stb_vorbis_seek(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call i32 @stb_vorbis_seek_frame(ptr noundef %0, i32 noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %75, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 45
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %75, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %14 = load i8, ptr %13, align 4, !tbaa !69
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %17, align 4
  br label %62

18:                                               ; preds = %12
  %19 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %22, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %23, align 4, !tbaa !67
  br label %62

24:                                               ; preds = %18
  %25 = load i32, ptr %3, align 4, !tbaa !54
  %26 = load i32, ptr %5, align 4, !tbaa !54
  %27 = load i32, ptr %4, align 4, !tbaa !54
  %28 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %25, i32 noundef %26, i32 noundef %27)
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = sext i32 %26 to i64
  %34 = zext nneg i32 %30 to i64
  %35 = icmp eq i32 %30, 1
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = and i64 %34, 2147483646
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %44, %38 ]
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %39
  %41 = load <2 x ptr>, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds float, <2 x ptr> %41, i64 %33
  %43 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %39
  store <2 x ptr> %42, ptr %43, align 8, !tbaa !16
  %44 = add nuw i64 %39, 2
  %45 = icmp eq i64 %44, %37
  br i1 %45, label %46, label %38, !llvm.loop !272

46:                                               ; preds = %38
  %47 = icmp eq i64 %37, %34
  br i1 %47, label %58, label %48

48:                                               ; preds = %32, %46
  %49 = phi i64 [ 0, %32 ], [ %37, %46 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %56, %50 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = getelementptr inbounds float, ptr %53, i64 %33
  %55 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %51
  store ptr %54, ptr %55, align 8, !tbaa !16
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %34
  br i1 %57, label %58, label %50, !llvm.loop !273

58:                                               ; preds = %50, %46, %24
  %59 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 %26, ptr %59, align 4, !tbaa !67
  %60 = add nsw i32 %28, %26
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 %60, ptr %61, align 8, !tbaa !68
  br label %62

62:                                               ; preds = %16, %21, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  %63 = icmp ult i32 %10, %1
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 4928, ptr noundef nonnull @__PRETTY_FUNCTION__.stb_vorbis_seek) #28
  unreachable

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  %67 = load i32, ptr %66, align 4, !tbaa !67
  %68 = sub i32 %1, %10
  %69 = add nsw i32 %67, %68
  %70 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  %71 = load i32, ptr %70, align 8, !tbaa !68
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 4929, ptr noundef nonnull @__PRETTY_FUNCTION__.stb_vorbis_seek) #28
  unreachable

74:                                               ; preds = %65
  store i32 %69, ptr %66, align 4, !tbaa !67
  br label %75

75:                                               ; preds = %8, %74, %2
  %76 = phi i32 [ 0, %2 ], [ 1, %74 ], [ 1, %8 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_frame_float(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %8 = load i8, ptr %7, align 4, !tbaa !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %11, align 4
  br label %62

12:                                               ; preds = %3
  %13 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %16, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %17, align 4, !tbaa !67
  br label %62

18:                                               ; preds = %12
  %19 = load i32, ptr %4, align 4, !tbaa !54
  %20 = load i32, ptr %6, align 4, !tbaa !54
  %21 = load i32, ptr %5, align 4, !tbaa !54
  %22 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !45
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = sext i32 %20 to i64
  %28 = zext nneg i32 %24 to i64
  %29 = icmp eq i32 %24, 1
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = and i64 %28, 2147483646
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %38, %32 ]
  %34 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %33
  %35 = load <2 x ptr>, ptr %34, align 8, !tbaa !16
  %36 = getelementptr inbounds float, <2 x ptr> %35, i64 %27
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %33
  store <2 x ptr> %36, ptr %37, align 8, !tbaa !16
  %38 = add nuw i64 %33, 2
  %39 = icmp eq i64 %38, %31
  br i1 %39, label %40, label %32, !llvm.loop !274

40:                                               ; preds = %32
  %41 = icmp eq i64 %31, %28
  br i1 %41, label %52, label %42

42:                                               ; preds = %26, %40
  %43 = phi i64 [ 0, %26 ], [ %31, %40 ]
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ %50, %44 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  %48 = getelementptr inbounds float, ptr %47, i64 %27
  %49 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %45
  store ptr %48, ptr %49, align 8, !tbaa !16
  %50 = add nuw nsw i64 %45, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %52, label %44, !llvm.loop !275

52:                                               ; preds = %44, %40, %18
  %53 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 %20, ptr %53, align 4, !tbaa !67
  %54 = add nsw i32 %22, %20
  %55 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 %54, ptr %55, align 8, !tbaa !68
  %56 = icmp eq ptr %1, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 %24, ptr %1, align 4, !tbaa !54
  br label %58

58:                                               ; preds = %57, %52
  %59 = icmp eq ptr %2, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41
  store ptr %61, ptr %2, align 8, !tbaa !16
  br label %62

62:                                               ; preds = %58, %60, %15, %10
  %63 = phi i32 [ 0, %10 ], [ 0, %15 ], [ %22, %60 ], [ %22, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stb_vorbis_seek_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %9, align 4
  br label %60

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !254
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !255
  %20 = zext i32 %12 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store ptr %23, ptr %14, align 8, !tbaa !90
  store i32 1, ptr %13, align 8, !tbaa !94
  br label %48

26:                                               ; preds = %17
  store ptr %21, ptr %14, align 8, !tbaa !90
  br label %48

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !256
  %30 = add i32 %29, %12
  %31 = icmp ult i32 %30, %12
  %32 = icmp slt i32 %12, 0
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, ptr %13, align 8, !tbaa !94
  br label %37

35:                                               ; preds = %27
  %36 = zext i32 %30 to i64
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i64 [ 2147483647, %34 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = tail call i32 @fseek(ptr noundef %40, i64 noundef %38, i32 noundef 0)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  store i32 1, ptr %13, align 8, !tbaa !94
  %44 = load ptr, ptr %39, align 8, !tbaa !48
  %45 = load i32, ptr %28, align 8, !tbaa !256
  %46 = zext i32 %45 to i64
  %47 = tail call i32 @fseek(ptr noundef %44, i64 noundef %46, i32 noundef 2)
  br label %48

48:                                               ; preds = %25, %26, %37, %43
  %49 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 43
  store i32 0, ptr %49, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  store i8 1, ptr %50, align 1, !tbaa !65
  %51 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  store i32 -1, ptr %51, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %52 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %2, align 4, !tbaa !54
  %56 = load i32, ptr %4, align 4, !tbaa !54
  %57 = load i32, ptr %3, align 4, !tbaa !54
  %58 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %55, i32 noundef %56, i32 noundef %57)
  br label %59

59:                                               ; preds = %48, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  br label %60

60:                                               ; preds = %59, %8
  %61 = phi i32 [ 0, %8 ], [ %52, %59 ]
  ret i32 %61
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @set_file_offset(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %4 = load i8, ptr %3, align 4, !tbaa !69
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %7, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !255
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store ptr %17, ptr %8, align 8, !tbaa !90
  store i32 1, ptr %7, align 8, !tbaa !94
  br label %42

20:                                               ; preds = %11
  store ptr %15, ptr %8, align 8, !tbaa !90
  br label %42

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !256
  %24 = add i32 %23, %1
  %25 = icmp ult i32 %24, %1
  %26 = icmp slt i32 %1, 0
  %27 = or i1 %26, %25
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, ptr %7, align 8, !tbaa !94
  br label %31

29:                                               ; preds = %21
  %30 = zext i32 %24 to i64
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ 2147483647, %28 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = tail call i32 @fseek(ptr noundef %34, i64 noundef %32, i32 noundef 0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  store i32 1, ptr %7, align 8, !tbaa !94
  %38 = load ptr, ptr %33, align 8, !tbaa !48
  %39 = load i32, ptr %22, align 8, !tbaa !256
  %40 = zext i32 %39 to i64
  %41 = tail call i32 @fseek(ptr noundef %38, i64 noundef %40, i32 noundef 2)
  br label %42

42:                                               ; preds = %31, %2, %37, %20, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @stb_vorbis_stream_length_in_samples(ptr noundef %0) local_unnamed_addr #8 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %9, align 4
  br label %299

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 39
  %12 = load i32, ptr %11, align 4, !tbaa !276
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %295

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #27
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !255
  %21 = ptrtoint ptr %16 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  br label %33

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = tail call i64 @ftell(ptr noundef %27)
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !256
  %31 = trunc i64 %28 to i32
  %32 = sub i32 %31, %30
  br label %33

33:                                               ; preds = %18, %25
  %34 = phi i32 [ %24, %18 ], [ %32, %25 ]
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !277
  %37 = icmp ugt i32 %36, 65535
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  %40 = load i32, ptr %39, align 8, !tbaa !254
  br label %46

41:                                               ; preds = %33
  %42 = add i32 %36, -65536
  %43 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 16
  %44 = load i32, ptr %43, align 8, !tbaa !254
  %45 = tail call i32 @llvm.umax.i32(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i32 [ %40, %38 ], [ %45, %41 ]
  %48 = load i8, ptr %5, align 4, !tbaa !69
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %51, align 8, !tbaa !94
  %52 = load ptr, ptr %15, align 8, !tbaa !90
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !255
  %57 = zext i32 %47 to i64
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = icmp ult ptr %58, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store ptr %60, ptr %15, align 8, !tbaa !90
  store i32 1, ptr %51, align 8, !tbaa !94
  br label %85

63:                                               ; preds = %54
  store ptr %58, ptr %15, align 8, !tbaa !90
  br label %85

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !256
  %67 = add i32 %66, %47
  %68 = icmp ult i32 %67, %47
  %69 = icmp slt i32 %47, 0
  %70 = or i1 %69, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, ptr %51, align 8, !tbaa !94
  br label %74

72:                                               ; preds = %64
  %73 = zext i32 %67 to i64
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i64 [ 2147483647, %71 ], [ %73, %72 ]
  %76 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  %78 = tail call i32 @fseek(ptr noundef %77, i64 noundef %75, i32 noundef 0)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  store i32 1, ptr %51, align 8, !tbaa !94
  %81 = load ptr, ptr %76, align 8, !tbaa !48
  %82 = load i32, ptr %65, align 8, !tbaa !256
  %83 = zext i32 %82 to i64
  %84 = tail call i32 @fseek(ptr noundef %81, i64 noundef %83, i32 noundef 2)
  br label %85

85:                                               ; preds = %46, %62, %63, %74, %80
  %86 = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 36, ptr %89, align 4, !tbaa !61
  store i32 -1, ptr %11, align 4, !tbaa !276
  br label %255

90:                                               ; preds = %85
  %91 = load i8, ptr %5, align 4, !tbaa !69
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load ptr, ptr %15, align 8, !tbaa !90
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !255
  %99 = ptrtoint ptr %94 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  br label %111

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %105 = load ptr, ptr %104, align 8, !tbaa !48
  %106 = call i64 @ftell(ptr noundef %105)
  %107 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !256
  %109 = trunc i64 %106 to i32
  %110 = sub i32 %109, %108
  br label %111

111:                                              ; preds = %90, %96, %103
  %112 = phi i32 [ %102, %96 ], [ %110, %103 ], [ 0, %90 ]
  %113 = load i32, ptr %3, align 4, !tbaa !54
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %181

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %117 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %118 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %119 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %120 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  br label %121

121:                                              ; preds = %115, %177
  %122 = phi i32 [ %112, %115 ], [ %178, %177 ]
  %123 = load i32, ptr %2, align 4, !tbaa !54
  %124 = load i8, ptr %5, align 4, !tbaa !69
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %121
  store i32 0, ptr %116, align 8, !tbaa !94
  %127 = load ptr, ptr %15, align 8, !tbaa !90
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %117, align 8, !tbaa !255
  %131 = zext i32 %123 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = load ptr, ptr %118, align 8, !tbaa !91
  %134 = icmp ult ptr %132, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  store ptr %133, ptr %15, align 8, !tbaa !90
  store i32 1, ptr %116, align 8, !tbaa !94
  br label %156

136:                                              ; preds = %129
  store ptr %132, ptr %15, align 8, !tbaa !90
  br label %156

137:                                              ; preds = %126
  %138 = load i32, ptr %119, align 8, !tbaa !256
  %139 = add i32 %138, %123
  %140 = icmp ult i32 %139, %123
  %141 = icmp slt i32 %123, 0
  %142 = or i1 %141, %140
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, ptr %116, align 8, !tbaa !94
  br label %146

144:                                              ; preds = %137
  %145 = zext i32 %139 to i64
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i64 [ 2147483647, %143 ], [ %145, %144 ]
  %148 = load ptr, ptr %120, align 8, !tbaa !48
  %149 = call i32 @fseek(ptr noundef %148, i64 noundef %147, i32 noundef 0)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  store i32 1, ptr %116, align 8, !tbaa !94
  %152 = load ptr, ptr %120, align 8, !tbaa !48
  %153 = load i32, ptr %119, align 8, !tbaa !256
  %154 = zext i32 %153 to i64
  %155 = call i32 @fseek(ptr noundef %152, i64 noundef %154, i32 noundef 2)
  br label %156

156:                                              ; preds = %121, %135, %136, %146, %151
  %157 = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %156
  %160 = load i8, ptr %5, align 4, !tbaa !69
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load ptr, ptr %15, align 8, !tbaa !90
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %117, align 8, !tbaa !255
  %167 = ptrtoint ptr %163 to i64
  %168 = ptrtoint ptr %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  br label %177

171:                                              ; preds = %162
  %172 = load ptr, ptr %120, align 8, !tbaa !48
  %173 = call i64 @ftell(ptr noundef %172)
  %174 = load i32, ptr %119, align 8, !tbaa !256
  %175 = trunc i64 %173 to i32
  %176 = sub i32 %175, %174
  br label %177

177:                                              ; preds = %159, %165, %171
  %178 = phi i32 [ %170, %165 ], [ %176, %171 ], [ 0, %159 ]
  %179 = load i32, ptr %3, align 4, !tbaa !54
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %121, label %181, !llvm.loop !278

181:                                              ; preds = %177, %156, %111
  %182 = phi i32 [ %112, %111 ], [ %122, %156 ], [ %178, %177 ]
  %183 = load i8, ptr %5, align 4, !tbaa !69
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %220

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %186, align 8, !tbaa !94
  %187 = load ptr, ptr %15, align 8, !tbaa !90
  %188 = icmp eq ptr %187, null
  br i1 %188, label %199, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %191 = load ptr, ptr %190, align 8, !tbaa !255
  %192 = zext i32 %182 to i64
  %193 = getelementptr inbounds i8, ptr %191, i64 %192
  %194 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %195 = load ptr, ptr %194, align 8, !tbaa !91
  %196 = icmp ult ptr %193, %195
  br i1 %196, label %198, label %197

197:                                              ; preds = %189
  store ptr %195, ptr %15, align 8, !tbaa !90
  store i32 1, ptr %186, align 8, !tbaa !94
  br label %222

198:                                              ; preds = %189
  store ptr %193, ptr %15, align 8, !tbaa !90
  br label %222

199:                                              ; preds = %185
  %200 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %201 = load i32, ptr %200, align 8, !tbaa !256
  %202 = add i32 %201, %182
  %203 = icmp ult i32 %202, %182
  %204 = icmp slt i32 %182, 0
  %205 = or i1 %204, %203
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  store i32 1, ptr %186, align 8, !tbaa !94
  br label %209

207:                                              ; preds = %199
  %208 = zext i32 %202 to i64
  br label %209

209:                                              ; preds = %207, %206
  %210 = phi i64 [ 2147483647, %206 ], [ %208, %207 ]
  %211 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %212 = load ptr, ptr %211, align 8, !tbaa !48
  %213 = call i32 @fseek(ptr noundef %212, i64 noundef %210, i32 noundef 0)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %209
  store i32 1, ptr %186, align 8, !tbaa !94
  %216 = load ptr, ptr %211, align 8, !tbaa !48
  %217 = load i32, ptr %200, align 8, !tbaa !256
  %218 = zext i32 %217 to i64
  %219 = call i32 @fseek(ptr noundef %216, i64 noundef %218, i32 noundef 2)
  br label %220

220:                                              ; preds = %215, %209, %181
  %221 = load ptr, ptr %15, align 8, !tbaa !90
  br label %222

222:                                              ; preds = %220, %197, %198
  %223 = phi ptr [ %221, %220 ], [ %195, %197 ], [ %193, %198 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %233, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %223, i64 6
  %227 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %228 = load ptr, ptr %227, align 8, !tbaa !91
  %229 = icmp ugt ptr %226, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %231, align 8, !tbaa !94
  br label %240

232:                                              ; preds = %225
  store ptr %226, ptr %15, align 8, !tbaa !90
  br label %240

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %235 = load ptr, ptr %234, align 8, !tbaa !48
  %236 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 6, i64 noundef 1, ptr noundef %235)
  %237 = icmp eq i64 %236, 1
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %239, align 8, !tbaa !94
  br label %240

240:                                              ; preds = %230, %232, %233, %238
  %241 = call fastcc i32 @get32(ptr noundef nonnull %0)
  %242 = call fastcc i32 @get32(ptr noundef nonnull %0)
  %243 = icmp eq i32 %241, -1
  %244 = icmp eq i32 %242, -1
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 36, ptr %247, align 4, !tbaa !61
  store i32 -1, ptr %11, align 4, !tbaa !276
  br label %255

248:                                              ; preds = %240
  %249 = icmp eq i32 %242, 0
  %250 = select i1 %249, i32 %241, i32 -2
  store i32 %250, ptr %11, align 4, !tbaa !276
  %251 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18
  store i32 %182, ptr %251, align 8, !tbaa !279
  %252 = load i32, ptr %2, align 4, !tbaa !54
  %253 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18, i32 1
  store i32 %252, ptr %253, align 4, !tbaa !280
  %254 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 18, i32 2
  store i32 %250, ptr %254, align 8, !tbaa !281
  br label %255

255:                                              ; preds = %248, %246, %88
  %256 = load i8, ptr %5, align 4, !tbaa !69
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %293

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %259, align 8, !tbaa !94
  %260 = load ptr, ptr %15, align 8, !tbaa !90
  %261 = icmp eq ptr %260, null
  br i1 %261, label %272, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %264 = load ptr, ptr %263, align 8, !tbaa !255
  %265 = zext i32 %34 to i64
  %266 = getelementptr inbounds i8, ptr %264, i64 %265
  %267 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %268 = load ptr, ptr %267, align 8, !tbaa !91
  %269 = icmp ult ptr %266, %268
  br i1 %269, label %271, label %270

270:                                              ; preds = %262
  store ptr %268, ptr %15, align 8, !tbaa !90
  store i32 1, ptr %259, align 8, !tbaa !94
  br label %293

271:                                              ; preds = %262
  store ptr %266, ptr %15, align 8, !tbaa !90
  br label %293

272:                                              ; preds = %258
  %273 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %274 = load i32, ptr %273, align 8, !tbaa !256
  %275 = add i32 %274, %34
  %276 = icmp ult i32 %275, %34
  %277 = icmp slt i32 %34, 0
  %278 = or i1 %277, %276
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  store i32 1, ptr %259, align 8, !tbaa !94
  br label %282

280:                                              ; preds = %272
  %281 = zext i32 %275 to i64
  br label %282

282:                                              ; preds = %280, %279
  %283 = phi i64 [ 2147483647, %279 ], [ %281, %280 ]
  %284 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %285 = load ptr, ptr %284, align 8, !tbaa !48
  %286 = call i32 @fseek(ptr noundef %285, i64 noundef %283, i32 noundef 0)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %282
  store i32 1, ptr %259, align 8, !tbaa !94
  %289 = load ptr, ptr %284, align 8, !tbaa !48
  %290 = load i32, ptr %273, align 8, !tbaa !256
  %291 = zext i32 %290 to i64
  %292 = call i32 @fseek(ptr noundef %289, i64 noundef %291, i32 noundef 2)
  br label %293

293:                                              ; preds = %255, %270, %271, %282, %288
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  %294 = load i32, ptr %11, align 4, !tbaa !276
  br label %295

295:                                              ; preds = %293, %10
  %296 = phi i32 [ %294, %293 ], [ %12, %10 ]
  %297 = icmp eq i32 %296, -1
  %298 = select i1 %297, i32 0, i32 %296
  br label %299

299:                                              ; preds = %295, %8
  %300 = phi i32 [ 0, %8 ], [ %298, %295 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret i32 %300
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @vorbis_find_page(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #8 {
  %4 = alloca [27 x i8], align 16
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 14
  %13 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 4
  %14 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 22
  %15 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 26
  %16 = icmp eq ptr %1, null
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 5
  %19 = load i32, ptr %5, align 8, !tbaa !94
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %329

21:                                               ; preds = %3, %326
  %22 = load ptr, ptr %6, align 8, !tbaa !90
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 8, !tbaa !91
  %26 = icmp ult ptr %22, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %326

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %29, ptr %6, align 8, !tbaa !90
  %30 = load i8, ptr %22, align 1, !tbaa !75
  br label %38

31:                                               ; preds = %21
  %32 = load ptr, ptr %8, align 8, !tbaa !48
  %33 = tail call i32 @fgetc(ptr noundef %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %326

36:                                               ; preds = %31
  %37 = trunc i32 %33 to i8
  br label %38

38:                                               ; preds = %28, %36
  %39 = phi i8 [ %30, %28 ], [ %37, %36 ]
  %40 = icmp eq i8 %39, 79
  br i1 %40, label %41, label %326

41:                                               ; preds = %38
  %42 = load i8, ptr %9, align 4, !tbaa !69
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8, !tbaa !90
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %10, align 8, !tbaa !255
  %49 = ptrtoint ptr %45 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  br label %59

53:                                               ; preds = %44
  %54 = load ptr, ptr %8, align 8, !tbaa !48
  %55 = tail call i64 @ftell(ptr noundef %54)
  %56 = load i32, ptr %11, align 8, !tbaa !256
  %57 = trunc i64 %55 to i32
  %58 = sub i32 %57, %56
  br label %59

59:                                               ; preds = %41, %47, %53
  %60 = phi i32 [ %52, %47 ], [ %58, %53 ], [ 0, %41 ]
  %61 = add i32 %60, -25
  %62 = load i32, ptr %12, align 8, !tbaa !277
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %329, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %6, align 8, !tbaa !90
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %7, align 8, !tbaa !91
  %69 = icmp ult ptr %65, %68
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %81

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %72, ptr %6, align 8, !tbaa !90
  %73 = load i8, ptr %65, align 1, !tbaa !75
  br label %81

74:                                               ; preds = %64
  %75 = load ptr, ptr %8, align 8, !tbaa !48
  %76 = tail call i32 @fgetc(ptr noundef %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %81

79:                                               ; preds = %74
  %80 = trunc i32 %76 to i8
  br label %81

81:                                               ; preds = %70, %71, %78, %79
  %82 = phi i8 [ 0, %70 ], [ %73, %71 ], [ 0, %78 ], [ %80, %79 ]
  %83 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ogg_page_header, i64 0, i64 1), align 1, !tbaa !75
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load ptr, ptr %6, align 8, !tbaa !90
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %7, align 8, !tbaa !91
  %90 = icmp ult ptr %86, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %102

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %93, ptr %6, align 8, !tbaa !90
  %94 = load i8, ptr %86, align 1, !tbaa !75
  br label %102

95:                                               ; preds = %85
  %96 = load ptr, ptr %8, align 8, !tbaa !48
  %97 = tail call i32 @fgetc(ptr noundef %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = trunc i32 %97 to i8
  br label %102

101:                                              ; preds = %95
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %102

102:                                              ; preds = %101, %99, %92, %91
  %103 = phi i8 [ 0, %91 ], [ %94, %92 ], [ 0, %101 ], [ %100, %99 ]
  %104 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ogg_page_header, i64 0, i64 2), align 2, !tbaa !75
  %105 = icmp eq i8 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load ptr, ptr %6, align 8, !tbaa !90
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %7, align 8, !tbaa !91
  %111 = icmp ult ptr %107, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %123

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %114, ptr %6, align 8, !tbaa !90
  %115 = load i8, ptr %107, align 1, !tbaa !75
  br label %123

116:                                              ; preds = %106
  %117 = load ptr, ptr %8, align 8, !tbaa !48
  %118 = tail call i32 @fgetc(ptr noundef %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = trunc i32 %118 to i8
  br label %123

122:                                              ; preds = %116
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %123

123:                                              ; preds = %122, %120, %113, %112
  %124 = phi i8 [ 0, %112 ], [ %115, %113 ], [ 0, %122 ], [ %121, %120 ]
  %125 = load i8, ptr getelementptr inbounds ([4 x i8], ptr @ogg_page_header, i64 0, i64 3), align 1, !tbaa !75
  %126 = icmp eq i8 %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %123, %102, %81
  %128 = load i32, ptr %5, align 8, !tbaa !94
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %293, label %329

130:                                              ; preds = %123
  %131 = load i32, ptr %5, align 8, !tbaa !94
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %329

133:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %4) #27
  %134 = load i32, ptr @ogg_page_header, align 4, !tbaa !75
  store i32 %134, ptr %4, align 16, !tbaa !75
  br label %135

135:                                              ; preds = %133, %153
  %136 = phi i64 [ 4, %133 ], [ %156, %153 ]
  %137 = load ptr, ptr %6, align 8, !tbaa !90
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %7, align 8, !tbaa !91
  %141 = icmp ult ptr %137, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %153

143:                                              ; preds = %139
  %144 = getelementptr inbounds i8, ptr %137, i64 1
  store ptr %144, ptr %6, align 8, !tbaa !90
  %145 = load i8, ptr %137, align 1, !tbaa !75
  br label %153

146:                                              ; preds = %135
  %147 = load ptr, ptr %8, align 8, !tbaa !48
  %148 = tail call i32 @fgetc(ptr noundef %147)
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %153

151:                                              ; preds = %146
  %152 = trunc i32 %148 to i8
  br label %153

153:                                              ; preds = %142, %143, %150, %151
  %154 = phi i8 [ 0, %142 ], [ %145, %143 ], [ 0, %150 ], [ %152, %151 ]
  %155 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 %136
  store i8 %154, ptr %155, align 1, !tbaa !75
  %156 = add nuw nsw i64 %136, 1
  %157 = icmp eq i64 %156, 27
  br i1 %157, label %158, label %135, !llvm.loop !282

158:                                              ; preds = %153
  %159 = load i32, ptr %5, align 8, !tbaa !94
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %290

161:                                              ; preds = %158
  %162 = load i8, ptr %13, align 4, !tbaa !75
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %292

164:                                              ; preds = %161
  %165 = load i32, ptr %14, align 2
  store i32 0, ptr %14, align 2
  br label %170

166:                                              ; preds = %170
  %167 = load i8, ptr %15, align 2, !tbaa !75
  %168 = zext i8 %167 to i32
  %169 = icmp eq i8 %167, 0
  br i1 %169, label %276, label %207

170:                                              ; preds = %170, %164
  %171 = phi i64 [ 0, %164 ], [ %205, %170 ]
  %172 = phi i32 [ 0, %164 ], [ %204, %170 ]
  %173 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 %171
  %174 = load i8, ptr %173, align 1, !tbaa !75
  %175 = shl i32 %172, 8
  %176 = zext i8 %174 to i32
  %177 = lshr i32 %172, 24
  %178 = xor i32 %177, %176
  %179 = zext nneg i32 %178 to i64
  %180 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !54
  %182 = xor i32 %181, %175
  %183 = add nuw nsw i64 %171, 1
  %184 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !75
  %186 = shl i32 %182, 8
  %187 = zext i8 %185 to i32
  %188 = lshr i32 %182, 24
  %189 = xor i32 %188, %187
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !54
  %193 = xor i32 %192, %186
  %194 = add nuw nsw i64 %171, 2
  %195 = getelementptr inbounds [27 x i8], ptr %4, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !75
  %197 = shl i32 %193, 8
  %198 = zext i8 %196 to i32
  %199 = lshr i32 %193, 24
  %200 = xor i32 %199, %198
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !54
  %204 = xor i32 %203, %197
  %205 = add nuw nsw i64 %171, 3
  %206 = icmp eq i64 %205, 27
  br i1 %206, label %166, label %170, !llvm.loop !283

207:                                              ; preds = %166, %227
  %208 = phi i32 [ %237, %227 ], [ 0, %166 ]
  %209 = phi i32 [ %236, %227 ], [ %204, %166 ]
  %210 = phi i32 [ %238, %227 ], [ 0, %166 ]
  %211 = load ptr, ptr %6, align 8, !tbaa !90
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr %7, align 8, !tbaa !91
  %215 = icmp ult ptr %211, %214
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %227

217:                                              ; preds = %213
  %218 = getelementptr inbounds i8, ptr %211, i64 1
  store ptr %218, ptr %6, align 8, !tbaa !90
  %219 = load i8, ptr %211, align 1, !tbaa !75
  br label %227

220:                                              ; preds = %207
  %221 = load ptr, ptr %8, align 8, !tbaa !48
  %222 = tail call i32 @fgetc(ptr noundef %221)
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %227

225:                                              ; preds = %220
  %226 = trunc i32 %222 to i8
  br label %227

227:                                              ; preds = %216, %217, %224, %225
  %228 = phi i8 [ 0, %216 ], [ %219, %217 ], [ 0, %224 ], [ %226, %225 ]
  %229 = zext i8 %228 to i32
  %230 = shl i32 %209, 8
  %231 = lshr i32 %209, 24
  %232 = xor i32 %231, %229
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !54
  %236 = xor i32 %235, %230
  %237 = add i32 %208, %229
  %238 = add nuw nsw i32 %210, 1
  %239 = icmp eq i32 %238, %168
  br i1 %239, label %240, label %207, !llvm.loop !284

240:                                              ; preds = %227
  %241 = icmp eq i32 %237, 0
  br i1 %241, label %276, label %242

242:                                              ; preds = %240
  %243 = load i32, ptr %5, align 8, !tbaa !94
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %290

245:                                              ; preds = %242, %264
  %246 = phi i32 [ %273, %264 ], [ %236, %242 ]
  %247 = phi i32 [ %274, %264 ], [ 0, %242 ]
  %248 = load ptr, ptr %6, align 8, !tbaa !90
  %249 = icmp eq ptr %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %245
  %251 = load ptr, ptr %7, align 8, !tbaa !91
  %252 = icmp ult ptr %248, %251
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %264

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, ptr %248, i64 1
  store ptr %255, ptr %6, align 8, !tbaa !90
  %256 = load i8, ptr %248, align 1, !tbaa !75
  br label %264

257:                                              ; preds = %245
  %258 = load ptr, ptr %8, align 8, !tbaa !48
  %259 = tail call i32 @fgetc(ptr noundef %258)
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %264

262:                                              ; preds = %257
  %263 = trunc i32 %259 to i8
  br label %264

264:                                              ; preds = %253, %254, %261, %262
  %265 = phi i8 [ 0, %253 ], [ %256, %254 ], [ 0, %261 ], [ %263, %262 ]
  %266 = shl i32 %246, 8
  %267 = zext i8 %265 to i32
  %268 = lshr i32 %246, 24
  %269 = xor i32 %268, %267
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !54
  %273 = xor i32 %272, %266
  %274 = add nuw i32 %247, 1
  %275 = icmp eq i32 %274, %237
  br i1 %275, label %276, label %245, !llvm.loop !285

276:                                              ; preds = %264, %166, %240
  %277 = phi i32 [ %236, %240 ], [ %204, %166 ], [ %273, %264 ]
  %278 = icmp eq i32 %277, %165
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  br i1 %16, label %282, label %280

280:                                              ; preds = %279
  %281 = tail call i32 @stb_vorbis_get_file_offset(ptr noundef %0)
  store i32 %281, ptr %1, align 4, !tbaa !54
  br label %282

282:                                              ; preds = %280, %279
  br i1 %17, label %288, label %283

283:                                              ; preds = %282
  %284 = load i8, ptr %18, align 1, !tbaa !75
  %285 = lshr i8 %284, 2
  %286 = and i8 %285, 1
  %287 = zext nneg i8 %286 to i32
  store i32 %287, ptr %2, align 4, !tbaa !54
  br label %288

288:                                              ; preds = %283, %282
  %289 = add i32 %60, -1
  tail call fastcc void @set_file_offset(ptr noundef %0, i32 noundef %289)
  br label %290

290:                                              ; preds = %158, %242, %288
  %291 = phi i32 [ 1, %288 ], [ 0, %242 ], [ 0, %158 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %4) #27
  br label %329

292:                                              ; preds = %276, %161
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %4) #27
  br label %293

293:                                              ; preds = %127, %292
  %294 = load i8, ptr %9, align 4, !tbaa !69
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %326

296:                                              ; preds = %293
  store i32 0, ptr %5, align 8, !tbaa !94
  %297 = load ptr, ptr %6, align 8, !tbaa !90
  %298 = icmp eq ptr %297, null
  br i1 %298, label %307, label %299

299:                                              ; preds = %296
  %300 = load ptr, ptr %10, align 8, !tbaa !255
  %301 = zext i32 %60 to i64
  %302 = getelementptr inbounds i8, ptr %300, i64 %301
  %303 = load ptr, ptr %7, align 8, !tbaa !91
  %304 = icmp ult ptr %302, %303
  br i1 %304, label %306, label %305

305:                                              ; preds = %299
  store ptr %303, ptr %6, align 8, !tbaa !90
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %326

306:                                              ; preds = %299
  store ptr %302, ptr %6, align 8, !tbaa !90
  br label %326

307:                                              ; preds = %296
  %308 = load i32, ptr %11, align 8, !tbaa !256
  %309 = add i32 %308, %60
  %310 = icmp ult i32 %309, %60
  %311 = icmp slt i32 %60, 0
  %312 = or i1 %311, %310
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i32 1, ptr %5, align 8, !tbaa !94
  br label %316

314:                                              ; preds = %307
  %315 = zext i32 %309 to i64
  br label %316

316:                                              ; preds = %314, %313
  %317 = phi i64 [ 2147483647, %313 ], [ %315, %314 ]
  %318 = load ptr, ptr %8, align 8, !tbaa !48
  %319 = tail call i32 @fseek(ptr noundef %318, i64 noundef %317, i32 noundef 0)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %326, label %321

321:                                              ; preds = %316
  store i32 1, ptr %5, align 8, !tbaa !94
  %322 = load ptr, ptr %8, align 8, !tbaa !48
  %323 = load i32, ptr %11, align 8, !tbaa !256
  %324 = zext i32 %323 to i64
  %325 = tail call i32 @fseek(ptr noundef %322, i64 noundef %324, i32 noundef 2)
  br label %326

326:                                              ; preds = %293, %305, %306, %316, %321, %35, %27, %38
  %327 = load i32, ptr %5, align 8, !tbaa !94
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %21, label %329

329:                                              ; preds = %326, %59, %127, %130, %3, %290
  %330 = phi i32 [ %291, %290 ], [ 0, %3 ], [ 0, %130 ], [ 0, %127 ], [ 0, %59 ], [ 0, %326 ]
  ret i32 %330
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @getn(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  %7 = zext nneg i32 %2 to i64
  br i1 %6, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %5, i64 %7
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp ugt ptr %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %14, align 8, !tbaa !94
  br label %25

15:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %5, i64 %7, i1 false)
  %16 = load ptr, ptr %4, align 8, !tbaa !90
  %17 = getelementptr inbounds i8, ptr %16, i64 %7
  store ptr %17, ptr %4, align 8, !tbaa !90
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = tail call i64 @fread(ptr noundef %1, i64 noundef %7, i64 noundef 1, ptr noundef %20)
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %24, align 8, !tbaa !94
  br label %25

25:                                               ; preds = %18, %23, %15, %13
  %26 = phi i32 [ 0, %13 ], [ 1, %15 ], [ 0, %23 ], [ 1, %18 ]
  ret i32 %26
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @get32(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp ult ptr %3, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %10, align 8, !tbaa !94
  br label %24

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !90
  %13 = load i8, ptr %3, align 1, !tbaa !75
  %14 = zext i8 %13 to i32
  br label %31

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = tail call i32 @fgetc(ptr noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %21, align 8, !tbaa !94
  br label %24

22:                                               ; preds = %15
  %23 = and i32 %18, 255
  br label %24

24:                                               ; preds = %9, %20, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %20 ], [ 0, %9 ]
  %26 = load ptr, ptr %2, align 8, !tbaa !90
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  br label %31

31:                                               ; preds = %28, %11
  %32 = phi ptr [ %7, %11 ], [ %30, %28 ]
  %33 = phi i32 [ %14, %11 ], [ %25, %28 ]
  %34 = phi ptr [ %12, %11 ], [ %26, %28 ]
  %35 = icmp ult ptr %34, %32
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %37, align 8, !tbaa !94
  br label %54

38:                                               ; preds = %31
  %39 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %39, ptr %2, align 8, !tbaa !90
  %40 = load i8, ptr %34, align 1, !tbaa !75
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = add nuw nsw i32 %42, %33
  br label %63

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = tail call i32 @fgetc(ptr noundef %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %50, align 8, !tbaa !94
  br label %54

51:                                               ; preds = %44
  %52 = shl i32 %47, 8
  %53 = and i32 %52, 65280
  br label %54

54:                                               ; preds = %36, %49, %51
  %55 = phi i32 [ %25, %51 ], [ %25, %49 ], [ %33, %36 ]
  %56 = phi i32 [ %53, %51 ], [ 0, %49 ], [ 0, %36 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !90
  %58 = or disjoint i32 %56, %55
  %59 = icmp eq ptr %57, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  br label %63

63:                                               ; preds = %60, %38
  %64 = phi ptr [ %32, %38 ], [ %62, %60 ]
  %65 = phi i32 [ %43, %38 ], [ %58, %60 ]
  %66 = phi ptr [ %39, %38 ], [ %57, %60 ]
  %67 = icmp ult ptr %66, %64
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %69, align 8, !tbaa !94
  br label %86

70:                                               ; preds = %63
  %71 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %71, ptr %2, align 8, !tbaa !90
  %72 = load i8, ptr %66, align 1, !tbaa !75
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = add nuw nsw i32 %74, %65
  br label %95

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !48
  %79 = tail call i32 @fgetc(ptr noundef %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %82, align 8, !tbaa !94
  br label %86

83:                                               ; preds = %76
  %84 = shl i32 %79, 16
  %85 = and i32 %84, 16711680
  br label %86

86:                                               ; preds = %68, %81, %83
  %87 = phi i32 [ %58, %83 ], [ %58, %81 ], [ %65, %68 ]
  %88 = phi i32 [ %85, %83 ], [ 0, %81 ], [ 0, %68 ]
  %89 = load ptr, ptr %2, align 8, !tbaa !90
  %90 = or disjoint i32 %88, %87
  %91 = icmp eq ptr %89, null
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %94 = load ptr, ptr %93, align 8, !tbaa !91
  br label %95

95:                                               ; preds = %92, %70
  %96 = phi ptr [ %64, %70 ], [ %94, %92 ]
  %97 = phi i32 [ %75, %70 ], [ %90, %92 ]
  %98 = phi ptr [ %71, %70 ], [ %89, %92 ]
  %99 = icmp ult ptr %98, %96
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %101, align 8, !tbaa !94
  br label %114

102:                                              ; preds = %95
  %103 = getelementptr inbounds i8, ptr %98, i64 1
  store ptr %103, ptr %2, align 8, !tbaa !90
  %104 = load i8, ptr %98, align 1, !tbaa !75
  br label %114

105:                                              ; preds = %86
  %106 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = tail call i32 @fgetc(ptr noundef %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %111, align 8, !tbaa !94
  br label %114

112:                                              ; preds = %105
  %113 = trunc i32 %108 to i8
  br label %114

114:                                              ; preds = %100, %102, %110, %112
  %115 = phi i32 [ %97, %100 ], [ %97, %102 ], [ %90, %110 ], [ %90, %112 ]
  %116 = phi i8 [ 0, %100 ], [ %104, %102 ], [ 0, %110 ], [ %113, %112 ]
  %117 = zext i8 %116 to i32
  %118 = shl nuw i32 %117, 24
  %119 = add nuw nsw i32 %118, %115
  ret i32 %119
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @stb_vorbis_stream_length_in_seconds(ptr noundef %0) local_unnamed_addr #8 {
  %2 = tail call i32 @stb_vorbis_stream_length_in_samples(ptr noundef %0), !range !257
  %3 = uitofp i32 %2 to float
  %4 = load i32, ptr %0, align 8, !tbaa !51
  %5 = uitofp i32 %4 to float
  %6 = fdiv float %3, %5
  ret float %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stb_vorbis_open_file_section(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stb_vorbis, align 8
  call void @llvm.lifetime.start.p0(i64 1904, ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %9, i8 0, i64 1904, i1 false)
  %10 = icmp eq ptr %3, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !173
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 19, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !126
  %15 = and i32 %14, -8
  store i32 %15, ptr %13, align 8, !tbaa !126
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 21
  store i32 %15, ptr %16, align 4, !tbaa !127
  br label %17

17:                                               ; preds = %5, %11
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 22
  store i32 0, ptr %18, align 8, !tbaa !94
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 23
  store i32 0, ptr %19, align 4, !tbaa !61
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 11
  store ptr null, ptr %20, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 28
  store ptr null, ptr %21, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 69
  store i32 -1, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 10
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 8
  store ptr %0, ptr %24, align 8, !tbaa !48
  %25 = tail call i64 @ftell(ptr noundef %0)
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 9
  store i32 %26, ptr %27, align 8, !tbaa !256
  %28 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 14
  store i32 %4, ptr %28, align 8, !tbaa !277
  store i32 %1, ptr %23, align 4, !tbaa !47
  %29 = call fastcc i32 @start_decoder(ptr noundef nonnull %9)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !174
  %34 = add i32 %33, 1904
  store i32 %34, ptr %32, align 8, !tbaa !174
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 20
  %40 = load i32, ptr %39, align 8, !tbaa !175
  %41 = add nsw i32 %40, 1904
  %42 = getelementptr inbounds %struct.stb_vorbis, ptr %9, i64 0, i32 21
  %43 = load i32, ptr %42, align 4, !tbaa !127
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %62, label %45

45:                                               ; preds = %38
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds i8, ptr %36, i64 %46
  store i32 %41, ptr %39, align 8, !tbaa !175
  br label %50

48:                                               ; preds = %31
  %49 = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #29
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %47, %45 ], [ %49, %48 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %51, ptr noundef nonnull align 8 dereferenceable(1904) %9, i64 1904, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %54 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %51, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4, !tbaa !54
  %58 = load i32, ptr %8, align 4, !tbaa !54
  %59 = load i32, ptr %7, align 4, !tbaa !54
  %60 = call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %51, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  br label %61

61:                                               ; preds = %53, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %67

62:                                               ; preds = %38, %50, %17
  %63 = icmp eq ptr %2, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = load i32, ptr %19, align 4, !tbaa !61
  store i32 %65, ptr %2, align 4, !tbaa !54
  br label %66

66:                                               ; preds = %64, %62
  call fastcc void @vorbis_deinit(ptr noundef nonnull %9)
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi ptr [ %51, %61 ], [ null, %66 ]
  call void @llvm.lifetime.end.p0(i64 1904, ptr nonnull %9) #27
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stb_vorbis_open_file(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @ftell(ptr noundef %0)
  %6 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %7 = tail call i64 @ftell(ptr noundef %0)
  %8 = and i64 %5, 4294967295
  %9 = sub i64 %7, %5
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 @fseek(ptr noundef %0, i64 noundef %8, i32 noundef 0)
  %12 = tail call ptr @stb_vorbis_open_file_section(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %10)
  ret ptr %12
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @stb_vorbis_open_filename(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.5)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @ftell(ptr noundef nonnull %4)
  %8 = tail call i32 @fseek(ptr noundef nonnull %4, i64 noundef 0, i32 noundef 2)
  %9 = tail call i64 @ftell(ptr noundef nonnull %4)
  %10 = and i64 %7, 4294967295
  %11 = sub i64 %9, %7
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @fseek(ptr noundef nonnull %4, i64 noundef %10, i32 noundef 0)
  %14 = tail call ptr @stb_vorbis_open_file_section(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %1, ptr noundef %2, i32 noundef %12)
  br label %18

15:                                               ; preds = %3
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store i32 6, ptr %1, align 4, !tbaa !54
  br label %18

18:                                               ; preds = %15, %17, %6
  %19 = phi ptr [ %14, %6 ], [ null, %17 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @stb_vorbis_open_memory(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stb_vorbis, align 8
  call void @llvm.lifetime.start.p0(i64 1904, ptr nonnull %8) #27
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %75, label %12

12:                                               ; preds = %10
  store i32 10, ptr %2, align 4, !tbaa !54
  br label %75

13:                                               ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %8, i8 0, i64 1904, i1 false)
  %14 = icmp eq ptr %3, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !173
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 19, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = and i32 %18, -8
  store i32 %19, ptr %17, align 8, !tbaa !126
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 21
  store i32 %19, ptr %20, align 4, !tbaa !127
  br label %21

21:                                               ; preds = %13, %15
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 22
  store i32 0, ptr %22, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 23
  store i32 0, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 11
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 28
  store ptr null, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 69
  store i32 -1, ptr %26, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 10
  store i32 0, ptr %27, align 4, !tbaa !47
  %28 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 8
  store ptr null, ptr %28, align 8, !tbaa !48
  store ptr %0, ptr %24, align 8, !tbaa !90
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 13
  store ptr %30, ptr %31, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 12
  store ptr %0, ptr %32, align 8, !tbaa !255
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 14
  store i32 %1, ptr %33, align 8, !tbaa !277
  %34 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 15
  store i8 0, ptr %34, align 4, !tbaa !69
  %35 = call fastcc i32 @start_decoder(ptr noundef nonnull %8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !174
  %40 = add i32 %39, 1904
  store i32 %40, ptr %38, align 8, !tbaa !174
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 20
  %46 = load i32, ptr %45, align 8, !tbaa !175
  %47 = add nsw i32 %46, 1904
  %48 = getelementptr inbounds %struct.stb_vorbis, ptr %8, i64 0, i32 21
  %49 = load i32, ptr %48, align 4, !tbaa !127
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %44
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds i8, ptr %42, i64 %52
  store i32 %47, ptr %45, align 8, !tbaa !175
  br label %56

54:                                               ; preds = %37
  %55 = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #29
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %53, %51 ], [ %55, %54 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %57, ptr noundef nonnull align 8 dereferenceable(1904) %8, i64 1904, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %60 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %57, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4, !tbaa !54
  %64 = load i32, ptr %7, align 4, !tbaa !54
  %65 = load i32, ptr %6, align 4, !tbaa !54
  %66 = call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %57, i32 noundef %63, i32 noundef %64, i32 noundef %65)
  br label %67

67:                                               ; preds = %59, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %68 = icmp eq ptr %2, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %67
  store i32 0, ptr %2, align 4, !tbaa !54
  br label %75

70:                                               ; preds = %44, %56, %21
  %71 = icmp eq ptr %2, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %23, align 4, !tbaa !61
  store i32 %73, ptr %2, align 4, !tbaa !54
  br label %74

74:                                               ; preds = %72, %70
  call fastcc void @vorbis_deinit(ptr noundef nonnull %8)
  br label %75

75:                                               ; preds = %67, %69, %10, %12, %74
  %76 = phi ptr [ null, %74 ], [ null, %12 ], [ null, %10 ], [ %57, %69 ], [ %57, %67 ]
  call void @llvm.lifetime.end.p0(i64 1904, ptr nonnull %8) #27
  ret ptr %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_frame_short(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %9 = load i8, ptr %8, align 4, !tbaa !69
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %12, align 4
  br label %58

13:                                               ; preds = %4
  %14 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %18, align 4, !tbaa !67
  br label %58

19:                                               ; preds = %13
  %20 = load i32, ptr %5, align 4, !tbaa !54
  %21 = load i32, ptr %7, align 4, !tbaa !54
  %22 = load i32, ptr %6, align 4, !tbaa !54
  %23 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %21, i32 noundef %22)
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !45
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = sext i32 %21 to i64
  %29 = zext nneg i32 %25 to i64
  %30 = icmp eq i32 %25, 1
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = and i64 %29, 2147483646
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %39, %33 ]
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %34
  %36 = load <2 x ptr>, ptr %35, align 8, !tbaa !16
  %37 = getelementptr inbounds float, <2 x ptr> %36, i64 %28
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %34
  store <2 x ptr> %37, ptr %38, align 8, !tbaa !16
  %39 = add nuw i64 %34, 2
  %40 = icmp eq i64 %39, %32
  br i1 %40, label %41, label %33, !llvm.loop !286

41:                                               ; preds = %33
  %42 = icmp eq i64 %32, %29
  br i1 %42, label %53, label %43

43:                                               ; preds = %27, %41
  %44 = phi i64 [ 0, %27 ], [ %32, %41 ]
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ %51, %45 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !16
  %49 = getelementptr inbounds float, ptr %48, i64 %28
  %50 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %46
  store ptr %49, ptr %50, align 8, !tbaa !16
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %29
  br i1 %52, label %53, label %45, !llvm.loop !287

53:                                               ; preds = %45, %41, %19
  %54 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 %21, ptr %54, align 4, !tbaa !67
  %55 = add nsw i32 %23, %21
  %56 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 %55, ptr %56, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41
  br label %58

58:                                               ; preds = %11, %16, %53
  %59 = phi ptr [ null, %16 ], [ %57, %53 ], [ null, %11 ]
  %60 = phi i32 [ 0, %16 ], [ %23, %53 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %61 = tail call i32 @llvm.smin.i32(i32 %60, i32 %3)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !45
  tail call fastcc void @convert_samples_short(i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %65, ptr noundef %59, i32 noundef 0, i32 noundef %61)
  br label %66

66:                                               ; preds = %63, %58
  ret i32 %61
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @convert_samples_short(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
  %8 = alloca [32 x float], align 16
  %9 = icmp ne i32 %0, %3
  %10 = icmp slt i32 %0, 3
  %11 = and i1 %10, %9
  %12 = icmp slt i32 %3, 7
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %144

14:                                               ; preds = %7
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %264

16:                                               ; preds = %14
  %17 = zext nneg i32 %0 to i64
  %18 = sext i32 %2 to i64
  %19 = icmp sgt i32 %6, 0
  %20 = icmp sgt i32 %3, 0
  %21 = sext i32 %3 to i64
  %22 = zext nneg i32 %6 to i64
  %23 = sext i32 %5 to i64
  %24 = zext nneg i32 %3 to i64
  br label %25

25:                                               ; preds = %16, %141
  %26 = phi i64 [ 0, %16 ], [ %142, %141 ]
  %27 = getelementptr inbounds [3 x [2 x i32]], ptr @convert_samples_short.channel_selector, i64 0, i64 %17, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %1, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = getelementptr inbounds i16, ptr %30, i64 %18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #27
  br i1 %19, label %32, label %141

32:                                               ; preds = %25, %137
  %33 = phi i32 [ %140, %137 ], [ 0, %25 ]
  %34 = phi i64 [ %138, %137 ], [ 0, %25 ]
  %35 = phi i32 [ %40, %137 ], [ 32, %25 ]
  %36 = trunc i64 %34 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %8, i8 0, i64 128, i1 false)
  %37 = add i32 %35, %36
  %38 = icmp sgt i32 %37, %6
  %39 = sub i32 %6, %36
  %40 = select i1 %38, i32 %39, i32 %35
  br i1 %20, label %41, label %49

41:                                               ; preds = %32
  %42 = icmp slt i32 %40, 1
  %43 = tail call i32 @llvm.smin.i32(i32 %6, i32 %37)
  %44 = add i32 %43, %33
  %45 = sext i32 %44 to i64
  %46 = icmp ult i32 %44, 8
  %47 = and i64 %45, -8
  %48 = icmp eq i64 %47, %45
  br label %83

49:                                               ; preds = %122, %32
  %50 = icmp sgt i32 %40, 0
  br i1 %50, label %51, label %137

51:                                               ; preds = %49
  %52 = getelementptr i16, ptr %31, i64 %34
  %53 = tail call i32 @llvm.smin.i32(i32 %6, i32 %37)
  %54 = add i32 %53, %33
  %55 = zext i32 %54 to i64
  %56 = icmp ult i32 %54, 8
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = and i64 %55, 4294967288
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %77, %59 ]
  %61 = getelementptr inbounds [32 x float], ptr %8, i64 0, i64 %60
  %62 = getelementptr inbounds float, ptr %61, i64 4
  %63 = load <4 x float>, ptr %61, align 16, !tbaa !136
  %64 = load <4 x float>, ptr %62, align 16, !tbaa !136
  %65 = fadd <4 x float> %63, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %66 = fadd <4 x float> %64, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %67 = bitcast <4 x float> %65 to <4 x i32>
  %68 = bitcast <4 x float> %66 to <4 x i32>
  %69 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %67, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %70 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %68, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %71 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %69, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %72 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %70, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %73 = trunc <4 x i32> %71 to <4 x i16>
  %74 = trunc <4 x i32> %72 to <4 x i16>
  %75 = getelementptr i16, ptr %52, i64 %60
  %76 = getelementptr i16, ptr %75, i64 4
  store <4 x i16> %73, ptr %75, align 2, !tbaa !109
  store <4 x i16> %74, ptr %76, align 2, !tbaa !109
  %77 = add nuw i64 %60, 8
  %78 = icmp eq i64 %77, %58
  br i1 %78, label %79, label %59, !llvm.loop !288

79:                                               ; preds = %59
  %80 = icmp eq i64 %58, %55
  br i1 %80, label %137, label %81

81:                                               ; preds = %51, %79
  %82 = phi i64 [ 0, %51 ], [ %58, %79 ]
  br label %125

83:                                               ; preds = %122, %41
  %84 = phi i64 [ 0, %41 ], [ %123, %122 ]
  %85 = getelementptr inbounds [7 x [6 x i8]], ptr @channel_position, i64 0, i64 %21, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !75
  %87 = sext i8 %86 to i32
  %88 = and i32 %28, %87
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i1 true, i1 %42
  br i1 %90, label %122, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds ptr, ptr %4, i64 %84
  %93 = load ptr, ptr %92, align 8, !tbaa !16
  %94 = getelementptr float, ptr %93, i64 %34
  %95 = getelementptr float, ptr %94, i64 %23
  br i1 %46, label %111, label %96

96:                                               ; preds = %91, %96
  %97 = phi i64 [ %108, %96 ], [ 0, %91 ]
  %98 = getelementptr float, ptr %95, i64 %97
  %99 = getelementptr float, ptr %98, i64 4
  %100 = load <4 x float>, ptr %98, align 4, !tbaa !136
  %101 = load <4 x float>, ptr %99, align 4, !tbaa !136
  %102 = getelementptr inbounds [32 x float], ptr %8, i64 0, i64 %97
  %103 = getelementptr inbounds float, ptr %102, i64 4
  %104 = load <4 x float>, ptr %102, align 16, !tbaa !136
  %105 = load <4 x float>, ptr %103, align 16, !tbaa !136
  %106 = fadd <4 x float> %100, %104
  %107 = fadd <4 x float> %101, %105
  store <4 x float> %106, ptr %102, align 16, !tbaa !136
  store <4 x float> %107, ptr %103, align 16, !tbaa !136
  %108 = add nuw i64 %97, 8
  %109 = icmp eq i64 %108, %47
  br i1 %109, label %110, label %96, !llvm.loop !289

110:                                              ; preds = %96
  br i1 %48, label %122, label %111

111:                                              ; preds = %91, %110
  %112 = phi i64 [ 0, %91 ], [ %47, %110 ]
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi i64 [ %120, %113 ], [ %112, %111 ]
  %115 = getelementptr float, ptr %95, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !136
  %117 = getelementptr inbounds [32 x float], ptr %8, i64 0, i64 %114
  %118 = load float, ptr %117, align 4, !tbaa !136
  %119 = fadd float %116, %118
  store float %119, ptr %117, align 4, !tbaa !136
  %120 = add nuw nsw i64 %114, 1
  %121 = icmp eq i64 %120, %45
  br i1 %121, label %122, label %113, !llvm.loop !290

122:                                              ; preds = %113, %110, %83
  %123 = add nuw nsw i64 %84, 1
  %124 = icmp eq i64 %123, %24
  br i1 %124, label %49, label %83, !llvm.loop !291

125:                                              ; preds = %81, %125
  %126 = phi i64 [ %135, %125 ], [ %82, %81 ]
  %127 = getelementptr inbounds [32 x float], ptr %8, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !136
  %129 = fadd float %128, 3.840000e+02
  %130 = bitcast float %129 to i32
  %131 = tail call i32 @llvm.smax.i32(i32 %130, i32 1136623616)
  %132 = tail call i32 @llvm.umin.i32(i32 %131, i32 1136689151)
  %133 = trunc i32 %132 to i16
  %134 = getelementptr i16, ptr %52, i64 %126
  store i16 %133, ptr %134, align 2, !tbaa !109
  %135 = add nuw nsw i64 %126, 1
  %136 = icmp eq i64 %135, %55
  br i1 %136, label %137, label %125, !llvm.loop !292

137:                                              ; preds = %125, %79, %49
  %138 = add nuw nsw i64 %34, 32
  %139 = icmp ult i64 %138, %22
  %140 = add i32 %33, -32
  br i1 %139, label %32, label %141, !llvm.loop !293

141:                                              ; preds = %137, %25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #27
  %142 = add nuw nsw i64 %26, 1
  %143 = icmp eq i64 %142, %17
  br i1 %143, label %264, label %25, !llvm.loop !294

144:                                              ; preds = %7
  %145 = tail call i32 @llvm.smin.i32(i32 %0, i32 %3)
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = sext i32 %2 to i64
  %149 = sext i32 %5 to i64
  %150 = icmp sgt i32 %6, 0
  %151 = zext i32 %6 to i64
  %152 = zext nneg i32 %145 to i64
  %153 = icmp ult i32 %6, 8
  %154 = and i64 %151, 2147483640
  %155 = icmp eq i64 %154, %151
  br label %189

156:                                              ; preds = %233, %144
  %157 = phi i32 [ 0, %144 ], [ %145, %233 ]
  %158 = icmp slt i32 %157, %0
  br i1 %158, label %159, label %264

159:                                              ; preds = %156
  %160 = sext i32 %2 to i64
  %161 = sext i32 %6 to i64
  %162 = shl nsw i64 %161, 1
  %163 = zext nneg i32 %157 to i64
  %164 = zext i32 %0 to i64
  %165 = sub nsw i64 %164, %163
  %166 = and i64 %165, 7
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %159, %168
  %169 = phi i64 [ %174, %168 ], [ %163, %159 ]
  %170 = phi i64 [ %175, %168 ], [ 0, %159 ]
  %171 = getelementptr inbounds ptr, ptr %1, i64 %169
  %172 = load ptr, ptr %171, align 8, !tbaa !16
  %173 = getelementptr inbounds i16, ptr %172, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %173, i8 0, i64 %162, i1 false)
  %174 = add nuw nsw i64 %169, 1
  %175 = add i64 %170, 1
  %176 = icmp eq i64 %175, %166
  br i1 %176, label %177, label %168, !llvm.loop !295

177:                                              ; preds = %168, %159
  %178 = phi i64 [ %163, %159 ], [ %174, %168 ]
  %179 = sub nsw i64 %163, %164
  %180 = icmp ugt i64 %179, -8
  br i1 %180, label %264, label %181

181:                                              ; preds = %177
  %182 = getelementptr ptr, ptr %1, i64 1
  %183 = getelementptr ptr, ptr %1, i64 2
  %184 = getelementptr ptr, ptr %1, i64 3
  %185 = getelementptr ptr, ptr %1, i64 4
  %186 = getelementptr ptr, ptr %1, i64 5
  %187 = getelementptr ptr, ptr %1, i64 6
  %188 = getelementptr ptr, ptr %1, i64 7
  br label %236

189:                                              ; preds = %147, %233
  %190 = phi i64 [ 0, %147 ], [ %234, %233 ]
  %191 = getelementptr inbounds ptr, ptr %1, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !16
  %193 = getelementptr inbounds i16, ptr %192, i64 %148
  %194 = getelementptr inbounds ptr, ptr %4, i64 %190
  %195 = load ptr, ptr %194, align 8, !tbaa !16
  %196 = getelementptr inbounds float, ptr %195, i64 %149
  br i1 %150, label %197, label %233

197:                                              ; preds = %189
  br i1 %153, label %219, label %198

198:                                              ; preds = %197, %198
  %199 = phi i64 [ %216, %198 ], [ 0, %197 ]
  %200 = getelementptr inbounds float, ptr %196, i64 %199
  %201 = getelementptr inbounds float, ptr %200, i64 4
  %202 = load <4 x float>, ptr %200, align 4, !tbaa !136
  %203 = load <4 x float>, ptr %201, align 4, !tbaa !136
  %204 = fadd <4 x float> %202, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %205 = fadd <4 x float> %203, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %206 = bitcast <4 x float> %204 to <4 x i32>
  %207 = bitcast <4 x float> %205 to <4 x i32>
  %208 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %206, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %209 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %207, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %210 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %208, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %211 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %209, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %212 = trunc <4 x i32> %210 to <4 x i16>
  %213 = trunc <4 x i32> %211 to <4 x i16>
  %214 = getelementptr inbounds i16, ptr %193, i64 %199
  %215 = getelementptr inbounds i16, ptr %214, i64 4
  store <4 x i16> %212, ptr %214, align 2, !tbaa !109
  store <4 x i16> %213, ptr %215, align 2, !tbaa !109
  %216 = add nuw i64 %199, 8
  %217 = icmp eq i64 %216, %154
  br i1 %217, label %218, label %198, !llvm.loop !296

218:                                              ; preds = %198
  br i1 %155, label %233, label %219

219:                                              ; preds = %197, %218
  %220 = phi i64 [ 0, %197 ], [ %154, %218 ]
  br label %221

221:                                              ; preds = %219, %221
  %222 = phi i64 [ %231, %221 ], [ %220, %219 ]
  %223 = getelementptr inbounds float, ptr %196, i64 %222
  %224 = load float, ptr %223, align 4, !tbaa !136
  %225 = fadd float %224, 3.840000e+02
  %226 = bitcast float %225 to i32
  %227 = tail call i32 @llvm.smax.i32(i32 %226, i32 1136623616)
  %228 = tail call i32 @llvm.umin.i32(i32 %227, i32 1136689151)
  %229 = trunc i32 %228 to i16
  %230 = getelementptr inbounds i16, ptr %193, i64 %222
  store i16 %229, ptr %230, align 2, !tbaa !109
  %231 = add nuw nsw i64 %222, 1
  %232 = icmp eq i64 %231, %151
  br i1 %232, label %233, label %221, !llvm.loop !297

233:                                              ; preds = %221, %218, %189
  %234 = add nuw nsw i64 %190, 1
  %235 = icmp eq i64 %234, %152
  br i1 %235, label %156, label %189, !llvm.loop !298

236:                                              ; preds = %236, %181
  %237 = phi i64 [ %178, %181 ], [ %262, %236 ]
  %238 = getelementptr inbounds ptr, ptr %1, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !16
  %240 = getelementptr inbounds i16, ptr %239, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %240, i8 0, i64 %162, i1 false)
  %241 = getelementptr ptr, ptr %182, i64 %237
  %242 = load ptr, ptr %241, align 8, !tbaa !16
  %243 = getelementptr inbounds i16, ptr %242, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %243, i8 0, i64 %162, i1 false)
  %244 = getelementptr ptr, ptr %183, i64 %237
  %245 = load ptr, ptr %244, align 8, !tbaa !16
  %246 = getelementptr inbounds i16, ptr %245, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %246, i8 0, i64 %162, i1 false)
  %247 = getelementptr ptr, ptr %184, i64 %237
  %248 = load ptr, ptr %247, align 8, !tbaa !16
  %249 = getelementptr inbounds i16, ptr %248, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %249, i8 0, i64 %162, i1 false)
  %250 = getelementptr ptr, ptr %185, i64 %237
  %251 = load ptr, ptr %250, align 8, !tbaa !16
  %252 = getelementptr inbounds i16, ptr %251, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %252, i8 0, i64 %162, i1 false)
  %253 = getelementptr ptr, ptr %186, i64 %237
  %254 = load ptr, ptr %253, align 8, !tbaa !16
  %255 = getelementptr inbounds i16, ptr %254, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %255, i8 0, i64 %162, i1 false)
  %256 = getelementptr ptr, ptr %187, i64 %237
  %257 = load ptr, ptr %256, align 8, !tbaa !16
  %258 = getelementptr inbounds i16, ptr %257, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %258, i8 0, i64 %162, i1 false)
  %259 = getelementptr ptr, ptr %188, i64 %237
  %260 = load ptr, ptr %259, align 8, !tbaa !16
  %261 = getelementptr inbounds i16, ptr %260, i64 %160
  tail call void @llvm.memset.p0.i64(ptr align 2 %261, i8 0, i64 %162, i1 false)
  %262 = add nuw nsw i64 %237, 8
  %263 = icmp eq i64 %262, %164
  br i1 %263, label %264, label %236, !llvm.loop !299

264:                                              ; preds = %177, %236, %141, %156, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %8, align 8, !tbaa !16
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call i32 @stb_vorbis_get_frame_short(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %8, i32 noundef %3)
  br label %72

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %14 = load i8, ptr %13, align 4, !tbaa !69
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %17, align 4
  br label %58

18:                                               ; preds = %12
  %19 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %22, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %23, align 4, !tbaa !67
  br label %58

24:                                               ; preds = %18
  %25 = load i32, ptr %5, align 4, !tbaa !54
  %26 = load i32, ptr %7, align 4, !tbaa !54
  %27 = load i32, ptr %6, align 4, !tbaa !54
  %28 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %25, i32 noundef %26, i32 noundef %27)
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %24
  %33 = sext i32 %26 to i64
  %34 = zext nneg i32 %30 to i64
  %35 = icmp eq i32 %30, 1
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = and i64 %34, 2147483646
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %44, %38 ]
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %39
  %41 = load <2 x ptr>, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds float, <2 x ptr> %41, i64 %33
  %43 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %39
  store <2 x ptr> %42, ptr %43, align 8, !tbaa !16
  %44 = add nuw i64 %39, 2
  %45 = icmp eq i64 %44, %37
  br i1 %45, label %46, label %38, !llvm.loop !300

46:                                               ; preds = %38
  %47 = icmp eq i64 %37, %34
  br i1 %47, label %59, label %48

48:                                               ; preds = %32, %46
  %49 = phi i64 [ 0, %32 ], [ %37, %46 ]
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %56, %50 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  %54 = getelementptr inbounds float, ptr %53, i64 %33
  %55 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %51
  store ptr %54, ptr %55, align 8, !tbaa !16
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %34
  br i1 %57, label %59, label %50, !llvm.loop !301

58:                                               ; preds = %16, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %72

59:                                               ; preds = %50, %46, %24
  %60 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 %26, ptr %60, align 4, !tbaa !67
  %61 = add nsw i32 %28, %26
  %62 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 %61, ptr %62, align 8, !tbaa !68
  %63 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %64 = icmp eq i32 %28, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = mul nsw i32 %28, %1
  %67 = icmp sgt i32 %66, %3
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = sdiv i32 %3, %1
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %69, %68 ], [ %28, %65 ]
  tail call fastcc void @convert_channels_short_interleaved(i32 noundef %1, ptr noundef %2, i32 noundef %30, ptr noundef nonnull %63, i32 noundef 0, i32 noundef %71)
  br label %72

72:                                               ; preds = %58, %59, %70, %10
  %73 = phi i32 [ %11, %10 ], [ %71, %70 ], [ 0, %59 ], [ 0, %58 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal fastcc void @convert_channels_short_interleaved(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [32 x float], align 16
  %8 = icmp ne i32 %0, %2
  %9 = icmp slt i32 %0, 3
  %10 = and i1 %9, %8
  %11 = icmp slt i32 %2, 7
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %221

13:                                               ; preds = %6
  %14 = icmp eq i32 %0, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = icmp sgt i32 %5, 0
  %17 = icmp sgt i32 %2, 0
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %5 to i64
  %20 = sext i32 %4 to i64
  %21 = zext nneg i32 %2 to i64
  %22 = getelementptr float, ptr %7, i64 -1
  br label %24

23:                                               ; preds = %13
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 5275, ptr noundef nonnull @__PRETTY_FUNCTION__.convert_channels_short_interleaved) #28
  unreachable

24:                                               ; preds = %15, %220
  %25 = phi i1 [ true, %15 ], [ false, %220 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #27
  br i1 %16, label %26, label %220

26:                                               ; preds = %24, %216
  %27 = phi i32 [ %219, %216 ], [ 0, %24 ]
  %28 = phi i64 [ %217, %216 ], [ 0, %24 ]
  %29 = phi i32 [ %34, %216 ], [ 16, %24 ]
  %30 = trunc i64 %28 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  %31 = add i32 %29, %30
  %32 = icmp sgt i32 %31, %5
  %33 = sub i32 %5, %30
  %34 = select i1 %32, i32 %33, i32 %29
  br i1 %17, label %35, label %53

35:                                               ; preds = %26
  %36 = icmp sgt i32 %34, 0
  %37 = add nsw i64 %28, %20
  %38 = tail call i32 @llvm.smin.i32(i32 %5, i32 %31)
  %39 = add i32 %38, %27
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, -1
  %42 = and i64 %40, 1
  %43 = icmp eq i64 %41, 0
  %44 = and i64 %40, -2
  %45 = icmp eq i64 %42, 0
  %46 = and i64 %40, 1
  %47 = icmp eq i64 %41, 0
  %48 = and i64 %40, -2
  %49 = icmp eq i64 %46, 0
  %50 = icmp ult i32 %39, 4
  %51 = and i64 %40, -4
  %52 = icmp eq i64 %51, %40
  br label %91

53:                                               ; preds = %201, %26
  %54 = shl i32 %34, 1
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %216

56:                                               ; preds = %53
  %57 = shl i32 %30, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr i16, ptr %1, i64 %58
  %60 = tail call i32 @llvm.smin.i32(i32 %5, i32 %31)
  %61 = add i32 %60, %27
  %62 = shl i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = icmp ult i32 %62, 8
  br i1 %64, label %89, label %65

65:                                               ; preds = %56
  %66 = and i64 %63, 4294967288
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %85, %67 ]
  %69 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %68
  %70 = getelementptr inbounds float, ptr %69, i64 4
  %71 = load <4 x float>, ptr %69, align 16, !tbaa !136
  %72 = load <4 x float>, ptr %70, align 16, !tbaa !136
  %73 = fadd <4 x float> %71, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %74 = fadd <4 x float> %72, <float 3.840000e+02, float 3.840000e+02, float 3.840000e+02, float 3.840000e+02>
  %75 = bitcast <4 x float> %73 to <4 x i32>
  %76 = bitcast <4 x float> %74 to <4 x i32>
  %77 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %75, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %78 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %76, <4 x i32> <i32 1136623616, i32 1136623616, i32 1136623616, i32 1136623616>)
  %79 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %77, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %80 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %78, <4 x i32> <i32 1136689151, i32 1136689151, i32 1136689151, i32 1136689151>)
  %81 = trunc <4 x i32> %79 to <4 x i16>
  %82 = trunc <4 x i32> %80 to <4 x i16>
  %83 = getelementptr i16, ptr %59, i64 %68
  %84 = getelementptr i16, ptr %83, i64 4
  store <4 x i16> %81, ptr %83, align 2, !tbaa !109
  store <4 x i16> %82, ptr %84, align 2, !tbaa !109
  %85 = add nuw i64 %68, 8
  %86 = icmp eq i64 %85, %66
  br i1 %86, label %87, label %67, !llvm.loop !302

87:                                               ; preds = %67
  %88 = icmp eq i64 %66, %63
  br i1 %88, label %216, label %89

89:                                               ; preds = %56, %87
  %90 = phi i64 [ 0, %56 ], [ %66, %87 ]
  br label %204

91:                                               ; preds = %201, %35
  %92 = phi i64 [ 0, %35 ], [ %202, %201 ]
  %93 = getelementptr inbounds [7 x [6 x i8]], ptr @channel_position, i64 0, i64 %18, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !75
  %95 = and i8 %94, 6
  switch i8 %95, label %201 [
    i8 6, label %106
    i8 2, label %101
    i8 4, label %96
  ]

96:                                               ; preds = %91
  br i1 %36, label %97, label %201

97:                                               ; preds = %96
  %98 = getelementptr inbounds ptr, ptr %3, i64 %92
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  %100 = getelementptr float, ptr %99, i64 %37
  br i1 %43, label %191, label %161

101:                                              ; preds = %91
  br i1 %36, label %102, label %201

102:                                              ; preds = %101
  %103 = getelementptr inbounds ptr, ptr %3, i64 %92
  %104 = load ptr, ptr %103, align 8, !tbaa !16
  %105 = getelementptr float, ptr %104, i64 %37
  br i1 %47, label %182, label %142

106:                                              ; preds = %91
  br i1 %36, label %107, label %201

107:                                              ; preds = %106
  %108 = getelementptr inbounds ptr, ptr %3, i64 %92
  %109 = load ptr, ptr %108, align 8, !tbaa !16
  %110 = getelementptr float, ptr %109, i64 %37
  br i1 %50, label %128, label %111

111:                                              ; preds = %107, %111
  %112 = phi i64 [ %125, %111 ], [ 0, %107 ]
  %113 = getelementptr float, ptr %110, i64 %112
  %114 = load <4 x float>, ptr %113, align 4, !tbaa !136
  %115 = shl nuw nsw i64 %112, 1
  %116 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %115
  %117 = load <8 x float>, ptr %116, align 16, !tbaa !136
  %118 = shufflevector <8 x float> %117, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %119 = shufflevector <8 x float> %117, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %120 = fadd <4 x float> %114, %118
  %121 = or disjoint i64 %115, 1
  %122 = fadd <4 x float> %114, %119
  %123 = getelementptr [32 x float], ptr %22, i64 0, i64 %121
  %124 = shufflevector <4 x float> %120, <4 x float> %122, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %124, ptr %123, align 16, !tbaa !136
  %125 = add nuw i64 %112, 4
  %126 = icmp eq i64 %125, %51
  br i1 %126, label %127, label %111, !llvm.loop !303

127:                                              ; preds = %111
  br i1 %52, label %201, label %128

128:                                              ; preds = %107, %127
  %129 = phi i64 [ 0, %107 ], [ %51, %127 ]
  br label %130

130:                                              ; preds = %128, %130
  %131 = phi i64 [ %140, %130 ], [ %129, %128 ]
  %132 = getelementptr float, ptr %110, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !136
  %134 = shl nuw nsw i64 %131, 1
  %135 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %134
  %136 = load <2 x float>, ptr %135, align 8, !tbaa !136
  %137 = insertelement <2 x float> poison, float %133, i64 0
  %138 = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> zeroinitializer
  %139 = fadd <2 x float> %138, %136
  store <2 x float> %139, ptr %135, align 8, !tbaa !136
  %140 = add nuw nsw i64 %131, 1
  %141 = icmp eq i64 %140, %40
  br i1 %141, label %201, label %130, !llvm.loop !304

142:                                              ; preds = %102, %142
  %143 = phi i64 [ %158, %142 ], [ 0, %102 ]
  %144 = phi i64 [ %159, %142 ], [ 0, %102 ]
  %145 = getelementptr float, ptr %105, i64 %143
  %146 = load float, ptr %145, align 4, !tbaa !136
  %147 = shl nuw nsw i64 %143, 1
  %148 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %147
  %149 = load float, ptr %148, align 16, !tbaa !136
  %150 = fadd float %146, %149
  store float %150, ptr %148, align 16, !tbaa !136
  %151 = or disjoint i64 %143, 1
  %152 = getelementptr float, ptr %105, i64 %151
  %153 = load float, ptr %152, align 4, !tbaa !136
  %154 = shl nuw nsw i64 %151, 1
  %155 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %154
  %156 = load float, ptr %155, align 8, !tbaa !136
  %157 = fadd float %153, %156
  store float %157, ptr %155, align 8, !tbaa !136
  %158 = add nuw nsw i64 %143, 2
  %159 = add i64 %144, 2
  %160 = icmp eq i64 %159, %48
  br i1 %160, label %182, label %142, !llvm.loop !305

161:                                              ; preds = %97, %161
  %162 = phi i64 [ %179, %161 ], [ 0, %97 ]
  %163 = phi i64 [ %180, %161 ], [ 0, %97 ]
  %164 = getelementptr float, ptr %100, i64 %162
  %165 = load float, ptr %164, align 4, !tbaa !136
  %166 = shl nuw nsw i64 %162, 1
  %167 = or disjoint i64 %166, 1
  %168 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !136
  %170 = fadd float %165, %169
  store float %170, ptr %168, align 4, !tbaa !136
  %171 = or disjoint i64 %162, 1
  %172 = getelementptr float, ptr %100, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !136
  %174 = shl nuw nsw i64 %171, 1
  %175 = or disjoint i64 %174, 1
  %176 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !136
  %178 = fadd float %173, %177
  store float %178, ptr %176, align 4, !tbaa !136
  %179 = add nuw nsw i64 %162, 2
  %180 = add i64 %163, 2
  %181 = icmp eq i64 %180, %44
  br i1 %181, label %191, label %161, !llvm.loop !306

182:                                              ; preds = %142, %102
  %183 = phi i64 [ 0, %102 ], [ %158, %142 ]
  br i1 %49, label %201, label %184

184:                                              ; preds = %182
  %185 = getelementptr float, ptr %105, i64 %183
  %186 = load float, ptr %185, align 4, !tbaa !136
  %187 = shl nuw nsw i64 %183, 1
  %188 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %187
  %189 = load float, ptr %188, align 8, !tbaa !136
  %190 = fadd float %186, %189
  store float %190, ptr %188, align 8, !tbaa !136
  br label %201

191:                                              ; preds = %161, %97
  %192 = phi i64 [ 0, %97 ], [ %179, %161 ]
  br i1 %45, label %201, label %193

193:                                              ; preds = %191
  %194 = getelementptr float, ptr %100, i64 %192
  %195 = load float, ptr %194, align 4, !tbaa !136
  %196 = shl nuw nsw i64 %192, 1
  %197 = or disjoint i64 %196, 1
  %198 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !136
  %200 = fadd float %195, %199
  store float %200, ptr %198, align 4, !tbaa !136
  br label %201

201:                                              ; preds = %193, %191, %184, %182, %130, %127, %106, %101, %96, %91
  %202 = add nuw nsw i64 %92, 1
  %203 = icmp eq i64 %202, %21
  br i1 %203, label %53, label %91, !llvm.loop !307

204:                                              ; preds = %89, %204
  %205 = phi i64 [ %214, %204 ], [ %90, %89 ]
  %206 = getelementptr inbounds [32 x float], ptr %7, i64 0, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !136
  %208 = fadd float %207, 3.840000e+02
  %209 = bitcast float %208 to i32
  %210 = tail call i32 @llvm.smax.i32(i32 %209, i32 1136623616)
  %211 = tail call i32 @llvm.umin.i32(i32 %210, i32 1136689151)
  %212 = trunc i32 %211 to i16
  %213 = getelementptr i16, ptr %59, i64 %205
  store i16 %212, ptr %213, align 2, !tbaa !109
  %214 = add nuw nsw i64 %205, 1
  %215 = icmp eq i64 %214, %63
  br i1 %215, label %216, label %204, !llvm.loop !308

216:                                              ; preds = %204, %87, %53
  %217 = add nuw nsw i64 %28, 16
  %218 = icmp ult i64 %217, %19
  %219 = add i32 %27, -16
  br i1 %218, label %26, label %220, !llvm.loop !309

220:                                              ; preds = %216, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #27
  br i1 %25, label %24, label %299, !llvm.loop !310

221:                                              ; preds = %6
  %222 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %223 = icmp sgt i32 %5, 0
  br i1 %223, label %224, label %299

224:                                              ; preds = %221
  %225 = icmp sgt i32 %222, 0
  %226 = sext i32 %4 to i64
  %227 = zext nneg i32 %5 to i64
  %228 = zext i32 %222 to i64
  %229 = and i64 %228, 1
  %230 = icmp eq i32 %222, 1
  %231 = and i64 %228, 2147483646
  %232 = icmp eq i64 %229, 0
  br label %233

233:                                              ; preds = %224, %295
  %234 = phi i64 [ 0, %224 ], [ %297, %295 ]
  %235 = phi ptr [ %1, %224 ], [ %296, %295 ]
  br i1 %225, label %236, label %253

236:                                              ; preds = %233
  br i1 %230, label %237, label %265

237:                                              ; preds = %265, %236
  %238 = phi ptr [ undef, %236 ], [ %291, %265 ]
  %239 = phi i64 [ 0, %236 ], [ %292, %265 ]
  %240 = phi ptr [ %235, %236 ], [ %291, %265 ]
  br i1 %232, label %253, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds ptr, ptr %3, i64 %239
  %243 = load ptr, ptr %242, align 8, !tbaa !16
  %244 = getelementptr float, ptr %243, i64 %234
  %245 = getelementptr float, ptr %244, i64 %226
  %246 = load float, ptr %245, align 4, !tbaa !136
  %247 = fadd float %246, 3.840000e+02
  %248 = bitcast float %247 to i32
  %249 = tail call i32 @llvm.smax.i32(i32 %248, i32 1136623616)
  %250 = tail call i32 @llvm.umin.i32(i32 %249, i32 1136689151)
  %251 = trunc i32 %250 to i16
  %252 = getelementptr inbounds i16, ptr %240, i64 1
  store i16 %251, ptr %240, align 2, !tbaa !109
  br label %253

253:                                              ; preds = %241, %237, %233
  %254 = phi i32 [ 0, %233 ], [ %222, %237 ], [ %222, %241 ]
  %255 = phi ptr [ %235, %233 ], [ %238, %237 ], [ %252, %241 ]
  %256 = icmp slt i32 %254, %0
  br i1 %256, label %257, label %295

257:                                              ; preds = %253
  %258 = xor i32 %254, -1
  %259 = add i32 %258, %0
  %260 = zext i32 %259 to i64
  %261 = shl nuw nsw i64 %260, 1
  %262 = add nuw nsw i64 %261, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %255, i8 0, i64 %262, i1 false), !tbaa !109
  %263 = getelementptr i8, ptr %255, i64 2
  %264 = getelementptr i8, ptr %263, i64 %261
  br label %295

265:                                              ; preds = %236, %265
  %266 = phi i64 [ %292, %265 ], [ 0, %236 ]
  %267 = phi ptr [ %291, %265 ], [ %235, %236 ]
  %268 = phi i64 [ %293, %265 ], [ 0, %236 ]
  %269 = getelementptr inbounds ptr, ptr %3, i64 %266
  %270 = load ptr, ptr %269, align 8, !tbaa !16
  %271 = getelementptr float, ptr %270, i64 %234
  %272 = getelementptr float, ptr %271, i64 %226
  %273 = load float, ptr %272, align 4, !tbaa !136
  %274 = fadd float %273, 3.840000e+02
  %275 = bitcast float %274 to i32
  %276 = tail call i32 @llvm.smax.i32(i32 %275, i32 1136623616)
  %277 = tail call i32 @llvm.umin.i32(i32 %276, i32 1136689151)
  %278 = trunc i32 %277 to i16
  %279 = getelementptr inbounds i16, ptr %267, i64 1
  store i16 %278, ptr %267, align 2, !tbaa !109
  %280 = or disjoint i64 %266, 1
  %281 = getelementptr inbounds ptr, ptr %3, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !16
  %283 = getelementptr float, ptr %282, i64 %234
  %284 = getelementptr float, ptr %283, i64 %226
  %285 = load float, ptr %284, align 4, !tbaa !136
  %286 = fadd float %285, 3.840000e+02
  %287 = bitcast float %286 to i32
  %288 = tail call i32 @llvm.smax.i32(i32 %287, i32 1136623616)
  %289 = tail call i32 @llvm.umin.i32(i32 %288, i32 1136689151)
  %290 = trunc i32 %289 to i16
  %291 = getelementptr inbounds i16, ptr %267, i64 2
  store i16 %290, ptr %279, align 2, !tbaa !109
  %292 = add nuw nsw i64 %266, 2
  %293 = add i64 %268, 2
  %294 = icmp eq i64 %293, %231
  br i1 %294, label %237, label %265, !llvm.loop !311

295:                                              ; preds = %257, %253
  %296 = phi ptr [ %255, %253 ], [ %264, %257 ]
  %297 = add nuw nsw i64 %234, 1
  %298 = icmp eq i64 %297, %227
  br i1 %298, label %299, label %233, !llvm.loop !312

299:                                              ; preds = %295, %220, %221
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = sdiv i32 %3, %1
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  br label %14

14:                                               ; preds = %82, %4
  %15 = phi ptr [ %2, %4 ], [ %34, %82 ]
  %16 = phi i32 [ 0, %4 ], [ %35, %82 ]
  %17 = icmp slt i32 %16, %8
  br i1 %17, label %18, label %85

18:                                               ; preds = %14
  %19 = load i32, ptr %9, align 8, !tbaa !68
  %20 = load i32, ptr %10, align 4, !tbaa !67
  %21 = sub nsw i32 %19, %20
  %22 = add nsw i32 %21, %16
  %23 = icmp slt i32 %22, %8
  %24 = sub nsw i32 %8, %16
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %11, align 4, !tbaa !45
  tail call fastcc void @convert_channels_short_interleaved(i32 noundef %1, ptr noundef %15, i32 noundef %28, ptr noundef nonnull %12, i32 noundef %20, i32 noundef %25)
  %29 = load i32, ptr %10, align 4, !tbaa !67
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ %29, %27 ], [ %20, %18 ]
  %32 = mul nsw i32 %25, %1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %15, i64 %33
  %35 = add nsw i32 %25, %16
  %36 = add nsw i32 %31, %25
  store i32 %36, ptr %10, align 4, !tbaa !67
  %37 = icmp eq i32 %35, %8
  br i1 %37, label %85, label %38

38:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %39 = load i8, ptr %13, align 4, !tbaa !69
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %42, align 4
  br label %81

43:                                               ; preds = %38
  %44 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, ptr %9, align 8, !tbaa !68
  store i32 0, ptr %10, align 4, !tbaa !67
  br label %81

47:                                               ; preds = %43
  %48 = load i32, ptr %5, align 4, !tbaa !54
  %49 = load i32, ptr %7, align 4, !tbaa !54
  %50 = load i32, ptr %6, align 4, !tbaa !54
  %51 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %48, i32 noundef %49, i32 noundef %50)
  %52 = freeze i32 %51
  %53 = load i32, ptr %11, align 4, !tbaa !45
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %47
  %56 = sext i32 %49 to i64
  %57 = zext nneg i32 %53 to i64
  %58 = icmp eq i32 %53, 1
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = and i64 %57, 2147483646
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %67, %61 ]
  %63 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %62
  %64 = load <2 x ptr>, ptr %63, align 8, !tbaa !16
  %65 = getelementptr inbounds float, <2 x ptr> %64, i64 %56
  %66 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %62
  store <2 x ptr> %65, ptr %66, align 8, !tbaa !16
  %67 = add nuw i64 %62, 2
  %68 = icmp eq i64 %67, %60
  br i1 %68, label %69, label %61, !llvm.loop !313

69:                                               ; preds = %61
  %70 = icmp eq i64 %60, %57
  br i1 %70, label %82, label %71

71:                                               ; preds = %55, %69
  %72 = phi i64 [ 0, %55 ], [ %60, %69 ]
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ %79, %73 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  %77 = getelementptr inbounds float, ptr %76, i64 %56
  %78 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %74
  store ptr %77, ptr %78, align 8, !tbaa !16
  %79 = add nuw nsw i64 %74, 1
  %80 = icmp eq i64 %79, %57
  br i1 %80, label %82, label %73, !llvm.loop !314

81:                                               ; preds = %41, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %85

82:                                               ; preds = %73, %69, %47
  store i32 %49, ptr %10, align 4, !tbaa !67
  %83 = add nsw i32 %52, %49
  store i32 %83, ptr %9, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %84 = icmp eq i32 %52, 0
  br i1 %84, label %85, label %14

85:                                               ; preds = %82, %30, %14, %81
  %86 = phi i32 [ %35, %81 ], [ %35, %82 ], [ %8, %30 ], [ %16, %14 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_samples_short(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  br label %13

13:                                               ; preds = %77, %4
  %14 = phi i32 [ 0, %4 ], [ %30, %77 ]
  %15 = icmp slt i32 %14, %3
  br i1 %15, label %16, label %80

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 8, !tbaa !68
  %18 = load i32, ptr %9, align 4, !tbaa !67
  %19 = sub nsw i32 %17, %18
  %20 = add nsw i32 %19, %14
  %21 = icmp slt i32 %20, %3
  %22 = sub nsw i32 %3, %14
  %23 = select i1 %21, i32 %19, i32 %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, ptr %10, align 4, !tbaa !45
  tail call fastcc void @convert_samples_short(i32 noundef %1, ptr noundef %2, i32 noundef %14, i32 noundef %26, ptr noundef nonnull %11, i32 noundef %18, i32 noundef %23)
  %27 = load i32, ptr %9, align 4, !tbaa !67
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %27, %25 ], [ %18, %16 ]
  %30 = add nsw i32 %23, %14
  %31 = add nsw i32 %29, %23
  store i32 %31, ptr %9, align 4, !tbaa !67
  %32 = icmp eq i32 %30, %3
  br i1 %32, label %80, label %33

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %34 = load i8, ptr %12, align 4, !tbaa !69
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %37, align 4
  br label %76

38:                                               ; preds = %33
  %39 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, ptr %8, align 8, !tbaa !68
  store i32 0, ptr %9, align 4, !tbaa !67
  br label %76

42:                                               ; preds = %38
  %43 = load i32, ptr %5, align 4, !tbaa !54
  %44 = load i32, ptr %7, align 4, !tbaa !54
  %45 = load i32, ptr %6, align 4, !tbaa !54
  %46 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  %47 = freeze i32 %46
  %48 = load i32, ptr %10, align 4, !tbaa !45
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %42
  %51 = sext i32 %44 to i64
  %52 = zext nneg i32 %48 to i64
  %53 = icmp eq i32 %48, 1
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = and i64 %52, 2147483646
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 0, %54 ], [ %62, %56 ]
  %58 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %57
  %59 = load <2 x ptr>, ptr %58, align 8, !tbaa !16
  %60 = getelementptr inbounds float, <2 x ptr> %59, i64 %51
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %57
  store <2 x ptr> %60, ptr %61, align 8, !tbaa !16
  %62 = add nuw i64 %57, 2
  %63 = icmp eq i64 %62, %55
  br i1 %63, label %64, label %56, !llvm.loop !315

64:                                               ; preds = %56
  %65 = icmp eq i64 %55, %52
  br i1 %65, label %77, label %66

66:                                               ; preds = %50, %64
  %67 = phi i64 [ 0, %50 ], [ %55, %64 ]
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i64 [ %74, %68 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = getelementptr inbounds float, ptr %71, i64 %51
  %73 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %69
  store ptr %72, ptr %73, align 8, !tbaa !16
  %74 = add nuw nsw i64 %69, 1
  %75 = icmp eq i64 %74, %52
  br i1 %75, label %77, label %68, !llvm.loop !316

76:                                               ; preds = %36, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %80

77:                                               ; preds = %68, %64, %42
  store i32 %44, ptr %9, align 4, !tbaa !67
  %78 = add nsw i32 %47, %44
  store i32 %78, ptr %8, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %79 = icmp eq i32 %47, 0
  br i1 %79, label %80, label %13

80:                                               ; preds = %77, %28, %13, %76
  %81 = phi i32 [ %30, %76 ], [ %30, %77 ], [ %3, %28 ], [ %14, %13 ]
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_decode_filename(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  %6 = call ptr @stb_vorbis_open_filename(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = shl nsw i32 %10, 12
  store i32 %10, ptr %1, align 4, !tbaa !54
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %6, align 8, !tbaa !51
  store i32 %14, ptr %2, align 4, !tbaa !54
  br label %15

15:                                               ; preds = %13, %8
  %16 = sext i32 %11 to i64
  %17 = shl nsw i64 %16, 1
  %18 = call noalias ptr @malloc(i64 noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %9, align 4, !tbaa !45
  %22 = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %6, i32 noundef %21, ptr noundef nonnull %18, i32 noundef %11)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %61, label %28

24:                                               ; preds = %15
  call fastcc void @vorbis_deinit(ptr noundef nonnull %6)
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %69

28:                                               ; preds = %20, %52
  %29 = phi i32 [ %59, %52 ], [ %22, %20 ]
  %30 = phi i32 [ %34, %52 ], [ 0, %20 ]
  %31 = phi i32 [ %37, %52 ], [ 0, %20 ]
  %32 = phi ptr [ %55, %52 ], [ %18, %20 ]
  %33 = phi i32 [ %54, %52 ], [ %11, %20 ]
  %34 = add nsw i32 %29, %30
  %35 = load i32, ptr %9, align 4, !tbaa !45
  %36 = mul nsw i32 %35, %29
  %37 = add nsw i32 %36, %31
  %38 = add nsw i32 %37, %11
  %39 = icmp sgt i32 %38, %33
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = shl nsw i32 %33, 1
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 1
  %44 = call ptr @realloc(ptr noundef %32, i64 noundef %43) #30
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %9, align 4, !tbaa !45
  br label %52

48:                                               ; preds = %40
  call void @free(ptr noundef %32) #27
  call fastcc void @vorbis_deinit(ptr noundef nonnull %6)
  %49 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %69

52:                                               ; preds = %46, %28
  %53 = phi i32 [ %35, %28 ], [ %47, %46 ]
  %54 = phi i32 [ %33, %28 ], [ %41, %46 ]
  %55 = phi ptr [ %32, %28 ], [ %44, %46 ]
  %56 = sext i32 %37 to i64
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  %58 = sub nsw i32 %54, %37
  %59 = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %6, i32 noundef %53, ptr noundef %57, i32 noundef %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %28

61:                                               ; preds = %52, %20
  %62 = phi ptr [ %18, %20 ], [ %55, %52 ]
  %63 = phi i32 [ 0, %20 ], [ %34, %52 ]
  store ptr %62, ptr %3, align 8, !tbaa !16
  call fastcc void @vorbis_deinit(ptr noundef nonnull %6)
  %64 = getelementptr inbounds %struct.stb_vorbis, ptr %6, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %48, %24
  %68 = phi i32 [ -2, %24 ], [ -2, %48 ], [ %63, %61 ]
  call void @free(ptr noundef nonnull %6) #27
  br label %69

69:                                               ; preds = %67, %48, %61, %24, %4
  %70 = phi i32 [ -1, %4 ], [ -2, %24 ], [ %63, %61 ], [ -2, %48 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret i32 %70
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_decode_memory(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %7 = call ptr @stb_vorbis_open_memory(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef null)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = shl nsw i32 %11, 12
  store i32 %11, ptr %2, align 4, !tbaa !54
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %7, align 8, !tbaa !51
  store i32 %15, ptr %3, align 4, !tbaa !54
  br label %16

16:                                               ; preds = %14, %9
  %17 = sext i32 %12 to i64
  %18 = shl nsw i64 %17, 1
  %19 = call noalias ptr @malloc(i64 noundef %18) #29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %10, align 4, !tbaa !45
  %23 = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %7, i32 noundef %22, ptr noundef nonnull %19, i32 noundef %12)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %62, label %29

25:                                               ; preds = %16
  call fastcc void @vorbis_deinit(ptr noundef nonnull %7)
  %26 = getelementptr inbounds %struct.stb_vorbis, ptr %7, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %68, label %70

29:                                               ; preds = %21, %53
  %30 = phi i32 [ %60, %53 ], [ %23, %21 ]
  %31 = phi i32 [ %35, %53 ], [ 0, %21 ]
  %32 = phi i32 [ %38, %53 ], [ 0, %21 ]
  %33 = phi ptr [ %56, %53 ], [ %19, %21 ]
  %34 = phi i32 [ %55, %53 ], [ %12, %21 ]
  %35 = add nsw i32 %30, %31
  %36 = load i32, ptr %10, align 4, !tbaa !45
  %37 = mul nsw i32 %36, %30
  %38 = add nsw i32 %37, %32
  %39 = add nsw i32 %38, %12
  %40 = icmp sgt i32 %39, %34
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = shl nsw i32 %34, 1
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 1
  %45 = call ptr @realloc(ptr noundef %33, i64 noundef %44) #30
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr %10, align 4, !tbaa !45
  br label %53

49:                                               ; preds = %41
  call void @free(ptr noundef %33) #27
  call fastcc void @vorbis_deinit(ptr noundef nonnull %7)
  %50 = getelementptr inbounds %struct.stb_vorbis, ptr %7, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %70

53:                                               ; preds = %47, %29
  %54 = phi i32 [ %36, %29 ], [ %48, %47 ]
  %55 = phi i32 [ %34, %29 ], [ %42, %47 ]
  %56 = phi ptr [ %33, %29 ], [ %45, %47 ]
  %57 = sext i32 %38 to i64
  %58 = getelementptr inbounds i16, ptr %56, i64 %57
  %59 = sub nsw i32 %55, %38
  %60 = call i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef nonnull %7, i32 noundef %54, ptr noundef %58, i32 noundef %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %29

62:                                               ; preds = %53, %21
  %63 = phi ptr [ %19, %21 ], [ %56, %53 ]
  %64 = phi i32 [ 0, %21 ], [ %35, %53 ]
  store ptr %63, ptr %4, align 8, !tbaa !16
  call fastcc void @vorbis_deinit(ptr noundef nonnull %7)
  %65 = getelementptr inbounds %struct.stb_vorbis, ptr %7, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %49, %25
  %69 = phi i32 [ -2, %25 ], [ -2, %49 ], [ %64, %62 ]
  call void @free(ptr noundef nonnull %7) #27
  br label %70

70:                                               ; preds = %68, %49, %62, %25, %5
  %71 = phi i32 [ -1, %5 ], [ -2, %25 ], [ %64, %62 ], [ -2, %49 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_samples_float_interleaved(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = sdiv i32 %3, %1
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  %14 = icmp sgt i32 %11, 0
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %16 = zext i32 %11 to i64
  %17 = and i64 %16, 3
  %18 = icmp ult i32 %11, 4
  %19 = and i64 %16, 2147483644
  %20 = icmp eq i64 %17, 0
  br label %21

21:                                               ; preds = %157, %4
  %22 = phi ptr [ %2, %4 ], [ %109, %157 ]
  %23 = phi i32 [ 0, %4 ], [ %110, %157 ]
  %24 = icmp slt i32 %23, %8
  br i1 %24, label %25, label %160

25:                                               ; preds = %21
  %26 = load i32, ptr %12, align 8, !tbaa !68
  %27 = load i32, ptr %13, align 4, !tbaa !67
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, %23
  %30 = icmp slt i32 %29, %8
  %31 = sub nsw i32 %8, %23
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %25
  %35 = sext i32 %27 to i64
  %36 = zext nneg i32 %32 to i64
  br label %37

37:                                               ; preds = %34, %104
  %38 = phi i64 [ 0, %34 ], [ %106, %104 ]
  %39 = phi ptr [ %22, %34 ], [ %105, %104 ]
  br i1 %14, label %40, label %58

40:                                               ; preds = %37
  br i1 %18, label %41, label %70

41:                                               ; preds = %70, %40
  %42 = phi ptr [ undef, %40 ], [ %100, %70 ]
  %43 = phi i64 [ 0, %40 ], [ %101, %70 ]
  %44 = phi ptr [ %39, %40 ], [ %100, %70 ]
  br i1 %20, label %58, label %45

45:                                               ; preds = %41, %45
  %46 = phi i64 [ %55, %45 ], [ %43, %41 ]
  %47 = phi ptr [ %54, %45 ], [ %44, %41 ]
  %48 = phi i64 [ %56, %45 ], [ 0, %41 ]
  %49 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  %51 = getelementptr float, ptr %50, i64 %38
  %52 = getelementptr float, ptr %51, i64 %35
  %53 = load float, ptr %52, align 4, !tbaa !136
  %54 = getelementptr inbounds float, ptr %47, i64 1
  store float %53, ptr %47, align 4, !tbaa !136
  %55 = add nuw nsw i64 %46, 1
  %56 = add i64 %48, 1
  %57 = icmp eq i64 %56, %17
  br i1 %57, label %58, label %45, !llvm.loop !317

58:                                               ; preds = %41, %45, %37
  %59 = phi ptr [ %39, %37 ], [ %42, %41 ], [ %54, %45 ]
  %60 = phi i32 [ 0, %37 ], [ %11, %45 ], [ %11, %41 ]
  %61 = icmp slt i32 %60, %1
  br i1 %61, label %62, label %104

62:                                               ; preds = %58
  %63 = xor i32 %60, -1
  %64 = add i32 %63, %1
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 2
  %67 = add nuw nsw i64 %66, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %59, i8 0, i64 %67, i1 false), !tbaa !136
  %68 = getelementptr i8, ptr %59, i64 4
  %69 = getelementptr i8, ptr %68, i64 %66
  br label %104

70:                                               ; preds = %40, %70
  %71 = phi i64 [ %101, %70 ], [ 0, %40 ]
  %72 = phi ptr [ %100, %70 ], [ %39, %40 ]
  %73 = phi i64 [ %102, %70 ], [ 0, %40 ]
  %74 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %71
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  %76 = getelementptr float, ptr %75, i64 %38
  %77 = getelementptr float, ptr %76, i64 %35
  %78 = load float, ptr %77, align 4, !tbaa !136
  %79 = getelementptr inbounds float, ptr %72, i64 1
  store float %78, ptr %72, align 4, !tbaa !136
  %80 = or disjoint i64 %71, 1
  %81 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !16
  %83 = getelementptr float, ptr %82, i64 %38
  %84 = getelementptr float, ptr %83, i64 %35
  %85 = load float, ptr %84, align 4, !tbaa !136
  %86 = getelementptr inbounds float, ptr %72, i64 2
  store float %85, ptr %79, align 4, !tbaa !136
  %87 = or disjoint i64 %71, 2
  %88 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !16
  %90 = getelementptr float, ptr %89, i64 %38
  %91 = getelementptr float, ptr %90, i64 %35
  %92 = load float, ptr %91, align 4, !tbaa !136
  %93 = getelementptr inbounds float, ptr %72, i64 3
  store float %92, ptr %86, align 4, !tbaa !136
  %94 = or disjoint i64 %71, 3
  %95 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !16
  %97 = getelementptr float, ptr %96, i64 %38
  %98 = getelementptr float, ptr %97, i64 %35
  %99 = load float, ptr %98, align 4, !tbaa !136
  %100 = getelementptr inbounds float, ptr %72, i64 4
  store float %99, ptr %93, align 4, !tbaa !136
  %101 = add nuw nsw i64 %71, 4
  %102 = add i64 %73, 4
  %103 = icmp eq i64 %102, %19
  br i1 %103, label %41, label %70, !llvm.loop !318

104:                                              ; preds = %62, %58
  %105 = phi ptr [ %59, %58 ], [ %69, %62 ]
  %106 = add nuw nsw i64 %38, 1
  %107 = icmp ult i64 %106, %36
  br i1 %107, label %37, label %108, !llvm.loop !319

108:                                              ; preds = %104, %25
  %109 = phi ptr [ %22, %25 ], [ %105, %104 ]
  %110 = add nsw i32 %32, %23
  %111 = add nsw i32 %32, %27
  store i32 %111, ptr %13, align 4, !tbaa !67
  %112 = icmp eq i32 %110, %8
  br i1 %112, label %160, label %113

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %114 = load i8, ptr %15, align 4, !tbaa !69
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %117, align 4
  br label %156

118:                                              ; preds = %113
  %119 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, ptr %12, align 8, !tbaa !68
  store i32 0, ptr %13, align 4, !tbaa !67
  br label %156

122:                                              ; preds = %118
  %123 = load i32, ptr %5, align 4, !tbaa !54
  %124 = load i32, ptr %7, align 4, !tbaa !54
  %125 = load i32, ptr %6, align 4, !tbaa !54
  %126 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %123, i32 noundef %124, i32 noundef %125)
  %127 = freeze i32 %126
  %128 = load i32, ptr %9, align 4, !tbaa !45
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %122
  %131 = sext i32 %124 to i64
  %132 = zext nneg i32 %128 to i64
  %133 = icmp eq i32 %128, 1
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = and i64 %132, 2147483646
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i64 [ 0, %134 ], [ %142, %136 ]
  %138 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %137
  %139 = load <2 x ptr>, ptr %138, align 8, !tbaa !16
  %140 = getelementptr inbounds float, <2 x ptr> %139, i64 %131
  %141 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %137
  store <2 x ptr> %140, ptr %141, align 8, !tbaa !16
  %142 = add nuw i64 %137, 2
  %143 = icmp eq i64 %142, %135
  br i1 %143, label %144, label %136, !llvm.loop !320

144:                                              ; preds = %136
  %145 = icmp eq i64 %135, %132
  br i1 %145, label %157, label %146

146:                                              ; preds = %130, %144
  %147 = phi i64 [ 0, %130 ], [ %135, %144 ]
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i64 [ %154, %148 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !16
  %152 = getelementptr inbounds float, ptr %151, i64 %131
  %153 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %149
  store ptr %152, ptr %153, align 8, !tbaa !16
  %154 = add nuw nsw i64 %149, 1
  %155 = icmp eq i64 %154, %132
  br i1 %155, label %157, label %148, !llvm.loop !321

156:                                              ; preds = %116, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %160

157:                                              ; preds = %148, %144, %122
  store i32 %124, ptr %13, align 4, !tbaa !67
  %158 = add nsw i32 %127, %124
  store i32 %158, ptr %12, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %159 = icmp eq i32 %127, 0
  br i1 %159, label %160, label %21

160:                                              ; preds = %157, %108, %21, %156
  %161 = phi i32 [ %110, %156 ], [ %110, %157 ], [ %8, %108 ], [ %23, %21 ]
  ret i32 %161
}

; Function Attrs: nounwind uwtable
define dso_local i32 @stb_vorbis_get_samples_float(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  %13 = icmp sgt i32 %10, 0
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %15 = zext i32 %10 to i64
  %16 = zext i32 %1 to i64
  %17 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %18 = zext nneg i32 %17 to i64
  %19 = sub nsw i64 %16, %18
  %20 = and i64 %15, 1
  %21 = icmp eq i32 %10, 1
  %22 = and i64 %15, 2147483646
  %23 = icmp eq i64 %20, 0
  %24 = and i64 %19, 7
  %25 = icmp eq i64 %24, 0
  %26 = sub nsw i64 %18, %16
  %27 = icmp ugt i64 %26, -8
  %28 = getelementptr ptr, ptr %2, i64 1
  %29 = getelementptr ptr, ptr %2, i64 2
  %30 = getelementptr ptr, ptr %2, i64 3
  %31 = getelementptr ptr, ptr %2, i64 4
  %32 = getelementptr ptr, ptr %2, i64 5
  %33 = getelementptr ptr, ptr %2, i64 6
  %34 = getelementptr ptr, ptr %2, i64 7
  br label %35

35:                                               ; preds = %182, %4
  %36 = phi i32 [ 0, %4 ], [ %134, %182 ]
  %37 = icmp slt i32 %36, %3
  br i1 %37, label %38, label %185

38:                                               ; preds = %35
  %39 = load i32, ptr %11, align 8, !tbaa !68
  %40 = load i32, ptr %12, align 4, !tbaa !67
  %41 = sub nsw i32 %39, %40
  %42 = add nsw i32 %41, %36
  %43 = icmp slt i32 %42, %3
  %44 = sub nsw i32 %3, %36
  %45 = select i1 %43, i32 %41, i32 %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %133, label %47

47:                                               ; preds = %38
  br i1 %13, label %48, label %63

48:                                               ; preds = %47
  %49 = sext i32 %36 to i64
  %50 = sext i32 %45 to i64
  %51 = shl nsw i64 %50, 2
  br i1 %21, label %52, label %82

52:                                               ; preds = %82, %48
  %53 = phi i64 [ 0, %48 ], [ %102, %82 ]
  br i1 %23, label %63, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds ptr, ptr %2, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds float, ptr %56, i64 %49
  %58 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !16
  %60 = load i32, ptr %12, align 4, !tbaa !67
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %59, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 4 %62, i64 %51, i1 false)
  br label %63

63:                                               ; preds = %54, %52, %47
  %64 = phi i32 [ 0, %47 ], [ %10, %52 ], [ %10, %54 ]
  %65 = icmp slt i32 %64, %1
  br i1 %65, label %66, label %133

66:                                               ; preds = %63
  %67 = sext i32 %36 to i64
  %68 = sext i32 %45 to i64
  %69 = shl nsw i64 %68, 2
  %70 = zext nneg i32 %64 to i64
  br i1 %25, label %80, label %71

71:                                               ; preds = %66, %71
  %72 = phi i64 [ %77, %71 ], [ %70, %66 ]
  %73 = phi i64 [ %78, %71 ], [ 0, %66 ]
  %74 = getelementptr inbounds ptr, ptr %2, i64 %72
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  %76 = getelementptr inbounds float, ptr %75, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %76, i8 0, i64 %69, i1 false)
  %77 = add nuw nsw i64 %72, 1
  %78 = add i64 %73, 1
  %79 = icmp eq i64 %78, %24
  br i1 %79, label %80, label %71, !llvm.loop !322

80:                                               ; preds = %71, %66
  %81 = phi i64 [ %70, %66 ], [ %77, %71 ]
  br i1 %27, label %133, label %105

82:                                               ; preds = %48, %82
  %83 = phi i64 [ %102, %82 ], [ 0, %48 ]
  %84 = phi i64 [ %103, %82 ], [ 0, %48 ]
  %85 = getelementptr inbounds ptr, ptr %2, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !16
  %87 = getelementptr inbounds float, ptr %86, i64 %49
  %88 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %83
  %89 = load ptr, ptr %88, align 8, !tbaa !16
  %90 = load i32, ptr %12, align 4, !tbaa !67
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, ptr %89, i64 %91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %87, ptr align 4 %92, i64 %51, i1 false)
  %93 = or disjoint i64 %83, 1
  %94 = getelementptr inbounds ptr, ptr %2, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !16
  %96 = getelementptr inbounds float, ptr %95, i64 %49
  %97 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %93
  %98 = load ptr, ptr %97, align 8, !tbaa !16
  %99 = load i32, ptr %12, align 4, !tbaa !67
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, ptr %98, i64 %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %96, ptr align 4 %101, i64 %51, i1 false)
  %102 = add nuw nsw i64 %83, 2
  %103 = add i64 %84, 2
  %104 = icmp eq i64 %103, %22
  br i1 %104, label %52, label %82, !llvm.loop !323

105:                                              ; preds = %80, %105
  %106 = phi i64 [ %131, %105 ], [ %81, %80 ]
  %107 = getelementptr inbounds ptr, ptr %2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !16
  %109 = getelementptr inbounds float, ptr %108, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %109, i8 0, i64 %69, i1 false)
  %110 = getelementptr ptr, ptr %28, i64 %106
  %111 = load ptr, ptr %110, align 8, !tbaa !16
  %112 = getelementptr inbounds float, ptr %111, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %112, i8 0, i64 %69, i1 false)
  %113 = getelementptr ptr, ptr %29, i64 %106
  %114 = load ptr, ptr %113, align 8, !tbaa !16
  %115 = getelementptr inbounds float, ptr %114, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %115, i8 0, i64 %69, i1 false)
  %116 = getelementptr ptr, ptr %30, i64 %106
  %117 = load ptr, ptr %116, align 8, !tbaa !16
  %118 = getelementptr inbounds float, ptr %117, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %118, i8 0, i64 %69, i1 false)
  %119 = getelementptr ptr, ptr %31, i64 %106
  %120 = load ptr, ptr %119, align 8, !tbaa !16
  %121 = getelementptr inbounds float, ptr %120, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %121, i8 0, i64 %69, i1 false)
  %122 = getelementptr ptr, ptr %32, i64 %106
  %123 = load ptr, ptr %122, align 8, !tbaa !16
  %124 = getelementptr inbounds float, ptr %123, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %124, i8 0, i64 %69, i1 false)
  %125 = getelementptr ptr, ptr %33, i64 %106
  %126 = load ptr, ptr %125, align 8, !tbaa !16
  %127 = getelementptr inbounds float, ptr %126, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %127, i8 0, i64 %69, i1 false)
  %128 = getelementptr ptr, ptr %34, i64 %106
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = getelementptr inbounds float, ptr %129, i64 %67
  tail call void @llvm.memset.p0.i64(ptr align 4 %130, i8 0, i64 %69, i1 false)
  %131 = add nuw nsw i64 %106, 8
  %132 = icmp eq i64 %131, %16
  br i1 %132, label %133, label %105, !llvm.loop !324

133:                                              ; preds = %80, %105, %63, %38
  %134 = add nsw i32 %45, %36
  %135 = load i32, ptr %12, align 4, !tbaa !67
  %136 = add nsw i32 %135, %45
  store i32 %136, ptr %12, align 4, !tbaa !67
  %137 = icmp eq i32 %134, %3
  br i1 %137, label %185, label %138

138:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %139 = load i8, ptr %14, align 4, !tbaa !69
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 2, ptr %142, align 4
  br label %181

143:                                              ; preds = %138
  %144 = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 0, ptr %11, align 8, !tbaa !68
  store i32 0, ptr %12, align 4, !tbaa !67
  br label %181

147:                                              ; preds = %143
  %148 = load i32, ptr %5, align 4, !tbaa !54
  %149 = load i32, ptr %7, align 4, !tbaa !54
  %150 = load i32, ptr %6, align 4, !tbaa !54
  %151 = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %148, i32 noundef %149, i32 noundef %150)
  %152 = freeze i32 %151
  %153 = load i32, ptr %8, align 4, !tbaa !45
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %147
  %156 = sext i32 %149 to i64
  %157 = zext nneg i32 %153 to i64
  %158 = icmp eq i32 %153, 1
  br i1 %158, label %171, label %159

159:                                              ; preds = %155
  %160 = and i64 %157, 2147483646
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 0, %159 ], [ %167, %161 ]
  %163 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %162
  %164 = load <2 x ptr>, ptr %163, align 8, !tbaa !16
  %165 = getelementptr inbounds float, <2 x ptr> %164, i64 %156
  %166 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %162
  store <2 x ptr> %165, ptr %166, align 8, !tbaa !16
  %167 = add nuw i64 %162, 2
  %168 = icmp eq i64 %167, %160
  br i1 %168, label %169, label %161, !llvm.loop !325

169:                                              ; preds = %161
  %170 = icmp eq i64 %160, %157
  br i1 %170, label %182, label %171

171:                                              ; preds = %155, %169
  %172 = phi i64 [ 0, %155 ], [ %160, %169 ]
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ %179, %173 ], [ %172, %171 ]
  %175 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 40, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !16
  %177 = getelementptr inbounds float, ptr %176, i64 %156
  %178 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 41, i64 %174
  store ptr %177, ptr %178, align 8, !tbaa !16
  %179 = add nuw nsw i64 %174, 1
  %180 = icmp eq i64 %179, %157
  br i1 %180, label %182, label %173, !llvm.loop !326

181:                                              ; preds = %141, %146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  br label %185

182:                                              ; preds = %173, %169, %147
  store i32 %149, ptr %12, align 4, !tbaa !67
  %183 = add nsw i32 %152, %149
  store i32 %183, ptr %11, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  %184 = icmp eq i32 %152, 0
  br i1 %184, label %185, label %35

185:                                              ; preds = %182, %133, %35, %181
  %186 = phi i32 [ %134, %181 ], [ %134, %182 ], [ %3, %133 ], [ %36, %35 ]
  ret i32 %186
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @vorbis_decode_initial(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 72
  store i32 0, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 71
  store i32 0, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 8, !tbaa !94
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %234

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  br label %19

16:                                               ; preds = %53
  %17 = load i32, ptr %9, align 8, !tbaa !94
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %234, !llvm.loop !327

19:                                               ; preds = %12, %16
  %20 = tail call fastcc i32 @maybe_start_packet(ptr noundef nonnull %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %234, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 8, !tbaa !93
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %14, align 4, !tbaa !110
  br label %41

29:                                               ; preds = %25
  store i32 0, ptr %14, align 4, !tbaa !110
  br label %30

30:                                               ; preds = %33, %29
  %31 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %13, align 8, !tbaa !93
  %35 = shl i32 %31, %34
  %36 = load i32, ptr %14, align 4, !tbaa !110
  %37 = add i32 %36, %35
  store i32 %37, ptr %14, align 4, !tbaa !110
  %38 = add nsw i32 %34, 8
  store i32 %38, ptr %13, align 8, !tbaa !93
  %39 = icmp slt i32 %34, -7
  br i1 %39, label %30, label %41, !llvm.loop !111

40:                                               ; preds = %30
  store i32 -1, ptr %13, align 8, !tbaa !93
  br label %56

41:                                               ; preds = %33, %27
  %42 = phi i32 [ %28, %27 ], [ %37, %33 ]
  %43 = phi i32 [ %23, %27 ], [ %38, %33 ]
  %44 = and i32 %42, 1
  %45 = lshr i32 %42, 1
  store i32 %45, ptr %14, align 4, !tbaa !110
  %46 = add nsw i32 %43, -1
  store i32 %46, ptr %13, align 8, !tbaa !93
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i8, ptr %15, align 4, !tbaa !69
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 35, ptr %52, align 4
  br label %234

53:                                               ; preds = %48, %53
  %54 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  store i32 0, ptr %13, align 8, !tbaa !93
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %16, label %53, !llvm.loop !327

56:                                               ; preds = %22, %41, %40
  %57 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !126
  %63 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %64 = load i32, ptr %63, align 4, !tbaa !127
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 3143, ptr noundef nonnull @__PRETTY_FUNCTION__.vorbis_decode_initial) #28
  unreachable

67:                                               ; preds = %60, %56
  %68 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 37
  %69 = load i32, ptr %68, align 8, !tbaa !247
  %70 = add nsw i32 %69, -1
  %71 = icmp slt i32 %69, 1
  br i1 %71, label %131, label %72

72:                                               ; preds = %67
  %73 = icmp ult i32 %69, 16385
  br i1 %73, label %74, label %97

74:                                               ; preds = %72
  %75 = icmp ult i32 %69, 17
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = zext nneg i32 %70 to i64
  %78 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !75
  %80 = sext i8 %79 to i32
  br label %131

81:                                               ; preds = %74
  %82 = icmp ult i32 %69, 513
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  %84 = lshr i32 %70, 5
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !75
  %88 = sext i8 %87 to i32
  %89 = add nsw i32 %88, 5
  br label %131

90:                                               ; preds = %81
  %91 = lshr i32 %70, 10
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !75
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, 10
  br label %131

97:                                               ; preds = %72
  %98 = icmp ult i32 %69, 16777217
  br i1 %98, label %99, label %115

99:                                               ; preds = %97
  %100 = icmp ult i32 %69, 524289
  br i1 %100, label %101, label %108

101:                                              ; preds = %99
  %102 = lshr i32 %70, 15
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !75
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %106, 15
  br label %131

108:                                              ; preds = %99
  %109 = lshr i32 %70, 20
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !75
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 %113, 20
  br label %131

115:                                              ; preds = %97
  %116 = icmp ult i32 %69, 536870913
  br i1 %116, label %117, label %124

117:                                              ; preds = %115
  %118 = lshr i32 %70, 25
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !75
  %122 = sext i8 %121 to i32
  %123 = add nsw i32 %122, 25
  br label %131

124:                                              ; preds = %115
  %125 = lshr i32 %70, 30
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !75
  %129 = sext i8 %128 to i32
  %130 = add nsw i32 %129, 30
  br label %131

131:                                              ; preds = %67, %76, %83, %90, %101, %108, %117, %124
  %132 = phi i32 [ %80, %76 ], [ %89, %83 ], [ %96, %90 ], [ %107, %101 ], [ %114, %108 ], [ %123, %117 ], [ %130, %124 ], [ 0, %67 ]
  %133 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %132)
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %234, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %68, align 8, !tbaa !247
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %234

138:                                              ; preds = %135
  store i32 %133, ptr %5, align 4, !tbaa !54
  %139 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 38
  %140 = sext i32 %133 to i64
  %141 = getelementptr inbounds %struct.Mode, ptr %139, i64 %140
  %142 = load i8, ptr %141, align 2, !tbaa !104
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %191, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 26
  %146 = load i32, ptr %145, align 4, !tbaa !55
  %147 = load i32, ptr %13, align 8, !tbaa !93
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %195, label %149

149:                                              ; preds = %144
  %150 = icmp eq i32 %147, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %14, align 4, !tbaa !110
  br label %165

153:                                              ; preds = %149
  store i32 0, ptr %14, align 4, !tbaa !110
  br label %154

154:                                              ; preds = %157, %153
  %155 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %164, label %157

157:                                              ; preds = %154
  %158 = load i32, ptr %13, align 8, !tbaa !93
  %159 = shl i32 %155, %158
  %160 = load i32, ptr %14, align 4, !tbaa !110
  %161 = add i32 %160, %159
  store i32 %161, ptr %14, align 4, !tbaa !110
  %162 = add nsw i32 %158, 8
  store i32 %162, ptr %13, align 8, !tbaa !93
  %163 = icmp slt i32 %158, -7
  br i1 %163, label %154, label %165, !llvm.loop !111

164:                                              ; preds = %154
  store i32 -1, ptr %13, align 8, !tbaa !93
  br label %195

165:                                              ; preds = %157, %151
  %166 = phi i32 [ %152, %151 ], [ %161, %157 ]
  %167 = phi i32 [ %147, %151 ], [ %162, %157 ]
  %168 = and i32 %166, 1
  %169 = lshr i32 %166, 1
  %170 = add nsw i32 %167, -1
  store i32 %170, ptr %13, align 8, !tbaa !93
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  store i32 0, ptr %14, align 4, !tbaa !110
  br label %173

173:                                              ; preds = %176, %172
  %174 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %190, label %176

176:                                              ; preds = %173
  %177 = load i32, ptr %13, align 8, !tbaa !93
  %178 = shl i32 %174, %177
  %179 = load i32, ptr %14, align 4, !tbaa !110
  %180 = add i32 %179, %178
  store i32 %180, ptr %14, align 4, !tbaa !110
  %181 = add nsw i32 %177, 8
  store i32 %181, ptr %13, align 8, !tbaa !93
  %182 = icmp slt i32 %177, -7
  br i1 %182, label %173, label %183, !llvm.loop !111

183:                                              ; preds = %176, %165
  %184 = phi i32 [ %169, %165 ], [ %180, %176 ]
  %185 = phi i32 [ %170, %165 ], [ %181, %176 ]
  %186 = and i32 %184, 1
  %187 = lshr i32 %184, 1
  store i32 %187, ptr %14, align 4, !tbaa !110
  %188 = add nsw i32 %185, -1
  store i32 %188, ptr %13, align 8, !tbaa !93
  %189 = icmp ne i32 %186, 0
  br label %195

190:                                              ; preds = %173
  store i32 -1, ptr %13, align 8, !tbaa !93
  br label %195

191:                                              ; preds = %138
  %192 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  %193 = load i32, ptr %192, align 8, !tbaa !155
  %194 = ashr i32 %193, 1
  br label %211

195:                                              ; preds = %190, %183, %144, %164
  %196 = phi i32 [ %168, %183 ], [ %168, %190 ], [ 0, %144 ], [ 0, %164 ]
  %197 = phi i1 [ %189, %183 ], [ false, %190 ], [ false, %144 ], [ false, %164 ]
  %198 = icmp ne i32 %196, 0
  %199 = load i8, ptr %141, align 2, !tbaa !104
  %200 = icmp eq i8 %199, 0
  %201 = ashr i32 %146, 1
  %202 = select i1 %200, i1 true, i1 %198
  br i1 %202, label %211, label %203

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  %205 = load i32, ptr %204, align 8, !tbaa !155
  %206 = sub nsw i32 %146, %205
  %207 = ashr i32 %206, 2
  store i32 %207, ptr %1, align 4, !tbaa !54
  %208 = load i32, ptr %204, align 8, !tbaa !155
  %209 = add nsw i32 %208, %146
  %210 = ashr i32 %209, 2
  br label %217

211:                                              ; preds = %191, %195
  %212 = phi i32 [ %194, %191 ], [ %201, %195 ]
  %213 = phi i1 [ false, %191 ], [ %197, %195 ]
  %214 = phi i32 [ %193, %191 ], [ %146, %195 ]
  %215 = phi i1 [ true, %191 ], [ %200, %195 ]
  store i32 0, ptr %1, align 4, !tbaa !54
  %216 = select i1 %215, i1 true, i1 %213
  br label %217

217:                                              ; preds = %211, %203
  %218 = phi i32 [ %201, %203 ], [ %212, %211 ]
  %219 = phi i32 [ %146, %203 ], [ %214, %211 ]
  %220 = phi i1 [ %197, %203 ], [ %216, %211 ]
  %221 = phi i32 [ %210, %203 ], [ %212, %211 ]
  store i32 %221, ptr %2, align 4, !tbaa !54
  br i1 %220, label %231, label %222

222:                                              ; preds = %217
  %223 = mul nsw i32 %219, 3
  %224 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 25
  %225 = load i32, ptr %224, align 8, !tbaa !155
  %226 = sub nsw i32 %223, %225
  %227 = ashr i32 %226, 2
  store i32 %227, ptr %3, align 4, !tbaa !54
  %228 = load i32, ptr %224, align 8, !tbaa !155
  %229 = add nsw i32 %228, %223
  %230 = ashr i32 %229, 2
  br label %232

231:                                              ; preds = %217
  store i32 %218, ptr %3, align 4, !tbaa !54
  br label %232

232:                                              ; preds = %231, %222
  %233 = phi i32 [ %230, %222 ], [ %219, %231 ]
  store i32 %233, ptr %4, align 4, !tbaa !54
  br label %234

234:                                              ; preds = %16, %19, %6, %135, %131, %232, %51
  %235 = phi i32 [ 0, %51 ], [ 1, %232 ], [ 0, %131 ], [ 0, %135 ], [ 0, %6 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %235
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_bits(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = icmp slt i32 %4, %1
  br i1 %7, label %8, label %60

8:                                                ; preds = %6
  %9 = icmp ugt i32 %1, 24
  br i1 %9, label %10, label %44

10:                                               ; preds = %8
  %11 = icmp ult i32 %4, 24
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  store i32 0, ptr %15, align 4, !tbaa !110
  br label %16

16:                                               ; preds = %12, %14
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  br label %18

18:                                               ; preds = %16, %21
  %19 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 8, !tbaa !93
  %23 = shl i32 %19, %22
  %24 = load i32, ptr %17, align 4, !tbaa !110
  %25 = add i32 %24, %23
  store i32 %25, ptr %17, align 4, !tbaa !110
  %26 = add nsw i32 %22, 8
  store i32 %26, ptr %3, align 8, !tbaa !93
  %27 = icmp slt i32 %22, 16
  br i1 %27, label %18, label %28, !llvm.loop !111

28:                                               ; preds = %21, %10
  %29 = phi i32 [ %4, %10 ], [ %26, %21 ]
  %30 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %31 = load i32, ptr %30, align 4, !tbaa !110
  %32 = and i32 %31, 16777215
  %33 = lshr i32 %31, 24
  store i32 %33, ptr %30, align 4, !tbaa !110
  %34 = add nsw i32 %29, -24
  br label %37

35:                                               ; preds = %72, %2, %64, %37
  %36 = phi i32 [ %43, %37 ], [ %69, %64 ], [ 0, %2 ], [ 0, %72 ]
  ret i32 %36

37:                                               ; preds = %18, %28
  %38 = phi i32 [ %34, %28 ], [ -1, %18 ]
  %39 = phi i32 [ %32, %28 ], [ 0, %18 ]
  store i32 %38, ptr %3, align 8, !tbaa !93
  %40 = add nsw i32 %1, -24
  %41 = tail call fastcc i32 @get_bits(ptr noundef nonnull %0, i32 noundef %40)
  %42 = shl i32 %41, 24
  %43 = or disjoint i32 %42, %39
  br label %35

44:                                               ; preds = %8
  %45 = icmp eq i32 %4, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  store i32 0, ptr %47, align 4, !tbaa !110
  br label %48

48:                                               ; preds = %44, %46
  %49 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  br label %50

50:                                               ; preds = %48, %53
  %51 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 8, !tbaa !93
  %55 = shl i32 %51, %54
  %56 = load i32, ptr %49, align 4, !tbaa !110
  %57 = add i32 %56, %55
  store i32 %57, ptr %49, align 4, !tbaa !110
  %58 = add nsw i32 %54, 8
  store i32 %58, ptr %3, align 8, !tbaa !93
  %59 = icmp slt i32 %58, %1
  br i1 %59, label %50, label %60, !llvm.loop !111

60:                                               ; preds = %53, %6
  %61 = phi i32 [ %4, %6 ], [ %58, %53 ]
  %62 = icmp slt i32 %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1623, ptr noundef nonnull @__PRETTY_FUNCTION__.get_bits) #28
  unreachable

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %66 = load i32, ptr %65, align 4, !tbaa !110
  %67 = shl nsw i32 -1, %1
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = lshr i32 %66, %1
  store i32 %70, ptr %65, align 4, !tbaa !110
  %71 = sub nsw i32 %61, %1
  store i32 %71, ptr %3, align 8, !tbaa !93
  br label %35

72:                                               ; preds = %50
  store i32 -1, ptr %3, align 8, !tbaa !93
  br label %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @ilog(i32 noundef %0) unnamed_addr #15 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %62, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 16384
  br i1 %4, label %5, label %28

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 16
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !75
  %11 = sext i8 %10 to i32
  br label %62

12:                                               ; preds = %5
  %13 = icmp ult i32 %0, 512
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = lshr i32 %0, 5
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !75
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %19, 5
  br label %62

21:                                               ; preds = %12
  %22 = lshr i32 %0, 10
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !75
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, 10
  br label %62

28:                                               ; preds = %3
  %29 = icmp ult i32 %0, 16777216
  br i1 %29, label %30, label %46

30:                                               ; preds = %28
  %31 = icmp ult i32 %0, 524288
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = lshr i32 %0, 15
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !75
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, 15
  br label %62

39:                                               ; preds = %30
  %40 = lshr i32 %0, 20
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !75
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, 20
  br label %62

46:                                               ; preds = %28
  %47 = icmp ult i32 %0, 536870912
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = lshr i32 %0, 25
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !75
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, 25
  br label %62

55:                                               ; preds = %46
  %56 = lshr i32 %0, 30
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !75
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, 30
  br label %62

62:                                               ; preds = %1, %55, %48, %39, %32, %21, %14, %7
  %63 = phi i32 [ %11, %7 ], [ %20, %14 ], [ %27, %21 ], [ %38, %32 ], [ %45, %39 ], [ %54, %48 ], [ %61, %55 ], [ 0, %1 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get8_packet_raw(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %3 = load i8, ptr %2, align 4, !tbaa !116
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %7 = load i32, ptr %6, align 4, !tbaa !115
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %15 = load i32, ptr %14, align 8, !tbaa !99
  %16 = add nsw i32 %15, -1
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 61
  store i32 %16, ptr %17, align 8, !tbaa !151
  %18 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, ptr %6, align 4, !tbaa !115
  br label %80

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %23 = load i8, ptr %22, align 1, !tbaa !153
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %10, align 8, !tbaa !86
  br label %30

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 32, ptr %29, align 4
  br label %80

30:                                               ; preds = %26, %9
  %31 = phi i32 [ %27, %26 ], [ %11, %9 ]
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %10, align 8, !tbaa !86
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !75
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  store i32 1, ptr %6, align 4, !tbaa !115
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 61
  store i32 %31, ptr %38, align 8, !tbaa !151
  br label %39

39:                                               ; preds = %37, %30
  %40 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = icmp slt i32 %32, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 -1, ptr %10, align 8, !tbaa !86
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i8, ptr %2, align 4, !tbaa !116
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1555, ptr noundef nonnull @__PRETTY_FUNCTION__.next_segment) #28
  unreachable

48:                                               ; preds = %44
  store i8 %35, ptr %2, align 4, !tbaa !116
  %49 = icmp eq i8 %35, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %48, %1
  %51 = phi i8 [ %3, %1 ], [ %35, %48 ]
  %52 = add i8 %51, -1
  store i8 %52, ptr %2, align 4, !tbaa !116
  %53 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 64
  %54 = load i32, ptr %53, align 4, !tbaa !268
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 4, !tbaa !268
  %56 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !91
  %62 = icmp ult ptr %57, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %64, align 8, !tbaa !94
  br label %77

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %66, ptr %56, align 8, !tbaa !90
  %67 = load i8, ptr %57, align 1, !tbaa !75
  br label %77

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = tail call i32 @fgetc(ptr noundef %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %74, align 8, !tbaa !94
  br label %77

75:                                               ; preds = %68
  %76 = trunc i32 %71 to i8
  br label %77

77:                                               ; preds = %63, %65, %73, %75
  %78 = phi i8 [ 0, %63 ], [ %67, %65 ], [ 0, %73 ], [ %76, %75 ]
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %20, %28, %48, %5, %77
  %81 = phi i32 [ %79, %77 ], [ -1, %5 ], [ -1, %48 ], [ -1, %28 ], [ -1, %20 ]
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @next_segment(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %11 = load i32, ptr %10, align 8, !tbaa !99
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 61
  store i32 %12, ptr %13, align 8, !tbaa !151
  %14 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, ptr %2, align 4, !tbaa !115
  br label %47

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  %19 = load i8, ptr %18, align 1, !tbaa !153
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %6, align 8, !tbaa !86
  br label %26

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 32, ptr %25, align 4
  br label %47

26:                                               ; preds = %22, %5
  %27 = phi i32 [ %23, %22 ], [ %7, %5 ]
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 8, !tbaa !86
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !75
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %31, -1
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  store i32 1, ptr %2, align 4, !tbaa !115
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 61
  store i32 %27, ptr %35, align 8, !tbaa !151
  br label %36

36:                                               ; preds = %34, %26
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  %38 = load i32, ptr %37, align 8, !tbaa !99
  %39 = icmp slt i32 %28, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, ptr %6, align 8, !tbaa !86
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %43 = load i8, ptr %42, align 4, !tbaa !116
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1555, ptr noundef nonnull @__PRETTY_FUNCTION__.next_segment) #28
  unreachable

46:                                               ; preds = %41
  store i8 %31, ptr %42, align 4, !tbaa !116
  br label %47

47:                                               ; preds = %1, %46, %24, %16
  %48 = phi i32 [ %32, %46 ], [ 0, %24 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %48
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc zeroext i8 @get8(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp ult ptr %3, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %10, align 8, !tbaa !94
  br label %23

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !90
  %13 = load i8, ptr %3, align 1, !tbaa !75
  br label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = tail call i32 @fgetc(ptr noundef %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %20, align 8, !tbaa !94
  br label %23

21:                                               ; preds = %14
  %22 = trunc i32 %17 to i8
  br label %23

23:                                               ; preds = %19, %21, %11, %9
  %24 = phi i8 [ 0, %9 ], [ %13, %11 ], [ 0, %19 ], [ %22, %21 ]
  ret i8 %24
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @start_page(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = icmp ult ptr %3, %7
  br i1 %8, label %9, label %83

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !90
  %11 = load i8, ptr %3, align 1, !tbaa !75
  br label %19

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = tail call i32 @fgetc(ptr noundef %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %83, label %17

17:                                               ; preds = %12
  %18 = trunc i32 %15 to i8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i8 [ %11, %9 ], [ %18, %17 ]
  %21 = icmp eq i8 %20, 79
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = icmp ult ptr %23, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %30, ptr %2, align 8, !tbaa !90
  %31 = load i8, ptr %23, align 1, !tbaa !75
  br label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = tail call i32 @fgetc(ptr noundef %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %83, label %37

37:                                               ; preds = %32
  %38 = trunc i32 %35 to i8
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i8 [ %31, %29 ], [ %38, %37 ]
  %41 = icmp eq i8 %40, 103
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 8, !tbaa !90
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = icmp ult ptr %43, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %50, ptr %2, align 8, !tbaa !90
  %51 = load i8, ptr %43, align 1, !tbaa !75
  br label %59

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  %55 = tail call i32 @fgetc(ptr noundef %54)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %83, label %57

57:                                               ; preds = %52
  %58 = trunc i32 %55 to i8
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi i8 [ %51, %49 ], [ %58, %57 ]
  %61 = icmp eq i8 %60, 103
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load ptr, ptr %2, align 8, !tbaa !90
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = icmp ult ptr %63, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %70, ptr %2, align 8, !tbaa !90
  %71 = load i8, ptr %63, align 1, !tbaa !75
  %72 = freeze i8 %71
  br label %80

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = tail call i32 @fgetc(ptr noundef %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = trunc i32 %76 to i8
  br label %80

80:                                               ; preds = %69, %78
  %81 = phi i8 [ %72, %69 ], [ %79, %78 ]
  %82 = icmp eq i8 %81, 83
  br i1 %82, label %87, label %85

83:                                               ; preds = %73, %65, %52, %45, %32, %25, %12, %5
  %84 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %84, align 8, !tbaa !94
  br label %85

85:                                               ; preds = %83, %59, %39, %19, %80
  %86 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 30, ptr %86, align 4
  br label %89

87:                                               ; preds = %80
  %88 = tail call fastcc i32 @start_page_no_capturepattern(ptr noundef nonnull %0), !range !103
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %88, %87 ], [ 0, %85 ]
  ret i32 %90
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @start_page_no_capturepattern(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 58
  %3 = load i8, ptr %2, align 1, !tbaa !65
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %7 = load i8, ptr %6, align 4, !tbaa !69
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !255
  %16 = ptrtoint ptr %11 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  br label %28

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call i64 @ftell(ptr noundef %22)
  %24 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !256
  %26 = trunc i64 %23 to i32
  %27 = sub i32 %26, %25
  br label %28

28:                                               ; preds = %13, %20
  %29 = phi i32 [ %19, %13 ], [ %27, %20 ]
  %30 = add i32 %29, -4
  %31 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 17
  store i32 %30, ptr %31, align 4, !tbaa !328
  br label %32

32:                                               ; preds = %28, %5, %1
  %33 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = icmp ult ptr %34, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %41, ptr %33, align 8, !tbaa !90
  %42 = load i8, ptr %34, align 1, !tbaa !75
  br label %50

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = tail call i32 @fgetc(ptr noundef %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = trunc i32 %46 to i8
  br label %50

50:                                               ; preds = %40, %48
  %51 = phi i8 [ %42, %40 ], [ %49, %48 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 31, ptr %54, align 4
  br label %213

55:                                               ; preds = %43, %36
  %56 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %56, align 8, !tbaa !94
  br label %57

57:                                               ; preds = %55, %50
  %58 = load ptr, ptr %33, align 8, !tbaa !90
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  %63 = icmp ult ptr %58, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %65, align 8, !tbaa !94
  br label %78

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %67, ptr %33, align 8, !tbaa !90
  %68 = load i8, ptr %58, align 1, !tbaa !75
  br label %78

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = tail call i32 @fgetc(ptr noundef %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %75, align 8, !tbaa !94
  br label %78

76:                                               ; preds = %69
  %77 = trunc i32 %72 to i8
  br label %78

78:                                               ; preds = %64, %66, %74, %76
  %79 = phi i8 [ 0, %64 ], [ %68, %66 ], [ 0, %74 ], [ %77, %76 ]
  %80 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  store i8 %79, ptr %80, align 1, !tbaa !153
  %81 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %82 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %83 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %84 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %85 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 53
  store i32 %84, ptr %85, align 4, !tbaa !329
  %86 = tail call fastcc i32 @get32(ptr noundef nonnull %0)
  %87 = load ptr, ptr %33, align 8, !tbaa !90
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  %92 = icmp ult ptr %87, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %94, align 8, !tbaa !94
  br label %111

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %96, ptr %33, align 8, !tbaa !90
  %97 = load i8, ptr %87, align 1, !tbaa !75
  %98 = zext i8 %97 to i32
  %99 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  store i32 %98, ptr %99, align 8, !tbaa !99
  %100 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55
  %101 = zext i8 %97 to i64
  br label %121

102:                                              ; preds = %78
  %103 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !48
  %105 = tail call i32 @fgetc(ptr noundef %104)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %108, align 8, !tbaa !94
  br label %111

109:                                              ; preds = %102
  %110 = and i32 %105, 255
  br label %111

111:                                              ; preds = %93, %107, %109
  %112 = phi i32 [ %110, %109 ], [ 0, %107 ], [ 0, %93 ]
  %113 = load ptr, ptr %33, align 8, !tbaa !90
  %114 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 54
  store i32 %112, ptr %114, align 8, !tbaa !99
  %115 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55
  %116 = icmp eq ptr %113, null
  %117 = zext nneg i32 %112 to i64
  br i1 %116, label %130, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %120 = load ptr, ptr %119, align 8, !tbaa !91
  br label %121

121:                                              ; preds = %118, %95
  %122 = phi ptr [ %91, %95 ], [ %120, %118 ]
  %123 = phi i64 [ %101, %95 ], [ %117, %118 ]
  %124 = phi ptr [ %100, %95 ], [ %115, %118 ]
  %125 = phi ptr [ %99, %95 ], [ %114, %118 ]
  %126 = phi ptr [ %96, %95 ], [ %113, %118 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 %123
  %128 = icmp ugt ptr %127, %122
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %124, ptr nonnull align 1 %126, i64 %123, i1 false)
  store ptr %127, ptr %33, align 8, !tbaa !90
  br label %138

130:                                              ; preds = %111
  %131 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !48
  %133 = tail call i64 @fread(ptr noundef nonnull %115, i64 noundef %117, i64 noundef 1, ptr noundef %132)
  %134 = icmp eq i64 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %130, %121
  %136 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %136, align 8, !tbaa !94
  %137 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 10, ptr %137, align 4
  br label %213

138:                                              ; preds = %130, %129
  %139 = phi ptr [ %125, %129 ], [ %114, %130 ]
  %140 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 65
  store i32 -2, ptr %140, align 8, !tbaa !152
  %141 = icmp ne i32 %81, -1
  %142 = icmp ne i32 %82, -1
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load i32, ptr %139, align 8, !tbaa !99
  %146 = zext i32 %145 to i64
  br label %147

147:                                              ; preds = %151, %144
  %148 = phi i64 [ %152, %151 ], [ %146, %144 ]
  %149 = trunc i64 %148 to i32
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = add nsw i64 %148, -1
  %153 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !75
  %155 = icmp eq i8 %154, -1
  br i1 %155, label %147, label %156, !llvm.loop !330

156:                                              ; preds = %151
  %157 = trunc i64 %152 to i32
  store i32 %157, ptr %140, align 8, !tbaa !152
  %158 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 66
  store i32 %81, ptr %158, align 4, !tbaa !154
  br label %159

159:                                              ; preds = %147, %156, %138
  %160 = load i8, ptr %2, align 1, !tbaa !65
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %211, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %139, align 8, !tbaa !99
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %162
  %166 = zext nneg i32 %163 to i64
  %167 = icmp ult i32 %163, 8
  br i1 %167, label %188, label %168

168:                                              ; preds = %165
  %169 = and i64 %166, 2147483640
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i64 [ 0, %168 ], [ %182, %170 ]
  %172 = phi <4 x i32> [ zeroinitializer, %168 ], [ %180, %170 ]
  %173 = phi <4 x i32> [ zeroinitializer, %168 ], [ %181, %170 ]
  %174 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %171
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  %176 = load <4 x i8>, ptr %174, align 1, !tbaa !75
  %177 = load <4 x i8>, ptr %175, align 1, !tbaa !75
  %178 = zext <4 x i8> %176 to <4 x i32>
  %179 = zext <4 x i8> %177 to <4 x i32>
  %180 = add <4 x i32> %172, %178
  %181 = add <4 x i32> %173, %179
  %182 = add nuw i64 %171, 8
  %183 = icmp eq i64 %182, %169
  br i1 %183, label %184, label %170, !llvm.loop !331

184:                                              ; preds = %170
  %185 = add <4 x i32> %181, %180
  %186 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %185)
  %187 = icmp eq i64 %169, %166
  br i1 %187, label %200, label %188

188:                                              ; preds = %165, %184
  %189 = phi i64 [ 0, %165 ], [ %169, %184 ]
  %190 = phi i32 [ 0, %165 ], [ %186, %184 ]
  br label %191

191:                                              ; preds = %188, %191
  %192 = phi i64 [ %198, %191 ], [ %189, %188 ]
  %193 = phi i32 [ %197, %191 ], [ %190, %188 ]
  %194 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 55, i64 %192
  %195 = load i8, ptr %194, align 1, !tbaa !75
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %193, %196
  %198 = add nuw nsw i64 %192, 1
  %199 = icmp eq i64 %198, %166
  br i1 %199, label %200, label %191, !llvm.loop !332

200:                                              ; preds = %191, %184
  %201 = phi i32 [ %186, %184 ], [ %197, %191 ]
  %202 = add nuw i32 %201, 27
  br label %203

203:                                              ; preds = %200, %162
  %204 = phi i32 [ 27, %162 ], [ %202, %200 ]
  %205 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 17
  %206 = load i32, ptr %205, align 4, !tbaa !328
  %207 = add i32 %204, %163
  %208 = add i32 %207, %206
  %209 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 17, i32 1
  store i32 %208, ptr %209, align 4, !tbaa !333
  %210 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 17, i32 2
  store i32 %81, ptr %210, align 4, !tbaa !334
  br label %211

211:                                              ; preds = %203, %159
  %212 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  store i32 0, ptr %212, align 8, !tbaa !86
  br label %213

213:                                              ; preds = %211, %135, %53
  %214 = phi i32 [ 0, %53 ], [ 1, %211 ], [ 0, %135 ]
  ret i32 %214
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codebook_decode_scalar_raw(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp slt i32 %4, 25
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  store i32 0, ptr %9, align 4, !tbaa !110
  br label %10

10:                                               ; preds = %8, %6
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  br label %14

14:                                               ; preds = %23, %10
  %15 = load i32, ptr %12, align 4, !tbaa !115
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %11, align 4, !tbaa !116
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17, %14
  %21 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 8, !tbaa !93
  %25 = shl i32 %21, %24
  %26 = load i32, ptr %13, align 4, !tbaa !110
  %27 = add i32 %26, %25
  store i32 %27, ptr %13, align 4, !tbaa !110
  %28 = add nsw i32 %24, 8
  store i32 %28, ptr %3, align 8, !tbaa !93
  %29 = icmp slt i32 %24, 17
  br i1 %29, label %14, label %30, !llvm.loop !117

30:                                               ; preds = %17, %20, %23, %2
  %31 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %135, label %46

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !25
  %41 = icmp sgt i32 %40, 8
  br i1 %41, label %42, label %91

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %91, label %46

46:                                               ; preds = %34, %42
  %47 = phi ptr [ %44, %42 ], [ %36, %34 ]
  %48 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %49 = load i32, ptr %48, align 4, !tbaa !110
  %50 = tail call noundef i32 @llvm.bitreverse.i32(i32 %49)
  %51 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 15
  %52 = load i32, ptr %51, align 8, !tbaa !188
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %46, %54
  %55 = phi i32 [ %65, %54 ], [ %52, %46 ]
  %56 = phi i32 [ %64, %54 ], [ 0, %46 ]
  %57 = lshr i32 %55, 1
  %58 = add nsw i32 %57, %56
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %47, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !54
  %62 = icmp ugt i32 %61, %50
  %63 = sub nsw i32 %55, %57
  %64 = select i1 %62, i32 %56, i32 %58
  %65 = select i1 %62, i32 %57, i32 %63
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %54, label %67, !llvm.loop !335

67:                                               ; preds = %54, %46
  %68 = phi i32 [ 0, %46 ], [ %64, %54 ]
  %69 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 8
  %70 = load i8, ptr %69, align 1, !tbaa !118
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 14
  %74 = load ptr, ptr %73, align 8, !tbaa !36
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !54
  br label %78

78:                                               ; preds = %72, %67
  %79 = phi i32 [ %68, %67 ], [ %77, %72 ]
  %80 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !32
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds i8, ptr %81, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !75
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %3, align 8, !tbaa !93
  %87 = icmp slt i32 %86, %85
  br i1 %87, label %132, label %88

88:                                               ; preds = %78
  %89 = lshr i32 %49, %85
  store i32 %89, ptr %48, align 4, !tbaa !110
  %90 = sub nsw i32 %86, %85
  br label %132

91:                                               ; preds = %38, %42
  %92 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 8
  %93 = load i8, ptr %92, align 1, !tbaa !118
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = icmp sgt i32 %40, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !32
  %100 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %101 = zext nneg i32 %40 to i64
  br label %103

102:                                              ; preds = %91
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1696, ptr noundef nonnull @__PRETTY_FUNCTION__.codebook_decode_scalar_raw) #28
  unreachable

103:                                              ; preds = %97, %127
  %104 = phi i64 [ 0, %97 ], [ %128, %127 ]
  %105 = getelementptr inbounds i8, ptr %99, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !75
  %107 = icmp eq i8 %106, -1
  br i1 %107, label %127, label %108

108:                                              ; preds = %103
  %109 = zext i8 %106 to i32
  %110 = getelementptr inbounds i32, ptr %32, i64 %104
  %111 = load i32, ptr %110, align 4, !tbaa !54
  %112 = load i32, ptr %100, align 4, !tbaa !110
  %113 = shl nsw i32 -1, %109
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = icmp eq i32 %111, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %108
  %118 = load i32, ptr %3, align 8, !tbaa !93
  %119 = icmp slt i32 %118, %109
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %99, i64 %104
  %122 = trunc i64 %104 to i32
  %123 = lshr i32 %112, %109
  store i32 %123, ptr %100, align 4, !tbaa !110
  %124 = load i8, ptr %121, align 1, !tbaa !75
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %118, %125
  br label %132

127:                                              ; preds = %108, %103
  %128 = add nuw nsw i64 %104, 1
  %129 = icmp eq i64 %128, %101
  br i1 %129, label %130, label %103, !llvm.loop !336

130:                                              ; preds = %127, %95
  %131 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 21, ptr %131, align 4
  br label %132

132:                                              ; preds = %117, %88, %78, %120, %130
  %133 = phi i32 [ 0, %130 ], [ %126, %120 ], [ %90, %88 ], [ 0, %78 ], [ 0, %117 ]
  %134 = phi i32 [ -1, %130 ], [ %122, %120 ], [ %79, %88 ], [ -1, %78 ], [ -1, %117 ]
  store i32 %133, ptr %3, align 8, !tbaa !93
  br label %135

135:                                              ; preds = %132, %34
  %136 = phi i32 [ -1, %34 ], [ %134, %132 ]
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_residue(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = zext nneg i32 %4 to i64
  %14 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 33, i64 %13
  %16 = load i16, ptr %15, align 2, !tbaa !109
  %17 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !24
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 28
  %20 = load ptr, ptr %19, align 8, !tbaa !23
  %21 = zext i8 %18 to i64
  %22 = getelementptr inbounds %struct.Codebook, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 8, !tbaa !182
  %24 = icmp eq i16 %16, 2
  %25 = zext i1 %24 to i32
  %26 = shl nsw i32 %3, %25
  %27 = load i32, ptr %14, align 8, !tbaa !231
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %26)
  %29 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !232
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %26)
  %32 = sub i32 %31, %28
  %33 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !233
  %35 = udiv i32 %32, %34
  %36 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %37 = load i32, ptr %36, align 4, !tbaa !127
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !45
  br i1 %40, label %54, label %43

43:                                               ; preds = %6
  %44 = shl i32 %35, 3
  %45 = add i32 %44, 8
  %46 = mul i32 %42, %45
  %47 = sub nsw i32 %37, %46
  %48 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %49 = load i32, ptr %48, align 8, !tbaa !175
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %43
  store i32 %47, ptr %36, align 4, !tbaa !127
  %52 = sext i32 %47 to i64
  %53 = getelementptr inbounds i8, ptr %39, i64 %52
  br label %61

54:                                               ; preds = %6
  %55 = sext i32 %42 to i64
  %56 = sext i32 %35 to i64
  %57 = shl nsw i64 %56, 3
  %58 = add nsw i64 %57, 8
  %59 = mul i64 %58, %55
  %60 = alloca i8, i64 %59, align 16
  br label %61

61:                                               ; preds = %51, %43, %54
  %62 = phi ptr [ %60, %54 ], [ %53, %51 ], [ null, %43 ]
  %63 = icmp sgt i32 %42, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %61
  %65 = shl i32 %35, 3
  %66 = zext nneg i32 %42 to i64
  %67 = getelementptr inbounds ptr, ptr %62, i64 %66
  %68 = sext i32 %65 to i64
  %69 = and i64 %66, 7
  %70 = icmp ult i32 %42, 8
  br i1 %70, label %103, label %71

71:                                               ; preds = %64
  %72 = and i64 %66, 2147483640
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i64 [ 0, %71 ], [ %100, %73 ]
  %75 = phi ptr [ %67, %71 ], [ %99, %73 ]
  %76 = phi i64 [ 0, %71 ], [ %101, %73 ]
  %77 = getelementptr inbounds ptr, ptr %62, i64 %74
  store ptr %75, ptr %77, align 8, !tbaa !16
  %78 = getelementptr inbounds i8, ptr %75, i64 %68
  %79 = or disjoint i64 %74, 1
  %80 = getelementptr inbounds ptr, ptr %62, i64 %79
  store ptr %78, ptr %80, align 8, !tbaa !16
  %81 = getelementptr inbounds i8, ptr %78, i64 %68
  %82 = or disjoint i64 %74, 2
  %83 = getelementptr inbounds ptr, ptr %62, i64 %82
  store ptr %81, ptr %83, align 8, !tbaa !16
  %84 = getelementptr inbounds i8, ptr %81, i64 %68
  %85 = or disjoint i64 %74, 3
  %86 = getelementptr inbounds ptr, ptr %62, i64 %85
  store ptr %84, ptr %86, align 8, !tbaa !16
  %87 = getelementptr inbounds i8, ptr %84, i64 %68
  %88 = or disjoint i64 %74, 4
  %89 = getelementptr inbounds ptr, ptr %62, i64 %88
  store ptr %87, ptr %89, align 8, !tbaa !16
  %90 = getelementptr inbounds i8, ptr %87, i64 %68
  %91 = or disjoint i64 %74, 5
  %92 = getelementptr inbounds ptr, ptr %62, i64 %91
  store ptr %90, ptr %92, align 8, !tbaa !16
  %93 = getelementptr inbounds i8, ptr %90, i64 %68
  %94 = or disjoint i64 %74, 6
  %95 = getelementptr inbounds ptr, ptr %62, i64 %94
  store ptr %93, ptr %95, align 8, !tbaa !16
  %96 = getelementptr inbounds i8, ptr %93, i64 %68
  %97 = or disjoint i64 %74, 7
  %98 = getelementptr inbounds ptr, ptr %62, i64 %97
  store ptr %96, ptr %98, align 8, !tbaa !16
  %99 = getelementptr inbounds i8, ptr %96, i64 %68
  %100 = add nuw nsw i64 %74, 8
  %101 = add i64 %76, 8
  %102 = icmp eq i64 %101, %72
  br i1 %102, label %103, label %73, !llvm.loop !337

103:                                              ; preds = %73, %64
  %104 = phi i64 [ 0, %64 ], [ %100, %73 ]
  %105 = phi ptr [ %67, %64 ], [ %99, %73 ]
  %106 = icmp eq i64 %69, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %103, %107
  %108 = phi i64 [ %113, %107 ], [ %104, %103 ]
  %109 = phi ptr [ %112, %107 ], [ %105, %103 ]
  %110 = phi i64 [ %114, %107 ], [ 0, %103 ]
  %111 = getelementptr inbounds ptr, ptr %62, i64 %108
  store ptr %109, ptr %111, align 8, !tbaa !16
  %112 = getelementptr inbounds i8, ptr %109, i64 %68
  %113 = add nuw nsw i64 %108, 1
  %114 = add i64 %110, 1
  %115 = icmp eq i64 %114, %69
  br i1 %115, label %116, label %107, !llvm.loop !338

116:                                              ; preds = %103, %107, %61
  %117 = icmp sgt i32 %2, 0
  br i1 %117, label %118, label %160

118:                                              ; preds = %116
  %119 = sext i32 %3 to i64
  %120 = shl nsw i64 %119, 2
  %121 = zext nneg i32 %2 to i64
  %122 = and i64 %121, 1
  %123 = icmp eq i32 %2, 1
  br i1 %123, label %147, label %124

124:                                              ; preds = %118
  %125 = and i64 %121, 2147483646
  br label %126

126:                                              ; preds = %143, %124
  %127 = phi i64 [ 0, %124 ], [ %144, %143 ]
  %128 = phi i64 [ 0, %124 ], [ %145, %143 ]
  %129 = getelementptr inbounds i8, ptr %5, i64 %127
  %130 = load i8, ptr %129, align 1, !tbaa !75
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds ptr, ptr %1, i64 %127
  %134 = load ptr, ptr %133, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 4 %134, i8 0, i64 %120, i1 false)
  br label %135

135:                                              ; preds = %126, %132
  %136 = or disjoint i64 %127, 1
  %137 = getelementptr inbounds i8, ptr %5, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !75
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = getelementptr inbounds ptr, ptr %1, i64 %136
  %142 = load ptr, ptr %141, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 4 %142, i8 0, i64 %120, i1 false)
  br label %143

143:                                              ; preds = %140, %135
  %144 = add nuw nsw i64 %127, 2
  %145 = add i64 %128, 2
  %146 = icmp eq i64 %145, %125
  br i1 %146, label %147, label %126, !llvm.loop !339

147:                                              ; preds = %143, %118
  %148 = phi i64 [ 0, %118 ], [ %144, %143 ]
  %149 = icmp eq i64 %122, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds i8, ptr %5, i64 %148
  %152 = load i8, ptr %151, align 1, !tbaa !75
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds ptr, ptr %1, i64 %148
  %156 = load ptr, ptr %155, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 4 %156, i8 0, i64 %120, i1 false)
  br label %157

157:                                              ; preds = %150, %154, %147
  %158 = icmp ne i32 %2, 1
  %159 = and i1 %158, %24
  br i1 %159, label %175, label %161

160:                                              ; preds = %116
  br i1 %24, label %188, label %161

161:                                              ; preds = %160, %157
  %162 = icmp sgt i32 %35, 0
  %163 = icmp slt i32 %2, 1
  %164 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %165 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %166 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %167 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %168 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 5
  %169 = icmp sgt i32 %23, 0
  %170 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 6
  %171 = icmp eq i16 %16, 0
  %172 = sext i32 %23 to i64
  %173 = zext nneg i32 %2 to i64
  %174 = zext nneg i32 %2 to i64
  br label %462

175:                                              ; preds = %157
  br i1 %117, label %176, label %188

176:                                              ; preds = %175
  %177 = zext nneg i32 %2 to i64
  br label %178

178:                                              ; preds = %176, %183
  %179 = phi i64 [ 0, %176 ], [ %184, %183 ]
  %180 = getelementptr inbounds i8, ptr %5, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !75
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = add nuw nsw i64 %179, 1
  %185 = icmp eq i64 %184, %177
  br i1 %185, label %812, label %178, !llvm.loop !340

186:                                              ; preds = %178
  %187 = trunc i64 %179 to i32
  br label %188

188:                                              ; preds = %186, %160, %175
  %189 = phi i32 [ 0, %175 ], [ 0, %160 ], [ %187, %186 ]
  %190 = icmp eq i32 %189, %2
  br i1 %190, label %812, label %191

191:                                              ; preds = %188
  %192 = icmp eq i32 %2, 2
  %193 = icmp slt i32 %2, 3
  %194 = icmp slt i32 %35, 1
  %195 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %196 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %197 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %198 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %199 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 5
  %200 = icmp sgt i32 %23, 0
  %201 = getelementptr inbounds %struct.Residue, ptr %12, i64 %13, i32 6
  %202 = icmp sgt i32 %35, 0
  %203 = sext i32 %23 to i64
  %204 = select i1 %193, i1 true, i1 %194
  br label %205

205:                                              ; preds = %191, %459
  %206 = phi i64 [ 0, %191 ], [ %460, %459 ]
  br i1 %192, label %207, label %333

207:                                              ; preds = %205
  br i1 %202, label %208, label %459

208:                                              ; preds = %207
  %209 = icmp eq i64 %206, 0
  br label %210

210:                                              ; preds = %208, %329
  %211 = phi i64 [ 0, %208 ], [ %331, %329 ]
  %212 = phi i32 [ 0, %208 ], [ %330, %329 ]
  %213 = load i32, ptr %14, align 8, !tbaa !231
  %214 = load i32, ptr %33, align 8, !tbaa !233
  %215 = mul i32 %214, %212
  %216 = add i32 %215, %213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %217 = and i32 %216, 1
  store i32 %217, ptr %7, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  %218 = ashr i32 %216, 1
  store i32 %218, ptr %8, align 4, !tbaa !54
  br i1 %209, label %219, label %290

219:                                              ; preds = %210
  %220 = load ptr, ptr %19, align 8, !tbaa !23
  %221 = load i8, ptr %17, align 1, !tbaa !24
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds %struct.Codebook, ptr %220, i64 %222
  %224 = load i32, ptr %195, align 8, !tbaa !93
  %225 = icmp slt i32 %224, 10
  br i1 %225, label %226, label %246

226:                                              ; preds = %219
  %227 = icmp eq i32 %224, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %226
  store i32 0, ptr %196, align 4, !tbaa !110
  br label %229

229:                                              ; preds = %228, %226
  br label %230

230:                                              ; preds = %229, %239
  %231 = load i32, ptr %198, align 4, !tbaa !115
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i8, ptr %197, align 4, !tbaa !116
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %246, label %236

236:                                              ; preds = %233, %230
  %237 = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %246, label %239

239:                                              ; preds = %236
  %240 = load i32, ptr %195, align 8, !tbaa !93
  %241 = shl i32 %237, %240
  %242 = load i32, ptr %196, align 4, !tbaa !110
  %243 = add i32 %242, %241
  store i32 %243, ptr %196, align 4, !tbaa !110
  %244 = add nsw i32 %240, 8
  store i32 %244, ptr %195, align 8, !tbaa !93
  %245 = icmp slt i32 %240, 17
  br i1 %245, label %230, label %246, !llvm.loop !117

246:                                              ; preds = %239, %236, %233, %219
  %247 = load i32, ptr %196, align 4, !tbaa !110
  %248 = and i32 %247, 1023
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds %struct.Codebook, ptr %220, i64 %222, i32 12, i64 %249
  %251 = load i16, ptr %250, align 2, !tbaa !109
  %252 = icmp sgt i16 %251, -1
  br i1 %252, label %253, label %267

253:                                              ; preds = %246
  %254 = zext nneg i16 %251 to i32
  %255 = getelementptr inbounds %struct.Codebook, ptr %220, i64 %222, i32 2
  %256 = load ptr, ptr %255, align 8, !tbaa !32
  %257 = zext nneg i16 %251 to i64
  %258 = getelementptr inbounds i8, ptr %256, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !75
  %260 = zext i8 %259 to i32
  %261 = lshr i32 %247, %260
  store i32 %261, ptr %196, align 4, !tbaa !110
  %262 = load i32, ptr %195, align 8, !tbaa !93
  %263 = sub nsw i32 %262, %260
  %264 = call i32 @llvm.smax.i32(i32 %263, i32 0)
  %265 = icmp sgt i32 %263, -1
  %266 = select i1 %265, i32 %254, i32 -1
  store i32 %264, ptr %195, align 8, !tbaa !93
  br label %269

267:                                              ; preds = %246
  %268 = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %223)
  br label %269

269:                                              ; preds = %267, %253
  %270 = phi i32 [ %266, %253 ], [ %268, %267 ]
  %271 = getelementptr inbounds %struct.Codebook, ptr %220, i64 %222, i32 8
  %272 = load i8, ptr %271, align 1, !tbaa !118
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.Codebook, ptr %220, i64 %222, i32 14
  %276 = load ptr, ptr %275, align 8, !tbaa !36
  %277 = sext i32 %270 to i64
  %278 = getelementptr inbounds i32, ptr %276, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !54
  br label %280

280:                                              ; preds = %274, %269
  %281 = phi i32 [ %279, %274 ], [ %270, %269 ]
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %328, label %283

283:                                              ; preds = %280
  %284 = load ptr, ptr %199, align 8, !tbaa !21
  %285 = sext i32 %281 to i64
  %286 = getelementptr inbounds ptr, ptr %284, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !16
  %288 = load ptr, ptr %62, align 8, !tbaa !16
  %289 = getelementptr inbounds ptr, ptr %288, i64 %211
  store ptr %287, ptr %289, align 8, !tbaa !16
  br label %290

290:                                              ; preds = %283, %210
  %291 = icmp slt i32 %212, %35
  %292 = select i1 %200, i1 %291, i1 false
  br i1 %292, label %293, label %329

293:                                              ; preds = %290, %322
  %294 = phi i64 [ %324, %322 ], [ 0, %290 ]
  %295 = phi i32 [ %323, %322 ], [ %212, %290 ]
  %296 = load i32, ptr %33, align 8, !tbaa !233
  %297 = load ptr, ptr %62, align 8, !tbaa !16
  %298 = getelementptr inbounds ptr, ptr %297, i64 %211
  %299 = load ptr, ptr %298, align 8, !tbaa !16
  %300 = getelementptr inbounds i8, ptr %299, i64 %294
  %301 = load i8, ptr %300, align 1, !tbaa !75
  %302 = load ptr, ptr %201, align 8, !tbaa !29
  %303 = zext i8 %301 to i64
  %304 = getelementptr inbounds [8 x i16], ptr %302, i64 %303, i64 %206
  %305 = load i16, ptr %304, align 2, !tbaa !109
  %306 = icmp sgt i16 %305, -1
  br i1 %306, label %307, label %315

307:                                              ; preds = %293
  %308 = zext nneg i16 %305 to i64
  %309 = load ptr, ptr %19, align 8, !tbaa !23
  %310 = getelementptr inbounds %struct.Codebook, ptr %309, i64 %308
  %311 = call fastcc i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %310, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %3, i32 noundef %296)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %307
  %314 = add nsw i32 %295, 1
  br label %322

315:                                              ; preds = %293
  %316 = load i32, ptr %14, align 8, !tbaa !231
  %317 = add nsw i32 %295, 1
  %318 = mul i32 %296, %317
  %319 = add i32 %318, %316
  %320 = and i32 %319, 1
  store i32 %320, ptr %7, align 4, !tbaa !54
  %321 = ashr i32 %319, 1
  store i32 %321, ptr %8, align 4, !tbaa !54
  br label %322

322:                                              ; preds = %313, %315
  %323 = phi i32 [ %314, %313 ], [ %317, %315 ]
  %324 = add nuw nsw i64 %294, 1
  %325 = icmp slt i64 %324, %203
  %326 = icmp slt i32 %323, %35
  %327 = select i1 %325, i1 %326, i1 false
  br i1 %327, label %293, label %329, !llvm.loop !341

328:                                              ; preds = %280, %307
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %812

329:                                              ; preds = %322, %290
  %330 = phi i32 [ %212, %290 ], [ %323, %322 ]
  %331 = add nuw i64 %211, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  %332 = icmp slt i32 %330, %35
  br i1 %332, label %210, label %459, !llvm.loop !342

333:                                              ; preds = %205
  br i1 %204, label %459, label %334

334:                                              ; preds = %333
  %335 = icmp eq i64 %206, 0
  br label %336

336:                                              ; preds = %334, %455
  %337 = phi i64 [ 0, %334 ], [ %457, %455 ]
  %338 = phi i32 [ 0, %334 ], [ %456, %455 ]
  %339 = load i32, ptr %14, align 8, !tbaa !231
  %340 = load i32, ptr %33, align 8, !tbaa !233
  %341 = mul i32 %340, %338
  %342 = add i32 %341, %339
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #27
  %343 = srem i32 %342, %2
  store i32 %343, ptr %9, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #27
  %344 = sdiv i32 %342, %2
  store i32 %344, ptr %10, align 4, !tbaa !54
  br i1 %335, label %345, label %416

345:                                              ; preds = %336
  %346 = load ptr, ptr %19, align 8, !tbaa !23
  %347 = load i8, ptr %17, align 1, !tbaa !24
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds %struct.Codebook, ptr %346, i64 %348
  %350 = load i32, ptr %195, align 8, !tbaa !93
  %351 = icmp slt i32 %350, 10
  br i1 %351, label %352, label %372

352:                                              ; preds = %345
  %353 = icmp eq i32 %350, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %352
  store i32 0, ptr %196, align 4, !tbaa !110
  br label %355

355:                                              ; preds = %354, %352
  br label %356

356:                                              ; preds = %355, %365
  %357 = load i32, ptr %198, align 4, !tbaa !115
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %356
  %360 = load i8, ptr %197, align 4, !tbaa !116
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %359, %356
  %363 = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %364 = icmp eq i32 %363, -1
  br i1 %364, label %372, label %365

365:                                              ; preds = %362
  %366 = load i32, ptr %195, align 8, !tbaa !93
  %367 = shl i32 %363, %366
  %368 = load i32, ptr %196, align 4, !tbaa !110
  %369 = add i32 %368, %367
  store i32 %369, ptr %196, align 4, !tbaa !110
  %370 = add nsw i32 %366, 8
  store i32 %370, ptr %195, align 8, !tbaa !93
  %371 = icmp slt i32 %366, 17
  br i1 %371, label %356, label %372, !llvm.loop !117

372:                                              ; preds = %365, %362, %359, %345
  %373 = load i32, ptr %196, align 4, !tbaa !110
  %374 = and i32 %373, 1023
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds %struct.Codebook, ptr %346, i64 %348, i32 12, i64 %375
  %377 = load i16, ptr %376, align 2, !tbaa !109
  %378 = icmp sgt i16 %377, -1
  br i1 %378, label %379, label %393

379:                                              ; preds = %372
  %380 = zext nneg i16 %377 to i32
  %381 = getelementptr inbounds %struct.Codebook, ptr %346, i64 %348, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !32
  %383 = zext nneg i16 %377 to i64
  %384 = getelementptr inbounds i8, ptr %382, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !75
  %386 = zext i8 %385 to i32
  %387 = lshr i32 %373, %386
  store i32 %387, ptr %196, align 4, !tbaa !110
  %388 = load i32, ptr %195, align 8, !tbaa !93
  %389 = sub nsw i32 %388, %386
  %390 = call i32 @llvm.smax.i32(i32 %389, i32 0)
  %391 = icmp sgt i32 %389, -1
  %392 = select i1 %391, i32 %380, i32 -1
  store i32 %390, ptr %195, align 8, !tbaa !93
  br label %395

393:                                              ; preds = %372
  %394 = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %349)
  br label %395

395:                                              ; preds = %393, %379
  %396 = phi i32 [ %392, %379 ], [ %394, %393 ]
  %397 = getelementptr inbounds %struct.Codebook, ptr %346, i64 %348, i32 8
  %398 = load i8, ptr %397, align 1, !tbaa !118
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.Codebook, ptr %346, i64 %348, i32 14
  %402 = load ptr, ptr %401, align 8, !tbaa !36
  %403 = sext i32 %396 to i64
  %404 = getelementptr inbounds i32, ptr %402, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !54
  br label %406

406:                                              ; preds = %400, %395
  %407 = phi i32 [ %405, %400 ], [ %396, %395 ]
  %408 = icmp eq i32 %407, -1
  br i1 %408, label %454, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr %199, align 8, !tbaa !21
  %411 = sext i32 %407 to i64
  %412 = getelementptr inbounds ptr, ptr %410, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !16
  %414 = load ptr, ptr %62, align 8, !tbaa !16
  %415 = getelementptr inbounds ptr, ptr %414, i64 %337
  store ptr %413, ptr %415, align 8, !tbaa !16
  br label %416

416:                                              ; preds = %409, %336
  %417 = icmp slt i32 %338, %35
  %418 = select i1 %200, i1 %417, i1 false
  br i1 %418, label %419, label %455

419:                                              ; preds = %416, %448
  %420 = phi i64 [ %450, %448 ], [ 0, %416 ]
  %421 = phi i32 [ %449, %448 ], [ %338, %416 ]
  %422 = load i32, ptr %33, align 8, !tbaa !233
  %423 = load ptr, ptr %62, align 8, !tbaa !16
  %424 = getelementptr inbounds ptr, ptr %423, i64 %337
  %425 = load ptr, ptr %424, align 8, !tbaa !16
  %426 = getelementptr inbounds i8, ptr %425, i64 %420
  %427 = load i8, ptr %426, align 1, !tbaa !75
  %428 = load ptr, ptr %201, align 8, !tbaa !29
  %429 = zext i8 %427 to i64
  %430 = getelementptr inbounds [8 x i16], ptr %428, i64 %429, i64 %206
  %431 = load i16, ptr %430, align 2, !tbaa !109
  %432 = icmp sgt i16 %431, -1
  br i1 %432, label %433, label %441

433:                                              ; preds = %419
  %434 = zext nneg i16 %431 to i64
  %435 = load ptr, ptr %19, align 8, !tbaa !23
  %436 = getelementptr inbounds %struct.Codebook, ptr %435, i64 %434
  %437 = call fastcc i32 @codebook_decode_deinterleave_repeat(ptr noundef %0, ptr noundef %436, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %3, i32 noundef %422)
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %454, label %439

439:                                              ; preds = %433
  %440 = add nsw i32 %421, 1
  br label %448

441:                                              ; preds = %419
  %442 = load i32, ptr %14, align 8, !tbaa !231
  %443 = add nsw i32 %421, 1
  %444 = mul i32 %422, %443
  %445 = add i32 %444, %442
  %446 = srem i32 %445, %2
  store i32 %446, ptr %9, align 4, !tbaa !54
  %447 = sdiv i32 %445, %2
  store i32 %447, ptr %10, align 4, !tbaa !54
  br label %448

448:                                              ; preds = %439, %441
  %449 = phi i32 [ %440, %439 ], [ %443, %441 ]
  %450 = add nuw nsw i64 %420, 1
  %451 = icmp slt i64 %450, %203
  %452 = icmp slt i32 %449, %35
  %453 = select i1 %451, i1 %452, i1 false
  br i1 %453, label %419, label %455, !llvm.loop !343

454:                                              ; preds = %406, %433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  br label %812

455:                                              ; preds = %448, %416
  %456 = phi i32 [ %338, %416 ], [ %449, %448 ]
  %457 = add nuw i64 %337, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #27
  %458 = icmp slt i32 %456, %35
  br i1 %458, label %336, label %459, !llvm.loop !344

459:                                              ; preds = %455, %329, %333, %207
  %460 = add nuw nsw i64 %206, 1
  %461 = icmp eq i64 %460, 8
  br i1 %461, label %812, label %205, !llvm.loop !345

462:                                              ; preds = %161, %809
  %463 = phi i64 [ 0, %161 ], [ %810, %809 ]
  br i1 %162, label %464, label %809

464:                                              ; preds = %462
  %465 = icmp ne i64 %463, 0
  %466 = or i1 %465, %163
  br label %467

467:                                              ; preds = %464, %805
  %468 = phi i64 [ 0, %464 ], [ %807, %805 ]
  %469 = phi i32 [ 0, %464 ], [ %806, %805 ]
  br i1 %466, label %550, label %470

470:                                              ; preds = %467, %547
  %471 = phi i64 [ %548, %547 ], [ 0, %467 ]
  %472 = getelementptr inbounds i8, ptr %5, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !75
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %475, label %547

475:                                              ; preds = %470
  %476 = load ptr, ptr %19, align 8, !tbaa !23
  %477 = load i8, ptr %17, align 1, !tbaa !24
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds %struct.Codebook, ptr %476, i64 %478
  %480 = load i32, ptr %164, align 8, !tbaa !93
  %481 = icmp slt i32 %480, 10
  br i1 %481, label %482, label %502

482:                                              ; preds = %475
  %483 = icmp eq i32 %480, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %482
  store i32 0, ptr %165, align 4, !tbaa !110
  br label %485

485:                                              ; preds = %484, %482
  br label %486

486:                                              ; preds = %485, %495
  %487 = load i32, ptr %167, align 4, !tbaa !115
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %486
  %490 = load i8, ptr %166, align 4, !tbaa !116
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %502, label %492

492:                                              ; preds = %489, %486
  %493 = call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %494 = icmp eq i32 %493, -1
  br i1 %494, label %502, label %495

495:                                              ; preds = %492
  %496 = load i32, ptr %164, align 8, !tbaa !93
  %497 = shl i32 %493, %496
  %498 = load i32, ptr %165, align 4, !tbaa !110
  %499 = add i32 %498, %497
  store i32 %499, ptr %165, align 4, !tbaa !110
  %500 = add nsw i32 %496, 8
  store i32 %500, ptr %164, align 8, !tbaa !93
  %501 = icmp slt i32 %496, 17
  br i1 %501, label %486, label %502, !llvm.loop !117

502:                                              ; preds = %495, %492, %489, %475
  %503 = load i32, ptr %165, align 4, !tbaa !110
  %504 = and i32 %503, 1023
  %505 = zext nneg i32 %504 to i64
  %506 = getelementptr inbounds %struct.Codebook, ptr %476, i64 %478, i32 12, i64 %505
  %507 = load i16, ptr %506, align 2, !tbaa !109
  %508 = icmp sgt i16 %507, -1
  br i1 %508, label %509, label %523

509:                                              ; preds = %502
  %510 = zext nneg i16 %507 to i32
  %511 = getelementptr inbounds %struct.Codebook, ptr %476, i64 %478, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !32
  %513 = zext nneg i16 %507 to i64
  %514 = getelementptr inbounds i8, ptr %512, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !75
  %516 = zext i8 %515 to i32
  %517 = lshr i32 %503, %516
  store i32 %517, ptr %165, align 4, !tbaa !110
  %518 = load i32, ptr %164, align 8, !tbaa !93
  %519 = sub nsw i32 %518, %516
  %520 = call i32 @llvm.smax.i32(i32 %519, i32 0)
  %521 = icmp sgt i32 %519, -1
  %522 = select i1 %521, i32 %510, i32 -1
  store i32 %520, ptr %164, align 8, !tbaa !93
  br label %525

523:                                              ; preds = %502
  %524 = call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %479)
  br label %525

525:                                              ; preds = %523, %509
  %526 = phi i32 [ %522, %509 ], [ %524, %523 ]
  %527 = getelementptr inbounds %struct.Codebook, ptr %476, i64 %478, i32 8
  %528 = load i8, ptr %527, align 1, !tbaa !118
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %536, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.Codebook, ptr %476, i64 %478, i32 14
  %532 = load ptr, ptr %531, align 8, !tbaa !36
  %533 = sext i32 %526 to i64
  %534 = getelementptr inbounds i32, ptr %532, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !54
  br label %536

536:                                              ; preds = %530, %525
  %537 = phi i32 [ %535, %530 ], [ %526, %525 ]
  %538 = icmp eq i32 %537, -1
  br i1 %538, label %812, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr %168, align 8, !tbaa !21
  %541 = sext i32 %537 to i64
  %542 = getelementptr inbounds ptr, ptr %540, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !16
  %544 = getelementptr inbounds ptr, ptr %62, i64 %471
  %545 = load ptr, ptr %544, align 8, !tbaa !16
  %546 = getelementptr inbounds ptr, ptr %545, i64 %468
  store ptr %543, ptr %546, align 8, !tbaa !16
  br label %547

547:                                              ; preds = %539, %470
  %548 = add nuw nsw i64 %471, 1
  %549 = icmp eq i64 %548, %173
  br i1 %549, label %550, label %470, !llvm.loop !346

550:                                              ; preds = %547, %467
  %551 = icmp slt i32 %469, %35
  %552 = select i1 %169, i1 %551, i1 false
  br i1 %552, label %553, label %805

553:                                              ; preds = %550, %799
  %554 = phi i64 [ %800, %799 ], [ 0, %550 ]
  %555 = phi i32 [ %801, %799 ], [ %469, %550 ]
  br i1 %117, label %556, label %799

556:                                              ; preds = %553, %796
  %557 = phi i64 [ %797, %796 ], [ 0, %553 ]
  %558 = getelementptr inbounds i8, ptr %5, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !75
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %561, label %796

561:                                              ; preds = %556
  %562 = getelementptr inbounds ptr, ptr %62, i64 %557
  %563 = load ptr, ptr %562, align 8, !tbaa !16
  %564 = getelementptr inbounds ptr, ptr %563, i64 %468
  %565 = load ptr, ptr %564, align 8, !tbaa !16
  %566 = getelementptr inbounds i8, ptr %565, i64 %554
  %567 = load i8, ptr %566, align 1, !tbaa !75
  %568 = load ptr, ptr %170, align 8, !tbaa !29
  %569 = zext i8 %567 to i64
  %570 = getelementptr inbounds [8 x i16], ptr %568, i64 %569, i64 %463
  %571 = load i16, ptr %570, align 2, !tbaa !109
  %572 = icmp sgt i16 %571, -1
  br i1 %572, label %573, label %796

573:                                              ; preds = %561
  %574 = zext nneg i16 %571 to i64
  %575 = getelementptr inbounds ptr, ptr %1, i64 %557
  %576 = load ptr, ptr %575, align 8, !tbaa !16
  %577 = load i32, ptr %14, align 8, !tbaa !231
  %578 = load i32, ptr %33, align 8, !tbaa !233
  %579 = mul i32 %578, %555
  %580 = add i32 %579, %577
  %581 = load ptr, ptr %19, align 8, !tbaa !23
  %582 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574
  br i1 %171, label %589, label %583

583:                                              ; preds = %573
  %584 = icmp sgt i32 %578, 0
  br i1 %584, label %585, label %796

585:                                              ; preds = %583
  %586 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574, i32 7
  %587 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574, i32 10
  %588 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574, i32 3
  br label %662

589:                                              ; preds = %573
  %590 = load i32, ptr %582, align 8, !tbaa !182
  %591 = sdiv i32 %578, %590
  %592 = sext i32 %580 to i64
  %593 = getelementptr inbounds float, ptr %576, i64 %592
  %594 = icmp sgt i32 %591, 0
  br i1 %594, label %595, label %796

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574, i32 10
  %597 = getelementptr inbounds %struct.Codebook, ptr %581, i64 %574, i32 7
  %598 = zext nneg i32 %591 to i64
  br label %599

599:                                              ; preds = %659, %595
  %600 = phi i64 [ 0, %595 ], [ %660, %659 ]
  %601 = getelementptr inbounds float, ptr %593, i64 %600
  %602 = call fastcc i32 @codebook_decode_start(ptr noundef %0, ptr noundef nonnull %582)
  %603 = icmp slt i32 %602, 0
  br i1 %603, label %812, label %604

604:                                              ; preds = %599
  %605 = trunc i64 %600 to i32
  %606 = add i32 %580, %605
  %607 = sub i32 %578, %606
  %608 = load i32, ptr %582, align 8, !tbaa !182
  %609 = call i32 @llvm.smin.i32(i32 %608, i32 %607)
  %610 = icmp sgt i32 %609, 0
  br i1 %610, label %611, label %659

611:                                              ; preds = %604
  %612 = mul nsw i32 %608, %602
  %613 = load ptr, ptr %596, align 8, !tbaa !33
  %614 = load i8, ptr %597, align 2, !tbaa !194
  %615 = icmp eq i8 %614, 0
  %616 = sext i32 %612 to i64
  %617 = zext nneg i32 %609 to i64
  %618 = getelementptr float, ptr %613, i64 %616
  %619 = and i64 %617, 1
  %620 = icmp eq i32 %609, 1
  br i1 %620, label %647, label %621

621:                                              ; preds = %611
  %622 = and i64 %617, 2147483646
  br label %623

623:                                              ; preds = %623, %621
  %624 = phi i64 [ 0, %621 ], [ %644, %623 ]
  %625 = phi float [ 0.000000e+00, %621 ], [ %643, %623 ]
  %626 = phi i64 [ 0, %621 ], [ %645, %623 ]
  %627 = getelementptr float, ptr %618, i64 %624
  %628 = load float, ptr %627, align 4, !tbaa !136
  %629 = fadd float %625, %628
  %630 = mul nuw nsw i64 %624, %598
  %631 = getelementptr inbounds float, ptr %601, i64 %630
  %632 = load float, ptr %631, align 4, !tbaa !136
  %633 = fadd float %632, %629
  store float %633, ptr %631, align 4, !tbaa !136
  %634 = select i1 %615, float %625, float %629
  %635 = or disjoint i64 %624, 1
  %636 = getelementptr float, ptr %618, i64 %635
  %637 = load float, ptr %636, align 4, !tbaa !136
  %638 = fadd float %634, %637
  %639 = mul nuw nsw i64 %635, %598
  %640 = getelementptr inbounds float, ptr %601, i64 %639
  %641 = load float, ptr %640, align 4, !tbaa !136
  %642 = fadd float %641, %638
  store float %642, ptr %640, align 4, !tbaa !136
  %643 = select i1 %615, float %625, float %638
  %644 = add nuw nsw i64 %624, 2
  %645 = add i64 %626, 2
  %646 = icmp eq i64 %645, %622
  br i1 %646, label %647, label %623, !llvm.loop !347

647:                                              ; preds = %623, %611
  %648 = phi i64 [ 0, %611 ], [ %644, %623 ]
  %649 = phi float [ 0.000000e+00, %611 ], [ %643, %623 ]
  %650 = icmp eq i64 %619, 0
  br i1 %650, label %659, label %651

651:                                              ; preds = %647
  %652 = getelementptr float, ptr %618, i64 %648
  %653 = load float, ptr %652, align 4, !tbaa !136
  %654 = fadd float %649, %653
  %655 = mul nuw nsw i64 %648, %598
  %656 = getelementptr inbounds float, ptr %601, i64 %655
  %657 = load float, ptr %656, align 4, !tbaa !136
  %658 = fadd float %657, %654
  store float %658, ptr %656, align 4, !tbaa !136
  br label %659

659:                                              ; preds = %651, %647, %604
  %660 = add nuw nsw i64 %600, 1
  %661 = icmp eq i64 %660, %598
  br i1 %661, label %796, label %599, !llvm.loop !348

662:                                              ; preds = %792, %585
  %663 = phi i32 [ 0, %585 ], [ %793, %792 ]
  %664 = phi i32 [ %580, %585 ], [ %794, %792 ]
  %665 = sext i32 %664 to i64
  %666 = getelementptr float, ptr %576, i64 %665
  %667 = call fastcc i32 @codebook_decode_start(ptr noundef %0, ptr noundef %582)
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %812, label %669

669:                                              ; preds = %662
  %670 = sub i32 %578, %663
  %671 = load i32, ptr %582, align 8, !tbaa !182
  %672 = call i32 @llvm.smin.i32(i32 %671, i32 %670)
  %673 = mul nsw i32 %671, %667
  %674 = load i8, ptr %586, align 2, !tbaa !194
  %675 = icmp eq i8 %674, 0
  %676 = icmp sgt i32 %672, 0
  br i1 %675, label %687, label %677

677:                                              ; preds = %669
  br i1 %676, label %678, label %792

678:                                              ; preds = %677
  %679 = load ptr, ptr %587, align 8, !tbaa !33
  %680 = sext i32 %673 to i64
  %681 = zext nneg i32 %672 to i64
  %682 = getelementptr float, ptr %679, i64 %680
  %683 = and i64 %681, 1
  %684 = icmp eq i32 %672, 1
  br i1 %684, label %781, label %685

685:                                              ; preds = %678
  %686 = and i64 %681, 2147483646
  br label %740

687:                                              ; preds = %669
  br i1 %676, label %688, label %792

688:                                              ; preds = %687
  %689 = load ptr, ptr %587, align 8, !tbaa !33
  %690 = sext i32 %673 to i64
  %691 = zext nneg i32 %672 to i64
  %692 = getelementptr float, ptr %689, i64 %690
  %693 = icmp ult i32 %672, 8
  br i1 %693, label %724, label %694

694:                                              ; preds = %688
  %695 = add nsw i64 %665, %691
  %696 = shl nsw i64 %695, 2
  %697 = getelementptr i8, ptr %576, i64 %696
  %698 = add nsw i64 %690, %691
  %699 = shl nsw i64 %698, 2
  %700 = getelementptr i8, ptr %689, i64 %699
  %701 = icmp ult ptr %666, %700
  %702 = icmp ult ptr %692, %697
  %703 = and i1 %701, %702
  br i1 %703, label %724, label %704

704:                                              ; preds = %694
  %705 = and i64 %691, 2147483640
  br label %706

706:                                              ; preds = %706, %704
  %707 = phi i64 [ 0, %704 ], [ %720, %706 ]
  %708 = getelementptr float, ptr %692, i64 %707
  %709 = getelementptr float, ptr %708, i64 4
  %710 = load <4 x float>, ptr %708, align 4, !tbaa !136, !alias.scope !349
  %711 = load <4 x float>, ptr %709, align 4, !tbaa !136, !alias.scope !349
  %712 = fadd <4 x float> %710, zeroinitializer
  %713 = fadd <4 x float> %711, zeroinitializer
  %714 = getelementptr inbounds float, ptr %666, i64 %707
  %715 = getelementptr inbounds float, ptr %714, i64 4
  %716 = load <4 x float>, ptr %714, align 4, !tbaa !136, !alias.scope !352, !noalias !349
  %717 = load <4 x float>, ptr %715, align 4, !tbaa !136, !alias.scope !352, !noalias !349
  %718 = fadd <4 x float> %716, %712
  %719 = fadd <4 x float> %717, %713
  store <4 x float> %718, ptr %714, align 4, !tbaa !136, !alias.scope !352, !noalias !349
  store <4 x float> %719, ptr %715, align 4, !tbaa !136, !alias.scope !352, !noalias !349
  %720 = add nuw i64 %707, 8
  %721 = icmp eq i64 %720, %705
  br i1 %721, label %722, label %706, !llvm.loop !354

722:                                              ; preds = %706
  %723 = icmp eq i64 %705, %691
  br i1 %723, label %792, label %724

724:                                              ; preds = %694, %688, %722
  %725 = phi i64 [ 0, %694 ], [ 0, %688 ], [ %705, %722 ]
  %726 = and i64 %691, 1
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %736, label %728

728:                                              ; preds = %724
  %729 = getelementptr float, ptr %692, i64 %725
  %730 = load float, ptr %729, align 4, !tbaa !136
  %731 = fadd float %730, 0.000000e+00
  %732 = getelementptr inbounds float, ptr %666, i64 %725
  %733 = load float, ptr %732, align 4, !tbaa !136
  %734 = fadd float %733, %731
  store float %734, ptr %732, align 4, !tbaa !136
  %735 = or disjoint i64 %725, 1
  br label %736

736:                                              ; preds = %728, %724
  %737 = phi i64 [ %725, %724 ], [ %735, %728 ]
  %738 = add nsw i64 %691, -1
  %739 = icmp eq i64 %725, %738
  br i1 %739, label %792, label %764

740:                                              ; preds = %740, %685
  %741 = phi i64 [ 0, %685 ], [ %761, %740 ]
  %742 = phi float [ 0.000000e+00, %685 ], [ %760, %740 ]
  %743 = phi i64 [ 0, %685 ], [ %762, %740 ]
  %744 = getelementptr float, ptr %682, i64 %741
  %745 = load float, ptr %744, align 4, !tbaa !136
  %746 = fadd float %742, %745
  %747 = getelementptr inbounds float, ptr %666, i64 %741
  %748 = load float, ptr %747, align 4, !tbaa !136
  %749 = fadd float %748, %746
  store float %749, ptr %747, align 4, !tbaa !136
  %750 = load float, ptr %588, align 8, !tbaa !191
  %751 = fadd float %746, %750
  %752 = or disjoint i64 %741, 1
  %753 = getelementptr float, ptr %682, i64 %752
  %754 = load float, ptr %753, align 4, !tbaa !136
  %755 = fadd float %751, %754
  %756 = getelementptr inbounds float, ptr %666, i64 %752
  %757 = load float, ptr %756, align 4, !tbaa !136
  %758 = fadd float %757, %755
  store float %758, ptr %756, align 4, !tbaa !136
  %759 = load float, ptr %588, align 8, !tbaa !191
  %760 = fadd float %755, %759
  %761 = add nuw nsw i64 %741, 2
  %762 = add i64 %743, 2
  %763 = icmp eq i64 %762, %686
  br i1 %763, label %781, label %740, !llvm.loop !355

764:                                              ; preds = %736, %764
  %765 = phi i64 [ %779, %764 ], [ %737, %736 ]
  %766 = getelementptr float, ptr %692, i64 %765
  %767 = load float, ptr %766, align 4, !tbaa !136
  %768 = fadd float %767, 0.000000e+00
  %769 = getelementptr inbounds float, ptr %666, i64 %765
  %770 = load float, ptr %769, align 4, !tbaa !136
  %771 = fadd float %770, %768
  store float %771, ptr %769, align 4, !tbaa !136
  %772 = add nuw nsw i64 %765, 1
  %773 = getelementptr float, ptr %692, i64 %772
  %774 = load float, ptr %773, align 4, !tbaa !136
  %775 = fadd float %774, 0.000000e+00
  %776 = getelementptr inbounds float, ptr %666, i64 %772
  %777 = load float, ptr %776, align 4, !tbaa !136
  %778 = fadd float %777, %775
  store float %778, ptr %776, align 4, !tbaa !136
  %779 = add nuw nsw i64 %765, 2
  %780 = icmp eq i64 %779, %691
  br i1 %780, label %792, label %764, !llvm.loop !356

781:                                              ; preds = %740, %678
  %782 = phi i64 [ 0, %678 ], [ %761, %740 ]
  %783 = phi float [ 0.000000e+00, %678 ], [ %760, %740 ]
  %784 = icmp eq i64 %683, 0
  br i1 %784, label %792, label %785

785:                                              ; preds = %781
  %786 = getelementptr float, ptr %682, i64 %782
  %787 = load float, ptr %786, align 4, !tbaa !136
  %788 = fadd float %783, %787
  %789 = getelementptr inbounds float, ptr %666, i64 %782
  %790 = load float, ptr %789, align 4, !tbaa !136
  %791 = fadd float %790, %788
  store float %791, ptr %789, align 4, !tbaa !136
  br label %792

792:                                              ; preds = %785, %781, %736, %764, %722, %687, %677
  %793 = add nsw i32 %671, %663
  %794 = add nsw i32 %671, %664
  %795 = icmp slt i32 %793, %578
  br i1 %795, label %662, label %796, !llvm.loop !357

796:                                              ; preds = %792, %659, %583, %589, %561, %556
  %797 = add nuw nsw i64 %557, 1
  %798 = icmp eq i64 %797, %174
  br i1 %798, label %799, label %556, !llvm.loop !358

799:                                              ; preds = %796, %553
  %800 = add nuw nsw i64 %554, 1
  %801 = add nsw i32 %555, 1
  %802 = icmp slt i64 %800, %172
  %803 = icmp slt i32 %801, %35
  %804 = select i1 %802, i1 %803, i1 false
  br i1 %804, label %553, label %805, !llvm.loop !359

805:                                              ; preds = %799, %550
  %806 = phi i32 [ %469, %550 ], [ %801, %799 ]
  %807 = add nuw i64 %468, 1
  %808 = icmp slt i32 %806, %35
  br i1 %808, label %467, label %809, !llvm.loop !360

809:                                              ; preds = %805, %462
  %810 = add nuw nsw i64 %463, 1
  %811 = icmp eq i64 %810, 8
  br i1 %811, label %812, label %462, !llvm.loop !361

812:                                              ; preds = %809, %536, %662, %599, %183, %459, %328, %454, %188
  store i32 %37, ptr %36, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @inverse_mdct(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = ashr i32 %1, 1
  %6 = ashr i32 %1, 2
  %7 = ashr i32 %1, 3
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 21
  %9 = load i32, ptr %8, align 4, !tbaa !127
  %10 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = shl i32 %5, 2
  %15 = add nsw i32 %14, 7
  %16 = and i32 %15, -8
  %17 = sub nsw i32 %9, %16
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 20
  %19 = load i32, ptr %18, align 8, !tbaa !175
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  store i32 %17, ptr %8, align 4, !tbaa !127
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds i8, ptr %11, i64 %22
  br label %28

24:                                               ; preds = %4
  %25 = sext i32 %5 to i64
  %26 = shl nsw i64 %25, 2
  %27 = alloca i8, i64 %26, align 16
  br label %28

28:                                               ; preds = %21, %13, %24
  %29 = phi ptr [ %27, %24 ], [ %23, %21 ], [ null, %13 ]
  %30 = zext nneg i32 %3 to i64
  %31 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 47, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = add nsw i32 %5, -2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %29, i64 %34
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds float, ptr %0, i64 %36
  %38 = icmp ult i32 %1, 2
  br i1 %38, label %135, label %39

39:                                               ; preds = %28
  %40 = shl nsw i64 %36, 2
  %41 = add nsw i64 %40, -16
  %42 = lshr i64 %41, 4
  %43 = add nuw nsw i64 %42, 1
  %44 = icmp ult i64 %41, 128
  br i1 %44, label %107, label %45

45:                                               ; preds = %39
  %46 = shl nsw i64 %36, 2
  %47 = add nsw i64 %46, -8
  %48 = add nsw i64 %46, -16
  %49 = lshr exact i64 %48, 1
  %50 = and i64 %49, 9223372036854775800
  %51 = sub i64 %47, %50
  %52 = getelementptr i8, ptr %29, i64 %51
  %53 = getelementptr i8, ptr %29, i64 %46
  %54 = or i64 %48, 12
  %55 = getelementptr i8, ptr %0, i64 %54
  %56 = getelementptr i8, ptr %32, i64 %50
  %57 = getelementptr i8, ptr %56, i64 8
  %58 = icmp ult ptr %52, %55
  %59 = icmp ugt ptr %53, %0
  %60 = and i1 %58, %59
  %61 = icmp ult ptr %52, %57
  %62 = icmp ult ptr %32, %53
  %63 = and i1 %61, %62
  %64 = or i1 %60, %63
  br i1 %64, label %107, label %65

65:                                               ; preds = %45
  %66 = and i64 %43, 3
  %67 = icmp eq i64 %66, 0
  %68 = select i1 %67, i64 4, i64 %66
  %69 = sub nsw i64 %43, %68
  %70 = mul i64 %69, -8
  %71 = getelementptr i8, ptr %35, i64 %70
  %72 = shl i64 %69, 4
  %73 = getelementptr i8, ptr %0, i64 %72
  %74 = shl i64 %69, 3
  %75 = getelementptr i8, ptr %32, i64 %74
  %76 = getelementptr float, ptr %35, i64 -6
  br label %77

77:                                               ; preds = %77, %65
  %78 = phi i64 [ 0, %65 ], [ %105, %77 ]
  %79 = mul i64 %78, -8
  %80 = shl i64 %78, 4
  %81 = getelementptr i8, ptr %0, i64 %80
  %82 = shl i64 %78, 3
  %83 = getelementptr i8, ptr %32, i64 %82
  %84 = load <16 x float>, ptr %81, align 4, !tbaa !136
  %85 = shufflevector <16 x float> %84, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %86 = shufflevector <16 x float> %84, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %87 = load <8 x float>, ptr %83, align 4, !tbaa !136
  %88 = shufflevector <8 x float> %87, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %89 = shufflevector <8 x float> %87, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %90 = fneg <4 x float> %86
  %91 = fmul <4 x float> %89, %90
  %92 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %88, <4 x float> %91)
  %93 = load <16 x float>, ptr %81, align 4, !tbaa !136
  %94 = shufflevector <16 x float> %93, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %95 = shufflevector <16 x float> %93, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %96 = load <8 x float>, ptr %83, align 4, !tbaa !136
  %97 = shufflevector <8 x float> %96, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %98 = shufflevector <8 x float> %96, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %99 = fmul <4 x float> %95, %97
  %100 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %94, <4 x float> %98, <4 x float> %99)
  %101 = getelementptr i8, ptr %76, i64 %79
  %102 = shufflevector <4 x float> %100, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %103 = shufflevector <4 x float> %92, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %104 = shufflevector <4 x float> %102, <4 x float> %103, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %104, ptr %101, align 4, !tbaa !136
  %105 = add nuw i64 %78, 4
  %106 = icmp eq i64 %105, %69
  br i1 %106, label %107, label %77, !llvm.loop !362

107:                                              ; preds = %77, %45, %39
  %108 = phi ptr [ %35, %45 ], [ %35, %39 ], [ %71, %77 ]
  %109 = phi ptr [ %0, %45 ], [ %0, %39 ], [ %73, %77 ]
  %110 = phi ptr [ %32, %45 ], [ %32, %39 ], [ %75, %77 ]
  br label %111

111:                                              ; preds = %107, %111
  %112 = phi ptr [ %131, %111 ], [ %108, %107 ]
  %113 = phi ptr [ %133, %111 ], [ %109, %107 ]
  %114 = phi ptr [ %132, %111 ], [ %110, %107 ]
  %115 = load float, ptr %113, align 4, !tbaa !136
  %116 = load float, ptr %114, align 4, !tbaa !136
  %117 = getelementptr inbounds float, ptr %113, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !136
  %119 = getelementptr inbounds float, ptr %114, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !136
  %121 = fneg float %118
  %122 = fmul float %120, %121
  %123 = tail call float @llvm.fmuladd.f32(float %115, float %116, float %122)
  %124 = getelementptr inbounds float, ptr %112, i64 1
  store float %123, ptr %124, align 4, !tbaa !136
  %125 = load float, ptr %113, align 4, !tbaa !136
  %126 = load float, ptr %119, align 4, !tbaa !136
  %127 = load float, ptr %117, align 4, !tbaa !136
  %128 = load float, ptr %114, align 4, !tbaa !136
  %129 = fmul float %127, %128
  %130 = tail call float @llvm.fmuladd.f32(float %125, float %126, float %129)
  store float %130, ptr %112, align 4, !tbaa !136
  %131 = getelementptr inbounds float, ptr %112, i64 -2
  %132 = getelementptr inbounds float, ptr %114, i64 2
  %133 = getelementptr inbounds float, ptr %113, i64 4
  %134 = icmp eq ptr %133, %37
  br i1 %134, label %135, label %111, !llvm.loop !363

135:                                              ; preds = %111, %28
  %136 = phi ptr [ %32, %28 ], [ %132, %111 ]
  %137 = phi ptr [ %35, %28 ], [ %131, %111 ]
  %138 = icmp ult ptr %137, %29
  br i1 %138, label %167, label %139

139:                                              ; preds = %135
  %140 = getelementptr float, ptr %37, i64 -3
  br label %141

141:                                              ; preds = %139, %141
  %142 = phi ptr [ %163, %141 ], [ %137, %139 ]
  %143 = phi ptr [ %165, %141 ], [ %140, %139 ]
  %144 = phi ptr [ %164, %141 ], [ %136, %139 ]
  %145 = getelementptr inbounds float, ptr %143, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !136
  %147 = fneg float %146
  %148 = load float, ptr %144, align 4, !tbaa !136
  %149 = load float, ptr %143, align 4, !tbaa !136
  %150 = getelementptr inbounds float, ptr %144, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !136
  %152 = fmul float %149, %151
  %153 = call float @llvm.fmuladd.f32(float %147, float %148, float %152)
  %154 = getelementptr inbounds float, ptr %142, i64 1
  store float %153, ptr %154, align 4, !tbaa !136
  %155 = load float, ptr %145, align 4, !tbaa !136
  %156 = fneg float %155
  %157 = load float, ptr %150, align 4, !tbaa !136
  %158 = load float, ptr %143, align 4, !tbaa !136
  %159 = fneg float %158
  %160 = load float, ptr %144, align 4, !tbaa !136
  %161 = fmul float %160, %159
  %162 = call float @llvm.fmuladd.f32(float %156, float %157, float %161)
  store float %162, ptr %142, align 4, !tbaa !136
  %163 = getelementptr inbounds float, ptr %142, i64 -2
  %164 = getelementptr inbounds float, ptr %144, i64 2
  %165 = getelementptr inbounds float, ptr %143, i64 -4
  %166 = icmp ult ptr %163, %29
  br i1 %166, label %167, label %141, !llvm.loop !364

167:                                              ; preds = %141, %135
  %168 = getelementptr float, ptr %32, i64 %36
  %169 = getelementptr inbounds float, ptr %168, i64 -8
  %170 = icmp ult ptr %169, %32
  br i1 %170, label %241, label %171

171:                                              ; preds = %167
  %172 = sext i32 %6 to i64
  %173 = getelementptr inbounds float, ptr %0, i64 %172
  %174 = getelementptr inbounds float, ptr %29, i64 %172
  br label %175

175:                                              ; preds = %171, %175
  %176 = phi ptr [ %239, %175 ], [ %169, %171 ]
  %177 = phi ptr [ %176, %175 ], [ %168, %171 ]
  %178 = phi ptr [ %235, %175 ], [ %173, %171 ]
  %179 = phi ptr [ %236, %175 ], [ %0, %171 ]
  %180 = phi ptr [ %237, %175 ], [ %174, %171 ]
  %181 = phi ptr [ %238, %175 ], [ %29, %171 ]
  %182 = getelementptr inbounds float, ptr %180, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !136
  %184 = getelementptr inbounds float, ptr %181, i64 1
  %185 = load float, ptr %184, align 4, !tbaa !136
  %186 = fsub float %183, %185
  %187 = load float, ptr %180, align 4, !tbaa !136
  %188 = load float, ptr %181, align 4, !tbaa !136
  %189 = fsub float %187, %188
  %190 = fadd float %183, %185
  %191 = getelementptr inbounds float, ptr %178, i64 1
  store float %190, ptr %191, align 4, !tbaa !136
  %192 = load float, ptr %180, align 4, !tbaa !136
  %193 = load float, ptr %181, align 4, !tbaa !136
  %194 = fadd float %192, %193
  store float %194, ptr %178, align 4, !tbaa !136
  %195 = getelementptr inbounds float, ptr %177, i64 -4
  %196 = load float, ptr %195, align 4, !tbaa !136
  %197 = getelementptr inbounds float, ptr %177, i64 -3
  %198 = load float, ptr %197, align 4, !tbaa !136
  %199 = fneg float %189
  %200 = fmul float %198, %199
  %201 = call float @llvm.fmuladd.f32(float %186, float %196, float %200)
  %202 = getelementptr inbounds float, ptr %179, i64 1
  store float %201, ptr %202, align 4, !tbaa !136
  %203 = load float, ptr %195, align 4, !tbaa !136
  %204 = load float, ptr %197, align 4, !tbaa !136
  %205 = fmul float %186, %204
  %206 = call float @llvm.fmuladd.f32(float %189, float %203, float %205)
  store float %206, ptr %179, align 4, !tbaa !136
  %207 = getelementptr inbounds float, ptr %180, i64 3
  %208 = load float, ptr %207, align 4, !tbaa !136
  %209 = getelementptr inbounds float, ptr %181, i64 3
  %210 = load float, ptr %209, align 4, !tbaa !136
  %211 = fsub float %208, %210
  %212 = getelementptr inbounds float, ptr %180, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !136
  %214 = getelementptr inbounds float, ptr %181, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !136
  %216 = fsub float %213, %215
  %217 = fadd float %208, %210
  %218 = getelementptr inbounds float, ptr %178, i64 3
  store float %217, ptr %218, align 4, !tbaa !136
  %219 = load float, ptr %212, align 4, !tbaa !136
  %220 = load float, ptr %214, align 4, !tbaa !136
  %221 = fadd float %219, %220
  %222 = getelementptr inbounds float, ptr %178, i64 2
  store float %221, ptr %222, align 4, !tbaa !136
  %223 = load float, ptr %176, align 4, !tbaa !136
  %224 = getelementptr inbounds float, ptr %177, i64 -7
  %225 = load float, ptr %224, align 4, !tbaa !136
  %226 = fneg float %216
  %227 = fmul float %225, %226
  %228 = call float @llvm.fmuladd.f32(float %211, float %223, float %227)
  %229 = getelementptr inbounds float, ptr %179, i64 3
  store float %228, ptr %229, align 4, !tbaa !136
  %230 = load float, ptr %176, align 4, !tbaa !136
  %231 = load float, ptr %224, align 4, !tbaa !136
  %232 = fmul float %211, %231
  %233 = call float @llvm.fmuladd.f32(float %216, float %230, float %232)
  %234 = getelementptr inbounds float, ptr %179, i64 2
  store float %233, ptr %234, align 4, !tbaa !136
  %235 = getelementptr inbounds float, ptr %178, i64 4
  %236 = getelementptr inbounds float, ptr %179, i64 4
  %237 = getelementptr inbounds float, ptr %180, i64 4
  %238 = getelementptr inbounds float, ptr %181, i64 4
  %239 = getelementptr inbounds float, ptr %176, i64 -8
  %240 = icmp ult ptr %239, %32
  br i1 %240, label %241, label %175, !llvm.loop !365

241:                                              ; preds = %175, %167
  %242 = icmp slt i32 %1, 0
  br i1 %242, label %302, label %243

243:                                              ; preds = %241
  %244 = icmp ult i32 %1, 16384
  br i1 %244, label %245, label %268

245:                                              ; preds = %243
  %246 = icmp ult i32 %1, 16
  br i1 %246, label %247, label %252

247:                                              ; preds = %245
  %248 = zext nneg i32 %1 to i64
  %249 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !75
  %251 = sext i8 %250 to i32
  br label %302

252:                                              ; preds = %245
  %253 = icmp ult i32 %1, 512
  br i1 %253, label %254, label %261

254:                                              ; preds = %252
  %255 = lshr i32 %1, 5
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !75
  %259 = sext i8 %258 to i32
  %260 = add nsw i32 %259, 5
  br label %302

261:                                              ; preds = %252
  %262 = lshr i32 %1, 10
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !75
  %266 = sext i8 %265 to i32
  %267 = add nsw i32 %266, 10
  br label %302

268:                                              ; preds = %243
  %269 = icmp ult i32 %1, 16777216
  br i1 %269, label %270, label %286

270:                                              ; preds = %268
  %271 = icmp ult i32 %1, 524288
  br i1 %271, label %272, label %279

272:                                              ; preds = %270
  %273 = lshr i32 %1, 15
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !75
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %277, 15
  br label %302

279:                                              ; preds = %270
  %280 = lshr i32 %1, 20
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !75
  %284 = sext i8 %283 to i32
  %285 = add nsw i32 %284, 20
  br label %302

286:                                              ; preds = %268
  %287 = icmp ult i32 %1, 536870912
  br i1 %287, label %288, label %295

288:                                              ; preds = %286
  %289 = lshr i32 %1, 25
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %290
  %292 = load i8, ptr %291, align 1, !tbaa !75
  %293 = sext i8 %292 to i32
  %294 = add nsw i32 %293, 25
  br label %302

295:                                              ; preds = %286
  %296 = lshr i32 %1, 30
  %297 = zext nneg i32 %296 to i64
  %298 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !75
  %300 = sext i8 %299 to i32
  %301 = add nsw i32 %300, 30
  br label %302

302:                                              ; preds = %241, %247, %254, %261, %272, %279, %288, %295
  %303 = phi i32 [ %251, %247 ], [ %260, %254 ], [ %267, %261 ], [ %278, %272 ], [ %285, %279 ], [ %294, %288 ], [ %301, %295 ], [ 0, %241 ]
  %304 = ashr i32 %1, 4
  %305 = add nsw i32 %5, -1
  %306 = sub nsw i32 0, %7
  call fastcc void @imdct_step3_iter0_loop(i32 noundef %304, ptr noundef %0, i32 noundef %305, i32 noundef %306, ptr noundef nonnull %32)
  %307 = sub nsw i32 %305, %6
  call fastcc void @imdct_step3_iter0_loop(i32 noundef %304, ptr noundef %0, i32 noundef %307, i32 noundef %306, ptr noundef nonnull %32)
  %308 = ashr i32 %1, 5
  %309 = sub nsw i32 0, %304
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %308, ptr noundef %0, i32 noundef %305, i32 noundef %309, ptr noundef nonnull %32, i32 noundef 16)
  %310 = sub nsw i32 %305, %7
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %308, ptr noundef %0, i32 noundef %310, i32 noundef %309, ptr noundef nonnull %32, i32 noundef 16)
  %311 = shl nsw i32 %7, 1
  %312 = sub nsw i32 %305, %311
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %308, ptr noundef %0, i32 noundef %312, i32 noundef %309, ptr noundef nonnull %32, i32 noundef 16)
  %313 = mul nsw i32 %7, -3
  %314 = add nsw i32 %313, %305
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %308, ptr noundef %0, i32 noundef %314, i32 noundef %309, ptr noundef nonnull %32, i32 noundef 16)
  %315 = add nsw i32 %303, -4
  %316 = ashr i32 %315, 1
  %317 = icmp sgt i32 %316, 2
  br i1 %317, label %326, label %320

318:                                              ; preds = %339, %326
  %319 = icmp eq i32 %330, %316
  br i1 %319, label %320, label %326, !llvm.loop !366

320:                                              ; preds = %318, %302
  %321 = phi i32 [ 2, %302 ], [ %316, %318 ]
  %322 = add nsw i32 %303, -7
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %491

324:                                              ; preds = %320
  %325 = add nsw i64 %36, -1
  br label %347

326:                                              ; preds = %302, %318
  %327 = phi i32 [ %330, %318 ], [ 2, %302 ]
  %328 = add nuw nsw i32 %327, 2
  %329 = ashr i32 %1, %328
  %330 = add nuw nsw i32 %327, 1
  %331 = shl i32 2, %327
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %318

333:                                              ; preds = %326
  %334 = ashr i32 %329, 1
  %335 = add nuw nsw i32 %327, 4
  %336 = ashr i32 %1, %335
  %337 = sub nsw i32 0, %334
  %338 = shl i32 8, %327
  br label %339

339:                                              ; preds = %333, %339
  %340 = phi i32 [ 0, %333 ], [ %343, %339 ]
  %341 = mul nsw i32 %340, %329
  %342 = sub nsw i32 %305, %341
  call fastcc void @imdct_step3_inner_r_loop(i32 noundef %336, ptr noundef %0, i32 noundef %342, i32 noundef %337, ptr noundef nonnull %32, i32 noundef %338)
  %343 = add nuw nsw i32 %340, 1
  %344 = icmp eq i32 %343, %331
  br i1 %344, label %318, label %339, !llvm.loop !367

345:                                              ; preds = %486, %347
  %346 = icmp eq i32 %351, %322
  br i1 %346, label %491, label %347, !llvm.loop !368

347:                                              ; preds = %324, %345
  %348 = phi i32 [ %351, %345 ], [ %321, %324 ]
  %349 = add nuw nsw i32 %348, 6
  %350 = ashr i32 %1, %349
  %351 = add nuw nsw i32 %348, 1
  %352 = shl i32 2, %348
  %353 = icmp sgt i32 %350, 0
  br i1 %353, label %354, label %345

354:                                              ; preds = %347
  %355 = add nuw nsw i32 %348, 2
  %356 = ashr i32 %1, %355
  %357 = ashr i32 %356, 1
  %358 = shl i32 8, %348
  %359 = sext i32 %358 to i64
  %360 = shl i32 16, %348
  %361 = sext i32 %360 to i64
  %362 = or disjoint i32 %360, 1
  %363 = sext i32 %362 to i64
  %364 = mul nsw i32 %358, 3
  %365 = sext i32 %364 to i64
  %366 = icmp sgt i32 %352, 0
  %367 = sub nsw i32 0, %357
  %368 = sext i32 %367 to i64
  %369 = sext i32 %356 to i64
  %370 = sub nsw i64 0, %369
  %371 = shl i32 32, %348
  %372 = sext i32 %371 to i64
  br label %373

373:                                              ; preds = %354, %486
  %374 = phi i64 [ %325, %354 ], [ %488, %486 ]
  %375 = phi ptr [ %32, %354 ], [ %487, %486 ]
  %376 = phi i32 [ %350, %354 ], [ %489, %486 ]
  br i1 %366, label %377, label %486

377:                                              ; preds = %373
  %378 = getelementptr inbounds float, ptr %375, i64 %365
  %379 = getelementptr float, ptr %378, i64 1
  %380 = load float, ptr %379, align 4, !tbaa !136
  %381 = load float, ptr %378, align 4, !tbaa !136
  %382 = getelementptr inbounds float, ptr %375, i64 %363
  %383 = load float, ptr %382, align 4, !tbaa !136
  %384 = getelementptr inbounds float, ptr %375, i64 %361
  %385 = load float, ptr %384, align 4, !tbaa !136
  %386 = getelementptr inbounds float, ptr %375, i64 %359
  %387 = getelementptr float, ptr %386, i64 1
  %388 = load float, ptr %387, align 4, !tbaa !136
  %389 = load float, ptr %386, align 4, !tbaa !136
  %390 = getelementptr inbounds float, ptr %375, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !136
  %392 = load float, ptr %375, align 4, !tbaa !136
  %393 = getelementptr inbounds float, ptr %0, i64 %374
  %394 = getelementptr inbounds float, ptr %393, i64 %368
  %395 = insertelement <2 x float> poison, float %381, i64 0
  %396 = shufflevector <2 x float> %395, <2 x float> poison, <2 x i32> zeroinitializer
  %397 = insertelement <2 x float> poison, float %380, i64 0
  %398 = shufflevector <2 x float> %397, <2 x float> poison, <2 x i32> zeroinitializer
  %399 = insertelement <2 x float> poison, float %385, i64 0
  %400 = shufflevector <2 x float> %399, <2 x float> poison, <2 x i32> zeroinitializer
  %401 = insertelement <2 x float> poison, float %383, i64 0
  %402 = shufflevector <2 x float> %401, <2 x float> poison, <2 x i32> zeroinitializer
  %403 = insertelement <2 x float> poison, float %389, i64 0
  %404 = shufflevector <2 x float> %403, <2 x float> poison, <2 x i32> zeroinitializer
  %405 = insertelement <2 x float> poison, float %388, i64 0
  %406 = shufflevector <2 x float> %405, <2 x float> poison, <2 x i32> zeroinitializer
  %407 = insertelement <2 x float> poison, float %392, i64 0
  %408 = shufflevector <2 x float> %407, <2 x float> poison, <2 x i32> zeroinitializer
  %409 = insertelement <2 x float> poison, float %391, i64 0
  %410 = shufflevector <2 x float> %409, <2 x float> poison, <2 x i32> zeroinitializer
  br label %411

411:                                              ; preds = %411, %377
  %412 = phi ptr [ %394, %377 ], [ %483, %411 ]
  %413 = phi ptr [ %393, %377 ], [ %482, %411 ]
  %414 = phi i32 [ %352, %377 ], [ %484, %411 ]
  %415 = getelementptr inbounds float, ptr %413, i64 -1
  %416 = getelementptr inbounds float, ptr %412, i64 -1
  %417 = load <2 x float>, ptr %415, align 4, !tbaa !136
  %418 = load <2 x float>, ptr %416, align 4, !tbaa !136
  %419 = fsub <2 x float> %417, %418
  %420 = fadd <2 x float> %417, %418
  %421 = extractelement <2 x float> %420, i64 1
  store float %421, ptr %413, align 4, !tbaa !136
  %422 = load float, ptr %416, align 4, !tbaa !136
  %423 = extractelement <2 x float> %417, i64 0
  %424 = fadd float %423, %422
  store float %424, ptr %415, align 4, !tbaa !136
  %425 = extractelement <2 x float> %419, i64 0
  %426 = fneg float %425
  %427 = shufflevector <2 x float> %419, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %428 = insertelement <2 x float> %427, float %426, i64 1
  %429 = fmul <2 x float> %410, %428
  %430 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %419, <2 x float> %408, <2 x float> %429)
  store <2 x float> %430, ptr %416, align 4, !tbaa !136
  %431 = getelementptr inbounds float, ptr %413, i64 -2
  %432 = getelementptr inbounds float, ptr %413, i64 -3
  %433 = getelementptr inbounds float, ptr %412, i64 -3
  %434 = load <2 x float>, ptr %432, align 4, !tbaa !136
  %435 = load <2 x float>, ptr %433, align 4, !tbaa !136
  %436 = fsub <2 x float> %434, %435
  %437 = fadd <2 x float> %434, %435
  %438 = extractelement <2 x float> %437, i64 1
  store float %438, ptr %431, align 4, !tbaa !136
  %439 = load float, ptr %433, align 4, !tbaa !136
  %440 = extractelement <2 x float> %434, i64 0
  %441 = fadd float %440, %439
  store float %441, ptr %432, align 4, !tbaa !136
  %442 = extractelement <2 x float> %436, i64 0
  %443 = fneg float %442
  %444 = shufflevector <2 x float> %436, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %445 = insertelement <2 x float> %444, float %443, i64 1
  %446 = fmul <2 x float> %406, %445
  %447 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %436, <2 x float> %404, <2 x float> %446)
  store <2 x float> %447, ptr %433, align 4, !tbaa !136
  %448 = getelementptr inbounds float, ptr %413, i64 -4
  %449 = getelementptr inbounds float, ptr %413, i64 -5
  %450 = getelementptr inbounds float, ptr %412, i64 -5
  %451 = load <2 x float>, ptr %449, align 4, !tbaa !136
  %452 = load <2 x float>, ptr %450, align 4, !tbaa !136
  %453 = fsub <2 x float> %451, %452
  %454 = fadd <2 x float> %451, %452
  %455 = extractelement <2 x float> %454, i64 1
  store float %455, ptr %448, align 4, !tbaa !136
  %456 = load float, ptr %450, align 4, !tbaa !136
  %457 = extractelement <2 x float> %451, i64 0
  %458 = fadd float %457, %456
  store float %458, ptr %449, align 4, !tbaa !136
  %459 = extractelement <2 x float> %453, i64 0
  %460 = fneg float %459
  %461 = shufflevector <2 x float> %453, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %462 = insertelement <2 x float> %461, float %460, i64 1
  %463 = fmul <2 x float> %402, %462
  %464 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %453, <2 x float> %400, <2 x float> %463)
  store <2 x float> %464, ptr %450, align 4, !tbaa !136
  %465 = getelementptr inbounds float, ptr %413, i64 -6
  %466 = getelementptr inbounds float, ptr %413, i64 -7
  %467 = getelementptr inbounds float, ptr %412, i64 -7
  %468 = load <2 x float>, ptr %466, align 4, !tbaa !136
  %469 = load <2 x float>, ptr %467, align 4, !tbaa !136
  %470 = fsub <2 x float> %468, %469
  %471 = fadd <2 x float> %468, %469
  %472 = extractelement <2 x float> %471, i64 1
  store float %472, ptr %465, align 4, !tbaa !136
  %473 = load float, ptr %467, align 4, !tbaa !136
  %474 = extractelement <2 x float> %468, i64 0
  %475 = fadd float %474, %473
  store float %475, ptr %466, align 4, !tbaa !136
  %476 = extractelement <2 x float> %470, i64 0
  %477 = fneg float %476
  %478 = shufflevector <2 x float> %470, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %479 = insertelement <2 x float> %478, float %477, i64 1
  %480 = fmul <2 x float> %398, %479
  %481 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %470, <2 x float> %396, <2 x float> %480)
  store <2 x float> %481, ptr %467, align 4, !tbaa !136
  %482 = getelementptr inbounds float, ptr %413, i64 %370
  %483 = getelementptr inbounds float, ptr %412, i64 %370
  %484 = add nsw i32 %414, -1
  %485 = icmp ugt i32 %414, 1
  br i1 %485, label %411, label %486, !llvm.loop !369

486:                                              ; preds = %411, %373
  %487 = getelementptr inbounds float, ptr %375, i64 %372
  %488 = add nsw i64 %374, -8
  %489 = add nsw i32 %376, -1
  %490 = icmp sgt i32 %376, 1
  br i1 %490, label %373, label %345, !llvm.loop !370

491:                                              ; preds = %345, %320
  %492 = sext i32 %305 to i64
  %493 = getelementptr inbounds float, ptr %0, i64 %492
  %494 = mul nsw i32 %308, -16
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds float, ptr %493, i64 %495
  %497 = icmp sgt i32 %308, 0
  br i1 %497, label %498, label %585

498:                                              ; preds = %491
  %499 = sext i32 %7 to i64
  %500 = getelementptr inbounds float, ptr %32, i64 %499
  %501 = load float, ptr %500, align 4, !tbaa !136
  %502 = fneg float %501
  %503 = insertelement <2 x float> poison, float %501, i64 0
  %504 = shufflevector <2 x float> %503, <2 x float> poison, <2 x i32> zeroinitializer
  %505 = insertelement <2 x float> %504, float %502, i64 1
  br label %506

506:                                              ; preds = %506, %498
  %507 = phi ptr [ %493, %498 ], [ %583, %506 ]
  %508 = getelementptr inbounds float, ptr %507, i64 -8
  %509 = getelementptr inbounds float, ptr %507, i64 -1
  %510 = getelementptr inbounds float, ptr %507, i64 -9
  %511 = getelementptr inbounds float, ptr %507, i64 -10
  %512 = getelementptr inbounds float, ptr %507, i64 -3
  %513 = getelementptr inbounds float, ptr %507, i64 -11
  %514 = getelementptr inbounds float, ptr %507, i64 -12
  %515 = getelementptr inbounds float, ptr %507, i64 -5
  %516 = getelementptr inbounds float, ptr %507, i64 -13
  %517 = getelementptr inbounds float, ptr %507, i64 -14
  %518 = getelementptr inbounds float, ptr %507, i64 -7
  %519 = getelementptr inbounds float, ptr %507, i64 -15
  %520 = load <2 x float>, ptr %509, align 4, !tbaa !136
  %521 = load <2 x float>, ptr %510, align 4, !tbaa !136
  %522 = load <2 x float>, ptr %512, align 4, !tbaa !136
  %523 = load <2 x float>, ptr %513, align 4, !tbaa !136
  %524 = fadd <2 x float> %520, %521
  %525 = fadd <2 x float> %522, %523
  %526 = load <2 x float>, ptr %515, align 4, !tbaa !136
  %527 = load <2 x float>, ptr %516, align 4, !tbaa !136
  %528 = load <2 x float>, ptr %518, align 4, !tbaa !136
  %529 = load <2 x float>, ptr %519, align 4, !tbaa !136
  %530 = fadd <2 x float> %526, %527
  %531 = fadd <2 x float> %528, %529
  %532 = fsub <2 x float> %525, %531
  %533 = shufflevector <2 x float> %532, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %534 = fsub <2 x float> %524, %530
  %535 = shufflevector <2 x float> %534, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %536 = fadd <2 x float> %524, %530
  %537 = shufflevector <2 x float> %536, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %538 = fadd <2 x float> %525, %531
  %539 = shufflevector <2 x float> %538, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %540 = fsub <4 x float> %537, %539
  %541 = fadd <4 x float> %537, %539
  %542 = shufflevector <4 x float> %540, <4 x float> %541, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %542, ptr %512, align 4, !tbaa !136
  %543 = fadd <4 x float> %535, %533
  %544 = fsub <4 x float> %535, %533
  %545 = shufflevector <4 x float> %543, <4 x float> %544, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %545, ptr %518, align 4, !tbaa !136
  %546 = fsub <2 x float> %520, %521
  %547 = shufflevector <2 x float> %546, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %548 = fsub <2 x float> %526, %527
  %549 = shufflevector <2 x float> %528, <2 x float> %522, <2 x i32> <i32 1, i32 3>
  %550 = shufflevector <2 x float> %529, <2 x float> %523, <2 x i32> <i32 1, i32 3>
  %551 = fsub <2 x float> %549, %550
  %552 = shufflevector <2 x float> %528, <2 x float> %522, <2 x i32> <i32 0, i32 2>
  %553 = shufflevector <2 x float> %529, <2 x float> %523, <2 x i32> <i32 0, i32 2>
  %554 = fsub <2 x float> %552, %553
  %555 = fsub <2 x float> %554, %551
  %556 = fmul <2 x float> %504, %555
  %557 = fadd <2 x float> %551, %554
  %558 = shufflevector <2 x float> %557, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %559 = fmul <2 x float> %505, %558
  %560 = fsub <2 x float> %547, %548
  %561 = extractelement <2 x float> %560, i64 0
  %562 = fsub <2 x float> %559, %556
  %563 = extractelement <2 x float> %562, i64 0
  %564 = fadd <2 x float> %547, %548
  %565 = fsub <2 x float> %547, %548
  %566 = shufflevector <2 x float> %564, <2 x float> %565, <2 x i32> <i32 0, i32 3>
  %567 = fadd <2 x float> %556, %559
  %568 = fadd <2 x float> %566, %567
  %569 = extractelement <2 x float> %568, i64 0
  store float %569, ptr %508, align 4, !tbaa !136
  %570 = fsub <2 x float> %556, %559
  %571 = extractelement <2 x float> %570, i64 1
  %572 = fadd float %561, %571
  store float %572, ptr %514, align 4, !tbaa !136
  %573 = fsub float %561, %571
  store float %573, ptr %517, align 4, !tbaa !136
  %574 = fadd <2 x float> %547, %548
  %575 = extractelement <2 x float> %574, i64 1
  %576 = fsub <2 x float> %566, %567
  %577 = fadd <2 x float> %566, %567
  %578 = shufflevector <2 x float> %576, <2 x float> %577, <2 x i32> <i32 0, i32 3>
  store <2 x float> %578, ptr %511, align 4, !tbaa !136
  %579 = fsub <2 x float> %566, %567
  %580 = extractelement <2 x float> %579, i64 1
  store float %580, ptr %513, align 4, !tbaa !136
  %581 = fsub float %575, %563
  store float %581, ptr %516, align 4, !tbaa !136
  %582 = fadd float %575, %563
  store float %582, ptr %519, align 4, !tbaa !136
  %583 = getelementptr inbounds float, ptr %507, i64 -16
  %584 = icmp ugt ptr %583, %496
  br i1 %584, label %506, label %585, !llvm.loop !371

585:                                              ; preds = %506, %491
  %586 = add nsw i32 %5, -4
  %587 = sext i32 %586 to i64
  %588 = icmp slt i32 %6, 4
  br i1 %588, label %631, label %589

589:                                              ; preds = %585
  %590 = getelementptr inbounds float, ptr %29, i64 %587
  %591 = add nsw i32 %6, -4
  %592 = zext nneg i32 %591 to i64
  %593 = getelementptr inbounds float, ptr %29, i64 %592
  %594 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 51, i64 %30
  %595 = load ptr, ptr %594, align 8, !tbaa !16
  br label %596

596:                                              ; preds = %589, %596
  %597 = phi ptr [ %628, %596 ], [ %590, %589 ]
  %598 = phi ptr [ %627, %596 ], [ %593, %589 ]
  %599 = phi ptr [ %629, %596 ], [ %595, %589 ]
  %600 = load i16, ptr %599, align 2, !tbaa !109
  %601 = zext i16 %600 to i64
  %602 = getelementptr inbounds float, ptr %0, i64 %601
  %603 = load float, ptr %602, align 4, !tbaa !136
  %604 = getelementptr inbounds float, ptr %597, i64 3
  store float %603, ptr %604, align 4, !tbaa !136
  %605 = getelementptr float, ptr %602, i64 1
  %606 = load float, ptr %605, align 4, !tbaa !136
  %607 = getelementptr inbounds float, ptr %597, i64 2
  store float %606, ptr %607, align 4, !tbaa !136
  %608 = getelementptr float, ptr %602, i64 2
  %609 = load float, ptr %608, align 4, !tbaa !136
  %610 = getelementptr inbounds float, ptr %598, i64 3
  store float %609, ptr %610, align 4, !tbaa !136
  %611 = getelementptr float, ptr %602, i64 3
  %612 = load float, ptr %611, align 4, !tbaa !136
  %613 = getelementptr inbounds float, ptr %598, i64 2
  store float %612, ptr %613, align 4, !tbaa !136
  %614 = getelementptr inbounds i16, ptr %599, i64 1
  %615 = load i16, ptr %614, align 2, !tbaa !109
  %616 = zext i16 %615 to i64
  %617 = getelementptr inbounds float, ptr %0, i64 %616
  %618 = load float, ptr %617, align 4, !tbaa !136
  %619 = getelementptr inbounds float, ptr %597, i64 1
  store float %618, ptr %619, align 4, !tbaa !136
  %620 = getelementptr float, ptr %617, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !136
  store float %621, ptr %597, align 4, !tbaa !136
  %622 = getelementptr float, ptr %617, i64 2
  %623 = load float, ptr %622, align 4, !tbaa !136
  %624 = getelementptr inbounds float, ptr %598, i64 1
  store float %623, ptr %624, align 4, !tbaa !136
  %625 = getelementptr float, ptr %617, i64 3
  %626 = load float, ptr %625, align 4, !tbaa !136
  store float %626, ptr %598, align 4, !tbaa !136
  %627 = getelementptr inbounds float, ptr %598, i64 -4
  %628 = getelementptr inbounds float, ptr %597, i64 -4
  %629 = getelementptr inbounds i16, ptr %599, i64 2
  %630 = icmp ult ptr %627, %29
  br i1 %630, label %631, label %596, !llvm.loop !372

631:                                              ; preds = %596, %585
  %632 = getelementptr inbounds float, ptr %29, i64 %36
  %633 = getelementptr inbounds float, ptr %632, i64 -4
  %634 = icmp ult ptr %29, %633
  br i1 %634, label %635, label %694

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 49, i64 %30
  %637 = load ptr, ptr %636, align 8, !tbaa !16
  br label %638

638:                                              ; preds = %635, %638
  %639 = phi ptr [ %692, %638 ], [ %633, %635 ]
  %640 = phi ptr [ %639, %638 ], [ %632, %635 ]
  %641 = phi ptr [ %691, %638 ], [ %29, %635 ]
  %642 = phi ptr [ %690, %638 ], [ %637, %635 ]
  %643 = getelementptr inbounds float, ptr %640, i64 -2
  %644 = getelementptr inbounds float, ptr %642, i64 1
  %645 = load float, ptr %644, align 4, !tbaa !136
  %646 = load float, ptr %642, align 4, !tbaa !136
  %647 = fneg float %646
  %648 = load <2 x float>, ptr %641, align 4, !tbaa !136
  %649 = load <2 x float>, ptr %643, align 4, !tbaa !136
  %650 = fsub <2 x float> %648, %649
  %651 = fadd <2 x float> %648, %649
  %652 = shufflevector <2 x float> %650, <2 x float> %651, <2 x i32> <i32 0, i32 3>
  %653 = shufflevector <2 x float> %652, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %654 = insertelement <2 x float> poison, float %646, i64 0
  %655 = insertelement <2 x float> %654, float %647, i64 1
  %656 = fmul <2 x float> %653, %655
  %657 = insertelement <2 x float> poison, float %645, i64 0
  %658 = shufflevector <2 x float> %657, <2 x float> poison, <2 x i32> zeroinitializer
  %659 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %658, <2 x float> %652, <2 x float> %656)
  %660 = shufflevector <2 x float> %651, <2 x float> %650, <2 x i32> <i32 0, i32 3>
  %661 = fadd <2 x float> %660, %659
  store <2 x float> %661, ptr %641, align 4, !tbaa !136
  %662 = shufflevector <2 x float> %660, <2 x float> %659, <2 x i32> <i32 0, i32 3>
  %663 = shufflevector <2 x float> %659, <2 x float> %660, <2 x i32> <i32 0, i32 3>
  %664 = fsub <2 x float> %662, %663
  store <2 x float> %664, ptr %643, align 4, !tbaa !136
  %665 = getelementptr inbounds float, ptr %641, i64 2
  %666 = getelementptr inbounds float, ptr %640, i64 -3
  %667 = getelementptr inbounds float, ptr %642, i64 3
  %668 = load float, ptr %667, align 4, !tbaa !136
  %669 = getelementptr inbounds float, ptr %642, i64 2
  %670 = load float, ptr %669, align 4, !tbaa !136
  %671 = fneg float %670
  %672 = load <2 x float>, ptr %665, align 4, !tbaa !136
  %673 = load <2 x float>, ptr %639, align 4, !tbaa !136
  %674 = fsub <2 x float> %672, %673
  %675 = fadd <2 x float> %672, %673
  %676 = shufflevector <2 x float> %674, <2 x float> %675, <2 x i32> <i32 0, i32 3>
  %677 = shufflevector <2 x float> %676, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %678 = insertelement <2 x float> poison, float %670, i64 0
  %679 = insertelement <2 x float> %678, float %671, i64 1
  %680 = fmul <2 x float> %677, %679
  %681 = insertelement <2 x float> poison, float %668, i64 0
  %682 = shufflevector <2 x float> %681, <2 x float> poison, <2 x i32> zeroinitializer
  %683 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %682, <2 x float> %676, <2 x float> %680)
  %684 = shufflevector <2 x float> %675, <2 x float> %674, <2 x i32> <i32 0, i32 3>
  %685 = fadd <2 x float> %684, %683
  store <2 x float> %685, ptr %665, align 4, !tbaa !136
  %686 = fsub <2 x float> %684, %683
  %687 = extractelement <2 x float> %686, i64 0
  store float %687, ptr %639, align 4, !tbaa !136
  %688 = fsub <2 x float> %683, %684
  %689 = extractelement <2 x float> %688, i64 1
  store float %689, ptr %666, align 4, !tbaa !136
  %690 = getelementptr inbounds float, ptr %642, i64 4
  %691 = getelementptr inbounds float, ptr %641, i64 4
  %692 = getelementptr inbounds float, ptr %639, i64 -4
  %693 = icmp ult ptr %691, %692
  br i1 %693, label %638, label %694, !llvm.loop !373

694:                                              ; preds = %638, %631
  %695 = getelementptr inbounds float, ptr %632, i64 -8
  %696 = icmp ult ptr %695, %29
  br i1 %696, label %789, label %697

697:                                              ; preds = %694
  %698 = sext i32 %1 to i64
  %699 = getelementptr float, ptr %0, i64 %698
  %700 = getelementptr inbounds float, ptr %0, i64 %587
  %701 = getelementptr inbounds %struct.stb_vorbis, ptr %2, i64 0, i32 48, i64 %30
  %702 = load ptr, ptr %701, align 8, !tbaa !16
  %703 = getelementptr inbounds float, ptr %702, i64 %36
  br label %704

704:                                              ; preds = %697, %704
  %705 = phi ptr [ %787, %704 ], [ %695, %697 ]
  %706 = phi ptr [ %705, %704 ], [ %632, %697 ]
  %707 = phi ptr [ %712, %704 ], [ %703, %697 ]
  %708 = phi ptr [ %713, %704 ], [ %699, %697 ]
  %709 = phi ptr [ %785, %704 ], [ %37, %697 ]
  %710 = phi ptr [ %786, %704 ], [ %700, %697 ]
  %711 = phi ptr [ %784, %704 ], [ %0, %697 ]
  %712 = getelementptr inbounds float, ptr %707, i64 -8
  %713 = getelementptr inbounds float, ptr %708, i64 -4
  %714 = getelementptr inbounds float, ptr %706, i64 -2
  %715 = load float, ptr %714, align 4, !tbaa !136
  %716 = getelementptr inbounds float, ptr %707, i64 -1
  %717 = load float, ptr %716, align 4, !tbaa !136
  %718 = getelementptr inbounds float, ptr %706, i64 -1
  %719 = load float, ptr %718, align 4, !tbaa !136
  %720 = getelementptr inbounds float, ptr %707, i64 -2
  %721 = load float, ptr %720, align 4, !tbaa !136
  %722 = fneg float %719
  %723 = fmul float %721, %722
  %724 = call float @llvm.fmuladd.f32(float %715, float %717, float %723)
  %725 = fneg float %715
  %726 = fmul float %717, %722
  %727 = call float @llvm.fmuladd.f32(float %725, float %721, float %726)
  store float %724, ptr %711, align 4, !tbaa !136
  %728 = fneg float %724
  %729 = getelementptr inbounds float, ptr %710, i64 3
  store float %728, ptr %729, align 4, !tbaa !136
  store float %727, ptr %709, align 4, !tbaa !136
  %730 = getelementptr inbounds float, ptr %708, i64 -1
  store float %727, ptr %730, align 4, !tbaa !136
  %731 = getelementptr inbounds float, ptr %706, i64 -4
  %732 = load float, ptr %731, align 4, !tbaa !136
  %733 = getelementptr inbounds float, ptr %707, i64 -3
  %734 = load float, ptr %733, align 4, !tbaa !136
  %735 = getelementptr inbounds float, ptr %706, i64 -3
  %736 = load float, ptr %735, align 4, !tbaa !136
  %737 = getelementptr inbounds float, ptr %707, i64 -4
  %738 = load float, ptr %737, align 4, !tbaa !136
  %739 = fneg float %736
  %740 = fmul float %738, %739
  %741 = call float @llvm.fmuladd.f32(float %732, float %734, float %740)
  %742 = fneg float %732
  %743 = fmul float %734, %739
  %744 = call float @llvm.fmuladd.f32(float %742, float %738, float %743)
  %745 = getelementptr inbounds float, ptr %711, i64 1
  store float %741, ptr %745, align 4, !tbaa !136
  %746 = fneg float %741
  %747 = getelementptr inbounds float, ptr %710, i64 2
  store float %746, ptr %747, align 4, !tbaa !136
  %748 = getelementptr inbounds float, ptr %709, i64 1
  store float %744, ptr %748, align 4, !tbaa !136
  %749 = getelementptr inbounds float, ptr %708, i64 -2
  store float %744, ptr %749, align 4, !tbaa !136
  %750 = getelementptr inbounds float, ptr %706, i64 -6
  %751 = load float, ptr %750, align 4, !tbaa !136
  %752 = getelementptr inbounds float, ptr %707, i64 -5
  %753 = load float, ptr %752, align 4, !tbaa !136
  %754 = getelementptr inbounds float, ptr %706, i64 -5
  %755 = load float, ptr %754, align 4, !tbaa !136
  %756 = getelementptr inbounds float, ptr %707, i64 -6
  %757 = load float, ptr %756, align 4, !tbaa !136
  %758 = fneg float %755
  %759 = fmul float %757, %758
  %760 = call float @llvm.fmuladd.f32(float %751, float %753, float %759)
  %761 = fneg float %751
  %762 = fmul float %753, %758
  %763 = call float @llvm.fmuladd.f32(float %761, float %757, float %762)
  %764 = getelementptr inbounds float, ptr %711, i64 2
  store float %760, ptr %764, align 4, !tbaa !136
  %765 = fneg float %760
  %766 = getelementptr inbounds float, ptr %710, i64 1
  store float %765, ptr %766, align 4, !tbaa !136
  %767 = getelementptr inbounds float, ptr %709, i64 2
  store float %763, ptr %767, align 4, !tbaa !136
  %768 = getelementptr inbounds float, ptr %708, i64 -3
  store float %763, ptr %768, align 4, !tbaa !136
  %769 = load float, ptr %705, align 4, !tbaa !136
  %770 = getelementptr inbounds float, ptr %707, i64 -7
  %771 = load float, ptr %770, align 4, !tbaa !136
  %772 = getelementptr inbounds float, ptr %706, i64 -7
  %773 = load float, ptr %772, align 4, !tbaa !136
  %774 = load float, ptr %712, align 4, !tbaa !136
  %775 = fneg float %773
  %776 = fmul float %774, %775
  %777 = call float @llvm.fmuladd.f32(float %769, float %771, float %776)
  %778 = fneg float %769
  %779 = fmul float %771, %775
  %780 = call float @llvm.fmuladd.f32(float %778, float %774, float %779)
  %781 = getelementptr inbounds float, ptr %711, i64 3
  store float %777, ptr %781, align 4, !tbaa !136
  %782 = fneg float %777
  store float %782, ptr %710, align 4, !tbaa !136
  %783 = getelementptr inbounds float, ptr %709, i64 3
  store float %780, ptr %783, align 4, !tbaa !136
  store float %780, ptr %713, align 4, !tbaa !136
  %784 = getelementptr inbounds float, ptr %711, i64 4
  %785 = getelementptr inbounds float, ptr %709, i64 4
  %786 = getelementptr inbounds float, ptr %710, i64 -4
  %787 = getelementptr inbounds float, ptr %705, i64 -8
  %788 = icmp ult ptr %787, %29
  br i1 %788, label %789, label %704, !llvm.loop !374

789:                                              ; preds = %704, %694
  store i32 %9, ptr %8, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc ptr @setup_temp_malloc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = add nsw i32 %1, 7
  %4 = and i32 %3, -8
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %10 = load i32, ptr %9, align 4, !tbaa !127
  %11 = sub nsw i32 %10, %4
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %13 = load i32, ptr %12, align 8, !tbaa !175
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  store i32 %11, ptr %9, align 4, !tbaa !127
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds i8, ptr %6, i64 %16
  br label %21

18:                                               ; preds = %2
  %19 = sext i32 %4 to i64
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #29
  br label %21

21:                                               ; preds = %8, %18, %15
  %22 = phi ptr [ %17, %15 ], [ %20, %18 ], [ null, %8 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @codebook_decode_deinterleave_repeat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = load i32, ptr %4, align 4, !tbaa !54
  %10 = load i32, ptr %5, align 4, !tbaa !54
  %11 = load i32, ptr %1, align 8, !tbaa !182
  %12 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !190
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %8
  %16 = icmp sgt i32 %7, 0
  br i1 %16, label %17, label %176

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %21 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %22 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 8
  %24 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 15
  %25 = mul nsw i32 %6, %3
  %26 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 7
  %27 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 10
  br label %30

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 21, ptr %29, align 4
  br label %179

30:                                               ; preds = %17, %171
  %31 = phi i32 [ %7, %17 ], [ %174, %171 ]
  %32 = phi i32 [ %9, %17 ], [ %173, %171 ]
  %33 = phi i32 [ %11, %17 ], [ %104, %171 ]
  %34 = phi i32 [ %10, %17 ], [ %172, %171 ]
  %35 = load i32, ptr %18, align 8, !tbaa !93
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 0, ptr %19, align 4, !tbaa !110
  br label %40

40:                                               ; preds = %39, %37
  br label %41

41:                                               ; preds = %40, %50
  %42 = load i32, ptr %21, align 4, !tbaa !115
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr %20, align 4, !tbaa !116
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44, %41
  %48 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %18, align 8, !tbaa !93
  %52 = shl i32 %48, %51
  %53 = load i32, ptr %19, align 4, !tbaa !110
  %54 = add i32 %53, %52
  store i32 %54, ptr %19, align 4, !tbaa !110
  %55 = add nsw i32 %51, 8
  store i32 %55, ptr %18, align 8, !tbaa !93
  %56 = icmp slt i32 %51, 17
  br i1 %56, label %41, label %57, !llvm.loop !117

57:                                               ; preds = %50, %47, %44, %30
  %58 = load i32, ptr %19, align 4, !tbaa !110
  %59 = and i32 %58, 1023
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 12, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !109
  %63 = icmp sgt i16 %62, -1
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = zext nneg i16 %62 to i32
  %66 = load ptr, ptr %22, align 8, !tbaa !32
  %67 = zext nneg i16 %62 to i64
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !75
  %70 = zext i8 %69 to i32
  %71 = lshr i32 %58, %70
  store i32 %71, ptr %19, align 4, !tbaa !110
  %72 = load i32, ptr %18, align 8, !tbaa !93
  %73 = sub nsw i32 %72, %70
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 0)
  %75 = icmp sgt i32 %73, -1
  %76 = select i1 %75, i32 %65, i32 -1
  store i32 %74, ptr %18, align 8, !tbaa !93
  br label %79

77:                                               ; preds = %57
  %78 = tail call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %79

79:                                               ; preds = %77, %64
  %80 = phi i32 [ %76, %64 ], [ %78, %77 ]
  %81 = load i8, ptr %23, align 1, !tbaa !118
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %24, align 8, !tbaa !188
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1878, ptr noundef nonnull @__PRETTY_FUNCTION__.codebook_decode_deinterleave_repeat) #28
  unreachable

87:                                               ; preds = %79, %83
  %88 = icmp sgt i32 %80, -1
  br i1 %88, label %97, label %89

89:                                               ; preds = %87
  %90 = load i8, ptr %20, align 4, !tbaa !116
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %21, align 4, !tbaa !115
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %179

95:                                               ; preds = %92, %89
  %96 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 21, ptr %96, align 4
  br label %179

97:                                               ; preds = %87
  %98 = mul nsw i32 %34, %3
  %99 = add i32 %33, %98
  %100 = add i32 %99, %32
  %101 = icmp sgt i32 %100, %25
  %102 = sub i32 %25, %98
  %103 = add i32 %102, %32
  %104 = select i1 %101, i32 %103, i32 %33
  %105 = load i32, ptr %1, align 8, !tbaa !182
  %106 = mul nsw i32 %105, %80
  %107 = load i8, ptr %26, align 2, !tbaa !194
  %108 = icmp eq i8 %107, 0
  %109 = icmp sgt i32 %104, 0
  br i1 %108, label %116, label %110

110:                                              ; preds = %97
  br i1 %109, label %111, label %171

111:                                              ; preds = %110
  %112 = load ptr, ptr %27, align 8, !tbaa !33
  %113 = sext i32 %106 to i64
  %114 = zext nneg i32 %104 to i64
  %115 = getelementptr float, ptr %112, i64 %113
  br label %120

116:                                              ; preds = %97
  br i1 %109, label %117, label %171

117:                                              ; preds = %116
  %118 = sext i32 %106 to i64
  %119 = zext nneg i32 %104 to i64
  br label %145

120:                                              ; preds = %111, %137
  %121 = phi i64 [ 0, %111 ], [ %143, %137 ]
  %122 = phi i32 [ %32, %111 ], [ %142, %137 ]
  %123 = phi float [ 0.000000e+00, %111 ], [ %127, %137 ]
  %124 = phi i32 [ %34, %111 ], [ %141, %137 ]
  %125 = getelementptr float, ptr %115, i64 %121
  %126 = load float, ptr %125, align 4, !tbaa !136
  %127 = fadd float %123, %126
  %128 = sext i32 %122 to i64
  %129 = getelementptr inbounds ptr, ptr %2, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !16
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %120
  %133 = sext i32 %124 to i64
  %134 = getelementptr inbounds float, ptr %130, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !136
  %136 = fadd float %127, %135
  store float %136, ptr %134, align 4, !tbaa !136
  br label %137

137:                                              ; preds = %132, %120
  %138 = add nsw i32 %122, 1
  %139 = icmp eq i32 %138, %3
  %140 = zext i1 %139 to i32
  %141 = add nsw i32 %124, %140
  %142 = select i1 %139, i32 0, i32 %138
  %143 = add nuw nsw i64 %121, 1
  %144 = icmp eq i64 %143, %114
  br i1 %144, label %171, label %120, !llvm.loop !375

145:                                              ; preds = %117, %163
  %146 = phi i64 [ 0, %117 ], [ %169, %163 ]
  %147 = phi i32 [ %32, %117 ], [ %168, %163 ]
  %148 = phi i32 [ %34, %117 ], [ %167, %163 ]
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds ptr, ptr %2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !16
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %145
  %154 = load ptr, ptr %27, align 8, !tbaa !33
  %155 = getelementptr float, ptr %154, i64 %146
  %156 = getelementptr float, ptr %155, i64 %118
  %157 = load float, ptr %156, align 4, !tbaa !136
  %158 = fadd float %157, 0.000000e+00
  %159 = sext i32 %148 to i64
  %160 = getelementptr inbounds float, ptr %151, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !136
  %162 = fadd float %161, %158
  store float %162, ptr %160, align 4, !tbaa !136
  br label %163

163:                                              ; preds = %153, %145
  %164 = add nsw i32 %147, 1
  %165 = icmp eq i32 %164, %3
  %166 = zext i1 %165 to i32
  %167 = add nsw i32 %148, %166
  %168 = select i1 %165, i32 0, i32 %164
  %169 = add nuw nsw i64 %146, 1
  %170 = icmp eq i64 %169, %119
  br i1 %170, label %171, label %145, !llvm.loop !376

171:                                              ; preds = %137, %163, %110, %116
  %172 = phi i32 [ %34, %116 ], [ %34, %110 ], [ %167, %163 ], [ %141, %137 ]
  %173 = phi i32 [ %32, %116 ], [ %32, %110 ], [ %168, %163 ], [ %142, %137 ]
  %174 = sub nsw i32 %31, %104
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %30, label %176

176:                                              ; preds = %171, %15
  %177 = phi i32 [ %10, %15 ], [ %172, %171 ]
  %178 = phi i32 [ %9, %15 ], [ %173, %171 ]
  store i32 %178, ptr %4, align 4, !tbaa !54
  store i32 %177, ptr %5, align 4, !tbaa !54
  br label %179

179:                                              ; preds = %95, %92, %176, %28
  %180 = phi i32 [ 0, %28 ], [ 1, %176 ], [ 0, %92 ], [ 0, %95 ]
  ret i32 %180
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codebook_decode_start(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !190
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  store i32 0, ptr %13, align 4, !tbaa !110
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  br label %18

18:                                               ; preds = %27, %14
  %19 = load i32, ptr %16, align 4, !tbaa !115
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr %15, align 4, !tbaa !116
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21, %18
  %25 = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !range !92
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %7, align 8, !tbaa !93
  %29 = shl i32 %25, %28
  %30 = load i32, ptr %17, align 4, !tbaa !110
  %31 = add i32 %30, %29
  store i32 %31, ptr %17, align 4, !tbaa !110
  %32 = add nsw i32 %28, 8
  store i32 %32, ptr %7, align 8, !tbaa !93
  %33 = icmp slt i32 %28, 17
  br i1 %33, label %18, label %34, !llvm.loop !117

34:                                               ; preds = %27, %24, %21, %6
  %35 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 62
  %36 = load i32, ptr %35, align 4, !tbaa !110
  %37 = and i32 %36, 1023
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 12, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !109
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = zext nneg i16 %40 to i32
  %44 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = zext nneg i16 %40 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !75
  %49 = zext i8 %48 to i32
  %50 = lshr i32 %36, %49
  store i32 %50, ptr %35, align 4, !tbaa !110
  %51 = load i32, ptr %7, align 8, !tbaa !93
  %52 = sub nsw i32 %51, %49
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0)
  %54 = icmp sgt i32 %52, -1
  %55 = select i1 %54, i32 %43, i32 -1
  store i32 %53, ptr %7, align 8, !tbaa !93
  br label %58

56:                                               ; preds = %34
  %57 = tail call fastcc i32 @codebook_decode_scalar_raw(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i32 [ %55, %42 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 8
  %61 = load i8, ptr %60, align 1, !tbaa !118
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.Codebook, ptr %1, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !188
  %66 = icmp slt i32 %59, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1784, ptr noundef nonnull @__PRETTY_FUNCTION__.codebook_decode_start) #28
  unreachable

68:                                               ; preds = %63, %58
  %69 = icmp slt i32 %59, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  %72 = load i8, ptr %71, align 4, !tbaa !116
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  %76 = load i32, ptr %75, align 4, !tbaa !115
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70, %74, %2
  %79 = phi i32 [ -1, %2 ], [ %59, %74 ], [ %59, %70 ]
  %80 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 21, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %68, %74
  %82 = phi i32 [ %59, %74 ], [ %59, %68 ], [ %79, %78 ]
  ret i32 %82
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @imdct_step3_iter0_loop(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = and i32 %0, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 2414, ptr noundef nonnull @__PRETTY_FUNCTION__.imdct_step3_iter0_loop) #28
  unreachable

9:                                                ; preds = %5
  %10 = ashr exact i32 %0, 2
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %120

12:                                               ; preds = %9
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds float, ptr %1, i64 %13
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds float, ptr %14, i64 %15
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %115, %17 ], [ %4, %12 ]
  %19 = phi ptr [ %116, %17 ], [ %14, %12 ]
  %20 = phi i32 [ %118, %17 ], [ %10, %12 ]
  %21 = phi ptr [ %117, %17 ], [ %16, %12 ]
  %22 = load float, ptr %19, align 4, !tbaa !136
  %23 = load float, ptr %21, align 4, !tbaa !136
  %24 = fsub float %22, %23
  %25 = getelementptr inbounds float, ptr %19, i64 -1
  %26 = load float, ptr %25, align 4, !tbaa !136
  %27 = getelementptr inbounds float, ptr %21, i64 -1
  %28 = load float, ptr %27, align 4, !tbaa !136
  %29 = fsub float %26, %28
  %30 = fadd float %22, %23
  store float %30, ptr %19, align 4, !tbaa !136
  %31 = load float, ptr %27, align 4, !tbaa !136
  %32 = fadd float %26, %31
  store float %32, ptr %25, align 4, !tbaa !136
  %33 = load float, ptr %18, align 4, !tbaa !136
  %34 = getelementptr inbounds float, ptr %18, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !136
  %36 = fneg float %29
  %37 = fmul float %35, %36
  %38 = tail call float @llvm.fmuladd.f32(float %24, float %33, float %37)
  store float %38, ptr %21, align 4, !tbaa !136
  %39 = load float, ptr %18, align 4, !tbaa !136
  %40 = load float, ptr %34, align 4, !tbaa !136
  %41 = fmul float %24, %40
  %42 = tail call float @llvm.fmuladd.f32(float %29, float %39, float %41)
  store float %42, ptr %27, align 4, !tbaa !136
  %43 = getelementptr inbounds float, ptr %18, i64 8
  %44 = getelementptr inbounds float, ptr %19, i64 -2
  %45 = load float, ptr %44, align 4, !tbaa !136
  %46 = getelementptr inbounds float, ptr %21, i64 -2
  %47 = load float, ptr %46, align 4, !tbaa !136
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds float, ptr %19, i64 -3
  %50 = load float, ptr %49, align 4, !tbaa !136
  %51 = getelementptr inbounds float, ptr %21, i64 -3
  %52 = load float, ptr %51, align 4, !tbaa !136
  %53 = fsub float %50, %52
  %54 = fadd float %45, %47
  store float %54, ptr %44, align 4, !tbaa !136
  %55 = load float, ptr %51, align 4, !tbaa !136
  %56 = fadd float %50, %55
  store float %56, ptr %49, align 4, !tbaa !136
  %57 = load float, ptr %43, align 4, !tbaa !136
  %58 = getelementptr inbounds float, ptr %18, i64 9
  %59 = load float, ptr %58, align 4, !tbaa !136
  %60 = fneg float %53
  %61 = fmul float %59, %60
  %62 = tail call float @llvm.fmuladd.f32(float %48, float %57, float %61)
  store float %62, ptr %46, align 4, !tbaa !136
  %63 = load float, ptr %43, align 4, !tbaa !136
  %64 = load float, ptr %58, align 4, !tbaa !136
  %65 = fmul float %48, %64
  %66 = tail call float @llvm.fmuladd.f32(float %53, float %63, float %65)
  store float %66, ptr %51, align 4, !tbaa !136
  %67 = getelementptr inbounds float, ptr %18, i64 16
  %68 = getelementptr inbounds float, ptr %19, i64 -4
  %69 = load float, ptr %68, align 4, !tbaa !136
  %70 = getelementptr inbounds float, ptr %21, i64 -4
  %71 = load float, ptr %70, align 4, !tbaa !136
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds float, ptr %19, i64 -5
  %74 = load float, ptr %73, align 4, !tbaa !136
  %75 = getelementptr inbounds float, ptr %21, i64 -5
  %76 = load float, ptr %75, align 4, !tbaa !136
  %77 = fsub float %74, %76
  %78 = fadd float %69, %71
  store float %78, ptr %68, align 4, !tbaa !136
  %79 = load float, ptr %75, align 4, !tbaa !136
  %80 = fadd float %74, %79
  store float %80, ptr %73, align 4, !tbaa !136
  %81 = load float, ptr %67, align 4, !tbaa !136
  %82 = getelementptr inbounds float, ptr %18, i64 17
  %83 = load float, ptr %82, align 4, !tbaa !136
  %84 = fneg float %77
  %85 = fmul float %83, %84
  %86 = tail call float @llvm.fmuladd.f32(float %72, float %81, float %85)
  store float %86, ptr %70, align 4, !tbaa !136
  %87 = load float, ptr %67, align 4, !tbaa !136
  %88 = load float, ptr %82, align 4, !tbaa !136
  %89 = fmul float %72, %88
  %90 = tail call float @llvm.fmuladd.f32(float %77, float %87, float %89)
  store float %90, ptr %75, align 4, !tbaa !136
  %91 = getelementptr inbounds float, ptr %18, i64 24
  %92 = getelementptr inbounds float, ptr %19, i64 -6
  %93 = load float, ptr %92, align 4, !tbaa !136
  %94 = getelementptr inbounds float, ptr %21, i64 -6
  %95 = load float, ptr %94, align 4, !tbaa !136
  %96 = fsub float %93, %95
  %97 = getelementptr inbounds float, ptr %19, i64 -7
  %98 = load float, ptr %97, align 4, !tbaa !136
  %99 = getelementptr inbounds float, ptr %21, i64 -7
  %100 = load float, ptr %99, align 4, !tbaa !136
  %101 = fsub float %98, %100
  %102 = fadd float %93, %95
  store float %102, ptr %92, align 4, !tbaa !136
  %103 = load float, ptr %99, align 4, !tbaa !136
  %104 = fadd float %98, %103
  store float %104, ptr %97, align 4, !tbaa !136
  %105 = load float, ptr %91, align 4, !tbaa !136
  %106 = getelementptr inbounds float, ptr %18, i64 25
  %107 = load float, ptr %106, align 4, !tbaa !136
  %108 = fneg float %101
  %109 = fmul float %107, %108
  %110 = tail call float @llvm.fmuladd.f32(float %96, float %105, float %109)
  store float %110, ptr %94, align 4, !tbaa !136
  %111 = load float, ptr %91, align 4, !tbaa !136
  %112 = load float, ptr %106, align 4, !tbaa !136
  %113 = fmul float %96, %112
  %114 = tail call float @llvm.fmuladd.f32(float %101, float %111, float %113)
  store float %114, ptr %99, align 4, !tbaa !136
  %115 = getelementptr inbounds float, ptr %18, i64 32
  %116 = getelementptr inbounds float, ptr %19, i64 -8
  %117 = getelementptr inbounds float, ptr %21, i64 -8
  %118 = add nsw i32 %20, -1
  %119 = icmp ugt i32 %20, 1
  br i1 %119, label %17, label %120, !llvm.loop !377

120:                                              ; preds = %17, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @imdct_step3_inner_r_loop(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #6 {
  %7 = ashr i32 %0, 2
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %118

9:                                                ; preds = %6
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds float, ptr %1, i64 %10
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds float, ptr %11, i64 %12
  %14 = sext i32 %5 to i64
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %13, %9 ], [ %114, %15 ]
  %17 = phi ptr [ %11, %9 ], [ %113, %15 ]
  %18 = phi ptr [ %4, %9 ], [ %115, %15 ]
  %19 = phi i32 [ %7, %9 ], [ %116, %15 ]
  %20 = load float, ptr %17, align 4, !tbaa !136
  %21 = load float, ptr %16, align 4, !tbaa !136
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float, ptr %17, i64 -1
  %24 = load float, ptr %23, align 4, !tbaa !136
  %25 = getelementptr inbounds float, ptr %16, i64 -1
  %26 = load float, ptr %25, align 4, !tbaa !136
  %27 = fsub float %24, %26
  %28 = fadd float %20, %21
  store float %28, ptr %17, align 4, !tbaa !136
  %29 = load float, ptr %25, align 4, !tbaa !136
  %30 = fadd float %24, %29
  store float %30, ptr %23, align 4, !tbaa !136
  %31 = load float, ptr %18, align 4, !tbaa !136
  %32 = getelementptr inbounds float, ptr %18, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !136
  %34 = fneg float %27
  %35 = fmul float %33, %34
  %36 = tail call float @llvm.fmuladd.f32(float %22, float %31, float %35)
  store float %36, ptr %16, align 4, !tbaa !136
  %37 = load float, ptr %18, align 4, !tbaa !136
  %38 = load float, ptr %32, align 4, !tbaa !136
  %39 = fmul float %22, %38
  %40 = tail call float @llvm.fmuladd.f32(float %27, float %37, float %39)
  store float %40, ptr %25, align 4, !tbaa !136
  %41 = getelementptr inbounds float, ptr %18, i64 %14
  %42 = getelementptr inbounds float, ptr %17, i64 -2
  %43 = load float, ptr %42, align 4, !tbaa !136
  %44 = getelementptr inbounds float, ptr %16, i64 -2
  %45 = load float, ptr %44, align 4, !tbaa !136
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds float, ptr %17, i64 -3
  %48 = load float, ptr %47, align 4, !tbaa !136
  %49 = getelementptr inbounds float, ptr %16, i64 -3
  %50 = load float, ptr %49, align 4, !tbaa !136
  %51 = fsub float %48, %50
  %52 = fadd float %43, %45
  store float %52, ptr %42, align 4, !tbaa !136
  %53 = load float, ptr %49, align 4, !tbaa !136
  %54 = fadd float %48, %53
  store float %54, ptr %47, align 4, !tbaa !136
  %55 = load float, ptr %41, align 4, !tbaa !136
  %56 = getelementptr inbounds float, ptr %41, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !136
  %58 = fneg float %51
  %59 = fmul float %57, %58
  %60 = tail call float @llvm.fmuladd.f32(float %46, float %55, float %59)
  store float %60, ptr %44, align 4, !tbaa !136
  %61 = load float, ptr %41, align 4, !tbaa !136
  %62 = load float, ptr %56, align 4, !tbaa !136
  %63 = fmul float %46, %62
  %64 = tail call float @llvm.fmuladd.f32(float %51, float %61, float %63)
  store float %64, ptr %49, align 4, !tbaa !136
  %65 = getelementptr inbounds float, ptr %41, i64 %14
  %66 = getelementptr inbounds float, ptr %17, i64 -4
  %67 = load float, ptr %66, align 4, !tbaa !136
  %68 = getelementptr inbounds float, ptr %16, i64 -4
  %69 = load float, ptr %68, align 4, !tbaa !136
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds float, ptr %17, i64 -5
  %72 = load float, ptr %71, align 4, !tbaa !136
  %73 = getelementptr inbounds float, ptr %16, i64 -5
  %74 = load float, ptr %73, align 4, !tbaa !136
  %75 = fsub float %72, %74
  %76 = fadd float %67, %69
  store float %76, ptr %66, align 4, !tbaa !136
  %77 = load float, ptr %73, align 4, !tbaa !136
  %78 = fadd float %72, %77
  store float %78, ptr %71, align 4, !tbaa !136
  %79 = load float, ptr %65, align 4, !tbaa !136
  %80 = getelementptr inbounds float, ptr %65, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !136
  %82 = fneg float %75
  %83 = fmul float %81, %82
  %84 = tail call float @llvm.fmuladd.f32(float %70, float %79, float %83)
  store float %84, ptr %68, align 4, !tbaa !136
  %85 = load float, ptr %65, align 4, !tbaa !136
  %86 = load float, ptr %80, align 4, !tbaa !136
  %87 = fmul float %70, %86
  %88 = tail call float @llvm.fmuladd.f32(float %75, float %85, float %87)
  store float %88, ptr %73, align 4, !tbaa !136
  %89 = getelementptr inbounds float, ptr %65, i64 %14
  %90 = getelementptr inbounds float, ptr %17, i64 -6
  %91 = load float, ptr %90, align 4, !tbaa !136
  %92 = getelementptr inbounds float, ptr %16, i64 -6
  %93 = load float, ptr %92, align 4, !tbaa !136
  %94 = fsub float %91, %93
  %95 = getelementptr inbounds float, ptr %17, i64 -7
  %96 = load float, ptr %95, align 4, !tbaa !136
  %97 = getelementptr inbounds float, ptr %16, i64 -7
  %98 = load float, ptr %97, align 4, !tbaa !136
  %99 = fsub float %96, %98
  %100 = fadd float %91, %93
  store float %100, ptr %90, align 4, !tbaa !136
  %101 = load float, ptr %97, align 4, !tbaa !136
  %102 = fadd float %96, %101
  store float %102, ptr %95, align 4, !tbaa !136
  %103 = load float, ptr %89, align 4, !tbaa !136
  %104 = getelementptr inbounds float, ptr %89, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !136
  %106 = fneg float %99
  %107 = fmul float %105, %106
  %108 = tail call float @llvm.fmuladd.f32(float %94, float %103, float %107)
  store float %108, ptr %92, align 4, !tbaa !136
  %109 = load float, ptr %89, align 4, !tbaa !136
  %110 = load float, ptr %104, align 4, !tbaa !136
  %111 = fmul float %94, %110
  %112 = tail call float @llvm.fmuladd.f32(float %99, float %109, float %111)
  store float %112, ptr %97, align 4, !tbaa !136
  %113 = getelementptr inbounds float, ptr %17, i64 -8
  %114 = getelementptr inbounds float, ptr %16, i64 -8
  %115 = getelementptr inbounds float, ptr %89, i64 %14
  %116 = add nsw i32 %19, -1
  %117 = icmp ugt i32 %19, 1
  br i1 %117, label %15, label %118, !llvm.loop !378

118:                                              ; preds = %15, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @start_packet(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 59
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 56
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i32, ptr %2, align 8, !tbaa !86
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @start_page(ptr noundef nonnull %0), !range !103
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %3, align 1, !tbaa !153
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %4, label %14, !llvm.loop !271

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 32, ptr %15, align 4
  br label %21

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 60
  store i32 0, ptr %17, align 4, !tbaa !115
  %18 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  store i32 0, ptr %18, align 8, !tbaa !93
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 64
  store i32 0, ptr %19, align 4, !tbaa !268
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 57
  store i8 0, ptr %20, align 4, !tbaa !116
  br label %21

21:                                               ; preds = %7, %16, %14
  %22 = phi i32 [ 0, %14 ], [ 1, %16 ], [ 0, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get32_packet(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 63
  store i32 0, ptr %3, align 8, !tbaa !93
  %4 = tail call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  store i32 0, ptr %3, align 8, !tbaa !93
  %5 = shl nsw i32 %4, 8
  %6 = add i32 %5, %2
  %7 = tail call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  store i32 0, ptr %3, align 8, !tbaa !93
  %8 = shl nsw i32 %7, 16
  %9 = add i32 %6, %8
  %10 = tail call fastcc i32 @get8_packet_raw(ptr noundef %0), !range !92
  store i32 0, ptr %3, align 8, !tbaa !93
  %11 = shl i32 %10, 24
  %12 = add i32 %9, %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc ptr @setup_malloc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = add nsw i32 %1, 7
  %4 = and i32 %3, -8
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !174
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !174
  %8 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %13 = load i32, ptr %12, align 8, !tbaa !175
  %14 = add nsw i32 %13, %4
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %16 = load i32, ptr %15, align 4, !tbaa !127
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds i8, ptr %9, i64 %19
  store i32 %14, ptr %12, align 8, !tbaa !175
  br label %26

21:                                               ; preds = %2
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = sext i32 %4 to i64
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #29
  br label %26

26:                                               ; preds = %23, %21, %18, %11
  %27 = phi ptr [ %20, %18 ], [ null, %11 ], [ %25, %23 ], [ null, %21 ]
  ret ptr %27
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @skip(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  store ptr %8, ptr %3, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %13, align 8, !tbaa !94
  br label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = tail call i64 @ftell(ptr noundef %16)
  %18 = load ptr, ptr %15, align 8, !tbaa !48
  %19 = sext i32 %1 to i64
  %20 = add nsw i64 %17, %19
  %21 = tail call i32 @fseek(ptr noundef %18, i64 noundef %20, i32 noundef 0)
  br label %22

22:                                               ; preds = %6, %12, %14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @crc32_init() unnamed_addr #18 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %38, %1 ]
  %3 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %39, %1 ]
  %4 = shl <4 x i32> %3, <i32 25, i32 25, i32 25, i32 25>
  %5 = and <4 x i32> %3, <i32 128, i32 128, i32 128, i32 128>
  %6 = icmp eq <4 x i32> %5, zeroinitializer
  %7 = select <4 x i1> %6, <4 x i32> zeroinitializer, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>
  %8 = xor <4 x i32> %7, %4
  %9 = shl <4 x i32> %8, <i32 1, i32 1, i32 1, i32 1>
  %10 = icmp slt <4 x i32> %8, zeroinitializer
  %11 = select <4 x i1> %10, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %12 = xor <4 x i32> %11, %9
  %13 = shl <4 x i32> %12, <i32 1, i32 1, i32 1, i32 1>
  %14 = icmp slt <4 x i32> %12, zeroinitializer
  %15 = select <4 x i1> %14, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %16 = xor <4 x i32> %15, %13
  %17 = shl <4 x i32> %16, <i32 1, i32 1, i32 1, i32 1>
  %18 = icmp slt <4 x i32> %16, zeroinitializer
  %19 = select <4 x i1> %18, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %20 = xor <4 x i32> %19, %17
  %21 = shl <4 x i32> %20, <i32 1, i32 1, i32 1, i32 1>
  %22 = icmp slt <4 x i32> %20, zeroinitializer
  %23 = select <4 x i1> %22, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %24 = xor <4 x i32> %23, %21
  %25 = shl <4 x i32> %24, <i32 1, i32 1, i32 1, i32 1>
  %26 = icmp slt <4 x i32> %24, zeroinitializer
  %27 = select <4 x i1> %26, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %28 = xor <4 x i32> %27, %25
  %29 = shl <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>
  %30 = icmp slt <4 x i32> %28, zeroinitializer
  %31 = select <4 x i1> %30, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %32 = xor <4 x i32> %31, %29
  %33 = shl <4 x i32> %32, <i32 1, i32 1, i32 1, i32 1>
  %34 = icmp slt <4 x i32> %32, zeroinitializer
  %35 = select <4 x i1> %34, <4 x i32> <i32 79764919, i32 79764919, i32 79764919, i32 79764919>, <4 x i32> zeroinitializer
  %36 = xor <4 x i32> %35, %33
  %37 = getelementptr inbounds [256 x i32], ptr @crc_table, i64 0, i64 %2
  store <4 x i32> %36, ptr %37, align 16, !tbaa !54
  %38 = add nuw i64 %2, 4
  %39 = add <4 x i32> %3, <i32 4, i32 4, i32 4, i32 4>
  %40 = icmp eq i64 %38, 256
  br i1 %40, label %41, label %1, !llvm.loop !379

41:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @compute_codewords(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i64 [ 0, %7 ], [ %15, %14 ]
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !75
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %22, label %9, !llvm.loop !380

17:                                               ; preds = %9
  %18 = trunc i64 %10 to i32
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi i32 [ 0, %4 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %22, label %27

22:                                               ; preds = %14, %19
  %23 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !188
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %157, label %26

26:                                               ; preds = %22
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1094, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_codewords) #28
  unreachable

27:                                               ; preds = %19
  %28 = zext nneg i32 %20 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !75
  %31 = icmp ult i8 %30, 32
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1095, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_codewords) #28
  unreachable

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 8
  %35 = load i8, ptr %34, align 1, !tbaa !118
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  br i1 %36, label %39, label %41

39:                                               ; preds = %33
  %40 = getelementptr inbounds i32, ptr %38, i64 %28
  store i32 0, ptr %40, align 4, !tbaa !54
  br label %44

41:                                               ; preds = %33
  store i32 0, ptr %38, align 4, !tbaa !54
  %42 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  store i8 %30, ptr %43, align 1, !tbaa !75
  store i32 %20, ptr %3, align 4, !tbaa !54
  br label %44

44:                                               ; preds = %39, %41
  %45 = load i8, ptr %29, align 1, !tbaa !75
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %44
  %48 = zext i8 %45 to i64
  %49 = and i64 %48, 3
  %50 = icmp ult i8 %45, 4
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = and i64 %48, 252
  br label %72

53:                                               ; preds = %72, %47
  %54 = phi i64 [ 1, %47 ], [ %94, %72 ]
  %55 = icmp eq i64 %49, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %63, %56 ], [ %54, %53 ]
  %58 = phi i64 [ %64, %56 ], [ 0, %53 ]
  %59 = trunc i64 %57 to i32
  %60 = sub i32 32, %59
  %61 = shl nuw i32 1, %60
  %62 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %57
  store i32 %61, ptr %62, align 4, !tbaa !54
  %63 = add nuw nsw i64 %57, 1
  %64 = add i64 %58, 1
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %56, !llvm.loop !381

66:                                               ; preds = %53, %56, %44
  %67 = add nuw nsw i32 %20, 1
  %68 = icmp slt i32 %67, %2
  br i1 %68, label %69, label %157

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 2
  %71 = zext i32 %67 to i64
  br label %97

72:                                               ; preds = %72, %51
  %73 = phi i64 [ 1, %51 ], [ %94, %72 ]
  %74 = phi i64 [ 0, %51 ], [ %95, %72 ]
  %75 = trunc i64 %73 to i32
  %76 = sub i32 32, %75
  %77 = shl nuw i32 1, %76
  %78 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %73
  store i32 %77, ptr %78, align 4, !tbaa !54
  %79 = add nuw nsw i64 %73, 1
  %80 = trunc i64 %79 to i32
  %81 = sub i32 32, %80
  %82 = shl nuw i32 1, %81
  %83 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %79
  store i32 %82, ptr %83, align 4, !tbaa !54
  %84 = add nuw nsw i64 %73, 2
  %85 = trunc i64 %84 to i32
  %86 = sub i32 32, %85
  %87 = shl nuw i32 1, %86
  %88 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %84
  store i32 %87, ptr %88, align 4, !tbaa !54
  %89 = add nuw nsw i64 %73, 3
  %90 = trunc i64 %89 to i32
  %91 = sub i32 32, %90
  %92 = shl nuw i32 1, %91
  %93 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %89
  store i32 %92, ptr %93, align 4, !tbaa !54
  %94 = add nuw nsw i64 %73, 4
  %95 = add i64 %74, 4
  %96 = icmp eq i64 %95, %52
  br i1 %96, label %53, label %72, !llvm.loop !382

97:                                               ; preds = %69, %152
  %98 = phi i64 [ %71, %69 ], [ %154, %152 ]
  %99 = phi i32 [ 1, %69 ], [ %153, %152 ]
  %100 = getelementptr inbounds i8, ptr %1, i64 %98
  %101 = load i8, ptr %100, align 1, !tbaa !75
  %102 = icmp eq i8 %101, -1
  br i1 %102, label %152, label %103

103:                                              ; preds = %97
  %104 = icmp ult i8 %101, 32
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  %106 = icmp eq i8 %101, 0
  br i1 %106, label %157, label %107

107:                                              ; preds = %105
  %108 = zext nneg i8 %101 to i32
  br label %110

109:                                              ; preds = %103
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1109, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_codewords) #28
  unreachable

110:                                              ; preds = %107, %116
  %111 = phi i32 [ %117, %116 ], [ %108, %107 ]
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !54
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = add nsw i32 %111, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %157, label %110, !llvm.loop !383

119:                                              ; preds = %110
  %120 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %112
  store i32 0, ptr %120, align 4, !tbaa !54
  %121 = tail call noundef i32 @llvm.bitreverse.i32(i32 %114)
  %122 = add nsw i32 %99, 1
  %123 = load i8, ptr %34, align 1, !tbaa !118
  %124 = icmp eq i8 %123, 0
  %125 = load ptr, ptr %37, align 8, !tbaa !34
  br i1 %124, label %126, label %128

126:                                              ; preds = %119
  %127 = getelementptr inbounds i32, ptr %125, i64 %98
  store i32 %121, ptr %127, align 4, !tbaa !54
  br label %135

128:                                              ; preds = %119
  %129 = sext i32 %99 to i64
  %130 = getelementptr inbounds i32, ptr %125, i64 %129
  store i32 %121, ptr %130, align 4, !tbaa !54
  %131 = load ptr, ptr %70, align 8, !tbaa !32
  %132 = getelementptr inbounds i8, ptr %131, i64 %129
  store i8 %101, ptr %132, align 1, !tbaa !75
  %133 = getelementptr inbounds i32, ptr %3, i64 %129
  %134 = trunc i64 %98 to i32
  store i32 %134, ptr %133, align 4, !tbaa !54
  br label %135

135:                                              ; preds = %126, %128
  %136 = load i8, ptr %100, align 1, !tbaa !75
  %137 = zext i8 %136 to i32
  %138 = icmp slt i32 %111, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135, %146
  %140 = phi i32 [ %150, %146 ], [ %137, %135 ]
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !54
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1124, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_codewords) #28
  unreachable

146:                                              ; preds = %139
  %147 = sub nsw i32 32, %140
  %148 = shl nuw nsw i32 1, %147
  %149 = add i32 %148, %114
  store i32 %149, ptr %142, align 4, !tbaa !54
  %150 = add nsw i32 %140, -1
  %151 = icmp sgt i32 %150, %111
  br i1 %151, label %139, label %152, !llvm.loop !384

152:                                              ; preds = %146, %97, %135
  %153 = phi i32 [ %122, %135 ], [ %99, %97 ], [ %122, %146 ]
  %154 = add nuw nsw i64 %98, 1
  %155 = trunc i64 %154 to i32
  %156 = icmp slt i32 %155, %2
  br i1 %156, label %97, label %157, !llvm.loop !385

157:                                              ; preds = %152, %105, %116, %66, %22
  %158 = phi i32 [ 1, %22 ], [ 1, %66 ], [ 0, %116 ], [ 0, %105 ], [ 1, %152 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #27
  ret i32 %158
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_sorted_huffman(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !118
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 15
  %9 = load i32, ptr %8, align 8, !tbaa !188
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  br label %53

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 11
  %22 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 13
  br label %23

23:                                               ; preds = %20, %41
  %24 = phi i32 [ %18, %20 ], [ %42, %41 ]
  %25 = phi i64 [ 0, %20 ], [ %44, %41 ]
  %26 = phi i32 [ 0, %20 ], [ %43, %41 ]
  %27 = getelementptr inbounds i8, ptr %1, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !75
  %29 = add i8 %28, 1
  %30 = icmp ult i8 %29, 12
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %21, align 8, !tbaa !34
  %33 = getelementptr inbounds i32, ptr %32, i64 %25
  %34 = load i32, ptr %33, align 4, !tbaa !54
  %35 = tail call noundef i32 @llvm.bitreverse.i32(i32 %34)
  %36 = load ptr, ptr %22, align 8, !tbaa !35
  %37 = add nsw i32 %26, 1
  %38 = sext i32 %26 to i64
  %39 = getelementptr inbounds i32, ptr %36, i64 %38
  store i32 %35, ptr %39, align 4, !tbaa !54
  %40 = load i32, ptr %17, align 4, !tbaa !25
  br label %41

41:                                               ; preds = %23, %31
  %42 = phi i32 [ %40, %31 ], [ %24, %23 ]
  %43 = phi i32 [ %37, %31 ], [ %26, %23 ]
  %44 = add nuw nsw i64 %25, 1
  %45 = sext i32 %42 to i64
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %23, label %47, !llvm.loop !386

47:                                               ; preds = %41, %16
  %48 = phi i32 [ 0, %16 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 15
  %50 = load i32, ptr %49, align 8, !tbaa !188
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1191, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_sorted_huffman) #28
  unreachable

53:                                               ; preds = %11, %53
  %54 = phi i64 [ 0, %11 ], [ %59, %53 ]
  %55 = getelementptr inbounds i32, ptr %13, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !54
  %57 = tail call noundef i32 @llvm.bitreverse.i32(i32 %56)
  %58 = getelementptr inbounds i32, ptr %15, i64 %54
  store i32 %57, ptr %58, align 4, !tbaa !54
  %59 = add nuw nsw i64 %54, 1
  %60 = load i32, ptr %8, align 8, !tbaa !188
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %53, label %63, !llvm.loop !387

63:                                               ; preds = %53, %7, %47
  %64 = phi i32 [ %9, %7 ], [ %48, %47 ], [ %60, %53 ]
  %65 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 13
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 15
  %68 = sext i32 %64 to i64
  tail call void @qsort(ptr noundef %66, i64 noundef %68, i64 noundef 4, ptr noundef nonnull @uint32_compare) #27
  %69 = load ptr, ptr %65, align 8, !tbaa !35
  %70 = load i32, ptr %67, align 8, !tbaa !188
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %69, i64 %71
  store i32 -1, ptr %72, align 4, !tbaa !54
  %73 = load i8, ptr %4, align 1, !tbaa !118
  %74 = icmp eq i8 %73, 0
  %75 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 1
  %76 = select i1 %74, ptr %75, ptr %67
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %145

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 11
  %81 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 14
  %82 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 2
  %83 = zext nneg i32 %77 to i64
  br label %84

84:                                               ; preds = %79, %142
  %85 = phi i64 [ 0, %79 ], [ %143, %142 ]
  %86 = load i8, ptr %4, align 1, !tbaa !118
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i32, ptr %2, i64 %85
  %90 = load i32, ptr %89, align 4, !tbaa !54
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %1, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !75
  %94 = icmp eq i8 %93, -1
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1171, ptr noundef nonnull @__PRETTY_FUNCTION__.include_in_sort) #28
  unreachable

96:                                               ; preds = %84
  %97 = getelementptr inbounds i8, ptr %1, i64 %85
  %98 = load i8, ptr %97, align 1, !tbaa !75
  %99 = add i8 %98, 1
  %100 = icmp ult i8 %99, 12
  br i1 %100, label %142, label %101

101:                                              ; preds = %96, %88
  %102 = phi i8 [ %93, %88 ], [ %98, %96 ]
  %103 = load ptr, ptr %80, align 8, !tbaa !34
  %104 = getelementptr inbounds i32, ptr %103, i64 %85
  %105 = load i32, ptr %104, align 4, !tbaa !54
  %106 = tail call noundef i32 @llvm.bitreverse.i32(i32 %105)
  %107 = load i32, ptr %67, align 8, !tbaa !188
  %108 = icmp sgt i32 %107, 1
  %109 = load ptr, ptr %65, align 8, !tbaa !35
  br i1 %108, label %110, label %123

110:                                              ; preds = %101, %110
  %111 = phi i32 [ %121, %110 ], [ %107, %101 ]
  %112 = phi i32 [ %120, %110 ], [ 0, %101 ]
  %113 = lshr i32 %111, 1
  %114 = add nsw i32 %113, %112
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %109, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = icmp ugt i32 %117, %106
  %119 = sub nsw i32 %111, %113
  %120 = select i1 %118, i32 %112, i32 %114
  %121 = select i1 %118, i32 %113, i32 %119
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %110, label %123, !llvm.loop !388

123:                                              ; preds = %110, %101
  %124 = phi i32 [ 0, %101 ], [ %120, %110 ]
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %109, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !54
  %128 = icmp eq i32 %127, %106
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1221, ptr noundef nonnull @__PRETTY_FUNCTION__.compute_sorted_huffman) #28
  unreachable

130:                                              ; preds = %123
  br i1 %87, label %138, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds i32, ptr %2, i64 %85
  %133 = load i32, ptr %132, align 4, !tbaa !54
  %134 = load ptr, ptr %81, align 8, !tbaa !36
  %135 = getelementptr inbounds i32, ptr %134, i64 %125
  store i32 %133, ptr %135, align 4, !tbaa !54
  %136 = load ptr, ptr %82, align 8, !tbaa !32
  %137 = getelementptr inbounds i8, ptr %136, i64 %125
  store i8 %102, ptr %137, align 1, !tbaa !75
  br label %142

138:                                              ; preds = %130
  %139 = load ptr, ptr %81, align 8, !tbaa !36
  %140 = getelementptr inbounds i32, ptr %139, i64 %125
  %141 = trunc i64 %85 to i32
  store i32 %141, ptr %140, align 4, !tbaa !54
  br label %142

142:                                              ; preds = %96, %131, %138
  %143 = add nuw nsw i64 %85, 1
  %144 = icmp eq i64 %143, %83
  br i1 %144, label %145, label %84, !llvm.loop !389

145:                                              ; preds = %142, %63
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compute_accelerated_huffman(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = getelementptr i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(2048) %2, i8 -1, i64 2048, i1 false), !tbaa !109
  %3 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 1, !tbaa !118
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 15
  %7 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 1
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 32767)
  %13 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 13
  %16 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 11
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %11, %47
  %19 = phi i64 [ 0, %11 ], [ %48, %47 ]
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !75
  %22 = icmp ult i8 %21, 11
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  br i1 %5, label %29, label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %15, align 8, !tbaa !35
  %26 = getelementptr inbounds i32, ptr %25, i64 %19
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = tail call noundef i32 @llvm.bitreverse.i32(i32 %27)
  br label %33

29:                                               ; preds = %23
  %30 = load ptr, ptr %16, align 8, !tbaa !34
  %31 = getelementptr inbounds i32, ptr %30, i64 %19
  %32 = load i32, ptr %31, align 4, !tbaa !54
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %28, %24 ], [ %32, %29 ]
  %35 = icmp ult i32 %34, 1024
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = trunc i64 %19 to i16
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i32 [ %34, %36 ], [ %45, %38 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.Codebook, ptr %0, i64 0, i32 12, i64 %40
  store i16 %37, ptr %41, align 2, !tbaa !109
  %42 = load i8, ptr %20, align 1, !tbaa !75
  %43 = zext nneg i8 %42 to i32
  %44 = shl nuw i32 1, %43
  %45 = add nuw i32 %44, %39
  %46 = icmp ult i32 %45, 1024
  br i1 %46, label %38, label %47, !llvm.loop !390

47:                                               ; preds = %38, %33, %18
  %48 = add nuw nsw i64 %19, 1
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %50, label %18, !llvm.loop !391

50:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal fastcc float @float32_unpack(i32 noundef %0) unnamed_addr #20 {
  %2 = and i32 %0, 2097151
  %3 = uitofp i32 %2 to double
  %4 = fneg double %3
  %5 = icmp slt i32 %0, 0
  %6 = select i1 %5, double %4, double %3
  %7 = lshr i32 %0, 21
  %8 = and i32 %7, 1023
  %9 = fptrunc double %6 to float
  %10 = fpext float %9 to double
  %11 = add nsw i32 %8, -788
  %12 = tail call double @ldexp(double noundef %10, i32 noundef %11) #27
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc i32 @lookup1_values(i32 noundef %0, i32 noundef %1) unnamed_addr #21 {
  %3 = sitofp i32 %0 to float
  %4 = fpext float %3 to double
  %5 = tail call double @log(double noundef %4) #27
  %6 = fptrunc double %5 to float
  %7 = sitofp i32 %1 to float
  %8 = fdiv float %6, %7
  %9 = fpext float %8 to double
  %10 = tail call double @exp(double noundef %9) #27
  %11 = tail call double @llvm.floor.f64(double %10)
  %12 = fptosi double %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fadd float %13, 1.000000e+00
  %15 = fpext float %14 to double
  %16 = sitofp i32 %1 to double
  %17 = tail call double @pow(double noundef %15, double noundef %16) #27
  %18 = tail call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32
  %20 = icmp sle i32 %19, %0
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %21, %12
  %23 = sitofp i32 %22 to float
  %24 = fadd float %23, 1.000000e+00
  %25 = fpext float %24 to double
  %26 = tail call double @pow(double noundef %25, double noundef %16) #27
  %27 = sitofp i32 %0 to double
  %28 = fcmp ugt double %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = fpext float %23 to double
  %31 = tail call double @pow(double noundef %30, double noundef %16) #27
  %32 = tail call double @llvm.floor.f64(double %31)
  %33 = fptosi double %32 to i32
  %34 = icmp sgt i32 %33, %0
  %35 = select i1 %34, i32 -1, i32 %22
  br label %36

36:                                               ; preds = %29, %2
  %37 = phi i32 [ -1, %2 ], [ %35, %29 ]
  ret i32 %37
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @point_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i16, ptr %0, align 2, !tbaa !219
  %4 = load i16, ptr %1, align 2, !tbaa !219
  %5 = icmp ult i16 %3, %4
  %6 = icmp ugt i16 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @init_blocksize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = and i32 %2, -4
  %5 = shl i32 %2, 1
  %6 = and i32 %5, -4
  %7 = add nsw i32 %6, 7
  %8 = and i32 %7, -8
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !174
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %17 = load i32, ptr %16, align 8, !tbaa !175
  %18 = add nsw i32 %17, %8
  %19 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %20 = load i32, ptr %19, align 4, !tbaa !127
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %15
  %23 = sext i32 %17 to i64
  %24 = getelementptr inbounds i8, ptr %13, i64 %23
  store i32 %18, ptr %16, align 8, !tbaa !175
  %25 = add nsw i32 %18, %8
  br label %31

26:                                               ; preds = %3
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %26
  %29 = zext nneg i32 %1 to i64
  %30 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 47, i64 %29
  store ptr null, ptr %30, align 8, !tbaa !16
  br label %61

31:                                               ; preds = %22, %15
  %32 = phi i32 [ %25, %22 ], [ %18, %15 ]
  %33 = phi i32 [ %18, %22 ], [ %17, %15 ]
  %34 = phi ptr [ %24, %22 ], [ null, %15 ]
  %35 = zext nneg i32 %1 to i64
  %36 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 47, i64 %35
  store ptr %34, ptr %36, align 8, !tbaa !16
  %37 = add i32 %11, %8
  %38 = icmp sgt i32 %32, %20
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = sext i32 %33 to i64
  %41 = getelementptr inbounds i8, ptr %13, i64 %40
  store i32 %32, ptr %16, align 8, !tbaa !175
  br label %49

42:                                               ; preds = %26
  %43 = sext i32 %8 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #29
  %45 = zext nneg i32 %1 to i64
  %46 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 47, i64 %45
  store ptr %44, ptr %46, align 8, !tbaa !16
  %47 = add i32 %11, %8
  %48 = tail call noalias ptr @malloc(i64 noundef %43) #29
  br label %61

49:                                               ; preds = %39, %31
  %50 = phi i32 [ %32, %39 ], [ %33, %31 ]
  %51 = phi ptr [ %41, %39 ], [ null, %31 ]
  %52 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 48, i64 %35
  store ptr %51, ptr %52, align 8, !tbaa !16
  %53 = add nsw i32 %4, 7
  %54 = and i32 %53, -8
  %55 = add i32 %37, %54
  store i32 %55, ptr %9, align 8, !tbaa !174
  %56 = add nsw i32 %50, %54
  %57 = icmp sgt i32 %56, %20
  br i1 %57, label %74, label %58

58:                                               ; preds = %49
  %59 = sext i32 %50 to i64
  %60 = getelementptr inbounds i8, ptr %13, i64 %59
  store i32 %56, ptr %16, align 8, !tbaa !175
  br label %74

61:                                               ; preds = %28, %42
  %62 = phi i32 [ %11, %28 ], [ %47, %42 ]
  %63 = phi ptr [ %30, %28 ], [ %46, %42 ]
  %64 = phi i64 [ %29, %28 ], [ %45, %42 ]
  %65 = phi ptr [ null, %28 ], [ %48, %42 ]
  %66 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 48, i64 %64
  store ptr %65, ptr %66, align 8, !tbaa !16
  %67 = add nsw i32 %4, 7
  %68 = and i32 %67, -8
  %69 = add i32 %62, %68
  store i32 %69, ptr %9, align 8, !tbaa !174
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = sext i32 %68 to i64
  %73 = tail call noalias ptr @malloc(i64 noundef %72) #29
  br label %74

74:                                               ; preds = %49, %58, %61, %71
  %75 = phi ptr [ %51, %58 ], [ %51, %49 ], [ %65, %71 ], [ %65, %61 ]
  %76 = phi i64 [ %35, %58 ], [ %35, %49 ], [ %64, %71 ], [ %64, %61 ]
  %77 = phi ptr [ %36, %58 ], [ %36, %49 ], [ %63, %71 ], [ %63, %61 ]
  %78 = phi ptr [ %60, %58 ], [ null, %49 ], [ %73, %71 ], [ null, %61 ]
  %79 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 49, i64 %76
  store ptr %78, ptr %79, align 8, !tbaa !16
  %80 = load ptr, ptr %77, align 8, !tbaa !16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %325, label %82

82:                                               ; preds = %74
  %83 = icmp eq ptr %75, null
  %84 = icmp eq ptr %78, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %325, label %86

86:                                               ; preds = %82
  %87 = ashr i32 %2, 2
  %88 = ashr i32 %2, 3
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = sitofp i32 %2 to double
  br label %96

92:                                               ; preds = %96, %86
  %93 = icmp sgt i32 %88, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %92
  %95 = sitofp i32 %2 to double
  br label %127

96:                                               ; preds = %96, %90
  %97 = phi i64 [ 0, %90 ], [ %125, %96 ]
  %98 = phi i32 [ 0, %90 ], [ %124, %96 ]
  %99 = shl nsw i32 %98, 2
  %100 = sitofp i32 %99 to double
  %101 = fmul double %100, 0x400921FB54442D18
  %102 = fdiv double %101, %91
  %103 = tail call double @cos(double noundef %102) #27
  %104 = fptrunc double %103 to float
  %105 = getelementptr inbounds float, ptr %80, i64 %97
  store float %104, ptr %105, align 4, !tbaa !136
  %106 = tail call double @sin(double noundef %102) #27
  %107 = fptrunc double %106 to float
  %108 = fneg float %107
  %109 = or disjoint i64 %97, 1
  %110 = getelementptr inbounds float, ptr %80, i64 %109
  store float %108, ptr %110, align 4, !tbaa !136
  %111 = trunc i64 %109 to i32
  %112 = sitofp i32 %111 to double
  %113 = fmul double %112, 0x400921FB54442D18
  %114 = fdiv double %113, %91
  %115 = fmul double %114, 5.000000e-01
  %116 = tail call double @cos(double noundef %115) #27
  %117 = fptrunc double %116 to float
  %118 = fmul float %117, 5.000000e-01
  %119 = getelementptr inbounds float, ptr %75, i64 %97
  store float %118, ptr %119, align 4, !tbaa !136
  %120 = tail call double @sin(double noundef %115) #27
  %121 = fptrunc double %120 to float
  %122 = fmul float %121, 5.000000e-01
  %123 = getelementptr inbounds float, ptr %75, i64 %109
  store float %122, ptr %123, align 4, !tbaa !136
  %124 = add nuw nsw i32 %98, 1
  %125 = add nuw nsw i64 %97, 2
  %126 = icmp eq i32 %124, %87
  br i1 %126, label %92, label %96, !llvm.loop !392

127:                                              ; preds = %127, %94
  %128 = phi i64 [ 0, %94 ], [ %144, %127 ]
  %129 = phi i32 [ 0, %94 ], [ %143, %127 ]
  %130 = or disjoint i64 %128, 1
  %131 = trunc i64 %130 to i32
  %132 = shl i32 %131, 1
  %133 = sitofp i32 %132 to double
  %134 = fmul double %133, 0x400921FB54442D18
  %135 = fdiv double %134, %95
  %136 = tail call double @cos(double noundef %135) #27
  %137 = fptrunc double %136 to float
  %138 = getelementptr inbounds float, ptr %78, i64 %128
  store float %137, ptr %138, align 4, !tbaa !136
  %139 = tail call double @sin(double noundef %135) #27
  %140 = fptrunc double %139 to float
  %141 = fneg float %140
  %142 = getelementptr inbounds float, ptr %78, i64 %130
  store float %141, ptr %142, align 4, !tbaa !136
  %143 = add nuw nsw i32 %129, 1
  %144 = add nuw nsw i64 %128, 2
  %145 = icmp eq i32 %143, %88
  br i1 %145, label %146, label %127, !llvm.loop !393

146:                                              ; preds = %127, %92
  %147 = load i32, ptr %9, align 8, !tbaa !174
  %148 = add i32 %147, %8
  store i32 %148, ptr %9, align 8, !tbaa !174
  %149 = load ptr, ptr %12, align 8, !tbaa !5
  %150 = icmp eq ptr %149, null
  br i1 %150, label %161, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %153 = load i32, ptr %152, align 8, !tbaa !175
  %154 = add nsw i32 %153, %8
  %155 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %156 = load i32, ptr %155, align 4, !tbaa !127
  %157 = icmp sgt i32 %154, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %151
  %159 = sext i32 %153 to i64
  %160 = getelementptr inbounds i8, ptr %149, i64 %159
  store i32 %154, ptr %152, align 8, !tbaa !175
  br label %168

161:                                              ; preds = %146
  %162 = icmp eq i32 %8, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %161
  %164 = sext i32 %8 to i64
  %165 = tail call noalias ptr @malloc(i64 noundef %164) #29
  br label %168

166:                                              ; preds = %151, %161
  %167 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50, i64 %76
  br label %323

168:                                              ; preds = %158, %163
  %169 = phi ptr [ %160, %158 ], [ %165, %163 ]
  %170 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 50, i64 %76
  store ptr %169, ptr %170, align 8, !tbaa !16
  %171 = icmp eq ptr %169, null
  br i1 %171, label %325, label %172

172:                                              ; preds = %168
  %173 = ashr i32 %2, 1
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  %176 = sitofp i32 %173 to double
  %177 = zext nneg i32 %173 to i64
  br label %178

178:                                              ; preds = %178, %175
  %179 = phi i64 [ 0, %175 ], [ %194, %178 ]
  %180 = trunc i64 %179 to i32
  %181 = sitofp i32 %180 to double
  %182 = fadd double %181, 5.000000e-01
  %183 = fdiv double %182, %176
  %184 = fmul double %183, 5.000000e-01
  %185 = fmul double %184, 0x400921FB54442D18
  %186 = tail call double @sin(double noundef %185) #27
  %187 = fptrunc double %186 to float
  %188 = fmul float %187, %187
  %189 = fpext float %188 to double
  %190 = fmul double %189, 0x3FF921FB54442D18
  %191 = tail call double @sin(double noundef %190) #27
  %192 = fptrunc double %191 to float
  %193 = getelementptr inbounds float, ptr %169, i64 %179
  store float %192, ptr %193, align 4, !tbaa !136
  %194 = add nuw nsw i64 %179, 1
  %195 = icmp eq i64 %194, %177
  br i1 %195, label %196, label %178, !llvm.loop !394

196:                                              ; preds = %178
  %197 = load i32, ptr %9, align 8, !tbaa !174
  br label %198

198:                                              ; preds = %196, %172
  %199 = phi i32 [ %197, %196 ], [ %148, %172 ]
  %200 = and i32 %87, -2
  %201 = add nsw i32 %200, 7
  %202 = and i32 %201, -8
  %203 = add i32 %199, %202
  store i32 %203, ptr %9, align 8, !tbaa !174
  %204 = load ptr, ptr %12, align 8, !tbaa !5
  %205 = icmp eq ptr %204, null
  br i1 %205, label %216, label %206

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 20
  %208 = load i32, ptr %207, align 8, !tbaa !175
  %209 = add nsw i32 %208, %202
  %210 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 21
  %211 = load i32, ptr %210, align 4, !tbaa !127
  %212 = icmp sgt i32 %209, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %206
  %214 = sext i32 %208 to i64
  %215 = getelementptr inbounds i8, ptr %204, i64 %214
  store i32 %209, ptr %207, align 8, !tbaa !175
  br label %223

216:                                              ; preds = %198
  %217 = icmp eq i32 %202, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %216
  %219 = sext i32 %202 to i64
  %220 = tail call noalias ptr @malloc(i64 noundef %219) #29
  br label %223

221:                                              ; preds = %206, %216
  %222 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 51, i64 %76
  br label %323

223:                                              ; preds = %213, %218
  %224 = phi ptr [ %215, %213 ], [ %220, %218 ]
  %225 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 51, i64 %76
  store ptr %224, ptr %225, align 8, !tbaa !16
  %226 = icmp eq ptr %224, null
  br i1 %226, label %325, label %227

227:                                              ; preds = %223
  %228 = icmp slt i32 %2, 0
  br i1 %228, label %288, label %229

229:                                              ; preds = %227
  %230 = icmp ult i32 %2, 16384
  br i1 %230, label %231, label %254

231:                                              ; preds = %229
  %232 = icmp ult i32 %2, 16
  br i1 %232, label %233, label %238

233:                                              ; preds = %231
  %234 = zext nneg i32 %2 to i64
  %235 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !75
  %237 = sext i8 %236 to i32
  br label %288

238:                                              ; preds = %231
  %239 = icmp ult i32 %2, 512
  br i1 %239, label %240, label %247

240:                                              ; preds = %238
  %241 = lshr i32 %2, 5
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !75
  %245 = sext i8 %244 to i32
  %246 = add nsw i32 %245, 5
  br label %288

247:                                              ; preds = %238
  %248 = lshr i32 %2, 10
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !75
  %252 = sext i8 %251 to i32
  %253 = add nsw i32 %252, 10
  br label %288

254:                                              ; preds = %229
  %255 = icmp ult i32 %2, 16777216
  br i1 %255, label %256, label %272

256:                                              ; preds = %254
  %257 = icmp ult i32 %2, 524288
  br i1 %257, label %258, label %265

258:                                              ; preds = %256
  %259 = lshr i32 %2, 15
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !75
  %263 = sext i8 %262 to i32
  %264 = add nsw i32 %263, 15
  br label %288

265:                                              ; preds = %256
  %266 = lshr i32 %2, 20
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !75
  %270 = sext i8 %269 to i32
  %271 = add nsw i32 %270, 20
  br label %288

272:                                              ; preds = %254
  %273 = icmp ult i32 %2, 536870912
  br i1 %273, label %274, label %281

274:                                              ; preds = %272
  %275 = lshr i32 %2, 25
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !75
  %279 = sext i8 %278 to i32
  %280 = add nsw i32 %279, 25
  br label %288

281:                                              ; preds = %272
  %282 = lshr i32 %2, 30
  %283 = zext nneg i32 %282 to i64
  %284 = getelementptr inbounds [16 x i8], ptr @ilog.log2_4, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !75
  %286 = sext i8 %285 to i32
  %287 = add nsw i32 %286, 30
  br label %288

288:                                              ; preds = %281, %274, %265, %258, %247, %240, %233, %227
  %289 = phi i32 [ %237, %233 ], [ %246, %240 ], [ %253, %247 ], [ %264, %258 ], [ %271, %265 ], [ %280, %274 ], [ %287, %281 ], [ 0, %227 ]
  br i1 %93, label %290, label %327

290:                                              ; preds = %288
  %291 = sub nsw i32 36, %289
  %292 = zext nneg i32 %88 to i64
  %293 = icmp ult i32 %88, 8
  br i1 %293, label %311, label %294

294:                                              ; preds = %290
  %295 = and i64 %292, 2147483640
  %296 = insertelement <8 x i32> poison, i32 %291, i64 0
  %297 = shufflevector <8 x i32> %296, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %298

298:                                              ; preds = %298, %294
  %299 = phi i64 [ 0, %294 ], [ %306, %298 ]
  %300 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %294 ], [ %307, %298 ]
  %301 = tail call <8 x i32> @llvm.bitreverse.v8i32(<8 x i32> %300)
  %302 = lshr <8 x i32> %301, %297
  %303 = trunc <8 x i32> %302 to <8 x i16>
  %304 = shl <8 x i16> %303, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2>
  %305 = getelementptr inbounds i16, ptr %224, i64 %299
  store <8 x i16> %304, ptr %305, align 2, !tbaa !109
  %306 = add nuw i64 %299, 8
  %307 = add <8 x i32> %300, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %308 = icmp eq i64 %306, %295
  br i1 %308, label %309, label %298, !llvm.loop !395

309:                                              ; preds = %298
  %310 = icmp eq i64 %295, %292
  br i1 %310, label %327, label %311

311:                                              ; preds = %290, %309
  %312 = phi i64 [ 0, %290 ], [ %295, %309 ]
  br label %313

313:                                              ; preds = %311, %313
  %314 = phi i64 [ %321, %313 ], [ %312, %311 ]
  %315 = trunc i64 %314 to i32
  %316 = tail call noundef i32 @llvm.bitreverse.i32(i32 %315)
  %317 = lshr i32 %316, %291
  %318 = trunc i32 %317 to i16
  %319 = shl i16 %318, 2
  %320 = getelementptr inbounds i16, ptr %224, i64 %314
  store i16 %319, ptr %320, align 2, !tbaa !109
  %321 = add nuw nsw i64 %314, 1
  %322 = icmp eq i64 %321, %292
  br i1 %322, label %327, label %313, !llvm.loop !396

323:                                              ; preds = %166, %221
  %324 = phi ptr [ %222, %221 ], [ %167, %166 ]
  store ptr null, ptr %324, align 8, !tbaa !16
  br label %325

325:                                              ; preds = %323, %223, %168, %74, %82
  %326 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 23
  store i32 3, ptr %326, align 4
  br label %327

327:                                              ; preds = %313, %309, %325, %288
  %328 = phi i32 [ 1, %288 ], [ 0, %325 ], [ 1, %309 ], [ 1, %313 ]
  ret i32 %328
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uint32_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %0, align 4, !tbaa !54
  %4 = load i32, ptr %1, align 4, !tbaa !54
  %5 = icmp ult i32 %3, %4
  %6 = icmp ugt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @get_seek_page_info(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = alloca [27 x i8], align 16
  %4 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %4) #27
  %5 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !255
  %15 = ptrtoint ptr %10 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  br label %27

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call i64 @ftell(ptr noundef %21)
  %23 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !256
  %25 = trunc i64 %22 to i32
  %26 = sub i32 %25, %24
  br label %27

27:                                               ; preds = %2, %12, %19
  %28 = phi i32 [ %18, %12 ], [ %26, %19 ], [ 0, %2 ]
  store i32 %28, ptr %1, align 4, !tbaa !264
  %29 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %30, i64 27
  %34 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !91
  %36 = icmp ugt ptr %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %38, align 8, !tbaa !94
  br label %47

39:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 1 dereferenceable(27) %30, i64 27, i1 false)
  store ptr %33, ptr %29, align 8, !tbaa !90
  br label %47

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 27, i64 noundef 1, ptr noundef %42)
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %46, align 8, !tbaa !94
  br label %47

47:                                               ; preds = %37, %39, %40, %45
  %48 = load <4 x i8>, ptr %3, align 16
  %49 = freeze <4 x i8> %48
  %50 = bitcast <4 x i8> %49 to i32
  %51 = icmp eq i32 %50, 1399285583
  br i1 %51, label %52, label %158

52:                                               ; preds = %47
  %53 = getelementptr inbounds [27 x i8], ptr %3, i64 0, i64 26
  %54 = load i8, ptr %53, align 2, !tbaa !75
  %55 = zext i8 %54 to i32
  %56 = load ptr, ptr %29, align 8, !tbaa !90
  %57 = icmp eq ptr %56, null
  %58 = zext i8 %54 to i64
  br i1 %57, label %67, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds i8, ptr %56, i64 %58
  %61 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  %63 = icmp ugt ptr %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %65, align 8, !tbaa !94
  br label %74

66:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 1 %56, i64 %58, i1 false)
  store ptr %60, ptr %29, align 8, !tbaa !90
  br label %74

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = call i64 @fread(ptr noundef nonnull %4, i64 noundef %58, i64 noundef 1, ptr noundef %69)
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 1, ptr %73, align 8, !tbaa !94
  br label %74

74:                                               ; preds = %64, %66, %67, %72
  %75 = icmp eq i8 %54, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %74
  %77 = zext i8 %54 to i64
  %78 = icmp ult i8 %54, 8
  br i1 %78, label %99, label %79

79:                                               ; preds = %76
  %80 = and i64 %77, 248
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ 0, %79 ], [ %93, %81 ]
  %83 = phi <4 x i32> [ zeroinitializer, %79 ], [ %91, %81 ]
  %84 = phi <4 x i32> [ zeroinitializer, %79 ], [ %92, %81 ]
  %85 = getelementptr inbounds [255 x i8], ptr %4, i64 0, i64 %82
  %86 = getelementptr inbounds i8, ptr %85, i64 4
  %87 = load <4 x i8>, ptr %85, align 8, !tbaa !75
  %88 = load <4 x i8>, ptr %86, align 4, !tbaa !75
  %89 = zext <4 x i8> %87 to <4 x i32>
  %90 = zext <4 x i8> %88 to <4 x i32>
  %91 = add <4 x i32> %83, %89
  %92 = add <4 x i32> %84, %90
  %93 = add nuw i64 %82, 8
  %94 = icmp eq i64 %93, %80
  br i1 %94, label %95, label %81, !llvm.loop !397

95:                                               ; preds = %81
  %96 = add <4 x i32> %92, %91
  %97 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %96)
  %98 = icmp eq i64 %80, %77
  br i1 %98, label %111, label %99

99:                                               ; preds = %76, %95
  %100 = phi i64 [ 0, %76 ], [ %80, %95 ]
  %101 = phi i32 [ 0, %76 ], [ %97, %95 ]
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %109, %102 ], [ %100, %99 ]
  %104 = phi i32 [ %108, %102 ], [ %101, %99 ]
  %105 = getelementptr inbounds [255 x i8], ptr %4, i64 0, i64 %103
  %106 = load i8, ptr %105, align 1, !tbaa !75
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %104, %107
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %109, %77
  br i1 %110, label %111, label %102, !llvm.loop !398

111:                                              ; preds = %102, %95, %74
  %112 = phi i32 [ 0, %74 ], [ %97, %95 ], [ %108, %102 ]
  %113 = load i32, ptr %1, align 4, !tbaa !264
  %114 = add nuw nsw i32 %55, 27
  %115 = add i32 %114, %112
  %116 = add i32 %115, %113
  %117 = getelementptr inbounds %struct.ProbedPage, ptr %1, i64 0, i32 1
  store i32 %116, ptr %117, align 4, !tbaa !260
  %118 = getelementptr inbounds [27 x i8], ptr %3, i64 0, i64 6
  %119 = load i32, ptr %118, align 2
  %120 = getelementptr inbounds %struct.ProbedPage, ptr %1, i64 0, i32 2
  store i32 %119, ptr %120, align 4, !tbaa !259
  %121 = load i8, ptr %5, align 4, !tbaa !69
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 22
  store i32 0, ptr %124, align 8, !tbaa !94
  %125 = load ptr, ptr %29, align 8, !tbaa !90
  %126 = icmp eq ptr %125, null
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 12
  %129 = load ptr, ptr %128, align 8, !tbaa !255
  %130 = zext i32 %113 to i64
  %131 = getelementptr inbounds i8, ptr %129, i64 %130
  %132 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 13
  %133 = load ptr, ptr %132, align 8, !tbaa !91
  %134 = icmp ult ptr %131, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  store ptr %133, ptr %29, align 8, !tbaa !90
  store i32 1, ptr %124, align 8, !tbaa !94
  br label %158

136:                                              ; preds = %127
  store ptr %131, ptr %29, align 8, !tbaa !90
  br label %158

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 9
  %139 = load i32, ptr %138, align 8, !tbaa !256
  %140 = add i32 %139, %113
  %141 = icmp ult i32 %140, %113
  %142 = icmp slt i32 %113, 0
  %143 = or i1 %142, %141
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i32 1, ptr %124, align 8, !tbaa !94
  br label %147

145:                                              ; preds = %137
  %146 = zext i32 %140 to i64
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i64 [ 2147483647, %144 ], [ %146, %145 ]
  %149 = getelementptr inbounds %struct.stb_vorbis, ptr %0, i64 0, i32 8
  %150 = load ptr, ptr %149, align 8, !tbaa !48
  %151 = tail call i32 @fseek(ptr noundef %150, i64 noundef %148, i32 noundef 0)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %147
  store i32 1, ptr %124, align 8, !tbaa !94
  %154 = load ptr, ptr %149, align 8, !tbaa !48
  %155 = load i32, ptr %138, align 8, !tbaa !256
  %156 = zext i32 %155 to i64
  %157 = tail call i32 @fseek(ptr noundef %154, i64 noundef %156, i32 noundef 2)
  br label %158

158:                                              ; preds = %153, %147, %136, %135, %111, %47
  %159 = phi i32 [ 0, %47 ], [ 1, %111 ], [ 1, %135 ], [ 1, %136 ], [ 1, %147 ], [ 1, %153 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %3) #27
  ret i32 %159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bitreverse.v8i32(<8 x i32>) #26

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !10, i64 128}
!6 = !{!"stb_vorbis", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !10, i64 24, !7, i64 32, !10, i64 40, !10, i64 48, !7, i64 56, !7, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !8, i64 92, !7, i64 96, !11, i64 100, !11, i64 112, !12, i64 128, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !8, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !7, i64 192, !8, i64 196, !10, i64 328, !7, i64 336, !8, i64 340, !10, i64 472, !7, i64 480, !10, i64 488, !7, i64 496, !8, i64 500, !7, i64 884, !8, i64 888, !8, i64 1016, !8, i64 1144, !7, i64 1272, !8, i64 1280, !7, i64 1408, !7, i64 1412, !8, i64 1416, !8, i64 1432, !8, i64 1448, !8, i64 1464, !8, i64 1480, !7, i64 1496, !7, i64 1500, !7, i64 1504, !8, i64 1508, !8, i64 1763, !8, i64 1764, !8, i64 1765, !7, i64 1768, !7, i64 1772, !7, i64 1776, !7, i64 1780, !7, i64 1784, !7, i64 1788, !7, i64 1792, !7, i64 1796, !7, i64 1800, !7, i64 1804, !7, i64 1808, !8, i64 1812, !7, i64 1892, !7, i64 1896}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!12 = !{!"", !10, i64 0, !7, i64 8}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !7, i64 32}
!15 = !{!6, !10, i64 40}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!6, !10, i64 472}
!20 = !{!6, !7, i64 336}
!21 = !{!22, !10, i64 16}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 13, !10, i64 16, !10, i64 24}
!23 = !{!6, !10, i64 184}
!24 = !{!22, !8, i64 13}
!25 = !{!26, !7, i64 4}
!26 = !{!"", !7, i64 0, !7, i64 4, !10, i64 8, !27, i64 16, !27, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !7, i64 28, !10, i64 32, !10, i64 40, !8, i64 48, !10, i64 2096, !10, i64 2104, !7, i64 2112}
!27 = !{!"float", !8, i64 0}
!28 = distinct !{!28, !18}
!29 = !{!22, !10, i64 24}
!30 = distinct !{!30, !18}
!31 = !{!6, !7, i64 176}
!32 = !{!26, !10, i64 8}
!33 = !{!26, !10, i64 32}
!34 = !{!26, !10, i64 40}
!35 = !{!26, !10, i64 2096}
!36 = !{!26, !10, i64 2104}
!37 = distinct !{!37, !18}
!38 = !{!6, !10, i64 328}
!39 = !{!6, !10, i64 488}
!40 = !{!6, !7, i64 480}
!41 = !{!42, !10, i64 8}
!42 = !{!"", !43, i64 0, !10, i64 8, !8, i64 16, !8, i64 17, !8, i64 32}
!43 = !{!"short", !8, i64 0}
!44 = distinct !{!44, !18}
!45 = !{!6, !7, i64 4}
!46 = distinct !{!46, !18}
!47 = !{!6, !7, i64 60}
!48 = !{!6, !10, i64 48}
!49 = !{!6, !7, i64 1412}
!50 = !{!6, !7, i64 1408}
!51 = !{!6, !7, i64 0}
!52 = !{!53, !7, i64 0}
!53 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!54 = !{!7, !7, i64 0}
!55 = !{!6, !7, i64 172}
!56 = !{!53, !7, i64 20}
!57 = !{!58, !10, i64 0}
!58 = !{!"", !10, i64 0, !7, i64 8, !10, i64 16}
!59 = !{!58, !7, i64 8}
!60 = !{!58, !10, i64 16}
!61 = !{!6, !7, i64 156}
!62 = !{!6, !7, i64 1272}
!63 = !{!6, !7, i64 1808}
!64 = !{!6, !7, i64 1800}
!65 = !{!6, !8, i64 1765}
!66 = !{!6, !7, i64 1804}
!67 = !{!6, !7, i64 1892}
!68 = !{!6, !7, i64 1896}
!69 = !{!6, !8, i64 92}
!70 = !{!71, !7, i64 12}
!71 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!8, !8, i64 0}
!76 = distinct !{!76, !18, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !18, !78, !77}
!80 = distinct !{!80, !18}
!81 = !{!71, !7, i64 4}
!82 = !{!71, !7, i64 8}
!83 = !{!71, !7, i64 0}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = !{!6, !7, i64 1768}
!87 = !{!71, !7, i64 16}
!88 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 4, !54}
!89 = distinct !{!89, !18}
!90 = !{!6, !10, i64 64}
!91 = !{!6, !10, i64 80}
!92 = !{i32 -1, i32 256}
!93 = !{!6, !7, i64 1784}
!94 = !{!6, !7, i64 152}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18, !77, !78}
!98 = distinct !{!98, !18, !78, !77}
!99 = !{!6, !7, i64 1504}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = !{i32 0, i32 2}
!104 = !{!105, !8, i64 0}
!105 = !{!"", !8, i64 0, !8, i64 1, !43, i64 2, !43, i64 4}
!106 = !{!105, !8, i64 1}
!107 = !{!108, !8, i64 2}
!108 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2}
!109 = !{!43, !43, i64 0}
!110 = !{!6, !7, i64 1780}
!111 = distinct !{!111, !18}
!112 = !{!113, !8, i64 1588}
!113 = !{!"", !8, i64 0, !8, i64 1, !8, i64 33, !8, i64 49, !8, i64 65, !8, i64 82, !8, i64 338, !8, i64 838, !8, i64 1088, !8, i64 1588, !8, i64 1589, !7, i64 1592}
!114 = !{!113, !8, i64 0}
!115 = !{!6, !7, i64 1772}
!116 = !{!6, !8, i64 1764}
!117 = distinct !{!117, !18}
!118 = !{!26, !8, i64 27}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = !{!113, !7, i64 1592}
!122 = distinct !{!122, !18, !77, !78}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18, !78, !77}
!125 = distinct !{!125, !18}
!126 = !{!6, !7, i64 136}
!127 = !{!6, !7, i64 148}
!128 = !{!42, !43, i64 0}
!129 = !{!42, !8, i64 16}
!130 = !{!108, !8, i64 0}
!131 = !{!108, !8, i64 1}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = distinct !{!134, !18}
!135 = distinct !{!135, !18}
!136 = !{!27, !27, i64 0}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !18, !77, !78}
!143 = distinct !{!143, !18, !77}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = distinct !{!146, !18, !77, !78}
!147 = distinct !{!147, !18, !78, !77}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = !{!6, !7, i64 1776}
!152 = !{!6, !7, i64 1792}
!153 = !{!6, !8, i64 1763}
!154 = !{!6, !7, i64 1796}
!155 = !{!6, !7, i64 168}
!156 = !{!157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!160, !161, !162}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !158}
!162 = distinct !{!162, !158}
!163 = !{!161}
!164 = !{!162}
!165 = !{!160}
!166 = distinct !{!166, !18, !77, !78}
!167 = distinct !{!167, !18, !77}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18, !77, !78}
!170 = distinct !{!170, !74}
!171 = distinct !{!171, !18, !77}
!172 = distinct !{!172, !18}
!173 = !{i64 0, i64 8, !16, i64 8, i64 4, !54}
!174 = !{!6, !7, i64 8}
!175 = !{!6, !7, i64 144}
!176 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 4, !54, i64 24, i64 8, !16, i64 32, i64 4, !54, i64 40, i64 8, !16, i64 48, i64 8, !16, i64 56, i64 4, !54, i64 60, i64 4, !54, i64 64, i64 8, !16, i64 72, i64 8, !16, i64 80, i64 8, !16, i64 88, i64 4, !54, i64 92, i64 1, !75, i64 96, i64 4, !54, i64 100, i64 4, !54, i64 104, i64 4, !54, i64 108, i64 4, !54, i64 112, i64 4, !54, i64 116, i64 4, !54, i64 120, i64 4, !54, i64 128, i64 8, !16, i64 136, i64 4, !54, i64 144, i64 4, !54, i64 148, i64 4, !54, i64 152, i64 4, !54, i64 156, i64 4, !54, i64 160, i64 8, !75, i64 168, i64 4, !54, i64 172, i64 4, !54, i64 176, i64 4, !54, i64 184, i64 8, !16, i64 192, i64 4, !54, i64 196, i64 128, !75, i64 328, i64 8, !16, i64 336, i64 4, !54, i64 340, i64 128, !75, i64 472, i64 8, !16, i64 480, i64 4, !54, i64 488, i64 8, !16, i64 496, i64 4, !54, i64 500, i64 384, !75, i64 884, i64 4, !54, i64 888, i64 128, !75, i64 1016, i64 128, !75, i64 1144, i64 128, !75, i64 1272, i64 4, !54, i64 1280, i64 128, !75, i64 1408, i64 4, !54, i64 1412, i64 4, !54, i64 1416, i64 16, !75, i64 1432, i64 16, !75, i64 1448, i64 16, !75, i64 1464, i64 16, !75, i64 1480, i64 16, !75, i64 1496, i64 4, !54, i64 1500, i64 4, !54, i64 1504, i64 4, !54, i64 1508, i64 255, !75, i64 1763, i64 1, !75, i64 1764, i64 1, !75, i64 1765, i64 1, !75, i64 1768, i64 4, !54, i64 1772, i64 4, !54, i64 1776, i64 4, !54, i64 1780, i64 4, !54, i64 1784, i64 4, !54, i64 1788, i64 4, !54, i64 1792, i64 4, !54, i64 1796, i64 4, !54, i64 1800, i64 4, !54, i64 1804, i64 4, !54, i64 1808, i64 4, !54, i64 1812, i64 80, !75, i64 1892, i64 4, !54, i64 1896, i64 4, !54}
!177 = !{i32 0, i32 256}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18}
!181 = distinct !{!181, !18}
!182 = !{!26, !7, i64 0}
!183 = !{i32 -128, i32 158}
!184 = distinct !{!184, !18}
!185 = distinct !{!185, !18}
!186 = !{!6, !7, i64 16}
!187 = distinct !{!187, !18, !77, !78}
!188 = !{!26, !7, i64 2112}
!189 = distinct !{!189, !18, !78, !77}
!190 = !{!26, !8, i64 25}
!191 = !{!26, !27, i64 16}
!192 = !{!26, !27, i64 20}
!193 = !{!26, !8, i64 24}
!194 = !{!26, !8, i64 26}
!195 = !{!26, !7, i64 28}
!196 = distinct !{!196, !18}
!197 = distinct !{!197, !18}
!198 = distinct !{!198, !18}
!199 = distinct !{!199, !18}
!200 = distinct !{!200, !18}
!201 = distinct !{!201, !18}
!202 = !{!6, !7, i64 192}
!203 = !{!204, !8, i64 0}
!204 = !{!"", !8, i64 0, !43, i64 2, !43, i64 4, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9}
!205 = !{!204, !43, i64 2}
!206 = !{!204, !43, i64 4}
!207 = !{!204, !8, i64 6}
!208 = !{!204, !8, i64 7}
!209 = !{!204, !8, i64 8}
!210 = distinct !{!210, !18}
!211 = distinct !{!211, !18}
!212 = distinct !{!212, !18}
!213 = distinct !{!213, !18}
!214 = !{!113, !8, i64 1589}
!215 = !{!216}
!216 = distinct !{!216, !217}
!217 = distinct !{!217, !"LVerDomain"}
!218 = distinct !{!218, !18, !77, !78}
!219 = !{!220, !43, i64 0}
!220 = !{!"", !43, i64 0, !43, i64 2}
!221 = !{!220, !43, i64 2}
!222 = distinct !{!222, !74}
!223 = distinct !{!223, !18}
!224 = distinct !{!224, !18}
!225 = distinct !{!225, !18, !77}
!226 = distinct !{!226, !18}
!227 = distinct !{!227, !18}
!228 = distinct !{!228, !18}
!229 = distinct !{!229, !18}
!230 = distinct !{!230, !18}
!231 = !{!22, !7, i64 0}
!232 = !{!22, !7, i64 4}
!233 = !{!22, !7, i64 8}
!234 = !{!22, !8, i64 12}
!235 = distinct !{!235, !18}
!236 = distinct !{!236, !18}
!237 = distinct !{!237, !18}
!238 = distinct !{!238, !18}
!239 = distinct !{!239, !18}
!240 = distinct !{!240, !18}
!241 = distinct !{!241, !18}
!242 = distinct !{!242, !18}
!243 = distinct !{!243, !18}
!244 = distinct !{!244, !74}
!245 = distinct !{!245, !18}
!246 = distinct !{!246, !18}
!247 = !{!6, !7, i64 496}
!248 = distinct !{!248, !18}
!249 = !{!105, !43, i64 2}
!250 = !{!105, !43, i64 4}
!251 = distinct !{!251, !18}
!252 = distinct !{!252, !18}
!253 = !{!6, !7, i64 12}
!254 = !{!6, !7, i64 96}
!255 = !{!6, !10, i64 72}
!256 = !{!6, !7, i64 56}
!257 = !{i32 0, i32 -1}
!258 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54}
!259 = !{!11, !7, i64 8}
!260 = !{!11, !7, i64 4}
!261 = distinct !{!261, !18}
!262 = !{i64 0, i64 4, !54}
!263 = !{i64 0, i64 4, !54, i64 4, i64 4, !54}
!264 = !{!11, !7, i64 0}
!265 = distinct !{!265, !18}
!266 = distinct !{!266, !18}
!267 = distinct !{!267, !18}
!268 = !{!6, !7, i64 1788}
!269 = distinct !{!269, !18}
!270 = distinct !{!270, !18}
!271 = distinct !{!271, !18}
!272 = distinct !{!272, !18, !77, !78}
!273 = distinct !{!273, !18, !78, !77}
!274 = distinct !{!274, !18, !77, !78}
!275 = distinct !{!275, !18, !78, !77}
!276 = !{!6, !7, i64 884}
!277 = !{!6, !7, i64 88}
!278 = distinct !{!278, !18}
!279 = !{!6, !7, i64 112}
!280 = !{!6, !7, i64 116}
!281 = !{!6, !7, i64 120}
!282 = distinct !{!282, !18}
!283 = distinct !{!283, !18}
!284 = distinct !{!284, !18}
!285 = distinct !{!285, !18}
!286 = distinct !{!286, !18, !77, !78}
!287 = distinct !{!287, !18, !78, !77}
!288 = distinct !{!288, !18, !77, !78}
!289 = distinct !{!289, !18, !77, !78}
!290 = distinct !{!290, !18, !78, !77}
!291 = distinct !{!291, !18}
!292 = distinct !{!292, !18, !78, !77}
!293 = distinct !{!293, !18}
!294 = distinct !{!294, !18}
!295 = distinct !{!295, !74}
!296 = distinct !{!296, !18, !77, !78}
!297 = distinct !{!297, !18, !78, !77}
!298 = distinct !{!298, !18}
!299 = distinct !{!299, !18}
!300 = distinct !{!300, !18, !77, !78}
!301 = distinct !{!301, !18, !78, !77}
!302 = distinct !{!302, !18, !77, !78}
!303 = distinct !{!303, !18, !77, !78}
!304 = distinct !{!304, !18, !78, !77}
!305 = distinct !{!305, !18}
!306 = distinct !{!306, !18}
!307 = distinct !{!307, !18}
!308 = distinct !{!308, !18, !78, !77}
!309 = distinct !{!309, !18}
!310 = distinct !{!310, !18}
!311 = distinct !{!311, !18}
!312 = distinct !{!312, !18}
!313 = distinct !{!313, !18, !77, !78}
!314 = distinct !{!314, !18, !78, !77}
!315 = distinct !{!315, !18, !77, !78}
!316 = distinct !{!316, !18, !78, !77}
!317 = distinct !{!317, !74}
!318 = distinct !{!318, !18}
!319 = distinct !{!319, !18}
!320 = distinct !{!320, !18, !77, !78}
!321 = distinct !{!321, !18, !78, !77}
!322 = distinct !{!322, !74}
!323 = distinct !{!323, !18}
!324 = distinct !{!324, !18}
!325 = distinct !{!325, !18, !77, !78}
!326 = distinct !{!326, !18, !78, !77}
!327 = distinct !{!327, !18}
!328 = !{!6, !7, i64 100}
!329 = !{!6, !7, i64 1500}
!330 = distinct !{!330, !18}
!331 = distinct !{!331, !18, !77, !78}
!332 = distinct !{!332, !18, !78, !77}
!333 = !{!6, !7, i64 104}
!334 = !{!6, !7, i64 108}
!335 = distinct !{!335, !18}
!336 = distinct !{!336, !18}
!337 = distinct !{!337, !18}
!338 = distinct !{!338, !74}
!339 = distinct !{!339, !18}
!340 = distinct !{!340, !18}
!341 = distinct !{!341, !18}
!342 = distinct !{!342, !18}
!343 = distinct !{!343, !18}
!344 = distinct !{!344, !18}
!345 = distinct !{!345, !18}
!346 = distinct !{!346, !18}
!347 = distinct !{!347, !18}
!348 = distinct !{!348, !18}
!349 = !{!350}
!350 = distinct !{!350, !351}
!351 = distinct !{!351, !"LVerDomain"}
!352 = !{!353}
!353 = distinct !{!353, !351}
!354 = distinct !{!354, !18, !77, !78}
!355 = distinct !{!355, !18}
!356 = distinct !{!356, !18, !77}
!357 = distinct !{!357, !18}
!358 = distinct !{!358, !18}
!359 = distinct !{!359, !18}
!360 = distinct !{!360, !18}
!361 = distinct !{!361, !18}
!362 = distinct !{!362, !18, !77, !78}
!363 = distinct !{!363, !18, !77}
!364 = distinct !{!364, !18}
!365 = distinct !{!365, !18}
!366 = distinct !{!366, !18}
!367 = distinct !{!367, !18}
!368 = distinct !{!368, !18}
!369 = distinct !{!369, !18}
!370 = distinct !{!370, !18}
!371 = distinct !{!371, !18}
!372 = distinct !{!372, !18}
!373 = distinct !{!373, !18}
!374 = distinct !{!374, !18}
!375 = distinct !{!375, !18}
!376 = distinct !{!376, !18}
!377 = distinct !{!377, !18}
!378 = distinct !{!378, !18}
!379 = distinct !{!379, !18, !77, !78}
!380 = distinct !{!380, !18}
!381 = distinct !{!381, !74}
!382 = distinct !{!382, !18}
!383 = distinct !{!383, !18}
!384 = distinct !{!384, !18}
!385 = distinct !{!385, !18}
!386 = distinct !{!386, !18}
!387 = distinct !{!387, !18}
!388 = distinct !{!388, !18}
!389 = distinct !{!389, !18}
!390 = distinct !{!390, !18}
!391 = distinct !{!391, !18}
!392 = distinct !{!392, !18}
!393 = distinct !{!393, !18}
!394 = distinct !{!394, !18}
!395 = distinct !{!395, !18, !77, !78}
!396 = distinct !{!396, !18, !78, !77}
!397 = distinct !{!397, !18, !77, !78}
!398 = distinct !{!398, !18, !78, !77}
