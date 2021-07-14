onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fp_arithmetic -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fp_arithmetic xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fp_arithmetic.udo}

run -all

endsim

quit -force
