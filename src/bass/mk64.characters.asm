// MK64 (U) update character selection screen
// Usage:
//   1. place "Mario Kart 64 (U) [!].z64" in same directory as this file
//   2. use mk64extract to extract MIO0 data to "extract/mio0" dir
//   3. update bin files and compress to MIO0 files
//   3. run bass assembler: bass mk64.characters.asm
// Output is mk64.characters.z64

arch n64.cpu
endian msb

// macros
macro align(size) {
   while (pc() % {size}) {
      db 0
   }
}

// flag: if 1, pass 0xBE through A3 TKMK00 decoder, else pass 0x00
// seg_addr: segmented address of texture (in 0x0A segment)
// width: width of texture
// height: height of texture
// others unknown
macro MK_TEXTURE(flag, seg_addr, width, height, h0C, h0E, h10, h12) {
  dh {flag}, 0
  dw {seg_addr}
  dh {width}, {height}, {h0C}, {h0E}, {h10}, {h12}
}

// insert original ROM
origin 0x0
insert "Mario Kart 64 (U) [!].z64"

// table of characters
origin 0x12FCA8
MK_TEXTURE(0, mario01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, mario17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, luigi01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, luigi17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)

// for some reason toad an peach are swapped in this table
MK_TEXTURE(0, toad01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, toad17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,    0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, peach01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, peach17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, yoshi01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, yoshi17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, dk01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, dk17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,  0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, wario01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, wario17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,     0x0,  0,  0, 0, 0, 0, 0)

MK_TEXTURE(0, bowser01, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser02, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser03, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser04, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser05, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser06, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser07, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser08, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser09, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser10, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser11, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser12, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser13, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser14, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser15, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser16, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)
MK_TEXTURE(0, bowser17, 64, 64, 0, 0, 0, 0)
MK_TEXTURE(0,      0x0,  0,  0, 0, 0, 0, 0)

// fill old texture data and assign segment 0A base
origin 0x729A30
base 0x0A000000
fill (0x7A1418 - 0x729A30)

// put half the textures in the old data and half at the end of ROM
origin 0x729A30
mario01:
insert "extract/mio0/00729A30.mio0"
align(0x4)
mario02:
insert "extract/mio0/0072A704.mio0"
align(0x4)
mario03:
insert "extract/mio0/0072B3C4.mio0"
align(0x4)
mario04:
insert "extract/mio0/0072C080.mio0"
align(0x4)
mario05:
insert "extract/mio0/0072CCEC.mio0"
align(0x4)
mario06:
insert "extract/mio0/0072D938.mio0"
align(0x4)
mario07:
insert "extract/mio0/0072E578.mio0"
align(0x4)
mario08:
insert "extract/mio0/0072F28C.mio0"
align(0x4)
mario09:
insert "extract/mio0/0072FF98.mio0"
align(0x4)
mario10:
insert "extract/mio0/00730C9C.mio0"
align(0x4)
mario11:
insert "extract/mio0/0073197C.mio0"
align(0x4)
mario12:
insert "extract/mio0/00732678.mio0"
align(0x4)
mario13:
insert "extract/mio0/00733374.mio0"
align(0x4)
mario14:
insert "extract/mio0/007340B8.mio0"
align(0x4)
mario15:
insert "extract/mio0/00734E0C.mio0"
align(0x4)
mario16:
insert "extract/mio0/00735BB0.mio0"
align(0x4)
mario17:
insert "extract/mio0/00736950.mio0"
align(0x4)
luigi01:
insert "extract/mio0/00737494.mio0"
align(0x4)
luigi02:
insert "extract/mio0/007380B0.mio0"
align(0x4)
luigi03:
insert "extract/mio0/00738CD0.mio0"
align(0x4)
luigi04:
insert "extract/mio0/007398F0.mio0"
align(0x4)
luigi05:
insert "extract/mio0/0073A4D8.mio0"
align(0x4)
luigi06:
insert "extract/mio0/0073B0C0.mio0"
align(0x4)
luigi07:
insert "extract/mio0/0073BC8C.mio0"
align(0x4)
luigi08:
insert "extract/mio0/0073C8B4.mio0"
align(0x4)
luigi09:
insert "extract/mio0/0073D4E8.mio0"
align(0x4)
luigi10:
insert "extract/mio0/0073E174.mio0"
align(0x4)
luigi11:
insert "extract/mio0/0073EDF4.mio0"
align(0x4)
luigi12:
insert "extract/mio0/0073FA84.mio0"
align(0x4)
luigi13:
insert "extract/mio0/00740744.mio0"
align(0x4)
luigi14:
insert "extract/mio0/00741474.mio0"
align(0x4)
luigi15:
insert "extract/mio0/007421A0.mio0"
align(0x4)
luigi16:
insert "extract/mio0/00742EE8.mio0"
align(0x4)
luigi17:
insert "extract/mio0/00743C3C.mio0"
align(0x4)
peach01:
insert "extract/mio0/00744674.mio0"
align(0x4)
peach02:
insert "extract/mio0/0074552C.mio0"
align(0x4)
peach03:
insert "extract/mio0/007463D8.mio0"
align(0x4)
peach04:
insert "extract/mio0/00747294.mio0"
align(0x4)
peach05:
insert "extract/mio0/0074814C.mio0"
align(0x4)
peach06:
insert "extract/mio0/00748FD4.mio0"
align(0x4)
peach07:
insert "extract/mio0/00749E74.mio0"
align(0x4)
peach08:
insert "extract/mio0/0074AD3C.mio0"
align(0x4)
peach09:
insert "extract/mio0/0074BC2C.mio0"
align(0x4)
peach10:
insert "extract/mio0/0074CB3C.mio0"
align(0x4)
peach11:
insert "extract/mio0/0074DAF0.mio0"
align(0x4)
peach12:
insert "extract/mio0/0074EAD4.mio0"
align(0x4)
peach13:
insert "extract/mio0/0074FB20.mio0"
align(0x4)
peach14:
insert "extract/mio0/00750B58.mio0"
align(0x4)
peach15:
insert "extract/mio0/00751B3C.mio0"
align(0x4)
peach16:
insert "extract/mio0/00752AD0.mio0"
align(0x4)
peach17:
insert "extract/mio0/00753A58.mio0"
align(0x4)
toad01:
insert "extract/mio0/00754900.mio0"
align(0x4)
toad02:
insert "extract/mio0/007552BC.mio0"
align(0x4)
toad03:
insert "extract/mio0/00755C70.mio0"
align(0x4)
toad04:
insert "extract/mio0/0075662C.mio0"
align(0x4)
toad05:
insert "extract/mio0/00756FE4.mio0"
align(0x4)
toad06:
insert "extract/mio0/007579A0.mio0"
align(0x4)
toad07:
insert "extract/mio0/00758340.mio0"
align(0x4)
toad08:
insert "extract/mio0/00758CD8.mio0"
align(0x4)
toad09:
insert "extract/mio0/007596A4.mio0"
align(0x4)
toad10:
insert "extract/mio0/0075A058.mio0"
align(0x4)
toad11:
insert "extract/mio0/0075AA40.mio0"
align(0x4)
toad12:
insert "extract/mio0/0075B454.mio0"
align(0x4)
toad13:
insert "extract/mio0/0075BEAC.mio0"
align(0x4)
toad14:
insert "extract/mio0/0075C90C.mio0"
align(0x4)
toad15:
insert "extract/mio0/0075D38C.mio0"
align(0x4)
toad16:
insert "extract/mio0/0075DE00.mio0"
align(0x4)
toad17:
insert "extract/mio0/0075E860.mio0"
align(0x4)

// put half the textures in the old data and half at the end of ROM
origin 0xBEA000
yoshi01:
insert "extract/mio0/0075F1C4.mio0"
align(0x4)
yoshi02:
insert "extract/mio0/0075FCB0.mio0"
align(0x4)
yoshi03:
insert "extract/mio0/00760794.mio0"
align(0x4)
yoshi04:
insert "extract/mio0/00761274.mio0"
align(0x4)
yoshi05:
insert "extract/mio0/00761D28.mio0"
align(0x4)
yoshi06:
insert "extract/mio0/00762798.mio0"
align(0x4)
yoshi07:
insert "extract/mio0/007631E0.mio0"
align(0x4)
yoshi08:
insert "extract/mio0/00763D04.mio0"
align(0x4)
yoshi09:
insert "extract/mio0/00764730.mio0"
align(0x4)
yoshi10:
insert "extract/mio0/007650EC.mio0"
align(0x4)
yoshi11:
insert "extract/mio0/00765A98.mio0"
align(0x4)
yoshi12:
insert "extract/mio0/00766458.mio0"
align(0x4)
yoshi13:
insert "extract/mio0/00766E68.mio0"
align(0x4)
yoshi14:
insert "extract/mio0/007678C4.mio0"
align(0x4)
yoshi15:
insert "extract/mio0/007683A4.mio0"
align(0x4)
yoshi16:
insert "extract/mio0/00768EAC.mio0"
align(0x4)
yoshi17:
insert "extract/mio0/007699C4.mio0"
align(0x4)
dk01:
insert "extract/mio0/0076A4EC.mio0"
align(0x4)
dk02:
insert "extract/mio0/0076B2D8.mio0"
align(0x4)
dk03:
insert "extract/mio0/0076C0E0.mio0"
align(0x4)
dk04:
insert "extract/mio0/0076CEC0.mio0"
align(0x4)
dk05:
insert "extract/mio0/0076DC70.mio0"
align(0x4)
dk06:
insert "extract/mio0/0076EA18.mio0"
align(0x4)
dk07:
insert "extract/mio0/0076F7FC.mio0"
align(0x4)
dk08:
insert "extract/mio0/00770628.mio0"
align(0x4)
dk09:
insert "extract/mio0/007714BC.mio0"
align(0x4)
dk10:
insert "extract/mio0/00772398.mio0"
align(0x4)
dk11:
insert "extract/mio0/007732E0.mio0"
align(0x4)
dk12:
insert "extract/mio0/00774218.mio0"
align(0x4)
dk13:
insert "extract/mio0/0077519C.mio0"
align(0x4)
dk14:
insert "extract/mio0/007761A0.mio0"
align(0x4)
dk15:
insert "extract/mio0/00777160.mio0"
align(0x4)
dk16:
insert "extract/mio0/007780AC.mio0"
align(0x4)
dk17:
insert "extract/mio0/00778FAC.mio0"
align(0x4)
wario01:
insert "extract/mio0/00779F00.mio0"
align(0x4)
wario02:
insert "extract/mio0/0077B060.mio0"
align(0x4)
wario03:
insert "extract/mio0/0077C1A4.mio0"
align(0x4)
wario04:
insert "extract/mio0/0077D2F8.mio0"
align(0x4)
wario05:
insert "extract/mio0/0077E460.mio0"
align(0x4)
wario06:
insert "extract/mio0/0077F5B4.mio0"
align(0x4)
wario07:
insert "extract/mio0/00780710.mio0"
align(0x4)
wario08:
insert "extract/mio0/00781884.mio0"
align(0x4)
wario09:
insert "extract/mio0/00782A5C.mio0"
align(0x4)
wario10:
insert "extract/mio0/00783C84.mio0"
align(0x4)
wario11:
insert "extract/mio0/00784EF0.mio0"
align(0x4)
wario12:
insert "extract/mio0/007861D0.mio0"
align(0x4)
wario13:
insert "extract/mio0/007874D8.mio0"
align(0x4)
wario14:
insert "extract/mio0/007887BC.mio0"
align(0x4)
wario15:
insert "extract/mio0/00789AE0.mio0"
align(0x4)
wario16:
insert "extract/mio0/0078ADCC.mio0"
align(0x4)
wario17:
insert "extract/mio0/0078C098.mio0"
align(0x4)
bowser01:
insert "extract/mio0/0078D210.mio0"
align(0x4)
bowser02:
insert "extract/mio0/0078E4F8.mio0"
align(0x4)
bowser03:
insert "extract/mio0/0078F7AC.mio0"
align(0x4)
bowser04:
insert "extract/mio0/00790A74.mio0"
align(0x4)
bowser05:
insert "extract/mio0/00791D40.mio0"
align(0x4)
bowser06:
insert "extract/mio0/00792FE4.mio0"
align(0x4)
bowser07:
insert "extract/mio0/00794270.mio0"
align(0x4)
bowser08:
insert "extract/mio0/0079554C.mio0"
align(0x4)
bowser09:
insert "extract/mio0/00796834.mio0"
align(0x4)
bowser10:
insert "extract/mio0/00797B24.mio0"
align(0x4)
bowser11:
insert "extract/mio0/00798E40.mio0"
align(0x4)
bowser12:
insert "extract/mio0/0079A10C.mio0"
align(0x4)
bowser13:
insert "extract/mio0/0079B448.mio0"
align(0x4)
bowser14:
insert "extract/mio0/0079C7EC.mio0"
align(0x4)
bowser15:
insert "extract/mio0/0079DB68.mio0"
align(0x4)
bowser16:
insert "extract/mio0/0079EEAC.mio0"
align(0x4)
bowser17:
insert "extract/mio0/007A01F4.mio0"
align(0x4)

