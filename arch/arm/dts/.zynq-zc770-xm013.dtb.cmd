cmd_arch/arm/dts/zynq-zc770-xm013.dtb := mkdir -p arch/arm/dts/ ; cat arch/arm/dts/zynq-zc770-xm013.dts   | arm-xilinx-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/dts/.zynq-zc770-xm013.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynq-zc770-xm013.dtb.dts.tmp - ; dtc -O dtb -o arch/arm/dts/zynq-zc770-xm013.dtb -b 0 -i arch/arm/dts/  -d arch/arm/dts/.zynq-zc770-xm013.dtb.d.dtc.tmp arch/arm/dts/.zynq-zc770-xm013.dtb.dts.tmp ; cat arch/arm/dts/.zynq-zc770-xm013.dtb.d.pre.tmp arch/arm/dts/.zynq-zc770-xm013.dtb.d.dtc.tmp > arch/arm/dts/.zynq-zc770-xm013.dtb.d

source_arch/arm/dts/zynq-zc770-xm013.dtb := arch/arm/dts/zynq-7000.dtsi

deps_arch/arm/dts/zynq-zc770-xm013.dtb := \

arch/arm/dts/zynq-zc770-xm013.dtb: $(deps_arch/arm/dts/zynq-zc770-xm013.dtb)

$(deps_arch/arm/dts/zynq-zc770-xm013.dtb):
