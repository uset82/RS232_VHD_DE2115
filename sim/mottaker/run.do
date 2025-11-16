if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

vcom ../../src/mottaker.vhd
vcom mottaker.vht

vsim work.tb_mottaker -voptargs=+acc
if {[catch {wave delete -all}]} {
    # Wave window might be empty during the first run; ignore errors
}
add wave sim:/tb_mottaker/serial_line
add wave -radix unsigned sim:/tb_mottaker/baud_rate_divider
add wave -radix hex sim:/tb_mottaker/rx_dataOut
add wave sim:/tb_mottaker/rx_dataValid
add wave sim:/tb_mottaker/rx_error
add wave sim:/tb_mottaker/dut/state
add wave sim:/tb_mottaker/dut/baud_enable
run 200 us
