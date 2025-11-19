# RS-232 Communication System for DE2-115 FPGA

## ELE111 Semester Project 2025

A complete RS-232 communication system implementation on the Altera/Intel DE2-115 FPGA development board. This project implements the RS-232 protocol for point-to-point serial communication between two DE2-115 boards, following the ELE111 semester assignment specifications. The system features configurable baud rates, dual data sources, and comprehensive status visualization.

---

## 📋 Overview

This project implements a full RS-232 communication system following the RS-232 protocol standard. RS-232 is a standard for point-to-point communication over relatively short distances at low to medium data rates. The system enables two DE2-115 boards to communicate with each other, where one board acts as a transmitter (sender) and the other as a receiver.

**Key Components:**
- **RS-232 Transmitter (Sender)**: Implements RS-232 framing with start bit, 8 data bits, and stop bit
- **RS-232 Receiver (Mottaker)**: Implements RS-232 reception with start bit detection, mid-bit sampling, and stop bit validation
- **Configurable Baud Rate Generator**: Supports 8 different baud rates (4,800 to 1,000,000 baud) as specified in the assignment
- **Dual Data Sources**: Select between hardcoded test pattern (0xA5) or user-defined data from switches
- **Status Visualization**: Real-time feedback via LEDs and 7-segment displays
- **Hardware Verification**: SignalTap II Logic Analyzer integration for on-chip debugging

---

## ✨ Features

### Hardware Features
- ✅ **8 Selectable Baud Rates**: 4,800, 9,600, 19,200, 34,800, 57,600, 74,880, 115,200, and 1,000,000 baud
- ✅ **Dual Data Sources**: Fixed pattern (0xA5) or user switches (SW[7:0])
- ✅ **Real-time Display**: 
  - HEX0-HEX2: Decimal representation of received data (0-255)
  - HEX4-HEX5: Hexadecimal representation of received data
  - HEX6-HEX7: Hexadecimal representation of transmitted data
  - HEX3: Baud rate selection index (0-7)
  - LEDR[7:0]: Binary representation of received data
  - LEDG[5]: TX ready indicator (Sender mode)
  - LEDG[6]: RX data valid indicator (Receiver mode)
- ✅ **Mode Selection**: SW[17] switches between Sender (0) and Receiver (1) modes
- ✅ **Synchronous Reset**: Hardware reset via KEY[0]

### Software/Simulation Features
- ✅ **Standalone Simulations**: Individual testbenches for TX, RX, and loopback
- ✅ **ModelSim/Questa Compatible**: Pre-configured simulation scripts
- ✅ **SignalTap II Support**: Hardware waveform capture for debugging
- ✅ **Complete Documentation**: Project report, guides, and references

---

## 🏗️ Project Structure

```
RS232_CCM/
├── src/                          # VHDL source files
│   ├── rs232_top.vhd            # Top-level module
│   ├── sender.vhd               # RS-232 transmitter
│   ├── mottaker.vhd             # RS-232 receiver
│   ├── baud_rate_selector.vhd   # Baud rate generator
│   ├── data_source_mux.vhd      # Data source multiplexer
│   ├── data_display.vhd         # Display and LED drivers
│   ├── bin2bcd_8bit.vhd         # Binary to BCD converter
│   ├── ROM_7_seg.vhd            # 7-segment decoder ROM
│   └── reset_sync.vhd           # Synchronized reset generator
│
├── sim/                         # Standalone simulation setups
│   ├── sender/                  # Transmitter simulation
│   ├── mottaker/                # Receiver simulation
│   └── loopback/                # Full system loopback test
│
├── simulation/questa/           # Quartus-generated simulation files
│
├── output_files/                # Compiled FPGA bitstreams
│   ├── RS232_Communication.sof # FPGA programming file
│   └── RS232_Communication.pin # Pin assignment file
│
├── image/PROJECT_REPORT/        # Project report figures
│
├── PROJECT_REPORT.md            # Complete project documentation
├── QUICK_REFERENCE.md           # Quick usage guide
├── SIGNALTAP_GUIDE.md           # SignalTap II setup guide
├── TROUBLESHOOTING_GUIDE.md     # Common issues and solutions
└── README.md                    # This file
```

---

## 🔧 Hardware Requirements

- **FPGA Board**: Altera/Intel DE2-115 (Cyclone IV E: EP4CE115F29C7)
- **Quartus Prime**: Version 23.1 or later (tested with 24.1 Lite Edition)
- **ModelSim/Questa**: For simulation (included with Quartus)
- **Cable**: USB Blaster for programming the FPGA
- **Optional**: Second DE2-115 board for board-to-board communication

---

## 🚀 Getting Started

### 1. Compile the Project

1. Open Quartus Prime and load the project:
   ```
   File → Open Project → RS232_Communication.qpf
   ```

2. Compile the design:
   ```
   Processing → Start Compilation
   ```
   Or use the provided script:
   ```powershell
   .\compile_project.ps1
   ```

3. After successful compilation, the `.sof` file will be in `output_files/`

### 2. Program the FPGA

1. Connect the DE2-115 board via USB Blaster
2. In Quartus, go to: `Tools → Programmer`
3. Select `RS232_Communication.sof` from `output_files/`
4. Click **Start** to program the FPGA

### 3. Configure the Board

#### Sender Mode (SW[17] = 0)
- **Baud Rate**: Set SW[16:14] (0-7 for different baud rates)
- **Data Source**: 
  - SW[13:12] = `00`: Fixed pattern 0xA5
  - SW[13:12] = `01`: Data from SW[7:0]
  - SW[13:12] = `10` or `11`: Defaults to 0xA5
