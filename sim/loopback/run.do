if {[file exists work]} {
    vdel -lib work -all
}
vlib work
vmap work work

vcom ../../src/sender.vhd
vcom ../../src/mottaker.vhd
vcom tb_loopback.vht

vsim work.tb_loopback -voptargs=+acc
if {[catch {wave delete -all}]} {
    # Ignore if the wave window is already empty
}
add wave -radix hex    sim:/tb_loopback/tx_dataIn
add wave               sim:/tb_loopback/txReady
add wave               sim:/tb_loopback/serial_line
add wave -radix hex    sim:/tb_loopback/rx_dataOut
add wave               sim:/tb_loopback/rx_dataValid
add wave               sim:/tb_loopback/rx_error
add wave -radix unsigned sim:/tb_loopback/baud_rate_divider
add wave               sim:/tb_loopback/bytes_sent
add wave               sim:/tb_loopback/bytes_received
run 500 us
wave zoomrange 0us 120us
