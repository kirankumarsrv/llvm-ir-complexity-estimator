; ModuleID = 'corpus_src/linenoise/linenoise-test.c'
source_filename = "corpus_src/linenoise/linenoise-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.emu_cell_t = type { [32 x i8], i32, i32 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [8 x i8] c"\1B[2J\1B[H\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;35m\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A\1B[1;35m\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Tests run:    %d\0A\00", align 1
@tests_run = internal unnamed_addr global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"\1B[32mTests passed: %d\1B[0m\0A\00", align 1
@tests_passed = internal unnamed_addr global i32 0, align 4
@tests_failed = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"\1B[31mTests failed: %d\1B[0m\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Tests failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Simple Typing\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"./linenoise-example\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" world\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"hello> hello world\00", align 1
@current_test = internal unnamed_addr global ptr @.str.28, align 8
@pipe_to_child = internal global [2 x i32] zeroinitializer, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@pipe_from_child = internal global [2 x i32] zeroinitializer, align 4
@child_pid = internal unnamed_addr global i32 -1, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"LINENOISE_ASSUME_TTY\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"LINENOISE_COLS\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"60\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@__const.test_start.tv = private unnamed_addr constant %struct.timeval { i64 1, i64 0 }, align 8
@.str.28 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@emu_cursor_row = internal unnamed_addr global i32 0, align 4
@emu_cursor_col = internal unnamed_addr global i32 0, align 4
@emu_after_zwj = internal unnamed_addr global i1 false, align 4
@parser_state = internal unnamed_addr global i32 0, align 4
@csi_len = internal unnamed_addr global i32 0, align 4
@utf8_len = internal unnamed_addr global i32 0, align 4
@utf8_expected = internal unnamed_addr global i32 0, align 4
@emu_screen = internal global [15 x [60 x %struct.emu_cell_t]] zeroinitializer, align 16
@emu_debug = internal unnamed_addr global i1 false, align 4
@.str.29 = private unnamed_addr constant [22 x i8] c"EMU_FEED (%d bytes): \00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"<%02X>\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@utf8_buf = internal global [5 x i8] zeroinitializer, align 1
@csi_buf = internal global [32 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [40 x i8] c"\1B[1;36m=== LINENOISE TEST: %s ===\1B[0m\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\1B[33m+\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"\1B[7m%s\1B[0m\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"\0ACursor: row=%d, col=%d\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [38 x i8] c"\1B[32m[PASS]\1B[0m Row %d contains \22%s\22\0A\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"\1B[31m[FAIL]\1B[0m Row %d doesn't contain \22%s\22\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"       Actual: \22%s\22\0A\00", align 1
@emu_get_row.buf = internal global [241 x i8] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [36 x i8] c"\1B[32m[PASS]\1B[0m Cursor at (%d, %d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"       Expected: (%d, %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"       Actual:   (%d, %d)\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"\1B[32m[PASS]\1B[0m Row %d == \22%s\22\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"\1B[31m[FAIL]\1B[0m Row %d:\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"       Expected: \22%s\22\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"       Actual:   \22%s\22\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"Cursor Movement\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"\1B[D\1B[D\1B[D\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"\1B[C\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\05\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"Backspace and Delete\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"hell\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"\1B[D\1B[D\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"\1B[3~\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"hel\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"UTF-8 Typing\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"caf\C3\A9\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"UTF-8 Emoji\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"hi \F0\9F\8E\89 there\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"UTF-8 Cursor Over Emoji\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"a\F0\9F\8E\89b\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"\1B[D\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"UTF-8 Backspace Emoji\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"x\F0\9F\8E\89y\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"hello> x\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"hello> ok\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"UTF-8 Backspace 4-byte Only\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"\F0\9F\A4\96\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"hello> test\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"UTF-8 Grapheme Clusters\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"hello> a\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"hello> b\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"\F0\9F\8F\B3\EF\B8\8F\E2\80\8D\F0\9F\8C\88\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"hello> c\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"\F0\9F\91\A8\E2\80\8D\F0\9F\91\A9\E2\80\8D\F0\9F\91\A7\00", align 1
@.str.96 = private unnamed_addr constant [31 x i8] c"UTF-8 Grapheme Cursor Movement\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"a\F0\9F\91\8D\F0\9F\8F\BBb\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"Emulator Grapheme Storage\00", align 1
@__const.test_emulator_grapheme_storage.thumbs_up = private unnamed_addr constant [9 x i8] c"\F0\9F\91\8D\F0\9F\8F\BB\00", align 1
@__const.test_emulator_grapheme_storage.heart = private unnamed_addr constant [7 x i8] c"\E2\9D\A4\EF\B8\8F\00", align 1
@.str.99 = private unnamed_addr constant [48 x i8] c"\1B[32m[PASS]\1B[0m Cell (%d,%d) contains %d bytes\0A\00", align 1
@.str.100 = private unnamed_addr constant [48 x i8] c"\1B[31m[FAIL]\1B[0m Cell (%d,%d) content mismatch:\0A\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"       Expected: %d bytes [\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"       Actual:   %d bytes [\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"\1B[32m[PASS]\1B[0m Cell (%d,%d) width == %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"\1B[31m[FAIL]\1B[0m Cell (%d,%d) width:\0A\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"       Expected: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"       Actual:   %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"Ctrl-W Delete Word\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"\17\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"hello> hello\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"Ctrl-U Delete Line\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"\15\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"hello> new\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"TAB With No Completions\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"hello> foobar\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"ANSI Prompt Zero Width\00", align 1
@.str.123 = private unnamed_addr constant [34 x i8] c"./linenoise-example --ansi-prompt\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"redgreen> abc\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"redgreen> aXbc\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"Bracketed Paste Inline\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"\1B[200~hi there\1B[201~\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"hello> hi there\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"Bracketed Paste Fold\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"[... 2 pasted lines ...]\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"\1B[200~aaa\0Abbb\1B[201~\00", align 1
@.str.134 = private unnamed_addr constant [32 x i8] c"hello> [... 2 pasted lines ...]\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"hello>\00", align 1
@.str.136 = private unnamed_addr constant [27 x i8] c"Bracketed Paste in History\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"\1B[A\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"Bracketed Paste History Edit\00", align 1
@.str.141 = private unnamed_addr constant [33 x i8] c"hello> [... 2 pasted lines ...]X\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"Bracketed Paste Keeps Surround\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"hello> before-%s-after\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"before-\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"-after\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"Bracketed Paste Multiple\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"hello> %s-%s\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"\1B[200~ccc\0Addd\1B[201~\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"Bracketed Paste Completion\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"\1B[200~h\0Ax\1B[201~\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"Bracketed Paste Ctrl-T\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"hello> %sX\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"\14\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"Horizontal Scroll\00", align 1
@.str.155 = private unnamed_addr constant [71 x i8] c"aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeeeffffffffffffffffffff\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"ffffffffffffffffffff\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"hello> aaaaaaaaaa\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"eeeeeeeeee\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"Horizontal Scroll UTF-8\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.161 = private unnamed_addr constant [81 x i8] c"\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\F0\9F\8E\89\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"hello> XSTART\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Multiline Wrap\00", align 1
@.str.165 = private unnamed_addr constant [32 x i8] c"./linenoise-example --multiline\00", align 1
@.str.166 = private unnamed_addr constant [61 x i8] c"aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeeeffffffffff\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"Multiline Cursor Movement\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"hello> Xaaaaaaaaaa\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Multiline UTF-8\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"Test \00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"\F0\9F\8E\89\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"Hi \00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"hello> Hi Test\00", align 1
@.str.176 = private unnamed_addr constant [29 x i8] c"Multiline History Navigation\00", align 1
@.str.177 = private unnamed_addr constant [65 x i8] c"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"hello> short\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"hello> aaaaaa\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"\1B[B\00", align 1
@.str.182 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str.183 = private unnamed_addr constant [47 x i8] c"\E2\95\91     LINENOISE TEST SUITE               \E2\95\91\00", align 1
@str.184 = private unnamed_addr constant [47 x i8] c"\E2\95\91     With VT100 Emulator                \E2\95\91\00", align 1
@str.187 = private unnamed_addr constant [127 x i8] c"\E2\95\94\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\97\00", align 1
@str.188 = private unnamed_addr constant [47 x i8] c"\E2\95\91     TEST RESULTS                       \E2\95\91\00", align 1
@str.189 = private unnamed_addr constant [127 x i8] c"\E2\95\9A\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\90\E2\95\9D\00", align 1
@str.190 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@str.191 = private unnamed_addr constant [33 x i8] c"\1B[31m[FAIL]\1B[0m Cursor position:\00", align 1
@str.193 = private unnamed_addr constant [6 x i8] c"+\1B[0m\00", align 1
@str.194 = private unnamed_addr constant [11 x i8] c"\1B[33m|\1B[0m\00", align 1
@str.196 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.187)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.183)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.184)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.189)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  %13 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14), !range !5
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.15)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.15)
  tail call fastcc void @assert_cursor(i32 noundef 12)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.16)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.17)
  tail call fastcc void @test_end()
  br label %16

16:                                               ; preds = %2, %15
  %17 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.14), !range !5
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.56)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.57)
  tail call fastcc void @assert_cursor(i32 noundef 10)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.58)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.59)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.60)
  tail call fastcc void @assert_cursor(i32 noundef 13)
  tail call fastcc void @test_end()
  br label %20

20:                                               ; preds = %16, %19
  %21 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.14), !range !5
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.15)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.63)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.64)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.65)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.66)
  tail call fastcc void @test_end()
  br label %24

24:                                               ; preds = %20, %23
  %25 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.14), !range !5
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.68)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.68)
  tail call fastcc void @test_end()
  br label %28

28:                                               ; preds = %24, %27
  %29 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.14), !range !5
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.70)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.71)
  tail call fastcc void @assert_cursor(i32 noundef 18)
  tail call fastcc void @test_end()
  br label %32

32:                                               ; preds = %28, %31
  %33 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.14), !range !5
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.73)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 10)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 8)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @test_end()
  br label %36

36:                                               ; preds = %32, %35
  %37 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.14), !range !5
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.76)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.77)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.78)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.79)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.80)
  tail call fastcc void @test_end()
  br label %40

40:                                               ; preds = %36, %39
  %41 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14), !range !5
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.82)
  tail call fastcc void @assert_cursor(i32 noundef 9)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.83)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.84)
  tail call fastcc void @test_end()
  br label %44

44:                                               ; preds = %40, %43
  %45 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.14), !range !5
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @send_keys(ptr noundef nonnull @__const.test_emulator_grapheme_storage.heart)
  tail call fastcc void @assert_cursor(i32 noundef 9)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.87)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.88)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @__const.test_emulator_grapheme_storage.thumbs_up)
  tail call fastcc void @assert_cursor(i32 noundef 9)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.90)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.91)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.92)
  tail call fastcc void @assert_cursor(i32 noundef 9)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.93)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.94)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.95)
  tail call fastcc void @assert_cursor(i32 noundef 9)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.79)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.80)
  tail call fastcc void @test_end()
  br label %48

48:                                               ; preds = %44, %47
  %49 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.14), !range !5
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.97)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 10)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 8)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.58)
  tail call fastcc void @assert_cursor(i32 noundef 8)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.58)
  tail call fastcc void @assert_cursor(i32 noundef 10)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.58)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @test_end()
  br label %52

52:                                               ; preds = %48, %51
  %53 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.14), !range !5
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i1 true, ptr @emu_debug, align 4
  tail call fastcc void @send_keys(ptr noundef nonnull @__const.test_emulator_grapheme_storage.thumbs_up)
  tail call fastcc void @assert_cell_content(ptr noundef nonnull @__const.test_emulator_grapheme_storage.thumbs_up, i32 noundef 8)
  tail call fastcc void @assert_cell_width(i32 noundef 7, i32 noundef 2)
  tail call fastcc void @assert_cell_width(i32 noundef 8, i32 noundef 0)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @send_keys(ptr noundef nonnull @__const.test_emulator_grapheme_storage.heart)
  tail call fastcc void @assert_cell_content(ptr noundef nonnull @__const.test_emulator_grapheme_storage.heart, i32 noundef 6)
  tail call fastcc void @assert_cell_width(i32 noundef 7, i32 noundef 2)
  tail call fastcc void @assert_cell_width(i32 noundef 8, i32 noundef 0)
  tail call fastcc void @test_end()
  br label %56

56:                                               ; preds = %52, %55
  %57 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.14), !range !5
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.110)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.111)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.112)
  tail call fastcc void @assert_cursor(i32 noundef 13)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.111)
  tail call fastcc void @test_end()
  br label %60

60:                                               ; preds = %56, %59
  %61 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.14), !range !5
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.110)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.114)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.115)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.116)
  tail call fastcc void @test_end()
  br label %64

64:                                               ; preds = %60, %63
  %65 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.14), !range !5
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.118)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.119)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.120)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.121)
  tail call fastcc void @assert_cursor(i32 noundef 13)
  tail call fastcc void @test_end()
  br label %68

68:                                               ; preds = %64, %67
  %69 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123), !range !5
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.124)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.125)
  tail call fastcc void @assert_cursor(i32 noundef 13)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.64)
  tail call fastcc void @assert_cursor(i32 noundef 11)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.126)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.127)
  tail call fastcc void @assert_cursor(i32 noundef 12)
  tail call fastcc void @test_end()
  br label %72

72:                                               ; preds = %68, %71
  %73 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.14), !range !5
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.129)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.130)
  tail call fastcc void @assert_cursor(i32 noundef 15)
  tail call fastcc void @test_end()
  br label %76

76:                                               ; preds = %72, %75
  %77 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.14), !range !5
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.134)
  tail call fastcc void @assert_cursor(i32 noundef 31)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.135)
  tail call fastcc void @assert_cursor(i32 noundef 7)
  tail call fastcc void @test_end()
  br label %80

80:                                               ; preds = %76, %79
  %81 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.14), !range !5
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.137)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.138)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.137)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.139)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.138)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.139)
  tail call fastcc void @assert_row_contains(ptr noundef nonnull @.str.132)
  tail call fastcc void @assert_cursor(i32 noundef 31)
  tail call fastcc void @test_end()
  br label %84

84:                                               ; preds = %80, %83
  %85 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.14), !range !5
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.137)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.139)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.134)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.126)
  tail call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.141)
  tail call fastcc void @assert_cursor(i32 noundef 32)
  tail call fastcc void @test_end()
  br label %88

88:                                               ; preds = %84, %87
  %89 = tail call fastcc i32 @test_start(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.14), !range !5
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #18
  %92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 128, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.132) #18
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.144)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  tail call fastcc void @send_keys(ptr noundef nonnull @.str.145)
  call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull %5)
  call fastcc void @test_end()
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #18
  br label %93

93:                                               ; preds = %88, %91
  %94 = call fastcc i32 @test_start(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.14), !range !5
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  %97 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 128, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.132) #18
  call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  call fastcc void @send_keys(ptr noundef nonnull @.str.36)
  call fastcc void @send_keys(ptr noundef nonnull @.str.148)
  call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull %4)
  call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  call fastcc void @assert_cursor(i32 noundef 32)
  call fastcc void @send_keys(ptr noundef nonnull @.str.58)
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %99 = trunc i64 %98 to i32
  call fastcc void @assert_cursor(i32 noundef %99)
  call fastcc void @test_end()
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  br label %100

100:                                              ; preds = %93, %96
  %101 = call fastcc i32 @test_start(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.14), !range !5
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call fastcc void @send_keys(ptr noundef nonnull @.str.150)
  call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull @.str.134)
  call fastcc void @send_keys(ptr noundef nonnull @.str.119)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.112)
  call fastcc void @test_end()
  br label %104

104:                                              ; preds = %100, %103
  %105 = call fastcc i32 @test_start(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.14), !range !5
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #18
  %108 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 128, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.132) #18
  call fastcc void @send_keys(ptr noundef nonnull @.str.133)
  call fastcc void @send_keys(ptr noundef nonnull @.str.126)
  call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull %3)
  call fastcc void @send_keys(ptr noundef nonnull @.str.74)
  call fastcc void @assert_cursor(i32 noundef 31)
  call fastcc void @send_keys(ptr noundef nonnull @.str.153)
  call fastcc void @assert_screen_row(i32 noundef 0, ptr noundef nonnull %3)
  call fastcc void @assert_cursor(i32 noundef 31)
  call fastcc void @test_end()
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #18
  br label %109

109:                                              ; preds = %104, %107
  %110 = call fastcc i32 @test_start(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.14), !range !5
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call fastcc void @send_keys(ptr noundef nonnull @.str.155)
  call fastcc void @assert_cursor(i32 noundef 59)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.156)
  call fastcc void @send_keys(ptr noundef nonnull @.str.59)
  call fastcc void @assert_cursor(i32 noundef 7)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.157)
  call fastcc void @send_keys(ptr noundef nonnull @.str.60)
  call fastcc void @assert_cursor(i32 noundef 59)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.156)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.157)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.158)
  call fastcc void @test_end()
  br label %113

113:                                              ; preds = %109, %112
  %114 = call fastcc i32 @test_start(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.14), !range !5
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call fastcc void @send_keys(ptr noundef nonnull @.str.160)
  call fastcc void @send_keys(ptr noundef nonnull @.str.161)
  call fastcc void @send_keys(ptr noundef nonnull @.str.162)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.160)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.162)
  call fastcc void @send_keys(ptr noundef nonnull @.str.59)
  call fastcc void @assert_cursor(i32 noundef 7)
  call fastcc void @send_keys(ptr noundef nonnull @.str.126)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.163)
  call fastcc void @test_end()
  br label %117

117:                                              ; preds = %113, %116
  %118 = call fastcc i32 @test_start(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165), !range !5
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call fastcc void @send_keys(ptr noundef nonnull @.str.166)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.157)
  call fastcc void @test_end()
  br label %121

121:                                              ; preds = %117, %120
  %122 = call fastcc i32 @test_start(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.165), !range !5
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call fastcc void @send_keys(ptr noundef nonnull @.str.166)
  call fastcc void @send_keys(ptr noundef nonnull @.str.59)
  call fastcc void @send_keys(ptr noundef nonnull @.str.126)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.168)
  call fastcc void @send_keys(ptr noundef nonnull @.str.60)
  call fastcc void @send_keys(ptr noundef nonnull @.str.169)
  call fastcc void @test_end()
  br label %125

125:                                              ; preds = %121, %124
  %126 = call fastcc i32 @test_start(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.165), !range !5
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  call fastcc void @send_keys(ptr noundef nonnull @.str.171)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @send_keys(ptr noundef nonnull @.str.172)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.173)
  call fastcc void @send_keys(ptr noundef nonnull @.str.62)
  call fastcc void @send_keys(ptr noundef nonnull @.str.59)
  call fastcc void @send_keys(ptr noundef nonnull @.str.174)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.175)
  call fastcc void @test_end()
  br label %129

129:                                              ; preds = %125, %128
  %130 = call fastcc i32 @test_start(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.165), !range !5
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call fastcc void @send_keys(ptr noundef nonnull @.str.177)
  call fastcc void @send_keys(ptr noundef nonnull @.str.137)
  call fastcc void @send_keys(ptr noundef nonnull @.str.178)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.179)
  call fastcc void @send_keys(ptr noundef nonnull @.str.137)
  call fastcc void @send_keys(ptr noundef nonnull @.str.139)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.179)
  call fastcc void @send_keys(ptr noundef nonnull @.str.139)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.180)
  call fastcc void @send_keys(ptr noundef nonnull @.str.181)
  call fastcc void @assert_row_contains(ptr noundef nonnull @.str.179)
  call fastcc void @assert_screen_row(i32 noundef 1, ptr noundef nonnull @.str.182)
  call fastcc void @test_end()
  br label %133

133:                                              ; preds = %129, %132
  %134 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  %135 = call i32 @puts(ptr nonnull dereferenceable(1) @str.187)
  %136 = call i32 @puts(ptr nonnull dereferenceable(1) @str.188)
  %137 = call i32 @puts(ptr nonnull dereferenceable(1) @str.189)
  %138 = call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  %139 = load i32, ptr @tests_run, align 4, !tbaa !6
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %139)
  %141 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %142 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %141)
  %143 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %144 = icmp sgt i32 %143, 0
  %145 = select i1 %144, ptr @.str.11, ptr @.str.12
  %146 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %145, i32 noundef %143)
  %147 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  ret i32 %149
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @test_start(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.timeval, align 8
  store ptr %0, ptr @current_test, align 8, !tbaa !10
  store i32 0, ptr @emu_cursor_row, align 4, !tbaa !6
  store i32 0, ptr @emu_cursor_col, align 4, !tbaa !6
  store i1 false, ptr @emu_after_zwj, align 4
  store i32 0, ptr @parser_state, align 4, !tbaa !6
  store i32 0, ptr @csi_len, align 4, !tbaa !6
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  store i32 0, ptr @utf8_expected, align 4, !tbaa !6
  br label %6

6:                                                ; preds = %8, %2
  %7 = phi i64 [ 0, %2 ], [ %9, %8 ]
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 15
  br i1 %10, label %24, label %6, !llvm.loop !12

11:                                               ; preds = %11, %6
  %12 = phi i64 [ 0, %6 ], [ %22, %11 ]
  %13 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %12
  store i8 32, ptr %13, align 16, !tbaa !14
  %14 = getelementptr inbounds [32 x i8], ptr %13, i64 0, i64 1
  store i8 0, ptr %14, align 1, !tbaa !14
  %15 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %12, i32 1
  store i32 1, ptr %15, align 16, !tbaa !15
  %16 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %12, i32 2
  store i32 1, ptr %16, align 4, !tbaa !17
  %17 = or disjoint i64 %12, 1
  %18 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %17
  store i8 32, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds [32 x i8], ptr %18, i64 0, i64 1
  store i8 0, ptr %19, align 1, !tbaa !14
  %20 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %17, i32 1
  store i32 1, ptr %20, align 8, !tbaa !15
  %21 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %7, i64 %17, i32 2
  store i32 1, ptr %21, align 4, !tbaa !17
  %22 = add nuw nsw i64 %12, 2
  %23 = icmp eq i64 %22, 60
  br i1 %23, label %8, label %11, !llvm.loop !18

24:                                               ; preds = %8
  %25 = tail call i32 @pipe(ptr noundef nonnull @pipe_to_child) #18
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @perror(ptr noundef nonnull @.str.18) #20
  br label %80

28:                                               ; preds = %24
  %29 = tail call i32 @pipe(ptr noundef nonnull @pipe_from_child) #18
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @perror(ptr noundef nonnull @.str.18) #20
  br label %80

32:                                               ; preds = %28
  %33 = tail call i32 @fork() #18
  store i32 %33, ptr @child_pid, align 4, !tbaa !6
  switch i32 %33, label %53 [
    i32 -1, label %34
    i32 0, label %35
  ]

34:                                               ; preds = %32
  tail call void @perror(ptr noundef nonnull @.str.19) #20
  br label %80

35:                                               ; preds = %32
  %36 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_to_child, i64 0, i64 1), align 4, !tbaa !6
  %37 = tail call i32 @close(i32 noundef %36) #18
  %38 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %39 = tail call i32 @close(i32 noundef %38) #18
  %40 = load i32, ptr @pipe_to_child, align 4, !tbaa !6
  %41 = tail call i32 @dup2(i32 noundef %40, i32 noundef 0) #18
  %42 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_from_child, i64 0, i64 1), align 4, !tbaa !6
  %43 = tail call i32 @dup2(i32 noundef %42, i32 noundef 1) #18
  %44 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_from_child, i64 0, i64 1), align 4, !tbaa !6
  %45 = tail call i32 @dup2(i32 noundef %44, i32 noundef 2) #18
  %46 = load i32, ptr @pipe_to_child, align 4, !tbaa !6
  %47 = tail call i32 @close(i32 noundef %46) #18
  %48 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_from_child, i64 0, i64 1), align 4, !tbaa !6
  %49 = tail call i32 @close(i32 noundef %48) #18
  %50 = tail call i32 @setenv(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 1) #18
  %51 = tail call i32 @setenv(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1) #18
  %52 = tail call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef null) #18
  tail call void @perror(ptr noundef nonnull @.str.27) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

