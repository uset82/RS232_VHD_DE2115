# RS-232 Communication System - Quartus Compilation Script
# ELE111 Project

Write-Host "===== RS-232 Communication System Compilation =====" -ForegroundColor Cyan
Write-Host "ELE111 Semester Project 2025" -ForegroundColor Cyan
Write-Host ""

# Check if Quartus is in PATH
$quartusPath = Get-Command quartus_sh -ErrorAction SilentlyContinue
if (-not $quartusPath) {
    Write-Host "ERROR: quartus_sh not found in PATH!" -ForegroundColor Red
    Write-Host "Please add Quartus bin directory to your PATH." -ForegroundColor Yellow
    Write-Host "Example: C:\intelFPGA_lite\23.1\quartus\bin64" -ForegroundColor Yellow
    exit 1
}

Write-Host "Found Quartus at: $($quartusPath.Source)" -ForegroundColor Green

# Clean previous output
if (Test-Path "output_files") {
    Write-Host "Cleaning previous build..." -ForegroundColor Yellow
    Remove-Item -Path "output_files\*" -Force -Recurse -ErrorAction SilentlyContinue
}

# Create output directory
if (-not (Test-Path "output_files")) {
    New-Item -ItemType Directory -Path "output_files" | Out-Null
}

# Run Analysis & Synthesis
Write-Host "`nRunning Analysis & Synthesis..." -ForegroundColor Green
& quartus_map --read_settings_files=on --write_settings_files=off RS232_Communication -c RS232_Communication

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR during Analysis & Synthesis!" -ForegroundColor Red
    exit $LASTEXITCODE
}

# Run Fitter
Write-Host "`nRunning Fitter (Place & Route)..." -ForegroundColor Green
& quartus_fit --read_settings_files=on --write_settings_files=off RS232_Communication -c RS232_Communication

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR during Fitting!" -ForegroundColor Red
    exit $LASTEXITCODE
}

# Run Assembler
Write-Host "`nGenerating programming file..." -ForegroundColor Green
& quartus_asm --read_settings_files=on --write_settings_files=off RS232_Communication -c RS232_Communication

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR during Assembly!" -ForegroundColor Red
    exit $LASTEXITCODE
}

# Run Timing Analyzer
Write-Host "`nRunning Timing Analysis..." -ForegroundColor Green
& quartus_sta RS232_Communication -c RS232_Communication

if ($LASTEXITCODE -ne 0) {
    Write-Host "WARNING: Timing Analysis reported issues" -ForegroundColor Yellow
}

# Display summary
Write-Host "`n===== COMPILATION SUCCESSFUL =====" -ForegroundColor Green
Write-Host ""
Write-Host "Programming file: output_files\RS232_Communication.sof" -ForegroundColor Cyan

# Show resource usage
$fitSummary = "output_files\RS232_Communication.fit.summary"
if (Test-Path $fitSummary) {
    Write-Host "`nResource Utilization:" -ForegroundColor Yellow
    Get-Content $fitSummary | Select-String -Pattern "Total logic elements|Total registers|Total pins|Total memory" | ForEach-Object {
        Write-Host "  $_" -ForegroundColor White
    }
}

Write-Host "`n===== Configuration Instructions =====" -ForegroundColor Cyan
Write-Host ""
Write-Host "SENDER MODE (Board 1):" -ForegroundColor Green
Write-Host "  1. Set SW[17] = 0" -ForegroundColor White
Write-Host "  2. Select baud rate: SW[16:14]" -ForegroundColor White
Write-Host "  3. Select data source: SW[13:12]" -ForegroundColor White
Write-Host "     00 = Hardcoded (0xA5)" -ForegroundColor Gray
Write-Host "     01 = SW[7:0]" -ForegroundColor Gray
Write-Host "     10 = Digital clock" -ForegroundColor Gray
Write-Host "  4. Press KEY[3] to send" -ForegroundColor White
Write-Host ""
Write-Host "RECEIVER MODE (Board 2):" -ForegroundColor Green
Write-Host "  1. Set SW[17] = 1" -ForegroundColor White
Write-Host "  2. Select same baud rate: SW[16:14]" -ForegroundColor White
Write-Host "  3. Observe LEDR[7:0] and HEX1:HEX0" -ForegroundColor White
Write-Host ""
Write-Host "LOOPBACK TEST (Single Board):" -ForegroundColor Yellow
Write-Host "  - Connect jumper: EX_IO pin 1 (PIN_J10) → EX_IO pin 7 (PIN_D9)" -ForegroundColor White
Write-Host "  - Connect GND pins on EX_IO connector together" -ForegroundColor White
Write-Host "  - Use both sender and receiver on same board" -ForegroundColor White
