## `sim/loopback`

Full end-to-end ModelSim bench that wires the transmitter and receiver
(`sender.vhd` + `mottaker.vhd`) together and sweeps every baud rate/data pattern.

### How to run

```tcl
cd C:/Quartus_ELE111/RS232_CCM/sim/loopback
vdel -lib work -all   ;# optional cleanup if you ran other benches
vsim -do run.do       ;# compiles RTL + tb, runs for 500 µs
```

The script automatically:
1. Rebuilds the local `work` library.
2. Compiles the RTL and `tb_loopback.vht`.
3. Launches `vsim work.tb_loopback -voptargs=+acc`.
4. Clears the Wave window and adds only the signals needed for documentation:

| Signal | Purpose |
| ------ | ------- |
| `tx_dataIn` | Pattern selected by the sender (hex radix) |
| `txReady` | Indicates when the sender can accept the next byte |
| `serial_line` | Physical link between TX and RX |
| `rx_dataOut` | Receiver output byte (hex radix) |
| `rx_dataValid` | Pulses when the receiver accepts a byte |
| `rx_error` | Flags framing errors (should stay low) |
| `baud_rate_divider` | Shows the active divider during each sweep |
| `bytes_sent / bytes_received` | Counters that should match (16) at the end |

Let the simulation finish (`run 500 us`). The transcript ends with
“TEST PASSED: All bytes transmitted and received correctly!” and the Wave window
is ready to be captured as Figure 3‑3 for the project report.

