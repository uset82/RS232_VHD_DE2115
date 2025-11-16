## Standalone Simulation Folders

The `sim` directory isolates self-contained ModelSim/Questa setups for each
functional block so you can run tests without touching the Quartus-generated
`simulation/questa` trees.

- `sim/sender` → contains `../../src/sender.vhd` + `sender.vht`
- `sim/mottaker` → contains `../../src/mottaker.vhd` + `mottaker.vht`
- `sim/loopback` → links both RTL blocks + `tb_loopback.vht`

Each folder contains a dedicated `run.do` script that:

1. Creates a fresh local `work` library.
2. Compiles the required RTL from `../../src`.
3. Compiles the local testbench.
4. Launches `vsim` with useful `+acc` visibility and preloads key signals.

### How to use

```tcl
cd C:/Quartus_ELE111/RS232_CCM/sim/sender
vsim -do run.do
```

Swap `sender` with `mottaker` or `loopback` to exercise the other scenarios.
The scripts run for a default duration (2 µs, 200 µs, 500 µs respectively); feel
free to edit the `run` command or add additional checks if you need longer
stimulus.

Because the scripts reference RTL via `../../src/...`, they automatically pick
up any changes you make in the shared `src` folder, keeping the simulation
copies in sync without additional manual steps.