53:                                               ; preds = %32
  %54 = load i32, ptr @pipe_to_child, align 4, !tbaa !6
  %55 = tail call i32 @close(i32 noundef %54) #18
  %56 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_from_child, i64 0, i64 1), align 4, !tbaa !6
  %57 = tail call i32 @close(i32 noundef %56) #18
  %58 = tail call i32 @usleep(i32 noundef 50000) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_start.tv, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !19
  %59 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %60 = srem i32 %59, 64
  %61 = zext nneg i32 %60 to i64
  %62 = shl nuw i64 1, %61
  %63 = sdiv i32 %59, 64
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !19
  %67 = or i64 %62, %66
  store i64 %67, ptr %65, align 8, !tbaa !19
  %68 = add nsw i32 %59, 1
  %69 = call i32 @select(i32 noundef %68, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #18
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %53
  %72 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %73 = call i64 @read(i32 noundef %72, ptr noundef nonnull %3, i64 noundef 4095) #18
  %74 = trunc i64 %73 to i32
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = and i64 %73, 4294967295
  %78 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 %77
  store i8 0, ptr %78, align 1, !tbaa !14
  call fastcc void @emu_feed(ptr noundef nonnull %3, i32 noundef %74)
  br label %79

79:                                               ; preds = %71, %76, %53
  call fastcc void @render_to_terminal(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #18
  br label %80

80:                                               ; preds = %79, %34, %31, %27
  %81 = phi i32 [ -1, %27 ], [ -1, %31 ], [ -1, %34 ], [ 0, %79 ]
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define internal fastcc void @send_keys(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct.fd_set, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_to_child, i64 0, i64 1), align 4, !tbaa !6
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %7 = tail call i64 @write(i32 noundef %5, ptr noundef %0, i64 noundef %6) #18
  %8 = tail call i32 @usleep(i32 noundef 30000) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %9 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  br label %10

10:                                               ; preds = %1, %29
  %11 = phi i32 [ 9, %1 ], [ %32, %29 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !19
  %12 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %13 = srem i32 %12, 64
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = sdiv i32 %12, 64
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i64], ptr %3, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !19
  %20 = or i64 %15, %19
  store i64 %20, ptr %18, align 8, !tbaa !19
  store i64 0, ptr %4, align 8, !tbaa !21
  store i64 50000, ptr %9, align 8, !tbaa !23
  %21 = add nsw i32 %12, 1
  %22 = call i32 @select(i32 noundef %21, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #18
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %34, label %24

24:                                               ; preds = %10
  %25 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %26 = call i64 @read(i32 noundef %25, ptr noundef nonnull %2, i64 noundef 4095) #18
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = and i64 %26, 4294967295
  %31 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !14
  call fastcc void @emu_feed(ptr noundef nonnull %2, i32 noundef %27)
  %32 = add nsw i32 %11, -1
  %33 = icmp eq i32 %11, 0
  br i1 %33, label %34, label %10

34:                                               ; preds = %24, %10, %29
  %35 = load ptr, ptr @current_test, align 8, !tbaa !10
  call fastcc void @render_to_terminal(ptr noundef %35)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @assert_row_contains(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @tests_run, align 4, !tbaa !6
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @tests_run, align 4, !tbaa !6
  br label %6

4:                                                ; preds = %29
  %5 = icmp sgt i32 %30, -1
  br i1 %5, label %34, label %37

6:                                                ; preds = %29, %1
  %7 = phi i64 [ 0, %1 ], [ %32, %29 ]
  %8 = phi i32 [ 0, %1 ], [ %31, %29 ]
  %9 = phi i32 [ -1, %1 ], [ %30, %29 ]
  %10 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 %7
  %11 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 %7, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #19
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %8, %16
  %18 = icmp slt i32 %17, 240
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i8, ptr @emu_get_row.buf, i64 %20
  %22 = shl i64 %15, 32
  %23 = ashr exact i64 %22, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 8 %10, i64 %23, i1 false)
  %24 = icmp eq i32 %16, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8, ptr %10, align 8, !tbaa !14
  %27 = icmp eq i8 %26, 32
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %25, %14, %6
  %30 = phi i32 [ %9, %6 ], [ %9, %14 ], [ %9, %25 ], [ %17, %28 ]
  %31 = phi i32 [ %8, %6 ], [ %8, %14 ], [ %17, %25 ], [ %17, %28 ]
  %32 = add nuw nsw i64 %7, 1
  %33 = icmp eq i64 %32, 60
  br i1 %33, label %4, label %6, !llvm.loop !24

34:                                               ; preds = %4
  %35 = zext nneg i32 %30 to i64
  %36 = getelementptr inbounds [241 x i8], ptr @emu_get_row.buf, i64 0, i64 %35
  store i8 0, ptr %36, align 1, !tbaa !14
  br label %38

37:                                               ; preds = %4
  store i8 0, ptr @emu_get_row.buf, align 16, !tbaa !14
  br label %38

38:                                               ; preds = %34, %37
  %39 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) @emu_get_row.buf, ptr noundef nonnull dereferenceable(1) %0) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @tests_passed, align 4, !tbaa !6
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef 0, ptr noundef %0)
  br label %50

45:                                               ; preds = %38
  %46 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @tests_failed, align 4, !tbaa !6
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef 0, ptr noundef %0)
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @emu_get_row.buf)
  br label %50

50:                                               ; preds = %45, %41
  %51 = load ptr, ptr @stdout, align 8, !tbaa !10
  %52 = tail call i32 @fflush(ptr noundef %51)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @assert_cursor(i32 noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @tests_run, align 4, !tbaa !6
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @tests_run, align 4, !tbaa !6
  %4 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @emu_cursor_col, align 4
  %7 = icmp eq i32 %6, %0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @tests_passed, align 4, !tbaa !6
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef 0, i32 noundef %0)
  br label %21

13:                                               ; preds = %1
  %14 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @tests_failed, align 4, !tbaa !6
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.191)
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef 0, i32 noundef %0)
  %18 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %19 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %18, i32 noundef %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load ptr, ptr @stdout, align 8, !tbaa !10
  %23 = tail call i32 @fflush(ptr noundef %22)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @assert_screen_row(i32 noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr @tests_run, align 4, !tbaa !6
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @tests_run, align 4, !tbaa !6
  %5 = zext nneg i32 %0 to i64
  br label %8

6:                                                ; preds = %31
  %7 = icmp sgt i32 %32, -1
  br i1 %7, label %36, label %39

8:                                                ; preds = %31, %2
  %9 = phi i64 [ 0, %2 ], [ %34, %31 ]
  %10 = phi i32 [ 0, %2 ], [ %33, %31 ]
  %11 = phi i32 [ -1, %2 ], [ %32, %31 ]
  %12 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %5, i64 %9
  %13 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %5, i64 %9, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #19
  %18 = trunc i64 %17 to i32
  %19 = add nsw i32 %10, %18
  %20 = icmp slt i32 %19, 240
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = sext i32 %10 to i64
  %23 = getelementptr inbounds i8, ptr @emu_get_row.buf, i64 %22
  %24 = shl i64 %17, 32
  %25 = ashr exact i64 %24, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 8 %12, i64 %25, i1 false)
  %26 = icmp eq i32 %18, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8, ptr %12, align 8, !tbaa !14
  %29 = icmp eq i8 %28, 32
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %27, %16, %8
  %32 = phi i32 [ %11, %8 ], [ %11, %16 ], [ %11, %27 ], [ %19, %30 ]
  %33 = phi i32 [ %10, %8 ], [ %10, %16 ], [ %19, %27 ], [ %19, %30 ]
  %34 = add nuw nsw i64 %9, 1
  %35 = icmp eq i64 %34, 60
  br i1 %35, label %6, label %8, !llvm.loop !24

