# SignalTap II Logic Analyzer Setup Guide
## ELE111 RS-232 Communication System

## 📋 **Overview**
SignalTap II is Quartus Prime's embedded logic analyzer that lets you probe internal FPGA signals in real-time while the design runs on hardware. This is essential for debugging and verifying your RS-232 communication system.

---

## 🎯 **Step-by-Step SignalTap Setup**

### **Step 1: Open Your Quartus Project**
1. Open Quartus Prime
2. Go to **File → Open Project**
3. Select `RS232_Communication.qpf`
4. Make sure the project compiles successfully first

### **Step 2: Add SignalTap II Logic Analyzer**

#### **Method A: Via Tools Menu**
1. Go to **Tools → SignalTap II Logic Analyzer**
2. Click **Create New STP File** (or open existing)
3. Save as `rs232_signals.stp` in your project directory

#### **Method B: Via Project Navigator**
1. In Project Navigator → Files tab
2. Right-click → **Add New File**
3. Select **SignalTap II File (.stp)**
4. Name it `rs232_signals.stp`

### **Step 3: Configure SignalTap Settings**

#### **Clock Settings**
```
Clock: CLOCK_50
Sample Depth: 8192 (8K samples - good for most debugging)
RAM Type: Auto
```

#### **Trigger Settings**
```
Trigger Flow Control: Sequential
Trigger Position: Center trigger position
```

---

## 📊 **Signals to Monitor (RS-232 System)**

### **Critical Signals to Add:**

| Signal Name | Node Path | Purpose |
|-------------|-----------|---------|
| `serial_line` | `rs232_top:rs232_top_inst\|serial_line` | RS-232 data line |
| `tx_ready` | `rs232_top:rs232_top_inst\|tx_ready` | Transmitter ready status |
| `rx_data_valid` | `rs232_top:rs232_top_inst\|rx_data_valid` | Receiver data valid |
| `rx_error` | `rs232_top:rs232_top_inst\|rx_error` | Receiver error flag |
| `baud_enable_tx` | `rs232_top:rs232_top_inst\|sender_inst:baud_enable` | TX timing |
| `baud_enable_rx` | `rs232_top:rs232_top_inst\|receiver_inst:baud_enable` | RX timing |
| `tx_state` | `rs232_top:rs232_top_inst\|sender_inst:state` | TX state machine |
| `rx_state` | `rs232_top:rs232_top_inst\|receiver_inst:state` | RX state machine |

### **Adding Signals to SignalTap:**

1. In SignalTap window, click **+** button (Add Nodes)
2. **Node Finder** window opens
3. Select **SignalTap: pre-synthesis** filter
4. **Named** radio button
5. Type signal names from the table above
6. Click **List** then **> Add** to move to right panel
7. Click **OK**

---

## ⚙️ **Setting Up Triggers**

### **Basic Trigger Setup**
1. In Trigger Conditions column, set:
   - `serial_line` → **Falling Edge** (detects start bit)
   - `rx_data_valid` → **Rising Edge** (detects received data)

### **Advanced Trigger Setup**
For more precise captures:

1. **Sequential Triggering** (recommended):
   ```
   Trigger 1: serial_line = Falling Edge (start bit detection)
   Then Trigger 2: rx_data_valid = Rising Edge (data reception)
   ```

2. **Complex Trigger Example**:
   ```
   Trigger on: rx_error = '1' (to catch error conditions)
   OR
   Trigger on: rx_data_valid = '1' (to catch successful receptions)
   ```

---

## 🔧 **Configure Data Capture**

### **Sample Settings**
```
Sample Clock: CLOCK_50 (50 MHz)
Sample Depth: 8192 samples
Storage Qualifier: Continuous
```

### **Bus Settings**
For multi-bit signals:
- `tx_state`, `rx_state`: Display as **Binary** or **Decimal**
- `serial_line`: Display as **Analog** waveform (for bit timing)

---

## 📁 **Files to Include in SignalTap**

### **STP File Creation**
Your SignalTap file (`rs232_signals.stp`) will be automatically included in the Quartus project when you save it.

### **No Additional Files Needed**
SignalTap embeds directly into your FPGA design - **no separate test bench files are required for SignalTap testing**.

## ⚠️ **Important: SignalTap vs ModelSim**

**SignalTap is NOT for simulation - it's for hardware debugging!**

| Tool | Purpose | Files Used | When to Use |
|------|---------|------------|-------------|
| **ModelSim** | Software simulation | `.vht` testbench files | Design verification before hardware |
| **SignalTap** | Hardware debugging | `.stp` file + FPGA design | Real-time signal analysis on DE2-115 |

**For SignalTap, you "insert" signals from your actual FPGA design, not testbench files!**

### **What Files SignalTap Uses:**
- ✅ **Your VHDL source files** (`.vhd` files in `src/`)
- ✅ **Your Quartus project** (`.qpf` and `.qsf`)
- ✅ **SignalTap configuration** (`.stp` file you create)

**SignalTap monitors real signals running on your DE2-115 board - it doesn't use simulation files!**

---

## 🚀 **Compilation and Programming**

### **Step 1: Compile with SignalTap**
1. **Processing → Start Compilation**
2. SignalTap logic will be automatically included
3. **Note**: Compilation may take longer with SignalTap enabled

### **Step 2: Program the FPGA**
1. **Tools → Programmer**
2. Add `output_files/RS232_Communication.sof`
3. **Important**: Use the `.sof` file (not `.pof`) when using SignalTap
4. Click **Start** to program

### **Step 3: Open SignalTap in Hardware**
1. **Tools → SignalTap II Logic Analyzer**
2. Click **Hardware → Open** (or **Setup**)
3. Your STP file should appear
4. Click **Run Analysis** (play button)

---

## 📊 **Running SignalTap Analysis**

### **Basic Operation**
1. Set trigger conditions
2. Click **Run Analysis** (▶️)
3. Send data using KEY[3] on your board
4. SignalTap will capture when trigger conditions are met
5. Analyze the captured waveforms

### **Trigger Examples for RS-232**

#### **1. Start Bit Detection**
```
Trigger: serial_line = Falling Edge
Purpose: Capture RS-232 frame from beginning
```

#### **2. Data Reception**
```
Trigger: rx_data_valid = Rising Edge
Purpose: Capture successful data reception
```

#### **3. Error Detection**
```
Trigger: rx_error = Rising Edge
Purpose: Capture error conditions
```

---

## 📈 **Analyzing Captured Data**

### **RS-232 Frame Analysis**
When you capture a frame, you should see:
```
┌─ Start Bit ─┬─ Bit 0 ─┬─ Bit 1 ─┬─ ... ─┬─ Bit 7 ─┬─ Stop Bit ─┐
│    '0'     │   LSB   │         │       │   MSB   │    '1'     │
└────────────┴─────────┴─────────┴───────┴─────────┴────────────┘
     ↓          ↓         ↓       ↓        ↓          ↓
  Falling    Data bits sampled   Mid-bit   Data bits sampled
   Edge      at mid-bit timing   sampling  at mid-bit timing
```

### **Timing Verification**
- **Bit width**: Should be consistent (e.g., 434 clock cycles at 115,200 baud)
- **Start bit**: Logic '0' for full bit period
- **Stop bit**: Logic '1' for full bit period
- **Baud enable**: Pulses at correct intervals

### **State Machine Verification**
- **TX states**: IDLE → START_BIT → DATA_BITS → STOP_BIT → IDLE
- **RX states**: IDLE → START_BIT → DATA_BITS → STOP_BIT → IDLE
- State transitions should be clean and correct

---

## 🔧 **Troubleshooting SignalTap**

### **Common Issues**

#### **"No device found"**
- Make sure FPGA is programmed with `.sof` file
- Check USB-Blaster connection
- Try **Hardware → Scan Chain**

#### **No triggers firing**
- Check trigger conditions are realistic
- Try simpler trigger (just `serial_line = Falling Edge`)
- Verify signals are properly named in Node Finder

#### **Signals not appearing**
- Make sure signals are not optimized away during synthesis
- Add `keep` attribute to critical signals if needed
- Check signal names match exactly

#### **Poor signal quality**
- Increase sample depth for better resolution
- Use analog display for serial_line
- Check baud rate settings match between boards

---

## 📋 **SignalTap Checklist**

- [ ] SignalTap II file created (`rs232_signals.stp`)
- [ ] Critical signals added (serial_line, baud_enable, states)
- [ ] Clock set to CLOCK_50
- [ ] Trigger conditions configured
- [ ] Sample depth set (8192 recommended)
- [ ] Project compiled with SignalTap included
- [ ] FPGA programmed with `.sof` file
- [ ] SignalTap connected to hardware
- [ ] Triggers tested and working
- [ ] Data captured and analyzed

---

## 📸 **Screenshots to Include in Report**

For your ELE111 report, capture and include:

1. **SignalTap setup window** (showing signal list and triggers)
2. **Captured RS-232 frame** (showing start bit, data bits, stop bit)
3. **Baud timing verification** (consistent bit widths)
4. **State machine transitions** (TX/RX state changes)
5. **Error condition capture** (if any errors occur)

**Example Analysis Text:**
```
Figure X: SignalTap capture showing RS-232 frame transmission at 115,200 baud.
The waveform shows clean bit timing with proper start/stop bit detection.
Baud enable pulses occur every 434 clock cycles (8.68 μs), corresponding
to the expected bit period at 115,200 bits/second.
```

---

## 🎯 **Quick Reference Commands**

```bash
# Open SignalTap
quartus_stpw rs232_signals.stp

# Run analysis (in hardware)
# Click "Run Analysis" button in SignalTap GUI

# Export data
# File → Export → Data to CSV/Text
```

**Remember**: SignalTap requires the design to be running on actual hardware - it cannot be used in pure simulation mode like ModelSim.

---

## 📊 **Testing Tools Summary**

| Testing Method | Tool | File Extension | Files Used | Purpose |
|----------------|------|----------------|------------|---------|
| **Simulation** | ModelSim | `.vht` | `tb_loopback.vht` | Pre-hardware verification |
| **Hardware Debug** | SignalTap | `.stp` | `rs232_signals.stp` | Real-time FPGA analysis |
| **Manual Testing** | DE2-115 Board | N/A | Your compiled `.sof` | Functional verification |

**SignalTap uses your actual FPGA design signals - no testbench files needed!**

**Happy debugging!** 🔍🚀
