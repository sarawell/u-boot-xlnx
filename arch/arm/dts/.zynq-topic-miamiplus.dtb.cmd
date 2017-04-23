cmd_arch/arm/dts/zynq-topic-miamiplus.dtb := mkdir -p arch/arm/dts/ ; cat arch/arm/dts/zynq-topic-miamiplus.dts   | arm-xilinx-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/dts/.zynq-topic-miamiplus.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.zynq-topic-miamiplus.dtb.dts.tmp - ; dtc -O dtb -o arch/arm/dts/zynq-topic-miamiplus.dtb -b 0 -i arch/arm/dts/  -d arch/arm/dts/.zynq-topic-miamiplus.dtb.d.dtc.tmp arch/arm/dts/.zynq-topic-miamiplus.dtb.dts.tmp ; cat arch/arm/dts/.zynq-topic-miamiplus.dtb.d.pre.tmp arch/arm/dts/.zynq-topic-miamiplus.dtb.d.dtc.tmp > arch/arm/dts/.zynq-topic-miamiplus.dtb.d

source_arch/arm/dts/zynq-topic-miamiplus.dtb := arch/arm/dts/zynq-topic-miami.dts

deps_arch/arm/dts/zynq-topic-miamiplus.dtb := \
  arch/arm/dts/zynq-7000.dtsi \

arch/arm/dts/zynq-topic-miamiplus.dtb: $(deps_arch/arm/dts/zynq-topic-miamiplus.dtb)

$(deps_arch/arm/dts/zynq-topic-miamiplus.dtb):