36:                                               ; preds = %6
  %37 = zext nneg i32 %32 to i64
  %38 = getelementptr inbounds [241 x i8], ptr @emu_get_row.buf, i64 0, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !14
  br label %40

39:                                               ; preds = %6
  store i8 0, ptr @emu_get_row.buf, align 16, !tbaa !14
  br label %40

40:                                               ; preds = %36, %39
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @emu_get_row.buf, ptr noundef nonnull dereferenceable(1) %1) #19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @tests_passed, align 4, !tbaa !6
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %0, ptr noundef %1)
  br label %53

47:                                               ; preds = %40
  %48 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @tests_failed, align 4, !tbaa !6
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %0)
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %1)
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull @emu_get_row.buf)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load ptr, ptr @stdout, align 8, !tbaa !10
  %55 = tail call i32 @fflush(ptr noundef %54)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @test_end() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @child_pid, align 4, !tbaa !6
  %3 = icmp sgt i32 %2, 0
  %4 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_to_child, i64 0, i64 1), align 4, !tbaa !6
  br i1 %3, label %5, label %20

5:                                                ; preds = %0
  %6 = tail call i64 @write(i32 noundef %4, ptr noundef nonnull @.str.54, i64 noundef 1) #18
  %7 = tail call i32 @usleep(i32 noundef 50000) #18
  %8 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @pipe_to_child, i64 0, i64 1), align 4, !tbaa !6
  %9 = tail call i32 @close(i32 noundef %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  %10 = load i32, ptr @child_pid, align 4, !tbaa !6
  %11 = call i32 @waitpid(i32 noundef %10, ptr noundef nonnull %1, i32 noundef 1) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i32, ptr @child_pid, align 4, !tbaa !6
  %15 = call i32 @kill(i32 noundef %14, i32 noundef 15) #18
  %16 = call i32 @usleep(i32 noundef 10000) #18
  %17 = load i32, ptr @child_pid, align 4, !tbaa !6
  %18 = call i32 @waitpid(i32 noundef %17, ptr noundef nonnull %1, i32 noundef 1) #18
  br label %19

19:                                               ; preds = %13, %5
  store i32 -1, ptr @child_pid, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  br label %22

20:                                               ; preds = %0
  %21 = tail call i32 @close(i32 noundef %4) #18
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, ptr @pipe_from_child, align 4, !tbaa !6
  %24 = call i32 @close(i32 noundef %23) #18
  ret void
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare i32 @usleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @emu_feed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [2 x i8], align 1
  %4 = load i1, ptr @emu_debug, align 4
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %1)
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = add nsw i32 %1, -1
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 199)
  %11 = add nuw nsw i32 %10, 1
  %12 = zext nneg i32 %11 to i64
  br label %15

13:                                               ; preds = %26
  %14 = icmp sgt i32 %1, 200
  br i1 %14, label %29, label %31

15:                                               ; preds = %8, %26
  %16 = phi i64 [ 0, %8 ], [ %27, %26 ]
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = zext i8 %18 to i32
  %20 = add i8 %18, -32
  %21 = icmp ult i8 %20, 95
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 @putchar(i32 %19)
  br label %26

24:                                               ; preds = %15
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %19)
  br label %26

26:                                               ; preds = %24, %22
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %13, label %15, !llvm.loop !25

29:                                               ; preds = %13
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32)
  br label %31

31:                                               ; preds = %5, %29, %13
  %32 = tail call i32 @putchar(i32 10)
  br label %33

33:                                               ; preds = %31, %2
  %34 = icmp sgt i32 %1, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %3, i64 1
  %37 = zext nneg i32 %1 to i64
  br label %39

38:                                               ; preds = %207, %33
  ret void

39:                                               ; preds = %35, %207
  %40 = phi i64 [ 0, %35 ], [ %208, %207 ]
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = load i32, ptr @parser_state, align 4, !tbaa !6
  switch i32 %43, label %206 [
    i32 0, label %44
    i32 1, label %116
    i32 2, label %120
  ]

44:                                               ; preds = %39
  switch i8 %42, label %83 [
    i8 27, label %45
    i8 13, label %46
    i8 10, label %47
    i8 8, label %67
  ]

45:                                               ; preds = %44
  store i32 1, ptr @parser_state, align 4, !tbaa !6
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

46:                                               ; preds = %44
  store i32 0, ptr @emu_cursor_col, align 4, !tbaa !6
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

47:                                               ; preds = %44
  %48 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @emu_cursor_row, align 4, !tbaa !6
  %50 = icmp sgt i32 %48, 13
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33600) @emu_screen, ptr noundef nonnull align 16 dereferenceable(33600) getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 1, i64 0, i32 0, i64 0), i64 33600, i1 false)
  br label %53

52:                                               ; preds = %53
  store i32 14, ptr @emu_cursor_row, align 4, !tbaa !6
  br label %66

53:                                               ; preds = %53, %51
  %54 = phi i64 [ 0, %51 ], [ %64, %53 ]
  %55 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %54
  store i8 32, ptr %55, align 16, !tbaa !14
  %56 = getelementptr inbounds [32 x i8], ptr %55, i64 0, i64 1
  store i8 0, ptr %56, align 1, !tbaa !14
  %57 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %54, i32 1
  store i32 1, ptr %57, align 16, !tbaa !15
  %58 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %54, i32 2
  store i32 1, ptr %58, align 4, !tbaa !17
  %59 = or disjoint i64 %54, 1
  %60 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %59
  store i8 32, ptr %60, align 8, !tbaa !14
  %61 = getelementptr inbounds [32 x i8], ptr %60, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !14
  %62 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %59, i32 1
  store i32 1, ptr %62, align 8, !tbaa !15
  %63 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 14, i64 %59, i32 2
  store i32 1, ptr %63, align 4, !tbaa !17
  %64 = add nuw nsw i64 %54, 2
  %65 = icmp eq i64 %64, 60
  br i1 %65, label %52, label %53, !llvm.loop !26

66:                                               ; preds = %52, %47
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

67:                                               ; preds = %44
  %68 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = add nsw i32 %68, -1
  store i32 %71, ptr @emu_cursor_col, align 4, !tbaa !6
  %72 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %73 = sext i32 %72 to i64
  %74 = zext nneg i32 %71 to i64
  %75 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %73, i64 %74, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = icmp eq i32 %76, 0
  %78 = icmp ne i32 %68, 1
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = add nsw i32 %68, -2
  store i32 %81, ptr @emu_cursor_col, align 4, !tbaa !6
  br label %82

82:                                               ; preds = %80, %70, %67
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

83:                                               ; preds = %44
  %84 = icmp ugt i8 %42, 31
  br i1 %84, label %85, label %207

85:                                               ; preds = %83
  %86 = icmp sgt i8 %42, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #18
  store i8 %42, ptr %3, align 1, !tbaa !14
  store i8 0, ptr %36, align 1, !tbaa !14
  call fastcc void @emu_put_char(ptr noundef nonnull %3, i32 noundef 1)
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #18
  br label %207

88:                                               ; preds = %85
  %89 = icmp ugt i8 %42, -65
  br i1 %89, label %90, label %103

90:                                               ; preds = %88
  store i8 %42, ptr @utf8_buf, align 1, !tbaa !14
  store i32 1, ptr @utf8_len, align 4, !tbaa !6
  %91 = zext i8 %42 to i32
  %92 = and i32 %91, 224
  %93 = icmp eq i32 %92, 192
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = and i32 %91, 240
  %96 = icmp eq i32 %95, 224
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = and i32 %91, 248
  %99 = icmp eq i32 %98, 240
  %100 = select i1 %99, i32 4, i32 1
  br label %101

101:                                              ; preds = %97, %94, %90
  %102 = phi i32 [ 2, %90 ], [ 3, %94 ], [ %100, %97 ]
  store i32 %102, ptr @utf8_expected, align 4, !tbaa !6
  br label %207

