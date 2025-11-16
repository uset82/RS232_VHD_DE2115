## `sim/mottaker`

Standalone ModelSim setup for the RS-232 receiver.

### What’s inside
- `mottaker.vht` – self-checking testbench that injects UART frames over four baud
  dividers (1 Mbps → 4 800 bps) and verifies `dataValidUt`/`error`.
- `run.do` – rebuilds the local `work` library, compiles `../../src/mottaker.vhd`
  plus the testbench, and launches a waveform tailored for documentation.

### How to run

```tcl
cd C:/Quartus_ELE111/RS232_CCM/sim/mottaker
vdel -lib work -all   ;# optional cleanup if you ran other benches in this shell
vsim -do run.do       ;# compiles RTL + tb, opens curated waveforms, runs 200 µs
```

> **Tip:** ModelSim writes its transcript to a file named `transcript` in the
> current directory. If you already have a folder with that name, delete/rename
> it or issue `transcript file mottaker_transcript.log` before running `vsim`.

### Signals captured by `run.do`

| Signal | Purpose |
| ------ | ------- |
| `serial_line` | Incoming RS-232 waveform (start/data/stop bits) |
| `baud_rate_divider` | Divider value being exercised (Unsigned radix) |
| `rx_dataOut` | Captured byte (Hex radix for readability) |
| `rx_dataValid` | Strobes once per successfully decoded frame |
| `rx_error` | Asserted if stop/start bit checks fail (should stay low) |
| `dut/state`, `dut/baud_enable` | Receiver FSM state and mid-bit sampling pulse |

Use the standard Wave toolbar to zoom on any baud segment, then export the image
for project documentation (Figure 3‑2 in `PROJECT_REPORT.md`).

