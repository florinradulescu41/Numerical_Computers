onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.fp_arithmetic xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fp_arithmetic.udo}

run -all

quit -force