103:                                              ; preds = %88
  %104 = load i32, ptr @utf8_len, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = add nuw nsw i32 %104, 1
  store i32 %107, ptr @utf8_len, align 4, !tbaa !6
  %108 = zext nneg i32 %104 to i64
  %109 = getelementptr inbounds [5 x i8], ptr @utf8_buf, i64 0, i64 %108
  store i8 %42, ptr %109, align 1, !tbaa !14
  %110 = load i32, ptr @utf8_expected, align 4, !tbaa !6
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %207, label %112

112:                                              ; preds = %106
  %113 = zext nneg i32 %107 to i64
  %114 = getelementptr inbounds [5 x i8], ptr @utf8_buf, i64 0, i64 %113
  store i8 0, ptr %114, align 1, !tbaa !14
  tail call fastcc void @emu_put_char(ptr noundef nonnull @utf8_buf, i32 noundef %107)
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

115:                                              ; preds = %103
  store i32 0, ptr @utf8_len, align 4, !tbaa !6
  br label %207

116:                                              ; preds = %39
  %117 = icmp eq i8 %42, 91
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  store i32 2, ptr @parser_state, align 4, !tbaa !6
  store i32 0, ptr @csi_len, align 4, !tbaa !6
  br label %207

119:                                              ; preds = %116
  store i32 0, ptr @parser_state, align 4, !tbaa !6
  br label %207

120:                                              ; preds = %39
  %121 = add i8 %42, -48
  %122 = icmp ult i8 %121, 10
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32, ptr @csi_len, align 4, !tbaa !6
  %125 = icmp slt i32 %124, 31
  br i1 %125, label %126, label %207

126:                                              ; preds = %123
  %127 = add nsw i32 %124, 1
  store i32 %127, ptr @csi_len, align 4, !tbaa !6
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds [32 x i8], ptr @csi_buf, i64 0, i64 %128
  store i8 %42, ptr %129, align 1, !tbaa !14
  br label %207

130:                                              ; preds = %120
  %131 = icmp eq i8 %42, 59
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  store i32 0, ptr @csi_len, align 4, !tbaa !6
  br label %207

133:                                              ; preds = %130
  %134 = load i32, ptr @csi_len, align 4, !tbaa !6
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = sext i32 %134 to i64
  %138 = getelementptr inbounds [32 x i8], ptr @csi_buf, i64 0, i64 %137
  store i8 0, ptr %138, align 1, !tbaa !14
  %139 = tail call i64 @strtol(ptr nocapture noundef nonnull @csi_buf, ptr noundef null, i32 noundef 10) #18
  %140 = trunc i64 %139 to i32
  %141 = tail call i32 @llvm.smax.i32(i32 %140, i32 1)
  br label %142

142:                                              ; preds = %136, %133
  %143 = phi i32 [ %141, %136 ], [ 1, %133 ]
  switch i8 %42, label %205 [
    i8 65, label %144
    i8 66, label %148
    i8 67, label %152
    i8 68, label %156
    i8 72, label %160
    i8 74, label %161
    i8 75, label %182
  ]

144:                                              ; preds = %142
  %145 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %146 = sub nsw i32 %145, %143
  %147 = tail call i32 @llvm.smax.i32(i32 %146, i32 0)
  store i32 %147, ptr @emu_cursor_row, align 4
  br label %205

148:                                              ; preds = %142
  %149 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %150 = add nsw i32 %149, %143
  %151 = tail call i32 @llvm.smin.i32(i32 %150, i32 14)
  store i32 %151, ptr @emu_cursor_row, align 4
  br label %205

152:                                              ; preds = %142
  %153 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %154 = add nsw i32 %153, %143
  %155 = tail call i32 @llvm.smin.i32(i32 %154, i32 59)
  store i32 %155, ptr @emu_cursor_col, align 4
  br label %205

156:                                              ; preds = %142
  %157 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %158 = sub nsw i32 %157, %143
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 0)
  store i32 %159, ptr @emu_cursor_col, align 4
  br label %205

160:                                              ; preds = %142
  store i32 0, ptr @emu_cursor_row, align 4, !tbaa !6
  store i32 0, ptr @emu_cursor_col, align 4, !tbaa !6
  br label %205

161:                                              ; preds = %142
  %162 = icmp eq i32 %143, 2
  br i1 %162, label %163, label %205

163:                                              ; preds = %161, %165
  %164 = phi i64 [ %166, %165 ], [ 0, %161 ]
  br label %168

165:                                              ; preds = %168
  %166 = add nuw nsw i64 %164, 1
  %167 = icmp eq i64 %166, 15
  br i1 %167, label %181, label %163, !llvm.loop !27

168:                                              ; preds = %168, %163
  %169 = phi i64 [ 0, %163 ], [ %179, %168 ]
  %170 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %169
  store i8 32, ptr %170, align 16, !tbaa !14
  %171 = getelementptr inbounds [32 x i8], ptr %170, i64 0, i64 1
  store i8 0, ptr %171, align 1, !tbaa !14
  %172 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %169, i32 1
  store i32 1, ptr %172, align 16, !tbaa !15
  %173 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %169, i32 2
  store i32 1, ptr %173, align 4, !tbaa !17
  %174 = or disjoint i64 %169, 1
  %175 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %174
  store i8 32, ptr %175, align 8, !tbaa !14
  %176 = getelementptr inbounds [32 x i8], ptr %175, i64 0, i64 1
  store i8 0, ptr %176, align 1, !tbaa !14
  %177 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %174, i32 1
  store i32 1, ptr %177, align 8, !tbaa !15
  %178 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %164, i64 %174, i32 2
  store i32 1, ptr %178, align 4, !tbaa !17
  %179 = add nuw nsw i64 %169, 2
  %180 = icmp eq i64 %179, 60
  br i1 %180, label %165, label %168, !llvm.loop !28

181:                                              ; preds = %165
  store i32 0, ptr @emu_cursor_row, align 4, !tbaa !6
  store i32 0, ptr @emu_cursor_col, align 4, !tbaa !6
  br label %205

182:                                              ; preds = %142
  %183 = load i32, ptr @csi_len, align 4, !tbaa !6
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = tail call i64 @strtol(ptr nocapture noundef nonnull @csi_buf, ptr noundef null, i32 noundef 10) #18
  %187 = and i64 %186, 4294967295
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %185, %182
  %190 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %191 = icmp slt i32 %190, 60
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %194 = sext i32 %193 to i64
  %195 = sext i32 %190 to i64
  br label %196

196:                                              ; preds = %196, %192
  %197 = phi i64 [ %195, %192 ], [ %202, %196 ]
  %198 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %194, i64 %197
  store i8 32, ptr %198, align 8, !tbaa !14
  %199 = getelementptr inbounds [32 x i8], ptr %198, i64 0, i64 1
  store i8 0, ptr %199, align 1, !tbaa !14
  %200 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %194, i64 %197, i32 1
  store i32 1, ptr %200, align 8, !tbaa !15
  %201 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %194, i64 %197, i32 2
  store i32 1, ptr %201, align 4, !tbaa !17
  %202 = add nsw i64 %197, 1
  %203 = and i64 %202, 4294967295
  %204 = icmp eq i64 %203, 60
  br i1 %204, label %205, label %196, !llvm.loop !29

205:                                              ; preds = %196, %189, %185, %181, %161, %160, %156, %152, %148, %144, %142
  store i32 0, ptr @parser_state, align 4, !tbaa !6
  br label %207

206:                                              ; preds = %39
  unreachable

207:                                              ; preds = %45, %46, %66, %82, %83, %87, %101, %106, %112, %115, %118, %119, %123, %126, %132, %205
  %208 = add nuw nsw i64 %40, 1
  %209 = icmp eq i64 %208, %37
  br i1 %209, label %38, label %39, !llvm.loop !30
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @render_to_terminal(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0)
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35)
  br label %7

5:                                                ; preds = %7
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.193)
  br label %14

7:                                                ; preds = %1, %7
  %8 = phi i32 [ 0, %1 ], [ %10, %7 ]
  %9 = tail call i32 @putchar(i32 45)
  %10 = add nuw nsw i32 %8, 1
  %11 = icmp eq i32 %10, 60
  br i1 %11, label %5, label %7, !llvm.loop !31

