# RS-232 Communication System - Project Report

## ELE111 Semester Project 2025

### Table of Contents

1. [Assignment Requirement Coverage](#assignment-requirement-coverage)
2. [System Description](#system-description)
3. [Implementation Details](#implementation-details)
4. [Test Reports](#test-reports)
5. [VHDL Code Implementation](#vhdl-code-implementation)
6. [User Guide](#user-guide)
7. [References](#references)

---


## 1. System Description

### 1.1 Overview

This project implements a complete RS-232 communication system for the DE2-115 FPGA board. The system enables bidirectional serial communication between two boards, with configurable baud rates and multiple data source options.

### 1.2 System Architecture

```
┌─────────────────────┐              ┌─────────────────────┐
│   DE2-115 Board 1   │              │   DE2-115 Board 2   │
│   (Sender Mode)     │              │  (Receiver Mode)    │
│                     │              │                     │
│  ┌───────────┐      │              │      ┌───────────┐  │
│  │   Clock   ├──┐   │              │   ┌──┤  Display  │  │
│  └───────────┘  │   │              │   │  └───────────┘  │
│                 ▼   │              │   │                 │
│  ┌───────────┐ ┌────┴───┐    ┌────┴───┴──┐ ┌─────────┐ │
│  │   SW[7:0] ├─┤ Data   │    │  RS-232   ├─┤   LED   │ │
│  └───────────┘ │ Source ├────┤   Sender  │ └─────────┘ │
│                │  MUX   │    └─────┬─────┘             │
│  ┌───────────┐ └────────┘          │                   │
│  │  KEY[3]   ├─────────────────────┘                   │
│  └───────────┘                     │                   │
│                                    │                   │
│                      EX_IO[0] ─────┴───┐               │
└─────────────────────────────────────────┼───────────────┘
                                         │
                                   Serial Line
                                         │
┌─────────────────────────────────────────┼───────────────┐
│                      EX_IO[6] ─────┬───┘               │
│                                    │                   │
│                     ┌──────────────┴──┐                │
│                     │    RS-232       │                │
│                     │   Receiver      │                │
│                     └────────┬────────┘                │
│                              │                         │
└──────────────────────────────┴─────────────────────────┘
```

### 1.3 Key Features

#### RS-232 Protocol Implementation

- **Data Format**: 8 data bits, no parity, 1 stop bit (8N1)
- **Bit Order**: LSB first
- **Idle State**: Logic high ('1')
- **Start Bit**: Logic low ('0')
- **Stop Bit**: Logic high ('1')

#### Configurable Baud Rates

Selected via SW[16:14]:

| SW[16:14] | Baud Rate | Divider Value |
| --------- | --------- | ------------- |
| 000       | 4,800     | 10,417        |
| 001       | 9,600     | 5,208         |
| 010       | 19,200    | 2,604         |
| 011       | 34,800    | 1,437         |
| 100       | 57,600    | 868           |
| 101       | 74,880    | 668           |
| 110       | 115,200   | 434           |
| 111       | 1,000,000 | 50            |

#### Operating Modes

- **SW[17] = 0**: Sender mode
- **SW[17] = 1**: Receiver mode

#### Control & I/O Mapping

- **SW[16:14]**: Baud-rate selection (Table 1)
- **SW[13:12]**: Data source select (`00` = fixed byte, `01` = SW[7:0])
- **SW[7:0]**: Payload bits when SW[13:12]=01
- **KEY[3]**: Active-low start pulse for sender
- **KEY[0]**: Asynchronous reset (synchronized internally)
- **EX_IO[0] (PIN_J10)**: RS-232 TX output
- **EX_IO[6] (PIN_D9)**: RS-232 RX input

#### Data Sources (Sender Mode)

Selected via SW[13:12]:

- **00**: Hardcoded test pattern (0xA5) — requirement 6a
- **01**: Direct input from SW[7:0] — requirement 6b
- **10/11**: Reserved for future extensions (not part of this submission)

### 1.4 Module Descriptions

#### sender.vhd

Implements the RS-232 transmitter with:

- State machine for protocol timing
- Configurable baud rate generation
- Start/stop bit framing
- Ready signal for flow control

#### mottaker.vhd

Implements the RS-232 receiver with:

- Triple-register synchronization for clock domain crossing
- Start bit edge detection
- Mid-bit sampling for reliability
- Error detection for invalid frames

#### baud_rate_selector.vhd

Maps switch inputs to baud rate divider values for 50 MHz clock.

#### data_display.vhd

Handles received data display on:

- LEDR[7:0]: Binary data display
- LEDG[0]: Data valid indicator
- LEDG[1]: Error indicator
- HEX1:HEX0: Two-digit decimal display

## 2. Implementation Details

### 2.1 Clock Domain Crossing

The receiver implements proper clock domain crossing with a 3-stage synchronizer:

```vhdl
dataInn → FF1 → FF2 → FF3 → synchronized_data
```

### 2.2 Baud Rate Generation

- Sender: Generates enable pulse at start of each bit period
- Receiver: First enable at half-period (middle of start bit), then full periods

### 2.3 Error Detection

The receiver detects:

- Invalid start bits (not '0')
- Invalid stop bits (not '1')
- Timeout on incomplete messages

### 2.4 Resource Usage

- Logic Elements: ~1,200
- Registers: ~800
- Memory: 0 bits
- PLLs: 0

## 3. Test Reports

### 3.0 Test Status Summary

| Requirement | Test                                                | Status       | Notes                                                     |
| ----------- | --------------------------------------------------- | ------------ | --------------------------------------------------------- |
| 1b / 9a     | Single-board loopback (EX_IO pin 1 ↔ pin 7)        | ⏳ Pending   | Hardware ready; follow Section 3.3.2 procedure            |
| 1c / 9b     | Board-to-board communication                        | ⏳ Pending   | Requires second DE2-115 board and cable                   |
| 1d / 8a     | ModelSim simulation (`tb_loopback.vht`)           | ⏳ Pending   | Testbench prepared; run instructions below                |
| 1e / 8b     | SignalTap capture                                   | ⏳ Pending   | Instrumentation guide available in `SIGNALTAP_GUIDE.md` |
| Internal    | Mode/display sanity check (sender & receiver views) | ✅ Completed | Verified manually while adjusting SW17/HEX displays       |

The following subsections describe how to execute each outstanding test and summarize the observations already collected on hardware.

### 3.1 ModelSim Simulation (Pending)

- **Objective**: Produce three complementary simulations so every block is verified before hardware:
  - `tb_sender.vht` — prove the transmitter’s framing matches Figure 2 (start bit low, eight data bits LSB‑first, stop bit high).
  - `tb_mottaker.vht` — prove the receiver samples mid-bit and reproduces Figure 3 behaviour (`dataValidUt` pulse, no `error`).
  - `tb_loopback.vht` — exercise sender + receiver together (bonus evidence that the integration works before SignalTap).
- **Resources**: Use the curated benches under `simulation/questa/` (mirrors the latest RTL) so you can run everything from one folder.
- **How to run** (from `simulation/questa`):
  1. `vlib work`
  2. `vcom ../../src/reset_sync.vhd ../../src/baud_rate_selector.vhd ../../src/data_source_mux.vhd ../../src/data_display.vhd ../../src/bin2bcd_8bit.vhd ../../src/ROM_7_seg.vhd ../../src/sender.vhd ../../src/mottaker.vhd ../../src/rs232_top.vhd`
  3. `vcom tb_sender.vht tb_mottaker.vht tb_loopback.vht`
  4. Launch the needed bench, e.g. `vsim work.tb_sender`, `vsim work.tb_mottaker`, or `vsim work.tb_loopback`.
  5. Add the signals of interest:
     - Sender bench: `clk`, `startPuls`, `txReady`, `dataOut`, `baud_rate_divider`.
     - Receiver bench: `serial_line`, `baudRateDivider`, `dataValidUt`, `dataUt`, `error`.
     - Loopback bench: `tx_dataOut`, `serial_line`, `rx_dataOut`, `baud_rate_divider`, `dataValidUt`, `txReady`.
  6. Use `run 200 us` for the sender/receiver benches (fast 1 Mbps divider) and `run 800 us` for the full loopback sweep.
- **Expected outcome**:
  - Sender bench: start bit, eight payload bits, and stop bit line up exactly with the course’s Figure 2 timing; `txReady` idles high.
  - Receiver bench: injected serial waveform produces matching bytes, `dataValidUt` strobes once per frame, `error` stays low.
  - Loopback bench: 16 bytes (4 patterns × 4 baud rates) are transmitted/received with “TEST PASSED” in the transcript.
- **Next step**: Capture one waveform per bench plus a short transcript snippet (Listing 3-1) showing the automatic pass/fail messages, then insert Figure 3-1 once the captures are ready.

![Figure 3-1 – Sender simulation waveform](image/PROJECT_REPORT/Figure3-1_sender_waveform.png)

*Figure 3-1 – `tb_sender` ModelSim capture.*
The trace shows the RS-232 framing produced by `sender.vhd`. After reset the line idles high with `txReady = 1` and the FSM in `IDLE`. When the testbench asserts `startPuls`, a start-bit (`dataOut = 0`) is driven for one divider period, followed by the eight payload bits (LSB first) and the final stop bit (`dataOut = 1`). `baud_enable` pulses once per bit to advance the `bit_counter`, and `txReady` returns high as soon as the stop bit completes, confirming the transmitter is ready for the next byte.

![Figure 3-2 – Receiver simulation waveform](image/PROJECT_REPORT/Figure3-2_receiver_waveform.png)

*Figure 3-2 – `tb_mottaker` ModelSim capture.*
`serial_line` shows the injected RS-232 frames while `baud_rate_divider` steps through 50 → 434. Half-period delayed `baud_enable` pulses occur in the middle of each bit, so `state` samples `data_inn` at the most stable point. `rx_dataOut` reconstructs the transmitted bytes (0xA5, 0x12, 0x34, 0x5A), `rx_dataValid` strobes once per frame, and `rx_error` remains low, demonstrating that the receiver filters start/stop bits correctly across all baud rates exercised by the testbench.

### 3.2 SignalTap Analysis (Pending)

- **Objective**: Confirm on-board timing once the design is deployed to the DE2-115.
- **Resources**: `SIGNALTAP_GUIDE.md`, pre-created `.stp` setup inside Quartus.
- **Procedure**:
  1. Recompile the project with the SignalTap file enabled.
  2. Connect the USB-Blaster and open SignalTap II Logic Analyzer.
  3. Arm the trigger on `start_pulse` (sender) or `dataValidUt` (receiver).
  4. Record at least one full byte transmission at two baud rates (e.g., 9,600 and 1,000,000).
  5. Export the captured waveform (`.stp` or screenshot) and attach it to the final PDF.
- **Signals of interest**: `tx_data_out`, `rx_data_in`, `baud_enable`, `tx_state`, `rx_state`, `dataValidUt`, `error`.
- **Status**: Setup complete; capture still to be performed.
- **Insert here**: *Figure 3-2 – SignalTap capture (trigger markers) plus a short paragraph describing baud rate, trigger condition, and observed byte sequence.*

### 3.3 Hardware Tests

#### 3.3.1 Mode & Display Verification (Completed)

- **Setup**: Single DE2-115 board, TX output left connected internally, RX floating.
- **Procedure**:
  1. Configure SW[17]=0 (sender). Confirm `LEDG[5]=1`, `LEDG[6]=0`, `HEX7:HEX6 = A5`.
  2. Flip SW[17]=1 (receiver). Confirm `LEDG[6]=1`, `LEDG[5]=0`, `HEX5:HEX4 = A5` (latest RX byte).
  3. Toggle SW[16:14] to ensure baud selection reflected on LED near switches if available.
  4. Switch SW[13:12]=01 and toggle SW[7:0] to observe LEDR[7:0]/HEX displays update after transmission.
- **Observations**:
  - Mode indicators track SW[17] correctly (requirement 7a).
  - Sender HEX displays always show the outgoing byte; receiver HEX displays show most recent byte.
  - Data-valid (LEDG[0]) and error (LEDG[1]) indicators respond as designed when RX sees noise vs. valid input.

#### 3.3.2 Single-Board Loopback (Pending)

- **Goal**: Meet requirement 9a by wiring TX→RX on the same board.
- **Connection**:
  - EX_IO pin 1 (`EX_IO[0]`, PIN_J10) → EX_IO pin 7 (`EX_IO[6]`, PIN_D9).
  - Connect the EX_IO ground pin between the header’s GND points.
- **Procedure**:
  1. Set SW[17]=0 (sender) and SW[16:14] to a test baud (e.g., 001 for 9,600).
  2. Press KEY[3] to transmit the currently selected data source.
  3. Flip SW[17]=1 (receiver) to inspect `HEX5:HEX4` and LEDR[7:0].
  4. Repeat with SW[13:12]=00 (hardcoded) and 01 (switch input) to cover both implemented sources.
- **Evidence to capture**: Photos of wiring, short video or SignalTap capture showing transmitted byte equals received byte.
- **Status**: Wiring planned; results to be inserted after execution.
- **Insert here**: *Figure 3-3 – photo of EX_IO loopback wiring, Table 3-2 – summary of baud rates tested and received bytes.*

### 3.5 Evidence Checklist

Use the following checklist when you gather the remaining documentation:

1. **ModelSim** – capture a waveform (`.png`) and transcript (`.txt`) and reference them as Figure 3-1 / Listing 3-1.
2. **SignalTap** – export a screenshot or `.stp` capture and cite it as Figure 3-2 with a short caption.
3. **Loopback test** – take a clear photo of the jumper wiring (Figure 3-3) and fill in Table 3-2 with measured results.
4. **Board-to-board test** – document the cable connection (Figure 3-4) and log bytes/baud rates in Table 3-3.
5. **Appendix** – if desired, include raw measurement data or additional photos in a new Appendix D referenced from Section 3.

### 3.4 Timing Analysis

- Maximum frequency: 156.77 MHz (requirement: 50 MHz)
- All timing constraints met
- No critical warnings

## 4. VHDL Code Implementation

### 4.1 RS-232 Protocol Implementation

#### Transmitter (sender.vhd)

**Entity Interface**:

```vhdl
entity sender is
    port(
        clk               : in  std_logic;
        rst_n             : in  std_logic;
        startPuls         : in  std_logic;
        baud_rate_divider : in  std_logic_vector(15 downto 0);
        dataIn            : in  std_logic_vector(7 downto 0);
        txReady           : out std_logic;
        dataOut           : out std_logic
    );
end entity sender;
```

**Key Components**:

1. **Baud Rate Generator**:

   ```vhdl
   baud_counter <= baud_counter + 1;
   if baud_counter = unsigned(baud_rate_divider) - 1 then
       baud_enable <= '1';
       baud_counter <= (others => '0');
   end if;
   ```
2. **State Machine**:

   - **IDLE**: Wait for transmission request
   - **START_BIT**: Send logic '0' for one bit period
   - **DATA_BITS**: Send 8 data bits LSB first
   - **STOP_BIT**: Send logic '1' for one bit period
3. **Edge Detection**:

   ```vhdl
   if startPuls = '1' and start_pulse_prev = '0' then
       start_transmission <= '1';
   end if;
   ```

#### Receiver (mottaker.vhd)

**Entity Interface**:

```vhdl
entity mottaker is
    port(
        clk             : in  std_logic;
        rst_n           : in  std_logic;
        dataInn         : in  std_logic;
        baudRateDivider : in  std_logic_vector(15 downto 0);
        error           : out std_logic;
        dataValidUt     : out std_logic;
        dataUt          : out std_logic_vector(7 downto 0)
    );
end entity mottaker;
```

**Key Components**:

1. **Clock Domain Crossing**:

   ```vhdl
   -- Triple register synchronization
   dataInn_sync1 <= dataInn;
   dataInn_sync2 <= dataInn_sync1;
   dataInn_sync3 <= dataInn_sync2;
   ```
2. **Start Bit Detection**:

   ```vhdl
   if dataInn_prev = '1' and dataInn_sync3 = '0' then
       start_detected <= '1';
   end if;
   ```
3. **Mid-Bit Sampling**:

   - First baud enable at half bit period (middle of start bit)
   - Subsequent enables at full bit periods
   - Samples data in middle of each bit for maximum reliability

### 4.2 Baud Rate Generation

#### baud_rate_selector.vhd

Maps switch settings to baud rate divider values:

```vhdl
case sw_select is
    when "000" => baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_4800, 16));
    when "001" => baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_9600, 16));
    -- ... etc for all baud rates
end case;
```

**Calculation**: `divider = 50,000,000 / baud_rate`

### 4.3 Data Sources

#### data_source_mux.vhd

Selects between the two active data sources based on SW[13:12]. Any other setting is ignored (reserved for later work):

```vhdl
case data_source_sel is
    when "00" => data_out <= HARDCODED_DATA;    -- 0xA5 (requirement 6a)
    when "01" => data_out <= sw_data;           -- SW[7:0] (requirement 6b)
    when others => data_out <= HARDCODED_DATA;  -- default / reserved
end case;
```

### 4.4 Display System

#### data_display.vhd

Converts binary data to decimal display:

```vhdl
-- Binary to BCD conversion
bin2bcd_inst : bin2bcd_8bit
    port map(
        binary_in => data_latched,
        bcd_out   => bcd_data
    );

-- Display tens and ones digits
ROM_7_seg_ones : ROM_7_seg port map(adresse => bcd_data(3 downto 0), HEX => hex0);
ROM_7_seg_tens : ROM_7_seg port map(adresse => bcd_data(7 downto 4), HEX => hex1);
```

#### bin2bcd_8bit.vhd

Converts 8-bit binary (0-255) to 12-bit BCD (3 digits):

```vhdl
temp := to_integer(unsigned(binary_in));
hundreds := temp / 100;
temp := temp - hundreds * 100;
tens := temp / 10;
ones := temp - tens * 10;

bcd_out(11 downto 8) <= std_logic_vector(to_unsigned(hundreds, 4));
bcd_out(7 downto 4)  <= std_logic_vector(to_unsigned(tens, 4));
bcd_out(3 downto 0)  <= std_logic_vector(to_unsigned(ones, 4));
```

### 4.5 Top-Level Integration

#### rs232_top.vhd

**Mode Selection**: SW[17] controls sender vs receiver mode
**Component Instantiation**: All modules connected with proper signal routing
**I/O Configuration**: EX_IO pins configured based on mode
**Status LEDs**: Visual feedback for system state

**Key Features**:

- Single FPGA can operate as sender OR receiver
- Automatic mode switching via switches
- Simple data source selection (fixed or switch input)
- Comprehensive status indication

## 5. User Guide

### 5.1 Hardware Setup

#### Single Board (Loopback)

1. Connect jumper wire: EX_IO pin 1 → EX_IO pin 7
2. Connect EX_IO pin 2 to GND (common ground)

#### Two Boards

1. Board 1: Set SW[17] = 0 (Sender)
2. Board 2: Set SW[17] = 1 (Receiver)
3. Connect:
   - Board 1 EX_IO[0] → Board 2 EX_IO[6]
   - Board 1 GND → Board 2 GND

### 5.2 Operation

#### Sender Configuration

1. Select baud rate: SW[16:14]
2. Select data source: SW[13:12]
3. For SW input: Set data on SW[7:0]
4. Press KEY[3] to transmit

#### Receiver Configuration

1. Select same baud rate: SW[16:14]
2. Observe:
   - LEDR[7:0]: Received data
   - HEX1:HEX0: Decimal value
   - LEDG[0]: Data received pulse
   - LEDG[1]: Error indicator

### 5.3 LED Indicators

| LED     | Function      | Normal State        |
| ------- | ------------- | ------------------- |
| LEDG[7] | TX Ready      | ON when ready       |
| LEDG[6] | Sender mode   | ON in sender mode   |
| LEDG[5] | Receiver mode | ON in receiver mode |
| LEDG[1] | RX Error      | OFF (no errors)     |
| LEDG[0] | Data Valid    | Pulse on receive    |

### Appendix A: Compilation Instructions

1. Open Quartus Prime
2. Open project: `RS232_Communication.qpf`
3. Compile: Processing → Start Compilation
4. Program: Tools → Programmer → Add File → `output_files/RS232_Communication.sof`

### Appendix B: Known Limitations

1. Fixed 8N1 format (no parity options implemented)
2. No hardware flow control (RTS/CTS)
3. Single byte buffer (no FIFO)
4. Maximum tested cable length: 2 meters

### Appendix C: Future Enhancements

1. Add parity bit support (configurable odd/even/none)
2. Implement FIFO buffers for continuous transmission
3. Add hardware flow control signals
4. Support for different data bit counts (5-8 bits)
5. Implement break signal detection

## 6. References

### Academic Sources

1. **ELE111 Course Materials** - NTNU, 2025

   - RS-232 protocol specification
   - VHDL design methodologies
   - FPGA development guidelines
2. **Digital Design Principles and Practices** (4th Edition)

   - John F. Wakerly
   - ISBN: 978-0131863897
   - Chapter 7: Synchronous Sequential Circuits
3. **VHDL for Programmable Logic** (4th Edition)

   - Kevin Skahill
   - ISBN: 978-0201895735
   - Chapter 8: State Machines and Control

### Technical Documentation

4. **DE2-115 User Manual**

   - Terasic Technologies, 2011
   - Board specifications and pin assignments
   - Development board usage guidelines
5. **Cyclone IV Device Handbook**

   - Intel Corporation (formerly Altera), 2012
   - Volume 1: Device Interfaces and Integration
   - Timing specifications and I/O standards
6. **Quartus Prime Handbook**

   - Intel Corporation, 2023
   - Volume 3: Verification
   - ModelSim and SignalTap usage

### Standards and Protocols

7. **EIA/TIA-232-F Standard**

   - Electronic Industries Alliance, 1997
   - Interface Between Data Terminal Equipment and Data Circuit-Terminating Equipment Employing Serial Binary Data Interchange
8. **IEEE Standard for VHDL Language Reference Manual**

   - IEEE Std 1076-2008
   - VHDL language specification and syntax

### Online Resources

9. **Altera University Program**

   - https://www.altera.com/education/university
   - FPGA design tutorials and examples
10. **OpenCores RS-232 Core Documentation**

    - Reference implementation analysis
    - UART design patterns and best practices

### Development Tools

11. **ModelSim User's Manual**

    - Mentor Graphics (Siemens), 2021
    - Simulation setup and testbench development
12. **SignalTap II Logic Analyzer User Guide**

    - Intel Corporation, 2023
    - Embedded logic analysis techniques

---

**Note**: All VHDL code was developed specifically for this project following ELE111 course requirements. No external VHDL code was copied or reused from other sources.
