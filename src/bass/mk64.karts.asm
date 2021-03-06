// MK64 (U) update kart textures
// Usage:
//   1. place "Mario Kart 64 (U) [!].z64" in same directory as this file
//   2. use mk64extract to extract MIO0 kart data to "extract" dir
//      ./tools/bass mk64.karts.asm
//      ./tools/n64cksum mk64.karts.z64
// Output is mk64.karts.z64

arch n64.cpu
endian msb

output "mk64.karts.z64", create

// macros
macro align(size) {
   while (pc() % {size}) {
      db 0
   }
}

// ROM 0x001000 DMA to 0x80000400 (0x7FFFF400)
macro seek(variable offset) {
  origin ((offset & 0x7FFFFFFF) + 0xC00)
  base offset
}

// insert original ROM
origin 0x0
insert "Mario Kart 64 (U) [!].z64"

// 800DDBF4/DE7F4: wheel palettes
seek(0x800DDBF4)
WheelPalMario0:
dw PalMario2636A0, PalMario260CA0, PalMario25E2A0, PalMario25B8A0 // 0F11E230 0F11B830 0F118E30 0F116430
dw PalMario258EA0, PalMario2564A0, PalMario253AA0, PalMario2510A0 // 0F113A30 0F111030 0F10E630 0F10BC30
dw PalMario24E6A0                                                 // 0F109230
WheelPalMario1:
dw PalMario2700A0, PalMario2700A0, PalMario26D8A0, PalMario26B0A0 // 0F12AC30, 0F12AC30, 0F128430, 0F125C30
dw PalMario26B0A0, PalMario26B0A0, PalMario2688A0, PalMario2660A0 // 0F125C30, 0F125C30, 0F123430, 0F120C30
dw PalMario2660A0                                                 // 0F120C30
WheelPalLuigi0:
dw PalLuigi1D0E6C, PalLuigi1CE46C, PalLuigi1CBA6C, PalLuigi1C906C // 0F08B9FC 0F088FFC 0F0865FC 0F083BFC
dw PalLuigi1C666C, PalLuigi1C3C6C, PalLuigi1C126C, PalLuigi1BE86C // 0F0811FC 0F07E7FC 0F07BDFC 0F0793FC
dw PalLuigi1BBE6C                                                 // 0F0769FC
WheelPalLuigi1:
dw PalLuigi1DD86C, PalLuigi1DD86C, PalLuigi1DB06C, PalLuigi1D886C // 0F0983FC 0F0983FC 0F095BFC 0F0933FC
dw PalLuigi1D886C, PalLuigi1D886C, PalLuigi1D606C, PalLuigi1D386C // 0F0933FC 0F0933FC 0F090BFC 0F08E3FC
dw PalLuigi1D386C                                                 // 0F08E3FC
WheelPalBowser0:
dw PalBowser62EEF8, PalBowser62C4F8, PalBowser629AF8, PalBowser6270F8 // 0F4E9A88 0F4E7088 0F4E4688 0F4E1C88
dw PalBowser6246F8, PalBowser621CF8, PalBowser61F2F8, PalBowser61C8F8 // 0F4DF288 0F4DC888 0F4D9E88 0F4D7488
dw PalBowser619EF8                                                    // 0F4D4A88
WheelPalBowser1:
dw PalBowser63B8F8, PalBowser63B8F8, PalBowser6390F8, PalBowser6368F8 // 0F4F6488 0F4F6488 0F4F3C88 0F4F1488
dw PalBowser6368F8, PalBowser6368F8, PalBowser6340F8, PalBowser6318F8 // 0F4F1488 0F4F1488 0F4EEC88 0F4EC488
dw PalBowser6318F8                                                    // 0F4EC488
WheelPalToad0:
dw  PalToad4BCAC8,  PalToad4BA0C8,  PalToad4B76C8,  PalToad4B4CC8 // 0F377658 0F374C58 0F372258 0F36F858
dw  PalToad4B22C8,  PalToad4AF8C8,  PalToad4ACEC8,  PalToad4AA4C8 // 0F36CE58 0F36A458 0F367A58 0F365058
dw  PalToad4A7AC8                                                 // 0F362658
WheelPalToad1:
dw  PalToad4C94C8,  PalToad4C94C8,  PalToad4C6CC8,  PalToad4C44C8 // 0F384058 0F384058 0F381858 0F37F058
dw  PalToad4C44C8,  PalToad4C44C8,  PalToad4C1CC8,  PalToad4BF4C8 // 0F37F058 0F37F058 0F37C858 0F37A058
dw  PalToad4BF4C8                                                 // 0F37A058
WheelPalYoshi0:
dw PalYoshi2FABC8, PalYoshi2F81C8, PalYoshi2F57C8, PalYoshi2F2DC8 // 0F1B5758 0F1B2D58 0F1B0358 0F1AD958
dw PalYoshi2F03C8, PalYoshi2ED9C8, PalYoshi2EAFC8, PalYoshi2E85C8 // 0F1AAF58 0F1A8558 0F1A5B58 0F1A3158
dw PalYoshi2E5BC8                                                 // 0F1A0758
WheelPalYoshi1:
dw PalYoshi3075C8, PalYoshi3075C8, PalYoshi304DC8, PalYoshi3025C8 // 0F1C2158 0F1C2158 0F1BF958 0F1BD158
dw PalYoshi3025C8, PalYoshi3025C8, PalYoshi2FFDC8, PalYoshi2FD5C8 // 0F1BD158 0F1BD158 0F1BA958 0F1B8158
dw PalYoshi2FD5C8                                                 // 0F1B8158
WheelPalDK0:
dw    PalDK56EAE4,    PalDK56C0E4,    PalDK5696E4,    PalDK566CE4 // 0F429674 0F426C74 0F424274 0F421874
dw    PalDK5642E4,    PalDK5618E4,    PalDK55EEE4,    PalDK55C4E4 // 0F41EE74 0F41C474 0F419A74 0F417074
dw    PalDK559AE4                                                 // 0F414674
WheelPalDK1:
dw    PalDK57B4E4,    PalDK57B4E4,    PalDK578CE4,    PalDK5764E4 // 0F436074 0F436074 0F433874 0F431074
dw    PalDK5764E4,    PalDK5764E4,    PalDK573CE4,    PalDK5714E4 // 0F431074 0F431074 0F42E874 0F42C074
dw    PalDK5714E4                                                 // 0F42C074
WheelPalPeach0:
dw PalPeach38ED38, PalPeach38C338, PalPeach389938, PalPeach386F38 // 0F2498C8 0F246EC8 0F2444C8 0F241AC8
dw PalPeach384538, PalPeach381B38, PalPeach37F138, PalPeach37C738 // 0F23F0C8 0F23C6C8 0F239CC8 0F2372C8
dw PalPeach379D38                                                 // 0F2348C8
WheelPalPeach1:
dw PalPeach39B738, PalPeach39B738, PalPeach398F38, PalPeach396738 // 0F2562C8 0F2562C8 0F253AC8 0F2512C8
dw PalPeach396738, PalPeach396738, PalPeach393F38, PalPeach391738 // 0F2512C8 0F2512C8 0F24EAC8 0F24C2C8
dw PalPeach391738                                                 // 0F24C2C8
WheelPalWario0:
dw PalWario42C05C, PalWario42965C, PalWario426C5C, PalWario42425C // 0F2E6BEC 0F2E41EC 0F2E17EC 0F2DEDEC
dw PalWario42185C, PalWario41EE5C, PalWario41C45C, PalWario419A5C // 0F2DC3EC 0F2D99EC 0F2D6FEC 0F2D45EC
dw PalWario41705C                                                 // 0F2D1BEC
WheelPalWario1:
dw PalWario438A5C, PalWario438A5C, PalWario43625C, PalWario433A5C // 0F2F35EC 0F2F35EC 0F2F0DEC 0F2EE5EC
dw PalWario433A5C, PalWario433A5C, PalWario43125C, PalWario42EA5C // 0F2EE5EC 0F2EE5EC 0F2EBDEC 0F2E95EC
dw PalWario42EA5C                                                 // 0F2E95EC

// 800DDE34/DEA34: table of wheel palette pointers
dw WheelPalMario0, WheelPalLuigi0, WheelPalYoshi0,   WheelPalToad0 // 800DDBF4 800DDC3C 800DDD14 800DDCCC
dw    WheelPalDK0, WheelPalWario0, WheelPalPeach0, WheelPalBowser0 // 800DDD5C 800DDDEC 800DDDA4 800DDC84
dw WheelPalMario1, WheelPalLuigi1, WheelPalYoshi1,   WheelPalToad1 // 800DDC18 800DDC60 800DDD38 800DDCF0
dw    WheelPalDK1, WheelPalWario1, WheelPalPeach1, WheelPalBowser1 // 800DDD80 800DDE10 800DDDC8 800DDCA8

// TODO: DEA74-DEABF
dw 0x00000060, 0x00000080, 0x000000C0, 0x00000100
dw 0x00000120, 0x00000180, 0x00000200, 0x00000220
dw 0x00000240, 0x00000000, 0x41100000, 0x40E00000
dw 0x40A00000, 0x00000000, 0x00000000 // TODO 0x40A00000 = 5.0
dh 0x06C0, 0x06E0, 0x06E0, 0x0680, 0x07C0, 0x0700, 0x0680, 0x0910

// 800DDEC0/DEAC0 kart texture tables
KartsMario0:
dw  mario000,  mario001,  mario002,  mario003 // 0F09AD80 0F09B210 0F09B6A8 0F09BB44
dw  mario004,  mario005,  mario006,  mario007 // 0F09BFF0 0F09C4A8 0F09C964 0F09CE40
dw  mario008,  mario009,  mario010,  mario011 // 0F09D338 0F09D854 0F09DD8C 0F09E2BC
dw  mario012,  mario013,  mario014,  mario015 // 0F09E804 0F09ED54 0F09F2BC 0F09F830
dw  mario016,  mario017,  mario018,  mario019 // 0F09FDB8 0F0A0330 0F0A08B8 0F0A0E44
dw  mario020,  mario195,  mario196,  mario197 // 0F0A13E8 0F0DC438 0F0DC9B0 0F0DCF64
dw  mario198,  mario199,  mario200,  mario201 // 0F0DD514 0F0DDB00 0F0DE0FC 0F0DE718
dw  mario202,  mario203,  mario204,  mario205 // 0F0DED5C 0F0DF3A8 0F0DFA04 0F0E0058
dw  mario206,  mario207,  mario208            // 0F0E0680 0F0E0CB4 0F0E12D0
KartsMario1:
dw  mario021                                  // 0F0A1988
dw  mario022,  mario023,  mario024,  mario025 // 0F0A1E18 0F0A22D0 0F0A2768 0F0A2C34
dw  mario026,  mario027,  mario028,  mario029 // 0F0A310C 0F0A35E0 0F0A3AE0 0F0A3FE8
dw  mario030,  mario031,  mario032,  mario033 // 0F0A4518 0F0A4A58 0F0A4FB0 0F0A5514
dw  mario034,  mario035,  mario036,  mario037 // 0F0A5A68 0F0A5FE8 0F0A6558 0F0A6AE8
dw  mario038,  mario039,  mario040,  mario041 // 0F0A7074 0F0A75FC 0F0A7B7C 0F0A8104
dw  mario195,  mario196,  mario197,  mario198 // 0F0DC438 0F0DC9B0 0F0DCF64 0F0DD514
dw  mario199,  mario200,  mario201,  mario202 // 0F0DDB00 0F0DE0FC 0F0DE718 0F0DED5C
dw  mario203,  mario204,  mario205,  mario206 // 0F0DF3A8 0F0DFA04 0F0E0058 0F0E0680
dw  mario207,  mario208                       // 0F0E0CB4 0F0E12D0
KartsMario2:
dw  mario042,  mario043,  mario044,  mario045 // 0F0A86A0 0F0A8B60 0F0A9024 0F0A94F8
dw  mario046,  mario047,  mario048,  mario049 // 0F0A99D0 0F0A9ECC 0F0AA3EC 0F0AA910
dw  mario050,  mario051,  mario052,  mario053 // 0F0AAE38 0F0AB37C 0F0AB8CC 0F0ABE3C
dw  mario054,  mario055,  mario056,  mario057 // 0F0AC3A4 0F0AC920 0F0ACEAC 0F0AD42C
dw  mario058,  mario059,  mario060,  mario061 // 0F0AD9A8 0F0ADF38 0F0AE4DC 0F0AEA90
dw  mario062,  mario215,  mario216,  mario217 // 0F0AF03C 0F0E3878 0F0E3E28 0F0E43F0
dw  mario218,  mario219,  mario220,  mario221 // 0F0E49B8 0F0E4FA0 0F0E5570 0F0E5B58
dw  mario222,  mario223,  mario224,  mario225 // 0F0E6170 0F0E6788 0F0E6DA0 0F0E73A8 
dw  mario226,  mario227,  mario228            // 0F0E79BC 0F0E7FA0 0F0E8578
KartsMario3:
dw  mario063,  mario064,  mario065            // 0F0AF5EC 0F0AFAAC 0F0AFF84
dw  mario066,  mario067,  mario068,  mario069 // 0F0B0464 0F0B093C 0F0B0E38 0F0B134C
dw  mario070,  mario071,  mario072,  mario073 // 0F0B1870 0F0B1DB8 0F0B22F8 0F0B2854
dw  mario074,  mario075,  mario076,  mario077 // 0F0B2DC8 0F0B3324 0F0B38A0 0F0B3E14
dw  mario078,  mario079,  mario080,  mario081 // 0F0B43A0 0F0B4940 0F0B4EF0 0F0B54A4
dw  mario082,  mario083,  mario235,  mario236 // 0F0B5A68 0F0B601C 0F0EAB20 0F0EB0E8
dw  mario237,  mario238,  mario239,  mario240 // 0F0EB6C8 0F0EBC9C 0F0EC280 0F0EC848
dw  mario241,  mario242,  mario243,  mario244 // 0F0ECE28 0F0ED404 0F0EDA00 0F0EDFF0
dw  mario245,  mario246,  mario247,  mario248 // 0F0EE5C0 0F0EEBA4 0F0EF150 0F0EF6E8
KartsMario4:
dw  mario084,  mario085,  mario086,  mario087 // 0F0B65D0 0F0B6A80 0F0B6F64 0F0B7458
dw  mario088,  mario089,  mario090,  mario091 // 0F0B794C 0F0B7E54 0F0B837C 0F0B88C0
dw  mario092,  mario093,  mario094,  mario095 // 0F0B8E20 0F0B938C 0F0B9900 0F0B9E7C
dw  mario096,  mario097,  mario098,  mario099 // 0F0BA3FC 0F0BA980 0F0BAF08 0F0BB4AC
dw  mario100,  mario101,  mario102,  mario103 // 0F0BBA54 0F0BBFFC 0F0BC5A4 0F0BCB64
dw  mario104,  mario235,  mario236,  mario237 // 0F0BD128 0F0EAB20 0F0EB0E8 0F0EB6C8
dw  mario238,  mario239,  mario240,  mario241 // 0F0EBC9C 0F0EC280 0F0EC848 0F0ECE28
dw  mario242,  mario243,  mario244,  mario245 // 0F0ED404 0F0EDA00 0F0EDFF0 0F0EE5C0
dw  mario246,  mario247,  mario248            // 0F0EEBA4 0F0EF150 0F0EF6E8
KartsMario5:
dw  mario105                                  // 0F0BD6E0
dw  mario106,  mario107,  mario108,  mario109 // 0F0BDBC0 0F0BE0A8 0F0BE59C 0F0BEAAC
dw  mario110,  mario111,  mario112,  mario113 // 0F0BEFB4 0F0BF500 0F0BFA50 0F0BFFB0
dw  mario114,  mario115,  mario116,  mario117 // 0F0C0520 0F0C0A90 0F0C1010 0F0C159C
dw  mario118,  mario119,  mario120,  mario121 // 0F0C1B34 0F0C20C8 0F0C268C 0F0C2C40
dw  mario122,  mario123,  mario124,  mario125 // 0F0C3208 0F0C37BC 0F0C3D9C 0F0C4364
dw  mario235,  mario236,  mario237,  mario238 // 0F0EAB20 0F0EB0E8 0F0EB6C8 0F0EBC9C
dw  mario239,  mario240,  mario241,  mario242 // 0F0EC280 0F0EC848 0F0ECE28 0F0ED404
dw  mario243,  mario244,  mario245,  mario246 // 0F0EDA00 0F0EDFF0 0F0EE5C0 0F0EEBA4
dw  mario247,  mario248                       // 0F0EF150 0F0EF6E8
KartsMario6:
dw  mario126,  mario127                       // 0F0C4934 0F0C4E20
dw  mario128,  mario129,  mario130,  mario131 // 0F0C5320 0F0C583C 0F0C5D4C 0F0C627C
dw  mario132,  mario133,  mario134,  mario135 // 0F0C67B8 0F0C6D04 0F0C7254 0F0C77BC
dw  mario136,  mario137,  mario138,  mario139 // 0F0C7D20 0F0C82B0 0F0C8848 0F0C8DDC
dw  mario140,  mario141,  mario142,  mario143 // 0F0C9378 0F0C9928 0F0C9EF0 0F0CA4B8
dw  mario144,  mario145,  mario146,  mario255 // 0F0CAA70 0F0CB03C 0F0CB604 0F0F1CA8
dw  mario256,  mario257,  mario258,  mario259 // 0F0F228C 0F0F2870 0F0F2E68 0F0F3430
dw  mario260,  mario261,  mario262,  mario263 // 0F0F39F8 0F0F3FD0 0F0F45B0 0F0F4B88
dw  mario264,  mario265,  mario266,  mario267 // 0F0F512C 0F0F56C8 0F0F5C5C 0F0F61D4
dw  mario268                                  // 0F0F672C
KartsMario7:
dw  mario147,  mario148,  mario149            // 0F0CBBE4 0F0CC100 0F0CC61C
dw  mario150,  mario151,  mario152,  mario153 // 0F0CCB40 0F0CD07C 0F0CD5C8 0F0CDB00
dw  mario154,  mario155,  mario156,  mario157 // 0F0CE068 0F0CE5B8 0F0CEB44 0F0CF0D0
dw  mario158,  mario159,  mario160,  mario161 // 0F0CF67C 0F0CFC2C 0F0D01E0 0F0D0784
dw  mario162,  mario163,  mario164,  mario165 // 0F0D0D34 0F0D1304 0F0D18C8 0F0D1E94
dw  mario166,  mario167,  mario275,  mario276 // 0F0D2484 0F0D2A5C 0F0F8D68 0F0F9358
dw  mario277,  mario278,  mario279,  mario280 // 0F0F9940 0F0F9F0C 0F0FA4F0 0F0FAAA4
dw  mario281,  mario282,  mario283,  mario284 // 0F0FB070 0F0FB618 0F0FBBB8 0F0FC140
dw  mario285,  mario286,  mario287,  mario288 // 0F0FC6C0 0F0FCC0C 0F0FD138 0F0FD640
KartsMario8:
dw  mario168,  mario169,  mario170,  mario171 // 0F0D3048 0F0D3560 0F0D3A8C 0F0D3FE0
dw  mario172,  mario173,  mario174,  mario175 // 0F0D4510 0F0D4A54 0F0D4FB0 0F0D552C
dw  mario176,  mario177,  mario178,  mario179 // 0F0D5AA0 0F0D6020 0F0D65B4 0F0D6B5C
dw  mario180,  mario181,  mario182,  mario183 // 0F0D7108 0F0D76C0 0F0D7C78 0F0D8240
dw  mario184,  mario185,  mario186,  mario187 // 0F0D881C 0F0D8E00 0F0D93E0 0F0D99D0
dw  mario188,  mario275,  mario276,  mario277 // 0F0D9FAC 0F0F8D68 0F0F9358 0F0F9940
dw  mario278,  mario279,  mario280,  mario281 // 0F0F9F0C 0F0FA4F0 0F0FAAA4 0F0FB070
dw  mario282,  mario283,  mario284,  mario285 // 0F0FB618 0F0FBBB8 0F0FC140 0F0FC6C0
dw  mario286,  mario287,  mario288            // 0F0FCC0C 0F0FD138 0F0FD640
KartsMarioA:
dw  mario189                                  // 0F0DA5A4
dw  mario190,  mario191,  mario192,  mario193 // 0F0DAA44 0F0DAF18 0F0DB428 0F0DB958
dw  mario194,  mario195,  mario196,  mario197 // 0F0DBEB8 0F0DC438 0F0DC9B0 0F0DCF64
dw  mario198,  mario199,  mario200,  mario201 // 0F0DD514 0F0DDB00 0F0DE0FC 0F0DE718
dw  mario202,  mario203,  mario204,  mario205 // 0F0DED5C 0F0DF3A8 0F0DFA04 0F0E0058
dw  mario206,  mario207,  mario208            // 0F0E0680 0F0E0CB4 0F0E12D0
KartsMarioB:
dw  mario189                                  // 0F0DA5A4
dw  mario190,  mario191,  mario192,  mario193 // 0F0DAA44 0F0DAF18 0F0DB428 0F0DB958
dw  mario194,  mario195,  mario196,  mario197 // 0F0DBEB8 0F0DC438 0F0DC9B0 0F0DCF64
dw  mario198,  mario199,  mario200,  mario201 // 0F0DD514 0F0DDB00 0F0DE0FC 0F0DE718
dw  mario202,  mario203,  mario204,  mario205 // 0F0DED5C 0F0DF3A8 0F0DFA04 0F0E0058
dw  mario206,  mario207,  mario208            // 0F0E0680 0F0E0CB4 0F0E12D0
KartsMarioC:
dw  mario209                                  // 0F0E18BC
dw  mario210,  mario211,  mario212,  mario213 // 0F0E1D9C 0F0E22C4 0F0E2804 0F0E2D6C
dw  mario214,  mario215,  mario216,  mario217 // 0F0E32D8 0F0E3878 0F0E3E28 0F0E43F0
dw  mario218,  mario219,  mario220,  mario221 // 0F0E49B8 0F0E4FA0 0F0E5570 0F0E5B58
dw  mario222,  mario223,  mario224,  mario225 // 0F0E6170 0F0E6788 0F0E6DA0 0F0E73A8
dw  mario226,  mario227,  mario228            // 0F0E79BC 0F0E7FA0 0F0E8578
KartsMarioD:
dw  mario229                                  // 0F0E8B14
dw  mario230,  mario231,  mario232,  mario233 // 0F0E8FF0 0F0E9520 0F0E9A80 0F0E9FFC
dw  mario234,  mario235,  mario236,  mario237 // 0F0EA584 0F0EAB20 0F0EB0E8 0F0EB6C8
dw  mario238,  mario239,  mario240,  mario241 // 0F0EBC9C 0F0EC280 0F0EC848 0F0ECE28
dw  mario242,  mario243,  mario244,  mario245 // 0F0ED404 0F0EDA00 0F0EDFF0 0F0EE5C0
dw  mario246,  mario247,  mario248            // 0F0EEBA4 0F0EF150 0F0EF6E8
KartsMarioE:
dw  mario229                                  // 0F0E8B14
dw  mario230,  mario231,  mario232,  mario233 // 0F0E8FF0 0F0E9520 0F0E9A80 0F0E9FFC
dw  mario234,  mario235,  mario236,  mario237 // 0F0EA584 0F0EAB20 0F0EB0E8 0F0EB6C8
dw  mario238,  mario239,  mario240,  mario241 // 0F0EBC9C 0F0EC280 0F0EC848 0F0ECE28
dw  mario242,  mario243,  mario244,  mario245 // 0F0ED404 0F0EDA00 0F0EDFF0 0F0EE5C0
dw  mario246,  mario247,  mario248            // 0F0EEBA4 0F0EF150 0F0EF6E8 
KartsMarioF:
dw  mario229                                  // 0F0E8B14
dw  mario230,  mario231,  mario232,  mario233 // 0F0E8FF0 0F0E9520 0F0E9A80 0F0E9FFC
dw  mario234,  mario235,  mario236,  mario237 // 0F0EA584 0F0EAB20 0F0EB0E8 0F0EB6C8
dw  mario238,  mario239,  mario240,  mario241 // 0F0EBC9C 0F0EC280 0F0EC848 0F0ECE28
dw  mario242,  mario243,  mario244,  mario245 // 0F0ED404 0F0EDA00 0F0EDFF0 0F0EE5C0
dw  mario246,  mario247,  mario248            // 0F0EEBA4 0F0EF150 0F0EF6E8
KartsMarioG:
dw  mario249                                  // 0F0EFC30
dw  mario250,  mario251,  mario252,  mario253 // 0F0F0130 0F0F066C 0F0F0BC8 0F0F115C
dw  mario254,  mario255,  mario256,  mario257 // 0F0F16EC 0F0F1CA8 0F0F228C 0F0F2870
dw  mario258,  mario259,  mario260,  mario261 // 0F0F2E68 0F0F3430 0F0F39F8 0F0F3FD0
dw  mario262,  mario263,  mario264,  mario265 // 0F0F45B0 0F0F4B88 0F0F512C 0F0F56C8
dw  mario266,  mario267,  mario268            // 0F0F5C5C 0F0F61D4 0F0F672C
KartsMarioH:
dw  mario269                                  // 0F0F6C3C
dw  mario270,  mario271,  mario272,  mario273 // 0F0F718C 0F0F76E0 0F0F7C5C 0F0F81E8
dw  mario274,  mario275,  mario276,  mario277 // 0F0F879C 0F0F8D68 0F0F9358 0F0F9940
dw  mario278,  mario279,  mario280,  mario281 // 0F0F9F0C 0F0FA4F0 0F0FAAA4 0F0FB070
dw  mario282,  mario283,  mario284,  mario285 // 0F0FB618 0F0FBBB8 0F0FC140 0F0FC6C0
dw  mario286,  mario287,  mario288            // 0F0FCC0C 0F0FD138 0F0FD640 0F0F6C3C
KartsMarioI:
dw  mario269                                  // 0F0F6C3C
dw  mario270,  mario271,  mario272,  mario273 // 0F0F718C 0F0F76E0 0F0F7C5C 0F0F81E8
dw  mario274,  mario275,  mario276,  mario277 // 0F0F879C 0F0F8D68 0F0F9358 0F0F9940
dw  mario278,  mario279,  mario280,  mario281 // 0F0F9F0C 0F0FA4F0 0F0FAAA4 0F0FB070
dw  mario282,  mario283,  mario284,  mario285 // 0F0FB618 0F0FBBB8 0F0FC140 0F0FC6C0
dw  mario286,  mario287,  mario288            // 0F0FCC0C 0F0FD138 0F0FD640
// 800DE67C/DF27C
KartsToad0:
dw   toad000                                  // 0F2F5F70
dw   toad001,   toad002,   toad003,   toad004 // 0F2F63D8 0F2F685C 0F2F6CE8 0F2F7198
dw   toad005,   toad006,   toad007,   toad008 // 0F2F764C 0F2F7B20 0F2F7FFC 0F2F84DC
dw   toad009,   toad010,   toad011,   toad012 // 0F2F89CC 0F2F8EC8 0F2F93C8 0F2F98D8
dw   toad013,   toad014,   toad015,   toad016 // 0F2F9DF0 0F2FA31C 0F2FA850 0F2FADA8
dw   toad017,   toad018,   toad019,   toad020 // 0F2FB2F0 0F2FB84C 0F2FBDB4 0F2FC330
dw   toad195,   toad196,   toad197,   toad198 // 0F3366C8 0F336C64 0F337228 0F337808
dw   toad199,   toad200,   toad201,   toad202 // 0F337E14 0F33843C 0F338A60 0F339078
dw   toad203,   toad204,   toad205,   toad206 // 0F33967C 0F339C7C 0F33A254 0F33A828
dw   toad207,   toad208
KartsToad1:
dw   toad021,   toad022 // 0F33ADE4 0F33B394 0F2FC8D0 0F2FCD4C
dw   toad023,   toad024,   toad025,   toad026 // 0F2FD1D8 0F2FD67C 0F2FDB2C 0F2FDFDC
dw   toad027,   toad028,   toad029,   toad030 // 0F2FE490 0F2FE968 0F2FEE54 0F2FF35C
dw   toad031,   toad032,   toad033,   toad034 // 0F2FF870 0F2FFD84 0F3002B8 0F3007E8
dw   toad035,   toad036,   toad037,   toad038 // 0F300D28 0F30126C 0F3017A8 0F301D04
dw   toad039,   toad040,   toad041,   toad195 // 0F302260 0F3027E4 0F302D78 0F3366C8
dw   toad196,   toad197,   toad198,   toad199 // 0F336C64 0F337228 0F337808 0F337E14
dw   toad200,   toad201,   toad202,   toad203 // 0F33843C 0F338A60 0F339078 0F33967C
dw   toad204,   toad205,   toad206,   toad207 // 0F339C7C 0F33A254 0F33A828 0F33ADE4
dw   toad208
KartsToad2:
dw   toad042,   toad043,   toad044 // 0F33B394 0F30331C 0F3037A4 0F303C40
dw   toad045,   toad046,   toad047,   toad048 // 0F3040F4 0F3045BC 0F304A84 0F304F64
dw   toad049,   toad050,   toad051,   toad052 // 0F305450 0F305964 0F305E7C 0F3063B8
dw   toad053,   toad054,   toad055,   toad056 // 0F3068EC 0F306E44 0F30739C 0F3078F0
dw   toad057,   toad058,   toad059,   toad060 // 0F307E38 0F30838C 0F308904 0F308E88
dw   toad061,   toad062,   toad215,   toad216 // 0F309424 0F3099B0 0F33D840 0F33DDE8
dw   toad217,   toad218,   toad219,   toad220 // 0F33E3B0 0F33E9A4 0F33EFB8 0F33F5B8
dw   toad221,   toad222,   toad223,   toad224 // 0F33FBC4 0F3401C0 0F340794 0F340D44
dw   toad225,   toad226,   toad227,   toad228 // 0F3412E4 0F341884 0F341E1C 0F34239C
KartsToad3:
dw   toad063,   toad064,   toad065,   toad066 // 0F309F70 0F30A400 0F30A8A4 0F30AD4C
dw   toad067,   toad068,   toad069,   toad070 // 0F30B208 0F30B6F0 0F30BBDC 0F30C0E8
dw   toad071,   toad072,   toad073,   toad074 // 0F30C608 0F30CB3C 0F30D08C 0F30D5D8
dw   toad075,   toad076,   toad077,   toad078 // 0F30DB30 0F30E08C 0F30E600 0F30EB74
dw   toad079,   toad080,   toad081,   toad082 // 0F30F0FC 0F30F694 0F30FC28 0F3101C4
dw   toad083,   toad235,   toad236,   toad237 // 0F310768 0F3448F8 0F344EDC 0F3454B4
dw   toad238,   toad239,   toad240,   toad241 // 0F345AA0 0F3460B4 0F3466AC 0F346CA0
dw   toad242,   toad243,   toad244,   toad245 // 0F34726C 0F34782C 0F347DD8 0F348360
dw   toad246,   toad247,   toad248
KartsToad4:
dw   toad084 // 0F3488E8 0F348E68 0F3493C8 0F310D14
dw   toad085,   toad086,   toad087,   toad088 // 0F3111CC 0F311694 0F311B70 0F312070
dw   toad089,   toad090,   toad091,   toad092 // 0F312570 0F312A6C 0F312F70 0F3134A0
dw   toad093,   toad094,   toad095,   toad096 // 0F3139E8 0F313F38 0F3144A0 0F314A10
dw   toad097,   toad098,   toad099,   toad100 // 0F314F78 0F3154E0 0F315A60 0F315FE8
dw   toad101,   toad102,   toad103,   toad104 // 0F316588 0F316B28 0F3170DC 0F317698
dw   toad235,   toad236,   toad237,   toad238 // 0F3448F8 0F344EDC 0F3454B4 0F345AA0
dw   toad239,   toad240,   toad241,   toad242 // 0F3460B4 0F3466AC 0F346CA0 0F34726C
dw   toad243,   toad244,   toad245,   toad246 // 0F34782C 0F347DD8 0F348360 0F3488E8
dw   toad247,   toad248
KartsToad5:
dw   toad105,   toad106 // 0F348E68 0F3493C8 0F317C68 0F318124
dw   toad107,   toad108,   toad109,   toad110 // 0F318618 0F318B0C 0F31902C 0F319540
dw   toad111,   toad112,   toad113,   toad114 // 0F319A70 0F319F9C 0F31A4E0 0F31AA2C
dw   toad115,   toad116,   toad117,   toad118 // 0F31AF8C 0F31B500 0F31BA74 0F31BFF4
dw   toad119,   toad120,   toad121,   toad122 // 0F31C570 0F31CB1C 0F31D0AC 0F31D64C
dw   toad123,   toad124,   toad125,   toad235 // 0F31DC00 0F31E1C4 0F31E798 0F3448F8
dw   toad236,   toad237,   toad238,   toad239 // 0F344EDC 0F3454B4 0F345AA0 0F3460B4
dw   toad240,   toad241,   toad242,   toad243 // 0F3466AC 0F346CA0 0F34726C 0F34782C
dw   toad244,   toad245,   toad246,   toad247 // 0F347DD8 0F348360 0F3488E8 0F348E68
dw   toad248
KartsToad6:
dw   toad126,   toad127,   toad128 // 0F3493C8 0F31ED7C 0F31F258 0F31F734
dw   toad129,   toad130,   toad131,   toad132 // 0F31FC2C 0F32013C 0F320650 0F320B7C
dw   toad133,   toad134,   toad135,   toad136 // 0F3210B8 0F321610 0F321B6C 0F3220EC
dw   toad137,   toad138,   toad139,   toad140 // 0F322668 0F322C00 0F32319C 0F323738
dw   toad141,   toad142,   toad143,   toad144 // 0F323CD0 0F324250 0F32480C 0F324DF0
dw   toad145,   toad146,   toad255,   toad256 // 0F3253C0 0F325994 0F34B984 0F34BF74
dw   toad257,   toad258,   toad259,   toad260 // 0F34C560 0F34CB68 0F34D16C 0F34D770
dw   toad261,   toad262,   toad263,   toad264 // 0F34DD48 0F34E318 0F34E8AC 0F34EE18
dw   toad265,   toad266,   toad267,   toad268 // 0F34F37C 0F34F8DC 0F34FE20 0F35033C
KartsToad7:
dw   toad147,   toad148,   toad149,   toad150 // 0F325F7C 0F326474 0F326990 0F326EC0
dw   toad151,   toad152,   toad153,   toad154 // 0F3273E4 0F327910 0F327E5C 0F3283BC
dw   toad155,   toad156,   toad157,   toad158 // 0F32892C 0F328E98 0F32941C 0F3299B0
dw   toad159,   toad160,   toad161,   toad162 // 0F329F38 0F32A4BC 0F32AA58 0F32B018
dw   toad163,   toad164,   toad165,   toad166 // 0F32B5DC 0F32BB9C 0F32C188 0F32C774
dw   toad167,   toad275,   toad276,   toad277 // 0F32CD64 0F3529CC 0F352FE4 0F3535F4
dw   toad278,   toad279,   toad280,   toad281 // 0F353C08 0F35420C 0F354808 0F354DE4
dw   toad282,   toad283,   toad284,   toad285 // 0F355390 0F355904 0F355E50 0F35638C
dw   toad286,   toad287,   toad288
KartsToad8:
dw   toad168 // 0F35689C 0F356DA0 0F357270 0F32D358
dw   toad169,   toad170,   toad171,   toad172 // 0F32D868 0F32DD94 0F32E2DC 0F32E828
dw   toad173,   toad174,   toad175,   toad176 // 0F32ED8C 0F32F2F4 0F32F864 0F32FDDC
dw   toad177,   toad178,   toad179,   toad180 // 0F330350 0F3308E0 0F330E70 0F331408
dw   toad181,   toad182,   toad183,   toad184 // 0F3319BC 0F331F68 0F332518 0F332AC8
dw   toad185,   toad186,   toad187,   toad188 // 0F333094 0F333690 0F333C88 0F3342A0
dw   toad275,   toad276,   toad277,   toad278 // 0F3529CC 0F352FE4 0F3535F4 0F353C08
dw   toad279,   toad280,   toad281,   toad282 // 0F35420C 0F354808 0F354DE4 0F355390
dw   toad283,   toad284,   toad285,   toad286 // 0F355904 0F355E50 0F35638C 0F35689C
dw   toad287,   toad288                       // 0F356DA0 0F357270
KartsToadA:
dw   toad189,   toad190                       // 0F3348A8 0F334D40
dw   toad191,   toad192,   toad193,   toad194 // 0F33520C 0F3356E8 0F335C00 0F336154
dw   toad195,   toad196,   toad197,   toad198 // 0F3366C8 0F336C64 0F337228 0F337808
dw   toad199,   toad200,   toad201,   toad202 // 0F337E14 0F33843C 0F338A60 0F339078
dw   toad203,   toad204,   toad205,   toad206 // 0F33967C 0F339C7C 0F33A254 0F33A828
dw   toad207,   toad208
KartsToadB:
dw   toad189,   toad190 // 0F33ADE4 0F33B394 0F3348A8 0F334D40
dw   toad191,   toad192,   toad193,   toad194 // 0F33520C 0F3356E8 0F335C00 0F336154
dw   toad195,   toad196,   toad197,   toad198 // 0F3366C8 0F336C64 0F337228 0F337808
dw   toad199,   toad200,   toad201,   toad202 // 0F337E14 0F33843C 0F338A60 0F339078
dw   toad203,   toad204,   toad205,   toad206 // 0F33967C 0F339C7C 0F33A254 0F33A828
dw   toad207,   toad208
KartsToadC:
dw   toad209,   toad210 // 0F33ADE4 0F33B394 0F33B940 0F33BDEC
dw   toad211,   toad212,   toad213,   toad214 // 0F33C2DC 0F33C800 0F33CD54 0F33D2B4
dw   toad215,   toad216,   toad217,   toad218 // 0F33D840 0F33DDE8 0F33E3B0 0F33E9A4
dw   toad219,   toad220,   toad221,   toad222 // 0F33EFB8 0F33F5B8 0F33FBC4 0F3401C0
dw   toad223,   toad224,   toad225,   toad226 // 0F340794 0F340D44 0F3412E4 0F341884
dw   toad227,   toad228
KartsToadD:
dw   toad229,   toad230 // 0F341E1C 0F34239C 0F342908 0F342DDC
dw   toad231,   toad232,   toad233,   toad234 // 0F3432F4 0F343838 0F343DB8 0F344358
dw   toad235,   toad236,   toad237,   toad238 // 0F3448F8 0F344EDC 0F3454B4 0F345AA0
dw   toad239,   toad240,   toad241,   toad242 // 0F3460B4 0F3466AC 0F346CA0 0F34726C
dw   toad243,   toad244,   toad245,   toad246 // 0F34782C 0F347DD8 0F348360 0F3488E8
dw   toad247,   toad248
KartsToadE:
dw   toad229,   toad230 // 0F348E68 0F3493C8 0F342908 0F342DDC
dw   toad231,   toad232,   toad233,   toad234 // 0F3432F4 0F343838 0F343DB8 0F344358
dw   toad235,   toad236,   toad237,   toad238 // 0F3448F8 0F344EDC 0F3454B4 0F345AA0
dw   toad239,   toad240,   toad241,   toad242 // 0F3460B4 0F3466AC 0F346CA0 0F34726C
dw   toad243,   toad244,   toad245,   toad246 // 0F34782C 0F347DD8 0F348360 0F3488E8
dw   toad247,   toad248
KartsToadF:
dw   toad229,   toad230 // 0F348E68 0F3493C8 0F342908 0F342DDC
dw   toad231,   toad232,   toad233,   toad234 // 0F3432F4 0F343838 0F343DB8 0F344358
dw   toad235,   toad236,   toad237,   toad238 // 0F3448F8 0F344EDC 0F3454B4 0F345AA0
dw   toad239,   toad240,   toad241,   toad242 // 0F3460B4 0F3466AC 0F346CA0 0F34726C
dw   toad243,   toad244,   toad245,   toad246 // 0F34782C 0F347DD8 0F348360 0F3488E8
dw   toad247,   toad248
KartsToadG:
dw   toad249,   toad250 // 0F348E68 0F3493C8 0F3498E8 0F349DFC
dw   toad251,   toad252,   toad253,   toad254 // 0F34A324 0F34A890 0F34AE18 0F34B3B8
dw   toad255,   toad256,   toad257,   toad258 // 0F34B984 0F34BF74 0F34C560 0F34CB68
dw   toad259,   toad260,   toad261,   toad262 // 0F34D16C 0F34D770 0F34DD48 0F34E318
dw   toad263,   toad264,   toad265,   toad266 // 0F34E8AC 0F34EE18 0F34F37C 0F34F8DC
dw   toad267,   toad268
KartsToadH:
dw   toad269,   toad270 // 0F34FE20 0F35033C 0F350810 0F350D58
dw   toad271,   toad272,   toad273,   toad274 // 0F3512D8 0F351868 0F351E08 0F3523D8
dw   toad275,   toad276,   toad277,   toad278 // 0F3529CC 0F352FE4 0F3535F4 0F353C08
dw   toad279,   toad280,   toad281,   toad282 // 0F35420C 0F354808 0F354DE4 0F355390
dw   toad283,   toad284,   toad285,   toad286 // 0F355904 0F355E50 0F35638C 0F35689C
dw   toad287,   toad288
KartsToadI:
dw   toad269,   toad270 // 0F356DA0 0F357270 0F350810 0F350D58
dw   toad271,   toad272,   toad273,   toad274 // 0F3512D8 0F351868 0F351E08 0F3523D8
dw   toad275,   toad276,   toad277,   toad278 // 0F3529CC 0F352FE4 0F3535F4 0F353C08
dw   toad279,   toad280,   toad281,   toad282 // 0F35420C 0F354808 0F354DE4 0F355390
dw   toad283,   toad284,   toad285,   toad286 // 0F355904 0F355E50 0F35638C 0F35689C
dw   toad287,   toad288                       // 0F356DA0 0F357270
// 0x800DEE38/0xDFA38
KartsLuigi0:
dw  luigi000,  luigi001                       // 0F000000 0F0004F4
dw  luigi002,  luigi003,  luigi004,  luigi005 // 0F0009F4 0F000EF8 0F001418 0F001940
dw  luigi006,  luigi007,  luigi008,  luigi009 // 0F001E7C 0F0023D0 0F002938 0F002EB8
dw  luigi010,  luigi011,  luigi012,  luigi013 // 0F003448 0F0039E8 0F003FB0 0F004580
dw  luigi014,  luigi015,  luigi016,  luigi017 // 0F004B54 0F005138 0F005730 0F005D3C
dw  luigi018,  luigi019,  luigi020,  luigi195 // 0F006350 0F006968 0F006F70 0F0470C4
dw  luigi196,  luigi197,  luigi198,  luigi199 // 0F0476E0 0F047D14 0F048370 0F0489DC
dw  luigi200,  luigi201,  luigi202,  luigi203 // 0F049064 0F04970C 0F049DC4 0F04A478
dw  luigi204,  luigi205,  luigi206,  luigi207 // 0F04AB10 0F04B1C4 0F04B848 0F04BEB0
dw  luigi208
KartsLuigi1:
dw  luigi021,  luigi022,  luigi023 // 0F04C508 0F007570 0F007A64 0F007F60
dw  luigi024,  luigi025,  luigi026,  luigi027 // 0F008460 0F008988 0F008EC8 0F009408
dw  luigi028,  luigi029,  luigi030,  luigi031 // 0F009978 0F009EF4 0F00A490 0F00AA38
dw  luigi032,  luigi033,  luigi034,  luigi035 // 0F00B000 0F00B5D8 0F00BBB0 0F00C1A4
dw  luigi036,  luigi037,  luigi038,  luigi039 // 0F00C7AC 0F00CDC0 0F00D3D0 0F00D9E4
dw  luigi040,  luigi041,  luigi195,  luigi196 // 0F00E008 0F00E60C 0F0470C4 0F0476E0
dw  luigi197,  luigi198,  luigi199,  luigi200 // 0F047D14 0F048370 0F0489DC 0F049064
dw  luigi201,  luigi202,  luigi203,  luigi204 // 0F04970C 0F049DC4 0F04A478 0F04AB10
dw  luigi205,  luigi206,  luigi207,  luigi208 // 0F04B1C4 0F04B848 0F04BEB0 0F04C508
KartsLuigi2:
dw  luigi042,  luigi043,  luigi044,  luigi045 // 0F00EC40 0F00F128 0F00F62C 0F00FB5C
dw  luigi046,  luigi047,  luigi048,  luigi049 // 0F010098 0F010618 0F010B80 0F011100
dw  luigi050,  luigi051,  luigi052,  luigi053 // 0F01169C 0F011C44 0F012200 0F0127E4
dw  luigi054,  luigi055,  luigi056,  luigi057 // 0F012DD8 0F0133B4 0F0139C4 0F013FB8
dw  luigi058,  luigi059,  luigi060,  luigi061 // 0F0145C0 0F014BE8 0F015220 0F015850
dw  luigi062,  luigi215,  luigi216,  luigi217 // 0F015E98 0F04ED90 0F04F3D4 0F04FA2C
dw  luigi218,  luigi219,  luigi220,  luigi221 // 0F050080 0F0506DC 0F050D4C 0F0513D4
dw  luigi222,  luigi223,  luigi224,  luigi225 // 0F051A5C 0F0520F4 0F052764 0F052DD8
dw  luigi226,  luigi227,  luigi228
KartsLuigi3:
dw  luigi063 // 0F053440 0F053A68 0F054058 0F0164D0
dw  luigi064,  luigi065,  luigi066,  luigi067 // 0F0169E0 0F016EF4 0F017418 0F017978
dw  luigi068,  luigi069,  luigi070,  luigi071 // 0F017EE8 0F01847C 0F018A14 0F018FB4
dw  luigi072,  luigi073,  luigi074,  luigi075 // 0F01957C 0F019B50 0F01A140 0F01A734
dw  luigi076,  luigi077,  luigi078,  luigi079 // 0F01AD2C 0F01B33C 0F01B95C 0F01BF84
dw  luigi080,  luigi081,  luigi082,  luigi083 // 0F01C5A4 0F01CBE4 0F01D224 0F01D85C
dw  luigi235,  luigi236,  luigi237,  luigi238 // 0F056950 0F056FA4 0F057604 0F057C6C
dw  luigi239,  luigi240,  luigi241,  luigi242 // 0F0582C0 0F05893C 0F058FA4 0F059608
dw  luigi243,  luigi244,  luigi245,  luigi246 // 0F059C78 0F05A2A8 0F05A8BC 0F05AEC4
dw  luigi247,  luigi248
KartsLuigi4:
dw  luigi084,  luigi085 // 0F05B4AC 0F05BA74 0F01DE90 0F01E39C
dw  luigi086,  luigi087,  luigi088,  luigi089 // 0F01E8BC 0F01EE08 0F01F35C 0F01F8E0
dw  luigi090,  luigi091,  luigi092,  luigi093 // 0F01FE6C 0F020408 0F0209B4 0F020F80
dw  luigi094,  luigi095,  luigi096,  luigi097 // 0F02155C 0F021B48 0F022140 0F022750
dw  luigi098,  luigi099,  luigi100,  luigi101 // 0F022D58 0F023384 0F0239C8 0F02401C
dw  luigi102,  luigi103,  luigi104,  luigi235 // 0F024664 0F024CB0 0F0252F4 0F056950
dw  luigi236,  luigi237,  luigi238,  luigi239 // 0F056FA4 0F057604 0F057C6C 0F0582C0
dw  luigi240,  luigi241,  luigi242,  luigi243 // 0F05893C 0F058FA4 0F059608 0F059C78
dw  luigi244,  luigi245,  luigi246,  luigi247 // 0F05A2A8 0F05A8BC 0F05AEC4 0F05B4AC
dw  luigi248
KartsLuigi5:
dw  luigi105,  luigi106,  luigi107 // 0F05BA74 0F025930 0F025E50 0F026384
dw  luigi108,  luigi109,  luigi110,  luigi111 // 0F0268EC 0F026E78 0F0273EC 0F027980
dw  luigi112,  luigi113,  luigi114,  luigi115 // 0F027F18 0F0284DC 0F028AB0 0F0290AC
dw  luigi116,  luigi117,  luigi118,  luigi119 // 0F029694 0F029CAC 0F02A2B0 0F02A8CC
dw  luigi120,  luigi121,  luigi122,  luigi123 // 0F02AEF4 0F02B534 0F02BB8C 0F02C1D0
dw  luigi124,  luigi125,  luigi235,  luigi236 // 0F02C82C 0F02CE84 0F056950 0F056FA4
dw  luigi237,  luigi238,  luigi239,  luigi240 // 0F057604 0F057C6C 0F0582C0 0F05893C
dw  luigi241,  luigi242,  luigi243,  luigi244 // 0F058FA4 0F059608 0F059C78 0F05A2A8
dw  luigi245,  luigi246,  luigi247,  luigi248 // 0F05A8BC 0F05AEC4 0F05B4AC 0F05BA74
KartsLuigi6:
dw  luigi126,  luigi127,  luigi128,  luigi129 // 0F02D4CC 0F02DA14 0F02DF58 0F02E4E4
dw  luigi130,  luigi131,  luigi132,  luigi133 // 0F02EA40 0F02EFE8 0F02F594 0F02FB58
dw  luigi134,  luigi135,  luigi136,  luigi137 // 0F03010C 0F0306D0 0F030CB8 0F0312AC
dw  luigi138,  luigi139,  luigi140,  luigi141 // 0F0318B0 0F031ECC 0F0324F4 0F032B38
dw  luigi142,  luigi143,  luigi144,  luigi145 // 0F033188 0F0337E4 0F033E44 0F0344B0
dw  luigi146,  luigi255,  luigi256,  luigi257 // 0F034B10 0F05E3EC 0F05EA68 0F05F0D8
dw  luigi258,  luigi259,  luigi260,  luigi261 // 0F05F73C 0F05FDA0 0F0603FC 0F060A4C
dw  luigi262,  luigi263,  luigi264,  luigi265 // 0F061084 0F0616A4 0F061CA0 0F0622A0
dw  luigi266,  luigi267,  luigi268
KartsLuigi7:
dw  luigi147 // 0F062864 0F062E10 0F063380 0F035184
dw  luigi148,  luigi149,  luigi150,  luigi151 // 0F0356D8 0F035C3C 0F0361B0 0F036748
dw  luigi152,  luigi153,  luigi154,  luigi155 // 0F036D04 0F0372D4 0F0378A0 0F037E68
dw  luigi156,  luigi157,  luigi158,  luigi159 // 0F038460 0F038A5C 0F039068 0F03966C
dw  luigi160,  luigi161,  luigi162,  luigi163 // 0F039C8C 0F03A2DC 0F03A930 0F03AF90
dw  luigi164,  luigi165,  luigi166,  luigi167 // 0F03B600 0F03BC7C 0F03C2E0 0F03C96C
dw  luigi275,  luigi276,  luigi277,  luigi278 // 0F065D3C 0F0663C4 0F066A48 0F0670A4
dw  luigi279,  luigi280,  luigi281,  luigi282 // 0F067714 0F067D6C 0F0683B8 0F0689C4
dw  luigi283,  luigi284,  luigi285,  luigi286 // 0F068FC8 0F069590 0F069B44 0F06A0B8
dw  luigi287,  luigi288
KartsLuigi8:
dw  luigi168,  luigi169 // 0F06A604 0F06AB10 0F03CFE8 0F03D560
dw  luigi170,  luigi171,  luigi172,  luigi173 // 0F03DB04 0F03E0C8 0F03E67C 0F03EC1C
dw  luigi174,  luigi175,  luigi176,  luigi177 // 0F03F200 0F03F7D8 0F03FDA8 0F040398
dw  luigi178,  luigi179,  luigi180,  luigi181 // 0F0409B4 0F040FC4 0F0415E0 0F041C10
dw  luigi182,  luigi183,  luigi184,  luigi185 // 0F042240 0F042884 0F042ED0 0F043534
dw  luigi186,  luigi187,  luigi188,  luigi275 // 0F043BC0 0F044250 0F0448B8 0F065D3C
dw  luigi276,  luigi277,  luigi278,  luigi279 // 0F0663C4 0F066A48 0F0670A4 0F067714
dw  luigi280,  luigi281,  luigi282,  luigi283 // 0F067D6C 0F0683B8 0F0689C4 0F068FC8
dw  luigi284,  luigi285,  luigi286,  luigi287 // 0F069590 0F069B44 0F06A0B8 0F06A604
dw  luigi288
KartsLuigiA:
dw  luigi189,  luigi190,  luigi191 // 0F06AB10 0F044F38 0F04544C 0F0459A0
dw  luigi192,  luigi193,  luigi194,  luigi195 // 0F045F28 0F0464E4 0F046AC4 0F0470C4
dw  luigi196,  luigi197,  luigi198,  luigi199 // 0F0476E0 0F047D14 0F048370 0F0489DC
dw  luigi200,  luigi201,  luigi202,  luigi203 // 0F049064 0F04970C 0F049DC4 0F04A478
dw  luigi204,  luigi205,  luigi206,  luigi207 // 0F04AB10 0F04B1C4 0F04B848 0F04BEB0
dw  luigi208
KartsLuigiB:
dw  luigi189,  luigi190,  luigi191 // 0F04C508 0F044F38 0F04544C 0F0459A0
dw  luigi192,  luigi193,  luigi194,  luigi195 // 0F045F28 0F0464E4 0F046AC4 0F0470C4
dw  luigi196,  luigi197,  luigi198,  luigi199 // 0F0476E0 0F047D14 0F048370 0F0489DC
dw  luigi200,  luigi201,  luigi202,  luigi203 // 0F049064 0F04970C 0F049DC4 0F04A478
dw  luigi204,  luigi205,  luigi206,  luigi207 // 0F04AB10 0F04B1C4 0F04B848 0F04BEB0
dw  luigi208
KartsLuigiC:
dw  luigi209,  luigi210,  luigi211 // 0F04C508 0F04CB24 0F04D06C 0F04D5E8
dw  luigi212,  luigi213,  luigi214,  luigi215 // 0F04DBA0 0F04E178 0F04E778 0F04ED90
dw  luigi216,  luigi217,  luigi218,  luigi219 // 0F04F3D4 0F04FA2C 0F050080 0F0506DC
dw  luigi220,  luigi221,  luigi222,  luigi223 // 0F050D4C 0F0513D4 0F051A5C 0F0520F4
dw  luigi224,  luigi225,  luigi226,  luigi227 // 0F052764 0F052DD8 0F053440 0F053A68
dw  luigi228
KartsLuigiD:
dw  luigi229,  luigi230,  luigi231 // 0F054058 0F054604 0F054B58 0F0550F8
dw  luigi232,  luigi233,  luigi234,  luigi235 // 0F0556DC 0F055CE0 0F056310 0F056950
dw  luigi236,  luigi237,  luigi238,  luigi239 // 0F056FA4 0F057604 0F057C6C 0F0582C0
dw  luigi240,  luigi241,  luigi242,  luigi243 // 0F05893C 0F058FA4 0F059608 0F059C78
dw  luigi244,  luigi245,  luigi246,  luigi247 // 0F05A2A8 0F05A8BC 0F05AEC4 0F05B4AC
dw  luigi248
KartsLuigiE:
dw  luigi229,  luigi230,  luigi231 // 0F05BA74 0F054604 0F054B58 0F0550F8
dw  luigi232,  luigi233,  luigi234,  luigi235 // 0F0556DC 0F055CE0 0F056310 0F056950
dw  luigi236,  luigi237,  luigi238,  luigi239 // 0F056FA4 0F057604 0F057C6C 0F0582C0
dw  luigi240,  luigi241,  luigi242,  luigi243 // 0F05893C 0F058FA4 0F059608 0F059C78
dw  luigi244,  luigi245,  luigi246,  luigi247 // 0F05A2A8 0F05A8BC 0F05AEC4 0F05B4AC
dw  luigi248
KartsLuigiF:
dw  luigi229,  luigi230,  luigi231 // 0F05BA74 0F054604 0F054B58 0F0550F8
dw  luigi232,  luigi233,  luigi234,  luigi235 // 0F0556DC 0F055CE0 0F056310 0F056950
dw  luigi236,  luigi237,  luigi238,  luigi239 // 0F056FA4 0F057604 0F057C6C 0F0582C0
dw  luigi240,  luigi241,  luigi242,  luigi243 // 0F05893C 0F058FA4 0F059608 0F059C78
dw  luigi244,  luigi245,  luigi246,  luigi247 // 0F05A2A8 0F05A8BC 0F05AEC4 0F05B4AC
dw  luigi248
KartsLuigiG:
dw  luigi249,  luigi250,  luigi251 // 0F05BA74 0F05BFF4 0F05C570 0F05CB3C
dw  luigi252,  luigi253,  luigi254,  luigi255 // 0F05D12C 0F05D750 0F05DD9C 0F05E3EC
dw  luigi256,  luigi257,  luigi258,  luigi259 // 0F05EA68 0F05F0D8 0F05F73C 0F05FDA0
dw  luigi260,  luigi261,  luigi262,  luigi263 // 0F0603FC 0F060A4C 0F061084 0F0616A4
dw  luigi264,  luigi265,  luigi266,  luigi267 // 0F061CA0 0F0622A0 0F062864 0F062E10
dw  luigi268
KartsLuigiH:
dw  luigi269,  luigi270,  luigi271 // 0F063380 0F0638B0 0F063E50 0F064430
dw  luigi272,  luigi273,  luigi274,  luigi275 // 0F064A44 0F065084 0F0656D0 0F065D3C
dw  luigi276,  luigi277,  luigi278,  luigi279 // 0F0663C4 0F066A48 0F0670A4 0F067714
dw  luigi280,  luigi281,  luigi282,  luigi283 // 0F067D6C 0F0683B8 0F0689C4 0F068FC8
dw  luigi284,  luigi285,  luigi286,  luigi287 // 0F069590 0F069B44 0F06A0B8 0F06A604
dw  luigi288
KartsLuigiI:
dw  luigi269,  luigi270,  luigi271 // 0F06AB10 0F0638B0 0F063E50 0F064430
dw  luigi272,  luigi273,  luigi274,  luigi275 // 0F064A44 0F065084 0F0656D0 0F065D3C
dw  luigi276,  luigi277,  luigi278,  luigi279 // 0F0663C4 0F066A48 0F0670A4 0F067714
dw  luigi280,  luigi281,  luigi282,  luigi283 // 0F067D6C 0F0683B8 0F0689C4 0F068FC8
dw  luigi284,  luigi285,  luigi286,  luigi287 // 0F069590 0F069B44 0F06A0B8 0F06A604
dw  luigi288
// 800DF5F4/E01F4
KartsYoshi0:
dw  yoshi000,  yoshi001,  yoshi002 // 0F06AB10 0F12D5B0 0F12DA80 0F12DF78
dw  yoshi003,  yoshi004,  yoshi005,  yoshi006 // 0F12E464 0F12E954 0F12EE58 0F12F364
dw  yoshi007,  yoshi008,  yoshi009,  yoshi010 // 0F12F88C 0F12FDC4 0F13030C 0F130870
dw  yoshi011,  yoshi012,  yoshi013,  yoshi014 // 0F130DE8 0F13136C 0F1318DC 0F131E70
dw  yoshi015,  yoshi016,  yoshi017,  yoshi018 // 0F132410 0F1329C8 0F132FB4 0F1335AC
dw  yoshi019,  yoshi020,  yoshi195,  yoshi196 // 0F133BB0 0F1341C4 0F171C44 0F172264
dw  yoshi197,  yoshi198,  yoshi199,  yoshi200 // 0F1728B0 0F172F1C 0F17359C 0F173C24
dw  yoshi201,  yoshi202,  yoshi203,  yoshi204 // 0F1742C8 0F174984 0F175024 0F1756B8
dw  yoshi205,  yoshi206,  yoshi207,  yoshi208 // 0F175D2C 0F176370 0F176974 0F176F54
KartsYoshi1:
dw  yoshi021,  yoshi022,  yoshi023,  yoshi024 // 0F1347E8 0F134CC8 0F1351A4 0F135688
dw  yoshi025,  yoshi026,  yoshi027,  yoshi028 // 0F135B98 0F1360B8 0F1365CC 0F136B0C
dw  yoshi029,  yoshi030,  yoshi031,  yoshi032 // 0F137054 0F1375B0 0F137B2C 0F1380BC
dw  yoshi033,  yoshi034,  yoshi035,  yoshi036 // 0F138638 0F138BD0 0F139170 0F139728
dw  yoshi037,  yoshi038,  yoshi039,  yoshi040 // 0F139CFC 0F13A2DC 0F13A8D8 0F13AEE4
dw  yoshi041,  yoshi195,  yoshi196,  yoshi197 // 0F13B504 0F171C44 0F172264 0F1728B0
dw  yoshi198,  yoshi199,  yoshi200,  yoshi201 // 0F172F1C 0F17359C 0F173C24 0F1742C8
dw  yoshi202,  yoshi203,  yoshi204,  yoshi205 // 0F174984 0F175024 0F1756B8 0F175D2C
dw  yoshi206,  yoshi207,  yoshi208
KartsYoshi2:
dw  yoshi042 // 0F176370 0F176974 0F176F54 0F13BB18
dw  yoshi043,  yoshi044,  yoshi045,  yoshi046 // 0F13BFFC 0F13C4E8 0F13CA04 0F13CF18
dw  yoshi047,  yoshi048,  yoshi049,  yoshi050 // 0F13D450 0F13D988 0F13DEDC 0F13E444
dw  yoshi051,  yoshi052,  yoshi053,  yoshi054 // 0F13E9B8 0F13EF58 0F13F4E8 0F13FA80
dw  yoshi055,  yoshi056,  yoshi057,  yoshi058 // 0F14001C 0F1405C0 0F140B78 0F141140
dw  yoshi059,  yoshi060,  yoshi061,  yoshi062 // 0F141728 0F141D28 0F14234C 0F14298C
dw  yoshi215,  yoshi216,  yoshi217,  yoshi218 // 0F179754 0F179DA8 0F17A3F0 0F17AA60
dw  yoshi219,  yoshi220,  yoshi221,  yoshi222 // 0F17B0DC 0F17B75C 0F17BDEC 0F17C484
dw  yoshi223,  yoshi224,  yoshi225,  yoshi226 // 0F17CAFC 0F17D144 0F17D770 0F17DD68
dw  yoshi227,  yoshi228
KartsYoshi3:
dw  yoshi063,  yoshi064 // 0F17E328 0F17E8B0 0F142FC4 0F1434D0
dw  yoshi065,  yoshi066,  yoshi067,  yoshi068 // 0F1439DC 0F143EF0 0F144420 0F144970
dw  yoshi069,  yoshi070,  yoshi071,  yoshi072 // 0F144EC0 0F145418 0F145984 0F145F04
dw  yoshi073,  yoshi074,  yoshi075,  yoshi076 // 0F1464A0 0F146A34 0F146FC0 0F147558
dw  yoshi077,  yoshi078,  yoshi079,  yoshi080 // 0F147AFC 0F1480B4 0F148684 0F148C74
dw  yoshi081,  yoshi082,  yoshi083,  yoshi235 // 0F14928C 0F1498A8 0F149EDC 0F1810E4
dw  yoshi236,  yoshi237,  yoshi238,  yoshi239 // 0F181750 0F181DC4 0F182440 0F182AC4
dw  yoshi240,  yoshi241,  yoshi242,  yoshi243 // 0F183140 0F1837CC 0F183E30 0F184490
dw  yoshi244,  yoshi245,  yoshi246,  yoshi247 // 0F184AC0 0F1850B0 0F185684 0F185C30
dw  yoshi248
KartsYoshi4:
dw  yoshi084,  yoshi085,  yoshi086 // 0F186180 0F14A524 0F14AA38 0F14AF64
dw  yoshi087,  yoshi088,  yoshi089,  yoshi090 // 0F14B490 0F14B9D0 0F14BF2C 0F14C4A0
dw  yoshi091,  yoshi092,  yoshi093,  yoshi094 // 0F14CA00 0F14CF80 0F14D4F8 0F14DA60
dw  yoshi095,  yoshi096,  yoshi097,  yoshi098 // 0F14DFF8 0F14E594 0F14EB2C 0F14F0C8
dw  yoshi099,  yoshi100,  yoshi101,  yoshi102 // 0F14F67C 0F14FC6C 0F150268 0F150880
dw  yoshi103,  yoshi104,  yoshi235,  yoshi236 // 0F150EB0 0F1514EC 0F1810E4 0F181750
dw  yoshi237,  yoshi238,  yoshi239,  yoshi240 // 0F181DC4 0F182440 0F182AC4 0F183140
dw  yoshi241,  yoshi242,  yoshi243,  yoshi244 // 0F1837CC 0F183E30 0F184490 0F184AC0
dw  yoshi245,  yoshi246,  yoshi247,  yoshi248 // 0F1850B0 0F185684 0F185C30 0F186180
KartsYoshi5:
dw  yoshi105,  yoshi106,  yoshi107,  yoshi108 // 0F151B44 0F152080 0F1525C4 0F152B14
dw  yoshi109,  yoshi110,  yoshi111,  yoshi112 // 0F153060 0F1535BC 0F153B2C 0F1540B4
dw  yoshi113,  yoshi114,  yoshi115,  yoshi116 // 0F154638 0F154BB8 0F155138 0F1556DC
dw  yoshi117,  yoshi118,  yoshi119,  yoshi120 // 0F155C74 0F156218 0F1567C4 0F156D84
dw  yoshi121,  yoshi122,  yoshi123,  yoshi124 // 0F157360 0F157950 0F157F68 0F1585B8
dw  yoshi125,  yoshi235,  yoshi236,  yoshi237 // 0F158C14 0F1810E4 0F181750 0F181DC4
dw  yoshi238,  yoshi239,  yoshi240,  yoshi241 // 0F182440 0F182AC4 0F183140 0F1837CC
dw  yoshi242,  yoshi243,  yoshi244,  yoshi245 // 0F183E30 0F184490 0F184AC0 0F1850B0
dw  yoshi246,  yoshi247,  yoshi248
KartsYoshi6:
dw  yoshi126 // 0F185684 0F185C30 0F186180 0F159288
dw  yoshi127,  yoshi128,  yoshi129,  yoshi130 // 0F1597D0 0F159D1C 0F15A290 0F15A80C
dw  yoshi131,  yoshi132,  yoshi133,  yoshi134 // 0F15ADA0 0F15B318 0F15B88C 0F15BDF8
dw  yoshi135,  yoshi136,  yoshi137,  yoshi138 // 0F15C368 0F15C904 0F15CE94 0F15D420
dw  yoshi139,  yoshi140,  yoshi141,  yoshi142 // 0F15D9B8 0F15DF64 0F15E528 0F15EB00
dw  yoshi143,  yoshi144,  yoshi145,  yoshi146 // 0F15F0F4 0F15F708 0F15FD40 0F1603A4
dw  yoshi255,  yoshi256,  yoshi257,  yoshi258 // 0F188A08 0F18907C 0F189700 0F189D90
dw  yoshi259,  yoshi260,  yoshi261,  yoshi262 // 0F18A41C 0F18AAB0 0F18B114 0F18B784
dw  yoshi263,  yoshi264,  yoshi265,  yoshi266 // 0F18BDBC 0F18C3A4 0F18C974 0F18CEE8
dw  yoshi267,  yoshi268
KartsYoshi7:
dw  yoshi147,  yoshi148 // 0F18D42C 0F18D958 0F160A0C 0F160F6C
dw  yoshi149,  yoshi150,  yoshi151,  yoshi152 // 0F1614E4 0F161A70 0F161FF4 0F16258C
dw  yoshi153,  yoshi154,  yoshi155,  yoshi156 // 0F162B0C 0F163088 0F163620 0F163BB8
dw  yoshi157,  yoshi158,  yoshi159,  yoshi160 // 0F164128 0F1646C4 0F164C50 0F1651F8
dw  yoshi161,  yoshi162,  yoshi163,  yoshi164 // 0F1657A4 0F165D60 0F166334 0F166924
dw  yoshi165,  yoshi166,  yoshi167,  yoshi275 // 0F166F3C 0F167580 0F167BE4 0F19029C
dw  yoshi276,  yoshi277,  yoshi278,  yoshi279 // 0F190930 0F190FAC 0F191614 0F191C94
dw  yoshi280,  yoshi281,  yoshi282,  yoshi283 // 0F1922FC 0F19294C 0F192F88 0F193584
dw  yoshi284,  yoshi285,  yoshi286,  yoshi287 // 0F193B54 0F1940E8 0F194634 0F194B28
dw  yoshi288
KartsYoshi8:
dw  yoshi168,  yoshi169,  yoshi170 // 0F194FF4 0F16825C 0F1687D0 0F168D64
dw  yoshi171,  yoshi172,  yoshi173,  yoshi174 // 0F169308 0F1698A0 0F169E40 0F16A3E0
dw  yoshi175,  yoshi176,  yoshi177,  yoshi178 // 0F16A974 0F16AEE8 0F16B474 0F16BA04
dw  yoshi179,  yoshi180,  yoshi181,  yoshi182 // 0F16BFA0 0F16C52C 0F16CAC4 0F16D068
dw  yoshi183,  yoshi184,  yoshi185,  yoshi186 // 0F16D618 0F16DBFC 0F16E1E8 0F16E814
dw  yoshi187,  yoshi188,  yoshi275,  yoshi276 // 0F16EE70 0F16F4F0 0F19029C 0F190930
dw  yoshi277,  yoshi278,  yoshi279,  yoshi280 // 0F190FAC 0F191614 0F191C94 0F1922FC
dw  yoshi281,  yoshi282,  yoshi283,  yoshi284 // 0F19294C 0F192F88 0F193584 0F193B54
dw  yoshi285,  yoshi286,  yoshi287,  yoshi288 // 0F1940E8 0F194634 0F194B28 0F194FF4
KartsYoshiA:
dw  yoshi189,  yoshi190,  yoshi191,  yoshi192 // 0F16FB64 0F170064 0F170584 0F170AF4
dw  yoshi193,  yoshi194,  yoshi195,  yoshi196 // 0F171088 0F17164C 0F171C44 0F172264
dw  yoshi197,  yoshi198,  yoshi199,  yoshi200 // 0F1728B0 0F172F1C 0F17359C 0F173C24
dw  yoshi201,  yoshi202,  yoshi203,  yoshi204 // 0F1742C8 0F174984 0F175024 0F1756B8
dw  yoshi205,  yoshi206,  yoshi207,  yoshi208 // 0F175D2C 0F176370 0F176974 0F176F54
KartsYoshiB:
dw  yoshi189,  yoshi190,  yoshi191,  yoshi192 // 0F16FB64 0F170064 0F170584 0F170AF4
dw  yoshi193,  yoshi194,  yoshi195,  yoshi196 // 0F171088 0F17164C 0F171C44 0F172264
dw  yoshi197,  yoshi198,  yoshi199,  yoshi200 // 0F1728B0 0F172F1C 0F17359C 0F173C24
dw  yoshi201,  yoshi202,  yoshi203,  yoshi204 // 0F1742C8 0F174984 0F175024 0F1756B8
dw  yoshi205,  yoshi206,  yoshi207,  yoshi208 // 0F175D2C 0F176370 0F176974 0F176F54
KartsYoshiC:
dw  yoshi209,  yoshi210,  yoshi211,  yoshi212 // 0F17750C 0F177A34 0F177F9C 0F178550
dw  yoshi213,  yoshi214,  yoshi215,  yoshi216 // 0F178B24 0F17912C 0F179754 0F179DA8
dw  yoshi217,  yoshi218,  yoshi219,  yoshi220 // 0F17A3F0 0F17AA60 0F17B0DC 0F17B75C
dw  yoshi221,  yoshi222,  yoshi223,  yoshi224 // 0F17BDEC 0F17C484 0F17CAFC 0F17D144
dw  yoshi225,  yoshi226,  yoshi227,  yoshi228 // 0F17D770 0F17DD68 0F17E328 0F17E8B0
KartsYoshiD:
dw  yoshi229,  yoshi230,  yoshi231,  yoshi232 // 0F17EE08 0F17F354 0F17F8E4 0F17FEA4
dw  yoshi233,  yoshi234,  yoshi235,  yoshi236 // 0F1804AC 0F180AB8 0F1810E4 0F181750
dw  yoshi237,  yoshi238,  yoshi239,  yoshi240 // 0F181DC4 0F182440 0F182AC4 0F183140
dw  yoshi241,  yoshi242,  yoshi243,  yoshi244 // 0F1837CC 0F183E30 0F184490 0F184AC0
dw  yoshi245,  yoshi246,  yoshi247,  yoshi248 // 0F1850B0 0F185684 0F185C30 0F186180
KartsYoshiE:
dw  yoshi229,  yoshi230,  yoshi231,  yoshi232 // 0F17EE08 0F17F354 0F17F8E4 0F17FEA4
dw  yoshi233,  yoshi234,  yoshi235,  yoshi236 // 0F1804AC 0F180AB8 0F1810E4 0F181750
dw  yoshi237,  yoshi238,  yoshi239,  yoshi240 // 0F181DC4 0F182440 0F182AC4 0F183140
dw  yoshi241,  yoshi242,  yoshi243,  yoshi244 // 0F1837CC 0F183E30 0F184490 0F184AC0
dw  yoshi245,  yoshi246,  yoshi247,  yoshi248 // 0F1850B0 0F185684 0F185C30 0F186180
KartsYoshiF:
dw  yoshi229,  yoshi230,  yoshi231,  yoshi232 // 0F17EE08 0F17F354 0F17F8E4 0F17FEA4
dw  yoshi233,  yoshi234,  yoshi235,  yoshi236 // 0F1804AC 0F180AB8 0F1810E4 0F181750
dw  yoshi237,  yoshi238,  yoshi239,  yoshi240 // 0F181DC4 0F182440 0F182AC4 0F183140
dw  yoshi241,  yoshi242,  yoshi243,  yoshi244 // 0F1837CC 0F183E30 0F184490 0F184AC0
dw  yoshi245,  yoshi246,  yoshi247,  yoshi248 // 0F1850B0 0F185684 0F185C30 0F186180
KartsYoshiG:
dw  yoshi249,  yoshi250,  yoshi251,  yoshi252 // 0F186694 0F186C0C 0F1871AC 0F187778
dw  yoshi253,  yoshi254,  yoshi255,  yoshi256 // 0F187D88 0F1883B0 0F188A08 0F18907C
dw  yoshi257,  yoshi258,  yoshi259,  yoshi260 // 0F189700 0F189D90 0F18A41C 0F18AAB0
dw  yoshi261,  yoshi262,  yoshi263,  yoshi264 // 0F18B114 0F18B784 0F18BDBC 0F18C3A4
dw  yoshi265,  yoshi266,  yoshi267,  yoshi268 // 0F18C974 0F18CEE8 0F18D42C 0F18D958
KartsYoshiH:
dw  yoshi269,  yoshi270,  yoshi271,  yoshi272 // 0F18DE40 0F18E3F4 0F18E9C8 0F18EFC4
dw  yoshi273,  yoshi274,  yoshi275,  yoshi276 // 0F18F5E0 0F18FC34 0F19029C 0F190930
dw  yoshi277,  yoshi278,  yoshi279,  yoshi280 // 0F190FAC 0F191614 0F191C94 0F1922FC
dw  yoshi281,  yoshi282,  yoshi283,  yoshi284 // 0F19294C 0F192F88 0F193584 0F193B54
dw  yoshi285,  yoshi286,  yoshi287,  yoshi288 // 0F1940E8 0F194634 0F194B28 0F194FF4
KartsYoshiI:
dw  yoshi269,  yoshi270,  yoshi271,  yoshi272 // 0F18DE40 0F18E3F4 0F18E9C8 0F18EFC4
dw  yoshi273,  yoshi274,  yoshi275,  yoshi276 // 0F18F5E0 0F18FC34 0F19029C 0F190930
dw  yoshi277,  yoshi278,  yoshi279,  yoshi280 // 0F190FAC 0F191614 0F191C94 0F1922FC
dw  yoshi281,  yoshi282,  yoshi283,  yoshi284 // 0F19294C 0F192F88 0F193584 0F193B54
dw  yoshi285,  yoshi286,  yoshi287,  yoshi288 // 0F1940E8 0F194634 0F194B28 0F194FF4
KartsDK0:
dw     dk000,     dk001,     dk002,     dk003 // 0F3869E0 0F3870A4 0F38775C 0F387E00
dw     dk004,     dk005,     dk006,     dk007 // 0F3884A8 0F388B20 0F3891C4 0F389854
dw     dk008,     dk009,     dk010,     dk011 // 0F389ED8 0F38A56C 0F38AC2C 0F38B2F4
dw     dk012,     dk013,     dk014,     dk015 // 0F38B9B4 0F38C06C 0F38C738 0F38CDFC
dw     dk016,     dk017,     dk018,     dk019 // 0F38D4E4 0F38DBEC 0F38E2EC 0F38E9FC
dw     dk020,     dk195,     dk196,     dk197 // 0F38F10C 0F3DBF48 0F3DC668 0F3DCDA0
dw     dk198,     dk199,     dk200,     dk201 // 0F3DD4C0 0F3DDC00 0F3DE364 0F3DEB00
dw     dk202,     dk203,     dk204,     dk205 // 0F3DF2B8 0F3DFA88 0F3E024C 0F3E09FC
dw     dk206,     dk207,     dk208
KartsDK1:
dw     dk021 // 0F3E11E0 0F3E19BC 0F3E2170 0F38F838
dw     dk022,     dk023,     dk024,     dk025 // 0F38FF28 0F3905F8 0F390C90 0F391348
dw     dk026,     dk027,     dk028,     dk029 // 0F3919F0 0F39209C 0F392750 0F392E10
dw     dk030,     dk031,     dk032,     dk033 // 0F3934E8 0F393B9C 0F39425C 0F394920
dw     dk034,     dk035,     dk036,     dk037 // 0F394FEC 0F3956D0 0F395DB4 0F396498
dw     dk038,     dk039,     dk040,     dk041 // 0F396B9C 0F3972B0 0F3979D8 0F3980FC
dw     dk195,     dk196,     dk197,     dk198 // 0F3DBF48 0F3DC668 0F3DCDA0 0F3DD4C0
dw     dk199,     dk200,     dk201,     dk202 // 0F3DDC00 0F3DE364 0F3DEB00 0F3DF2B8
dw     dk203,     dk204,     dk205,     dk206 // 0F3DFA88 0F3E024C 0F3E09FC 0F3E11E0
dw     dk207,     dk208
KartsDK2:
dw     dk042,     dk043 // 0F3E19BC 0F3E2170 0F398830 0F398F18
dw     dk044,     dk045,     dk046,     dk047 // 0F399604 0F399CD0 0F39A3AC 0F39AA8C
dw     dk048,     dk049,     dk050,     dk051 // 0F39B160 0F39B828 0F39BEF0 0F39C5A0
dw     dk052,     dk053,     dk054,     dk055 // 0F39CC7C 0F39D358 0F39DA20 0F39E0EC
dw     dk056,     dk057,     dk058,     dk059 // 0F39E7C8 0F39EEB4 0F39F5A8 0F39FCAC
dw     dk060,     dk061,     dk062,     dk215 // 0F3A03B8 0F3A0AE4 0F3A1200 0F3E5410
dw     dk216,     dk217,     dk218,     dk219 // 0F3E5B5C 0F3E6298 0F3E69B0 0F3E70E0
dw     dk220,     dk221,     dk222,     dk223 // 0F3E7824 0F3E7F78 0F3E86DC 0F3E8E60
dw     dk224,     dk225,     dk226,     dk227 // 0F3E95DC 0F3E9D5C 0F3EA4EC 0F3EAC5C
dw     dk228
KartsDK3:
dw     dk063,     dk064,     dk065 // 0F3EB3D8 0F3A1938 0F3A2040 0F3A2750
dw     dk066,     dk067,     dk068,     dk069 // 0F3A2E40 0F3A353C 0F3A3C3C 0F3A4318
dw     dk070,     dk071,     dk072,     dk073 // 0F3A49E4 0F3A50C8 0F3A5794 0F3A5E64
dw     dk074,     dk075,     dk076,     dk077 // 0F3A6538 0F3A6C10 0F3A72E8 0F3A79C8
dw     dk078,     dk079,     dk080,     dk081 // 0F3A80B4 0F3A87B4 0F3A8EDC 0F3A960C
dw     dk082,     dk083,     dk235,     dk236 // 0F3A9D40 0F3AA47C 0F3EE700 0F3EEE58
dw     dk237,     dk238,     dk239,     dk240 // 0F3EF59C 0F3EFCD8 0F3F03FC 0F3F0B28
dw     dk241,     dk242,     dk243,     dk244 // 0F3F1288 0F3F19EC 0F3F214C 0F3F28B4
dw     dk245,     dk246,     dk247,     dk248 // 0F3F2FFC 0F3F3758 0F3F3E90 0F3F45B4
KartsDK4:
dw     dk084,     dk085,     dk086,     dk087 // 0F3AABBC 0F3AB2B8 0F3AB9BC 0F3AC0A0
dw     dk088,     dk089,     dk090,     dk091 // 0F3AC7B0 0F3ACEA0 0F3AD598 0F3ADC8C
dw     dk092,     dk093,     dk094,     dk095 // 0F3AE378 0F3AEA54 0F3AF138 0F3AF810
dw     dk096,     dk097,     dk098,     dk099 // 0F3AFEF4 0F3B05D4 0F3B0CCC 0F3B13D4
dw     dk100,     dk101,     dk102,     dk103 // 0F3B1ADC 0F3B220C 0F3B295C 0F3B308C
dw     dk104,     dk235,     dk236,     dk237 // 0F3B37C4 0F3EE700 0F3EEE58 0F3EF59C
dw     dk238,     dk239,     dk240,     dk241 // 0F3EFCD8 0F3F03FC 0F3F0B28 0F3F1288
dw     dk242,     dk243,     dk244,     dk245 // 0F3F19EC 0F3F214C 0F3F28B4 0F3F2FFC
dw     dk246,     dk247,     dk248
KartsDK5:
dw     dk105 // 0F3F3758 0F3F3E90 0F3F45B4 0F3B3F14
dw     dk106,     dk107,     dk108,     dk109 // 0F3B4620 0F3B4D3C 0F3B545C 0F3B5B80
dw     dk110,     dk111,     dk112,     dk113 // 0F3B629C 0F3B69B8 0F3B70B0 0F3B77A0
dw     dk114,     dk115,     dk116,     dk117 // 0F3B7EA0 0F3B8580 0F3B8C6C 0F3B934C
dw     dk118,     dk119,     dk120,     dk121 // 0F3B9A4C 0F3BA144 0F3BA850 0F3BAF64
dw     dk122,     dk123,     dk124,     dk125 // 0F3BB68C 0F3BBDB4 0F3BC4E8 0F3BCC20
dw     dk235,     dk236,     dk237,     dk238 // 0F3EE700 0F3EEE58 0F3EF59C 0F3EFCD8
dw     dk239,     dk240,     dk241,     dk242 // 0F3F03FC 0F3F0B28 0F3F1288 0F3F19EC
dw     dk243,     dk244,     dk245,     dk246 // 0F3F214C 0F3F28B4 0F3F2FFC 0F3F3758
dw     dk247,     dk248
KartsDK6:
dw     dk126,     dk127 // 0F3F3E90 0F3F45B4 0F3BD378 0F3BDAAC
dw     dk128,     dk129,     dk130,     dk131 // 0F3BE1D8 0F3BE918 0F3BF038 0F3BF748
dw     dk132,     dk133,     dk134,     dk135 // 0F3BFE4C 0F3C055C 0F3C0C5C 0F3C135C
dw     dk136,     dk137,     dk138,     dk139 // 0F3C1A54 0F3C2138 0F3C2818 0F3C2F04
dw     dk140,     dk141,     dk142,     dk143 // 0F3C35F4 0F3C3CF8 0F3C441C 0F3C4B54
dw     dk144,     dk145,     dk146,     dk255 // 0F3C5288 0F3C59C4 0F3C6108 0F3F7878
dw     dk256,     dk257,     dk258,     dk259 // 0F3F7FC4 0F3F871C 0F3F8E44 0F3F957C
dw     dk260,     dk261,     dk262,     dk263 // 0F3F9CC0 0F3FA400 0F3FAB40 0F3FB25C
dw     dk264,     dk265,     dk266,     dk267 // 0F3FB968 0F3FC094 0F3FC7B4 0F3FCEA4
dw     dk268
KartsDK7:
dw     dk147,     dk148,     dk149 // 0F3FD590 0F3C6860 0F3C6FAC 0F3C76EC
dw     dk150,     dk151,     dk152,     dk153 // 0F3C7E20 0F3C853C 0F3C8C5C 0F3C9384
dw     dk154,     dk155,     dk156,     dk157 // 0F3C9AB4 0F3CA1D4 0F3CA8D4 0F3CAFC4
dw     dk158,     dk159,     dk160,     dk161 // 0F3CB6B8 0F3CBDB4 0F3CC4B0 0F3CCBB0
dw     dk162,     dk163,     dk164,     dk165 // 0F3CD2D4 0F3CDA04 0F3CE134 0F3CE87C
dw     dk166,     dk167,     dk275,     dk276 // 0F3CEFE0 0F3CF738 0F4008D0 0F40102C
dw     dk277,     dk278,     dk279,     dk280 // 0F40178C 0F401ED0 0F402604 0F402D44
dw     dk281,     dk282,     dk283,     dk284 // 0F403474 0F403B98 0F404294 0F404988
dw     dk285,     dk286,     dk287,     dk288 // 0F405064 0F405714 0F405D90 0F4063EC
KartsDK8:
dw     dk168,     dk169,     dk170,     dk171 // 0F3CFE98 0F3D05D8 0F3D0D24 0F3D1464
dw     dk172,     dk173,     dk174,     dk175 // 0F3D1B9C 0F3D22B8 0F3D29C8 0F3D30F8
dw     dk176,     dk177,     dk178,     dk179 // 0F3D3800 0F3D3EF0 0F3D45E8 0F3D4CE4
dw     dk180,     dk181,     dk182,     dk183 // 0F3D53D4 0F3D5AD4 0F3D61D0 0F3D68E8
dw     dk184,     dk185,     dk186,     dk187 // 0F3D7014 0F3D776C 0F3D7EC0 0F3D8630
dw     dk188,     dk275,     dk276,     dk277 // 0F3D8DB8 0F4008D0 0F40102C 0F40178C
dw     dk278,     dk279,     dk280,     dk281 // 0F401ED0 0F402604 0F402D44 0F403474
dw     dk282,     dk283,     dk284,     dk285 // 0F403B98 0F404294 0F404988 0F405064
dw     dk286,     dk287,     dk288
KartsDKA:
dw     dk189 // 0F405714 0F405D90 0F4063EC 0F3D9534
dw     dk190,     dk191,     dk192,     dk193 // 0F3D9BF8 0F3DA2E8 0F3DA9E8 0F3DB110
dw     dk194,     dk195,     dk196,     dk197 // 0F3DB82C 0F3DBF48 0F3DC668 0F3DCDA0
dw     dk198,     dk199,     dk200,     dk201 // 0F3DD4C0 0F3DDC00 0F3DE364 0F3DEB00
dw     dk202,     dk203,     dk204,     dk205 // 0F3DF2B8 0F3DFA88 0F3E024C 0F3E09FC
dw     dk206,     dk207,     dk208
KartsDKB:
dw     dk189 // 0F3E11E0 0F3E19BC 0F3E2170 0F3D9534
dw     dk190,     dk191,     dk192,     dk193 // 0F3D9BF8 0F3DA2E8 0F3DA9E8 0F3DB110
dw     dk194,     dk195,     dk196,     dk197 // 0F3DB82C 0F3DBF48 0F3DC668 0F3DCDA0
dw     dk198,     dk199,     dk200,     dk201 // 0F3DD4C0 0F3DDC00 0F3DE364 0F3DEB00
dw     dk202,     dk203,     dk204,     dk205 // 0F3DF2B8 0F3DFA88 0F3E024C 0F3E09FC
dw     dk206,     dk207,     dk208
KartsDKC:
dw     dk209 // 0F3E11E0 0F3E19BC 0F3E2170 0F3E2928
dw     dk210,     dk211,     dk212,     dk213 // 0F3E3020 0F3E3734 0F3E3E7C 0F3E45CC
dw     dk214,     dk215,     dk216,     dk217 // 0F3E4CE0 0F3E5410 0F3E5B5C 0F3E6298
dw     dk218,     dk219,     dk220,     dk221 // 0F3E69B0 0F3E70E0 0F3E7824 0F3E7F78
dw     dk222,     dk223,     dk224,     dk225 // 0F3E86DC 0F3E8E60 0F3E95DC 0F3E9D5C
dw     dk226,     dk227,     dk228
KartsDKD:
dw     dk229 // 0F3EA4EC 0F3EAC5C 0F3EB3D8 0F3EBB2C
dw     dk230,     dk231,     dk232,     dk233 // 0F3EC248 0F3EC9AC 0F3ED108 0F3ED868
dw     dk234,     dk235,     dk236,     dk237 // 0F3EDFB8 0F3EE700 0F3EEE58 0F3EF59C
dw     dk238,     dk239,     dk240,     dk241 // 0F3EFCD8 0F3F03FC 0F3F0B28 0F3F1288
dw     dk242,     dk243,     dk244,     dk245 // 0F3F19EC 0F3F214C 0F3F28B4 0F3F2FFC
dw     dk246,     dk247,     dk248
KartsDKE:
dw     dk229 // 0F3F3758 0F3F3E90 0F3F45B4 0F3EBB2C
dw     dk230,     dk231,     dk232,     dk233 // 0F3EC248 0F3EC9AC 0F3ED108 0F3ED868
dw     dk234,     dk235,     dk236,     dk237 // 0F3EDFB8 0F3EE700 0F3EEE58 0F3EF59C
dw     dk238,     dk239,     dk240,     dk241 // 0F3EFCD8 0F3F03FC 0F3F0B28 0F3F1288
dw     dk242,     dk243,     dk244,     dk245 // 0F3F19EC 0F3F214C 0F3F28B4 0F3F2FFC
dw     dk246,     dk247,     dk248
KartsDKF:
dw     dk229 // 0F3F3758 0F3F3E90 0F3F45B4 0F3EBB2C
dw     dk230,     dk231,     dk232,     dk233 // 0F3EC248 0F3EC9AC 0F3ED108 0F3ED868
dw     dk234,     dk235,     dk236,     dk237 // 0F3EDFB8 0F3EE700 0F3EEE58 0F3EF59C
dw     dk238,     dk239,     dk240,     dk241 // 0F3EFCD8 0F3F03FC 0F3F0B28 0F3F1288
dw     dk242,     dk243,     dk244,     dk245 // 0F3F19EC 0F3F214C 0F3F28B4 0F3F2FFC
dw     dk246,     dk247,     dk248
KartsDKG:
dw     dk249 // 0F3F3758 0F3F3E90 0F3F45B4 0F3F4CC0
dw     dk250,     dk251,     dk252,     dk253 // 0F3F53DC 0F3F5B34 0F3F628C 0F3F69DC
dw     dk254,     dk255,     dk256,     dk257 // 0F3F7120 0F3F7878 0F3F7FC4 0F3F871C
dw     dk258,     dk259,     dk260,     dk261 // 0F3F8E44 0F3F957C 0F3F9CC0 0F3FA400
dw     dk262,     dk263,     dk264,     dk265 // 0F3FAB40 0F3FB25C 0F3FB968 0F3FC094
dw     dk266,     dk267,     dk268
KartsDKH:
dw     dk269 // 0F3FC7B4 0F3FCEA4 0F3FD590 0F3FDC4C
dw     dk270,     dk271,     dk272,     dk273 // 0F3FE388 0F3FEAFC 0F3FF264 0F3FF9F0
dw     dk274,     dk275,     dk276,     dk277 // 0F400154 0F4008D0 0F40102C 0F40178C
dw     dk278,     dk279,     dk280,     dk281 // 0F401ED0 0F402604 0F402D44 0F403474
dw     dk282,     dk283,     dk284,     dk285 // 0F403B98 0F404294 0F404988 0F405064
dw     dk286,     dk287,     dk288
KartsDKI:
dw     dk269 // 0F405714 0F405D90 0F4063EC 0F3FDC4C
dw     dk270,     dk271,     dk272,     dk273 // 0F3FE388 0F3FEAFC 0F3FF264 0F3FF9F0
dw     dk274,     dk275,     dk276,     dk277 // 0F400154 0F4008D0 0F40102C 0F40178C
dw     dk278,     dk279,     dk280,     dk281 // 0F401ED0 0F402604 0F402D44 0F403474
dw     dk282,     dk283,     dk284,     dk285 // 0F403B98 0F404294 0F404988 0F405064
dw     dk286,     dk287,     dk288
// 800E056C/E116C
KartsBowser0:
dw bowser000 // 0F405714 0F405D90 0F4063EC 0F438A00
dw bowser001, bowser002, bowser003, bowser004 // 0F439058 0F4396DC 0F439D5C 0F43A3C0
dw bowser005, bowser006, bowser007, bowser008 // 0F43AA60 0F43B110 0F43B7F4 0F43BF10
dw bowser009, bowser010, bowser011, bowser012 // 0F43C63C 0F43CD88 0F43D4F4 0F43DC6C
dw bowser013, bowser014, bowser015, bowser016 // 0F43E3E8 0F43EB88 0F43F33C 0F43FAF4
dw bowser017, bowser018, bowser019, bowser020 // 0F4402C4 0F440A84 0F441238 0F441A14
dw bowser195, bowser196, bowser197, bowser198 // 0F496158 0F49693C 0F497150 0F49797C
dw bowser199, bowser200, bowser201, bowser202 // 0F498210 0F498AB8 0F49938C 0F499C5C
dw bowser203, bowser204, bowser205, bowser206 // 0F49A544 0F49AE18 0F49B6D8 0F49BF38
dw bowser207, bowser208
KartsBowser1:
dw bowser021, bowser022 // 0F49C778 0F49CFC0 0F4421E8 0F44285C
dw bowser023, bowser024, bowser025, bowser026 // 0F442EFC 0F443584 0F443C08 0F444298
dw bowser027, bowser028, bowser029, bowser030 // 0F444958 0F445070 0F4457A0 0F445EEC
dw bowser031, bowser032, bowser033, bowser034 // 0F446650 0F446DDC 0F44756C 0F447D28
dw bowser035, bowser036, bowser037, bowser038 // 0F4484EC 0F448CBC 0F449480 0F449C54
dw bowser039, bowser040, bowser041, bowser195 // 0F44A420 0F44AC08 0F44B3E4 0F496158
dw bowser196, bowser197, bowser198, bowser199 // 0F49693C 0F497150 0F49797C 0F498210
dw bowser200, bowser201, bowser202, bowser203 // 0F498AB8 0F49938C 0F499C5C 0F49A544
dw bowser204, bowser205, bowser206, bowser207 // 0F49AE18 0F49B6D8 0F49BF38 0F49C778
dw bowser208
KartsBowser2:
dw bowser042, bowser043, bowser044 // 0F49CFC0 0F44BBEC 0F44C28C 0F44C948
dw bowser045, bowser046, bowser047, bowser048 // 0F44CFF4 0F44D6B4 0F44DD94 0F44E47C
dw bowser049, bowser050, bowser051, bowser052 // 0F44EBA0 0F44F304 0F44FA78 0F450228
dw bowser053, bowser054, bowser055, bowser056 // 0F4509CC 0F451194 0F451960 0F452120
dw bowser057, bowser058, bowser059, bowser060 // 0F452910 0F4530EC 0F4538D0 0F4540B8
dw bowser061, bowser062, bowser215, bowser216 // 0F4548B4 0F4550CC 0F4A0470 0F4A0CA4
dw bowser217, bowser218, bowser219, bowser220 // 0F4A14E8 0F4A1D54 0F4A25CC 0F4A2E44
dw bowser221, bowser222, bowser223, bowser224 // 0F4A3700 0F4A3FBC 0F4A4860 0F4A5100
dw bowser225, bowser226, bowser227, bowser228 // 0F4A5980 0F4A61B0 0F4A69CC 0F4A71E8
KartsBowser3:
dw bowser063, bowser064, bowser065, bowser066 // 0F4558F0 0F455FBC 0F456698 0F456D98
dw bowser067, bowser068, bowser069, bowser070 // 0F457478 0F457B4C 0F45826C 0F4589BC
dw bowser071, bowser072, bowser073, bowser074 // 0F459124 0F4598A4 0F45A068 0F45A828
dw bowser075, bowser076, bowser077, bowser078 // 0F45AFFC 0F45B7D4 0F45BFBC 0F45C7BC
dw bowser079, bowser080, bowser081, bowser082 // 0F45CFD4 0F45D7D8 0F45DFF0 0F45E804
dw bowser083, bowser235, bowser236, bowser237 // 0F45F024 0F4AA7C0 0F4AB008 0F4AB864
dw bowser238, bowser239, bowser240, bowser241 // 0F4AC0CC 0F4AC94C 0F4AD1E4 0F4ADA94
dw bowser242, bowser243, bowser244, bowser245 // 0F4AE2E4 0F4AEB74 0F4AF3EC 0F4AFC28
dw bowser246, bowser247, bowser248
KartsBowser4:
dw bowser084 // 0F4B0428 0F4B0C00 0F4B13E0 0F45F848
dw bowser085, bowser086, bowser087, bowser088 // 0F45FF24 0F460608 0F460D08 0F4613F4
dw bowser089, bowser090, bowser091, bowser092 // 0F461B08 0F462240 0F4629A0 0F463134
dw bowser093, bowser094, bowser095, bowser096 // 0F4638DC 0F4640B8 0F46489C 0F465090
dw bowser097, bowser098, bowser099, bowser100 // 0F465894 0F4660A4 0F4668BC 0F4670D0
dw bowser101, bowser102, bowser103, bowser104 // 0F4678EC 0F468120 0F468954 0F469188
dw bowser235, bowser236, bowser237, bowser238 // 0F4AA7C0 0F4AB008 0F4AB864 0F4AC0CC
dw bowser239, bowser240, bowser241, bowser242 // 0F4AC94C 0F4AD1E4 0F4ADA94 0F4AE2E4
dw bowser243, bowser244, bowser245, bowser246 // 0F4AEB74 0F4AF3EC 0F4AFC28 0F4B0428
dw bowser247, bowser248
KartsBowser5:
dw bowser105, bowser106 // 0F4B0C00 0F4B13E0 0F4699D0 0F46A0B8
dw bowser107, bowser108, bowser109, bowser110 // 0F46A7C8 0F46AED8 0F46B5FC 0F46BD20
dw bowser111, bowser112, bowser113, bowser114 // 0F46C494 0F46CC24 0F46D3D4 0F46DB98
dw bowser115, bowser116, bowser117, bowser118 // 0F46E370 0F46EB50 0F46F370 0F46FB74
dw bowser119, bowser120, bowser121, bowser122 // 0F470398 0F470BD0 0F4713F8 0F471C34
dw bowser123, bowser124, bowser125, bowser235 // 0F472458 0F472CA8 0F4734C8 0F4AA7C0
dw bowser236, bowser237, bowser238, bowser239 // 0F4AB008 0F4AB864 0F4AC0CC 0F4AC94C
dw bowser240, bowser241, bowser242, bowser243 // 0F4AD1E4 0F4ADA94 0F4AE2E4 0F4AEB74
dw bowser244, bowser245, bowser246, bowser247 // 0F4AF3EC 0F4AFC28 0F4B0428 0F4B0C00
dw bowser248
KartsBowser6:
dw bowser126, bowser127, bowser128 // 0F4B13E0 0F473D38 0F474444 0F474B7C
dw bowser129, bowser130, bowser131, bowser132 // 0F4752A4 0F4759E0 0F476140 0F4768B4
dw bowser133, bowser134, bowser135, bowser136 // 0F47705C 0F477824 0F477FF4 0F4787EC
dw bowser137, bowser138, bowser139, bowser140 // 0F478FE0 0F479804 0F47A03C 0F47A878
dw bowser141, bowser142, bowser143, bowser144 // 0F47B0C4 0F47B904 0F47C144 0F47C998
dw bowser145, bowser146, bowser255, bowser256 // 0F47D200 0F47DA50 0F4B4A7C 0F4B52F4
dw bowser257, bowser258, bowser259, bowser260 // 0F4B5B78 0F4B63E8 0F4B6C7C 0F4B7518
dw bowser261, bowser262, bowser263, bowser264 // 0F4B7DB0 0F4B8620 0F4B8E60 0F4B968C
dw bowser265, bowser266, bowser267, bowser268 // 0F4B9E94 0F4BA668 0F4BAE0C 0F4BB5A4
KartsBowser7:
dw bowser147, bowser148, bowser149, bowser150 // 0F47E2CC 0F47EA0C 0F47F154 0F47F8B0
dw bowser151, bowser152, bowser153, bowser154 // 0F480014 0F480794 0F480F4C 0F481728
dw bowser155, bowser156, bowser157, bowser158 // 0F481F1C 0F482720 0F482F0C 0F48370C
dw bowser159, bowser160, bowser161, bowser162 // 0F483F44 0F484780 0F484FF0 0F48585C
dw bowser163, bowser164, bowser165, bowser166 // 0F4860A4 0F486914 0F487188 0F487A28
dw bowser167, bowser275, bowser276, bowser277 // 0F4882B0 0F4BED60 0F4BF5FC 0F4BFEA0
dw bowser278, bowser279, bowser280, bowser281 // 0F4C0720 0F4C0FB8 0F4C1820 0F4C2084
dw bowser282, bowser283, bowser284, bowser285 // 0F4C28E4 0F4C30F4 0F4C38C4 0F4C406C
dw bowser286, bowser287, bowser288
KartsBowser8:
dw bowser168 // 0F4C47D8 0F4C4F10 0F4C563C 0F488B48
dw bowser169, bowser170, bowser171, bowser172 // 0F48929C 0F489A14 0F48A190 0F48A920
dw bowser173, bowser174, bowser175, bowser176 // 0F48B0F4 0F48B8BC 0F48C0AC 0F48C8B8
dw bowser177, bowser178, bowser179, bowser180 // 0F48D0BC 0F48D8E4 0F48E118 0F48E960
dw bowser181, bowser182, bowser183, bowser184 // 0F48F1C4 0F48FA38 0F4902CC 0F490B58
dw bowser185, bowser186, bowser187, bowser188 // 0F491404 0F491C88 0F49252C 0F492DC8
dw bowser275, bowser276, bowser277, bowser278 // 0F4BED60 0F4BF5FC 0F4BFEA0 0F4C0720
dw bowser279, bowser280, bowser281, bowser282 // 0F4C0FB8 0F4C1820 0F4C2084 0F4C28E4
dw bowser283, bowser284, bowser285, bowser286 // 0F4C30F4 0F4C38C4 0F4C406C 0F4C47D8
dw bowser287, bowser288
KartsBowserA:
dw bowser189, bowser190 // 0F4C4F10 0F4C563C 0F493678 0F493CF0
dw bowser191, bowser192, bowser193, bowser194 // 0F4943AC 0F494AD4 0F495224 0F4959B0
dw bowser195, bowser196, bowser197, bowser198 // 0F496158 0F49693C 0F497150 0F49797C
dw bowser199, bowser200, bowser201, bowser202 // 0F498210 0F498AB8 0F49938C 0F499C5C
dw bowser203, bowser204, bowser205, bowser206 // 0F49A544 0F49AE18 0F49B6D8 0F49BF38
dw bowser207, bowser208
KartsBowserB:
dw bowser189, bowser190 // 0F49C778 0F49CFC0 0F493678 0F493CF0
dw bowser191, bowser192, bowser193, bowser194 // 0F4943AC 0F494AD4 0F495224 0F4959B0
dw bowser195, bowser196, bowser197, bowser198 // 0F496158 0F49693C 0F497150 0F49797C
dw bowser199, bowser200, bowser201, bowser202 // 0F498210 0F498AB8 0F49938C 0F499C5C
dw bowser203, bowser204, bowser205, bowser206 // 0F49A544 0F49AE18 0F49B6D8 0F49BF38
dw bowser207, bowser208
KartsBowserC:
dw bowser209, bowser210 // 0F49C778 0F49CFC0 0F49D7F0 0F49DEB0
dw bowser211, bowser212, bowser213, bowser214 // 0F49E5C4 0F49ED44 0F49F4F8 0F49FC98
dw bowser215, bowser216, bowser217, bowser218 // 0F4A0470 0F4A0CA4 0F4A14E8 0F4A1D54
dw bowser219, bowser220, bowser221, bowser222 // 0F4A25CC 0F4A2E44 0F4A3700 0F4A3FBC
dw bowser223, bowser224, bowser225, bowser226 // 0F4A4860 0F4A5100 0F4A5980 0F4A61B0
dw bowser227, bowser228
KartsBowserD:
dw bowser229, bowser230 // 0F4A69CC 0F4A71E8 0F4A79C4 0F4A80B8
dw bowser231, bowser232, bowser233, bowser234 // 0F4A8818 0F4A8FC4 0F4A9794 0F4A9F98
dw bowser235, bowser236, bowser237, bowser238 // 0F4AA7C0 0F4AB008 0F4AB864 0F4AC0CC
dw bowser239, bowser240, bowser241, bowser242 // 0F4AC94C 0F4AD1E4 0F4ADA94 0F4AE2E4
dw bowser243, bowser244, bowser245, bowser246 // 0F4AEB74 0F4AF3EC 0F4AFC28 0F4B0428
dw bowser247, bowser248
KartsBowserE:
dw bowser229, bowser230 // 0F4B0C00 0F4B13E0 0F4A79C4 0F4A80B8
dw bowser231, bowser232, bowser233, bowser234 // 0F4A8818 0F4A8FC4 0F4A9794 0F4A9F98
dw bowser235, bowser236, bowser237, bowser238 // 0F4AA7C0 0F4AB008 0F4AB864 0F4AC0CC
dw bowser239, bowser240, bowser241, bowser242 // 0F4AC94C 0F4AD1E4 0F4ADA94 0F4AE2E4
dw bowser243, bowser244, bowser245, bowser246 // 0F4AEB74 0F4AF3EC 0F4AFC28 0F4B0428
dw bowser247, bowser248
KartsBowserF:
dw bowser229, bowser230 // 0F4B0C00 0F4B13E0 0F4A79C4 0F4A80B8
dw bowser231, bowser232, bowser233, bowser234 // 0F4A8818 0F4A8FC4 0F4A9794 0F4A9F98
dw bowser235, bowser236, bowser237, bowser238 // 0F4AA7C0 0F4AB008 0F4AB864 0F4AC0CC
dw bowser239, bowser240, bowser241, bowser242 // 0F4AC94C 0F4AD1E4 0F4ADA94 0F4AE2E4
dw bowser243, bowser244, bowser245, bowser246 // 0F4AEB74 0F4AF3EC 0F4AFC28 0F4B0428
dw bowser247, bowser248
KartsBowserG:
dw bowser249, bowser250 // 0F4B0C00 0F4B13E0 0F4B1B9C 0F4B22DC
dw bowser251, bowser252, bowser253, bowser254 // 0F4B2A6C 0F4B3230 0F4B3A28 0F4B423C
dw bowser255, bowser256, bowser257, bowser258 // 0F4B4A7C 0F4B52F4 0F4B5B78 0F4B63E8
dw bowser259, bowser260, bowser261, bowser262 // 0F4B6C7C 0F4B7518 0F4B7DB0 0F4B8620
dw bowser263, bowser264, bowser265, bowser266 // 0F4B8E60 0F4B968C 0F4B9E94 0F4BA668
dw bowser267, bowser268
KartsBowserH:
dw bowser269, bowser270 // 0F4BAE0C 0F4BB5A4 0F4BBD14 0F4BC4C0
dw bowser271, bowser272, bowser273, bowser274 // 0F4BCC88 0F4BD468 0F4BDC88 0F4BE4D0
dw bowser275, bowser276, bowser277, bowser278 // 0F4BED60 0F4BF5FC 0F4BFEA0 0F4C0720
dw bowser279, bowser280, bowser281, bowser282 // 0F4C0FB8 0F4C1820 0F4C2084 0F4C28E4
dw bowser283, bowser284, bowser285, bowser286 // 0F4C30F4 0F4C38C4 0F4C406C 0F4C47D8
dw bowser287, bowser288
KartsBowserI:
dw bowser269, bowser270 // 0F4C4F10 0F4C563C 0F4BBD14 0F4BC4C0
dw bowser271, bowser272, bowser273, bowser274 // 0F4BCC88 0F4BD468 0F4BDC88 0F4BE4D0
dw bowser275, bowser276, bowser277, bowser278 // 0F4BED60 0F4BF5FC 0F4BFEA0 0F4C0720
dw bowser279, bowser280, bowser281, bowser282 // 0F4C0FB8 0F4C1820 0F4C2084 0F4C28E4
dw bowser283, bowser284, bowser285, bowser286 // 0F4C30F4 0F4C38C4 0F4C406C 0F4C47D8
dw bowser287, bowser288
// 800E0D28/E1928
KartsPeach0:
dw  peach000,  peach001 // 0F4C4F10 0F4C563C 0F1C4AE0 0F1C4FC0
dw  peach002,  peach003,  peach004,  peach005 // 0F1C54C0 0F1C59C4 0F1C5EE4 0F1C6404
dw  peach006,  peach007,  peach008,  peach009 // 0F1C6924 0F1C6E6C 0F1C73C4 0F1C7928
dw  peach010,  peach011,  peach012,  peach013 // 0F1C7E9C 0F1C840C 0F1C8994 0F1C8F18
dw  peach014,  peach015,  peach016,  peach017 // 0F1C94A0 0F1C9A2C 0F1C9FB4 0F1CA55C
dw  peach018,  peach019,  peach020,  peach195 // 0F1CAB04 0F1CB0A8 0F1CB664 0F2084D4
dw  peach196,  peach197,  peach198,  peach199 // 0F208A88 0F209060 0F209634 0F209C2C
dw  peach200,  peach201,  peach202,  peach203 // 0F20A244 0F20A880 0F20AEA8 0F20B4B8
dw  peach204,  peach205,  peach206,  peach207 // 0F20BAB8 0F20C0C8 0F20C6C0 0F20CCAC
dw  peach208
KartsPeach1:
dw  peach021,  peach022,  peach023 // 0F20D2B0 0F1CBC20 0F1CC0E4 0F1CC5CC
dw  peach024,  peach025,  peach026,  peach027 // 0F1CCAB8 0F1CCFD0 0F1CD4FC 0F1CDA0C
dw  peach028,  peach029,  peach030,  peach031 // 0F1CDF4C 0F1CE4A8 0F1CEA18 0F1CEF90
dw  peach032,  peach033,  peach034,  peach035 // 0F1CF520 0F1CFAC0 0F1D005C 0F1D05E4
dw  peach036,  peach037,  peach038,  peach039 // 0F1D0B80 0F1D112C 0F1D16EC 0F1D1CA4
dw  peach040,  peach041,  peach195,  peach196 // 0F1D2254 0F1D2814 0F2084D4 0F208A88
dw  peach197,  peach198,  peach199,  peach200 // 0F209060 0F209634 0F209C2C 0F20A244
dw  peach201,  peach202,  peach203,  peach204 // 0F20A880 0F20AEA8 0F20B4B8 0F20BAB8
dw  peach205,  peach206,  peach207,  peach208 // 0F20C0C8 0F20C6C0 0F20CCAC 0F20D2B0
KartsPeach2:
dw  peach042,  peach043,  peach044,  peach045 // 0F1D2DDC 0F1D32C8 0F1D37D8 0F1D3CE4
dw  peach046,  peach047,  peach048,  peach049 // 0F1D420C 0F1D4734 0F1D4C98 0F1D51FC
dw  peach050,  peach051,  peach052,  peach053 // 0F1D577C 0F1D5CF4 0F1D6280 0F1D6808
dw  peach054,  peach055,  peach056,  peach057 // 0F1D6DA8 0F1D7350 0F1D78FC 0F1D7E98
dw  peach058,  peach059,  peach060,  peach061 // 0F1D8454 0F1D8A04 0F1D8FD0 0F1D959C
dw  peach062,  peach215,  peach216,  peach217 // 0F1D9B74 0F20F8D8 0F20FE9C 0F21045C
dw  peach218,  peach219,  peach220,  peach221 // 0F210A40 0F211024 0F211618 0F211C1C
dw  peach222,  peach223,  peach224,  peach225 // 0F2121FC 0F2127E4 0F212DBC 0F2133AC
dw  peach226,  peach227,  peach228
KartsPeach3:
dw  peach063 // 0F213984 0F213F3C 0F2144F8 0F1DA130
dw  peach064,  peach065,  peach066,  peach067 // 0F1DA5FC 0F1DAAF4 0F1DB004 0F1DB544
dw  peach068,  peach069,  peach070,  peach071 // 0F1DBA78 0F1DBFE0 0F1DC554 0F1DCAC0
dw  peach072,  peach073,  peach074,  peach075 // 0F1DD034 0F1DD5C8 0F1DDB68 0F1DE0FC
dw  peach076,  peach077,  peach078,  peach079 // 0F1DE6A0 0F1DEC4C 0F1DF1F8 0F1DF7DC
dw  peach080,  peach081,  peach082,  peach083 // 0F1DFD9C 0F1E036C 0F1E0934 0F1E0EE4
dw  peach235,  peach236,  peach237,  peach238 // 0F216B88 0F217148 0F21770C 0F217CF4
dw  peach239,  peach240,  peach241,  peach242 // 0F2182E0 0F2188D8 0F218EC4 0F2194A4
dw  peach243,  peach244,  peach245,  peach246 // 0F219A70 0F21A028 0F21A5F8 0F21ABB4
dw  peach247,  peach248
KartsPeach4:
dw  peach084,  peach085 // 0F21B150 0F21B6C0 0F1E14C0 0F1E19B0
dw  peach086,  peach087,  peach088,  peach089 // 0F1E1EBC 0F1E23DC 0F1E2924 0F1E2E6C
dw  peach090,  peach091,  peach092,  peach093 // 0F1E33D8 0F1E3958 0F1E3EEC 0F1E4464
dw  peach094,  peach095,  peach096,  peach097 // 0F1E4A04 0F1E4FB0 0F1E5554 0F1E5B00
dw  peach098,  peach099,  peach100,  peach101 // 0F1E60B0 0F1E6660 0F1E6C38 0F1E7210
dw  peach102,  peach103,  peach104,  peach235 // 0F1E7800 0F1E7DD0 0F1E838C 0F216B88
dw  peach236,  peach237,  peach238,  peach239 // 0F217148 0F21770C 0F217CF4 0F2182E0
dw  peach240,  peach241,  peach242,  peach243 // 0F2188D8 0F218EC4 0F2194A4 0F219A70
dw  peach244,  peach245,  peach246,  peach247 // 0F21A028 0F21A5F8 0F21ABB4 0F21B150
dw  peach248
KartsPeach5:
dw  peach105,  peach106,  peach107 // 0F21B6C0 0F1E894C 0F1E8E40 0F1E9358
dw  peach108,  peach109,  peach110,  peach111 // 0F1E988C 0F1E9DE4 0F1EA35C 0F1EA8E0
dw  peach112,  peach113,  peach114,  peach115 // 0F1EAE78 0F1EB404 0F1EB9AC 0F1EBF54
dw  peach116,  peach117,  peach118,  peach119 // 0F1EC500 0F1ECAA0 0F1ED048 0F1ED5F4
dw  peach120,  peach121,  peach122,  peach123 // 0F1EDBCC 0F1EE1A0 0F1EE778 0F1EED6C
dw  peach124,  peach125,  peach235,  peach236 // 0F1EF358 0F1EF93C 0F216B88 0F217148
dw  peach237,  peach238,  peach239,  peach240 // 0F21770C 0F217CF4 0F2182E0 0F2188D8
dw  peach241,  peach242,  peach243,  peach244 // 0F218EC4 0F2194A4 0F219A70 0F21A028
dw  peach245,  peach246,  peach247,  peach248 // 0F21A5F8 0F21ABB4 0F21B150 0F21B6C0
KartsPeach6:
dw  peach126,  peach127,  peach128,  peach129 // 0F1EFF18 0F1F041C 0F1F0924 0F1F0E54
dw  peach130,  peach131,  peach132,  peach133 // 0F1F13A4 0F1F191C 0F1F1EA8 0F1F243C
dw  peach134,  peach135,  peach136,  peach137 // 0F1F29E8 0F1F2F90 0F1F3540 0F1F3AE0
dw  peach138,  peach139,  peach140,  peach141 // 0F1F4084 0F1F4634 0F1F4BE8 0F1F51C0
dw  peach142,  peach143,  peach144,  peach145 // 0F1F57A8 0F1F5D98 0F1F637C 0F1F6964
dw  peach146,  peach255,  peach256,  peach257 // 0F1F6F50 0F21DD00 0F21E2CC 0F21E8BC
dw  peach258,  peach259,  peach260,  peach261 // 0F21EEB8 0F21F4AC 0F21FA94 0F220080
dw  peach262,  peach263,  peach264,  peach265 // 0F22063C 0F220BF0 0F221178 0F22171C
dw  peach266,  peach267,  peach268
KartsPeach7:
dw  peach147 // 0F221CA0 0F2221F8 0F22272C 0F1F7520
dw  peach148,  peach149,  peach150,  peach151 // 0F1F7A20 0F1F7F54 0F1F847C 0F1F89E4
dw  peach152,  peach153,  peach154,  peach155 // 0F1F8F6C 0F1F9514 0F1F9ABC 0F1FA068
dw  peach156,  peach157,  peach158,  peach159 // 0F1FA628 0F1FABDC 0F1FB1A0 0F1FB750
dw  peach160,  peach161,  peach162,  peach163 // 0F1FBD28 0F1FC30C 0F1FC8E0 0F1FCED8
dw  peach164,  peach165,  peach166,  peach167 // 0F1FD4C0 0F1FDAA8 0F1FE098 0F1FE680
dw  peach275,  peach276,  peach277,  peach278 // 0F224D84 0F225364 0F22593C 0F225F30
dw  peach279,  peach280,  peach281,  peach282 // 0F226510 0F226B00 0F2270B4 0F22764C
dw  peach283,  peach284,  peach285,  peach286 // 0F227BE0 0F228174 0F2286E0 0F228C24
dw  peach287,  peach288
KartsPeach8:
dw  peach168,  peach169 // 0F229148 0F229644 0F1FEC6C 0F1FF170
dw  peach170,  peach171,  peach172,  peach173 // 0F1FF698 0F1FFBDC 0F200138 0F2006BC
dw  peach174,  peach175,  peach176,  peach177 // 0F200C64 0F201228 0F2017F4 0F201DD4
dw  peach178,  peach179,  peach180,  peach181 // 0F2023A0 0F202980 0F202F68 0F203548
dw  peach182,  peach183,  peach184,  peach185 // 0F203B20 0F204120 0F20472C 0F204D28
dw  peach186,  peach187,  peach188,  peach275 // 0F205320 0F205908 0F205F04 0F224D84
dw  peach276,  peach277,  peach278,  peach279 // 0F225364 0F22593C 0F225F30 0F226510
dw  peach280,  peach281,  peach282,  peach283 // 0F226B00 0F2270B4 0F22764C 0F227BE0
dw  peach284,  peach285,  peach286,  peach287 // 0F228174 0F2286E0 0F228C24 0F229148
dw  peach288
KartsPeachA:
dw  peach189,  peach190,  peach191 // 0F229644 0F2064F0 0F2069F8 0F206F00
dw  peach192,  peach193,  peach194,  peach195 // 0F207438 0F2079AC 0F207F34 0F2084D4
dw  peach196,  peach197,  peach198,  peach199 // 0F208A88 0F209060 0F209634 0F209C2C
dw  peach200,  peach201,  peach202,  peach203 // 0F20A244 0F20A880 0F20AEA8 0F20B4B8
dw  peach204,  peach205,  peach206,  peach207 // 0F20BAB8 0F20C0C8 0F20C6C0 0F20CCAC
dw  peach208
KartsPeachB:
dw  peach189,  peach190,  peach191 // 0F20D2B0 0F2064F0 0F2069F8 0F206F00
dw  peach192,  peach193,  peach194,  peach195 // 0F207438 0F2079AC 0F207F34 0F2084D4
dw  peach196,  peach197,  peach198,  peach199 // 0F208A88 0F209060 0F209634 0F209C2C
dw  peach200,  peach201,  peach202,  peach203 // 0F20A244 0F20A880 0F20AEA8 0F20B4B8
dw  peach204,  peach205,  peach206,  peach207 // 0F20BAB8 0F20C0C8 0F20C6C0 0F20CCAC
dw  peach208
KartsPeachC:
dw  peach209,  peach210,  peach211 // 0F20D2B0 0F20D884 0F20DD84 0F20E2B4
dw  peach212,  peach213,  peach214,  peach215 // 0F20E820 0F20EDA8 0F20F330 0F20F8D8
dw  peach216,  peach217,  peach218,  peach219 // 0F20FE9C 0F21045C 0F210A40 0F211024
dw  peach220,  peach221,  peach222,  peach223 // 0F211618 0F211C1C 0F2121FC 0F2127E4
dw  peach224,  peach225,  peach226,  peach227 // 0F212DBC 0F2133AC 0F213984 0F213F3C
dw  peach228
KartsPeachD:
dw  peach229,  peach230,  peach231 // 0F2144F8 0F214A94 0F214FB4 0F2154F4
dw  peach232,  peach233,  peach234,  peach235 // 0F215A7C 0F21600C 0F2165D0 0F216B88
dw  peach236,  peach237,  peach238,  peach239 // 0F217148 0F21770C 0F217CF4 0F2182E0
dw  peach240,  peach241,  peach242,  peach243 // 0F2188D8 0F218EC4 0F2194A4 0F219A70
dw  peach244,  peach245,  peach246,  peach247 // 0F21A028 0F21A5F8 0F21ABB4 0F21B150
dw  peach248
KartsPeachE:
dw  peach229,  peach230,  peach231 // 0F21B6C0 0F214A94 0F214FB4 0F2154F4
dw  peach232,  peach233,  peach234,  peach235 // 0F215A7C 0F21600C 0F2165D0 0F216B88
dw  peach236,  peach237,  peach238,  peach239 // 0F217148 0F21770C 0F217CF4 0F2182E0
dw  peach240,  peach241,  peach242,  peach243 // 0F2188D8 0F218EC4 0F2194A4 0F219A70
dw  peach244,  peach245,  peach246,  peach247 // 0F21A028 0F21A5F8 0F21ABB4 0F21B150
dw  peach248
KartsPeachF:
dw  peach229,  peach230,  peach231 // 0F21B6C0 0F214A94 0F214FB4 0F2154F4
dw  peach232,  peach233,  peach234,  peach235 // 0F215A7C 0F21600C 0F2165D0 0F216B88
dw  peach236,  peach237,  peach238,  peach239 // 0F217148 0F21770C 0F217CF4 0F2182E0
dw  peach240,  peach241,  peach242,  peach243 // 0F2188D8 0F218EC4 0F2194A4 0F219A70
dw  peach244,  peach245,  peach246,  peach247 // 0F21A028 0F21A5F8 0F21ABB4 0F21B150
dw  peach248
KartsPeachG:
dw  peach249,  peach250,  peach251 // 0F21B6C0 0F21BC18 0F21C138 0F21C684
dw  peach252,  peach253,  peach254,  peach255 // 0F21CBF8 0F21D18C 0F21D740 0F21DD00
dw  peach256,  peach257,  peach258,  peach259 // 0F21E2CC 0F21E8BC 0F21EEB8 0F21F4AC
dw  peach260,  peach261,  peach262,  peach263 // 0F21FA94 0F220080 0F22063C 0F220BF0
dw  peach264,  peach265,  peach266,  peach267 // 0F221178 0F22171C 0F221CA0 0F2221F8
dw  peach268
KartsPeachH:
dw  peach269,  peach270,  peach271 // 0F22272C 0F222C58 0F223188 0F2236E4
dw  peach272,  peach273,  peach274,  peach275 // 0F223C70 0F22420C 0F2247B0 0F224D84
dw  peach276,  peach277,  peach278,  peach279 // 0F225364 0F22593C 0F225F30 0F226510
dw  peach280,  peach281,  peach282,  peach283 // 0F226B00 0F2270B4 0F22764C 0F227BE0
dw  peach284,  peach285,  peach286,  peach287 // 0F228174 0F2286E0 0F228C24 0F229148
dw  peach288
KartsPeachI:
dw  peach269,  peach270,  peach271 // 0F229644 0F222C58 0F223188 0F2236E4
dw  peach272,  peach273,  peach274,  peach275 // 0F223C70 0F22420C 0F2247B0 0F224D84
dw  peach276,  peach277,  peach278,  peach279 // 0F225364 0F22593C 0F225F30 0F226510
dw  peach280,  peach281,  peach282,  peach283 // 0F226B00 0F2270B4 0F22764C 0F227BE0
dw  peach284,  peach285,  peach286,  peach287 // 0F228174 0F2286E0 0F228C24 0F229148
dw  peach288
// 800E14E4/E20E4
KartsWario0:
dw  wario000,  wario001,  wario002 // 0F229644 0F258C50 0F25919C 0F259704
dw  wario003,  wario004,  wario005,  wario006 // 0F259C54 0F25A1A8 0F25A730 0F25ACB0
dw  wario007,  wario008,  wario009,  wario010 // 0F25B25C 0F25B800 0F25BDB4 0F25C374
dw  wario011,  wario012,  wario013,  wario014 // 0F25C944 0F25CF1C 0F25D510 0F25DB08
dw  wario015,  wario016,  wario017,  wario018 // 0F25E100 0F25E710 0F25ED38 0F25F348
dw  wario019,  wario020,  wario195,  wario196 // 0F25F974 0F25FFA0 0F2A1358 0F2A1990
dw  wario197,  wario198,  wario199,  wario200 // 0F2A1FD8 0F2A2628 0F2A2CAC 0F2A3334
dw  wario201,  wario202,  wario203,  wario204 // 0F2A39F0 0F2A40B0 0F2A474C 0F2A4DF8
dw  wario205,  wario206,  wario207,  wario208 // 0F2A54B8 0F2A5B58 0F2A61FC 0F2A689C
KartsWario1:
dw  wario021,  wario022,  wario023,  wario024 // 0F2605C4 0F260B10 0F261080 0F261608
dw  wario025,  wario026,  wario027,  wario028 // 0F261BA0 0F262118 0F2626B0 0F262C4C
dw  wario029,  wario030,  wario031,  wario032 // 0F26320C 0F2637C8 0F263DB0 0F264390
dw  wario033,  wario034,  wario035,  wario036 // 0F264968 0F264F6C 0F265584 0F265B90
dw  wario037,  wario038,  wario039,  wario040 // 0F266198 0F2667C4 0F266DE8 0F26740C
dw  wario041,  wario195,  wario196,  wario197 // 0F267A44 0F2A1358 0F2A1990 0F2A1FD8
dw  wario198,  wario199,  wario200,  wario201 // 0F2A2628 0F2A2CAC 0F2A3334 0F2A39F0
dw  wario202,  wario203,  wario204,  wario205 // 0F2A40B0 0F2A474C 0F2A4DF8 0F2A54B8
dw  wario206,  wario207,  wario208
KartsWario2:
dw  wario042 // 0F2A5B58 0F2A61FC 0F2A689C 0F268098
dw  wario043,  wario044,  wario045,  wario046 // 0F268608 0F268B84 0F269114 0F2696AC
dw  wario047,  wario048,  wario049,  wario050 // 0F269C40 0F26A1D8 0F26A798 0F26AD78
dw  wario051,  wario052,  wario053,  wario054 // 0F26B34C 0F26B93C 0F26BF18 0F26C50C
dw  wario055,  wario056,  wario057,  wario058 // 0F26CB00 0F26D10C 0F26D724 0F26DD58
dw  wario059,  wario060,  wario061,  wario062 // 0F26E380 0F26E9B0 0F26EFF0 0F26F638
dw  wario215,  wario216,  wario217,  wario218 // 0F2A92AC 0F2A9900 0F2A9F5C 0F2AA5B4
dw  wario219,  wario220,  wario221,  wario222 // 0F2AAC34 0F2AB29C 0F2AB928 0F2ABFA0
dw  wario223,  wario224,  wario225,  wario226 // 0F2AC61C 0F2ACC88 0F2AD300 0F2AD95C
dw  wario227,  wario228
KartsWario3:
dw  wario063,  wario064 // 0F2ADFB0 0F2AE5FC 0F26FC84 0F2701F0
dw  wario065,  wario066,  wario067,  wario068 // 0F270788 0F270D24 0F2712C0 0F271860
dw  wario069,  wario070,  wario071,  wario072 // 0F271E1C 0F2723D4 0F2729A8 0F272FA0
dw  wario073,  wario074,  wario075,  wario076 // 0F273594 0F273BA0 0F274198 0F2747AC
dw  wario077,  wario078,  wario079,  wario080 // 0F274DA4 0F2753B8 0F2759E8 0F276014
dw  wario081,  wario082,  wario083,  wario235 // 0F276648 0F276C88 0F2772CC 0F2B1038
dw  wario236,  wario237,  wario238,  wario239 // 0F2B16B4 0F2B1D24 0F2B2398 0F2B29F8
dw  wario240,  wario241,  wario242,  wario243 // 0F2B3060 0F2B36D0 0F2B3D3C 0F2B4398
dw  wario244,  wario245,  wario246,  wario247 // 0F2B49E0 0F2B5020 0F2B5664 0F2B5C9C
dw  wario248
KartsWario4:
dw  wario084,  wario085,  wario086 // 0F2B62B0 0F277924 0F277EAC 0F278434
dw  wario087,  wario088,  wario089,  wario090 // 0F2789BC 0F278F80 0F279530 0F279AEC
dw  wario091,  wario092,  wario093,  wario094 // 0F27A0C4 0F27A6B4 0F27AC98 0F27B27C
dw  wario095,  wario096,  wario097,  wario098 // 0F27B868 0F27BE74 0F27C474 0F27CA78
dw  wario099,  wario100,  wario101,  wario102 // 0F27D080 0F27D6B4 0F27DCF0 0F27E330
dw  wario103,  wario104,  wario235,  wario236 // 0F27E978 0F27EFD0 0F2B1038 0F2B16B4
dw  wario237,  wario238,  wario239,  wario240 // 0F2B1D24 0F2B2398 0F2B29F8 0F2B3060
dw  wario241,  wario242,  wario243,  wario244 // 0F2B36D0 0F2B3D3C 0F2B4398 0F2B49E0
dw  wario245,  wario246,  wario247,  wario248 // 0F2B5020 0F2B5664 0F2B5C9C 0F2B62B0
KartsWario5:
dw  wario105,  wario106,  wario107,  wario108 // 0F27F638 0F27FBC8 0F28016C 0F2806F4
dw  wario109,  wario110,  wario111,  wario112 // 0F280CA0 0F281268 0F28183C 0F281E24
dw  wario113,  wario114,  wario115,  wario116 // 0F282408 0F2829F8 0F282FFC 0F2835F8
dw  wario117,  wario118,  wario119,  wario120 // 0F283C00 0F28420C 0F284814 0F284E38
dw  wario121,  wario122,  wario123,  wario124 // 0F285470 0F285AB8 0F286114 0F286778
dw  wario125,  wario235,  wario236,  wario237 // 0F286DE0 0F2B1038 0F2B16B4 0F2B1D24
dw  wario238,  wario239,  wario240,  wario241 // 0F2B2398 0F2B29F8 0F2B3060 0F2B36D0
dw  wario242,  wario243,  wario244,  wario245 // 0F2B3D3C 0F2B4398 0F2B49E0 0F2B5020
dw  wario246,  wario247,  wario248
KartsWario6:
dw  wario126 // 0F2B5664 0F2B5C9C 0F2B62B0 0F28745C
dw  wario127,  wario128,  wario129,  wario130 // 0F2879EC 0F287F88 0F288544 0F288B08
dw  wario131,  wario132,  wario133,  wario134 // 0F2890C4 0F289690 0F289C74 0F28A268
dw  wario135,  wario136,  wario137,  wario138 // 0F28A85C 0F28AE40 0F28B440 0F28BA48
dw  wario139,  wario140,  wario141,  wario142 // 0F28C044 0F28C64C 0F28CC88 0F28D2C0
dw  wario143,  wario144,  wario145,  wario146 // 0F28D910 0F28DF5C 0F28E5B4 0F28EC14
dw  wario255,  wario256,  wario257,  wario258 // 0F2B8D24 0F2B9398 0F2B9A20 0F2BA0B0
dw  wario259,  wario260,  wario261,  wario262 // 0F2BA714 0F2BAD70 0F2BB3CC 0F2BBA00
dw  wario263,  wario264,  wario265,  wario266 // 0F2BC024 0F2BC638 0F2BCC54 0F2BD260
dw  wario267,  wario268
KartsWario7:
dw  wario147,  wario148 // 0F2BD868 0F2BDE48 0F28F2A4 0F28F828
dw  wario149,  wario150,  wario151,  wario152 // 0F28FDE8 0F29038C 0F290958 0F290F20
dw  wario153,  wario154,  wario155,  wario156 // 0F2914E0 0F291AC4 0F2920B4 0F2926B4
dw  wario157,  wario158,  wario159,  wario160 // 0F292CA0 0F2932BC 0F2938CC 0F293ED4
dw  wario161,  wario162,  wario163,  wario164 // 0F2944DC 0F294B00 0F295150 0F2957A8
dw  wario165,  wario166,  wario167,  wario275 // 0F295E14 0F29648C 0F296B18 0F2C08FC
dw  wario276,  wario277,  wario278,  wario279 // 0F2C0FA4 0F2C1638 0F2C1CC0 0F2C2324
dw  wario280,  wario281,  wario282,  wario283 // 0F2C2984 0F2C2FC8 0F2C35DC 0F2C3BEC
dw  wario284,  wario285,  wario286,  wario287 // 0F2C41CC 0F2C47A4 0F2C4D70 0F2C531C
dw  wario288
KartsWario8:
dw  wario168,  wario169,  wario170 // 0F2C58B8 0F297198 0F29773C 0F297CFC
dw  wario171,  wario172,  wario173,  wario174 // 0F2982A0 0F298878 0F298E40 0F299404
dw  wario175,  wario176,  wario177,  wario178 // 0F2999D8 0F299FC4 0F29A5C8 0F29ABC4
dw  wario179,  wario180,  wario181,  wario182 // 0F29B1E0 0F29B7F4 0F29BDF4 0F29C408
dw  wario183,  wario184,  wario185,  wario186 // 0F29CA3C 0F29D070 0F29D6C4 0F29DD34
dw  wario187,  wario188,  wario275,  wario276 // 0F29E3A0 0F29EA38 0F2C08FC 0F2C0FA4
dw  wario277,  wario278,  wario279,  wario280 // 0F2C1638 0F2C1CC0 0F2C2324 0F2C2984
dw  wario281,  wario282,  wario283,  wario284 // 0F2C2FC8 0F2C35DC 0F2C3BEC 0F2C41CC
dw  wario285,  wario286,  wario287,  wario288 // 0F2C47A4 0F2C4D70 0F2C531C 0F2C58B8
KartsWarioA:
dw  wario189,  wario190,  wario191,  wario192 // 0F29F0CC 0F29F628 0F29FBC0 0F2A0178
dw  wario193,  wario194,  wario195,  wario196 // 0F2A075C 0F2A0D44 0F2A1358 0F2A1990
dw  wario197,  wario198,  wario199,  wario200 // 0F2A1FD8 0F2A2628 0F2A2CAC 0F2A3334
dw  wario201,  wario202,  wario203,  wario204 // 0F2A39F0 0F2A40B0 0F2A474C 0F2A4DF8
dw  wario205,  wario206,  wario207,  wario208 // 0F2A54B8 0F2A5B58 0F2A61FC 0F2A689C
KartsWarioB:
dw  wario189,  wario190,  wario191,  wario192 // 0F29F0CC 0F29F628 0F29FBC0 0F2A0178
dw  wario193,  wario194,  wario195,  wario196 // 0F2A075C 0F2A0D44 0F2A1358 0F2A1990
dw  wario197,  wario198,  wario199,  wario200 // 0F2A1FD8 0F2A2628 0F2A2CAC 0F2A3334
dw  wario201,  wario202,  wario203,  wario204 // 0F2A39F0 0F2A40B0 0F2A474C 0F2A4DF8
dw  wario205,  wario206,  wario207,  wario208 // 0F2A54B8 0F2A5B58 0F2A61FC 0F2A689C
KartsWarioC:
dw  wario209,  wario210,  wario211,  wario212 // 0F2A6F28 0F2A74B4 0F2A7A64 0F2A8048
dw  wario213,  wario214,  wario215,  wario216 // 0F2A8648 0F2A8C70 0F2A92AC 0F2A9900
dw  wario217,  wario218,  wario219,  wario220 // 0F2A9F5C 0F2AA5B4 0F2AAC34 0F2AB29C
dw  wario221,  wario222,  wario223,  wario224 // 0F2AB928 0F2ABFA0 0F2AC61C 0F2ACC88
dw  wario225,  wario226,  wario227,  wario228 // 0F2AD300 0F2AD95C 0F2ADFB0 0F2AE5FC
KartsWarioD:
dw  wario229,  wario230,  wario231,  wario232 // 0F2AEC64 0F2AF1FC 0F2AF7B4 0F2AFD98
dw  wario233,  wario234,  wario235,  wario236 // 0F2B03B4 0F2B09E8 0F2B1038 0F2B16B4
dw  wario237,  wario238,  wario239,  wario240 // 0F2B1D24 0F2B2398 0F2B29F8 0F2B3060
dw  wario241,  wario242,  wario243,  wario244 // 0F2B36D0 0F2B3D3C 0F2B4398 0F2B49E0
dw  wario245,  wario246,  wario247,  wario248 // 0F2B5020 0F2B5664 0F2B5C9C 0F2B62B0
KartsWarioE:
dw  wario229,  wario230,  wario231,  wario232 // 0F2AEC64 0F2AF1FC 0F2AF7B4 0F2AFD98
dw  wario233,  wario234,  wario235,  wario236 // 0F2B03B4 0F2B09E8 0F2B1038 0F2B16B4
dw  wario237,  wario238,  wario239,  wario240 // 0F2B1D24 0F2B2398 0F2B29F8 0F2B3060
dw  wario241,  wario242,  wario243,  wario244 // 0F2B36D0 0F2B3D3C 0F2B4398 0F2B49E0
dw  wario245,  wario246,  wario247,  wario248 // 0F2B5020 0F2B5664 0F2B5C9C 0F2B62B0
KartsWarioF:
dw  wario229,  wario230,  wario231,  wario232 // 0F2AEC64 0F2AF1FC 0F2AF7B4 0F2AFD98
dw  wario233,  wario234,  wario235,  wario236 // 0F2B03B4 0F2B09E8 0F2B1038 0F2B16B4
dw  wario237,  wario238,  wario239,  wario240 // 0F2B1D24 0F2B2398 0F2B29F8 0F2B3060
dw  wario241,  wario242,  wario243,  wario244 // 0F2B36D0 0F2B3D3C 0F2B4398 0F2B49E0
dw  wario245,  wario246,  wario247,  wario248 // 0F2B5020 0F2B5664 0F2B5C9C 0F2B62B0
KartsWarioG:
dw  wario249,  wario250,  wario251,  wario252 // 0F2B68B8 0F2B6E6C 0F2B744C 0F2B7A40
dw  wario253,  wario254,  wario255,  wario256 // 0F2B8064 0F2B86B4 0F2B8D24 0F2B9398
dw  wario257,  wario258,  wario259,  wario260 // 0F2B9A20 0F2BA0B0 0F2BA714 0F2BAD70
dw  wario261,  wario262,  wario263,  wario264 // 0F2BB3CC 0F2BBA00 0F2BC024 0F2BC638
dw  wario265,  wario266,  wario267,  wario268 // 0F2BCC54 0F2BD260 0F2BD868 0F2BDE48
KartsWarioH:
dw  wario269,  wario270,  wario271,  wario272 // 0F2BE420 0F2BE9E0 0F2BEFB8 0F2BF5D4
dw  wario273,  wario274,  wario275,  wario276 // 0F2BFC24 0F2C0280 0F2C08FC 0F2C0FA4
dw  wario277,  wario278,  wario279,  wario280 // 0F2C1638 0F2C1CC0 0F2C2324 0F2C2984
dw  wario281,  wario282,  wario283,  wario284 // 0F2C2FC8 0F2C35DC 0F2C3BEC 0F2C41CC
dw  wario285,  wario286,  wario287,  wario288 // 0F2C47A4 0F2C4D70 0F2C531C 0F2C58B8
KartsWarioI:
dw  wario269,  wario270,  wario271,  wario272 // 0F2BE420 0F2BE9E0 0F2BEFB8 0F2BF5D4
dw  wario273,  wario274,  wario275,  wario276 // 0F2BFC24 0F2C0280 0F2C08FC 0F2C0FA4
dw  wario277,  wario278,  wario279,  wario280 // 0F2C1638 0F2C1CC0 0F2C2324 0F2C2984
dw  wario281,  wario282,  wario283,  wario284 // 0F2C2FC8 0F2C35DC 0F2C3BEC 0F2C41CC
dw  wario285,  wario286,  wario287,  wario288 // 0F2C47A4 0F2C4D70 0F2C531C 0F2C58B8

// 800E1CA0/E28A0: pointers to kart texture tables
KartTableMario0:
dw KartsMario8, KartsMario7, KartsMario6, KartsMario5 // 800DE320 800DE294 800DE208 800DE17C
dw KartsMario4, KartsMario3, KartsMario2, KartsMario1 // 800DE0F0 800DE064 800DDFD8 800DDF4C
dw KartsMario0                                        // 800DDEC0
KartTableLuigi0:
dw KartsLuigi8, KartsLuigi7, KartsLuigi6, KartsLuigi5 // 800DF298 800DF20C 800DF180 800DF0F4
dw KartsLuigi4, KartsLuigi3, KartsLuigi2, KartsLuigi1 // 800DF068 800DEFDC 800DEF50 800DEEC4
dw KartsLuigi0                                        // 800DEE38
KartTableYoshi0:
dw KartsYoshi8, KartsYoshi7, KartsYoshi6, KartsYoshi5 // 800DFA54 800DF9C8 800DF93C 800DF8B0
dw KartsYoshi4, KartsYoshi3, KartsYoshi2, KartsYoshi1 // 800DF824 800DF798 800DF70C 800DF680
dw KartsYoshi0                                        // 800DF5F4
KartTableToad0:
dw  KartsToad8,  KartsToad7,  KartsToad6,  KartsToad5 // 800DEADC 800DEA50 800DE9C4 800DE938
dw  KartsToad4,  KartsToad3,  KartsToad2,  KartsToad1 // 800DE8AC 800DE820 800DE794 800DE708
dw  KartsToad0                                        // 800DE67C
KartTableDK0:
dw    KartsDK8,    KartsDK7,    KartsDK6,    KartsDK5 // 800E0210 800E0184 800E00F8 800E006C
dw    KartsDK4,    KartsDK3,    KartsDK2,    KartsDK1 // 800DFFE0 800DFF54 800DFEC8 800DFE3C
dw    KartsDK0                                        // 800DFDB0
KartTableWario0:
dw KartsWario8, KartsWario7, KartsWario6, KartsWario5 // 800E1944 800E18B8 800E182C 800E17A0
dw KartsWario4, KartsWario3, KartsWario2, KartsWario1 // 800E1714 800E1688 800E15FC 800E1570
dw KartsWario0                                        // 800E14E4
KartTablePeach0:
dw KartsPeach8, KartsPeach7, KartsPeach6, KartsPeach5 // 800E1188 800E10FC 800E1070 800E0FE4
dw KartsPeach4, KartsPeach3, KartsPeach2, KartsPeach1 // 800E0F58 800E0ECC 800E0E40 800E0DB4
dw KartsPeach0                                        // 800E0D28
KartTableBowser0:
dw KartsBowser8, KartsBowser7, KartsBowser6, KartsBowser5 // 800E09CC 800E0940 800E08B4 800E0828
dw KartsBowser4, KartsBowser3, KartsBowser2, KartsBowser1 // 800E079C 800E0710 800E0684 800E05F8
dw KartsBowser0                                           // 800E056C
KartTableMario1:
dw KartsMarioI, KartsMarioH, KartsMarioG, KartsMarioF // 800DE62C 800DE5DC 800DE58C 800DE53C
dw KartsMarioE, KartsMarioD, KartsMarioC, KartsMarioB // 800DE4EC 800DE49C 800DE44C 800DE3FC
dw KartsMarioA                                        // 800DE3AC
KartTableLuigi1:
dw KartsLuigiI, KartsLuigiH, KartsLuigiG, KartsLuigiF // 800DF5A4 800DF554 800DF504 800DF4B4
dw KartsLuigiE, KartsLuigiD, KartsLuigiC, KartsLuigiB // 800DF464 800DF414 800DF3C4 800DF374
dw KartsLuigiA                                        // 800DF324
KartTableYoshi1:
dw KartsYoshiI, KartsYoshiH, KartsYoshiG, KartsYoshiF // 800DFD60 800DFD10 800DFCC0 800DFC70
dw KartsYoshiE, KartsYoshiD, KartsYoshiC, KartsYoshiB // 800DFC20 800DFBD0 800DFB80 800DFB30
dw KartsYoshiA                                        // 800DFAE0
KartTableToad1:
dw  KartsToadI,  KartsToadH,  KartsToadG,  KartsToadF // 800DEDE8 800DED98 800DED48 800DECF8
dw  KartsToadE,  KartsToadD,  KartsToadC,  KartsToadB // 800DECA8 800DEC58 800DEC08 800DEBB8
dw  KartsToadA                                        // 800DEB68
KartTableDK1:
dw    KartsDKI,    KartsDKH,    KartsDKG,    KartsDKF // 800E051C 800E04CC 800E047C 800E042C
dw    KartsDKE,    KartsDKD,    KartsDKC,    KartsDKB // 800E03DC 800E038C 800E033C 800E02EC
dw    KartsDKA                                        // 800E029C
KartTableWario1:
dw KartsWarioI, KartsWarioH, KartsWarioG, KartsWarioF // 800E1C50, 0x800E1C00, 0x800E1BB0, 0x800E1B60
dw KartsWarioE, KartsWarioD, KartsWarioC, KartsWarioB // 800E1B10, 0x800E1AC0, 0x800E1A70, 0x800E1A20
dw KartsWarioA                                        // 800E19D0
KartTablePeach1:
dw KartsPeachI, KartsPeachH, KartsPeachG, KartsPeachF // 800E1494 800E1444 800E13F4 800E13A4
dw KartsPeachE, KartsPeachD, KartsPeachC, KartsPeachB // 800E1354 800E1304 800E12B4 800E1264
dw KartsPeachA                                        // 800E1214
KartTableBowser1:
dw KartsBowserI, KartsBowserH, KartsBowserG, KartsBowserF // 800E0CD8 800E0C88 800E0C38 800E0BE8
dw KartsBowserE, KartsBowserD, KartsBowserC, KartsBowserB // 800E0B98 800E0B48 800E0AF8 800E0AA8
dw KartsBowserA                                           // 800E0A58

// 800E1EE0/E2AE0 table of kart pointer tables
dw KartTableMario0, KartTableLuigi0, KartTableYoshi0,   KartTableToad0 // 800E1CA0 800E1CC4 800E1CE8 800E1D0C
dw    KartTableDK0, KartTableWario0, KartTablePeach0, KartTableBowser0 // 800E1D30 800E1D54 800E1D78 800E1D9C
dw KartTableMario1, KartTableLuigi1, KartTableYoshi1,   KartTableToad1 // 800E1DC0 800E1DE4 800E1E08 800E1E2C
dw    KartTableDK1, KartTableWario1, KartTablePeach1, KartTableBowser1 // 800E1E50 800E1E74 800E1E98 800E1EBC

// 800E1F20/E2B20: crashing karts
KartsMarioCrash:
dw  mario289,  mario290,  mario291,  mario292 // 0F0FDAF4 0F0FDFC4 0F0FE530 0F0FEB04
dw  mario293,  mario294,  mario295,  mario296 // 0F0FF1B0 0F0FF7E8 0F0FFE28 0F1003F4
dw  mario297,  mario298,  mario299,  mario300 // 0F10097C 0F100E94 0F101454 0F101A1C
dw  mario301,  mario302,  mario303,  mario304 // 0F102008 0F1025A8 0F102B40 0F1030E0
dw  mario305,  mario306,  mario307,  mario308 // 0F103630 0F103AFC 0F1040E8 0F10478C
dw  mario309,  mario310,  mario311,  mario312 // 0F104E28 0F105458 0F105A7C 0F106048
dw  mario313,  mario314,  mario315,  mario316 // 0F106598 0F106AA8 0F107068 0F107640
dw  mario317,  mario318,  mario319,  mario320 // 0F107BF8 0F10819C 0F10874C 0F108CC4
KartsLuigiCrash:
dw  luigi289,  luigi290,  luigi291,  luigi292 // 0F06AFC8 0F06B4C4 0F06BA50 0F06C030
dw  luigi293,  luigi294,  luigi295,  luigi296 // 0F06C6DC 0F06CD38 0F06D390 0F06D9B4
dw  luigi297,  luigi298,  luigi299,  luigi300 // 0F06DF5C 0F06E48C 0F06EA48 0F06F028
dw  luigi301,  luigi302,  luigi303,  luigi304 // 0F06F5F0 0F06FBB0 0F070188 0F070750
dw  luigi305,  luigi306,  luigi307,  luigi308 // 0F070CB4 0F071154 0F071740 0F071DCC
dw  luigi309,  luigi310,  luigi311,  luigi312 // 0F07247C 0F072AC8 0F073118 0F073730
dw  luigi313,  luigi314,  luigi315,  luigi316 // 0F073C90 0F0741A8 0F074764 0F074D3C
dw  luigi317,  luigi318,  luigi319,  luigi320 // 0F0752F0 0F0758A0 0F075E70 0F076448
KartsBowserCrash:
dw bowser289, bowser290, bowser291, bowser292 // 0F4C5D38 0F4C639C 0F4C6A28 0F4C7140
dw bowser293, bowser294, bowser295, bowser296 // 0F4C7900 0F4C8000 0F4C87AC 0F4C8F8C
dw bowser297, bowser298, bowser299, bowser300 // 0F4C9750 0F4C9E60 0F4CA594 0F4CACF8
dw bowser301, bowser302, bowser303, bowser304 // 0F4CB478 0F4CBC2C 0F4CC464 0F4CCC3C
dw bowser305, bowser306, bowser307, bowser308 // 0F4CD388 0F4CD958 0F4CE060 0F4CE7F0
dw bowser309, bowser310, bowser311, bowser312 // 0F4CEFD0 0F4CF70C 0F4CFEC4 0F4D06BC
dw bowser313, bowser314, bowser315, bowser316 // 0F4D0E54 0F4D156C 0F4D1C9C 0F4D23E4
dw bowser317, bowser318, bowser319, bowser320 // 0F4D2B6C 0F4D32CC 0F4D3AD0 0F4D42C0
KartsToadCrash:
dw   toad289,   toad290,   toad291,   toad292 // 0F357710 0F357BA4 0F3580F0 0F3586B8
dw   toad293,   toad294,   toad295,   toad296 // 0F358D28 0F35932C 0F359930 0F359ED4
dw   toad297,   toad298,   toad299,   toad300 // 0F35A3EC 0F35A888 0F35ADC4 0F35B32C
dw   toad301,   toad302,   toad303,   toad304 // 0F35B8A4 0F35BDFC 0F35C388 0F35C924
dw   toad305,   toad306,   toad307,   toad308 // 0F35CE60 0F35D2BC 0F35D85C 0F35DE9C
dw   toad309,   toad310,   toad311,   toad312 // 0F35E50C 0F35EAF0 0F35F0D0 0F35F698
dw   toad313,   toad314,   toad315,   toad316 // 0F35FB80 0F36001C 0F360558 0F360A9C
dw   toad317,   toad318,   toad319,   toad320 // 0F361020 0F3615C8 0F361B58 0F362100
KartsYoshiCrash:
dw  yoshi289,  yoshi290,  yoshi291,  yoshi292 // 0F195480 0F195978 0F195EBC 0F196484
dw  yoshi293,  yoshi294,  yoshi295,  yoshi296 // 0F196B10 0F197104 0F197708 0F197CCC
dw  yoshi297,  yoshi298,  yoshi299,  yoshi300 // 0F198210 0F1986CC 0F198C28 0F1991DC
dw  yoshi301,  yoshi302,  yoshi303,  yoshi304 // 0F1997BC 0F199D70 0F19A318 0F19A8C0
dw  yoshi305,  yoshi306,  yoshi307,  yoshi308 // 0F19AE14 0F19B274 0F19B7CC 0F19BDE0
dw  yoshi309,  yoshi310,  yoshi311,  yoshi312 // 0F19C42C 0F19CA20 0F19D034 0F19D5EC
dw  yoshi313,  yoshi314,  yoshi315,  yoshi316 // 0F19DB00 0F19DFD0 0F19E530 0F19EABC
dw  yoshi317,  yoshi318,  yoshi319,  yoshi320 // 0F19F074 0F19F63C 0F19FBE4 0F1A01B8
KartsDKCrash:
dw     dk289,     dk290,     dk291,     dk292 // 0F406A38 0F4070E8 0F4077A8 0F407E4C
dw     dk293,     dk294,     dk295,     dk296 // 0F40851C 0F408B70 0F4091F8 0F4098E0
dw     dk297,     dk298,     dk299,     dk300 // 0F40A024 0F40A6FC 0F40AE48 0F40B52C
dw     dk301,     dk302,     dk303,     dk304 // 0F40BBC8 0F40C290 0F40C9B0 0F40D11C
dw     dk305,     dk306,     dk307,     dk308 // 0F40D894 0F40DE98 0F40E580 0F40EC44
dw     dk309,     dk310,     dk311,     dk312 // 0F40F2E8 0F40F974 0F40FFE0 0F4106F8
dw     dk313,     dk314,     dk315,     dk316 // 0F410E14 0F4114F0 0F411C64 0F41238C
dw     dk317,     dk318,     dk319,     dk320 // 0F412A1C 0F4130E4 0F4137AC 0F413F04
KartsPeachCrash:
dw  peach289,  peach290,  peach291,  peach292 // 0F229B20 0F229FB0 0F22A498 0F22AA28
dw  peach293,  peach294,  peach295,  peach296 // 0F22B08C 0F22B6C0 0F22BCF8 0F22C25C
dw  peach297,  peach298,  peach299,  peach300 // 0F22C75C 0F22CC30 0F22D1B8 0F22D760
dw  peach301,  peach302,  peach303,  peach304 // 0F22DD0C 0F22E27C 0F22E79C 0F22EC7C
dw  peach305,  peach306,  peach307,  peach308 // 0F22F174 0F22F614 0F22FBB0 0F23020C
dw  peach309,  peach310,  peach311,  peach312 // 0F230894 0F230E84 0F231464 0F2319A8
dw  peach313,  peach314,  peach315,  peach316 // 0F231E68 0F23233C 0F2328A8 0F232E6C
dw  peach317,  peach318,  peach319,  peach320 // 0F2333FC 0F233980 0F233EE0 0F2343F4
KartsWarioCrash:
dw  wario289,  wario290,  wario291,  wario292 // 0F2C5E1C 0F2C63E0 0F2C69E4 0F2C6FFC
dw  wario293,  wario294,  wario295,  wario296 // 0F2C7664 0F2C7C24 0F2C8224 0F2C883C
dw  wario297,  wario298,  wario299,  wario300 // 0F2C8E70 0F2C943C 0F2C9A74 0F2CA088
dw  wario301,  wario302,  wario303,  wario304 // 0F2CA624 0F2CAB90 0F2CB154 0F2CB76C
dw  wario305,  wario306,  wario307,  wario308 // 0F2CBD98 0F2CC2E4 0F2CC8F4 0F2CCF40
dw  wario309,  wario310,  wario311,  wario312 // 0F2CD574 0F2CDB54 0F2CE150 0F2CE754
dw  wario313,  wario314,  wario315,  wario316 // 0F2CED48 0F2CF318 0F2CF948 0F2CFF6C
dw  wario317,  wario318,  wario319,  wario320 // 0F2D0524 0F2D0A8C 0F2D1010 0F2D15E0

// 800E2320/E2F20: crashing kart tables
dw KartsMarioCrash, KartsLuigiCrash, KartsYoshiCrash, KartsToadCrash   // 800E1F20 800E1FA0 800E2120 800E20A0
dw    KartsDKCrash, KartsWarioCrash, KartsPeachCrash, KartsBowserCrash // 800E21A0 800E22A0 800E2220 800E2020

// 800E2340/E2F40: kart palette table
dw PaletteMario, PaletteLuigi, PaletteYoshi,   PaletteToad // 0F12D430 0F09ABFC 0F1C4958 0F386858
dw    PaletteDK, PaletteWario, PalettePeach, PaletteBowser // 0F438874 0F2F5DEC 0F258AC8 0F4F8C88

// assign segment 0F base
origin 0x145470
base 0x0F000000

luigi000:
insert "extract/mio0/00145470.mio0"; align(4)
luigi001:
insert "extract/mio0/00145964.mio0"; align(4)
luigi002:
insert "extract/mio0/00145E64.mio0"; align(4)
luigi003:
insert "extract/mio0/00146368.mio0"; align(4)
luigi004:
insert "extract/mio0/00146888.mio0"; align(4)
luigi005:
insert "extract/mio0/00146DB0.mio0"; align(4)
luigi006:
insert "extract/mio0/001472EC.mio0"; align(4)
luigi007:
insert "extract/mio0/00147840.mio0"; align(4)
luigi008:
insert "extract/mio0/00147DA8.mio0"; align(4)
luigi009:
insert "extract/mio0/00148328.mio0"; align(4)
luigi010:
insert "extract/mio0/001488B8.mio0"; align(4)
luigi011:
insert "extract/mio0/00148E58.mio0"; align(4)
luigi012:
insert "extract/mio0/00149420.mio0"; align(4)
luigi013:
insert "extract/mio0/001499F0.mio0"; align(4)
luigi014:
insert "extract/mio0/00149FC4.mio0"; align(4)
luigi015:
insert "extract/mio0/0014A5A8.mio0"; align(4)
luigi016:
insert "extract/mio0/0014ABA0.mio0"; align(4)
luigi017:
insert "extract/mio0/0014B1AC.mio0"; align(4)
luigi018:
insert "extract/mio0/0014B7C0.mio0"; align(4)
luigi019:
insert "extract/mio0/0014BDD8.mio0"; align(4)
luigi020:
insert "extract/mio0/0014C3E0.mio0"; align(4)
luigi021:
insert "extract/mio0/0014C9E0.mio0"; align(4)
luigi022:
insert "extract/mio0/0014CED4.mio0"; align(4)
luigi023:
insert "extract/mio0/0014D3D0.mio0"; align(4)
luigi024:
insert "extract/mio0/0014D8D0.mio0"; align(4)
luigi025:
insert "extract/mio0/0014DDF8.mio0"; align(4)
luigi026:
insert "extract/mio0/0014E338.mio0"; align(4)
luigi027:
insert "extract/mio0/0014E878.mio0"; align(4)
luigi028:
insert "extract/mio0/0014EDE8.mio0"; align(4)
luigi029:
insert "extract/mio0/0014F364.mio0"; align(4)
luigi030:
insert "extract/mio0/0014F900.mio0"; align(4)
luigi031:
insert "extract/mio0/0014FEA8.mio0"; align(4)
luigi032:
insert "extract/mio0/00150470.mio0"; align(4)
luigi033:
insert "extract/mio0/00150A48.mio0"; align(4)
luigi034:
insert "extract/mio0/00151020.mio0"; align(4)
luigi035:
insert "extract/mio0/00151614.mio0"; align(4)
luigi036:
insert "extract/mio0/00151C1C.mio0"; align(4)
luigi037:
insert "extract/mio0/00152230.mio0"; align(4)
luigi038:
insert "extract/mio0/00152840.mio0"; align(4)
luigi039:
insert "extract/mio0/00152E54.mio0"; align(4)
luigi040:
insert "extract/mio0/00153478.mio0"; align(4)
luigi041:
insert "extract/mio0/00153A7C.mio0"; align(4)
luigi042:
insert "extract/mio0/001540B0.mio0"; align(4)
luigi043:
insert "extract/mio0/00154598.mio0"; align(4)
luigi044:
insert "extract/mio0/00154A9C.mio0"; align(4)
luigi045:
insert "extract/mio0/00154FCC.mio0"; align(4)
luigi046:
insert "extract/mio0/00155508.mio0"; align(4)
luigi047:
insert "extract/mio0/00155A88.mio0"; align(4)
luigi048:
insert "extract/mio0/00155FF0.mio0"; align(4)
luigi049:
insert "extract/mio0/00156570.mio0"; align(4)
luigi050:
insert "extract/mio0/00156B0C.mio0"; align(4)
luigi051:
insert "extract/mio0/001570B4.mio0"; align(4)
luigi052:
insert "extract/mio0/00157670.mio0"; align(4)
luigi053:
insert "extract/mio0/00157C54.mio0"; align(4)
luigi054:
insert "extract/mio0/00158248.mio0"; align(4)
luigi055:
insert "extract/mio0/00158824.mio0"; align(4)
luigi056:
insert "extract/mio0/00158E34.mio0"; align(4)
luigi057:
insert "extract/mio0/00159428.mio0"; align(4)
luigi058:
insert "extract/mio0/00159A30.mio0"; align(4)
luigi059:
insert "extract/mio0/0015A058.mio0"; align(4)
luigi060:
insert "extract/mio0/0015A690.mio0"; align(4)
luigi061:
insert "extract/mio0/0015ACC0.mio0"; align(4)
luigi062:
insert "extract/mio0/0015B308.mio0"; align(4)
luigi063:
insert "extract/mio0/0015B940.mio0"; align(4)
luigi064:
insert "extract/mio0/0015BE50.mio0"; align(4)
luigi065:
insert "extract/mio0/0015C364.mio0"; align(4)
luigi066:
insert "extract/mio0/0015C888.mio0"; align(4)
luigi067:
insert "extract/mio0/0015CDE8.mio0"; align(4)
luigi068:
insert "extract/mio0/0015D358.mio0"; align(4)
luigi069:
insert "extract/mio0/0015D8EC.mio0"; align(4)
luigi070:
insert "extract/mio0/0015DE84.mio0"; align(4)
luigi071:
insert "extract/mio0/0015E424.mio0"; align(4)
luigi072:
insert "extract/mio0/0015E9EC.mio0"; align(4)
luigi073:
insert "extract/mio0/0015EFC0.mio0"; align(4)
luigi074:
insert "extract/mio0/0015F5B0.mio0"; align(4)
luigi075:
insert "extract/mio0/0015FBA4.mio0"; align(4)
luigi076:
insert "extract/mio0/0016019C.mio0"; align(4)
luigi077:
insert "extract/mio0/001607AC.mio0"; align(4)
luigi078:
insert "extract/mio0/00160DCC.mio0"; align(4)
luigi079:
insert "extract/mio0/001613F4.mio0"; align(4)
luigi080:
insert "extract/mio0/00161A14.mio0"; align(4)
luigi081:
insert "extract/mio0/00162054.mio0"; align(4)
luigi082:
insert "extract/mio0/00162694.mio0"; align(4)
luigi083:
insert "extract/mio0/00162CCC.mio0"; align(4)
luigi084:
insert "extract/mio0/00163300.mio0"; align(4)
luigi085:
insert "extract/mio0/0016380C.mio0"; align(4)
luigi086:
insert "extract/mio0/00163D2C.mio0"; align(4)
luigi087:
insert "extract/mio0/00164278.mio0"; align(4)
luigi088:
insert "extract/mio0/001647CC.mio0"; align(4)
luigi089:
insert "extract/mio0/00164D50.mio0"; align(4)
luigi090:
insert "extract/mio0/001652DC.mio0"; align(4)
luigi091:
insert "extract/mio0/00165878.mio0"; align(4)
luigi092:
insert "extract/mio0/00165E24.mio0"; align(4)
luigi093:
insert "extract/mio0/001663F0.mio0"; align(4)
luigi094:
insert "extract/mio0/001669CC.mio0"; align(4)
luigi095:
insert "extract/mio0/00166FB8.mio0"; align(4)
luigi096:
insert "extract/mio0/001675B0.mio0"; align(4)
luigi097:
insert "extract/mio0/00167BC0.mio0"; align(4)
luigi098:
insert "extract/mio0/001681C8.mio0"; align(4)
luigi099:
insert "extract/mio0/001687F4.mio0"; align(4)
luigi100:
insert "extract/mio0/00168E38.mio0"; align(4)
luigi101:
insert "extract/mio0/0016948C.mio0"; align(4)
luigi102:
insert "extract/mio0/00169AD4.mio0"; align(4)
luigi103:
insert "extract/mio0/0016A120.mio0"; align(4)
luigi104:
insert "extract/mio0/0016A764.mio0"; align(4)
luigi105:
insert "extract/mio0/0016ADA0.mio0"; align(4)
luigi106:
insert "extract/mio0/0016B2C0.mio0"; align(4)
luigi107:
insert "extract/mio0/0016B7F4.mio0"; align(4)
luigi108:
insert "extract/mio0/0016BD5C.mio0"; align(4)
luigi109:
insert "extract/mio0/0016C2E8.mio0"; align(4)
luigi110:
insert "extract/mio0/0016C85C.mio0"; align(4)
luigi111:
insert "extract/mio0/0016CDF0.mio0"; align(4)
luigi112:
insert "extract/mio0/0016D388.mio0"; align(4)
luigi113:
insert "extract/mio0/0016D94C.mio0"; align(4)
luigi114:
insert "extract/mio0/0016DF20.mio0"; align(4)
luigi115:
insert "extract/mio0/0016E51C.mio0"; align(4)
luigi116:
insert "extract/mio0/0016EB04.mio0"; align(4)
luigi117:
insert "extract/mio0/0016F11C.mio0"; align(4)
luigi118:
insert "extract/mio0/0016F720.mio0"; align(4)
luigi119:
insert "extract/mio0/0016FD3C.mio0"; align(4)
luigi120:
insert "extract/mio0/00170364.mio0"; align(4)
luigi121:
insert "extract/mio0/001709A4.mio0"; align(4)
luigi122:
insert "extract/mio0/00170FFC.mio0"; align(4)
luigi123:
insert "extract/mio0/00171640.mio0"; align(4)
luigi124:
insert "extract/mio0/00171C9C.mio0"; align(4)
luigi125:
insert "extract/mio0/001722F4.mio0"; align(4)
luigi126:
insert "extract/mio0/0017293C.mio0"; align(4)
luigi127:
insert "extract/mio0/00172E84.mio0"; align(4)
luigi128:
insert "extract/mio0/001733C8.mio0"; align(4)
luigi129:
insert "extract/mio0/00173954.mio0"; align(4)
luigi130:
insert "extract/mio0/00173EB0.mio0"; align(4)
luigi131:
insert "extract/mio0/00174458.mio0"; align(4)
luigi132:
insert "extract/mio0/00174A04.mio0"; align(4)
luigi133:
insert "extract/mio0/00174FC8.mio0"; align(4)
luigi134:
insert "extract/mio0/0017557C.mio0"; align(4)
luigi135:
insert "extract/mio0/00175B40.mio0"; align(4)
luigi136:
insert "extract/mio0/00176128.mio0"; align(4)
luigi137:
insert "extract/mio0/0017671C.mio0"; align(4)
luigi138:
insert "extract/mio0/00176D20.mio0"; align(4)
luigi139:
insert "extract/mio0/0017733C.mio0"; align(4)
luigi140:
insert "extract/mio0/00177964.mio0"; align(4)
luigi141:
insert "extract/mio0/00177FA8.mio0"; align(4)
luigi142:
insert "extract/mio0/001785F8.mio0"; align(4)
luigi143:
insert "extract/mio0/00178C54.mio0"; align(4)
luigi144:
insert "extract/mio0/001792B4.mio0"; align(4)
luigi145:
insert "extract/mio0/00179920.mio0"; align(4)
luigi146:
insert "extract/mio0/00179F80.mio0"; align(4)
luigi147:
insert "extract/mio0/0017A5F4.mio0"; align(4)
luigi148:
insert "extract/mio0/0017AB48.mio0"; align(4)
luigi149:
insert "extract/mio0/0017B0AC.mio0"; align(4)
luigi150:
insert "extract/mio0/0017B620.mio0"; align(4)
luigi151:
insert "extract/mio0/0017BBB8.mio0"; align(4)
luigi152:
insert "extract/mio0/0017C174.mio0"; align(4)
luigi153:
insert "extract/mio0/0017C744.mio0"; align(4)
luigi154:
insert "extract/mio0/0017CD10.mio0"; align(4)
luigi155:
insert "extract/mio0/0017D2D8.mio0"; align(4)
luigi156:
insert "extract/mio0/0017D8D0.mio0"; align(4)
luigi157:
insert "extract/mio0/0017DECC.mio0"; align(4)
luigi158:
insert "extract/mio0/0017E4D8.mio0"; align(4)
luigi159:
insert "extract/mio0/0017EADC.mio0"; align(4)
luigi160:
insert "extract/mio0/0017F0FC.mio0"; align(4)
luigi161:
insert "extract/mio0/0017F74C.mio0"; align(4)
luigi162:
insert "extract/mio0/0017FDA0.mio0"; align(4)
luigi163:
insert "extract/mio0/00180400.mio0"; align(4)
luigi164:
insert "extract/mio0/00180A70.mio0"; align(4)
luigi165:
insert "extract/mio0/001810EC.mio0"; align(4)
luigi166:
insert "extract/mio0/00181750.mio0"; align(4)
luigi167:
insert "extract/mio0/00181DDC.mio0"; align(4)
luigi168:
insert "extract/mio0/00182458.mio0"; align(4)
luigi169:
insert "extract/mio0/001829D0.mio0"; align(4)
luigi170:
insert "extract/mio0/00182F74.mio0"; align(4)
luigi171:
insert "extract/mio0/00183538.mio0"; align(4)
luigi172:
insert "extract/mio0/00183AEC.mio0"; align(4)
luigi173:
insert "extract/mio0/0018408C.mio0"; align(4)
luigi174:
insert "extract/mio0/00184670.mio0"; align(4)
luigi175:
insert "extract/mio0/00184C48.mio0"; align(4)
luigi176:
insert "extract/mio0/00185218.mio0"; align(4)
luigi177:
insert "extract/mio0/00185808.mio0"; align(4)
luigi178:
insert "extract/mio0/00185E24.mio0"; align(4)
luigi179:
insert "extract/mio0/00186434.mio0"; align(4)
luigi180:
insert "extract/mio0/00186A50.mio0"; align(4)
luigi181:
insert "extract/mio0/00187080.mio0"; align(4)
luigi182:
insert "extract/mio0/001876B0.mio0"; align(4)
luigi183:
insert "extract/mio0/00187CF4.mio0"; align(4)
luigi184:
insert "extract/mio0/00188340.mio0"; align(4)
luigi185:
insert "extract/mio0/001889A4.mio0"; align(4)
luigi186:
insert "extract/mio0/00189030.mio0"; align(4)
luigi187:
insert "extract/mio0/001896C0.mio0"; align(4)
luigi188:
insert "extract/mio0/00189D28.mio0"; align(4)
luigi189:
insert "extract/mio0/0018A3A8.mio0"; align(4)
luigi190:
insert "extract/mio0/0018A8BC.mio0"; align(4)
luigi191:
insert "extract/mio0/0018AE10.mio0"; align(4)
luigi192:
insert "extract/mio0/0018B398.mio0"; align(4)
luigi193:
insert "extract/mio0/0018B954.mio0"; align(4)
luigi194:
insert "extract/mio0/0018BF34.mio0"; align(4)
luigi195:
insert "extract/mio0/0018C534.mio0"; align(4)
luigi196:
insert "extract/mio0/0018CB50.mio0"; align(4)
luigi197:
insert "extract/mio0/0018D184.mio0"; align(4)
luigi198:
insert "extract/mio0/0018D7E0.mio0"; align(4)
luigi199:
insert "extract/mio0/0018DE4C.mio0"; align(4)
luigi200:
insert "extract/mio0/0018E4D4.mio0"; align(4)
luigi201:
insert "extract/mio0/0018EB7C.mio0"; align(4)
luigi202:
insert "extract/mio0/0018F234.mio0"; align(4)
luigi203:
insert "extract/mio0/0018F8E8.mio0"; align(4)
luigi204:
insert "extract/mio0/0018FF80.mio0"; align(4)
luigi205:
insert "extract/mio0/00190634.mio0"; align(4)
luigi206:
insert "extract/mio0/00190CB8.mio0"; align(4)
luigi207:
insert "extract/mio0/00191320.mio0"; align(4)
luigi208:
insert "extract/mio0/00191978.mio0"; align(4)
luigi209:
insert "extract/mio0/00191F94.mio0"; align(4)
luigi210:
insert "extract/mio0/001924DC.mio0"; align(4)
luigi211:
insert "extract/mio0/00192A58.mio0"; align(4)
luigi212:
insert "extract/mio0/00193010.mio0"; align(4)
luigi213:
insert "extract/mio0/001935E8.mio0"; align(4)
luigi214:
insert "extract/mio0/00193BE8.mio0"; align(4)
luigi215:
insert "extract/mio0/00194200.mio0"; align(4)
luigi216:
insert "extract/mio0/00194844.mio0"; align(4)
luigi217:
insert "extract/mio0/00194E9C.mio0"; align(4)
luigi218:
insert "extract/mio0/001954F0.mio0"; align(4)
luigi219:
insert "extract/mio0/00195B4C.mio0"; align(4)
luigi220:
insert "extract/mio0/001961BC.mio0"; align(4)
luigi221:
insert "extract/mio0/00196844.mio0"; align(4)
luigi222:
insert "extract/mio0/00196ECC.mio0"; align(4)
luigi223:
insert "extract/mio0/00197564.mio0"; align(4)
luigi224:
insert "extract/mio0/00197BD4.mio0"; align(4)
luigi225:
insert "extract/mio0/00198248.mio0"; align(4)
luigi226:
insert "extract/mio0/001988B0.mio0"; align(4)
luigi227:
insert "extract/mio0/00198ED8.mio0"; align(4)
luigi228:
insert "extract/mio0/001994C8.mio0"; align(4)
luigi229:
insert "extract/mio0/00199A74.mio0"; align(4)
luigi230:
insert "extract/mio0/00199FC8.mio0"; align(4)
luigi231:
insert "extract/mio0/0019A568.mio0"; align(4)
luigi232:
insert "extract/mio0/0019AB4C.mio0"; align(4)
luigi233:
insert "extract/mio0/0019B150.mio0"; align(4)
luigi234:
insert "extract/mio0/0019B780.mio0"; align(4)
luigi235:
insert "extract/mio0/0019BDC0.mio0"; align(4)
luigi236:
insert "extract/mio0/0019C414.mio0"; align(4)
luigi237:
insert "extract/mio0/0019CA74.mio0"; align(4)
luigi238:
insert "extract/mio0/0019D0DC.mio0"; align(4)
luigi239:
insert "extract/mio0/0019D730.mio0"; align(4)
luigi240:
insert "extract/mio0/0019DDAC.mio0"; align(4)
luigi241:
insert "extract/mio0/0019E414.mio0"; align(4)
luigi242:
insert "extract/mio0/0019EA78.mio0"; align(4)
luigi243:
insert "extract/mio0/0019F0E8.mio0"; align(4)
luigi244:
insert "extract/mio0/0019F718.mio0"; align(4)
luigi245:
insert "extract/mio0/0019FD2C.mio0"; align(4)
luigi246:
insert "extract/mio0/001A0334.mio0"; align(4)
luigi247:
insert "extract/mio0/001A091C.mio0"; align(4)
luigi248:
insert "extract/mio0/001A0EE4.mio0"; align(4)
luigi249:
insert "extract/mio0/001A1464.mio0"; align(4)
luigi250:
insert "extract/mio0/001A19E0.mio0"; align(4)
luigi251:
insert "extract/mio0/001A1FAC.mio0"; align(4)
luigi252:
insert "extract/mio0/001A259C.mio0"; align(4)
luigi253:
insert "extract/mio0/001A2BC0.mio0"; align(4)
luigi254:
insert "extract/mio0/001A320C.mio0"; align(4)
luigi255:
insert "extract/mio0/001A385C.mio0"; align(4)
luigi256:
insert "extract/mio0/001A3ED8.mio0"; align(4)
luigi257:
insert "extract/mio0/001A4548.mio0"; align(4)
luigi258:
insert "extract/mio0/001A4BAC.mio0"; align(4)
luigi259:
insert "extract/mio0/001A5210.mio0"; align(4)
luigi260:
insert "extract/mio0/001A586C.mio0"; align(4)
luigi261:
insert "extract/mio0/001A5EBC.mio0"; align(4)
luigi262:
insert "extract/mio0/001A64F4.mio0"; align(4)
luigi263:
insert "extract/mio0/001A6B14.mio0"; align(4)
luigi264:
insert "extract/mio0/001A7110.mio0"; align(4)
luigi265:
insert "extract/mio0/001A7710.mio0"; align(4)
luigi266:
insert "extract/mio0/001A7CD4.mio0"; align(4)
luigi267:
insert "extract/mio0/001A8280.mio0"; align(4)
luigi268:
insert "extract/mio0/001A87F0.mio0"; align(4)
luigi269:
insert "extract/mio0/001A8D20.mio0"; align(4)
luigi270:
insert "extract/mio0/001A92C0.mio0"; align(4)
luigi271:
insert "extract/mio0/001A98A0.mio0"; align(4)
luigi272:
insert "extract/mio0/001A9EB4.mio0"; align(4)
luigi273:
insert "extract/mio0/001AA4F4.mio0"; align(4)
luigi274:
insert "extract/mio0/001AAB40.mio0"; align(4)
luigi275:
insert "extract/mio0/001AB1AC.mio0"; align(4)
luigi276:
insert "extract/mio0/001AB834.mio0"; align(4)
luigi277:
insert "extract/mio0/001ABEB8.mio0"; align(4)
luigi278:
insert "extract/mio0/001AC514.mio0"; align(4)
luigi279:
insert "extract/mio0/001ACB84.mio0"; align(4)
luigi280:
insert "extract/mio0/001AD1DC.mio0"; align(4)
luigi281:
insert "extract/mio0/001AD828.mio0"; align(4)
luigi282:
insert "extract/mio0/001ADE34.mio0"; align(4)
luigi283:
insert "extract/mio0/001AE438.mio0"; align(4)
luigi284:
insert "extract/mio0/001AEA00.mio0"; align(4)
luigi285:
insert "extract/mio0/001AEFB4.mio0"; align(4)
luigi286:
insert "extract/mio0/001AF528.mio0"; align(4)
luigi287:
insert "extract/mio0/001AFA74.mio0"; align(4)
luigi288:
insert "extract/mio0/001AFF80.mio0"; align(4)
luigi289:
insert "extract/mio0/001B0438.mio0"; align(4)
luigi290:
insert "extract/mio0/001B0934.mio0"; align(4)
luigi291:
insert "extract/mio0/001B0EC0.mio0"; align(4)
luigi292:
insert "extract/mio0/001B14A0.mio0"; align(4)
luigi293:
insert "extract/mio0/001B1B4C.mio0"; align(4)
luigi294:
insert "extract/mio0/001B21A8.mio0"; align(4)
luigi295:
insert "extract/mio0/001B2800.mio0"; align(4)
luigi296:
insert "extract/mio0/001B2E24.mio0"; align(4)
luigi297:
insert "extract/mio0/001B33CC.mio0"; align(4)
luigi298:
insert "extract/mio0/001B38FC.mio0"; align(4)
luigi299:
insert "extract/mio0/001B3EB8.mio0"; align(4)
luigi300:
insert "extract/mio0/001B4498.mio0"; align(4)
luigi301:
insert "extract/mio0/001B4A60.mio0"; align(4)
luigi302:
insert "extract/mio0/001B5020.mio0"; align(4)
luigi303:
insert "extract/mio0/001B55F8.mio0"; align(4)
luigi304:
insert "extract/mio0/001B5BC0.mio0"; align(4)
luigi305:
insert "extract/mio0/001B6124.mio0"; align(4)
luigi306:
insert "extract/mio0/001B65C4.mio0"; align(4)
luigi307:
insert "extract/mio0/001B6BB0.mio0"; align(4)
luigi308:
insert "extract/mio0/001B723C.mio0"; align(4)
luigi309:
insert "extract/mio0/001B78EC.mio0"; align(4)
luigi310:
insert "extract/mio0/001B7F38.mio0"; align(4)
luigi311:
insert "extract/mio0/001B8588.mio0"; align(4)
luigi312:
insert "extract/mio0/001B8BA0.mio0"; align(4)
luigi313:
insert "extract/mio0/001B9100.mio0"; align(4)
luigi314:
insert "extract/mio0/001B9618.mio0"; align(4)
luigi315:
insert "extract/mio0/001B9BD4.mio0"; align(4)
luigi316:
insert "extract/mio0/001BA1AC.mio0"; align(4)
luigi317:
insert "extract/mio0/001BA760.mio0"; align(4)
luigi318:
insert "extract/mio0/001BAD10.mio0"; align(4)
luigi319:
insert "extract/mio0/001BB2E0.mio0"; align(4)
luigi320:
insert "extract/mio0/001BB8B8.mio0"; align(4)
// 0F0769FC/1BBE6C : Luigi wheel palettes
PalLuigi1BBE6C:
insert "extract/palettes/001BBE6C.bin"
PalLuigi1BE86C:
insert "extract/palettes/001BE86C.bin"
PalLuigi1C126C:
insert "extract/palettes/001C126C.bin"
PalLuigi1C3C6C:
insert "extract/palettes/001C3C6C.bin"
PalLuigi1C666C:
insert "extract/palettes/001C666C.bin"
PalLuigi1C906C:
insert "extract/palettes/001C906C.bin"
PalLuigi1CBA6C:
insert "extract/palettes/001CBA6C.bin"
PalLuigi1CE46C:
insert "extract/palettes/001CE46C.bin"
PalLuigi1D0E6C:
insert "extract/palettes/001D0E6C.bin"
PalLuigi1D386C:
insert "extract/palettes/001D386C.bin"
PalLuigi1D606C:
insert "extract/palettes/001D606C.bin"
PalLuigi1D886C:
insert "extract/palettes/001D886C.bin"
PalLuigi1DB06C:
insert "extract/palettes/001DB06C.bin"
PalLuigi1DD86C:
insert "extract/palettes/001DD86C.bin"
// 0F09ABFC/1E006C: Luigi kart palette
PaletteLuigi:
insert "extract/palettes/001E006C.bin"
align(0x10)

// 0F09AD80/1E01F0
mario000:
insert "extract/mio0/001E01F0.mio0"; align(4)
mario001:
insert "extract/mio0/001E0680.mio0"; align(4)
mario002:
insert "extract/mio0/001E0B18.mio0"; align(4)
mario003:
insert "extract/mio0/001E0FB4.mio0"; align(4)
mario004:
insert "extract/mio0/001E1460.mio0"; align(4)
mario005:
insert "extract/mio0/001E1918.mio0"; align(4)
mario006:
insert "extract/mio0/001E1DD4.mio0"; align(4)
mario007:
insert "extract/mio0/001E22B0.mio0"; align(4)
mario008:
insert "extract/mio0/001E27A8.mio0"; align(4)
mario009:
insert "extract/mio0/001E2CC4.mio0"; align(4)
mario010:
insert "extract/mio0/001E31FC.mio0"; align(4)
mario011:
insert "extract/mio0/001E372C.mio0"; align(4)
mario012:
insert "extract/mio0/001E3C74.mio0"; align(4)
mario013:
insert "extract/mio0/001E41C4.mio0"; align(4)
mario014:
insert "extract/mio0/001E472C.mio0"; align(4)
mario015:
insert "extract/mio0/001E4CA0.mio0"; align(4)
mario016:
insert "extract/mio0/001E5228.mio0"; align(4)
mario017:
insert "extract/mio0/001E57A0.mio0"; align(4)
mario018:
insert "extract/mio0/001E5D28.mio0"; align(4)
mario019:
insert "extract/mio0/001E62B4.mio0"; align(4)
mario020:
insert "extract/mio0/001E6858.mio0"; align(4)
mario021:
insert "extract/mio0/001E6DF8.mio0"; align(4)
mario022:
insert "extract/mio0/001E7288.mio0"; align(4)
mario023:
insert "extract/mio0/001E7740.mio0"; align(4)
mario024:
insert "extract/mio0/001E7BD8.mio0"; align(4)
mario025:
insert "extract/mio0/001E80A4.mio0"; align(4)
mario026:
insert "extract/mio0/001E857C.mio0"; align(4)
mario027:
insert "extract/mio0/001E8A50.mio0"; align(4)
mario028:
insert "extract/mio0/001E8F50.mio0"; align(4)
mario029:
insert "extract/mio0/001E9458.mio0"; align(4)
mario030:
insert "extract/mio0/001E9988.mio0"; align(4)
mario031:
insert "extract/mio0/001E9EC8.mio0"; align(4)
mario032:
insert "extract/mio0/001EA420.mio0"; align(4)
mario033:
insert "extract/mio0/001EA984.mio0"; align(4)
mario034:
insert "extract/mio0/001EAED8.mio0"; align(4)
mario035:
insert "extract/mio0/001EB458.mio0"; align(4)
mario036:
insert "extract/mio0/001EB9C8.mio0"; align(4)
mario037:
insert "extract/mio0/001EBF58.mio0"; align(4)
mario038:
insert "extract/mio0/001EC4E4.mio0"; align(4)
mario039:
insert "extract/mio0/001ECA6C.mio0"; align(4)
mario040:
insert "extract/mio0/001ECFEC.mio0"; align(4)
mario041:
insert "extract/mio0/001ED574.mio0"; align(4)
mario042:
insert "extract/mio0/001EDB10.mio0"; align(4)
mario043:
insert "extract/mio0/001EDFD0.mio0"; align(4)
mario044:
insert "extract/mio0/001EE494.mio0"; align(4)
mario045:
insert "extract/mio0/001EE968.mio0"; align(4)
mario046:
insert "extract/mio0/001EEE40.mio0"; align(4)
mario047:
insert "extract/mio0/001EF33C.mio0"; align(4)
mario048:
insert "extract/mio0/001EF85C.mio0"; align(4)
mario049:
insert "extract/mio0/001EFD80.mio0"; align(4)
mario050:
insert "extract/mio0/001F02A8.mio0"; align(4)
mario051:
insert "extract/mio0/001F07EC.mio0"; align(4)
mario052:
insert "extract/mio0/001F0D3C.mio0"; align(4)
mario053:
insert "extract/mio0/001F12AC.mio0"; align(4)
mario054:
insert "extract/mio0/001F1814.mio0"; align(4)
mario055:
insert "extract/mio0/001F1D90.mio0"; align(4)
mario056:
insert "extract/mio0/001F231C.mio0"; align(4)
mario057:
insert "extract/mio0/001F289C.mio0"; align(4)
mario058:
insert "extract/mio0/001F2E18.mio0"; align(4)
mario059:
insert "extract/mio0/001F33A8.mio0"; align(4)
mario060:
insert "extract/mio0/001F394C.mio0"; align(4)
mario061:
insert "extract/mio0/001F3F00.mio0"; align(4)
mario062:
insert "extract/mio0/001F44AC.mio0"; align(4)
mario063:
insert "extract/mio0/001F4A5C.mio0"; align(4)
mario064:
insert "extract/mio0/001F4F1C.mio0"; align(4)
mario065:
insert "extract/mio0/001F53F4.mio0"; align(4)
mario066:
insert "extract/mio0/001F58D4.mio0"; align(4)
mario067:
insert "extract/mio0/001F5DAC.mio0"; align(4)
mario068:
insert "extract/mio0/001F62A8.mio0"; align(4)
mario069:
insert "extract/mio0/001F67BC.mio0"; align(4)
mario070:
insert "extract/mio0/001F6CE0.mio0"; align(4)
mario071:
insert "extract/mio0/001F7228.mio0"; align(4)
mario072:
insert "extract/mio0/001F7768.mio0"; align(4)
mario073:
insert "extract/mio0/001F7CC4.mio0"; align(4)
mario074:
insert "extract/mio0/001F8238.mio0"; align(4)
mario075:
insert "extract/mio0/001F8794.mio0"; align(4)
mario076:
insert "extract/mio0/001F8D10.mio0"; align(4)
mario077:
insert "extract/mio0/001F9284.mio0"; align(4)
mario078:
insert "extract/mio0/001F9810.mio0"; align(4)
mario079:
insert "extract/mio0/001F9DB0.mio0"; align(4)
mario080:
insert "extract/mio0/001FA360.mio0"; align(4)
mario081:
insert "extract/mio0/001FA914.mio0"; align(4)
mario082:
insert "extract/mio0/001FAED8.mio0"; align(4)
mario083:
insert "extract/mio0/001FB48C.mio0"; align(4)
mario084:
insert "extract/mio0/001FBA40.mio0"; align(4)
mario085:
insert "extract/mio0/001FBEF0.mio0"; align(4)
mario086:
insert "extract/mio0/001FC3D4.mio0"; align(4)
mario087:
insert "extract/mio0/001FC8C8.mio0"; align(4)
mario088:
insert "extract/mio0/001FCDBC.mio0"; align(4)
mario089:
insert "extract/mio0/001FD2C4.mio0"; align(4)
mario090:
insert "extract/mio0/001FD7EC.mio0"; align(4)
mario091:
insert "extract/mio0/001FDD30.mio0"; align(4)
mario092:
insert "extract/mio0/001FE290.mio0"; align(4)
mario093:
insert "extract/mio0/001FE7FC.mio0"; align(4)
mario094:
insert "extract/mio0/001FED70.mio0"; align(4)
mario095:
insert "extract/mio0/001FF2EC.mio0"; align(4)
mario096:
insert "extract/mio0/001FF86C.mio0"; align(4)
mario097:
insert "extract/mio0/001FFDF0.mio0"; align(4)
mario098:
insert "extract/mio0/00200378.mio0"; align(4)
mario099:
insert "extract/mio0/0020091C.mio0"; align(4)
mario100:
insert "extract/mio0/00200EC4.mio0"; align(4)
mario101:
insert "extract/mio0/0020146C.mio0"; align(4)
mario102:
insert "extract/mio0/00201A14.mio0"; align(4)
mario103:
insert "extract/mio0/00201FD4.mio0"; align(4)
mario104:
insert "extract/mio0/00202598.mio0"; align(4)
mario105:
insert "extract/mio0/00202B50.mio0"; align(4)
mario106:
insert "extract/mio0/00203030.mio0"; align(4)
mario107:
insert "extract/mio0/00203518.mio0"; align(4)
mario108:
insert "extract/mio0/00203A0C.mio0"; align(4)
mario109:
insert "extract/mio0/00203F1C.mio0"; align(4)
mario110:
insert "extract/mio0/00204424.mio0"; align(4)
mario111:
insert "extract/mio0/00204970.mio0"; align(4)
mario112:
insert "extract/mio0/00204EC0.mio0"; align(4)
mario113:
insert "extract/mio0/00205420.mio0"; align(4)
mario114:
insert "extract/mio0/00205990.mio0"; align(4)
mario115:
insert "extract/mio0/00205F00.mio0"; align(4)
mario116:
insert "extract/mio0/00206480.mio0"; align(4)
mario117:
insert "extract/mio0/00206A0C.mio0"; align(4)
mario118:
insert "extract/mio0/00206FA4.mio0"; align(4)
mario119:
insert "extract/mio0/00207538.mio0"; align(4)
mario120:
insert "extract/mio0/00207AFC.mio0"; align(4)
mario121:
insert "extract/mio0/002080B0.mio0"; align(4)
mario122:
insert "extract/mio0/00208678.mio0"; align(4)
mario123:
insert "extract/mio0/00208C2C.mio0"; align(4)
mario124:
insert "extract/mio0/0020920C.mio0"; align(4)
mario125:
insert "extract/mio0/002097D4.mio0"; align(4)
mario126:
insert "extract/mio0/00209DA4.mio0"; align(4)
mario127:
insert "extract/mio0/0020A290.mio0"; align(4)
mario128:
insert "extract/mio0/0020A790.mio0"; align(4)
mario129:
insert "extract/mio0/0020ACAC.mio0"; align(4)
mario130:
insert "extract/mio0/0020B1BC.mio0"; align(4)
mario131:
insert "extract/mio0/0020B6EC.mio0"; align(4)
mario132:
insert "extract/mio0/0020BC28.mio0"; align(4)
mario133:
insert "extract/mio0/0020C174.mio0"; align(4)
mario134:
insert "extract/mio0/0020C6C4.mio0"; align(4)
mario135:
insert "extract/mio0/0020CC2C.mio0"; align(4)
mario136:
insert "extract/mio0/0020D190.mio0"; align(4)
mario137:
insert "extract/mio0/0020D720.mio0"; align(4)
mario138:
insert "extract/mio0/0020DCB8.mio0"; align(4)
mario139:
insert "extract/mio0/0020E24C.mio0"; align(4)
mario140:
insert "extract/mio0/0020E7E8.mio0"; align(4)
mario141:
insert "extract/mio0/0020ED98.mio0"; align(4)
mario142:
insert "extract/mio0/0020F360.mio0"; align(4)
mario143:
insert "extract/mio0/0020F928.mio0"; align(4)
mario144:
insert "extract/mio0/0020FEE0.mio0"; align(4)
mario145:
insert "extract/mio0/002104AC.mio0"; align(4)
mario146:
insert "extract/mio0/00210A74.mio0"; align(4)
mario147:
insert "extract/mio0/00211054.mio0"; align(4)
mario148:
insert "extract/mio0/00211570.mio0"; align(4)
mario149:
insert "extract/mio0/00211A8C.mio0"; align(4)
mario150:
insert "extract/mio0/00211FB0.mio0"; align(4)
mario151:
insert "extract/mio0/002124EC.mio0"; align(4)
mario152:
insert "extract/mio0/00212A38.mio0"; align(4)
mario153:
insert "extract/mio0/00212F70.mio0"; align(4)
mario154:
insert "extract/mio0/002134D8.mio0"; align(4)
mario155:
insert "extract/mio0/00213A28.mio0"; align(4)
mario156:
insert "extract/mio0/00213FB4.mio0"; align(4)
mario157:
insert "extract/mio0/00214540.mio0"; align(4)
mario158:
insert "extract/mio0/00214AEC.mio0"; align(4)
mario159:
insert "extract/mio0/0021509C.mio0"; align(4)
mario160:
insert "extract/mio0/00215650.mio0"; align(4)
mario161:
insert "extract/mio0/00215BF4.mio0"; align(4)
mario162:
insert "extract/mio0/002161A4.mio0"; align(4)
mario163:
insert "extract/mio0/00216774.mio0"; align(4)
mario164:
insert "extract/mio0/00216D38.mio0"; align(4)
mario165:
insert "extract/mio0/00217304.mio0"; align(4)
mario166:
insert "extract/mio0/002178F4.mio0"; align(4)
mario167:
insert "extract/mio0/00217ECC.mio0"; align(4)
mario168:
insert "extract/mio0/002184B8.mio0"; align(4)
mario169:
insert "extract/mio0/002189D0.mio0"; align(4)
mario170:
insert "extract/mio0/00218EFC.mio0"; align(4)
mario171:
insert "extract/mio0/00219450.mio0"; align(4)
mario172:
insert "extract/mio0/00219980.mio0"; align(4)
mario173:
insert "extract/mio0/00219EC4.mio0"; align(4)
mario174:
insert "extract/mio0/0021A420.mio0"; align(4)
mario175:
insert "extract/mio0/0021A99C.mio0"; align(4)
mario176:
insert "extract/mio0/0021AF10.mio0"; align(4)
mario177:
insert "extract/mio0/0021B490.mio0"; align(4)
mario178:
insert "extract/mio0/0021BA24.mio0"; align(4)
mario179:
insert "extract/mio0/0021BFCC.mio0"; align(4)
mario180:
insert "extract/mio0/0021C578.mio0"; align(4)
mario181:
insert "extract/mio0/0021CB30.mio0"; align(4)
mario182:
insert "extract/mio0/0021D0E8.mio0"; align(4)
mario183:
insert "extract/mio0/0021D6B0.mio0"; align(4)
mario184:
insert "extract/mio0/0021DC8C.mio0"; align(4)
mario185:
insert "extract/mio0/0021E270.mio0"; align(4)
mario186:
insert "extract/mio0/0021E850.mio0"; align(4)
mario187:
insert "extract/mio0/0021EE40.mio0"; align(4)
mario188:
insert "extract/mio0/0021F41C.mio0"; align(4)
mario189:
insert "extract/mio0/0021FA14.mio0"; align(4)
mario190:
insert "extract/mio0/0021FEB4.mio0"; align(4)
mario191:
insert "extract/mio0/00220388.mio0"; align(4)
mario192:
insert "extract/mio0/00220898.mio0"; align(4)
mario193:
insert "extract/mio0/00220DC8.mio0"; align(4)
mario194:
insert "extract/mio0/00221328.mio0"; align(4)
mario195:
insert "extract/mio0/002218A8.mio0"; align(4)
mario196:
insert "extract/mio0/00221E20.mio0"; align(4)
mario197:
insert "extract/mio0/002223D4.mio0"; align(4)
mario198:
insert "extract/mio0/00222984.mio0"; align(4)
mario199:
insert "extract/mio0/00222F70.mio0"; align(4)
mario200:
insert "extract/mio0/0022356C.mio0"; align(4)
mario201:
insert "extract/mio0/00223B88.mio0"; align(4)
mario202:
insert "extract/mio0/002241CC.mio0"; align(4)
mario203:
insert "extract/mio0/00224818.mio0"; align(4)
mario204:
insert "extract/mio0/00224E74.mio0"; align(4)
mario205:
insert "extract/mio0/002254C8.mio0"; align(4)
mario206:
insert "extract/mio0/00225AF0.mio0"; align(4)
mario207:
insert "extract/mio0/00226124.mio0"; align(4)
mario208:
insert "extract/mio0/00226740.mio0"; align(4)
mario209:
insert "extract/mio0/00226D2C.mio0"; align(4)
mario210:
insert "extract/mio0/0022720C.mio0"; align(4)
mario211:
insert "extract/mio0/00227734.mio0"; align(4)
mario212:
insert "extract/mio0/00227C74.mio0"; align(4)
mario213:
insert "extract/mio0/002281DC.mio0"; align(4)
mario214:
insert "extract/mio0/00228748.mio0"; align(4)
mario215:
insert "extract/mio0/00228CE8.mio0"; align(4)
mario216:
insert "extract/mio0/00229298.mio0"; align(4)
mario217:
insert "extract/mio0/00229860.mio0"; align(4)
mario218:
insert "extract/mio0/00229E28.mio0"; align(4)
mario219:
insert "extract/mio0/0022A410.mio0"; align(4)
mario220:
insert "extract/mio0/0022A9E0.mio0"; align(4)
mario221:
insert "extract/mio0/0022AFC8.mio0"; align(4)
mario222:
insert "extract/mio0/0022B5E0.mio0"; align(4)
mario223:
insert "extract/mio0/0022BBF8.mio0"; align(4)
mario224:
insert "extract/mio0/0022C210.mio0"; align(4)
mario225:
insert "extract/mio0/0022C818.mio0"; align(4)
mario226:
insert "extract/mio0/0022CE2C.mio0"; align(4)
mario227:
insert "extract/mio0/0022D410.mio0"; align(4)
mario228:
insert "extract/mio0/0022D9E8.mio0"; align(4)
mario229:
insert "extract/mio0/0022DF84.mio0"; align(4)
mario230:
insert "extract/mio0/0022E460.mio0"; align(4)
mario231:
insert "extract/mio0/0022E990.mio0"; align(4)
mario232:
insert "extract/mio0/0022EEF0.mio0"; align(4)
mario233:
insert "extract/mio0/0022F46C.mio0"; align(4)
mario234:
insert "extract/mio0/0022F9F4.mio0"; align(4)
mario235:
insert "extract/mio0/0022FF90.mio0"; align(4)
mario236:
insert "extract/mio0/00230558.mio0"; align(4)
mario237:
insert "extract/mio0/00230B38.mio0"; align(4)
mario238:
insert "extract/mio0/0023110C.mio0"; align(4)
mario239:
insert "extract/mio0/002316F0.mio0"; align(4)
mario240:
insert "extract/mio0/00231CB8.mio0"; align(4)
mario241:
insert "extract/mio0/00232298.mio0"; align(4)
mario242:
insert "extract/mio0/00232874.mio0"; align(4)
mario243:
insert "extract/mio0/00232E70.mio0"; align(4)
mario244:
insert "extract/mio0/00233460.mio0"; align(4)
mario245:
insert "extract/mio0/00233A30.mio0"; align(4)
mario246:
insert "extract/mio0/00234014.mio0"; align(4)
mario247:
insert "extract/mio0/002345C0.mio0"; align(4)
mario248:
insert "extract/mio0/00234B58.mio0"; align(4)
mario249:
insert "extract/mio0/002350A0.mio0"; align(4)
mario250:
insert "extract/mio0/002355A0.mio0"; align(4)
mario251:
insert "extract/mio0/00235ADC.mio0"; align(4)
mario252:
insert "extract/mio0/00236038.mio0"; align(4)
mario253:
insert "extract/mio0/002365CC.mio0"; align(4)
mario254:
insert "extract/mio0/00236B5C.mio0"; align(4)
mario255:
insert "extract/mio0/00237118.mio0"; align(4)
mario256:
insert "extract/mio0/002376FC.mio0"; align(4)
mario257:
insert "extract/mio0/00237CE0.mio0"; align(4)
mario258:
insert "extract/mio0/002382D8.mio0"; align(4)
mario259:
insert "extract/mio0/002388A0.mio0"; align(4)
mario260:
insert "extract/mio0/00238E68.mio0"; align(4)
mario261:
insert "extract/mio0/00239440.mio0"; align(4)
mario262:
insert "extract/mio0/00239A20.mio0"; align(4)
mario263:
insert "extract/mio0/00239FF8.mio0"; align(4)
mario264:
insert "extract/mio0/0023A59C.mio0"; align(4)
mario265:
insert "extract/mio0/0023AB38.mio0"; align(4)
mario266:
insert "extract/mio0/0023B0CC.mio0"; align(4)
mario267:
insert "extract/mio0/0023B644.mio0"; align(4)
mario268:
insert "extract/mio0/0023BB9C.mio0"; align(4)
mario269:
insert "extract/mio0/0023C0AC.mio0"; align(4)
mario270:
insert "extract/mio0/0023C5FC.mio0"; align(4)
mario271:
insert "extract/mio0/0023CB50.mio0"; align(4)
mario272:
insert "extract/mio0/0023D0CC.mio0"; align(4)
mario273:
insert "extract/mio0/0023D658.mio0"; align(4)
mario274:
insert "extract/mio0/0023DC0C.mio0"; align(4)
mario275:
insert "extract/mio0/0023E1D8.mio0"; align(4)
mario276:
insert "extract/mio0/0023E7C8.mio0"; align(4)
mario277:
insert "extract/mio0/0023EDB0.mio0"; align(4)
mario278:
insert "extract/mio0/0023F37C.mio0"; align(4)
mario279:
insert "extract/mio0/0023F960.mio0"; align(4)
mario280:
insert "extract/mio0/0023FF14.mio0"; align(4)
mario281:
insert "extract/mio0/002404E0.mio0"; align(4)
mario282:
insert "extract/mio0/00240A88.mio0"; align(4)
mario283:
insert "extract/mio0/00241028.mio0"; align(4)
mario284:
insert "extract/mio0/002415B0.mio0"; align(4)
mario285:
insert "extract/mio0/00241B30.mio0"; align(4)
mario286:
insert "extract/mio0/0024207C.mio0"; align(4)
mario287:
insert "extract/mio0/002425A8.mio0"; align(4)
mario288:
insert "extract/mio0/00242AB0.mio0"; align(4)
mario289:
insert "extract/mio0/00242F64.mio0"; align(4)
mario290:
insert "extract/mio0/00243434.mio0"; align(4)
mario291:
insert "extract/mio0/002439A0.mio0"; align(4)
mario292:
insert "extract/mio0/00243F74.mio0"; align(4)
mario293:
insert "extract/mio0/00244620.mio0"; align(4)
mario294:
insert "extract/mio0/00244C58.mio0"; align(4)
mario295:
insert "extract/mio0/00245298.mio0"; align(4)
mario296:
insert "extract/mio0/00245864.mio0"; align(4)
mario297:
insert "extract/mio0/00245DEC.mio0"; align(4)
mario298:
insert "extract/mio0/00246304.mio0"; align(4)
mario299:
insert "extract/mio0/002468C4.mio0"; align(4)
mario300:
insert "extract/mio0/00246E8C.mio0"; align(4)
mario301:
insert "extract/mio0/00247478.mio0"; align(4)
mario302:
insert "extract/mio0/00247A18.mio0"; align(4)
mario303:
insert "extract/mio0/00247FB0.mio0"; align(4)
mario304:
insert "extract/mio0/00248550.mio0"; align(4)
mario305:
insert "extract/mio0/00248AA0.mio0"; align(4)
mario306:
insert "extract/mio0/00248F6C.mio0"; align(4)
mario307:
insert "extract/mio0/00249558.mio0"; align(4)
mario308:
insert "extract/mio0/00249BFC.mio0"; align(4)
mario309:
insert "extract/mio0/0024A298.mio0"; align(4)
mario310:
insert "extract/mio0/0024A8C8.mio0"; align(4)
mario311:
insert "extract/mio0/0024AEEC.mio0"; align(4)
mario312:
insert "extract/mio0/0024B4B8.mio0"; align(4)
mario313:
insert "extract/mio0/0024BA08.mio0"; align(4)
mario314:
insert "extract/mio0/0024BF18.mio0"; align(4)
mario315:
insert "extract/mio0/0024C4D8.mio0"; align(4)
mario316:
insert "extract/mio0/0024CAB0.mio0"; align(4)
mario317:
insert "extract/mio0/0024D068.mio0"; align(4)
mario318:
insert "extract/mio0/0024D60C.mio0"; align(4)
mario319:
insert "extract/mio0/0024DBBC.mio0"; align(4)
mario320:
insert "extract/mio0/0024E134.mio0"; align(4)
// 0F109230/24E6A0: Mario wheel palettes
PalMario24E6A0:
insert "extract/palettes/0024E6A0.bin"
PalMario2510A0:
insert "extract/palettes/002510A0.bin"
PalMario253AA0:
insert "extract/palettes/00253AA0.bin"
PalMario2564A0:
insert "extract/palettes/002564A0.bin"
PalMario258EA0:
insert "extract/palettes/00258EA0.bin"
PalMario25B8A0:
insert "extract/palettes/0025B8A0.bin"
PalMario25E2A0:
insert "extract/palettes/0025E2A0.bin"
PalMario260CA0:
insert "extract/palettes/00260CA0.bin"
PalMario2636A0:
insert "extract/palettes/002636A0.bin"
PalMario2660A0:
insert "extract/palettes/002660A0.bin"
PalMario2688A0:
insert "extract/palettes/002688A0.bin"
PalMario26B0A0:
insert "extract/palettes/0026B0A0.bin"
PalMario26D8A0:
insert "extract/palettes/0026D8A0.bin"
PalMario2700A0:
insert "extract/palettes/002700A0.bin"
// 0F12D430/2728A0: Mario kart palette
PaletteMario:
insert "extract/palettes/002728A0.bin"
align(0x10)

// 0F12D5B0/272A20
yoshi000:
insert "extract/mio0/00272A20.mio0"; align(4)
yoshi001:
insert "extract/mio0/00272EF0.mio0"; align(4)
yoshi002:
insert "extract/mio0/002733E8.mio0"; align(4)
yoshi003:
insert "extract/mio0/002738D4.mio0"; align(4)
yoshi004:
insert "extract/mio0/00273DC4.mio0"; align(4)
yoshi005:
insert "extract/mio0/002742C8.mio0"; align(4)
yoshi006:
insert "extract/mio0/002747D4.mio0"; align(4)
yoshi007:
insert "extract/mio0/00274CFC.mio0"; align(4)
yoshi008:
insert "extract/mio0/00275234.mio0"; align(4)
yoshi009:
insert "extract/mio0/0027577C.mio0"; align(4)
yoshi010:
insert "extract/mio0/00275CE0.mio0"; align(4)
yoshi011:
insert "extract/mio0/00276258.mio0"; align(4)
yoshi012:
insert "extract/mio0/002767DC.mio0"; align(4)
yoshi013:
insert "extract/mio0/00276D4C.mio0"; align(4)
yoshi014:
insert "extract/mio0/002772E0.mio0"; align(4)
yoshi015:
insert "extract/mio0/00277880.mio0"; align(4)
yoshi016:
insert "extract/mio0/00277E38.mio0"; align(4)
yoshi017:
insert "extract/mio0/00278424.mio0"; align(4)
yoshi018:
insert "extract/mio0/00278A1C.mio0"; align(4)
yoshi019:
insert "extract/mio0/00279020.mio0"; align(4)
yoshi020:
insert "extract/mio0/00279634.mio0"; align(4)
yoshi021:
insert "extract/mio0/00279C58.mio0"; align(4)
yoshi022:
insert "extract/mio0/0027A138.mio0"; align(4)
yoshi023:
insert "extract/mio0/0027A614.mio0"; align(4)
yoshi024:
insert "extract/mio0/0027AAF8.mio0"; align(4)
yoshi025:
insert "extract/mio0/0027B008.mio0"; align(4)
yoshi026:
insert "extract/mio0/0027B528.mio0"; align(4)
yoshi027:
insert "extract/mio0/0027BA3C.mio0"; align(4)
yoshi028:
insert "extract/mio0/0027BF7C.mio0"; align(4)
yoshi029:
insert "extract/mio0/0027C4C4.mio0"; align(4)
yoshi030:
insert "extract/mio0/0027CA20.mio0"; align(4)
yoshi031:
insert "extract/mio0/0027CF9C.mio0"; align(4)
yoshi032:
insert "extract/mio0/0027D52C.mio0"; align(4)
yoshi033:
insert "extract/mio0/0027DAA8.mio0"; align(4)
yoshi034:
insert "extract/mio0/0027E040.mio0"; align(4)
yoshi035:
insert "extract/mio0/0027E5E0.mio0"; align(4)
yoshi036:
insert "extract/mio0/0027EB98.mio0"; align(4)
yoshi037:
insert "extract/mio0/0027F16C.mio0"; align(4)
yoshi038:
insert "extract/mio0/0027F74C.mio0"; align(4)
yoshi039:
insert "extract/mio0/0027FD48.mio0"; align(4)
yoshi040:
insert "extract/mio0/00280354.mio0"; align(4)
yoshi041:
insert "extract/mio0/00280974.mio0"; align(4)
yoshi042:
insert "extract/mio0/00280F88.mio0"; align(4)
yoshi043:
insert "extract/mio0/0028146C.mio0"; align(4)
yoshi044:
insert "extract/mio0/00281958.mio0"; align(4)
yoshi045:
insert "extract/mio0/00281E74.mio0"; align(4)
yoshi046:
insert "extract/mio0/00282388.mio0"; align(4)
yoshi047:
insert "extract/mio0/002828C0.mio0"; align(4)
yoshi048:
insert "extract/mio0/00282DF8.mio0"; align(4)
yoshi049:
insert "extract/mio0/0028334C.mio0"; align(4)
yoshi050:
insert "extract/mio0/002838B4.mio0"; align(4)
yoshi051:
insert "extract/mio0/00283E28.mio0"; align(4)
yoshi052:
insert "extract/mio0/002843C8.mio0"; align(4)
yoshi053:
insert "extract/mio0/00284958.mio0"; align(4)
yoshi054:
insert "extract/mio0/00284EF0.mio0"; align(4)
yoshi055:
insert "extract/mio0/0028548C.mio0"; align(4)
yoshi056:
insert "extract/mio0/00285A30.mio0"; align(4)
yoshi057:
insert "extract/mio0/00285FE8.mio0"; align(4)
yoshi058:
insert "extract/mio0/002865B0.mio0"; align(4)
yoshi059:
insert "extract/mio0/00286B98.mio0"; align(4)
yoshi060:
insert "extract/mio0/00287198.mio0"; align(4)
yoshi061:
insert "extract/mio0/002877BC.mio0"; align(4)
yoshi062:
insert "extract/mio0/00287DFC.mio0"; align(4)
yoshi063:
insert "extract/mio0/00288434.mio0"; align(4)
yoshi064:
insert "extract/mio0/00288940.mio0"; align(4)
yoshi065:
insert "extract/mio0/00288E4C.mio0"; align(4)
yoshi066:
insert "extract/mio0/00289360.mio0"; align(4)
yoshi067:
insert "extract/mio0/00289890.mio0"; align(4)
yoshi068:
insert "extract/mio0/00289DE0.mio0"; align(4)
yoshi069:
insert "extract/mio0/0028A330.mio0"; align(4)
yoshi070:
insert "extract/mio0/0028A888.mio0"; align(4)
yoshi071:
insert "extract/mio0/0028ADF4.mio0"; align(4)
yoshi072:
insert "extract/mio0/0028B374.mio0"; align(4)
yoshi073:
insert "extract/mio0/0028B910.mio0"; align(4)
yoshi074:
insert "extract/mio0/0028BEA4.mio0"; align(4)
yoshi075:
insert "extract/mio0/0028C430.mio0"; align(4)
yoshi076:
insert "extract/mio0/0028C9C8.mio0"; align(4)
yoshi077:
insert "extract/mio0/0028CF6C.mio0"; align(4)
yoshi078:
insert "extract/mio0/0028D524.mio0"; align(4)
yoshi079:
insert "extract/mio0/0028DAF4.mio0"; align(4)
yoshi080:
insert "extract/mio0/0028E0E4.mio0"; align(4)
yoshi081:
insert "extract/mio0/0028E6FC.mio0"; align(4)
yoshi082:
insert "extract/mio0/0028ED18.mio0"; align(4)
yoshi083:
insert "extract/mio0/0028F34C.mio0"; align(4)
yoshi084:
insert "extract/mio0/0028F994.mio0"; align(4)
yoshi085:
insert "extract/mio0/0028FEA8.mio0"; align(4)
yoshi086:
insert "extract/mio0/002903D4.mio0"; align(4)
yoshi087:
insert "extract/mio0/00290900.mio0"; align(4)
yoshi088:
insert "extract/mio0/00290E40.mio0"; align(4)
yoshi089:
insert "extract/mio0/0029139C.mio0"; align(4)
yoshi090:
insert "extract/mio0/00291910.mio0"; align(4)
yoshi091:
insert "extract/mio0/00291E70.mio0"; align(4)
yoshi092:
insert "extract/mio0/002923F0.mio0"; align(4)
yoshi093:
insert "extract/mio0/00292968.mio0"; align(4)
yoshi094:
insert "extract/mio0/00292ED0.mio0"; align(4)
yoshi095:
insert "extract/mio0/00293468.mio0"; align(4)
yoshi096:
insert "extract/mio0/00293A04.mio0"; align(4)
yoshi097:
insert "extract/mio0/00293F9C.mio0"; align(4)
yoshi098:
insert "extract/mio0/00294538.mio0"; align(4)
yoshi099:
insert "extract/mio0/00294AEC.mio0"; align(4)
yoshi100:
insert "extract/mio0/002950DC.mio0"; align(4)
yoshi101:
insert "extract/mio0/002956D8.mio0"; align(4)
yoshi102:
insert "extract/mio0/00295CF0.mio0"; align(4)
yoshi103:
insert "extract/mio0/00296320.mio0"; align(4)
yoshi104:
insert "extract/mio0/0029695C.mio0"; align(4)
yoshi105:
insert "extract/mio0/00296FB4.mio0"; align(4)
yoshi106:
insert "extract/mio0/002974F0.mio0"; align(4)
yoshi107:
insert "extract/mio0/00297A34.mio0"; align(4)
yoshi108:
insert "extract/mio0/00297F84.mio0"; align(4)
yoshi109:
insert "extract/mio0/002984D0.mio0"; align(4)
yoshi110:
insert "extract/mio0/00298A2C.mio0"; align(4)
yoshi111:
insert "extract/mio0/00298F9C.mio0"; align(4)
yoshi112:
insert "extract/mio0/00299524.mio0"; align(4)
yoshi113:
insert "extract/mio0/00299AA8.mio0"; align(4)
yoshi114:
insert "extract/mio0/0029A028.mio0"; align(4)
yoshi115:
insert "extract/mio0/0029A5A8.mio0"; align(4)
yoshi116:
insert "extract/mio0/0029AB4C.mio0"; align(4)
yoshi117:
insert "extract/mio0/0029B0E4.mio0"; align(4)
yoshi118:
insert "extract/mio0/0029B688.mio0"; align(4)
yoshi119:
insert "extract/mio0/0029BC34.mio0"; align(4)
yoshi120:
insert "extract/mio0/0029C1F4.mio0"; align(4)
yoshi121:
insert "extract/mio0/0029C7D0.mio0"; align(4)
yoshi122:
insert "extract/mio0/0029CDC0.mio0"; align(4)
yoshi123:
insert "extract/mio0/0029D3D8.mio0"; align(4)
yoshi124:
insert "extract/mio0/0029DA28.mio0"; align(4)
yoshi125:
insert "extract/mio0/0029E084.mio0"; align(4)
yoshi126:
insert "extract/mio0/0029E6F8.mio0"; align(4)
yoshi127:
insert "extract/mio0/0029EC40.mio0"; align(4)
yoshi128:
insert "extract/mio0/0029F18C.mio0"; align(4)
yoshi129:
insert "extract/mio0/0029F700.mio0"; align(4)
yoshi130:
insert "extract/mio0/0029FC7C.mio0"; align(4)
yoshi131:
insert "extract/mio0/002A0210.mio0"; align(4)
yoshi132:
insert "extract/mio0/002A0788.mio0"; align(4)
yoshi133:
insert "extract/mio0/002A0CFC.mio0"; align(4)
yoshi134:
insert "extract/mio0/002A1268.mio0"; align(4)
yoshi135:
insert "extract/mio0/002A17D8.mio0"; align(4)
yoshi136:
insert "extract/mio0/002A1D74.mio0"; align(4)
yoshi137:
insert "extract/mio0/002A2304.mio0"; align(4)
yoshi138:
insert "extract/mio0/002A2890.mio0"; align(4)
yoshi139:
insert "extract/mio0/002A2E28.mio0"; align(4)
yoshi140:
insert "extract/mio0/002A33D4.mio0"; align(4)
yoshi141:
insert "extract/mio0/002A3998.mio0"; align(4)
yoshi142:
insert "extract/mio0/002A3F70.mio0"; align(4)
yoshi143:
insert "extract/mio0/002A4564.mio0"; align(4)
yoshi144:
insert "extract/mio0/002A4B78.mio0"; align(4)
yoshi145:
insert "extract/mio0/002A51B0.mio0"; align(4)
yoshi146:
insert "extract/mio0/002A5814.mio0"; align(4)
yoshi147:
insert "extract/mio0/002A5E7C.mio0"; align(4)
yoshi148:
insert "extract/mio0/002A63DC.mio0"; align(4)
yoshi149:
insert "extract/mio0/002A6954.mio0"; align(4)
yoshi150:
insert "extract/mio0/002A6EE0.mio0"; align(4)
yoshi151:
insert "extract/mio0/002A7464.mio0"; align(4)
yoshi152:
insert "extract/mio0/002A79FC.mio0"; align(4)
yoshi153:
insert "extract/mio0/002A7F7C.mio0"; align(4)
yoshi154:
insert "extract/mio0/002A84F8.mio0"; align(4)
yoshi155:
insert "extract/mio0/002A8A90.mio0"; align(4)
yoshi156:
insert "extract/mio0/002A9028.mio0"; align(4)
yoshi157:
insert "extract/mio0/002A9598.mio0"; align(4)
yoshi158:
insert "extract/mio0/002A9B34.mio0"; align(4)
yoshi159:
insert "extract/mio0/002AA0C0.mio0"; align(4)
yoshi160:
insert "extract/mio0/002AA668.mio0"; align(4)
yoshi161:
insert "extract/mio0/002AAC14.mio0"; align(4)
yoshi162:
insert "extract/mio0/002AB1D0.mio0"; align(4)
yoshi163:
insert "extract/mio0/002AB7A4.mio0"; align(4)
yoshi164:
insert "extract/mio0/002ABD94.mio0"; align(4)
yoshi165:
insert "extract/mio0/002AC3AC.mio0"; align(4)
yoshi166:
insert "extract/mio0/002AC9F0.mio0"; align(4)
yoshi167:
insert "extract/mio0/002AD054.mio0"; align(4)
yoshi168:
insert "extract/mio0/002AD6CC.mio0"; align(4)
yoshi169:
insert "extract/mio0/002ADC40.mio0"; align(4)
yoshi170:
insert "extract/mio0/002AE1D4.mio0"; align(4)
yoshi171:
insert "extract/mio0/002AE778.mio0"; align(4)
yoshi172:
insert "extract/mio0/002AED10.mio0"; align(4)
yoshi173:
insert "extract/mio0/002AF2B0.mio0"; align(4)
yoshi174:
insert "extract/mio0/002AF850.mio0"; align(4)
yoshi175:
insert "extract/mio0/002AFDE4.mio0"; align(4)
yoshi176:
insert "extract/mio0/002B0358.mio0"; align(4)
yoshi177:
insert "extract/mio0/002B08E4.mio0"; align(4)
yoshi178:
insert "extract/mio0/002B0E74.mio0"; align(4)
yoshi179:
insert "extract/mio0/002B1410.mio0"; align(4)
yoshi180:
insert "extract/mio0/002B199C.mio0"; align(4)
yoshi181:
insert "extract/mio0/002B1F34.mio0"; align(4)
yoshi182:
insert "extract/mio0/002B24D8.mio0"; align(4)
yoshi183:
insert "extract/mio0/002B2A88.mio0"; align(4)
yoshi184:
insert "extract/mio0/002B306C.mio0"; align(4)
yoshi185:
insert "extract/mio0/002B3658.mio0"; align(4)
yoshi186:
insert "extract/mio0/002B3C84.mio0"; align(4)
yoshi187:
insert "extract/mio0/002B42E0.mio0"; align(4)
yoshi188:
insert "extract/mio0/002B4960.mio0"; align(4)
yoshi189:
insert "extract/mio0/002B4FD4.mio0"; align(4)
yoshi190:
insert "extract/mio0/002B54D4.mio0"; align(4)
yoshi191:
insert "extract/mio0/002B59F4.mio0"; align(4)
yoshi192:
insert "extract/mio0/002B5F64.mio0"; align(4)
yoshi193:
insert "extract/mio0/002B64F8.mio0"; align(4)
yoshi194:
insert "extract/mio0/002B6ABC.mio0"; align(4)
yoshi195:
insert "extract/mio0/002B70B4.mio0"; align(4)
yoshi196:
insert "extract/mio0/002B76D4.mio0"; align(4)
yoshi197:
insert "extract/mio0/002B7D20.mio0"; align(4)
yoshi198:
insert "extract/mio0/002B838C.mio0"; align(4)
yoshi199:
insert "extract/mio0/002B8A0C.mio0"; align(4)
yoshi200:
insert "extract/mio0/002B9094.mio0"; align(4)
yoshi201:
insert "extract/mio0/002B9738.mio0"; align(4)
yoshi202:
insert "extract/mio0/002B9DF4.mio0"; align(4)
yoshi203:
insert "extract/mio0/002BA494.mio0"; align(4)
yoshi204:
insert "extract/mio0/002BAB28.mio0"; align(4)
yoshi205:
insert "extract/mio0/002BB19C.mio0"; align(4)
yoshi206:
insert "extract/mio0/002BB7E0.mio0"; align(4)
yoshi207:
insert "extract/mio0/002BBDE4.mio0"; align(4)
yoshi208:
insert "extract/mio0/002BC3C4.mio0"; align(4)
yoshi209:
insert "extract/mio0/002BC97C.mio0"; align(4)
yoshi210:
insert "extract/mio0/002BCEA4.mio0"; align(4)
yoshi211:
insert "extract/mio0/002BD40C.mio0"; align(4)
yoshi212:
insert "extract/mio0/002BD9C0.mio0"; align(4)
yoshi213:
insert "extract/mio0/002BDF94.mio0"; align(4)
yoshi214:
insert "extract/mio0/002BE59C.mio0"; align(4)
yoshi215:
insert "extract/mio0/002BEBC4.mio0"; align(4)
yoshi216:
insert "extract/mio0/002BF218.mio0"; align(4)
yoshi217:
insert "extract/mio0/002BF860.mio0"; align(4)
yoshi218:
insert "extract/mio0/002BFED0.mio0"; align(4)
yoshi219:
insert "extract/mio0/002C054C.mio0"; align(4)
yoshi220:
insert "extract/mio0/002C0BCC.mio0"; align(4)
yoshi221:
insert "extract/mio0/002C125C.mio0"; align(4)
yoshi222:
insert "extract/mio0/002C18F4.mio0"; align(4)
yoshi223:
insert "extract/mio0/002C1F6C.mio0"; align(4)
yoshi224:
insert "extract/mio0/002C25B4.mio0"; align(4)
yoshi225:
insert "extract/mio0/002C2BE0.mio0"; align(4)
yoshi226:
insert "extract/mio0/002C31D8.mio0"; align(4)
yoshi227:
insert "extract/mio0/002C3798.mio0"; align(4)
yoshi228:
insert "extract/mio0/002C3D20.mio0"; align(4)
yoshi229:
insert "extract/mio0/002C4278.mio0"; align(4)
yoshi230:
insert "extract/mio0/002C47C4.mio0"; align(4)
yoshi231:
insert "extract/mio0/002C4D54.mio0"; align(4)
yoshi232:
insert "extract/mio0/002C5314.mio0"; align(4)
yoshi233:
insert "extract/mio0/002C591C.mio0"; align(4)
yoshi234:
insert "extract/mio0/002C5F28.mio0"; align(4)
yoshi235:
insert "extract/mio0/002C6554.mio0"; align(4)
yoshi236:
insert "extract/mio0/002C6BC0.mio0"; align(4)
yoshi237:
insert "extract/mio0/002C7234.mio0"; align(4)
yoshi238:
insert "extract/mio0/002C78B0.mio0"; align(4)
yoshi239:
insert "extract/mio0/002C7F34.mio0"; align(4)
yoshi240:
insert "extract/mio0/002C85B0.mio0"; align(4)
yoshi241:
insert "extract/mio0/002C8C3C.mio0"; align(4)
yoshi242:
insert "extract/mio0/002C92A0.mio0"; align(4)
yoshi243:
insert "extract/mio0/002C9900.mio0"; align(4)
yoshi244:
insert "extract/mio0/002C9F30.mio0"; align(4)
yoshi245:
insert "extract/mio0/002CA520.mio0"; align(4)
yoshi246:
insert "extract/mio0/002CAAF4.mio0"; align(4)
yoshi247:
insert "extract/mio0/002CB0A0.mio0"; align(4)
yoshi248:
insert "extract/mio0/002CB5F0.mio0"; align(4)
yoshi249:
insert "extract/mio0/002CBB04.mio0"; align(4)
yoshi250:
insert "extract/mio0/002CC07C.mio0"; align(4)
yoshi251:
insert "extract/mio0/002CC61C.mio0"; align(4)
yoshi252:
insert "extract/mio0/002CCBE8.mio0"; align(4)
yoshi253:
insert "extract/mio0/002CD1F8.mio0"; align(4)
yoshi254:
insert "extract/mio0/002CD820.mio0"; align(4)
yoshi255:
insert "extract/mio0/002CDE78.mio0"; align(4)
yoshi256:
insert "extract/mio0/002CE4EC.mio0"; align(4)
yoshi257:
insert "extract/mio0/002CEB70.mio0"; align(4)
yoshi258:
insert "extract/mio0/002CF200.mio0"; align(4)
yoshi259:
insert "extract/mio0/002CF88C.mio0"; align(4)
yoshi260:
insert "extract/mio0/002CFF20.mio0"; align(4)
yoshi261:
insert "extract/mio0/002D0584.mio0"; align(4)
yoshi262:
insert "extract/mio0/002D0BF4.mio0"; align(4)
yoshi263:
insert "extract/mio0/002D122C.mio0"; align(4)
yoshi264:
insert "extract/mio0/002D1814.mio0"; align(4)
yoshi265:
insert "extract/mio0/002D1DE4.mio0"; align(4)
yoshi266:
insert "extract/mio0/002D2358.mio0"; align(4)
yoshi267:
insert "extract/mio0/002D289C.mio0"; align(4)
yoshi268:
insert "extract/mio0/002D2DC8.mio0"; align(4)
yoshi269:
insert "extract/mio0/002D32B0.mio0"; align(4)
yoshi270:
insert "extract/mio0/002D3864.mio0"; align(4)
yoshi271:
insert "extract/mio0/002D3E38.mio0"; align(4)
yoshi272:
insert "extract/mio0/002D4434.mio0"; align(4)
yoshi273:
insert "extract/mio0/002D4A50.mio0"; align(4)
yoshi274:
insert "extract/mio0/002D50A4.mio0"; align(4)
yoshi275:
insert "extract/mio0/002D570C.mio0"; align(4)
yoshi276:
insert "extract/mio0/002D5DA0.mio0"; align(4)
yoshi277:
insert "extract/mio0/002D641C.mio0"; align(4)
yoshi278:
insert "extract/mio0/002D6A84.mio0"; align(4)
yoshi279:
insert "extract/mio0/002D7104.mio0"; align(4)
yoshi280:
insert "extract/mio0/002D776C.mio0"; align(4)
yoshi281:
insert "extract/mio0/002D7DBC.mio0"; align(4)
yoshi282:
insert "extract/mio0/002D83F8.mio0"; align(4)
yoshi283:
insert "extract/mio0/002D89F4.mio0"; align(4)
yoshi284:
insert "extract/mio0/002D8FC4.mio0"; align(4)
yoshi285:
insert "extract/mio0/002D9558.mio0"; align(4)
yoshi286:
insert "extract/mio0/002D9AA4.mio0"; align(4)
yoshi287:
insert "extract/mio0/002D9F98.mio0"; align(4)
yoshi288:
insert "extract/mio0/002DA464.mio0"; align(4)
yoshi289:
insert "extract/mio0/002DA8F0.mio0"; align(4)
yoshi290:
insert "extract/mio0/002DADE8.mio0"; align(4)
yoshi291:
insert "extract/mio0/002DB32C.mio0"; align(4)
yoshi292:
insert "extract/mio0/002DB8F4.mio0"; align(4)
yoshi293:
insert "extract/mio0/002DBF80.mio0"; align(4)
yoshi294:
insert "extract/mio0/002DC574.mio0"; align(4)
yoshi295:
insert "extract/mio0/002DCB78.mio0"; align(4)
yoshi296:
insert "extract/mio0/002DD13C.mio0"; align(4)
yoshi297:
insert "extract/mio0/002DD680.mio0"; align(4)
yoshi298:
insert "extract/mio0/002DDB3C.mio0"; align(4)
yoshi299:
insert "extract/mio0/002DE098.mio0"; align(4)
yoshi300:
insert "extract/mio0/002DE64C.mio0"; align(4)
yoshi301:
insert "extract/mio0/002DEC2C.mio0"; align(4)
yoshi302:
insert "extract/mio0/002DF1E0.mio0"; align(4)
yoshi303:
insert "extract/mio0/002DF788.mio0"; align(4)
yoshi304:
insert "extract/mio0/002DFD30.mio0"; align(4)
yoshi305:
insert "extract/mio0/002E0284.mio0"; align(4)
yoshi306:
insert "extract/mio0/002E06E4.mio0"; align(4)
yoshi307:
insert "extract/mio0/002E0C3C.mio0"; align(4)
yoshi308:
insert "extract/mio0/002E1250.mio0"; align(4)
yoshi309:
insert "extract/mio0/002E189C.mio0"; align(4)
yoshi310:
insert "extract/mio0/002E1E90.mio0"; align(4)
yoshi311:
insert "extract/mio0/002E24A4.mio0"; align(4)
yoshi312:
insert "extract/mio0/002E2A5C.mio0"; align(4)
yoshi313:
insert "extract/mio0/002E2F70.mio0"; align(4)
yoshi314:
insert "extract/mio0/002E3440.mio0"; align(4)
yoshi315:
insert "extract/mio0/002E39A0.mio0"; align(4)
yoshi316:
insert "extract/mio0/002E3F2C.mio0"; align(4)
yoshi317:
insert "extract/mio0/002E44E4.mio0"; align(4)
yoshi318:
insert "extract/mio0/002E4AAC.mio0"; align(4)
yoshi319:
insert "extract/mio0/002E5054.mio0"; align(4)
yoshi320:
insert "extract/mio0/002E5628.mio0"; align(4)
// 0F1A0758/2E5BC8: Yoshi wheel palettes
PalYoshi2E5BC8:
insert "extract/palettes/002E5BC8.bin"
PalYoshi2E85C8:
insert "extract/palettes/002E85C8.bin"
PalYoshi2EAFC8:
insert "extract/palettes/002EAFC8.bin"
PalYoshi2ED9C8:
insert "extract/palettes/002ED9C8.bin"
PalYoshi2F03C8:
insert "extract/palettes/002F03C8.bin"
PalYoshi2F2DC8:
insert "extract/palettes/002F2DC8.bin"
PalYoshi2F57C8:
insert "extract/palettes/002F57C8.bin"
PalYoshi2F81C8:
insert "extract/palettes/002F81C8.bin"
PalYoshi2FABC8:
insert "extract/palettes/002FABC8.bin"
PalYoshi2FD5C8:
insert "extract/palettes/002FD5C8.bin"
PalYoshi2FFDC8:
insert "extract/palettes/002FFDC8.bin"
PalYoshi3025C8:
insert "extract/palettes/003025C8.bin"
PalYoshi304DC8:
insert "extract/palettes/00304DC8.bin"
PalYoshi3075C8:
insert "extract/palettes/003075C8.bin"
// 0F1C4958/309DC8: Yoshi kart palette
PaletteYoshi:
insert "extract/palettes/00309DC8.bin"
align(0x10)

// 0F1C4AE0/309F50
peach000:
insert "extract/mio0/00309F50.mio0"; align(4)
peach001:
insert "extract/mio0/0030A430.mio0"; align(4)
peach002:
insert "extract/mio0/0030A930.mio0"; align(4)
peach003:
insert "extract/mio0/0030AE34.mio0"; align(4)
peach004:
insert "extract/mio0/0030B354.mio0"; align(4)
peach005:
insert "extract/mio0/0030B874.mio0"; align(4)
peach006:
insert "extract/mio0/0030BD94.mio0"; align(4)
peach007:
insert "extract/mio0/0030C2DC.mio0"; align(4)
peach008:
insert "extract/mio0/0030C834.mio0"; align(4)
peach009:
insert "extract/mio0/0030CD98.mio0"; align(4)
peach010:
insert "extract/mio0/0030D30C.mio0"; align(4)
peach011:
insert "extract/mio0/0030D87C.mio0"; align(4)
peach012:
insert "extract/mio0/0030DE04.mio0"; align(4)
peach013:
insert "extract/mio0/0030E388.mio0"; align(4)
peach014:
insert "extract/mio0/0030E910.mio0"; align(4)
peach015:
insert "extract/mio0/0030EE9C.mio0"; align(4)
peach016:
insert "extract/mio0/0030F424.mio0"; align(4)
peach017:
insert "extract/mio0/0030F9CC.mio0"; align(4)
peach018:
insert "extract/mio0/0030FF74.mio0"; align(4)
peach019:
insert "extract/mio0/00310518.mio0"; align(4)
peach020:
insert "extract/mio0/00310AD4.mio0"; align(4)
peach021:
insert "extract/mio0/00311090.mio0"; align(4)
peach022:
insert "extract/mio0/00311554.mio0"; align(4)
peach023:
insert "extract/mio0/00311A3C.mio0"; align(4)
peach024:
insert "extract/mio0/00311F28.mio0"; align(4)
peach025:
insert "extract/mio0/00312440.mio0"; align(4)
peach026:
insert "extract/mio0/0031296C.mio0"; align(4)
peach027:
insert "extract/mio0/00312E7C.mio0"; align(4)
peach028:
insert "extract/mio0/003133BC.mio0"; align(4)
peach029:
insert "extract/mio0/00313918.mio0"; align(4)
peach030:
insert "extract/mio0/00313E88.mio0"; align(4)
peach031:
insert "extract/mio0/00314400.mio0"; align(4)
peach032:
insert "extract/mio0/00314990.mio0"; align(4)
peach033:
insert "extract/mio0/00314F30.mio0"; align(4)
peach034:
insert "extract/mio0/003154CC.mio0"; align(4)
peach035:
insert "extract/mio0/00315A54.mio0"; align(4)
peach036:
insert "extract/mio0/00315FF0.mio0"; align(4)
peach037:
insert "extract/mio0/0031659C.mio0"; align(4)
peach038:
insert "extract/mio0/00316B5C.mio0"; align(4)
peach039:
insert "extract/mio0/00317114.mio0"; align(4)
peach040:
insert "extract/mio0/003176C4.mio0"; align(4)
peach041:
insert "extract/mio0/00317C84.mio0"; align(4)
peach042:
insert "extract/mio0/0031824C.mio0"; align(4)
peach043:
insert "extract/mio0/00318738.mio0"; align(4)
peach044:
insert "extract/mio0/00318C48.mio0"; align(4)
peach045:
insert "extract/mio0/00319154.mio0"; align(4)
peach046:
insert "extract/mio0/0031967C.mio0"; align(4)
peach047:
insert "extract/mio0/00319BA4.mio0"; align(4)
peach048:
insert "extract/mio0/0031A108.mio0"; align(4)
peach049:
insert "extract/mio0/0031A66C.mio0"; align(4)
peach050:
insert "extract/mio0/0031ABEC.mio0"; align(4)
peach051:
insert "extract/mio0/0031B164.mio0"; align(4)
peach052:
insert "extract/mio0/0031B6F0.mio0"; align(4)
peach053:
insert "extract/mio0/0031BC78.mio0"; align(4)
peach054:
insert "extract/mio0/0031C218.mio0"; align(4)
peach055:
insert "extract/mio0/0031C7C0.mio0"; align(4)
peach056:
insert "extract/mio0/0031CD6C.mio0"; align(4)
peach057:
insert "extract/mio0/0031D308.mio0"; align(4)
peach058:
insert "extract/mio0/0031D8C4.mio0"; align(4)
peach059:
insert "extract/mio0/0031DE74.mio0"; align(4)
peach060:
insert "extract/mio0/0031E440.mio0"; align(4)
peach061:
insert "extract/mio0/0031EA0C.mio0"; align(4)
peach062:
insert "extract/mio0/0031EFE4.mio0"; align(4)
peach063:
insert "extract/mio0/0031F5A0.mio0"; align(4)
peach064:
insert "extract/mio0/0031FA6C.mio0"; align(4)
peach065:
insert "extract/mio0/0031FF64.mio0"; align(4)
peach066:
insert "extract/mio0/00320474.mio0"; align(4)
peach067:
insert "extract/mio0/003209B4.mio0"; align(4)
peach068:
insert "extract/mio0/00320EE8.mio0"; align(4)
peach069:
insert "extract/mio0/00321450.mio0"; align(4)
peach070:
insert "extract/mio0/003219C4.mio0"; align(4)
peach071:
insert "extract/mio0/00321F30.mio0"; align(4)
peach072:
insert "extract/mio0/003224A4.mio0"; align(4)
peach073:
insert "extract/mio0/00322A38.mio0"; align(4)
peach074:
insert "extract/mio0/00322FD8.mio0"; align(4)
peach075:
insert "extract/mio0/0032356C.mio0"; align(4)
peach076:
insert "extract/mio0/00323B10.mio0"; align(4)
peach077:
insert "extract/mio0/003240BC.mio0"; align(4)
peach078:
insert "extract/mio0/00324668.mio0"; align(4)
peach079:
insert "extract/mio0/00324C4C.mio0"; align(4)
peach080:
insert "extract/mio0/0032520C.mio0"; align(4)
peach081:
insert "extract/mio0/003257DC.mio0"; align(4)
peach082:
insert "extract/mio0/00325DA4.mio0"; align(4)
peach083:
insert "extract/mio0/00326354.mio0"; align(4)
peach084:
insert "extract/mio0/00326930.mio0"; align(4)
peach085:
insert "extract/mio0/00326E20.mio0"; align(4)
peach086:
insert "extract/mio0/0032732C.mio0"; align(4)
peach087:
insert "extract/mio0/0032784C.mio0"; align(4)
peach088:
insert "extract/mio0/00327D94.mio0"; align(4)
peach089:
insert "extract/mio0/003282DC.mio0"; align(4)
peach090:
insert "extract/mio0/00328848.mio0"; align(4)
peach091:
insert "extract/mio0/00328DC8.mio0"; align(4)
peach092:
insert "extract/mio0/0032935C.mio0"; align(4)
peach093:
insert "extract/mio0/003298D4.mio0"; align(4)
peach094:
insert "extract/mio0/00329E74.mio0"; align(4)
peach095:
insert "extract/mio0/0032A420.mio0"; align(4)
peach096:
insert "extract/mio0/0032A9C4.mio0"; align(4)
peach097:
insert "extract/mio0/0032AF70.mio0"; align(4)
peach098:
insert "extract/mio0/0032B520.mio0"; align(4)
peach099:
insert "extract/mio0/0032BAD0.mio0"; align(4)
peach100:
insert "extract/mio0/0032C0A8.mio0"; align(4)
peach101:
insert "extract/mio0/0032C680.mio0"; align(4)
peach102:
insert "extract/mio0/0032CC70.mio0"; align(4)
peach103:
insert "extract/mio0/0032D240.mio0"; align(4)
peach104:
insert "extract/mio0/0032D7FC.mio0"; align(4)
peach105:
insert "extract/mio0/0032DDBC.mio0"; align(4)
peach106:
insert "extract/mio0/0032E2B0.mio0"; align(4)
peach107:
insert "extract/mio0/0032E7C8.mio0"; align(4)
peach108:
insert "extract/mio0/0032ECFC.mio0"; align(4)
peach109:
insert "extract/mio0/0032F254.mio0"; align(4)
peach110:
insert "extract/mio0/0032F7CC.mio0"; align(4)
peach111:
insert "extract/mio0/0032FD50.mio0"; align(4)
peach112:
insert "extract/mio0/003302E8.mio0"; align(4)
peach113:
insert "extract/mio0/00330874.mio0"; align(4)
peach114:
insert "extract/mio0/00330E1C.mio0"; align(4)
peach115:
insert "extract/mio0/003313C4.mio0"; align(4)
peach116:
insert "extract/mio0/00331970.mio0"; align(4)
peach117:
insert "extract/mio0/00331F10.mio0"; align(4)
peach118:
insert "extract/mio0/003324B8.mio0"; align(4)
peach119:
insert "extract/mio0/00332A64.mio0"; align(4)
peach120:
insert "extract/mio0/0033303C.mio0"; align(4)
peach121:
insert "extract/mio0/00333610.mio0"; align(4)
peach122:
insert "extract/mio0/00333BE8.mio0"; align(4)
peach123:
insert "extract/mio0/003341DC.mio0"; align(4)
peach124:
insert "extract/mio0/003347C8.mio0"; align(4)
peach125:
insert "extract/mio0/00334DAC.mio0"; align(4)
peach126:
insert "extract/mio0/00335388.mio0"; align(4)
peach127:
insert "extract/mio0/0033588C.mio0"; align(4)
peach128:
insert "extract/mio0/00335D94.mio0"; align(4)
peach129:
insert "extract/mio0/003362C4.mio0"; align(4)
peach130:
insert "extract/mio0/00336814.mio0"; align(4)
peach131:
insert "extract/mio0/00336D8C.mio0"; align(4)
peach132:
insert "extract/mio0/00337318.mio0"; align(4)
peach133:
insert "extract/mio0/003378AC.mio0"; align(4)
peach134:
insert "extract/mio0/00337E58.mio0"; align(4)
peach135:
insert "extract/mio0/00338400.mio0"; align(4)
peach136:
insert "extract/mio0/003389B0.mio0"; align(4)
peach137:
insert "extract/mio0/00338F50.mio0"; align(4)
peach138:
insert "extract/mio0/003394F4.mio0"; align(4)
peach139:
insert "extract/mio0/00339AA4.mio0"; align(4)
peach140:
insert "extract/mio0/0033A058.mio0"; align(4)
peach141:
insert "extract/mio0/0033A630.mio0"; align(4)
peach142:
insert "extract/mio0/0033AC18.mio0"; align(4)
peach143:
insert "extract/mio0/0033B208.mio0"; align(4)
peach144:
insert "extract/mio0/0033B7EC.mio0"; align(4)
peach145:
insert "extract/mio0/0033BDD4.mio0"; align(4)
peach146:
insert "extract/mio0/0033C3C0.mio0"; align(4)
peach147:
insert "extract/mio0/0033C990.mio0"; align(4)
peach148:
insert "extract/mio0/0033CE90.mio0"; align(4)
peach149:
insert "extract/mio0/0033D3C4.mio0"; align(4)
peach150:
insert "extract/mio0/0033D8EC.mio0"; align(4)
peach151:
insert "extract/mio0/0033DE54.mio0"; align(4)
peach152:
insert "extract/mio0/0033E3DC.mio0"; align(4)
peach153:
insert "extract/mio0/0033E984.mio0"; align(4)
peach154:
insert "extract/mio0/0033EF2C.mio0"; align(4)
peach155:
insert "extract/mio0/0033F4D8.mio0"; align(4)
peach156:
insert "extract/mio0/0033FA98.mio0"; align(4)
peach157:
insert "extract/mio0/0034004C.mio0"; align(4)
peach158:
insert "extract/mio0/00340610.mio0"; align(4)
peach159:
insert "extract/mio0/00340BC0.mio0"; align(4)
peach160:
insert "extract/mio0/00341198.mio0"; align(4)
peach161:
insert "extract/mio0/0034177C.mio0"; align(4)
peach162:
insert "extract/mio0/00341D50.mio0"; align(4)
peach163:
insert "extract/mio0/00342348.mio0"; align(4)
peach164:
insert "extract/mio0/00342930.mio0"; align(4)
peach165:
insert "extract/mio0/00342F18.mio0"; align(4)
peach166:
insert "extract/mio0/00343508.mio0"; align(4)
peach167:
insert "extract/mio0/00343AF0.mio0"; align(4)
peach168:
insert "extract/mio0/003440DC.mio0"; align(4)
peach169:
insert "extract/mio0/003445E0.mio0"; align(4)
peach170:
insert "extract/mio0/00344B08.mio0"; align(4)
peach171:
insert "extract/mio0/0034504C.mio0"; align(4)
peach172:
insert "extract/mio0/003455A8.mio0"; align(4)
peach173:
insert "extract/mio0/00345B2C.mio0"; align(4)
peach174:
insert "extract/mio0/003460D4.mio0"; align(4)
peach175:
insert "extract/mio0/00346698.mio0"; align(4)
peach176:
insert "extract/mio0/00346C64.mio0"; align(4)
peach177:
insert "extract/mio0/00347244.mio0"; align(4)
peach178:
insert "extract/mio0/00347810.mio0"; align(4)
peach179:
insert "extract/mio0/00347DF0.mio0"; align(4)
peach180:
insert "extract/mio0/003483D8.mio0"; align(4)
peach181:
insert "extract/mio0/003489B8.mio0"; align(4)
peach182:
insert "extract/mio0/00348F90.mio0"; align(4)
peach183:
insert "extract/mio0/00349590.mio0"; align(4)
peach184:
insert "extract/mio0/00349B9C.mio0"; align(4)
peach185:
insert "extract/mio0/0034A198.mio0"; align(4)
peach186:
insert "extract/mio0/0034A790.mio0"; align(4)
peach187:
insert "extract/mio0/0034AD78.mio0"; align(4)
peach188:
insert "extract/mio0/0034B374.mio0"; align(4)
peach189:
insert "extract/mio0/0034B960.mio0"; align(4)
peach190:
insert "extract/mio0/0034BE68.mio0"; align(4)
peach191:
insert "extract/mio0/0034C370.mio0"; align(4)
peach192:
insert "extract/mio0/0034C8A8.mio0"; align(4)
peach193:
insert "extract/mio0/0034CE1C.mio0"; align(4)
peach194:
insert "extract/mio0/0034D3A4.mio0"; align(4)
peach195:
insert "extract/mio0/0034D944.mio0"; align(4)
peach196:
insert "extract/mio0/0034DEF8.mio0"; align(4)
peach197:
insert "extract/mio0/0034E4D0.mio0"; align(4)
peach198:
insert "extract/mio0/0034EAA4.mio0"; align(4)
peach199:
insert "extract/mio0/0034F09C.mio0"; align(4)
peach200:
insert "extract/mio0/0034F6B4.mio0"; align(4)
peach201:
insert "extract/mio0/0034FCF0.mio0"; align(4)
peach202:
insert "extract/mio0/00350318.mio0"; align(4)
peach203:
insert "extract/mio0/00350928.mio0"; align(4)
peach204:
insert "extract/mio0/00350F28.mio0"; align(4)
peach205:
insert "extract/mio0/00351538.mio0"; align(4)
peach206:
insert "extract/mio0/00351B30.mio0"; align(4)
peach207:
insert "extract/mio0/0035211C.mio0"; align(4)
peach208:
insert "extract/mio0/00352720.mio0"; align(4)
peach209:
insert "extract/mio0/00352CF4.mio0"; align(4)
peach210:
insert "extract/mio0/003531F4.mio0"; align(4)
peach211:
insert "extract/mio0/00353724.mio0"; align(4)
peach212:
insert "extract/mio0/00353C90.mio0"; align(4)
peach213:
insert "extract/mio0/00354218.mio0"; align(4)
peach214:
insert "extract/mio0/003547A0.mio0"; align(4)
peach215:
insert "extract/mio0/00354D48.mio0"; align(4)
peach216:
insert "extract/mio0/0035530C.mio0"; align(4)
peach217:
insert "extract/mio0/003558CC.mio0"; align(4)
peach218:
insert "extract/mio0/00355EB0.mio0"; align(4)
peach219:
insert "extract/mio0/00356494.mio0"; align(4)
peach220:
insert "extract/mio0/00356A88.mio0"; align(4)
peach221:
insert "extract/mio0/0035708C.mio0"; align(4)
peach222:
insert "extract/mio0/0035766C.mio0"; align(4)
peach223:
insert "extract/mio0/00357C54.mio0"; align(4)
peach224:
insert "extract/mio0/0035822C.mio0"; align(4)
peach225:
insert "extract/mio0/0035881C.mio0"; align(4)
peach226:
insert "extract/mio0/00358DF4.mio0"; align(4)
peach227:
insert "extract/mio0/003593AC.mio0"; align(4)
peach228:
insert "extract/mio0/00359968.mio0"; align(4)
peach229:
insert "extract/mio0/00359F04.mio0"; align(4)
peach230:
insert "extract/mio0/0035A424.mio0"; align(4)
peach231:
insert "extract/mio0/0035A964.mio0"; align(4)
peach232:
insert "extract/mio0/0035AEEC.mio0"; align(4)
peach233:
insert "extract/mio0/0035B47C.mio0"; align(4)
peach234:
insert "extract/mio0/0035BA40.mio0"; align(4)
peach235:
insert "extract/mio0/0035BFF8.mio0"; align(4)
peach236:
insert "extract/mio0/0035C5B8.mio0"; align(4)
peach237:
insert "extract/mio0/0035CB7C.mio0"; align(4)
peach238:
insert "extract/mio0/0035D164.mio0"; align(4)
peach239:
insert "extract/mio0/0035D750.mio0"; align(4)
peach240:
insert "extract/mio0/0035DD48.mio0"; align(4)
peach241:
insert "extract/mio0/0035E334.mio0"; align(4)
peach242:
insert "extract/mio0/0035E914.mio0"; align(4)
peach243:
insert "extract/mio0/0035EEE0.mio0"; align(4)
peach244:
insert "extract/mio0/0035F498.mio0"; align(4)
peach245:
insert "extract/mio0/0035FA68.mio0"; align(4)
peach246:
insert "extract/mio0/00360024.mio0"; align(4)
peach247:
insert "extract/mio0/003605C0.mio0"; align(4)
peach248:
insert "extract/mio0/00360B30.mio0"; align(4)
peach249:
insert "extract/mio0/00361088.mio0"; align(4)
peach250:
insert "extract/mio0/003615A8.mio0"; align(4)
peach251:
insert "extract/mio0/00361AF4.mio0"; align(4)
peach252:
insert "extract/mio0/00362068.mio0"; align(4)
peach253:
insert "extract/mio0/003625FC.mio0"; align(4)
peach254:
insert "extract/mio0/00362BB0.mio0"; align(4)
peach255:
insert "extract/mio0/00363170.mio0"; align(4)
peach256:
insert "extract/mio0/0036373C.mio0"; align(4)
peach257:
insert "extract/mio0/00363D2C.mio0"; align(4)
peach258:
insert "extract/mio0/00364328.mio0"; align(4)
peach259:
insert "extract/mio0/0036491C.mio0"; align(4)
peach260:
insert "extract/mio0/00364F04.mio0"; align(4)
peach261:
insert "extract/mio0/003654F0.mio0"; align(4)
peach262:
insert "extract/mio0/00365AAC.mio0"; align(4)
peach263:
insert "extract/mio0/00366060.mio0"; align(4)
peach264:
insert "extract/mio0/003665E8.mio0"; align(4)
peach265:
insert "extract/mio0/00366B8C.mio0"; align(4)
peach266:
insert "extract/mio0/00367110.mio0"; align(4)
peach267:
insert "extract/mio0/00367668.mio0"; align(4)
peach268:
insert "extract/mio0/00367B9C.mio0"; align(4)
peach269:
insert "extract/mio0/003680C8.mio0"; align(4)
peach270:
insert "extract/mio0/003685F8.mio0"; align(4)
peach271:
insert "extract/mio0/00368B54.mio0"; align(4)
peach272:
insert "extract/mio0/003690E0.mio0"; align(4)
peach273:
insert "extract/mio0/0036967C.mio0"; align(4)
peach274:
insert "extract/mio0/00369C20.mio0"; align(4)
peach275:
insert "extract/mio0/0036A1F4.mio0"; align(4)
peach276:
insert "extract/mio0/0036A7D4.mio0"; align(4)
peach277:
insert "extract/mio0/0036ADAC.mio0"; align(4)
peach278:
insert "extract/mio0/0036B3A0.mio0"; align(4)
peach279:
insert "extract/mio0/0036B980.mio0"; align(4)
peach280:
insert "extract/mio0/0036BF70.mio0"; align(4)
peach281:
insert "extract/mio0/0036C524.mio0"; align(4)
peach282:
insert "extract/mio0/0036CABC.mio0"; align(4)
peach283:
insert "extract/mio0/0036D050.mio0"; align(4)
peach284:
insert "extract/mio0/0036D5E4.mio0"; align(4)
peach285:
insert "extract/mio0/0036DB50.mio0"; align(4)
peach286:
insert "extract/mio0/0036E094.mio0"; align(4)
peach287:
insert "extract/mio0/0036E5B8.mio0"; align(4)
peach288:
insert "extract/mio0/0036EAB4.mio0"; align(4)
peach289:
insert "extract/mio0/0036EF90.mio0"; align(4)
peach290:
insert "extract/mio0/0036F420.mio0"; align(4)
peach291:
insert "extract/mio0/0036F908.mio0"; align(4)
peach292:
insert "extract/mio0/0036FE98.mio0"; align(4)
peach293:
insert "extract/mio0/003704FC.mio0"; align(4)
peach294:
insert "extract/mio0/00370B30.mio0"; align(4)
peach295:
insert "extract/mio0/00371168.mio0"; align(4)
peach296:
insert "extract/mio0/003716CC.mio0"; align(4)
peach297:
insert "extract/mio0/00371BCC.mio0"; align(4)
peach298:
insert "extract/mio0/003720A0.mio0"; align(4)
peach299:
insert "extract/mio0/00372628.mio0"; align(4)
peach300:
insert "extract/mio0/00372BD0.mio0"; align(4)
peach301:
insert "extract/mio0/0037317C.mio0"; align(4)
peach302:
insert "extract/mio0/003736EC.mio0"; align(4)
peach303:
insert "extract/mio0/00373C0C.mio0"; align(4)
peach304:
insert "extract/mio0/003740EC.mio0"; align(4)
peach305:
insert "extract/mio0/003745E4.mio0"; align(4)
peach306:
insert "extract/mio0/00374A84.mio0"; align(4)
peach307:
insert "extract/mio0/00375020.mio0"; align(4)
peach308:
insert "extract/mio0/0037567C.mio0"; align(4)
peach309:
insert "extract/mio0/00375D04.mio0"; align(4)
peach310:
insert "extract/mio0/003762F4.mio0"; align(4)
peach311:
insert "extract/mio0/003768D4.mio0"; align(4)
peach312:
insert "extract/mio0/00376E18.mio0"; align(4)
peach313:
insert "extract/mio0/003772D8.mio0"; align(4)
peach314:
insert "extract/mio0/003777AC.mio0"; align(4)
peach315:
insert "extract/mio0/00377D18.mio0"; align(4)
peach316:
insert "extract/mio0/003782DC.mio0"; align(4)
peach317:
insert "extract/mio0/0037886C.mio0"; align(4)
peach318:
insert "extract/mio0/00378DF0.mio0"; align(4)
peach319:
insert "extract/mio0/00379350.mio0"; align(4)
peach320:
insert "extract/mio0/00379864.mio0"; align(4)
// 0F2348C8/379D38: Peach wheel palettes
PalPeach379D38:
insert "extract/palettes/00379D38.bin"
PalPeach37C738:
insert "extract/palettes/0037C738.bin"
PalPeach37F138:
insert "extract/palettes/0037F138.bin"
PalPeach381B38:
insert "extract/palettes/00381B38.bin"
PalPeach384538:
insert "extract/palettes/00384538.bin"
PalPeach386F38:
insert "extract/palettes/00386F38.bin"
PalPeach389938:
insert "extract/palettes/00389938.bin"
PalPeach38C338:
insert "extract/palettes/0038C338.bin"
PalPeach38ED38:
insert "extract/palettes/0038ED38.bin"
PalPeach391738:
insert "extract/palettes/00391738.bin"
PalPeach393F38:
insert "extract/palettes/00393F38.bin"
PalPeach396738:
insert "extract/palettes/00396738.bin"
PalPeach398F38:
insert "extract/palettes/00398F38.bin"
PalPeach39B738:
insert "extract/palettes/0039B738.bin"
// 0F258AC8/39DF38: Peach kart palette
PalettePeach:
insert "extract/palettes/0039DF38.bin"
align(0x10)

// 0F258C50/39E0C0
wario000:
insert "extract/mio0/0039E0C0.mio0"; align(4)
wario001:
insert "extract/mio0/0039E60C.mio0"; align(4)
wario002:
insert "extract/mio0/0039EB74.mio0"; align(4)
wario003:
insert "extract/mio0/0039F0C4.mio0"; align(4)
wario004:
insert "extract/mio0/0039F618.mio0"; align(4)
wario005:
insert "extract/mio0/0039FBA0.mio0"; align(4)
wario006:
insert "extract/mio0/003A0120.mio0"; align(4)
wario007:
insert "extract/mio0/003A06CC.mio0"; align(4)
wario008:
insert "extract/mio0/003A0C70.mio0"; align(4)
wario009:
insert "extract/mio0/003A1224.mio0"; align(4)
wario010:
insert "extract/mio0/003A17E4.mio0"; align(4)
wario011:
insert "extract/mio0/003A1DB4.mio0"; align(4)
wario012:
insert "extract/mio0/003A238C.mio0"; align(4)
wario013:
insert "extract/mio0/003A2980.mio0"; align(4)
wario014:
insert "extract/mio0/003A2F78.mio0"; align(4)
wario015:
insert "extract/mio0/003A3570.mio0"; align(4)
wario016:
insert "extract/mio0/003A3B80.mio0"; align(4)
wario017:
insert "extract/mio0/003A41A8.mio0"; align(4)
wario018:
insert "extract/mio0/003A47B8.mio0"; align(4)
wario019:
insert "extract/mio0/003A4DE4.mio0"; align(4)
wario020:
insert "extract/mio0/003A5410.mio0"; align(4)
wario021:
insert "extract/mio0/003A5A34.mio0"; align(4)
wario022:
insert "extract/mio0/003A5F80.mio0"; align(4)
wario023:
insert "extract/mio0/003A64F0.mio0"; align(4)
wario024:
insert "extract/mio0/003A6A78.mio0"; align(4)
wario025:
insert "extract/mio0/003A7010.mio0"; align(4)
wario026:
insert "extract/mio0/003A7588.mio0"; align(4)
wario027:
insert "extract/mio0/003A7B20.mio0"; align(4)
wario028:
insert "extract/mio0/003A80BC.mio0"; align(4)
wario029:
insert "extract/mio0/003A867C.mio0"; align(4)
wario030:
insert "extract/mio0/003A8C38.mio0"; align(4)
wario031:
insert "extract/mio0/003A9220.mio0"; align(4)
wario032:
insert "extract/mio0/003A9800.mio0"; align(4)
wario033:
insert "extract/mio0/003A9DD8.mio0"; align(4)
wario034:
insert "extract/mio0/003AA3DC.mio0"; align(4)
wario035:
insert "extract/mio0/003AA9F4.mio0"; align(4)
wario036:
insert "extract/mio0/003AB000.mio0"; align(4)
wario037:
insert "extract/mio0/003AB608.mio0"; align(4)
wario038:
insert "extract/mio0/003ABC34.mio0"; align(4)
wario039:
insert "extract/mio0/003AC258.mio0"; align(4)
wario040:
insert "extract/mio0/003AC87C.mio0"; align(4)
wario041:
insert "extract/mio0/003ACEB4.mio0"; align(4)
wario042:
insert "extract/mio0/003AD508.mio0"; align(4)
wario043:
insert "extract/mio0/003ADA78.mio0"; align(4)
wario044:
insert "extract/mio0/003ADFF4.mio0"; align(4)
wario045:
insert "extract/mio0/003AE584.mio0"; align(4)
wario046:
insert "extract/mio0/003AEB1C.mio0"; align(4)
wario047:
insert "extract/mio0/003AF0B0.mio0"; align(4)
wario048:
insert "extract/mio0/003AF648.mio0"; align(4)
wario049:
insert "extract/mio0/003AFC08.mio0"; align(4)
wario050:
insert "extract/mio0/003B01E8.mio0"; align(4)
wario051:
insert "extract/mio0/003B07BC.mio0"; align(4)
wario052:
insert "extract/mio0/003B0DAC.mio0"; align(4)
wario053:
insert "extract/mio0/003B1388.mio0"; align(4)
wario054:
insert "extract/mio0/003B197C.mio0"; align(4)
wario055:
insert "extract/mio0/003B1F70.mio0"; align(4)
wario056:
insert "extract/mio0/003B257C.mio0"; align(4)
wario057:
insert "extract/mio0/003B2B94.mio0"; align(4)
wario058:
insert "extract/mio0/003B31C8.mio0"; align(4)
wario059:
insert "extract/mio0/003B37F0.mio0"; align(4)
wario060:
insert "extract/mio0/003B3E20.mio0"; align(4)
wario061:
insert "extract/mio0/003B4460.mio0"; align(4)
wario062:
insert "extract/mio0/003B4AA8.mio0"; align(4)
wario063:
insert "extract/mio0/003B50F4.mio0"; align(4)
wario064:
insert "extract/mio0/003B5660.mio0"; align(4)
wario065:
insert "extract/mio0/003B5BF8.mio0"; align(4)
wario066:
insert "extract/mio0/003B6194.mio0"; align(4)
wario067:
insert "extract/mio0/003B6730.mio0"; align(4)
wario068:
insert "extract/mio0/003B6CD0.mio0"; align(4)
wario069:
insert "extract/mio0/003B728C.mio0"; align(4)
wario070:
insert "extract/mio0/003B7844.mio0"; align(4)
wario071:
insert "extract/mio0/003B7E18.mio0"; align(4)
wario072:
insert "extract/mio0/003B8410.mio0"; align(4)
wario073:
insert "extract/mio0/003B8A04.mio0"; align(4)
wario074:
insert "extract/mio0/003B9010.mio0"; align(4)
wario075:
insert "extract/mio0/003B9608.mio0"; align(4)
wario076:
insert "extract/mio0/003B9C1C.mio0"; align(4)
wario077:
insert "extract/mio0/003BA214.mio0"; align(4)
wario078:
insert "extract/mio0/003BA828.mio0"; align(4)
wario079:
insert "extract/mio0/003BAE58.mio0"; align(4)
wario080:
insert "extract/mio0/003BB484.mio0"; align(4)
wario081:
insert "extract/mio0/003BBAB8.mio0"; align(4)
wario082:
insert "extract/mio0/003BC0F8.mio0"; align(4)
wario083:
insert "extract/mio0/003BC73C.mio0"; align(4)
wario084:
insert "extract/mio0/003BCD94.mio0"; align(4)
wario085:
insert "extract/mio0/003BD31C.mio0"; align(4)
wario086:
insert "extract/mio0/003BD8A4.mio0"; align(4)
wario087:
insert "extract/mio0/003BDE2C.mio0"; align(4)
wario088:
insert "extract/mio0/003BE3F0.mio0"; align(4)
wario089:
insert "extract/mio0/003BE9A0.mio0"; align(4)
wario090:
insert "extract/mio0/003BEF5C.mio0"; align(4)
wario091:
insert "extract/mio0/003BF534.mio0"; align(4)
wario092:
insert "extract/mio0/003BFB24.mio0"; align(4)
wario093:
insert "extract/mio0/003C0108.mio0"; align(4)
wario094:
insert "extract/mio0/003C06EC.mio0"; align(4)
wario095:
insert "extract/mio0/003C0CD8.mio0"; align(4)
wario096:
insert "extract/mio0/003C12E4.mio0"; align(4)
wario097:
insert "extract/mio0/003C18E4.mio0"; align(4)
wario098:
insert "extract/mio0/003C1EE8.mio0"; align(4)
wario099:
insert "extract/mio0/003C24F0.mio0"; align(4)
wario100:
insert "extract/mio0/003C2B24.mio0"; align(4)
wario101:
insert "extract/mio0/003C3160.mio0"; align(4)
wario102:
insert "extract/mio0/003C37A0.mio0"; align(4)
wario103:
insert "extract/mio0/003C3DE8.mio0"; align(4)
wario104:
insert "extract/mio0/003C4440.mio0"; align(4)
wario105:
insert "extract/mio0/003C4AA8.mio0"; align(4)
wario106:
insert "extract/mio0/003C5038.mio0"; align(4)
wario107:
insert "extract/mio0/003C55DC.mio0"; align(4)
wario108:
insert "extract/mio0/003C5B64.mio0"; align(4)
wario109:
insert "extract/mio0/003C6110.mio0"; align(4)
wario110:
insert "extract/mio0/003C66D8.mio0"; align(4)
wario111:
insert "extract/mio0/003C6CAC.mio0"; align(4)
wario112:
insert "extract/mio0/003C7294.mio0"; align(4)
wario113:
insert "extract/mio0/003C7878.mio0"; align(4)
wario114:
insert "extract/mio0/003C7E68.mio0"; align(4)
wario115:
insert "extract/mio0/003C846C.mio0"; align(4)
wario116:
insert "extract/mio0/003C8A68.mio0"; align(4)
wario117:
insert "extract/mio0/003C9070.mio0"; align(4)
wario118:
insert "extract/mio0/003C967C.mio0"; align(4)
wario119:
insert "extract/mio0/003C9C84.mio0"; align(4)
wario120:
insert "extract/mio0/003CA2A8.mio0"; align(4)
wario121:
insert "extract/mio0/003CA8E0.mio0"; align(4)
wario122:
insert "extract/mio0/003CAF28.mio0"; align(4)
wario123:
insert "extract/mio0/003CB584.mio0"; align(4)
wario124:
insert "extract/mio0/003CBBE8.mio0"; align(4)
wario125:
insert "extract/mio0/003CC250.mio0"; align(4)
wario126:
insert "extract/mio0/003CC8CC.mio0"; align(4)
wario127:
insert "extract/mio0/003CCE5C.mio0"; align(4)
wario128:
insert "extract/mio0/003CD3F8.mio0"; align(4)
wario129:
insert "extract/mio0/003CD9B4.mio0"; align(4)
wario130:
insert "extract/mio0/003CDF78.mio0"; align(4)
wario131:
insert "extract/mio0/003CE534.mio0"; align(4)
wario132:
insert "extract/mio0/003CEB00.mio0"; align(4)
wario133:
insert "extract/mio0/003CF0E4.mio0"; align(4)
wario134:
insert "extract/mio0/003CF6D8.mio0"; align(4)
wario135:
insert "extract/mio0/003CFCCC.mio0"; align(4)
wario136:
insert "extract/mio0/003D02B0.mio0"; align(4)
wario137:
insert "extract/mio0/003D08B0.mio0"; align(4)
wario138:
insert "extract/mio0/003D0EB8.mio0"; align(4)
wario139:
insert "extract/mio0/003D14B4.mio0"; align(4)
wario140:
insert "extract/mio0/003D1ABC.mio0"; align(4)
wario141:
insert "extract/mio0/003D20F8.mio0"; align(4)
wario142:
insert "extract/mio0/003D2730.mio0"; align(4)
wario143:
insert "extract/mio0/003D2D80.mio0"; align(4)
wario144:
insert "extract/mio0/003D33CC.mio0"; align(4)
wario145:
insert "extract/mio0/003D3A24.mio0"; align(4)
wario146:
insert "extract/mio0/003D4084.mio0"; align(4)
wario147:
insert "extract/mio0/003D4714.mio0"; align(4)
wario148:
insert "extract/mio0/003D4C98.mio0"; align(4)
wario149:
insert "extract/mio0/003D5258.mio0"; align(4)
wario150:
insert "extract/mio0/003D57FC.mio0"; align(4)
wario151:
insert "extract/mio0/003D5DC8.mio0"; align(4)
wario152:
insert "extract/mio0/003D6390.mio0"; align(4)
wario153:
insert "extract/mio0/003D6950.mio0"; align(4)
wario154:
insert "extract/mio0/003D6F34.mio0"; align(4)
wario155:
insert "extract/mio0/003D7524.mio0"; align(4)
wario156:
insert "extract/mio0/003D7B24.mio0"; align(4)
wario157:
insert "extract/mio0/003D8110.mio0"; align(4)
wario158:
insert "extract/mio0/003D872C.mio0"; align(4)
wario159:
insert "extract/mio0/003D8D3C.mio0"; align(4)
wario160:
insert "extract/mio0/003D9344.mio0"; align(4)
wario161:
insert "extract/mio0/003D994C.mio0"; align(4)
wario162:
insert "extract/mio0/003D9F70.mio0"; align(4)
wario163:
insert "extract/mio0/003DA5C0.mio0"; align(4)
wario164:
insert "extract/mio0/003DAC18.mio0"; align(4)
wario165:
insert "extract/mio0/003DB284.mio0"; align(4)
wario166:
insert "extract/mio0/003DB8FC.mio0"; align(4)
wario167:
insert "extract/mio0/003DBF88.mio0"; align(4)
wario168:
insert "extract/mio0/003DC608.mio0"; align(4)
wario169:
insert "extract/mio0/003DCBAC.mio0"; align(4)
wario170:
insert "extract/mio0/003DD16C.mio0"; align(4)
wario171:
insert "extract/mio0/003DD710.mio0"; align(4)
wario172:
insert "extract/mio0/003DDCE8.mio0"; align(4)
wario173:
insert "extract/mio0/003DE2B0.mio0"; align(4)
wario174:
insert "extract/mio0/003DE874.mio0"; align(4)
wario175:
insert "extract/mio0/003DEE48.mio0"; align(4)
wario176:
insert "extract/mio0/003DF434.mio0"; align(4)
wario177:
insert "extract/mio0/003DFA38.mio0"; align(4)
wario178:
insert "extract/mio0/003E0034.mio0"; align(4)
wario179:
insert "extract/mio0/003E0650.mio0"; align(4)
wario180:
insert "extract/mio0/003E0C64.mio0"; align(4)
wario181:
insert "extract/mio0/003E1264.mio0"; align(4)
wario182:
insert "extract/mio0/003E1878.mio0"; align(4)
wario183:
insert "extract/mio0/003E1EAC.mio0"; align(4)
wario184:
insert "extract/mio0/003E24E0.mio0"; align(4)
wario185:
insert "extract/mio0/003E2B34.mio0"; align(4)
wario186:
insert "extract/mio0/003E31A4.mio0"; align(4)
wario187:
insert "extract/mio0/003E3810.mio0"; align(4)
wario188:
insert "extract/mio0/003E3EA8.mio0"; align(4)
wario189:
insert "extract/mio0/003E453C.mio0"; align(4)
wario190:
insert "extract/mio0/003E4A98.mio0"; align(4)
wario191:
insert "extract/mio0/003E5030.mio0"; align(4)
wario192:
insert "extract/mio0/003E55E8.mio0"; align(4)
wario193:
insert "extract/mio0/003E5BCC.mio0"; align(4)
wario194:
insert "extract/mio0/003E61B4.mio0"; align(4)
wario195:
insert "extract/mio0/003E67C8.mio0"; align(4)
wario196:
insert "extract/mio0/003E6E00.mio0"; align(4)
wario197:
insert "extract/mio0/003E7448.mio0"; align(4)
wario198:
insert "extract/mio0/003E7A98.mio0"; align(4)
wario199:
insert "extract/mio0/003E811C.mio0"; align(4)
wario200:
insert "extract/mio0/003E87A4.mio0"; align(4)
wario201:
insert "extract/mio0/003E8E60.mio0"; align(4)
wario202:
insert "extract/mio0/003E9520.mio0"; align(4)
wario203:
insert "extract/mio0/003E9BBC.mio0"; align(4)
wario204:
insert "extract/mio0/003EA268.mio0"; align(4)
wario205:
insert "extract/mio0/003EA928.mio0"; align(4)
wario206:
insert "extract/mio0/003EAFC8.mio0"; align(4)
wario207:
insert "extract/mio0/003EB66C.mio0"; align(4)
wario208:
insert "extract/mio0/003EBD0C.mio0"; align(4)
wario209:
insert "extract/mio0/003EC398.mio0"; align(4)
wario210:
insert "extract/mio0/003EC924.mio0"; align(4)
wario211:
insert "extract/mio0/003ECED4.mio0"; align(4)
wario212:
insert "extract/mio0/003ED4B8.mio0"; align(4)
wario213:
insert "extract/mio0/003EDAB8.mio0"; align(4)
wario214:
insert "extract/mio0/003EE0E0.mio0"; align(4)
wario215:
insert "extract/mio0/003EE71C.mio0"; align(4)
wario216:
insert "extract/mio0/003EED70.mio0"; align(4)
wario217:
insert "extract/mio0/003EF3CC.mio0"; align(4)
wario218:
insert "extract/mio0/003EFA24.mio0"; align(4)
wario219:
insert "extract/mio0/003F00A4.mio0"; align(4)
wario220:
insert "extract/mio0/003F070C.mio0"; align(4)
wario221:
insert "extract/mio0/003F0D98.mio0"; align(4)
wario222:
insert "extract/mio0/003F1410.mio0"; align(4)
wario223:
insert "extract/mio0/003F1A8C.mio0"; align(4)
wario224:
insert "extract/mio0/003F20F8.mio0"; align(4)
wario225:
insert "extract/mio0/003F2770.mio0"; align(4)
wario226:
insert "extract/mio0/003F2DCC.mio0"; align(4)
wario227:
insert "extract/mio0/003F3420.mio0"; align(4)
wario228:
insert "extract/mio0/003F3A6C.mio0"; align(4)
wario229:
insert "extract/mio0/003F40D4.mio0"; align(4)
wario230:
insert "extract/mio0/003F466C.mio0"; align(4)
wario231:
insert "extract/mio0/003F4C24.mio0"; align(4)
wario232:
insert "extract/mio0/003F5208.mio0"; align(4)
wario233:
insert "extract/mio0/003F5824.mio0"; align(4)
wario234:
insert "extract/mio0/003F5E58.mio0"; align(4)
wario235:
insert "extract/mio0/003F64A8.mio0"; align(4)
wario236:
insert "extract/mio0/003F6B24.mio0"; align(4)
wario237:
insert "extract/mio0/003F7194.mio0"; align(4)
wario238:
insert "extract/mio0/003F7808.mio0"; align(4)
wario239:
insert "extract/mio0/003F7E68.mio0"; align(4)
wario240:
insert "extract/mio0/003F84D0.mio0"; align(4)
wario241:
insert "extract/mio0/003F8B40.mio0"; align(4)
wario242:
insert "extract/mio0/003F91AC.mio0"; align(4)
wario243:
insert "extract/mio0/003F9808.mio0"; align(4)
wario244:
insert "extract/mio0/003F9E50.mio0"; align(4)
wario245:
insert "extract/mio0/003FA490.mio0"; align(4)
wario246:
insert "extract/mio0/003FAAD4.mio0"; align(4)
wario247:
insert "extract/mio0/003FB10C.mio0"; align(4)
wario248:
insert "extract/mio0/003FB720.mio0"; align(4)
wario249:
insert "extract/mio0/003FBD28.mio0"; align(4)
wario250:
insert "extract/mio0/003FC2DC.mio0"; align(4)
wario251:
insert "extract/mio0/003FC8BC.mio0"; align(4)
wario252:
insert "extract/mio0/003FCEB0.mio0"; align(4)
wario253:
insert "extract/mio0/003FD4D4.mio0"; align(4)
wario254:
insert "extract/mio0/003FDB24.mio0"; align(4)
wario255:
insert "extract/mio0/003FE194.mio0"; align(4)
wario256:
insert "extract/mio0/003FE808.mio0"; align(4)
wario257:
insert "extract/mio0/003FEE90.mio0"; align(4)
wario258:
insert "extract/mio0/003FF520.mio0"; align(4)
wario259:
insert "extract/mio0/003FFB84.mio0"; align(4)
wario260:
insert "extract/mio0/004001E0.mio0"; align(4)
wario261:
insert "extract/mio0/0040083C.mio0"; align(4)
wario262:
insert "extract/mio0/00400E70.mio0"; align(4)
wario263:
insert "extract/mio0/00401494.mio0"; align(4)
wario264:
insert "extract/mio0/00401AA8.mio0"; align(4)
wario265:
insert "extract/mio0/004020C4.mio0"; align(4)
wario266:
insert "extract/mio0/004026D0.mio0"; align(4)
wario267:
insert "extract/mio0/00402CD8.mio0"; align(4)
wario268:
insert "extract/mio0/004032B8.mio0"; align(4)
wario269:
insert "extract/mio0/00403890.mio0"; align(4)
wario270:
insert "extract/mio0/00403E50.mio0"; align(4)
wario271:
insert "extract/mio0/00404428.mio0"; align(4)
wario272:
insert "extract/mio0/00404A44.mio0"; align(4)
wario273:
insert "extract/mio0/00405094.mio0"; align(4)
wario274:
insert "extract/mio0/004056F0.mio0"; align(4)
wario275:
insert "extract/mio0/00405D6C.mio0"; align(4)
wario276:
insert "extract/mio0/00406414.mio0"; align(4)
wario277:
insert "extract/mio0/00406AA8.mio0"; align(4)
wario278:
insert "extract/mio0/00407130.mio0"; align(4)
wario279:
insert "extract/mio0/00407794.mio0"; align(4)
wario280:
insert "extract/mio0/00407DF4.mio0"; align(4)
wario281:
insert "extract/mio0/00408438.mio0"; align(4)
wario282:
insert "extract/mio0/00408A4C.mio0"; align(4)
wario283:
insert "extract/mio0/0040905C.mio0"; align(4)
wario284:
insert "extract/mio0/0040963C.mio0"; align(4)
wario285:
insert "extract/mio0/00409C14.mio0"; align(4)
wario286:
insert "extract/mio0/0040A1E0.mio0"; align(4)
wario287:
insert "extract/mio0/0040A78C.mio0"; align(4)
wario288:
insert "extract/mio0/0040AD28.mio0"; align(4)
wario289:
insert "extract/mio0/0040B28C.mio0"; align(4)
wario290:
insert "extract/mio0/0040B850.mio0"; align(4)
wario291:
insert "extract/mio0/0040BE54.mio0"; align(4)
wario292:
insert "extract/mio0/0040C46C.mio0"; align(4)
wario293:
insert "extract/mio0/0040CAD4.mio0"; align(4)
wario294:
insert "extract/mio0/0040D094.mio0"; align(4)
wario295:
insert "extract/mio0/0040D694.mio0"; align(4)
wario296:
insert "extract/mio0/0040DCAC.mio0"; align(4)
wario297:
insert "extract/mio0/0040E2E0.mio0"; align(4)
wario298:
insert "extract/mio0/0040E8AC.mio0"; align(4)
wario299:
insert "extract/mio0/0040EEE4.mio0"; align(4)
wario300:
insert "extract/mio0/0040F4F8.mio0"; align(4)
wario301:
insert "extract/mio0/0040FA94.mio0"; align(4)
wario302:
insert "extract/mio0/00410000.mio0"; align(4)
wario303:
insert "extract/mio0/004105C4.mio0"; align(4)
wario304:
insert "extract/mio0/00410BDC.mio0"; align(4)
wario305:
insert "extract/mio0/00411208.mio0"; align(4)
wario306:
insert "extract/mio0/00411754.mio0"; align(4)
wario307:
insert "extract/mio0/00411D64.mio0"; align(4)
wario308:
insert "extract/mio0/004123B0.mio0"; align(4)
wario309:
insert "extract/mio0/004129E4.mio0"; align(4)
wario310:
insert "extract/mio0/00412FC4.mio0"; align(4)
wario311:
insert "extract/mio0/004135C0.mio0"; align(4)
wario312:
insert "extract/mio0/00413BC4.mio0"; align(4)
wario313:
insert "extract/mio0/004141B8.mio0"; align(4)
wario314:
insert "extract/mio0/00414788.mio0"; align(4)
wario315:
insert "extract/mio0/00414DB8.mio0"; align(4)
wario316:
insert "extract/mio0/004153DC.mio0"; align(4)
wario317:
insert "extract/mio0/00415994.mio0"; align(4)
wario318:
insert "extract/mio0/00415EFC.mio0"; align(4)
wario319:
insert "extract/mio0/00416480.mio0"; align(4)
wario320:
insert "extract/mio0/00416A50.mio0"; align(4)
// 0F2D1BEC/41705C: Wario wheel palettes
PalWario41705C:
insert "extract/palettes/0041705C.bin"
PalWario419A5C:
insert "extract/palettes/00419A5C.bin"
PalWario41C45C:
insert "extract/palettes/0041C45C.bin"
PalWario41EE5C:
insert "extract/palettes/0041EE5C.bin"
PalWario42185C:
insert "extract/palettes/0042185C.bin"
PalWario42425C:
insert "extract/palettes/0042425C.bin"
PalWario426C5C:
insert "extract/palettes/00426C5C.bin"
PalWario42965C:
insert "extract/palettes/0042965C.bin"
PalWario42C05C:
insert "extract/palettes/0042C05C.bin"
PalWario42EA5C:
insert "extract/palettes/0042EA5C.bin"
PalWario43125C:
insert "extract/palettes/0043125C.bin"
PalWario433A5C:
insert "extract/palettes/00433A5C.bin"
PalWario43625C:
insert "extract/palettes/0043625C.bin"
PalWario438A5C:
insert "extract/palettes/00438A5C.bin"
// 0F2F5DEC/43B25C: Wario kart palette
PaletteWario:
insert "extract/palettes/0043B25C.bin"
align(0x10)

// 0F2F5F70/43B3E0
toad000:
insert "extract/mio0/0043B3E0.mio0"; align(4)
toad001:
insert "extract/mio0/0043B848.mio0"; align(4)
toad002:
insert "extract/mio0/0043BCCC.mio0"; align(4)
toad003:
insert "extract/mio0/0043C158.mio0"; align(4)
toad004:
insert "extract/mio0/0043C608.mio0"; align(4)
toad005:
insert "extract/mio0/0043CABC.mio0"; align(4)
toad006:
insert "extract/mio0/0043CF90.mio0"; align(4)
toad007:
insert "extract/mio0/0043D46C.mio0"; align(4)
toad008:
insert "extract/mio0/0043D94C.mio0"; align(4)
toad009:
insert "extract/mio0/0043DE3C.mio0"; align(4)
toad010:
insert "extract/mio0/0043E338.mio0"; align(4)
toad011:
insert "extract/mio0/0043E838.mio0"; align(4)
toad012:
insert "extract/mio0/0043ED48.mio0"; align(4)
toad013:
insert "extract/mio0/0043F260.mio0"; align(4)
toad014:
insert "extract/mio0/0043F78C.mio0"; align(4)
toad015:
insert "extract/mio0/0043FCC0.mio0"; align(4)
toad016:
insert "extract/mio0/00440218.mio0"; align(4)
toad017:
insert "extract/mio0/00440760.mio0"; align(4)
toad018:
insert "extract/mio0/00440CBC.mio0"; align(4)
toad019:
insert "extract/mio0/00441224.mio0"; align(4)
toad020:
insert "extract/mio0/004417A0.mio0"; align(4)
toad021:
insert "extract/mio0/00441D40.mio0"; align(4)
toad022:
insert "extract/mio0/004421BC.mio0"; align(4)
toad023:
insert "extract/mio0/00442648.mio0"; align(4)
toad024:
insert "extract/mio0/00442AEC.mio0"; align(4)
toad025:
insert "extract/mio0/00442F9C.mio0"; align(4)
toad026:
insert "extract/mio0/0044344C.mio0"; align(4)
toad027:
insert "extract/mio0/00443900.mio0"; align(4)
toad028:
insert "extract/mio0/00443DD8.mio0"; align(4)
toad029:
insert "extract/mio0/004442C4.mio0"; align(4)
toad030:
insert "extract/mio0/004447CC.mio0"; align(4)
toad031:
insert "extract/mio0/00444CE0.mio0"; align(4)
toad032:
insert "extract/mio0/004451F4.mio0"; align(4)
toad033:
insert "extract/mio0/00445728.mio0"; align(4)
toad034:
insert "extract/mio0/00445C58.mio0"; align(4)
toad035:
insert "extract/mio0/00446198.mio0"; align(4)
toad036:
insert "extract/mio0/004466DC.mio0"; align(4)
toad037:
insert "extract/mio0/00446C18.mio0"; align(4)
toad038:
insert "extract/mio0/00447174.mio0"; align(4)
toad039:
insert "extract/mio0/004476D0.mio0"; align(4)
toad040:
insert "extract/mio0/00447C54.mio0"; align(4)
toad041:
insert "extract/mio0/004481E8.mio0"; align(4)
toad042:
insert "extract/mio0/0044878C.mio0"; align(4)
toad043:
insert "extract/mio0/00448C14.mio0"; align(4)
toad044:
insert "extract/mio0/004490B0.mio0"; align(4)
toad045:
insert "extract/mio0/00449564.mio0"; align(4)
toad046:
insert "extract/mio0/00449A2C.mio0"; align(4)
toad047:
insert "extract/mio0/00449EF4.mio0"; align(4)
toad048:
insert "extract/mio0/0044A3D4.mio0"; align(4)
toad049:
insert "extract/mio0/0044A8C0.mio0"; align(4)
toad050:
insert "extract/mio0/0044ADD4.mio0"; align(4)
toad051:
insert "extract/mio0/0044B2EC.mio0"; align(4)
toad052:
insert "extract/mio0/0044B828.mio0"; align(4)
toad053:
insert "extract/mio0/0044BD5C.mio0"; align(4)
toad054:
insert "extract/mio0/0044C2B4.mio0"; align(4)
toad055:
insert "extract/mio0/0044C80C.mio0"; align(4)
toad056:
insert "extract/mio0/0044CD60.mio0"; align(4)
toad057:
insert "extract/mio0/0044D2A8.mio0"; align(4)
toad058:
insert "extract/mio0/0044D7FC.mio0"; align(4)
toad059:
insert "extract/mio0/0044DD74.mio0"; align(4)
toad060:
insert "extract/mio0/0044E2F8.mio0"; align(4)
toad061:
insert "extract/mio0/0044E894.mio0"; align(4)
toad062:
insert "extract/mio0/0044EE20.mio0"; align(4)
toad063:
insert "extract/mio0/0044F3E0.mio0"; align(4)
toad064:
insert "extract/mio0/0044F870.mio0"; align(4)
toad065:
insert "extract/mio0/0044FD14.mio0"; align(4)
toad066:
insert "extract/mio0/004501BC.mio0"; align(4)
toad067:
insert "extract/mio0/00450678.mio0"; align(4)
toad068:
insert "extract/mio0/00450B60.mio0"; align(4)
toad069:
insert "extract/mio0/0045104C.mio0"; align(4)
toad070:
insert "extract/mio0/00451558.mio0"; align(4)
toad071:
insert "extract/mio0/00451A78.mio0"; align(4)
toad072:
insert "extract/mio0/00451FAC.mio0"; align(4)
toad073:
insert "extract/mio0/004524FC.mio0"; align(4)
toad074:
insert "extract/mio0/00452A48.mio0"; align(4)
toad075:
insert "extract/mio0/00452FA0.mio0"; align(4)
toad076:
insert "extract/mio0/004534FC.mio0"; align(4)
toad077:
insert "extract/mio0/00453A70.mio0"; align(4)
toad078:
insert "extract/mio0/00453FE4.mio0"; align(4)
toad079:
insert "extract/mio0/0045456C.mio0"; align(4)
toad080:
insert "extract/mio0/00454B04.mio0"; align(4)
toad081:
insert "extract/mio0/00455098.mio0"; align(4)
toad082:
insert "extract/mio0/00455634.mio0"; align(4)
toad083:
insert "extract/mio0/00455BD8.mio0"; align(4)
toad084:
insert "extract/mio0/00456184.mio0"; align(4)
toad085:
insert "extract/mio0/0045663C.mio0"; align(4)
toad086:
insert "extract/mio0/00456B04.mio0"; align(4)
toad087:
insert "extract/mio0/00456FE0.mio0"; align(4)
toad088:
insert "extract/mio0/004574E0.mio0"; align(4)
toad089:
insert "extract/mio0/004579E0.mio0"; align(4)
toad090:
insert "extract/mio0/00457EDC.mio0"; align(4)
toad091:
insert "extract/mio0/004583E0.mio0"; align(4)
toad092:
insert "extract/mio0/00458910.mio0"; align(4)
toad093:
insert "extract/mio0/00458E58.mio0"; align(4)
toad094:
insert "extract/mio0/004593A8.mio0"; align(4)
toad095:
insert "extract/mio0/00459910.mio0"; align(4)
toad096:
insert "extract/mio0/00459E80.mio0"; align(4)
toad097:
insert "extract/mio0/0045A3E8.mio0"; align(4)
toad098:
insert "extract/mio0/0045A950.mio0"; align(4)
toad099:
insert "extract/mio0/0045AED0.mio0"; align(4)
toad100:
insert "extract/mio0/0045B458.mio0"; align(4)
toad101:
insert "extract/mio0/0045B9F8.mio0"; align(4)
toad102:
insert "extract/mio0/0045BF98.mio0"; align(4)
toad103:
insert "extract/mio0/0045C54C.mio0"; align(4)
toad104:
insert "extract/mio0/0045CB08.mio0"; align(4)
toad105:
insert "extract/mio0/0045D0D8.mio0"; align(4)
toad106:
insert "extract/mio0/0045D594.mio0"; align(4)
toad107:
insert "extract/mio0/0045DA88.mio0"; align(4)
toad108:
insert "extract/mio0/0045DF7C.mio0"; align(4)
toad109:
insert "extract/mio0/0045E49C.mio0"; align(4)
toad110:
insert "extract/mio0/0045E9B0.mio0"; align(4)
toad111:
insert "extract/mio0/0045EEE0.mio0"; align(4)
toad112:
insert "extract/mio0/0045F40C.mio0"; align(4)
toad113:
insert "extract/mio0/0045F950.mio0"; align(4)
toad114:
insert "extract/mio0/0045FE9C.mio0"; align(4)
toad115:
insert "extract/mio0/004603FC.mio0"; align(4)
toad116:
insert "extract/mio0/00460970.mio0"; align(4)
toad117:
insert "extract/mio0/00460EE4.mio0"; align(4)
toad118:
insert "extract/mio0/00461464.mio0"; align(4)
toad119:
insert "extract/mio0/004619E0.mio0"; align(4)
toad120:
insert "extract/mio0/00461F8C.mio0"; align(4)
toad121:
insert "extract/mio0/0046251C.mio0"; align(4)
toad122:
insert "extract/mio0/00462ABC.mio0"; align(4)
toad123:
insert "extract/mio0/00463070.mio0"; align(4)
toad124:
insert "extract/mio0/00463634.mio0"; align(4)
toad125:
insert "extract/mio0/00463C08.mio0"; align(4)
toad126:
insert "extract/mio0/004641EC.mio0"; align(4)
toad127:
insert "extract/mio0/004646C8.mio0"; align(4)
toad128:
insert "extract/mio0/00464BA4.mio0"; align(4)
toad129:
insert "extract/mio0/0046509C.mio0"; align(4)
toad130:
insert "extract/mio0/004655AC.mio0"; align(4)
toad131:
insert "extract/mio0/00465AC0.mio0"; align(4)
toad132:
insert "extract/mio0/00465FEC.mio0"; align(4)
toad133:
insert "extract/mio0/00466528.mio0"; align(4)
toad134:
insert "extract/mio0/00466A80.mio0"; align(4)
toad135:
insert "extract/mio0/00466FDC.mio0"; align(4)
toad136:
insert "extract/mio0/0046755C.mio0"; align(4)
toad137:
insert "extract/mio0/00467AD8.mio0"; align(4)
toad138:
insert "extract/mio0/00468070.mio0"; align(4)
toad139:
insert "extract/mio0/0046860C.mio0"; align(4)
toad140:
insert "extract/mio0/00468BA8.mio0"; align(4)
toad141:
insert "extract/mio0/00469140.mio0"; align(4)
toad142:
insert "extract/mio0/004696C0.mio0"; align(4)
toad143:
insert "extract/mio0/00469C7C.mio0"; align(4)
toad144:
insert "extract/mio0/0046A260.mio0"; align(4)
toad145:
insert "extract/mio0/0046A830.mio0"; align(4)
toad146:
insert "extract/mio0/0046AE04.mio0"; align(4)
toad147:
insert "extract/mio0/0046B3EC.mio0"; align(4)
toad148:
insert "extract/mio0/0046B8E4.mio0"; align(4)
toad149:
insert "extract/mio0/0046BE00.mio0"; align(4)
toad150:
insert "extract/mio0/0046C330.mio0"; align(4)
toad151:
insert "extract/mio0/0046C854.mio0"; align(4)
toad152:
insert "extract/mio0/0046CD80.mio0"; align(4)
toad153:
insert "extract/mio0/0046D2CC.mio0"; align(4)
toad154:
insert "extract/mio0/0046D82C.mio0"; align(4)
toad155:
insert "extract/mio0/0046DD9C.mio0"; align(4)
toad156:
insert "extract/mio0/0046E308.mio0"; align(4)
toad157:
insert "extract/mio0/0046E88C.mio0"; align(4)
toad158:
insert "extract/mio0/0046EE20.mio0"; align(4)
toad159:
insert "extract/mio0/0046F3A8.mio0"; align(4)
toad160:
insert "extract/mio0/0046F92C.mio0"; align(4)
toad161:
insert "extract/mio0/0046FEC8.mio0"; align(4)
toad162:
insert "extract/mio0/00470488.mio0"; align(4)
toad163:
insert "extract/mio0/00470A4C.mio0"; align(4)
toad164:
insert "extract/mio0/0047100C.mio0"; align(4)
toad165:
insert "extract/mio0/004715F8.mio0"; align(4)
toad166:
insert "extract/mio0/00471BE4.mio0"; align(4)
toad167:
insert "extract/mio0/004721D4.mio0"; align(4)
toad168:
insert "extract/mio0/004727C8.mio0"; align(4)
toad169:
insert "extract/mio0/00472CD8.mio0"; align(4)
toad170:
insert "extract/mio0/00473204.mio0"; align(4)
toad171:
insert "extract/mio0/0047374C.mio0"; align(4)
toad172:
insert "extract/mio0/00473C98.mio0"; align(4)
toad173:
insert "extract/mio0/004741FC.mio0"; align(4)
toad174:
insert "extract/mio0/00474764.mio0"; align(4)
toad175:
insert "extract/mio0/00474CD4.mio0"; align(4)
toad176:
insert "extract/mio0/0047524C.mio0"; align(4)
toad177:
insert "extract/mio0/004757C0.mio0"; align(4)
toad178:
insert "extract/mio0/00475D50.mio0"; align(4)
toad179:
insert "extract/mio0/004762E0.mio0"; align(4)
toad180:
insert "extract/mio0/00476878.mio0"; align(4)
toad181:
insert "extract/mio0/00476E2C.mio0"; align(4)
toad182:
insert "extract/mio0/004773D8.mio0"; align(4)
toad183:
insert "extract/mio0/00477988.mio0"; align(4)
toad184:
insert "extract/mio0/00477F38.mio0"; align(4)
toad185:
insert "extract/mio0/00478504.mio0"; align(4)
toad186:
insert "extract/mio0/00478B00.mio0"; align(4)
toad187:
insert "extract/mio0/004790F8.mio0"; align(4)
toad188:
insert "extract/mio0/00479710.mio0"; align(4)
toad189:
insert "extract/mio0/00479D18.mio0"; align(4)
toad190:
insert "extract/mio0/0047A1B0.mio0"; align(4)
toad191:
insert "extract/mio0/0047A67C.mio0"; align(4)
toad192:
insert "extract/mio0/0047AB58.mio0"; align(4)
toad193:
insert "extract/mio0/0047B070.mio0"; align(4)
toad194:
insert "extract/mio0/0047B5C4.mio0"; align(4)
toad195:
insert "extract/mio0/0047BB38.mio0"; align(4)
toad196:
insert "extract/mio0/0047C0D4.mio0"; align(4)
toad197:
insert "extract/mio0/0047C698.mio0"; align(4)
toad198:
insert "extract/mio0/0047CC78.mio0"; align(4)
toad199:
insert "extract/mio0/0047D284.mio0"; align(4)
toad200:
insert "extract/mio0/0047D8AC.mio0"; align(4)
toad201:
insert "extract/mio0/0047DED0.mio0"; align(4)
toad202:
insert "extract/mio0/0047E4E8.mio0"; align(4)
toad203:
insert "extract/mio0/0047EAEC.mio0"; align(4)
toad204:
insert "extract/mio0/0047F0EC.mio0"; align(4)
toad205:
insert "extract/mio0/0047F6C4.mio0"; align(4)
toad206:
insert "extract/mio0/0047FC98.mio0"; align(4)
toad207:
insert "extract/mio0/00480254.mio0"; align(4)
toad208:
insert "extract/mio0/00480804.mio0"; align(4)
toad209:
insert "extract/mio0/00480DB0.mio0"; align(4)
toad210:
insert "extract/mio0/0048125C.mio0"; align(4)
toad211:
insert "extract/mio0/0048174C.mio0"; align(4)
toad212:
insert "extract/mio0/00481C70.mio0"; align(4)
toad213:
insert "extract/mio0/004821C4.mio0"; align(4)
toad214:
insert "extract/mio0/00482724.mio0"; align(4)
toad215:
insert "extract/mio0/00482CB0.mio0"; align(4)
toad216:
insert "extract/mio0/00483258.mio0"; align(4)
toad217:
insert "extract/mio0/00483820.mio0"; align(4)
toad218:
insert "extract/mio0/00483E14.mio0"; align(4)
toad219:
insert "extract/mio0/00484428.mio0"; align(4)
toad220:
insert "extract/mio0/00484A28.mio0"; align(4)
toad221:
insert "extract/mio0/00485034.mio0"; align(4)
toad222:
insert "extract/mio0/00485630.mio0"; align(4)
toad223:
insert "extract/mio0/00485C04.mio0"; align(4)
toad224:
insert "extract/mio0/004861B4.mio0"; align(4)
toad225:
insert "extract/mio0/00486754.mio0"; align(4)
toad226:
insert "extract/mio0/00486CF4.mio0"; align(4)
toad227:
insert "extract/mio0/0048728C.mio0"; align(4)
toad228:
insert "extract/mio0/0048780C.mio0"; align(4)
toad229:
insert "extract/mio0/00487D78.mio0"; align(4)
toad230:
insert "extract/mio0/0048824C.mio0"; align(4)
toad231:
insert "extract/mio0/00488764.mio0"; align(4)
toad232:
insert "extract/mio0/00488CA8.mio0"; align(4)
toad233:
insert "extract/mio0/00489228.mio0"; align(4)
toad234:
insert "extract/mio0/004897C8.mio0"; align(4)
toad235:
insert "extract/mio0/00489D68.mio0"; align(4)
toad236:
insert "extract/mio0/0048A34C.mio0"; align(4)
toad237:
insert "extract/mio0/0048A924.mio0"; align(4)
toad238:
insert "extract/mio0/0048AF10.mio0"; align(4)
toad239:
insert "extract/mio0/0048B524.mio0"; align(4)
toad240:
insert "extract/mio0/0048BB1C.mio0"; align(4)
toad241:
insert "extract/mio0/0048C110.mio0"; align(4)
toad242:
insert "extract/mio0/0048C6DC.mio0"; align(4)
toad243:
insert "extract/mio0/0048CC9C.mio0"; align(4)
toad244:
insert "extract/mio0/0048D248.mio0"; align(4)
toad245:
insert "extract/mio0/0048D7D0.mio0"; align(4)
toad246:
insert "extract/mio0/0048DD58.mio0"; align(4)
toad247:
insert "extract/mio0/0048E2D8.mio0"; align(4)
toad248:
insert "extract/mio0/0048E838.mio0"; align(4)
toad249:
insert "extract/mio0/0048ED58.mio0"; align(4)
toad250:
insert "extract/mio0/0048F26C.mio0"; align(4)
toad251:
insert "extract/mio0/0048F794.mio0"; align(4)
toad252:
insert "extract/mio0/0048FD00.mio0"; align(4)
toad253:
insert "extract/mio0/00490288.mio0"; align(4)
toad254:
insert "extract/mio0/00490828.mio0"; align(4)
toad255:
insert "extract/mio0/00490DF4.mio0"; align(4)
toad256:
insert "extract/mio0/004913E4.mio0"; align(4)
toad257:
insert "extract/mio0/004919D0.mio0"; align(4)
toad258:
insert "extract/mio0/00491FD8.mio0"; align(4)
toad259:
insert "extract/mio0/004925DC.mio0"; align(4)
toad260:
insert "extract/mio0/00492BE0.mio0"; align(4)
toad261:
insert "extract/mio0/004931B8.mio0"; align(4)
toad262:
insert "extract/mio0/00493788.mio0"; align(4)
toad263:
insert "extract/mio0/00493D1C.mio0"; align(4)
toad264:
insert "extract/mio0/00494288.mio0"; align(4)
toad265:
insert "extract/mio0/004947EC.mio0"; align(4)
toad266:
insert "extract/mio0/00494D4C.mio0"; align(4)
toad267:
insert "extract/mio0/00495290.mio0"; align(4)
toad268:
insert "extract/mio0/004957AC.mio0"; align(4)
toad269:
insert "extract/mio0/00495C80.mio0"; align(4)
toad270:
insert "extract/mio0/004961C8.mio0"; align(4)
toad271:
insert "extract/mio0/00496748.mio0"; align(4)
toad272:
insert "extract/mio0/00496CD8.mio0"; align(4)
toad273:
insert "extract/mio0/00497278.mio0"; align(4)
toad274:
insert "extract/mio0/00497848.mio0"; align(4)
toad275:
insert "extract/mio0/00497E3C.mio0"; align(4)
toad276:
insert "extract/mio0/00498454.mio0"; align(4)
toad277:
insert "extract/mio0/00498A64.mio0"; align(4)
toad278:
insert "extract/mio0/00499078.mio0"; align(4)
toad279:
insert "extract/mio0/0049967C.mio0"; align(4)
toad280:
insert "extract/mio0/00499C78.mio0"; align(4)
toad281:
insert "extract/mio0/0049A254.mio0"; align(4)
toad282:
insert "extract/mio0/0049A800.mio0"; align(4)
toad283:
insert "extract/mio0/0049AD74.mio0"; align(4)
toad284:
insert "extract/mio0/0049B2C0.mio0"; align(4)
toad285:
insert "extract/mio0/0049B7FC.mio0"; align(4)
toad286:
insert "extract/mio0/0049BD0C.mio0"; align(4)
toad287:
insert "extract/mio0/0049C210.mio0"; align(4)
toad288:
insert "extract/mio0/0049C6E0.mio0"; align(4)
toad289:
insert "extract/mio0/0049CB80.mio0"; align(4)
toad290:
insert "extract/mio0/0049D014.mio0"; align(4)
toad291:
insert "extract/mio0/0049D560.mio0"; align(4)
toad292:
insert "extract/mio0/0049DB28.mio0"; align(4)
toad293:
insert "extract/mio0/0049E198.mio0"; align(4)
toad294:
insert "extract/mio0/0049E79C.mio0"; align(4)
toad295:
insert "extract/mio0/0049EDA0.mio0"; align(4)
toad296:
insert "extract/mio0/0049F344.mio0"; align(4)
toad297:
insert "extract/mio0/0049F85C.mio0"; align(4)
toad298:
insert "extract/mio0/0049FCF8.mio0"; align(4)
toad299:
insert "extract/mio0/004A0234.mio0"; align(4)
toad300:
insert "extract/mio0/004A079C.mio0"; align(4)
toad301:
insert "extract/mio0/004A0D14.mio0"; align(4)
toad302:
insert "extract/mio0/004A126C.mio0"; align(4)
toad303:
insert "extract/mio0/004A17F8.mio0"; align(4)
toad304:
insert "extract/mio0/004A1D94.mio0"; align(4)
toad305:
insert "extract/mio0/004A22D0.mio0"; align(4)
toad306:
insert "extract/mio0/004A272C.mio0"; align(4)
toad307:
insert "extract/mio0/004A2CCC.mio0"; align(4)
toad308:
insert "extract/mio0/004A330C.mio0"; align(4)
toad309:
insert "extract/mio0/004A397C.mio0"; align(4)
toad310:
insert "extract/mio0/004A3F60.mio0"; align(4)
toad311:
insert "extract/mio0/004A4540.mio0"; align(4)
toad312:
insert "extract/mio0/004A4B08.mio0"; align(4)
toad313:
insert "extract/mio0/004A4FF0.mio0"; align(4)
toad314:
insert "extract/mio0/004A548C.mio0"; align(4)
toad315:
insert "extract/mio0/004A59C8.mio0"; align(4)
toad316:
insert "extract/mio0/004A5F0C.mio0"; align(4)
toad317:
insert "extract/mio0/004A6490.mio0"; align(4)
toad318:
insert "extract/mio0/004A6A38.mio0"; align(4)
toad319:
insert "extract/mio0/004A6FC8.mio0"; align(4)
toad320:
insert "extract/mio0/004A7570.mio0"; align(4)
// 0F362658/4A7AC8: Toad wheel palettes
PalToad4A7AC8:
insert "extract/palettes/004A7AC8.bin"
PalToad4AA4C8:
insert "extract/palettes/004AA4C8.bin"
PalToad4ACEC8:
insert "extract/palettes/004ACEC8.bin"
PalToad4AF8C8:
insert "extract/palettes/004AF8C8.bin"
PalToad4B22C8:
insert "extract/palettes/004B22C8.bin"
PalToad4B4CC8:
insert "extract/palettes/004B4CC8.bin"
PalToad4B76C8:
insert "extract/palettes/004B76C8.bin"
PalToad4BA0C8:
insert "extract/palettes/004BA0C8.bin"
PalToad4BCAC8:
insert "extract/palettes/004BCAC8.bin"
PalToad4BF4C8:
insert "extract/palettes/004BF4C8.bin"
PalToad4C1CC8:
insert "extract/palettes/004C1CC8.bin"
PalToad4C44C8:
insert "extract/palettes/004C44C8.bin"
PalToad4C6CC8:
insert "extract/palettes/004C6CC8.bin"
PalToad4C94C8:
insert "extract/palettes/004C94C8.bin"
// 0F386858/4CBCC8: Toad kart palette
PaletteToad:
insert "extract/palettes/004CBCC8.bin"
align(0x10)

// 0F3869E0/4CBE50
dk000:
insert "extract/mio0/004CBE50.mio0"; align(4)
dk001:
insert "extract/mio0/004CC514.mio0"; align(4)
dk002:
insert "extract/mio0/004CCBCC.mio0"; align(4)
dk003:
insert "extract/mio0/004CD270.mio0"; align(4)
dk004:
insert "extract/mio0/004CD918.mio0"; align(4)
dk005:
insert "extract/mio0/004CDF90.mio0"; align(4)
dk006:
insert "extract/mio0/004CE634.mio0"; align(4)
dk007:
insert "extract/mio0/004CECC4.mio0"; align(4)
dk008:
insert "extract/mio0/004CF348.mio0"; align(4)
dk009:
insert "extract/mio0/004CF9DC.mio0"; align(4)
dk010:
insert "extract/mio0/004D009C.mio0"; align(4)
dk011:
insert "extract/mio0/004D0764.mio0"; align(4)
dk012:
insert "extract/mio0/004D0E24.mio0"; align(4)
dk013:
insert "extract/mio0/004D14DC.mio0"; align(4)
dk014:
insert "extract/mio0/004D1BA8.mio0"; align(4)
dk015:
insert "extract/mio0/004D226C.mio0"; align(4)
dk016:
insert "extract/mio0/004D2954.mio0"; align(4)
dk017:
insert "extract/mio0/004D305C.mio0"; align(4)
dk018:
insert "extract/mio0/004D375C.mio0"; align(4)
dk019:
insert "extract/mio0/004D3E6C.mio0"; align(4)
dk020:
insert "extract/mio0/004D457C.mio0"; align(4)
dk021:
insert "extract/mio0/004D4CA8.mio0"; align(4)
dk022:
insert "extract/mio0/004D5398.mio0"; align(4)
dk023:
insert "extract/mio0/004D5A68.mio0"; align(4)
dk024:
insert "extract/mio0/004D6100.mio0"; align(4)
dk025:
insert "extract/mio0/004D67B8.mio0"; align(4)
dk026:
insert "extract/mio0/004D6E60.mio0"; align(4)
dk027:
insert "extract/mio0/004D750C.mio0"; align(4)
dk028:
insert "extract/mio0/004D7BC0.mio0"; align(4)
dk029:
insert "extract/mio0/004D8280.mio0"; align(4)
dk030:
insert "extract/mio0/004D8958.mio0"; align(4)
dk031:
insert "extract/mio0/004D900C.mio0"; align(4)
dk032:
insert "extract/mio0/004D96CC.mio0"; align(4)
dk033:
insert "extract/mio0/004D9D90.mio0"; align(4)
dk034:
insert "extract/mio0/004DA45C.mio0"; align(4)
dk035:
insert "extract/mio0/004DAB40.mio0"; align(4)
dk036:
insert "extract/mio0/004DB224.mio0"; align(4)
dk037:
insert "extract/mio0/004DB908.mio0"; align(4)
dk038:
insert "extract/mio0/004DC00C.mio0"; align(4)
dk039:
insert "extract/mio0/004DC720.mio0"; align(4)
dk040:
insert "extract/mio0/004DCE48.mio0"; align(4)
dk041:
insert "extract/mio0/004DD56C.mio0"; align(4)
dk042:
insert "extract/mio0/004DDCA0.mio0"; align(4)
dk043:
insert "extract/mio0/004DE388.mio0"; align(4)
dk044:
insert "extract/mio0/004DEA74.mio0"; align(4)
dk045:
insert "extract/mio0/004DF140.mio0"; align(4)
dk046:
insert "extract/mio0/004DF81C.mio0"; align(4)
dk047:
insert "extract/mio0/004DFEFC.mio0"; align(4)
dk048:
insert "extract/mio0/004E05D0.mio0"; align(4)
dk049:
insert "extract/mio0/004E0C98.mio0"; align(4)
dk050:
insert "extract/mio0/004E1360.mio0"; align(4)
dk051:
insert "extract/mio0/004E1A10.mio0"; align(4)
dk052:
insert "extract/mio0/004E20EC.mio0"; align(4)
dk053:
insert "extract/mio0/004E27C8.mio0"; align(4)
dk054:
insert "extract/mio0/004E2E90.mio0"; align(4)
dk055:
insert "extract/mio0/004E355C.mio0"; align(4)
dk056:
insert "extract/mio0/004E3C38.mio0"; align(4)
dk057:
insert "extract/mio0/004E4324.mio0"; align(4)
dk058:
insert "extract/mio0/004E4A18.mio0"; align(4)
dk059:
insert "extract/mio0/004E511C.mio0"; align(4)
dk060:
insert "extract/mio0/004E5828.mio0"; align(4)
dk061:
insert "extract/mio0/004E5F54.mio0"; align(4)
dk062:
insert "extract/mio0/004E6670.mio0"; align(4)
dk063:
insert "extract/mio0/004E6DA8.mio0"; align(4)
dk064:
insert "extract/mio0/004E74B0.mio0"; align(4)
dk065:
insert "extract/mio0/004E7BC0.mio0"; align(4)
dk066:
insert "extract/mio0/004E82B0.mio0"; align(4)
dk067:
insert "extract/mio0/004E89AC.mio0"; align(4)
dk068:
insert "extract/mio0/004E90AC.mio0"; align(4)
dk069:
insert "extract/mio0/004E9788.mio0"; align(4)
dk070:
insert "extract/mio0/004E9E54.mio0"; align(4)
dk071:
insert "extract/mio0/004EA538.mio0"; align(4)
dk072:
insert "extract/mio0/004EAC04.mio0"; align(4)
dk073:
insert "extract/mio0/004EB2D4.mio0"; align(4)
dk074:
insert "extract/mio0/004EB9A8.mio0"; align(4)
dk075:
insert "extract/mio0/004EC080.mio0"; align(4)
dk076:
insert "extract/mio0/004EC758.mio0"; align(4)
dk077:
insert "extract/mio0/004ECE38.mio0"; align(4)
dk078:
insert "extract/mio0/004ED524.mio0"; align(4)
dk079:
insert "extract/mio0/004EDC24.mio0"; align(4)
dk080:
insert "extract/mio0/004EE34C.mio0"; align(4)
dk081:
insert "extract/mio0/004EEA7C.mio0"; align(4)
dk082:
insert "extract/mio0/004EF1B0.mio0"; align(4)
dk083:
insert "extract/mio0/004EF8EC.mio0"; align(4)
dk084:
insert "extract/mio0/004F002C.mio0"; align(4)
dk085:
insert "extract/mio0/004F0728.mio0"; align(4)
dk086:
insert "extract/mio0/004F0E2C.mio0"; align(4)
dk087:
insert "extract/mio0/004F1510.mio0"; align(4)
dk088:
insert "extract/mio0/004F1C20.mio0"; align(4)
dk089:
insert "extract/mio0/004F2310.mio0"; align(4)
dk090:
insert "extract/mio0/004F2A08.mio0"; align(4)
dk091:
insert "extract/mio0/004F30FC.mio0"; align(4)
dk092:
insert "extract/mio0/004F37E8.mio0"; align(4)
dk093:
insert "extract/mio0/004F3EC4.mio0"; align(4)
dk094:
insert "extract/mio0/004F45A8.mio0"; align(4)
dk095:
insert "extract/mio0/004F4C80.mio0"; align(4)
dk096:
insert "extract/mio0/004F5364.mio0"; align(4)
dk097:
insert "extract/mio0/004F5A44.mio0"; align(4)
dk098:
insert "extract/mio0/004F613C.mio0"; align(4)
dk099:
insert "extract/mio0/004F6844.mio0"; align(4)
dk100:
insert "extract/mio0/004F6F4C.mio0"; align(4)
dk101:
insert "extract/mio0/004F767C.mio0"; align(4)
dk102:
insert "extract/mio0/004F7DCC.mio0"; align(4)
dk103:
insert "extract/mio0/004F84FC.mio0"; align(4)
dk104:
insert "extract/mio0/004F8C34.mio0"; align(4)
dk105:
insert "extract/mio0/004F9384.mio0"; align(4)
dk106:
insert "extract/mio0/004F9A90.mio0"; align(4)
dk107:
insert "extract/mio0/004FA1AC.mio0"; align(4)
dk108:
insert "extract/mio0/004FA8CC.mio0"; align(4)
dk109:
insert "extract/mio0/004FAFF0.mio0"; align(4)
dk110:
insert "extract/mio0/004FB70C.mio0"; align(4)
dk111:
insert "extract/mio0/004FBE28.mio0"; align(4)
dk112:
insert "extract/mio0/004FC520.mio0"; align(4)
dk113:
insert "extract/mio0/004FCC10.mio0"; align(4)
dk114:
insert "extract/mio0/004FD310.mio0"; align(4)
dk115:
insert "extract/mio0/004FD9F0.mio0"; align(4)
dk116:
insert "extract/mio0/004FE0DC.mio0"; align(4)
dk117:
insert "extract/mio0/004FE7BC.mio0"; align(4)
dk118:
insert "extract/mio0/004FEEBC.mio0"; align(4)
dk119:
insert "extract/mio0/004FF5B4.mio0"; align(4)
dk120:
insert "extract/mio0/004FFCC0.mio0"; align(4)
dk121:
insert "extract/mio0/005003D4.mio0"; align(4)
dk122:
insert "extract/mio0/00500AFC.mio0"; align(4)
dk123:
insert "extract/mio0/00501224.mio0"; align(4)
dk124:
insert "extract/mio0/00501958.mio0"; align(4)
dk125:
insert "extract/mio0/00502090.mio0"; align(4)
dk126:
insert "extract/mio0/005027E8.mio0"; align(4)
dk127:
insert "extract/mio0/00502F1C.mio0"; align(4)
dk128:
insert "extract/mio0/00503648.mio0"; align(4)
dk129:
insert "extract/mio0/00503D88.mio0"; align(4)
dk130:
insert "extract/mio0/005044A8.mio0"; align(4)
dk131:
insert "extract/mio0/00504BB8.mio0"; align(4)
dk132:
insert "extract/mio0/005052BC.mio0"; align(4)
dk133:
insert "extract/mio0/005059CC.mio0"; align(4)
dk134:
insert "extract/mio0/005060CC.mio0"; align(4)
dk135:
insert "extract/mio0/005067CC.mio0"; align(4)
dk136:
insert "extract/mio0/00506EC4.mio0"; align(4)
dk137:
insert "extract/mio0/005075A8.mio0"; align(4)
dk138:
insert "extract/mio0/00507C88.mio0"; align(4)
dk139:
insert "extract/mio0/00508374.mio0"; align(4)
dk140:
insert "extract/mio0/00508A64.mio0"; align(4)
dk141:
insert "extract/mio0/00509168.mio0"; align(4)
dk142:
insert "extract/mio0/0050988C.mio0"; align(4)
dk143:
insert "extract/mio0/00509FC4.mio0"; align(4)
dk144:
insert "extract/mio0/0050A6F8.mio0"; align(4)
dk145:
insert "extract/mio0/0050AE34.mio0"; align(4)
dk146:
insert "extract/mio0/0050B578.mio0"; align(4)
dk147:
insert "extract/mio0/0050BCD0.mio0"; align(4)
dk148:
insert "extract/mio0/0050C41C.mio0"; align(4)
dk149:
insert "extract/mio0/0050CB5C.mio0"; align(4)
dk150:
insert "extract/mio0/0050D290.mio0"; align(4)
dk151:
insert "extract/mio0/0050D9AC.mio0"; align(4)
dk152:
insert "extract/mio0/0050E0CC.mio0"; align(4)
dk153:
insert "extract/mio0/0050E7F4.mio0"; align(4)
dk154:
insert "extract/mio0/0050EF24.mio0"; align(4)
dk155:
insert "extract/mio0/0050F644.mio0"; align(4)
dk156:
insert "extract/mio0/0050FD44.mio0"; align(4)
dk157:
insert "extract/mio0/00510434.mio0"; align(4)
dk158:
insert "extract/mio0/00510B28.mio0"; align(4)
dk159:
insert "extract/mio0/00511224.mio0"; align(4)
dk160:
insert "extract/mio0/00511920.mio0"; align(4)
dk161:
insert "extract/mio0/00512020.mio0"; align(4)
dk162:
insert "extract/mio0/00512744.mio0"; align(4)
dk163:
insert "extract/mio0/00512E74.mio0"; align(4)
dk164:
insert "extract/mio0/005135A4.mio0"; align(4)
dk165:
insert "extract/mio0/00513CEC.mio0"; align(4)
dk166:
insert "extract/mio0/00514450.mio0"; align(4)
dk167:
insert "extract/mio0/00514BA8.mio0"; align(4)
dk168:
insert "extract/mio0/00515308.mio0"; align(4)
dk169:
insert "extract/mio0/00515A48.mio0"; align(4)
dk170:
insert "extract/mio0/00516194.mio0"; align(4)
dk171:
insert "extract/mio0/005168D4.mio0"; align(4)
dk172:
insert "extract/mio0/0051700C.mio0"; align(4)
dk173:
insert "extract/mio0/00517728.mio0"; align(4)
dk174:
insert "extract/mio0/00517E38.mio0"; align(4)
dk175:
insert "extract/mio0/00518568.mio0"; align(4)
dk176:
insert "extract/mio0/00518C70.mio0"; align(4)
dk177:
insert "extract/mio0/00519360.mio0"; align(4)
dk178:
insert "extract/mio0/00519A58.mio0"; align(4)
dk179:
insert "extract/mio0/0051A154.mio0"; align(4)
dk180:
insert "extract/mio0/0051A844.mio0"; align(4)
dk181:
insert "extract/mio0/0051AF44.mio0"; align(4)
dk182:
insert "extract/mio0/0051B640.mio0"; align(4)
dk183:
insert "extract/mio0/0051BD58.mio0"; align(4)
dk184:
insert "extract/mio0/0051C484.mio0"; align(4)
dk185:
insert "extract/mio0/0051CBDC.mio0"; align(4)
dk186:
insert "extract/mio0/0051D330.mio0"; align(4)
dk187:
insert "extract/mio0/0051DAA0.mio0"; align(4)
dk188:
insert "extract/mio0/0051E228.mio0"; align(4)
dk189:
insert "extract/mio0/0051E9A4.mio0"; align(4)
dk190:
insert "extract/mio0/0051F068.mio0"; align(4)
dk191:
insert "extract/mio0/0051F758.mio0"; align(4)
dk192:
insert "extract/mio0/0051FE58.mio0"; align(4)
dk193:
insert "extract/mio0/00520580.mio0"; align(4)
dk194:
insert "extract/mio0/00520C9C.mio0"; align(4)
dk195:
insert "extract/mio0/005213B8.mio0"; align(4)
dk196:
insert "extract/mio0/00521AD8.mio0"; align(4)
dk197:
insert "extract/mio0/00522210.mio0"; align(4)
dk198:
insert "extract/mio0/00522930.mio0"; align(4)
dk199:
insert "extract/mio0/00523070.mio0"; align(4)
dk200:
insert "extract/mio0/005237D4.mio0"; align(4)
dk201:
insert "extract/mio0/00523F70.mio0"; align(4)
dk202:
insert "extract/mio0/00524728.mio0"; align(4)
dk203:
insert "extract/mio0/00524EF8.mio0"; align(4)
dk204:
insert "extract/mio0/005256BC.mio0"; align(4)
dk205:
insert "extract/mio0/00525E6C.mio0"; align(4)
dk206:
insert "extract/mio0/00526650.mio0"; align(4)
dk207:
insert "extract/mio0/00526E2C.mio0"; align(4)
dk208:
insert "extract/mio0/005275E0.mio0"; align(4)
dk209:
insert "extract/mio0/00527D98.mio0"; align(4)
dk210:
insert "extract/mio0/00528490.mio0"; align(4)
dk211:
insert "extract/mio0/00528BA4.mio0"; align(4)
dk212:
insert "extract/mio0/005292EC.mio0"; align(4)
dk213:
insert "extract/mio0/00529A3C.mio0"; align(4)
dk214:
insert "extract/mio0/0052A150.mio0"; align(4)
dk215:
insert "extract/mio0/0052A880.mio0"; align(4)
dk216:
insert "extract/mio0/0052AFCC.mio0"; align(4)
dk217:
insert "extract/mio0/0052B708.mio0"; align(4)
dk218:
insert "extract/mio0/0052BE20.mio0"; align(4)
dk219:
insert "extract/mio0/0052C550.mio0"; align(4)
dk220:
insert "extract/mio0/0052CC94.mio0"; align(4)
dk221:
insert "extract/mio0/0052D3E8.mio0"; align(4)
dk222:
insert "extract/mio0/0052DB4C.mio0"; align(4)
dk223:
insert "extract/mio0/0052E2D0.mio0"; align(4)
dk224:
insert "extract/mio0/0052EA4C.mio0"; align(4)
dk225:
insert "extract/mio0/0052F1CC.mio0"; align(4)
dk226:
insert "extract/mio0/0052F95C.mio0"; align(4)
dk227:
insert "extract/mio0/005300CC.mio0"; align(4)
dk228:
insert "extract/mio0/00530848.mio0"; align(4)
dk229:
insert "extract/mio0/00530F9C.mio0"; align(4)
dk230:
insert "extract/mio0/005316B8.mio0"; align(4)
dk231:
insert "extract/mio0/00531E1C.mio0"; align(4)
dk232:
insert "extract/mio0/00532578.mio0"; align(4)
dk233:
insert "extract/mio0/00532CD8.mio0"; align(4)
dk234:
insert "extract/mio0/00533428.mio0"; align(4)
dk235:
insert "extract/mio0/00533B70.mio0"; align(4)
dk236:
insert "extract/mio0/005342C8.mio0"; align(4)
dk237:
insert "extract/mio0/00534A0C.mio0"; align(4)
dk238:
insert "extract/mio0/00535148.mio0"; align(4)
dk239:
insert "extract/mio0/0053586C.mio0"; align(4)
dk240:
insert "extract/mio0/00535F98.mio0"; align(4)
dk241:
insert "extract/mio0/005366F8.mio0"; align(4)
dk242:
insert "extract/mio0/00536E5C.mio0"; align(4)
dk243:
insert "extract/mio0/005375BC.mio0"; align(4)
dk244:
insert "extract/mio0/00537D24.mio0"; align(4)
dk245:
insert "extract/mio0/0053846C.mio0"; align(4)
dk246:
insert "extract/mio0/00538BC8.mio0"; align(4)
dk247:
insert "extract/mio0/00539300.mio0"; align(4)
dk248:
insert "extract/mio0/00539A24.mio0"; align(4)
dk249:
insert "extract/mio0/0053A130.mio0"; align(4)
dk250:
insert "extract/mio0/0053A84C.mio0"; align(4)
dk251:
insert "extract/mio0/0053AFA4.mio0"; align(4)
dk252:
insert "extract/mio0/0053B6FC.mio0"; align(4)
dk253:
insert "extract/mio0/0053BE4C.mio0"; align(4)
dk254:
insert "extract/mio0/0053C590.mio0"; align(4)
dk255:
insert "extract/mio0/0053CCE8.mio0"; align(4)
dk256:
insert "extract/mio0/0053D434.mio0"; align(4)
dk257:
insert "extract/mio0/0053DB8C.mio0"; align(4)
dk258:
insert "extract/mio0/0053E2B4.mio0"; align(4)
dk259:
insert "extract/mio0/0053E9EC.mio0"; align(4)
dk260:
insert "extract/mio0/0053F130.mio0"; align(4)
dk261:
insert "extract/mio0/0053F870.mio0"; align(4)
dk262:
insert "extract/mio0/0053FFB0.mio0"; align(4)
dk263:
insert "extract/mio0/005406CC.mio0"; align(4)
dk264:
insert "extract/mio0/00540DD8.mio0"; align(4)
dk265:
insert "extract/mio0/00541504.mio0"; align(4)
dk266:
insert "extract/mio0/00541C24.mio0"; align(4)
dk267:
insert "extract/mio0/00542314.mio0"; align(4)
dk268:
insert "extract/mio0/00542A00.mio0"; align(4)
dk269:
insert "extract/mio0/005430BC.mio0"; align(4)
dk270:
insert "extract/mio0/005437F8.mio0"; align(4)
dk271:
insert "extract/mio0/00543F6C.mio0"; align(4)
dk272:
insert "extract/mio0/005446D4.mio0"; align(4)
dk273:
insert "extract/mio0/00544E60.mio0"; align(4)
dk274:
insert "extract/mio0/005455C4.mio0"; align(4)
dk275:
insert "extract/mio0/00545D40.mio0"; align(4)
dk276:
insert "extract/mio0/0054649C.mio0"; align(4)
dk277:
insert "extract/mio0/00546BFC.mio0"; align(4)
dk278:
insert "extract/mio0/00547340.mio0"; align(4)
dk279:
insert "extract/mio0/00547A74.mio0"; align(4)
dk280:
insert "extract/mio0/005481B4.mio0"; align(4)
dk281:
insert "extract/mio0/005488E4.mio0"; align(4)
dk282:
insert "extract/mio0/00549008.mio0"; align(4)
dk283:
insert "extract/mio0/00549704.mio0"; align(4)
dk284:
insert "extract/mio0/00549DF8.mio0"; align(4)
dk285:
insert "extract/mio0/0054A4D4.mio0"; align(4)
dk286:
insert "extract/mio0/0054AB84.mio0"; align(4)
dk287:
insert "extract/mio0/0054B200.mio0"; align(4)
dk288:
insert "extract/mio0/0054B85C.mio0"; align(4)
dk289:
insert "extract/mio0/0054BEA8.mio0"; align(4)
dk290:
insert "extract/mio0/0054C558.mio0"; align(4)
dk291:
insert "extract/mio0/0054CC18.mio0"; align(4)
dk292:
insert "extract/mio0/0054D2BC.mio0"; align(4)
dk293:
insert "extract/mio0/0054D98C.mio0"; align(4)
dk294:
insert "extract/mio0/0054DFE0.mio0"; align(4)
dk295:
insert "extract/mio0/0054E668.mio0"; align(4)
dk296:
insert "extract/mio0/0054ED50.mio0"; align(4)
dk297:
insert "extract/mio0/0054F494.mio0"; align(4)
dk298:
insert "extract/mio0/0054FB6C.mio0"; align(4)
dk299:
insert "extract/mio0/005502B8.mio0"; align(4)
dk300:
insert "extract/mio0/0055099C.mio0"; align(4)
dk301:
insert "extract/mio0/00551038.mio0"; align(4)
dk302:
insert "extract/mio0/00551700.mio0"; align(4)
dk303:
insert "extract/mio0/00551E20.mio0"; align(4)
dk304:
insert "extract/mio0/0055258C.mio0"; align(4)
dk305:
insert "extract/mio0/00552D04.mio0"; align(4)
dk306:
insert "extract/mio0/00553308.mio0"; align(4)
dk307:
insert "extract/mio0/005539F0.mio0"; align(4)
dk308:
insert "extract/mio0/005540B4.mio0"; align(4)
dk309:
insert "extract/mio0/00554758.mio0"; align(4)
dk310:
insert "extract/mio0/00554DE4.mio0"; align(4)
dk311:
insert "extract/mio0/00555450.mio0"; align(4)
dk312:
insert "extract/mio0/00555B68.mio0"; align(4)
dk313:
insert "extract/mio0/00556284.mio0"; align(4)
dk314:
insert "extract/mio0/00556960.mio0"; align(4)
dk315:
insert "extract/mio0/005570D4.mio0"; align(4)
dk316:
insert "extract/mio0/005577FC.mio0"; align(4)
dk317:
insert "extract/mio0/00557E8C.mio0"; align(4)
dk318:
insert "extract/mio0/00558554.mio0"; align(4)
dk319:
insert "extract/mio0/00558C1C.mio0"; align(4)
dk320:
insert "extract/mio0/00559374.mio0"; align(4)
// 0F414674/559AE4: DK wheel palettes
PalDK559AE4:
insert "extract/palettes/00559AE4.bin"
PalDK55C4E4:
insert "extract/palettes/0055C4E4.bin"
PalDK55EEE4:
insert "extract/palettes/0055EEE4.bin"
PalDK5618E4:
insert "extract/palettes/005618E4.bin"
PalDK5642E4:
insert "extract/palettes/005642E4.bin"
PalDK566CE4:
insert "extract/palettes/00566CE4.bin"
PalDK5696E4:
insert "extract/palettes/005696E4.bin"
PalDK56C0E4:
insert "extract/palettes/0056C0E4.bin"
PalDK56EAE4:
insert "extract/palettes/0056EAE4.bin"
PalDK5714E4:
insert "extract/palettes/005714E4.bin"
PalDK573CE4:
insert "extract/palettes/00573CE4.bin"
PalDK5764E4:
insert "extract/palettes/005764E4.bin"
PalDK578CE4:
insert "extract/palettes/00578CE4.bin"
PalDK57B4E4:
insert "extract/palettes/0057B4E4.bin"
// 0F438874/57DCE4: DK kart palette
PaletteDK:
insert "extract/palettes/0057DCE4.bin"
align(0x10)

// 0F438A00/57DE70
bowser000:
insert "extract/mio0/0057DE70.mio0"; align(4)
bowser001:
insert "extract/mio0/0057E4C8.mio0"; align(4)
bowser002:
insert "extract/mio0/0057EB4C.mio0"; align(4)
bowser003:
insert "extract/mio0/0057F1CC.mio0"; align(4)
bowser004:
insert "extract/mio0/0057F830.mio0"; align(4)
bowser005:
insert "extract/mio0/0057FED0.mio0"; align(4)
bowser006:
insert "extract/mio0/00580580.mio0"; align(4)
bowser007:
insert "extract/mio0/00580C64.mio0"; align(4)
bowser008:
insert "extract/mio0/00581380.mio0"; align(4)
bowser009:
insert "extract/mio0/00581AAC.mio0"; align(4)
bowser010:
insert "extract/mio0/005821F8.mio0"; align(4)
bowser011:
insert "extract/mio0/00582964.mio0"; align(4)
bowser012:
insert "extract/mio0/005830DC.mio0"; align(4)
bowser013:
insert "extract/mio0/00583858.mio0"; align(4)
bowser014:
insert "extract/mio0/00583FF8.mio0"; align(4)
bowser015:
insert "extract/mio0/005847AC.mio0"; align(4)
bowser016:
insert "extract/mio0/00584F64.mio0"; align(4)
bowser017:
insert "extract/mio0/00585734.mio0"; align(4)
bowser018:
insert "extract/mio0/00585EF4.mio0"; align(4)
bowser019:
insert "extract/mio0/005866A8.mio0"; align(4)
bowser020:
insert "extract/mio0/00586E84.mio0"; align(4)
bowser021:
insert "extract/mio0/00587658.mio0"; align(4)
bowser022:
insert "extract/mio0/00587CCC.mio0"; align(4)
bowser023:
insert "extract/mio0/0058836C.mio0"; align(4)
bowser024:
insert "extract/mio0/005889F4.mio0"; align(4)
bowser025:
insert "extract/mio0/00589078.mio0"; align(4)
bowser026:
insert "extract/mio0/00589708.mio0"; align(4)
bowser027:
insert "extract/mio0/00589DC8.mio0"; align(4)
bowser028:
insert "extract/mio0/0058A4E0.mio0"; align(4)
bowser029:
insert "extract/mio0/0058AC10.mio0"; align(4)
bowser030:
insert "extract/mio0/0058B35C.mio0"; align(4)
bowser031:
insert "extract/mio0/0058BAC0.mio0"; align(4)
bowser032:
insert "extract/mio0/0058C24C.mio0"; align(4)
bowser033:
insert "extract/mio0/0058C9DC.mio0"; align(4)
bowser034:
insert "extract/mio0/0058D198.mio0"; align(4)
bowser035:
insert "extract/mio0/0058D95C.mio0"; align(4)
bowser036:
insert "extract/mio0/0058E12C.mio0"; align(4)
bowser037:
insert "extract/mio0/0058E8F0.mio0"; align(4)
bowser038:
insert "extract/mio0/0058F0C4.mio0"; align(4)
bowser039:
insert "extract/mio0/0058F890.mio0"; align(4)
bowser040:
insert "extract/mio0/00590078.mio0"; align(4)
bowser041:
insert "extract/mio0/00590854.mio0"; align(4)
bowser042:
insert "extract/mio0/0059105C.mio0"; align(4)
bowser043:
insert "extract/mio0/005916FC.mio0"; align(4)
bowser044:
insert "extract/mio0/00591DB8.mio0"; align(4)
bowser045:
insert "extract/mio0/00592464.mio0"; align(4)
bowser046:
insert "extract/mio0/00592B24.mio0"; align(4)
bowser047:
insert "extract/mio0/00593204.mio0"; align(4)
bowser048:
insert "extract/mio0/005938EC.mio0"; align(4)
bowser049:
insert "extract/mio0/00594010.mio0"; align(4)
bowser050:
insert "extract/mio0/00594774.mio0"; align(4)
bowser051:
insert "extract/mio0/00594EE8.mio0"; align(4)
bowser052:
insert "extract/mio0/00595698.mio0"; align(4)
bowser053:
insert "extract/mio0/00595E3C.mio0"; align(4)
bowser054:
insert "extract/mio0/00596604.mio0"; align(4)
bowser055:
insert "extract/mio0/00596DD0.mio0"; align(4)
bowser056:
insert "extract/mio0/00597590.mio0"; align(4)
bowser057:
insert "extract/mio0/00597D80.mio0"; align(4)
bowser058:
insert "extract/mio0/0059855C.mio0"; align(4)
bowser059:
insert "extract/mio0/00598D40.mio0"; align(4)
bowser060:
insert "extract/mio0/00599528.mio0"; align(4)
bowser061:
insert "extract/mio0/00599D24.mio0"; align(4)
bowser062:
insert "extract/mio0/0059A53C.mio0"; align(4)
bowser063:
insert "extract/mio0/0059AD60.mio0"; align(4)
bowser064:
insert "extract/mio0/0059B42C.mio0"; align(4)
bowser065:
insert "extract/mio0/0059BB08.mio0"; align(4)
bowser066:
insert "extract/mio0/0059C208.mio0"; align(4)
bowser067:
insert "extract/mio0/0059C8E8.mio0"; align(4)
bowser068:
insert "extract/mio0/0059CFBC.mio0"; align(4)
bowser069:
insert "extract/mio0/0059D6DC.mio0"; align(4)
bowser070:
insert "extract/mio0/0059DE2C.mio0"; align(4)
bowser071:
insert "extract/mio0/0059E594.mio0"; align(4)
bowser072:
insert "extract/mio0/0059ED14.mio0"; align(4)
bowser073:
insert "extract/mio0/0059F4D8.mio0"; align(4)
bowser074:
insert "extract/mio0/0059FC98.mio0"; align(4)
bowser075:
insert "extract/mio0/005A046C.mio0"; align(4)
bowser076:
insert "extract/mio0/005A0C44.mio0"; align(4)
bowser077:
insert "extract/mio0/005A142C.mio0"; align(4)
bowser078:
insert "extract/mio0/005A1C2C.mio0"; align(4)
bowser079:
insert "extract/mio0/005A2444.mio0"; align(4)
bowser080:
insert "extract/mio0/005A2C48.mio0"; align(4)
bowser081:
insert "extract/mio0/005A3460.mio0"; align(4)
bowser082:
insert "extract/mio0/005A3C74.mio0"; align(4)
bowser083:
insert "extract/mio0/005A4494.mio0"; align(4)
bowser084:
insert "extract/mio0/005A4CB8.mio0"; align(4)
bowser085:
insert "extract/mio0/005A5394.mio0"; align(4)
bowser086:
insert "extract/mio0/005A5A78.mio0"; align(4)
bowser087:
insert "extract/mio0/005A6178.mio0"; align(4)
bowser088:
insert "extract/mio0/005A6864.mio0"; align(4)
bowser089:
insert "extract/mio0/005A6F78.mio0"; align(4)
bowser090:
insert "extract/mio0/005A76B0.mio0"; align(4)
bowser091:
insert "extract/mio0/005A7E10.mio0"; align(4)
bowser092:
insert "extract/mio0/005A85A4.mio0"; align(4)
bowser093:
insert "extract/mio0/005A8D4C.mio0"; align(4)
bowser094:
insert "extract/mio0/005A9528.mio0"; align(4)
bowser095:
insert "extract/mio0/005A9D0C.mio0"; align(4)
bowser096:
insert "extract/mio0/005AA500.mio0"; align(4)
bowser097:
insert "extract/mio0/005AAD04.mio0"; align(4)
bowser098:
insert "extract/mio0/005AB514.mio0"; align(4)
bowser099:
insert "extract/mio0/005ABD2C.mio0"; align(4)
bowser100:
insert "extract/mio0/005AC540.mio0"; align(4)
bowser101:
insert "extract/mio0/005ACD5C.mio0"; align(4)
bowser102:
insert "extract/mio0/005AD590.mio0"; align(4)
bowser103:
insert "extract/mio0/005ADDC4.mio0"; align(4)
bowser104:
insert "extract/mio0/005AE5F8.mio0"; align(4)
bowser105:
insert "extract/mio0/005AEE40.mio0"; align(4)
bowser106:
insert "extract/mio0/005AF528.mio0"; align(4)
bowser107:
insert "extract/mio0/005AFC38.mio0"; align(4)
bowser108:
insert "extract/mio0/005B0348.mio0"; align(4)
bowser109:
insert "extract/mio0/005B0A6C.mio0"; align(4)
bowser110:
insert "extract/mio0/005B1190.mio0"; align(4)
bowser111:
insert "extract/mio0/005B1904.mio0"; align(4)
bowser112:
insert "extract/mio0/005B2094.mio0"; align(4)
bowser113:
insert "extract/mio0/005B2844.mio0"; align(4)
bowser114:
insert "extract/mio0/005B3008.mio0"; align(4)
bowser115:
insert "extract/mio0/005B37E0.mio0"; align(4)
bowser116:
insert "extract/mio0/005B3FC0.mio0"; align(4)
bowser117:
insert "extract/mio0/005B47E0.mio0"; align(4)
bowser118:
insert "extract/mio0/005B4FE4.mio0"; align(4)
bowser119:
insert "extract/mio0/005B5808.mio0"; align(4)
bowser120:
insert "extract/mio0/005B6040.mio0"; align(4)
bowser121:
insert "extract/mio0/005B6868.mio0"; align(4)
bowser122:
insert "extract/mio0/005B70A4.mio0"; align(4)
bowser123:
insert "extract/mio0/005B78C8.mio0"; align(4)
bowser124:
insert "extract/mio0/005B8118.mio0"; align(4)
bowser125:
insert "extract/mio0/005B8938.mio0"; align(4)
bowser126:
insert "extract/mio0/005B91A8.mio0"; align(4)
bowser127:
insert "extract/mio0/005B98B4.mio0"; align(4)
bowser128:
insert "extract/mio0/005B9FEC.mio0"; align(4)
bowser129:
insert "extract/mio0/005BA714.mio0"; align(4)
bowser130:
insert "extract/mio0/005BAE50.mio0"; align(4)
bowser131:
insert "extract/mio0/005BB5B0.mio0"; align(4)
bowser132:
insert "extract/mio0/005BBD24.mio0"; align(4)
bowser133:
insert "extract/mio0/005BC4CC.mio0"; align(4)
bowser134:
insert "extract/mio0/005BCC94.mio0"; align(4)
bowser135:
insert "extract/mio0/005BD464.mio0"; align(4)
bowser136:
insert "extract/mio0/005BDC5C.mio0"; align(4)
bowser137:
insert "extract/mio0/005BE450.mio0"; align(4)
bowser138:
insert "extract/mio0/005BEC74.mio0"; align(4)
bowser139:
insert "extract/mio0/005BF4AC.mio0"; align(4)
bowser140:
insert "extract/mio0/005BFCE8.mio0"; align(4)
bowser141:
insert "extract/mio0/005C0534.mio0"; align(4)
bowser142:
insert "extract/mio0/005C0D74.mio0"; align(4)
bowser143:
insert "extract/mio0/005C15B4.mio0"; align(4)
bowser144:
insert "extract/mio0/005C1E08.mio0"; align(4)
bowser145:
insert "extract/mio0/005C2670.mio0"; align(4)
bowser146:
insert "extract/mio0/005C2EC0.mio0"; align(4)
bowser147:
insert "extract/mio0/005C373C.mio0"; align(4)
bowser148:
insert "extract/mio0/005C3E7C.mio0"; align(4)
bowser149:
insert "extract/mio0/005C45C4.mio0"; align(4)
bowser150:
insert "extract/mio0/005C4D20.mio0"; align(4)
bowser151:
insert "extract/mio0/005C5484.mio0"; align(4)
bowser152:
insert "extract/mio0/005C5C04.mio0"; align(4)
bowser153:
insert "extract/mio0/005C63BC.mio0"; align(4)
bowser154:
insert "extract/mio0/005C6B98.mio0"; align(4)
bowser155:
insert "extract/mio0/005C738C.mio0"; align(4)
bowser156:
insert "extract/mio0/005C7B90.mio0"; align(4)
bowser157:
insert "extract/mio0/005C837C.mio0"; align(4)
bowser158:
insert "extract/mio0/005C8B7C.mio0"; align(4)
bowser159:
insert "extract/mio0/005C93B4.mio0"; align(4)
bowser160:
insert "extract/mio0/005C9BF0.mio0"; align(4)
bowser161:
insert "extract/mio0/005CA460.mio0"; align(4)
bowser162:
insert "extract/mio0/005CACCC.mio0"; align(4)
bowser163:
insert "extract/mio0/005CB514.mio0"; align(4)
bowser164:
insert "extract/mio0/005CBD84.mio0"; align(4)
bowser165:
insert "extract/mio0/005CC5F8.mio0"; align(4)
bowser166:
insert "extract/mio0/005CCE98.mio0"; align(4)
bowser167:
insert "extract/mio0/005CD720.mio0"; align(4)
bowser168:
insert "extract/mio0/005CDFB8.mio0"; align(4)
bowser169:
insert "extract/mio0/005CE70C.mio0"; align(4)
bowser170:
insert "extract/mio0/005CEE84.mio0"; align(4)
bowser171:
insert "extract/mio0/005CF600.mio0"; align(4)
bowser172:
insert "extract/mio0/005CFD90.mio0"; align(4)
bowser173:
insert "extract/mio0/005D0564.mio0"; align(4)
bowser174:
insert "extract/mio0/005D0D2C.mio0"; align(4)
bowser175:
insert "extract/mio0/005D151C.mio0"; align(4)
bowser176:
insert "extract/mio0/005D1D28.mio0"; align(4)
bowser177:
insert "extract/mio0/005D252C.mio0"; align(4)
bowser178:
insert "extract/mio0/005D2D54.mio0"; align(4)
bowser179:
insert "extract/mio0/005D3588.mio0"; align(4)
bowser180:
insert "extract/mio0/005D3DD0.mio0"; align(4)
bowser181:
insert "extract/mio0/005D4634.mio0"; align(4)
bowser182:
insert "extract/mio0/005D4EA8.mio0"; align(4)
bowser183:
insert "extract/mio0/005D573C.mio0"; align(4)
bowser184:
insert "extract/mio0/005D5FC8.mio0"; align(4)
bowser185:
insert "extract/mio0/005D6874.mio0"; align(4)
bowser186:
insert "extract/mio0/005D70F8.mio0"; align(4)
bowser187:
insert "extract/mio0/005D799C.mio0"; align(4)
bowser188:
insert "extract/mio0/005D8238.mio0"; align(4)
bowser189:
insert "extract/mio0/005D8AE8.mio0"; align(4)
bowser190:
insert "extract/mio0/005D9160.mio0"; align(4)
bowser191:
insert "extract/mio0/005D981C.mio0"; align(4)
bowser192:
insert "extract/mio0/005D9F44.mio0"; align(4)
bowser193:
insert "extract/mio0/005DA694.mio0"; align(4)
bowser194:
insert "extract/mio0/005DAE20.mio0"; align(4)
bowser195:
insert "extract/mio0/005DB5C8.mio0"; align(4)
bowser196:
insert "extract/mio0/005DBDAC.mio0"; align(4)
bowser197:
insert "extract/mio0/005DC5C0.mio0"; align(4)
bowser198:
insert "extract/mio0/005DCDEC.mio0"; align(4)
bowser199:
insert "extract/mio0/005DD680.mio0"; align(4)
bowser200:
insert "extract/mio0/005DDF28.mio0"; align(4)
bowser201:
insert "extract/mio0/005DE7FC.mio0"; align(4)
bowser202:
insert "extract/mio0/005DF0CC.mio0"; align(4)
bowser203:
insert "extract/mio0/005DF9B4.mio0"; align(4)
bowser204:
insert "extract/mio0/005E0288.mio0"; align(4)
bowser205:
insert "extract/mio0/005E0B48.mio0"; align(4)
bowser206:
insert "extract/mio0/005E13A8.mio0"; align(4)
bowser207:
insert "extract/mio0/005E1BE8.mio0"; align(4)
bowser208:
insert "extract/mio0/005E2430.mio0"; align(4)
bowser209:
insert "extract/mio0/005E2C60.mio0"; align(4)
bowser210:
insert "extract/mio0/005E3320.mio0"; align(4)
bowser211:
insert "extract/mio0/005E3A34.mio0"; align(4)
bowser212:
insert "extract/mio0/005E41B4.mio0"; align(4)
bowser213:
insert "extract/mio0/005E4968.mio0"; align(4)
bowser214:
insert "extract/mio0/005E5108.mio0"; align(4)
bowser215:
insert "extract/mio0/005E58E0.mio0"; align(4)
bowser216:
insert "extract/mio0/005E6114.mio0"; align(4)
bowser217:
insert "extract/mio0/005E6958.mio0"; align(4)
bowser218:
insert "extract/mio0/005E71C4.mio0"; align(4)
bowser219:
insert "extract/mio0/005E7A3C.mio0"; align(4)
bowser220:
insert "extract/mio0/005E82B4.mio0"; align(4)
bowser221:
insert "extract/mio0/005E8B70.mio0"; align(4)
bowser222:
insert "extract/mio0/005E942C.mio0"; align(4)
bowser223:
insert "extract/mio0/005E9CD0.mio0"; align(4)
bowser224:
insert "extract/mio0/005EA570.mio0"; align(4)
bowser225:
insert "extract/mio0/005EADF0.mio0"; align(4)
bowser226:
insert "extract/mio0/005EB620.mio0"; align(4)
bowser227:
insert "extract/mio0/005EBE3C.mio0"; align(4)
bowser228:
insert "extract/mio0/005EC658.mio0"; align(4)
bowser229:
insert "extract/mio0/005ECE34.mio0"; align(4)
bowser230:
insert "extract/mio0/005ED528.mio0"; align(4)
bowser231:
insert "extract/mio0/005EDC88.mio0"; align(4)
bowser232:
insert "extract/mio0/005EE434.mio0"; align(4)
bowser233:
insert "extract/mio0/005EEC04.mio0"; align(4)
bowser234:
insert "extract/mio0/005EF408.mio0"; align(4)
bowser235:
insert "extract/mio0/005EFC30.mio0"; align(4)
bowser236:
insert "extract/mio0/005F0478.mio0"; align(4)
bowser237:
insert "extract/mio0/005F0CD4.mio0"; align(4)
bowser238:
insert "extract/mio0/005F153C.mio0"; align(4)
bowser239:
insert "extract/mio0/005F1DBC.mio0"; align(4)
bowser240:
insert "extract/mio0/005F2654.mio0"; align(4)
bowser241:
insert "extract/mio0/005F2F04.mio0"; align(4)
bowser242:
insert "extract/mio0/005F3754.mio0"; align(4)
bowser243:
insert "extract/mio0/005F3FE4.mio0"; align(4)
bowser244:
insert "extract/mio0/005F485C.mio0"; align(4)
bowser245:
insert "extract/mio0/005F5098.mio0"; align(4)
bowser246:
insert "extract/mio0/005F5898.mio0"; align(4)
bowser247:
insert "extract/mio0/005F6070.mio0"; align(4)
bowser248:
insert "extract/mio0/005F6850.mio0"; align(4)
bowser249:
insert "extract/mio0/005F700C.mio0"; align(4)
bowser250:
insert "extract/mio0/005F774C.mio0"; align(4)
bowser251:
insert "extract/mio0/005F7EDC.mio0"; align(4)
bowser252:
insert "extract/mio0/005F86A0.mio0"; align(4)
bowser253:
insert "extract/mio0/005F8E98.mio0"; align(4)
bowser254:
insert "extract/mio0/005F96AC.mio0"; align(4)
bowser255:
insert "extract/mio0/005F9EEC.mio0"; align(4)
bowser256:
insert "extract/mio0/005FA764.mio0"; align(4)
bowser257:
insert "extract/mio0/005FAFE8.mio0"; align(4)
bowser258:
insert "extract/mio0/005FB858.mio0"; align(4)
bowser259:
insert "extract/mio0/005FC0EC.mio0"; align(4)
bowser260:
insert "extract/mio0/005FC988.mio0"; align(4)
bowser261:
insert "extract/mio0/005FD220.mio0"; align(4)
bowser262:
insert "extract/mio0/005FDA90.mio0"; align(4)
bowser263:
insert "extract/mio0/005FE2D0.mio0"; align(4)
bowser264:
insert "extract/mio0/005FEAFC.mio0"; align(4)
bowser265:
insert "extract/mio0/005FF304.mio0"; align(4)
bowser266:
insert "extract/mio0/005FFAD8.mio0"; align(4)
bowser267:
insert "extract/mio0/0060027C.mio0"; align(4)
bowser268:
insert "extract/mio0/00600A14.mio0"; align(4)
bowser269:
insert "extract/mio0/00601184.mio0"; align(4)
bowser270:
insert "extract/mio0/00601930.mio0"; align(4)
bowser271:
insert "extract/mio0/006020F8.mio0"; align(4)
bowser272:
insert "extract/mio0/006028D8.mio0"; align(4)
bowser273:
insert "extract/mio0/006030F8.mio0"; align(4)
bowser274:
insert "extract/mio0/00603940.mio0"; align(4)
bowser275:
insert "extract/mio0/006041D0.mio0"; align(4)
bowser276:
insert "extract/mio0/00604A6C.mio0"; align(4)
bowser277:
insert "extract/mio0/00605310.mio0"; align(4)
bowser278:
insert "extract/mio0/00605B90.mio0"; align(4)
bowser279:
insert "extract/mio0/00606428.mio0"; align(4)
bowser280:
insert "extract/mio0/00606C90.mio0"; align(4)
bowser281:
insert "extract/mio0/006074F4.mio0"; align(4)
bowser282:
insert "extract/mio0/00607D54.mio0"; align(4)
bowser283:
insert "extract/mio0/00608564.mio0"; align(4)
bowser284:
insert "extract/mio0/00608D34.mio0"; align(4)
bowser285:
insert "extract/mio0/006094DC.mio0"; align(4)
bowser286:
insert "extract/mio0/00609C48.mio0"; align(4)
bowser287:
insert "extract/mio0/0060A380.mio0"; align(4)
bowser288:
insert "extract/mio0/0060AAAC.mio0"; align(4)
bowser289:
insert "extract/mio0/0060B1A8.mio0"; align(4)
bowser290:
insert "extract/mio0/0060B80C.mio0"; align(4)
bowser291:
insert "extract/mio0/0060BE98.mio0"; align(4)
bowser292:
insert "extract/mio0/0060C5B0.mio0"; align(4)
bowser293:
insert "extract/mio0/0060CD70.mio0"; align(4)
bowser294:
insert "extract/mio0/0060D470.mio0"; align(4)
bowser295:
insert "extract/mio0/0060DC1C.mio0"; align(4)
bowser296:
insert "extract/mio0/0060E3FC.mio0"; align(4)
bowser297:
insert "extract/mio0/0060EBC0.mio0"; align(4)
bowser298:
insert "extract/mio0/0060F2D0.mio0"; align(4)
bowser299:
insert "extract/mio0/0060FA04.mio0"; align(4)
bowser300:
insert "extract/mio0/00610168.mio0"; align(4)
bowser301:
insert "extract/mio0/006108E8.mio0"; align(4)
bowser302:
insert "extract/mio0/0061109C.mio0"; align(4)
bowser303:
insert "extract/mio0/006118D4.mio0"; align(4)
bowser304:
insert "extract/mio0/006120AC.mio0"; align(4)
bowser305:
insert "extract/mio0/006127F8.mio0"; align(4)
bowser306:
insert "extract/mio0/00612DC8.mio0"; align(4)
bowser307:
insert "extract/mio0/006134D0.mio0"; align(4)
bowser308:
insert "extract/mio0/00613C60.mio0"; align(4)
bowser309:
insert "extract/mio0/00614440.mio0"; align(4)
bowser310:
insert "extract/mio0/00614B7C.mio0"; align(4)
bowser311:
insert "extract/mio0/00615334.mio0"; align(4)
bowser312:
insert "extract/mio0/00615B2C.mio0"; align(4)
bowser313:
insert "extract/mio0/006162C4.mio0"; align(4)
bowser314:
insert "extract/mio0/006169DC.mio0"; align(4)
bowser315:
insert "extract/mio0/0061710C.mio0"; align(4)
bowser316:
insert "extract/mio0/00617854.mio0"; align(4)
bowser317:
insert "extract/mio0/00617FDC.mio0"; align(4)
bowser318:
insert "extract/mio0/0061873C.mio0"; align(4)
bowser319:
insert "extract/mio0/00618F40.mio0"; align(4)
bowser320:
insert "extract/mio0/00619730.mio0"; align(4)
// 0F4D4A88/619EF8: Bowser wheel palettes
PalBowser619EF8:
insert "extract/palettes/00619EF8.bin"
PalBowser61C8F8:
insert "extract/palettes/0061C8F8.bin"
PalBowser61F2F8:
insert "extract/palettes/0061F2F8.bin"
PalBowser621CF8:
insert "extract/palettes/00621CF8.bin"
PalBowser6246F8:
insert "extract/palettes/006246F8.bin"
PalBowser6270F8:
insert "extract/palettes/006270F8.bin"
PalBowser629AF8:
insert "extract/palettes/00629AF8.bin"
PalBowser62C4F8:
insert "extract/palettes/0062C4F8.bin"
PalBowser62EEF8:
insert "extract/palettes/0062EEF8.bin"
PalBowser6318F8:
insert "extract/palettes/006318F8.bin"
PalBowser6340F8:
insert "extract/palettes/006340F8.bin"
PalBowser6368F8:
insert "extract/palettes/006368F8.bin"
PalBowser6390F8:
insert "extract/palettes/006390F8.bin"
PalBowser63B8F8:
insert "extract/palettes/0063B8F8.bin"
// 0F4F8C88/63E0F8: Bowser kart palette
PaletteBowser:
insert "extract/palettes/0063E0F8.bin"
align(0x10)