- **Transmit**: Press KEY[3] to send one byte
- **Status**: LEDG[5] = 1 when ready to transmit

#### Receiver Mode (SW[17] = 1)
- **Baud Rate**: Set SW[16:14] (must match transmitter)
- **Status**: LEDG[6] = 1 when data is received
- **Display**: 
  - HEX0-HEX2: Received data in decimal
  - HEX4-HEX5: Received data in hexadecimal
  - HEX3: Baud rate index

### 4. Physical Connections

RS-232 is designed for point-to-point communication between two devices using a two-conductor cable (twisted pair).

**For Board-to-Board RS-232 Communication:**
- **Transmitter (Board 1)**: Connect EX_IO[0] (TX output) to EX_IO[6] (RX input) on Board 2
- **Receiver (Board 2)**: Connect EX_IO[6] (RX input) to EX_IO[0] (TX output) on Board 1
- Use a twisted pair cable or jumper wire for the connection
- **Important**: Both boards must use the same baud rate (SW[16:14] must match)

**For Loopback Testing (Single Board):**
- Connect EX_IO[0] (TX output) to EX_IO[6] (RX input) with a jumper wire
- Set the board to sender mode (SW[17] = 0), then switch to receiver mode (SW[17] = 1) to receive the transmitted data

---

## 🧪 Running Simulations

### Standalone Simulations

Each simulation folder (`sim/sender`, `sim/mottaker`, `sim/loopback`) contains a self-contained testbench:

```tcl
# In ModelSim/Questa
cd C:/Quartus_ELE111/RS232_CCM/sim/sender
vsim -do run.do
```

The `run.do` script will:
1. Create a work library
2. Compile the source files
3. Compile the testbench
4. Launch the simulator with waveforms pre-loaded

See `sim/README.md` for detailed instructions on each simulation.

---

## 📊 Display Mapping

| Display | Content | Format |
|---------|---------|--------|
| HEX0-HEX2 | Received data | Decimal (0-255) |
| HEX3 | Baud rate selection | Index (0-7) |
| HEX4-HEX5 | Received data | Hexadecimal |
| HEX6-HEX7 | Transmitted data | Hexadecimal |
| LEDR[7:0] | Received data | Binary |
| LEDG[5] | TX ready | Active high |
| LEDG[6] | RX data valid | Active high |
| LEDG[1] | RX error | Active high |

---

## 📚 Documentation

- **[PROJECT_REPORT.md](PROJECT_REPORT.md)**: Complete project documentation including:
  - System architecture and block diagrams
  - State machine descriptions
  - Simulation results
  - SignalTap analysis
  - References and acknowledgments

- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)**: Quick start guide for common tasks

- **[SIGNALTAP_GUIDE.md](SIGNALTAP_GUIDE.md)**: Step-by-step guide for using SignalTap II Logic Analyzer

- **[TROUBLESHOOTING_GUIDE.md](TROUBLESHOOTING_GUIDE.md)**: Solutions to common problems

---

## 🔬 Technical Details

### RS-232 Protocol and Frame Format

The RS-232 protocol is a standard for serial communication between two devices (point-to-point). The line uses two conductors (twisted pair cable). The voltage level is high (Vcc) when the line is idle.

**Frame Format:**
- **Idle State**: Line is at high voltage (Vcc) when no data is being transmitted
- **Start Bit**: Logic '0' (low voltage, 1 bit period) - always marks the beginning of a frame
- **Data Bits**: 8 bits transmitted sequentially, LSB first
  - Logic '1' = high voltage
  - Logic '0' = low voltage
- **Stop Bit**: Logic '1' (high voltage, 1 bit period) - always marks the end of a frame

The system implements RS-232 without parity bits, using one stop bit, as specified in the ELE111 assignment.

### Baud Rate Selection
| SW[16:14] | Baud Rate | Divider Value |
|-----------|-----------|---------------|
| 000 | 4,800 | 10,417 |
| 001 | 9,600 | 5,208 |
| 010 | 19,200 | 2,604 |
| 011 | 34,800 | 1,437 |
| 100 | 57,600 | 868 |
| 101 | 74,880 | 668 |
| 110 | 115,200 | 434 |
| 111 | 1,000,000 | 50 |

### Synchronization
- **RX Input**: Triple-register synchronizer to prevent metastability
- **KEY[3]**: Edge-detected start pulse
- **Reset**: Synchronized reset generator

---

## 👥 Credits

This project was developed as part of the **ELE111** course at HVL (Western Norway University of Applied Sciences).

### Educational Resources
Code examples, diagrams, and educational materials were provided by **Eivind Vågslid Skjæveland** during the course lectures.

### Development Tools
- **VSCode Copilot**: Code suggestions and error detection
- **ChatGPT 5.1**: Debugging assistance and code explanation

---

## 📄 License

This project is developed for educational purposes as part of the ELE111 course assignment.

---

## 🤝 Contributing

This is a course project. For questions or issues, please refer to the documentation files or contact the course instructor.

---

## 📝 Version History

- **v1.0** (2025): Initial release
  - Complete RS-232 TX/RX implementation
  - 8 selectable baud rates
  - ModelSim simulations
  - SignalTap hardware verification
  - Full documentation

---

**Ready to use?** Start by compiling the project in Quartus and programming your DE2-115 board. See `QUICK_REFERENCE.md` for detailed usage instructions!