12:                                               ; preds = %17
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35)
  br label %47

14:                                               ; preds = %5, %17
  %15 = phi i64 [ 0, %5 ], [ %19, %17 ]
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @str.194)
  br label %21

17:                                               ; preds = %37
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.194)
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, 15
  br i1 %20, label %12, label %14, !llvm.loop !32

21:                                               ; preds = %14, %37
  %22 = phi i64 [ 0, %14 ], [ %38, %37 ]
  %23 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %15, i64 %22, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %15, i64 %22
  %28 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %15, %29
  %31 = load i32, ptr @emu_cursor_col, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp eq i64 %22, %32
  %34 = select i1 %30, i1 %33, i1 false
  %35 = select i1 %34, ptr @.str.39, ptr @.str.40
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull %27)
  br label %37

37:                                               ; preds = %26, %21
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, 60
  br i1 %39, label %17, label %21, !llvm.loop !33

40:                                               ; preds = %47
  %41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.193)
  %42 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %43 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %42, i32 noundef %43)
  %45 = load ptr, ptr @stdout, align 8, !tbaa !10
  %46 = tail call i32 @fflush(ptr noundef %45)
  ret void

47:                                               ; preds = %12, %47
  %48 = phi i32 [ 0, %12 ], [ %50, %47 ]
  %49 = tail call i32 @putchar(i32 45)
  %50 = add nuw nsw i32 %48, 1
  %51 = icmp eq i32 %50, 60
  br i1 %51, label %40, label %47, !llvm.loop !34
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @emu_put_char(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load i8, ptr %0, align 1, !tbaa !14
  switch i32 %1, label %51 [
    i32 1, label %4
    i32 2, label %6
    i32 3, label %15
    i32 4, label %30
  ]

4:                                                ; preds = %2
  %5 = zext i8 %3 to i32
  br label %53

6:                                                ; preds = %2
  %7 = and i8 %3, 31
  %8 = zext nneg i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 6
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = and i8 %11, 63
  %13 = zext nneg i8 %12 to i32
  %14 = or disjoint i32 %9, %13
  br label %53

15:                                               ; preds = %2
  %16 = and i8 %3, 15
  %17 = zext nneg i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 12
  %19 = getelementptr inbounds i8, ptr %0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !14
  %21 = and i8 %20, 63
  %22 = zext nneg i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 6
  %24 = or disjoint i32 %23, %18
  %25 = getelementptr inbounds i8, ptr %0, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %27 = and i8 %26, 63
  %28 = zext nneg i8 %27 to i32
  %29 = or disjoint i32 %24, %28
  br label %53

30:                                               ; preds = %2
  %31 = and i8 %3, 7
  %32 = zext nneg i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 18
  %34 = getelementptr inbounds i8, ptr %0, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %36 = and i8 %35, 63
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 12
  %39 = or disjoint i32 %38, %33
  %40 = getelementptr inbounds i8, ptr %0, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !14
  %42 = and i8 %41, 63
  %43 = zext nneg i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 6
  %45 = or disjoint i32 %39, %44
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %48 = and i8 %47, 63
  %49 = zext nneg i8 %48 to i32
  %50 = or disjoint i32 %45, %49
  br label %53

51:                                               ; preds = %2
  %52 = zext i8 %3 to i32
  br label %53

53:                                               ; preds = %4, %6, %15, %30, %51
  %54 = phi i32 [ %5, %4 ], [ %14, %6 ], [ %29, %15 ], [ %50, %30 ], [ %52, %51 ]
  %55 = icmp eq i32 %54, 0
  %56 = insertelement <4 x i32> poison, i32 %54, i64 0
  %57 = shufflevector <4 x i32> %56, <4 x i32> poison, <4 x i32> zeroinitializer
  %58 = add nsw <4 x i32> %57, <i32 -768, i32 -6832, i32 -8400, i32 -127995>
  %59 = and i32 %54, -64
  %60 = icmp eq i32 %59, 7616
  %61 = and i32 %54, -16
  %62 = icmp eq i32 %61, 65056
  %63 = and i32 %54, -2
  %64 = icmp eq i32 %63, 65038
  %65 = icmp ult <4 x i32> %58, <i32 112, i32 80, i32 48, i32 5>
  %66 = icmp eq i32 %54, 8205
  %67 = bitcast <4 x i1> %65 to i4
  %68 = icmp ne i4 %67, 0
  %69 = or i1 %68, %55
  %70 = or i1 %60, %62
  %71 = or i1 %64, %66
  %72 = or i1 %69, %70
  %73 = or i1 %72, %71
  br i1 %73, label %109, label %74

74:                                               ; preds = %53
  %75 = insertelement <8 x i32> poison, i32 %54, i64 0
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> zeroinitializer
  %77 = add nsw <8 x i32> %76, <i32 -4352, i32 -9193, i32 -9208, i32 -9654, i32 -9723, i32 -9984, i32 -11013, i32 -11035>
  %78 = icmp eq i32 %63, 8986
  %79 = icmp eq i32 %63, 9642
  %80 = and i32 %54, -256
  %81 = icmp eq i32 %80, 9728
  %82 = icmp eq i32 %63, 10548
  %83 = icmp ult <8 x i32> %77, <i32 96, i32 11, i32 3, i32 11, i32 4, i32 192, i32 3, i32 2>
  %84 = bitcast <8 x i1> %83 to i8
  %85 = icmp ne i8 %84, 0
  %86 = or i1 %85, %78
  %87 = or i1 %79, %81
  %88 = or i1 %86, %87
  %89 = or i1 %88, %82
  br i1 %89, label %106, label %90

90:                                               ; preds = %74
  switch i32 %54, label %91 [
    i32 11093, label %106
    i32 11088, label %106
  ]

91:                                               ; preds = %90
  %92 = add nsw <8 x i32> %76, <i32 -44032, i32 -11904, i32 -63744, i32 -65072, i32 -65280, i32 -65504, i32 -127462, i32 -127744>
  %93 = icmp eq i32 %61, 65040
  %94 = icmp ult <8 x i32> %92, <i32 11184, i32 29056, i32 512, i32 64, i32 97, i32 7, i32 26, i32 1792>
  %95 = icmp eq i32 %80, 129536
  %96 = and i32 %54, -65536
  %97 = icmp eq i32 %96, 131072
  %98 = bitcast <8 x i1> %94 to i8
  %99 = icmp ne i8 %98, 0
  %100 = or i1 %99, %93
  %101 = or i1 %95, %97
  %102 = or i1 %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = icmp eq i32 %96, 196608
  %105 = select i1 %104, i32 2, i32 1
  br label %106

106:                                              ; preds = %74, %90, %90, %91, %103
  %107 = phi i32 [ 2, %74 ], [ 2, %90 ], [ 2, %90 ], [ 2, %91 ], [ %105, %103 ]
  %108 = load i1, ptr @emu_after_zwj, align 4
  br i1 %108, label %111, label %181

109:                                              ; preds = %53
  %110 = load i1, ptr @emu_after_zwj, align 4
  br i1 %110, label %111, label %146

111:                                              ; preds = %109, %106
  store i1 false, ptr @emu_after_zwj, align 4
  %112 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %113 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %114 = sext i32 %112 to i64
  %115 = zext i32 %113 to i64
  br label %116

116:                                              ; preds = %120, %111
  %117 = phi i64 [ %121, %120 ], [ %115, %111 ]
  %118 = trunc i64 %117 to i32
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = add nsw i64 %117, -1
  %122 = and i64 %121, 4294967295
  %123 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %114, i64 %122, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %116, label %126, !llvm.loop !35

126:                                              ; preds = %120
  %127 = and i64 %121, 2147483648
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = and i64 %121, 2147483647
  %131 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %114, i64 %130, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !15
  %133 = add nsw i32 %132, %1
  %134 = icmp slt i32 %133, 31
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %114, i64 %130
  %137 = sext i32 %132 to i64
  %138 = getelementptr inbounds i8, ptr %136, i64 %137
  %139 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %138, ptr nonnull align 1 %0, i64 %139, i1 false)
  %140 = load i32, ptr %131, align 8, !tbaa !15
  %141 = add nsw i32 %140, %1
  store i32 %141, ptr %131, align 8, !tbaa !15
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [32 x i8], ptr %136, i64 0, i64 %142
  store i8 0, ptr %143, align 1, !tbaa !14
  br label %144

144:                                              ; preds = %116, %129, %135, %126
  br i1 %66, label %145, label %221

145:                                              ; preds = %144
  store i1 true, ptr @emu_after_zwj, align 4
  br label %221

146:                                              ; preds = %109
  %147 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %148 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %149 = sext i32 %147 to i64
  %150 = zext i32 %148 to i64
  br label %151

151:                                              ; preds = %155, %146
  %152 = phi i64 [ %156, %155 ], [ %150, %146 ]
  %153 = trunc i64 %152 to i32
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %151
  %156 = add nsw i64 %152, -1
  %157 = and i64 %156, 4294967295
  %158 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %149, i64 %157, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !17
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %151, label %161, !llvm.loop !35

161:                                              ; preds = %155
  %162 = and i64 %156, 2147483648
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = and i64 %156, 2147483647
  %166 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %149, i64 %165, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !15
  %168 = add nsw i32 %167, %1
  %169 = icmp slt i32 %168, 31
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %149, i64 %165
  %172 = sext i32 %167 to i64
  %173 = getelementptr inbounds i8, ptr %171, i64 %172
  %174 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %173, ptr nonnull align 1 %0, i64 %174, i1 false)
  %175 = load i32, ptr %166, align 8, !tbaa !15
  %176 = add nsw i32 %175, %1
  store i32 %176, ptr %166, align 8, !tbaa !15
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [32 x i8], ptr %171, i64 0, i64 %177
  store i8 0, ptr %178, align 1, !tbaa !14
  br label %179

179:                                              ; preds = %151, %164, %170, %161
  br i1 %66, label %180, label %221

180:                                              ; preds = %179
  store i1 true, ptr @emu_after_zwj, align 4
  br label %221

181:                                              ; preds = %106
  %182 = load i32, ptr @emu_cursor_col, align 4, !tbaa !6
  %183 = add nsw i32 %182, %107
  %184 = icmp sgt i32 %183, 60
  br i1 %184, label %221, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr @emu_cursor_row, align 4, !tbaa !6
  %187 = sext i32 %186 to i64
  %188 = sext i32 %182 to i64
  %189 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %188, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !17
  switch i32 %190, label %206 [
    i32 0, label %191
    i32 2, label %195
  ]

191:                                              ; preds = %185
  %192 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %188
  store i8 32, ptr %192, align 8, !tbaa !14
  %193 = getelementptr inbounds [32 x i8], ptr %192, i64 0, i64 1
  store i8 0, ptr %193, align 1, !tbaa !14
  %194 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %188, i32 1
  store i32 1, ptr %194, align 8, !tbaa !15
  br label %204

195:                                              ; preds = %185
  %196 = icmp slt i32 %182, 59
  br i1 %196, label %197, label %206

197:                                              ; preds = %195
  %198 = add nsw i32 %182, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %199
  store i8 32, ptr %200, align 8, !tbaa !14
  %201 = getelementptr inbounds [32 x i8], ptr %200, i64 0, i64 1
  store i8 0, ptr %201, align 1, !tbaa !14
  %202 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %199, i32 1
  store i32 1, ptr %202, align 8, !tbaa !15
  %203 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %199, i32 2
  br label %204

204:                                              ; preds = %191, %197
  %205 = phi ptr [ %203, %197 ], [ %189, %191 ]
  store i32 1, ptr %205, align 4, !tbaa !17
  br label %206

206:                                              ; preds = %204, %185, %195
  %207 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %188
  %208 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %207, ptr nonnull align 1 %0, i64 %208, i1 false)
  %209 = getelementptr inbounds [32 x i8], ptr %207, i64 0, i64 %208
  store i8 0, ptr %209, align 1, !tbaa !14
  %210 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %188, i32 1
  store i32 %1, ptr %210, align 8, !tbaa !15
  store i32 %107, ptr %189, align 4, !tbaa !17
  %211 = add nsw i32 %182, 1
  store i32 %211, ptr @emu_cursor_col, align 4, !tbaa !6
  %212 = icmp eq i32 %107, 2
  %213 = icmp slt i32 %182, 59
  %214 = and i1 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %206
  %216 = sext i32 %211 to i64
  %217 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %216
  store i8 0, ptr %217, align 8, !tbaa !14
  %218 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %216, i32 1
  store i32 0, ptr %218, align 8, !tbaa !15
  %219 = getelementptr inbounds [15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 %187, i64 %216, i32 2
  store i32 0, ptr %219, align 4, !tbaa !17
  %220 = add nsw i32 %182, 2
  store i32 %220, ptr @emu_cursor_col, align 4, !tbaa !6
  br label %221

221:                                              ; preds = %206, %215, %181, %179, %180, %144, %145
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @assert_cell_content(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr @tests_run, align 4, !tbaa !6
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @tests_run, align 4, !tbaa !6
  %5 = load i32, ptr getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7, i32 1), align 8, !tbaa !15
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = zext nneg i32 %1 to i64
  %9 = tail call i32 @bcmp(ptr nonnull getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7), ptr %0, i64 %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @tests_passed, align 4, !tbaa !6
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef 0, i32 noundef 7, i32 noundef %1)
  br label %49

15:                                               ; preds = %7, %2
  %16 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @tests_failed, align 4, !tbaa !6
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, i32 noundef 0, i32 noundef 7)
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, i32 noundef %1)
  %20 = icmp sgt i32 %1, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = zext nneg i32 %1 to i64
  br label %29

23:                                               ; preds = %29, %15
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  %25 = load i32, ptr getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7, i32 1), align 8, !tbaa !15
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, i32 noundef %25)
  %27 = load i32, ptr getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7, i32 1), align 8, !tbaa !15
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %39, label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ 0, %21 ], [ %35, %29 ]
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %33)
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %23, label %29, !llvm.loop !36

37:                                               ; preds = %39, %23
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  br label %49

39:                                               ; preds = %23, %39
  %40 = phi i64 [ %45, %39 ], [ 0, %23 ]
  %41 = getelementptr inbounds [32 x i8], ptr getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7), i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = zext i8 %42 to i32
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %43)
  %45 = add nuw nsw i64 %40, 1
  %46 = load i32, ptr getelementptr inbounds ([15 x [60 x %struct.emu_cell_t]], ptr @emu_screen, i64 0, i64 0, i64 7, i32 1), align 8, !tbaa !15
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %39, label %37, !llvm.loop !37

49:                                               ; preds = %37, %11
  %50 = load ptr, ptr @stdout, align 8, !tbaa !10
  %51 = tail call i32 @fflush(ptr noundef %50)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @assert_cell_width(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load i32, ptr @tests_run, align 4, !tbaa !6
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @tests_run, align 4, !tbaa !6
  %5 = zext nneg i32 %0 to i64
  %6 = getelementptr inbounds [60 x %struct.emu_cell_t], ptr @emu_screen, i64 0, i64 %5, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !17
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, ptr @tests_passed, align 4, !tbaa !6
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @tests_passed, align 4, !tbaa !6
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, i32 noundef 0, i32 noundef %0, i32 noundef %1)
  br label %20

13:                                               ; preds = %2
  %14 = load i32, ptr @tests_failed, align 4, !tbaa !6
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @tests_failed, align 4, !tbaa !6
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef 0, i32 noundef %0)
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %1)
  %18 = load i32, ptr %6, align 4, !tbaa !17
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, i32 noundef %18)
  br label %20

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @stdout, align 8, !tbaa !10
  %22 = tail call i32 @fflush(ptr noundef %21)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{i32 -1, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !7, i64 32}
!16 = !{!"", !8, i64 0, !7, i64 32, !7, i64 36}
!17 = !{!16, !7, i64 36}
!18 = distinct !{!18, !13}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"timeval", !20, i64 0, !20, i64 8}
!23 = !{!22, !20, i64 8}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
