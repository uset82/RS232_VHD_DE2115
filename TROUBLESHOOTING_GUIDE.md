# RS-232 Communication Troubleshooting Guide
## ELE111 Project

## 🔍 **Systematic Debugging Steps**

### **Step 1: Verify Hardware Connections**

#### **Check Jumper Wire:**
- [ ] **EX_IO Pin 1** ↔ **EX_IO Pin 7** (TX → RX)
- [ ] **GND pin** ↔ **GND pin** (common ground)
- [ ] Use a **multimeter** to verify continuity
- [ ] Try a different jumper wire if possible

#### **Board Power:**
- [ ] DE2-115 board is powered on
- [ ] USB-Blaster is connected and recognized
- [ ] Green power LED is lit

---

### **Step 2: Verify FPGA Programming**

#### **Compilation Check:**
```bash
# Run compilation again to ensure no errors
quartus_map RS232_Communication.qpf
quartus_fit RS232_Communication.qpf
quartus_asm RS232_Communication.qpf
```

#### **Programming Steps:**
1. Open **Quartus Programmer**
2. Select your DE2-115 device
3. Add file: `output_files/RS232_Communication.sof`
4. **Important:** Use `.sof` file, not `.pof`
5. Click **Start** - wait for "100% (Successful)" message

#### **Verify Programming:**
- [ ] Progress bar shows 100%
- [ ] Status shows "Successful"
- [ ] No error messages

---

### **Step 3: Test Basic Board Functionality**

#### **Reset Test:**
1. Press **KEY[0]** (reset button)
2. Check if **LEDG[7]** (heartbeat) starts blinking
3. If no blinking → FPGA not programmed or reset not working

#### **Mode Indicator Test:**
- Set **SW[17] = 0** → **LEDG[6]** should light (Sender mode)
- Set **SW[17] = 1** → **LEDG[5]** should light (Receiver mode)

---

### **Step 4: Test Individual Components**

#### **Sender Mode Test (SW[17] = 0):**
1. Set baud rate: **SW[16:14] = 001** (9600 baud)
2. Set data source: **SW[13:12] = 00** (hardcoded 0xA5)
3. Check **LEDG[7]** - should be ON (TX ready)
4. Press **KEY[3]** to send
5. **LEDG[7]** should briefly go OFF then back ON

#### **Receiver Mode Test (SW[17] = 1):**
1. Set same baud rate: **SW[16:14] = 001**
2. Check **LEDG[5]** - should be ON (Receiver mode)
3. Check **LEDR[7:0]** - should show received data
4. Check **HEX1:HEX0** - should show decimal value

---

### **Step 5: RS-232 Signal Verification**

#### **Use Oscilloscope (if available):**
1. Connect probe to **EX_IO Pin 1** (TX output)
2. Set trigger to **falling edge**
3. Press **KEY[3]** to send data
4. You should see:
   - Start bit: LOW pulse (~1 bit period)
   - 8 data bits: HIGH/LOW levels
   - Stop bit: HIGH level

#### **Expected Waveform:**
```
     Start   Data   Data   Data   Data   Data   Data   Data   Data   Stop
     ↓      ↓      ↓      ↓      ↓      ↓      ↓      ↓      ↓      ↓
─────┐   ┌──┴──┬──┬──┬──┬──┬──┬──┬──┬──┬───────
     └───────┴──┴──┴──┴──┴──┴──┴──┴──┴──┴───────
     │<────── 10 bit periods (8 data + start + stop) ────>│
```

---

### **Step 6: Common Issues & Solutions**

#### **❌ No LED Activity:**
**Problem:** LEDs don't respond to switch changes
**Solutions:**
- Re-program the FPGA
- Check power connection
- Try different USB port for USB-Blaster
- Verify Quartus Programmer shows "Successful"

#### **❌ TX Ready LED (LEDG[7]) stays OFF:**
**Problem:** Transmitter not ready
**Solutions:**
- Check reset (KEY[0])
- Verify baud rate switches (SW[16:14])
- Check data source switches (SW[13:12])

#### **❌ No Data Reception (LEDR[7:0] all OFF):**
**Problem:** Receiver not getting data
**Solutions:**
- Verify jumper connection (EX_IO Pin 1 ↔ Pin 7)
- Check baud rate match between TX/RX modes
- Try different baud rates (start with 9600)
- Test in sender mode first to verify TX works

#### **❌ Wrong Data Received:**
**Problem:** Data corruption
**Solutions:**
- Check GND connection
- Try slower baud rate
- Verify jumper wire quality
- Check for interference on EX_IO pins

#### **❌ Error LED (LEDG[1]) stays ON:**
**Problem:** RS-232 framing errors
**Solutions:**
- Baud rate mismatch
- Poor jumper connection
- Signal integrity issues
- Timing problems

---

### **Step 7: Advanced Debugging**

#### **SignalTap Setup (Hardware Debugging):**
1. Follow `SIGNALTAP_GUIDE.md`
2. Monitor these signals:
   - `serial_line` - should show RS-232 waveform
   - `tx_ready` - should pulse when sending
   - `rx_data_valid` - should pulse on reception
   - `rx_error` - should be LOW

#### **ModelSim Simulation:**
1. Run `tb_loopback.vht`
2. Verify simulation works perfectly
3. Compare with hardware behavior

#### **Manual Signal Testing:**
1. Set to sender mode
2. Connect oscilloscope to EX_IO Pin 1
3. Send data and verify waveform
4. Switch to receiver mode
5. Send data again and check reception

---

### **Step 8: Hardware Alternatives**

#### **If jumper doesn't work:**
- Try different jumper wires
- Use breadboard with proper connections
- Check EX_IO connector for bent pins

#### **Alternative Testing:**
- **External loopback:** Connect TX to RX with proper RS-232 levels
- **Two-board test:** Use separate TX/RX boards
- **LED verification:** Send known patterns and verify on LEDs

---

### **Quick Diagnostic Checklist:**

- [ ] Board powered on ✅
- [ ] FPGA programmed successfully ✅
- [ ] Jumper connected: Pin 1 ↔ Pin 7 ✅
- [ ] GND connected ✅
- [ ] Reset pressed (KEY[0]) ✅
- [ ] LEDG[7] blinking (heartbeat) ✅
- [ ] Correct mode selected (SW[17]) ✅
- [ ] Baud rate set (SW[16:14]) ✅
- [ ] Data sent (KEY[3]) ✅
- [ ] Data received (LEDR[7:0]) ❓

**Start from the top and work down - most issues are simple connection problems!** 🔧

**Need more specific help? Describe exactly what LEDs/behavior you're seeing.** 📊
