# Omega MSX2+ ROMs

SYSTEM_ROMS_DIR=systemroms
CBIOS_ROMS_DIR=systemroms

PATCH_KEYS=1
PATCH_BACKSLASH=1
PATCH_VERSION=1

# Create MSX2+ NTSC ROMs 1 Backslash Patched

cat ${SYSTEM_ROMS_DIR}/phc-35j_basic-bios2p.rom > mkvomega_msx2+_fm_rom1.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #32k
cat ${SYSTEM_ROMS_DIR}/phc-35j_msx2psub.rom >> mkvomega_msx2+_fm_rom1.bin #16k
cat ${SYSTEM_ROMS_DIR}/phc-35j_kanjibasic.rom >> mkvomega_msx2+_fm_rom1.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #32k
dd if=/dev/zero ibs=1k count=16 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #16k
cat ${SYSTEM_ROMS_DIR}/phc-70fd2_fmbasic.rom >> mkvomega_msx2+_fm_rom1.bin #16k
dd if=/dev/zero ibs=1k count=16 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #16k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom1.bin #32k
# patch the keys
if [ "$PATCH_KEYS" -eq "1" ]; then
dd if=int_keys_patch.bin of=mkvomega_msx2+_fm_rom1.bin bs=1 seek=3529 conv=notrunc
fi
# patch the backslash
if [ "$PATCH_BACKSLASH" -eq "1" ]; then
dd if=backslash_patch.bin of=mkvomega_msx2+_fm_rom1.bin bs=1 seek=7839 conv=notrunc
fi

# Create MSX2+ NTSC ROMs 2

PATCH_KEYS=1
PATCH_BACKSLASH=0
PATCH_VERSION=0

cat ${SYSTEM_ROMS_DIR}/phc-35j_basic-bios2p.rom > mkvomega_msx2+_fm_rom2.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #32k
cat ${SYSTEM_ROMS_DIR}/phc-35j_msx2psub.rom >> mkvomega_msx2+_fm_rom2.bin #16k
cat ${SYSTEM_ROMS_DIR}/phc-35j_kanjibasic.rom >> mkvomega_msx2+_fm_rom2.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #32k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #32k
dd if=/dev/zero ibs=1k count=16 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #16k
cat ${SYSTEM_ROMS_DIR}/phc-70fd2_fmbasic.rom >> mkvomega_msx2+_fm_rom2.bin #16k
dd if=/dev/zero ibs=1k count=16 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #16k
dd if=/dev/zero ibs=1k count=32 | tr "\000" "\377" >> mkvomega_msx2+_fm_rom2.bin #32k
# patch the keys
if [ "$PATCH_KEYS" -eq "1" ]; then
dd if=int_keys_patch.bin of=mkvomega_msx2+_fm_rom2.bin bs=1 seek=3529 conv=notrunc
fi
# patch the backslash
if [ "$PATCH_BACKSLASH" -eq "1" ]; then
dd if=backslash_patch.bin of=mkvomega_msx2+_fm_rom2.bin bs=1 seek=7839 conv=notrunc
fi

#Create ROM 1+2 de 512kb

cat mkvomega_msx2+_fm_rom1.bin mkvomega_msx2+_fm_rom2.bin > mkvomega_msx2+_fm_roms.bin #512k
