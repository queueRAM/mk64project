# Makefile to update character and TKMK00 textures

################ Target Executable and Sources ###############

CHARACTER_TARGET = mk64.characters.z64
TKMK00_TARGET = mk64.tkmk00.z64

MIO0_DIR = extract/mio0
TKMK_DIR = extract/tkmk00

MIO0_FILES = \
   00729A30.mio0 \
   0072A704.mio0 \
   0072B3C4.mio0 \
   0072C080.mio0 \
   0072CCEC.mio0 \
   0072D938.mio0 \
   0072E578.mio0 \
   0072F28C.mio0 \
   0072FF98.mio0 \
   00730C9C.mio0 \
   0073197C.mio0 \
   00732678.mio0 \
   00733374.mio0 \
   007340B8.mio0 \
   00734E0C.mio0 \
   00735BB0.mio0 \
   00736950.mio0 \
   00737494.mio0 \
   007380B0.mio0 \
   00738CD0.mio0 \
   007398F0.mio0 \
   0073A4D8.mio0 \
   0073B0C0.mio0 \
   0073BC8C.mio0 \
   0073C8B4.mio0 \
   0073D4E8.mio0 \
   0073E174.mio0 \
   0073EDF4.mio0 \
   0073FA84.mio0 \
   00740744.mio0 \
   00741474.mio0 \
   007421A0.mio0 \
   00742EE8.mio0 \
   00743C3C.mio0 \
   00744674.mio0 \
   0074552C.mio0 \
   007463D8.mio0 \
   00747294.mio0 \
   0074814C.mio0 \
   00748FD4.mio0 \
   00749E74.mio0 \
   0074AD3C.mio0 \
   0074BC2C.mio0 \
   0074CB3C.mio0 \
   0074DAF0.mio0 \
   0074EAD4.mio0 \
   0074FB20.mio0 \
   00750B58.mio0 \
   00751B3C.mio0 \
   00752AD0.mio0 \
   00753A58.mio0 \
   00754900.mio0 \
   007552BC.mio0 \
   00755C70.mio0 \
   0075662C.mio0 \
   00756FE4.mio0 \
   007579A0.mio0 \
   00758340.mio0 \
   00758CD8.mio0 \
   007596A4.mio0 \
   0075A058.mio0 \
   0075AA40.mio0 \
   0075B454.mio0 \
   0075BEAC.mio0 \
   0075C90C.mio0 \
   0075D38C.mio0 \
   0075DE00.mio0 \
   0075E860.mio0 \
   0075F1C4.mio0 \
   0075FCB0.mio0 \
   00760794.mio0 \
   00761274.mio0 \
   00761D28.mio0 \
   00762798.mio0 \
   007631E0.mio0 \
   00763D04.mio0 \
   00764730.mio0 \
   007650EC.mio0 \
   00765A98.mio0 \
   00766458.mio0 \
   00766E68.mio0 \
   007678C4.mio0 \
   007683A4.mio0 \
   00768EAC.mio0 \
   007699C4.mio0 \
   0076A4EC.mio0 \
   0076B2D8.mio0 \
   0076C0E0.mio0 \
   0076CEC0.mio0 \
   0076DC70.mio0 \
   0076EA18.mio0 \
   0076F7FC.mio0 \
   00770628.mio0 \
   007714BC.mio0 \
   00772398.mio0 \
   007732E0.mio0 \
   00774218.mio0 \
   0077519C.mio0 \
   007761A0.mio0 \
   00777160.mio0 \
   007780AC.mio0 \
   00778FAC.mio0 \
   00779F00.mio0 \
   0077B060.mio0 \
   0077C1A4.mio0 \
   0077D2F8.mio0 \
   0077E460.mio0 \
   0077F5B4.mio0 \
   00780710.mio0 \
   00781884.mio0 \
   00782A5C.mio0 \
   00783C84.mio0 \
   00784EF0.mio0 \
   007861D0.mio0 \
   007874D8.mio0 \
   007887BC.mio0 \
   00789AE0.mio0 \
   0078ADCC.mio0 \
   0078C098.mio0 \
   0078D210.mio0 \
   0078E4F8.mio0 \
   0078F7AC.mio0 \
   00790A74.mio0 \
   00791D40.mio0 \
   00792FE4.mio0 \
   00794270.mio0 \
   0079554C.mio0 \
   00796834.mio0 \
   00797B24.mio0 \
   00798E40.mio0 \
   0079A10C.mio0 \
   0079B448.mio0 \
   0079C7EC.mio0 \
   0079DB68.mio0 \
   0079EEAC.mio0 \
   007A01F4.mio0

