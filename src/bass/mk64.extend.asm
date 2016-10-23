// MK64 (U) relocate course data to end of extended ROM and update course table
// Usage:
//   1. place "Mario Kart 64 (U) [!].z64" in same directory as this file
//   2. use mk64extract to extract level display list, vertex, and texture data to "extract" dir
//   3. run bass assembler: bass mk64.extend.asm
// Output is 16MB mk64.extend.z64

arch n64.cpu
endian msb
output "mk64.extend.z64", create

// macros
macro align(size) {
   while (pc() % {size}) {
      db 0
   }
}

// set extended length to 16MB
origin 0x0
fill 0x1000000

// insert original ROM
origin 0x0
insert "Mario Kart 64 (U) [!].z64"

// Course data reference table (802B8D80/122390)
origin 0x122390
macro COURSE(dl_s, dl_e, vx_s, vx_e, tx_s, tx_e, vx_seg, unk1C, pdl_o, unk24, tx_seg, flag) {
  // 0x00    0x04    0x08    0x0C    0x10    0x14    0x18            0x1C     0x20                      0x24     0x28 
  dw {dl_s}, {dl_e}, {vx_s}, {vx_e}, {tx_s}, {tx_e}, {vx_seg} << 24, {unk1C}, {vx_seg} << 24 | {pdl_o}, {unk24}, {tx_seg} << 24
  // 0x2C    0x2E
  dh {flag}, 0
}
// Inserted new table (first 6 columns differ)
COURSE(mario_dl_s, mario_dl_e, mario_vx_s, mario_vx_e, mario_tx_s, mario_tx_e, 0x0F, 0x167D, (mario_cd_s - mario_vx_s), 0x6930, 0x09, 0x0) // Mario Raceway
COURSE(choco_dl_s, choco_dl_e, choco_vx_s, choco_vx_e, choco_tx_s, choco_tx_e, 0x0F, 0x15B8, (choco_cd_s - choco_vx_s), 0x5AE8, 0x09, 0x1) // Choco Mountain
COURSE(bowsr_dl_s, bowsr_dl_e, bowsr_vx_s, bowsr_vx_e, bowsr_tx_s, bowsr_tx_e, 0x0F, 0x2537, (bowsr_cd_s - bowsr_vx_s), 0x9918, 0x09, 0x0) // Bowser's Castle
COURSE(bansh_dl_s, bansh_dl_e, bansh_vx_s, bansh_vx_e, bansh_tx_s, bansh_tx_e, 0x0F, 0x1351, (bansh_cd_s - bansh_vx_s), 0x7340, 0x09, 0x1) // Banshee Boardwalk
COURSE(yoshi_dl_s, yoshi_dl_e, yoshi_vx_s, yoshi_vx_e, yoshi_tx_s, yoshi_tx_e, 0x0F, 0x0E88, (yoshi_cd_s - yoshi_vx_s), 0x8158, 0x09, 0x0) // Yoshi Valley
COURSE(frapp_dl_s, frapp_dl_e, frapp_vx_s, frapp_vx_e, frapp_tx_s, frapp_tx_e, 0x0F, 0x1599, (frapp_cd_s - frapp_vx_s), 0x6648, 0x09, 0x0) // Frappe Snowland
COURSE(koopa_dl_s, koopa_dl_e, koopa_vx_s, koopa_vx_e, koopa_tx_s, koopa_tx_e, 0x0F, 0x24A0, (koopa_cd_s - koopa_vx_s), 0xB2B8, 0x09, 0x0) // Koopa Troopa Beach
COURSE(royal_dl_s, royal_dl_e, royal_vx_s, royal_vx_e, royal_tx_s, royal_tx_e, 0x0F, 0x2072, (royal_cd_s - royal_vx_s), 0xB128, 0x09, 0x0) // Royal Raceway
COURSE(luigi_dl_s, luigi_dl_e, luigi_vx_s, luigi_vx_e, luigi_tx_s, luigi_tx_e, 0x0F, 0x1730, (luigi_cd_s - luigi_vx_s), 0xC738, 0x09, 0x0) // Luigi Raceway
COURSE(moomo_dl_s, moomo_dl_e, moomo_vx_s, moomo_vx_e, moomo_tx_s, moomo_tx_e, 0x0F, 0x1F24, (moomo_cd_s - moomo_vx_s), 0x6738, 0x09, 0x0) // Moo Moo Farm
COURSE(toads_dl_s, toads_dl_e, toads_vx_s, toads_vx_e, toads_tx_s, toads_tx_e, 0x0F, 0x18D7, (toads_cd_s - toads_vx_s), 0x6B10, 0x09, 0x0) // Toad's Turnpike
COURSE(kalim_dl_s, kalim_dl_e, kalim_vx_s, kalim_vx_e, kalim_tx_s, kalim_tx_e, 0x0F, 0x18F9, (kalim_cd_s - kalim_vx_s), 0xA678, 0x09, 0x0) // Kalimari Desert
COURSE(sherb_dl_s, sherb_dl_e, sherb_vx_s, sherb_vx_e, sherb_tx_s, sherb_tx_e, 0x0F, 0x0A76, (sherb_cd_s - sherb_vx_s), 0x3850, 0x09, 0x0) // Sherbet Land
COURSE(rainb_dl_s, rainb_dl_e, rainb_vx_s, rainb_vx_e, rainb_tx_s, rainb_tx_e, 0x0F, 0x0C27, (rainb_cd_s - rainb_vx_s), 0x2100, 0x09, 0x0) // Rainbow Road
COURSE(wario_dl_s, wario_dl_e, wario_vx_s, wario_vx_e, wario_tx_s, wario_tx_e, 0x0F, 0x17B3, (wario_cd_s - wario_vx_s), 0xA4B8, 0x09, 0x0) // Wario Stadium
COURSE(block_dl_s, block_dl_e, block_vx_s, block_vx_e, block_tx_s, block_tx_e, 0x0F, 0x0440, (block_cd_s - block_vx_s), 0x15D0, 0x09, 0x0) // Block Fort
COURSE(skysc_dl_s, skysc_dl_e, skysc_vx_s, skysc_vx_e, skysc_tx_s, skysc_tx_e, 0x0F, 0x043E, (skysc_cd_s - skysc_vx_s), 0x1118, 0x09, 0x0) // Skyscraper
COURSE(doubl_dl_s, doubl_dl_e, doubl_vx_s, doubl_vx_e, doubl_tx_s, doubl_tx_e, 0x0F, 0x022B, (doubl_cd_s - doubl_vx_s), 0x0748, 0x09, 0x0) // Double Deck
COURSE(jungl_dl_s, jungl_dl_e, jungl_vx_s, jungl_vx_e, jungl_tx_s, jungl_tx_e, 0x0F, 0x162F, (jungl_cd_s - jungl_vx_s), 0x9C20, 0x09, 0x0) // DK's Jungle Parkway
COURSE(donut_dl_s, donut_dl_e, donut_vx_s, donut_vx_e, donut_tx_s, donut_tx_e, 0x0F, 0x048D, (donut_cd_s - donut_vx_s), 0x1078, 0x09, 0x0) // Big Donut

