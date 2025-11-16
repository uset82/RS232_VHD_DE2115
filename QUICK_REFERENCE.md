# RS-232 Communication System - Quick Reference
## ELE111 Project

### Compilation
```powershell
.\compile_project.ps1
```

### Pin Connections

#### EX_IO Connector (DE2-115)

From the DE2-115 manual (Figure 4-20 / Table 4-13):

- `EX_IO[0]` → **PIN_J10** → Extended IO[0]
- `EX_IO[1]` → PIN_J14
- `EX_IO[2]` → PIN_H13
- `EX_IO[3]` → PIN_H14
- `EX_IO[4]` → PIN_F14
- `EX_IO[5]` → PIN_E10
- `EX_IO[6]` → **PIN_D9** → Extended IO[6]

On the 14-pin EX_IO header:
- **EX_IO Pin 1** = `EX_IO[0]` = PIN_J10
- **EX_IO Pin 7** = `EX_IO[6]` = PIN_D9

#### Loopback Test (Single Board)
```
EX_IO Pin 1  (EX_IO[0], PIN_J10, TX) ←→ EX_IO Pin 7 (EX_IO[6], PIN_D9, RX)
GND pin on EX_IO connector           ←→ GND pin on EX_IO connector
```

#### Board-to-Board
```
Board 1: EX_IO Pin 1 (TX) → Board 2: EX_IO Pin 7 (RX)
Board 1: GND             ←→ Board 2: GND
```

### Switch Configuration

| Switch | Function | Values |
|--------|----------|--------|
| SW[17] | Mode Select | 0=Sender, 1=Receiver |
| SW[16:14] | Baud Rate | See table below |
| SW[13:12] | Data Source | 00=Fixed (min requirement), 01=SW, 10/11=Reserved |
| SW[7:0] | Data Input | 8-bit value (when SW[13:12]=01) |

> **Minimum hand-in reminder:** For the graded baseline, leave SW[13:12]=00 (hardcoded byte) or 01 (switch input) and verify the received value on LEDR[7:0]. Other settings are reserved for future expansion.

### Baud Rate Selection (SW[16:14])

| SW[16:14] | Baud Rate |
|-----------|-----------|
| 000 | 4,800 |
| 001 | 9,600 ✓ |
| 010 | 19,200 |
| 011 | 34,800 |
| 100 | 57,600 |
| 101 | 74,880 |
| 110 | 115,200 |
| 111 | 1,000,000 |

### LED Indicators

| LED | Function | Normal State |
|-----|----------|--------------|
| LEDG[7] | TX Ready | ON when idle |
| LEDG[5] | Sender Mode | ON if SW[17]=0 |
| LEDG[6] | Receiver Mode | ON if SW[17]=1 |
| LEDG[1] | RX Error | OFF (blinks on error) |
| LEDG[0] | Data Valid | Pulse on receive |
| LEDR[7:0] | Received Data | Shows last byte |

### HEX Display Usage

- **HEX7:HEX6** (Sender mode, SW[17]=0):
  - Show **TX byte** in hexadecimal
  - HEX7 = upper nibble of `tx_data_in` (bits 7..4)
  - HEX6 = lower nibble of `tx_data_in` (bits 3..0)

- **HEX5:HEX4** (Receiver mode, SW[17]=1):
  - Show **RX byte** in hexadecimal
  - HEX5 = upper nibble of `rx_data_out`
  - HEX4 = lower nibble of `rx_data_out`

- **HEX1:HEX0** (always, on receiver):
  - Show received byte in **decimal** (00–255)

### Operating Instructions

#### Sender Setup
1. Set SW[17] = 0
2. Select baud rate: SW[16:14] (e.g., 001 for 9600)
3. Choose data source: SW[13:12]
4. If using SW input, set data: SW[7:0]
5. Press KEY[3] to transmit

#### Receiver Setup
1. Set SW[17] = 1
2. Select same baud rate: SW[16:14]
3. Watch displays:
   - LEDR[7:0]: Binary value
   - HEX1:HEX0: Decimal value
   - LEDG[0]: Blinks on receive
   - LEDG[1]: ON = error

### Test Procedure
1. Program both boards
2. Connect TX→RX cable
3. Set one board as sender (SW[17]=0)
4. Set other as receiver (SW[17]=1)
5. Match baud rates on both
6. Send test data
7. Verify reception

### Troubleshooting

| Problem | Check |
|---------|-------|
| No reception | Cable connection, matching baud rates |
| LEDG[1] ON | Baud mismatch, bad connection |
| Wrong data | Check SW input, data source selection |
| No TX ready | Reset with KEY[0] |

### Documentation / Evidence Capture

1. **ModelSim (Section 3.1 of report)** – after running `tb_loopback.vht`, save the waveform as `fig03_01.png` and copy the console transcript into Listing 3-1.
2. **SignalTap (Section 3.2)** – arm the trigger, capture one byte at two baud rates, and save the screenshot as `fig03_02.png`.
3. **Loopback Photo (Section 3.3.2)** – take a clear photo of EX_IO pin 1↔7 wiring (`fig03_03.jpg`) and record measured bytes in Table 3-2.
4. **Board-to-board Photo (Section 3.3.3)** – document the two-board cable setup (`fig03_04.jpg`) and log baud-rate results in Table 3-3.
5. **Appendix D (optional)** – store any extra photos, CSV logs, or SignalTap files referenced from Section 3.

### RS-232 Frame Format
```
[Start bit (0)] [8 Data bits LSB→MSB] [Stop bit (1)]
Total: 10 bits per byte
```