TKMK_FILES = \
   007FA3C0.tkmk00 \
   007FAFC0.tkmk00 \
   007FB8C0.tkmk00 \
   007FBAC0.tkmk00 \
   007FBCC0.tkmk00 \
   007FBEC0.tkmk00 \
   007FC0C0.tkmk00 \
   007FC2C0.tkmk00 \
   007FC4C0.tkmk00 \
   007FC6C0.tkmk00 \
   007FC8C0.tkmk00 \
   007FCDC0.tkmk00 \
   007FD2C0.tkmk00 \
   007FD7C0.tkmk00 \
   007FDDC0.tkmk00 \
   007FE1C0.tkmk00 \
   007FE6C0.tkmk00 \
   007FEBC0.tkmk00 \
   007FEFC0.tkmk00 \
   007FF3C0.tkmk00 \
   007FF7C0.tkmk00 \
   007FFCC0.tkmk00 \
   008000C0.tkmk00 \
   008004C0.tkmk00 \
   008008C0.tkmk00 \
   00800DC0.tkmk00 \
   008010C0.tkmk00 \
   008014C0.tkmk00 \
   008018C0.tkmk00 \
   00801EC0.tkmk00 \
   008021C0.tkmk00 \
   00802DC0.tkmk00 \
   008031C0.tkmk00 \
   008035C0.tkmk00 \
   008039C0.tkmk00 \
   00803DC0.tkmk00 \
   008049C0.tkmk00 \
   00804EC0.tkmk00 \
   008055C0.tkmk00 \
   00805FC0.tkmk00 \
   00806AC0.tkmk00 \
   00806DC0.tkmk00 \
   008071C0.tkmk00 \
   008075C0.tkmk00 \
   008078C0.tkmk00 \
   00807BC0.tkmk00 \
   00807EC0.tkmk00 \
   008080C0.tkmk00 \
   008082C0.tkmk00 \
   008084C0.tkmk00 \
   008086C0.tkmk00 \
   008089C0.tkmk00 \
   00808CC0.tkmk00 \
   00808EC0.tkmk00 \
   008090C0.tkmk00 \
   008092C0.tkmk00 \
   008094C0.tkmk00 \
   008162C0.tkmk00 \
   0081F6C0.tkmk00 \
   008202C0.tkmk00 \
   008209C0.tkmk00 \
   00820AC0.tkmk00 \
   00820FC0.tkmk00

MIO0_PATH_FILES = $(addprefix $(MIO0_DIR)/,$(MIO0_FILES))
TKMK_PATH_FILES = $(addprefix $(TKMK_DIR)/,$(TKMK_FILES))
####################### Tool Options #########################

TOOLS_DIR = ./tools
BASS = $(TOOLS_DIR)/bass
MIO0TOOL = $(TOOLS_DIR)/mio0
N64GRAPHICS = $(TOOLS_DIR)/n64graphics

ASFLAGS = -create

FixPath = $(subst /,\,$1)

######################## Targets #############################

default: all

all: $(CHARACTER_TARGET) $(TKMK00_TARGET)

$(MIO0_DIR)/%.mio0: $(MIO0_DIR)/%.bin
	$(MIO0TOOL) $< $@

$(CHARACTER_TARGET): $(MIO0_PATH_FILES)
$(TKMK00_TARGET): $(TKMK_PATH_FILES)

%.z64: %.asm
	$(BASS) $(ASFLAGS) -o $@ $<

clean:
	del /Q $(call FixPath,$(CHARACTER_TARGET) $(MIO0_PATH_FILES))


.PHONY: all clean default
.SECONDARY:
