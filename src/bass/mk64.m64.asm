// MK64 (U) update sequence table and instrument list
// Usage:
//   1. place "Mario Kart 64 (U) [!].z64" in same directory as this file
//   2. use mk64extract to extract M64 sequence data to "extract" dir
//   3. run bass assembler: bass mk64.m64.asm
// Output is mk64.m64.z64

arch n64.cpu
endian msb
output "mk64.m64.z64", create

// macros
macro align(size) {
   while (pc() % {size}) {
      db 0
   }
}

// insert original ROM
origin 0x0
insert "Mario Kart 64 (U) [!].z64"

// music sequence table
origin 0xBC5F60
music_sequence_table_header:
dh 3, (music_sequence_table_end - music_sequence_table) / 8
music_sequence_table:
dw (seq_00 - music_sequence_table_header), (seq_00_end - seq_00) // 0x00100, 0x2830
dw (seq_01 - music_sequence_table_header), (seq_01_end - seq_01) // 0x02930, 0x1B30
dw (seq_02 - music_sequence_table_header), (seq_02_end - seq_02) // 0x04460, 0x0D60
dw (seq_03 - music_sequence_table_header), (seq_03_end - seq_03) // 0x051C0, 0x1A10
dw (seq_04 - music_sequence_table_header), (seq_04_end - seq_04) // 0x06BD0, 0x1CA0
dw (seq_05 - music_sequence_table_header), (seq_05_end - seq_05) // 0x08870, 0x1F70
dw (seq_06 - music_sequence_table_header), (seq_06_end - seq_06) // 0x0A7E0, 0x1EE0
dw (seq_07 - music_sequence_table_header), (seq_07_end - seq_07) // 0x0C6C0, 0x16D0
dw (seq_08 - music_sequence_table_header), (seq_08_end - seq_08) // 0x0DD90, 0x23D0
dw (seq_09 - music_sequence_table_header), (seq_09_end - seq_09) // 0x10160, 0x1800
dw (seq_10 - music_sequence_table_header), (seq_10_end - seq_10) // 0x11960, 0x1AE0
dw (seq_11 - music_sequence_table_header), (seq_11_end - seq_11) // 0x13440, 0x05F0
dw (seq_12 - music_sequence_table_header), (seq_12_end - seq_12) // 0x13A30, 0x03D0
dw (seq_13 - music_sequence_table_header), (seq_13_end - seq_13) // 0x13E00, 0x0360
dw (seq_14 - music_sequence_table_header), (seq_14_end - seq_14) // 0x14160, 0x02E0
dw (seq_15 - music_sequence_table_header), (seq_15_end - seq_15) // 0x14440, 0x04C0
dw (seq_16 - music_sequence_table_header), (seq_16_end - seq_16) // 0x14900, 0x1410
dw (seq_17 - music_sequence_table_header), (seq_17_end - seq_17) // 0x15D10, 0x06E0
dw (seq_18 - music_sequence_table_header), (seq_18_end - seq_18) // 0x163F0, 0x32F0
dw (seq_19 - music_sequence_table_header), (seq_19_end - seq_19) // 0x196E0, 0x06C0
dw (seq_20 - music_sequence_table_header), (seq_20_end - seq_20) // 0x19DA0, 0x04B0
dw (seq_21 - music_sequence_table_header), (seq_21_end - seq_21) // 0x1A250, 0x1160
dw (seq_22 - music_sequence_table_header), (seq_22_end - seq_22) // 0x1B3B0, 0x0310
dw (seq_23 - music_sequence_table_header), (seq_23_end - seq_23) // 0x1B6C0, 0x12B0
dw (seq_24 - music_sequence_table_header), (seq_24_end - seq_24) // 0x1C970, 0x0600
dw (seq_25 - music_sequence_table_header), (seq_25_end - seq_25) // 0x1CF70, 0x16E0
dw (seq_26 - music_sequence_table_header), (seq_26_end - seq_26) // 0x1E650, 0x0AD0
dw (seq_27 - music_sequence_table_header), (seq_27_end - seq_27) // 0x1F120, 0x0C80
dw (seq_28 - music_sequence_table_header), (seq_28_end - seq_28) // 0x1FDA0, 0x2750
dw (seq_29 - music_sequence_table_header), (seq_29_end - seq_29) // 0x224F0, 0x0C80
music_sequence_table_end:

align(0x10)

seq_00:
insert "extract/TUNE00.m64"
align(0x10)
seq_00_end:

seq_01:
insert "extract/TUNE01.m64"
align(0x10)
seq_01_end:

seq_02:
insert "extract/TUNE02.m64"
align(0x10)
seq_02_end:

seq_03:
insert "extract/TUNE03.m64"
align(0x10)
seq_03_end:

seq_04:
insert "extract/TUNE04.m64"
align(0x10)
seq_04_end:

seq_05:
insert "extract/TUNE05.m64"
align(0x10)
seq_05_end:

seq_06:
insert "extract/TUNE06.m64"
align(0x10)
seq_06_end:

seq_07:
insert "extract/TUNE07.m64"
align(0x10)
seq_07_end:

seq_08:
insert "extract/TUNE08.m64"
align(0x10)
seq_08_end:

seq_09:
insert "extract/TUNE09.m64"
align(0x10)
seq_09_end:

seq_10:
insert "extract/TUNE10.m64"
align(0x10)
seq_10_end:

seq_11:
insert "extract/TUNE11.m64"
align(0x10)
seq_11_end:

seq_12:
insert "extract/TUNE12.m64"
align(0x10)
seq_12_end:

seq_13:
insert "extract/TUNE13.m64"
align(0x10)
seq_13_end:

seq_14:
insert "extract/TUNE14.m64"
align(0x10)
seq_14_end:

seq_15:
insert "extract/TUNE15.m64"
align(0x10)
seq_15_end:

seq_16:
insert "extract/TUNE16.m64"
align(0x10)
seq_16_end:

seq_17:
insert "extract/TUNE17.m64"
align(0x10)
seq_17_end:

seq_18:
insert "extract/TUNE18.m64"
align(0x10)
seq_18_end:

seq_19:
insert "extract/TUNE19.m64"
align(0x10)
seq_19_end:

seq_20:
insert "extract/TUNE20.m64"
align(0x10)
seq_20_end:

seq_21:
insert "extract/TUNE21.m64"
align(0x10)
seq_21_end:

seq_22:
insert "extract/TUNE22.m64"
align(0x10)
seq_22_end:

seq_23:
insert "extract/TUNE23.m64"
align(0x10)
seq_23_end:

seq_24:
insert "extract/TUNE24.m64"
align(0x10)
seq_24_end:

seq_25:
insert "extract/TUNE25.m64"
align(0x10)
seq_25_end:

seq_26:
insert "extract/TUNE26.m64"
align(0x10)
seq_26_end:

seq_27:
insert "extract/TUNE27.m64"
align(0x10)
seq_27_end:

seq_28:
insert "extract/TUNE28.m64"
align(0x10)
seq_28_end:

seq_29:
insert "extract/TUNE29.m64"
align(0x10)
seq_29_end:

origin 0xBE90E0

instrument_sets:
dh instrument_set_00 - instrument_sets // 0x003C
dh instrument_set_01 - instrument_sets // 0x003E
dh instrument_set_02 - instrument_sets // 0x0040
dh instrument_set_03 - instrument_sets // 0x0042
dh instrument_set_04 - instrument_sets // 0x0044
dh instrument_set_05 - instrument_sets // 0x0046
dh instrument_set_06 - instrument_sets // 0x0048
dh instrument_set_07 - instrument_sets // 0x004A
dh instrument_set_08 - instrument_sets // 0x004C
dh instrument_set_09 - instrument_sets // 0x004E
dh instrument_set_10 - instrument_sets // 0x0050
dh instrument_set_11 - instrument_sets // 0x0052
dh instrument_set_12 - instrument_sets // 0x0054
dh instrument_set_13 - instrument_sets // 0x0056
dh instrument_set_14 - instrument_sets // 0x0058
dh instrument_set_15 - instrument_sets // 0x005A
dh instrument_set_16 - instrument_sets // 0x005C
dh instrument_set_17 - instrument_sets // 0x005E
dh instrument_set_18 - instrument_sets // 0x0060
dh instrument_set_19 - instrument_sets // 0x0062
dh instrument_set_20 - instrument_sets // 0x0064
dh instrument_set_21 - instrument_sets // 0x0066
dh instrument_set_22 - instrument_sets // 0x0068
dh instrument_set_23 - instrument_sets // 0x006A
dh instrument_set_24 - instrument_sets // 0x006C
dh instrument_set_25 - instrument_sets // 0x006E
dh instrument_set_26 - instrument_sets // 0x0070
dh instrument_set_27 - instrument_sets // 0x0072
dh instrument_set_28 - instrument_sets // 0x0074
dh instrument_set_29 - instrument_sets // 0x0076

instrument_set_00:
db 0x01, 0x00
instrument_set_01:
db 0x01, 0x01
instrument_set_02:
db 0x01, 0x02
instrument_set_03:
db 0x01, 0x03
instrument_set_04:
db 0x01, 0x04
instrument_set_05:
db 0x01, 0x05
instrument_set_06:
db 0x01, 0x06
instrument_set_07:
db 0x01, 0x07
instrument_set_08:
db 0x01, 0x08
instrument_set_09:
db 0x01, 0x09
instrument_set_10:
db 0x01, 0x0A
instrument_set_11:
db 0x01, 0x0B
instrument_set_12:
db 0x01, 0x0B
instrument_set_13:
db 0x01, 0x0B
instrument_set_14:
db 0x01, 0x0B
instrument_set_15:
db 0x01, 0x0B
instrument_set_16:
db 0x01, 0x0C
instrument_set_17:
db 0x01, 0x0E
instrument_set_18:
db 0x01, 0x0F
instrument_set_19:
db 0x01, 0x10
instrument_set_20:
db 0x01, 0x0B
instrument_set_21:
db 0x01, 0x11
instrument_set_22:
db 0x01, 0x0B
instrument_set_23:
db 0x01, 0x0D
instrument_set_24:
db 0x01, 0x0C
instrument_set_25:
db 0x01, 0x12
instrument_set_26:
db 0x01, 0x13
instrument_set_27:
db 0x01, 0x13
instrument_set_28:
db 0x01, 0x14
instrument_set_29:
db 0x01, 0x13
dw 0x00000000, 0x00000000
instrument_sets_end:
