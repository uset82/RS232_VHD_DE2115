transcript on
if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

vcom ../../src/sender.vhd
vcom sender.vht

vsim work.tb_sender -voptargs=+acc
add wave -r sim:/tb_sender/*
run 2 us
