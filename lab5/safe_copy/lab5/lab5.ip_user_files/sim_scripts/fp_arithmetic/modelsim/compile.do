vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_1_0_0/sim/fp_arithmetic_Modulul_1_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_7_0_0/sim/fp_arithmetic_Modulul_7_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_2_0_0/sim/fp_arithmetic_Modulul_2_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_4_0_0/sim/fp_arithmetic_Modulul_4_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_5_0_0/sim/fp_arithmetic_Modulul_5_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_3_0_0/sim/fp_arithmetic_Modulul_3_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Modulul_6_0_0/sim/fp_arithmetic_Modulul_6_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_16_biti_0_0/sim/fp_arithmetic_Registru_16_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_48_biti_0_0/sim/fp_arithmetic_Registru_48_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_57_biti_0_0/sim/fp_arithmetic_Registru_57_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_16_biti_1_0/sim/fp_arithmetic_Registru_16_biti_1_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_48_biti_1_0/sim/fp_arithmetic_Registru_48_biti_1_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_8_biti_0_0/sim/fp_arithmetic_Registru_8_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_26_biti_0_0/sim/fp_arithmetic_Registru_26_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_8_biti_1_0/sim/fp_arithmetic_Registru_8_biti_1_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_24_biti_0_0/sim/fp_arithmetic_Registru_24_biti_0_0.v" \
"../../../bd/fp_arithmetic/ip/fp_arithmetic_Registru_8_biti_2_0/sim/fp_arithmetic_Registru_8_biti_2_0.v" \
"../../../bd/fp_arithmetic/sim/fp_arithmetic.v" \


vlog -work xil_defaultlib \
"glbl.v"