// overwrite existing course data with 0x00
origin 0x8284D0
fill (0x966260 - 0x8284D0)

// start loading course data at 12MB
origin 0xC00000

//-----------------------------------------------------------------
// course MIO0 display lists, item box placements, path data
//-----------------------------------------------------------------
align(0x10)
mario_dl_s:
insert "extract/00_MARIORACEWAY_SEG06.mio0"
align(0x10)
mario_dl_e:

choco_dl_s:
insert "extract/01_CHOCOMOUNTAIN_SEG06.mio0"
align(0x10)
choco_dl_e:

bowsr_dl_s:
insert "extract/02_BOWSERSCASTLE_SEG06.mio0"
align(0x10)
bowsr_dl_e:

bansh_dl_s:
insert "extract/03_BANSHEEBOARDWALK_SEG06.mio0"
align(0x10)
bansh_dl_e:

yoshi_dl_s:
insert "extract/04_YOSHIVALLEY_SEG06.mio0"
align(0x10)
yoshi_dl_e:

frapp_dl_s:
insert "extract/05_FRAPPESNOWLAND_SEG06.mio0"
align(0x10)
frapp_dl_e:

koopa_dl_s:
insert "extract/06_KOOPATROOPABEACH_SEG06.mio0"
align(0x10)
koopa_dl_e:

royal_dl_s:
insert "extract/07_ROYALRACEWAY_SEG06.mio0"
align(0x10)
royal_dl_e:

luigi_dl_s:
insert "extract/08_LUIGIRACEWAY_SEG06.mio0"
align(0x10)
luigi_dl_e:

moomo_dl_s:
insert "extract/09_MOOMOOFARM_SEG06.mio0"
align(0x10)
moomo_dl_e:

toads_dl_s:
insert "extract/10_TOADSTURNPIKE_SEG06.mio0"
align(0x10)
toads_dl_e:

kalim_dl_s:
insert "extract/11_KALIMARIDESERT_SEG06.mio0"
align(0x10)
kalim_dl_e:

sherb_dl_s:
insert "extract/12_SHERBETLAND_SEG06.mio0"
align(0x10)
sherb_dl_e:

rainb_dl_s:
insert "extract/13_RAINBOWROAD_SEG06.mio0"
align(0x10)
rainb_dl_e:

wario_dl_s:
insert "extract/14_WARIOSTADIUM_SEG06.mio0"
align(0x10)
wario_dl_e:

block_dl_s:
insert "extract/15_BLOCKFORT_SEG06.mio0"
align(0x10)
block_dl_e:

skysc_dl_s:
insert "extract/16_SKYSCRAPER_SEG06.mio0"
align(0x10)
skysc_dl_e:

doubl_dl_s:
insert "extract/17_DOUBLEDECK_SEG06.mio0"
align(0x10)
doubl_dl_e:

jungl_dl_s:
insert "extract/18_JUNGLEPARKWAY_SEG06.mio0"
align(0x10)
jungl_dl_e:

donut_dl_s:
insert "extract/19_BIGDONUT_SEG06.mio0"
align(0x10)
donut_dl_e:

//-----------------------------------------------------------------
// course texture MIO0 block references and display list references
//-----------------------------------------------------------------
mario_tx_s:
insert "extract/00_MARIORACEWAY_REFS.bin"
align(0x10)
mario_tx_e:

choco_tx_s:
insert "extract/01_CHOCOMOUNTAIN_REFS.bin"
align(0x10)
choco_tx_e:

bowsr_tx_s:
align(0x10)
insert "extract/02_BOWSERSCASTLE_REFS.bin"
bowsr_tx_e:

bansh_tx_s:
insert "extract/03_BANSHEEBOARDWALK_REFS.bin"
align(0x10)
bansh_tx_e:

yoshi_tx_s:
insert "extract/04_YOSHIVALLEY_REFS.bin"
align(0x10)
yoshi_tx_e:

frapp_tx_s:
insert "extract/05_FRAPPESNOWLAND_REFS.bin"
align(0x10)
frapp_tx_e:

koopa_tx_s:
insert "extract/06_KOOPATROOPABEACH_REFS.bin"
align(0x10)
koopa_tx_e:

royal_tx_s:
insert "extract/07_ROYALRACEWAY_REFS.bin"
align(0x10)
royal_tx_e:

luigi_tx_s:
insert "extract/08_LUIGIRACEWAY_REFS.bin"
align(0x10)
luigi_tx_e:

moomo_tx_s:
insert "extract/09_MOOMOOFARM_REFS.bin"
align(0x10)
moomo_tx_e:

toads_tx_s:
insert "extract/10_TOADSTURNPIKE_REFS.bin"
align(0x10)
toads_tx_e:

kalim_tx_s:
insert "extract/11_KALIMARIDESERT_REFS.bin"
align(0x10)
kalim_tx_e:

sherb_tx_s:
insert "extract/12_SHERBETLAND_REFS.bin"
align(0x10)
sherb_tx_e:

rainb_tx_s:
insert "extract/13_RAINBOWROAD_REFS.bin"
align(0x10)
rainb_tx_e:

wario_tx_s:
insert "extract/14_WARIOSTADIUM_REFS.bin"
align(0x10)
wario_tx_e:

block_tx_s:
insert "extract/15_BLOCKFORT_REFS.bin"
align(0x10)
block_tx_e:

skysc_tx_s:
insert "extract/16_SKYSCRAPER_REFS.bin"
align(0x10)
skysc_tx_e:

doubl_tx_s:
insert "extract/17_DOUBLEDECK_REFS.bin"
align(0x10)
doubl_tx_e:

jungl_tx_s:
insert "extract/18_JUNGLEPARKWAY_REFS.bin"
align(0x10)
jungl_tx_e:

donut_tx_s:
insert "extract/19_BIGDONUT_REFS.bin"
align(0x10)
donut_tx_e:

//-----------------------------------------------------------------
// course vertex data
//-----------------------------------------------------------------
mario_vx_s:
insert "extract/00_MARIORACEWAY_SEG04.mio0"
mario_cd_s:
insert "extract/00_MARIORACEWAY_SEG07.bin"
align(0x10)
mario_vx_e:

choco_vx_s:
insert "extract/01_CHOCOMOUNTAIN_SEG04.mio0"
choco_cd_s:
insert "extract/01_CHOCOMOUNTAIN_SEG07.bin"
align(0x10)
choco_vx_e:

bowsr_vx_s:
insert "extract/02_BOWSERSCASTLE_SEG04.mio0"
bowsr_cd_s:
insert "extract/02_BOWSERSCASTLE_SEG07.bin"
align(0x10)
bowsr_vx_e:

bansh_vx_s:
insert "extract/03_BANSHEEBOARDWALK_SEG04.mio0"
bansh_cd_s:
insert "extract/03_BANSHEEBOARDWALK_SEG07.bin"
align(0x10)
bansh_vx_e:

yoshi_vx_s:
insert "extract/04_YOSHIVALLEY_SEG04.mio0"
yoshi_cd_s:
insert "extract/04_YOSHIVALLEY_SEG07.bin"
align(0x10)
yoshi_vx_e:

frapp_vx_s:
insert "extract/05_FRAPPESNOWLAND_SEG04.mio0"
frapp_cd_s:
insert "extract/05_FRAPPESNOWLAND_SEG07.bin"
align(0x10)
frapp_vx_e:

koopa_vx_s:
insert "extract/06_KOOPATROOPABEACH_SEG04.mio0"
koopa_cd_s:
insert "extract/06_KOOPATROOPABEACH_SEG07.bin"
align(0x10)
koopa_vx_e:

royal_vx_s:
insert "extract/07_ROYALRACEWAY_SEG04.mio0"
royal_cd_s:
insert "extract/07_ROYALRACEWAY_SEG07.bin"
align(0x10)
royal_vx_e:

luigi_vx_s:
insert "extract/08_LUIGIRACEWAY_SEG04.mio0"
luigi_cd_s:
insert "extract/08_LUIGIRACEWAY_SEG07.bin"
align(0x10)
luigi_vx_e:

moomo_vx_s:
insert "extract/09_MOOMOOFARM_SEG04.mio0"
moomo_cd_s:
insert "extract/09_MOOMOOFARM_SEG07.bin"
align(0x10)
moomo_vx_e:

toads_vx_s:
insert "extract/10_TOADSTURNPIKE_SEG04.mio0"
toads_cd_s:
insert "extract/10_TOADSTURNPIKE_SEG07.bin"
align(0x10)
toads_vx_e:

kalim_vx_s:
insert "extract/11_KALIMARIDESERT_SEG04.mio0"
kalim_cd_s:
insert "extract/11_KALIMARIDESERT_SEG07.bin"
align(0x10)
kalim_vx_e:

sherb_vx_s:
insert "extract/12_SHERBETLAND_SEG04.mio0"
sherb_cd_s:
insert "extract/12_SHERBETLAND_SEG07.bin"
align(0x10)
sherb_vx_e:

rainb_vx_s:
insert "extract/13_RAINBOWROAD_SEG04.mio0"
rainb_cd_s:
insert "extract/13_RAINBOWROAD_SEG07.bin"
align(0x10)
rainb_vx_e:

wario_vx_s:
insert "extract/14_WARIOSTADIUM_SEG04.mio0"
wario_cd_s:
insert "extract/14_WARIOSTADIUM_SEG07.bin"
align(0x10)
wario_vx_e:

block_vx_s:
insert "extract/15_BLOCKFORT_SEG04.mio0"
block_cd_s:
insert "extract/15_BLOCKFORT_SEG07.bin"
align(0x10)
block_vx_e:

skysc_vx_s:
insert "extract/16_SKYSCRAPER_SEG04.mio0"
skysc_cd_s:
insert "extract/16_SKYSCRAPER_SEG07.bin"
align(0x10)
skysc_vx_e:

doubl_vx_s:
insert "extract/17_DOUBLEDECK_SEG04.mio0"
doubl_cd_s:
insert "extract/17_DOUBLEDECK_SEG07.bin"
align(0x10)
doubl_vx_e:

jungl_vx_s:
insert "extract/18_JUNGLEPARKWAY_SEG04.mio0"
jungl_cd_s:
insert "extract/18_JUNGLEPARKWAY_SEG07.bin"
align(0x10)
jungl_vx_e:

donut_vx_s:
insert "extract/19_BIGDONUT_SEG04.mio0"
donut_cd_s:
insert "extract/19_BIGDONUT_SEG07.bin"
align(0x10)
donut_vx_e:
