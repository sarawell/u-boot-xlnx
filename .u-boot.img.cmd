cmd_u-boot.img := ./tools/mkimage -A arm -T firmware -C none -O u-boot -a 0x4000000 -e 0x4000000 -n "U-Boot 2017.01-03256-g92e3dd6-dirty for zynq board" -d u-boot.bin u-boot.img  >/dev/null
