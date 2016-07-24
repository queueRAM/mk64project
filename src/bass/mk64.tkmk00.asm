// MK64 (U) update TKMK00 textures
// Usage:
//   1. place "Mario Kart 64 (U) [!].z64" in same directory as this file
//   2. use mk64extract to extract TKMK00 data to "extract/tkmk00" dir
//   3. update TKMK00 files
//   4. run 'make':
//      > make
//      ./tools/bass -create -o mk64.tkmk00.z64 mk64.tkmk00.asm
// Output is mk64.tkmk00.z64

arch n64.cpu
endian msb

// macros
macro align(size) {
   while (pc() % {size}) {
      db 0
   }
}

// flag: if 1, pass 0xBE through A3 TKMK00 decoder, else pass 0x00
// seg_addr: segmented address of texture (in 0x0B segment)
// width: width of texture
// height: height of texture
// others unknown
macro MK_TEXTURE(flag, seg_addr, width, height, h0C, h0E, h10, h12) {
  dw {flag}, 0
  dd {seg_addr}
  dw {width}, {height}, {h0C}, {h0E}, {h10}, {h12}
}

// insert original ROM
origin 0x0
insert "Mario Kart 64 (U) [!].z64"

// table of textures
// texture tables start at 0x12AAE0
origin 0x12BFA8
origin 0x12BFA8
MK_TEXTURE(0, tkmk00.820FC0, 256,  40,  32,  25, 0x0D4C, 0x0000)
MK_TEXTURE(0, tkmk00.820AC0,  90,  16,  65,  70, 0x0468, 0x0000)
MK_TEXTURE(0, tkmk00.820AC0,  90,  16, 164,  70, 0x0468, 0x0000)
MK_TEXTURE(0, tkmk00.820AC0,  90,  16,  65, 200, 0x0468, 0x0000)
MK_TEXTURE(0, tkmk00.820AC0,  90,  16, 164, 200, 0x0468, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.81F6C0, 256,  29,  32,  91, 0x0BEC, 0x0000)
MK_TEXTURE(0, tkmk00.8202C0, 256,  15,  32, 180, 0x06F8, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.8209C0, 256,  10,   0,   0, 0x00E4, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12C4CC
MK_TEXTURE(0, tkmk00.7FB8C0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FBAC0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FBCC0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FBEC0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FC0C0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FC2C0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FC4C0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.7FC6C0,  64,  12,   0,  64, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12F078
MK_TEXTURE(0, tkmk00.8094C0, 320, 240,   0,   0, 0xCD60, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.8162C0, 320, 240,   0,   0, 0x93C4, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12F118
MK_TEXTURE(0, tkmk00.7FAFC0, 130,  32,  95,  16, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.803DC0, 200,  32,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8049C0,  64,  54,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8071C0,  64,  18,   0,  65, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.806DC0,  64,  18,   0,  83, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.804EC0,  64,  54,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8071C0,  64,  18,   0,  65, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8075C0,  64,  18,   0,  83, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.806AC0,  64,  18,   0, 101, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8055C0,  64,  54,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8075C0,  64,  18,   0,  65, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.806AC0,  64,  18,   0,  83, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.805FC0,  64,  54,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8075C0,  64,  18,   0,  65, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.806AC0,  64,  18,   0,  83, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12F35C
MK_TEXTURE(1, tkmk00.8092C0,  31,  19,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8078C0,  58,  19,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.807BC0,  58,  19,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.807EC0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8080C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8082C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8084C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8086C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8089C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.808CC0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.808EC0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8090C0,  64,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12F62C
MK_TEXTURE(0, tkmk00.7FA3C0, 220,  32,  51,  16, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8092C0,  31,  19, 264, 202, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0, tkmk00.8021C0, 190,  32,  65,  18, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8031C0,  65,  40,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.802DC0,  65,  40,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8035C0,  65,  40,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8039C0,  65,  40,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
origin 0x12F76C
MK_TEXTURE(1, tkmk00.7FEFC0, 140,  18, 157, 112, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FF3C0, 140,  18, 157, 136, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FE6C0, 140,  18, 157, 160, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FFCC0, 140,  18, 157, 184, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FF7C0, 140,  18, 157, 112, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FE1C0, 140,  18, 157, 136, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FCDC0, 140,  18, 157, 160, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FC8C0, 140,  18, 157, 184, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8008C0, 140,  18, 157, 112, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8000C0, 140,  18, 157, 136, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FEBC0, 140,  18, 157, 160, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FD2C0, 140,  18, 157, 184, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8018C0, 140,  18, 157, 112, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FDDC0, 140,  18, 157, 136, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FD7C0, 140,  18, 157, 160, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8004C0, 140,  18, 157, 184, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.801EC0, 140,  18, 157, 112, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.800DC0, 140,  18, 157, 136, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8014C0, 140,  18, 157, 160, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8010C0, 140,  18, 157, 184, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8092C0,  31,  19, 265, 208, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FC8C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FCDC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FD2C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FD7C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FDDC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FE1C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FE6C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FEBC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FEFC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FF3C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FF7C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.7FFCC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8000C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8004C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8008C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.800DC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8010C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8014C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.8018C0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(1, tkmk00.801EC0, 140,  18,   0,   0, 0x0000, 0x0000)
MK_TEXTURE(0,    0x00000000,   0,   0,   0,   0, 0x0000, 0x0000)

// fill old texture data and assign segment 0B base
origin 0x7FA3C0
base 0x0B000000
fill (0x821D10 - 0x7FA3C0)

// put big textures back in old data so ROM doesn't spill over 12MB
origin 0x7FA3C0
tkmk00.8094C0:
insert "extract/tkmk00/008094C0.tkmk00"
align(0x10)
tkmk00.8162C0:
insert "extract/tkmk00/008162C0.tkmk00"
align(0x10)

// put rest of TKMK00 textures at end of ROM
origin 0xBEA000
tkmk00.7FA3C0:
insert "extract/tkmk00/007FA3C0.tkmk00"
align(0x10)
tkmk00.7FAFC0:
insert "extract/tkmk00/007FAFC0.tkmk00"
align(0x10)
tkmk00.7FB8C0:
insert "extract/tkmk00/007FB8C0.tkmk00"
align(0x10)
tkmk00.7FBAC0:
insert "extract/tkmk00/007FBAC0.tkmk00"
align(0x10)
tkmk00.7FBCC0:
insert "extract/tkmk00/007FBCC0.tkmk00"
align(0x10)
tkmk00.7FBEC0:
insert "extract/tkmk00/007FBEC0.tkmk00"
align(0x10)
tkmk00.7FC0C0:
insert "extract/tkmk00/007FC0C0.tkmk00"
align(0x10)
tkmk00.7FC2C0:
insert "extract/tkmk00/007FC2C0.tkmk00"
align(0x10)
tkmk00.7FC4C0:
insert "extract/tkmk00/007FC4C0.tkmk00"
align(0x10)
tkmk00.7FC6C0:
insert "extract/tkmk00/007FC6C0.tkmk00"
align(0x10)
tkmk00.7FC8C0:
insert "extract/tkmk00/007FC8C0.tkmk00"
align(0x10)
tkmk00.7FCDC0:
insert "extract/tkmk00/007FCDC0.tkmk00"
align(0x10)
tkmk00.7FD2C0:
insert "extract/tkmk00/007FD2C0.tkmk00"
align(0x10)
tkmk00.7FD7C0:
insert "extract/tkmk00/007FD7C0.tkmk00"
align(0x10)
tkmk00.7FDDC0:
insert "extract/tkmk00/007FDDC0.tkmk00"
align(0x10)
tkmk00.7FE1C0:
insert "extract/tkmk00/007FE1C0.tkmk00"
align(0x10)
tkmk00.7FE6C0:
insert "extract/tkmk00/007FE6C0.tkmk00"
align(0x10)
tkmk00.7FEBC0:
insert "extract/tkmk00/007FEBC0.tkmk00"
align(0x10)
tkmk00.7FEFC0:
insert "extract/tkmk00/007FEFC0.tkmk00"
align(0x10)
tkmk00.7FF3C0:
insert "extract/tkmk00/007FF3C0.tkmk00"
align(0x10)
tkmk00.7FF7C0:
insert "extract/tkmk00/007FF7C0.tkmk00"
align(0x10)
tkmk00.7FFCC0:
insert "extract/tkmk00/007FFCC0.tkmk00"
align(0x10)
tkmk00.8000C0:
insert "extract/tkmk00/008000C0.tkmk00"
align(0x10)
tkmk00.8004C0:
insert "extract/tkmk00/008004C0.tkmk00"
align(0x10)
tkmk00.8008C0:
insert "extract/tkmk00/008008C0.tkmk00"
align(0x10)
tkmk00.800DC0:
insert "extract/tkmk00/00800DC0.tkmk00"
align(0x10)
tkmk00.8010C0:
insert "extract/tkmk00/008010C0.tkmk00"
align(0x10)
tkmk00.8014C0:
insert "extract/tkmk00/008014C0.tkmk00"
align(0x10)
tkmk00.8018C0:
insert "extract/tkmk00/008018C0.tkmk00"
align(0x10)
tkmk00.801EC0:
insert "extract/tkmk00/00801EC0.tkmk00"
align(0x10)
tkmk00.8021C0:
insert "extract/tkmk00/008021C0.tkmk00"
align(0x10)
tkmk00.802DC0:
insert "extract/tkmk00/00802DC0.tkmk00"
align(0x10)
tkmk00.8031C0:
insert "extract/tkmk00/008031C0.tkmk00"
align(0x10)
tkmk00.8035C0:
insert "extract/tkmk00/008035C0.tkmk00"
align(0x10)
tkmk00.8039C0:
insert "extract/tkmk00/008039C0.tkmk00"
align(0x10)
tkmk00.803DC0:
insert "extract/tkmk00/00803DC0.tkmk00"
align(0x10)
tkmk00.8049C0:
insert "extract/tkmk00/008049C0.tkmk00"
align(0x10)
tkmk00.804EC0:
insert "extract/tkmk00/00804EC0.tkmk00"
align(0x10)
tkmk00.8055C0:
insert "extract/tkmk00/008055C0.tkmk00"
align(0x10)
tkmk00.805FC0:
insert "extract/tkmk00/00805FC0.tkmk00"
align(0x10)
tkmk00.806AC0:
insert "extract/tkmk00/00806AC0.tkmk00"
align(0x10)
tkmk00.806DC0:
insert "extract/tkmk00/00806DC0.tkmk00"
align(0x10)
tkmk00.8071C0:
insert "extract/tkmk00/008071C0.tkmk00"
align(0x10)
tkmk00.8075C0:
insert "extract/tkmk00/008075C0.tkmk00"
align(0x10)
tkmk00.8078C0:
insert "extract/tkmk00/008078C0.tkmk00"
align(0x10)
tkmk00.807BC0:
insert "extract/tkmk00/00807BC0.tkmk00"
align(0x10)
tkmk00.807EC0:
insert "extract/tkmk00/00807EC0.tkmk00"
align(0x10)
tkmk00.8080C0:
insert "extract/tkmk00/008080C0.tkmk00"
align(0x10)
tkmk00.8082C0:
insert "extract/tkmk00/008082C0.tkmk00"
align(0x10)
tkmk00.8084C0:
insert "extract/tkmk00/008084C0.tkmk00"
align(0x10)
tkmk00.8086C0:
insert "extract/tkmk00/008086C0.tkmk00"
align(0x10)
tkmk00.8089C0:
insert "extract/tkmk00/008089C0.tkmk00"
align(0x10)
tkmk00.808CC0:
insert "extract/tkmk00/00808CC0.tkmk00"
align(0x10)
tkmk00.808EC0:
insert "extract/tkmk00/00808EC0.tkmk00"
align(0x10)
tkmk00.8090C0:
insert "extract/tkmk00/008090C0.tkmk00"
align(0x10)
tkmk00.8092C0:
insert "extract/tkmk00/008092C0.tkmk00"
align(0x10)
tkmk00.81F6C0:
insert "extract/tkmk00/0081F6C0.tkmk00"
align(0x10)
tkmk00.8202C0:
insert "extract/tkmk00/008202C0.tkmk00"
align(0x10)
tkmk00.8209C0:
insert "extract/tkmk00/008209C0.tkmk00"
align(0x10)
tkmk00.820AC0:
insert "extract/tkmk00/00820AC0.tkmk00"
align(0x10)
tkmk00.820FC0:
insert "extract/tkmk00/00820FC0.tkmk00"
align(0x10)
