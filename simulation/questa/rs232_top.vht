-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/16/2025 11:04:01"
                                                            
-- Vhdl Test Bench template for design  :  rs232_top
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rs232_top_vhd_tst is
end entity rs232_top_vhd_tst;

architecture rs232_top_arch of rs232_top_vhd_tst is
    -- Clock & reset
    signal CLOCK_50 : std_logic := '0';
    signal KEY      : std_logic_vector(3 downto 0) := (others => '1'); -- active low buttons
    signal SW       : std_logic_vector(17 downto 0) := (others => '0');
    
    -- External IO / displays
    signal EX_IO : std_logic_vector(6 downto 0) := (others => 'Z');
    signal HEX0, HEX1, HEX2, HEX3 : std_logic_vector(6 downto 0);
    signal HEX4, HEX5, HEX6, HEX7 : std_logic_vector(6 downto 0);
    signal LEDR : std_logic_vector(17 downto 0);
    signal LEDG : std_logic_vector(7 downto 0);
    
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz
    
    component rs232_top is
        port(
            CLOCK_50 : in    std_logic;
            KEY      : in    std_logic_vector(3 downto 0);
            SW       : in    std_logic_vector(17 downto 0);
            EX_IO    : inout std_logic_vector(6 downto 0);
            LEDR     : out   std_logic_vector(17 downto 0);
            LEDG     : out   std_logic_vector(7 downto 0);
            HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(6 downto 0);
            HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
        );
    end component;
    
    -- Helper to trigger a transmission (KEY3 is active low)
    procedure press_key3 is
    begin
        KEY(3) <= '0';
        wait for 2 * CLK_PERIOD;
        KEY(3) <= '1';
    end procedure;
    
    -- Expect LEDR[7:0] to match a value after RX completes
    procedure expect_led(value : std_logic_vector(7 downto 0); label : string) is
    begin
        wait for 200 us;
        assert LEDR(7 downto 0) = value
            report label & ": expected " & integer'image(to_integer(unsigned(value))) &
                   " but saw " & integer'image(to_integer(unsigned(LEDR(7 downto 0)))))
            severity error;
        report label & ": LEDR matches 0x" &
               integer'image(to_integer(unsigned(value))) severity note;
    end procedure;
    
begin
    -- DUT instantiation
    dut : rs232_top
        port map(
            CLOCK_50 => CLOCK_50,
            KEY      => KEY,
            SW       => SW,
            EX_IO    => EX_IO,
            LEDR     => LEDR,
            LEDG     => LEDG,
            HEX0     => HEX0,
            HEX1     => HEX1,
            HEX2     => HEX2,
            HEX3     => HEX3,
            HEX4     => HEX4,
            HEX5     => HEX5,
            HEX6     => HEX6,
            HEX7     => HEX7
        );
    
    -- 50 MHz system clock
    CLOCK_50 <= not CLOCK_50 after CLK_PERIOD/2;
    
    -- Emulate the jumper between TX (EX_IO[0]) and RX (EX_IO[6])
    EX_IO(6) <= EX_IO(0);
    EX_IO(5 downto 1) <= (others => 'Z');
    
    -- Stimulus
    stimulus : process
        constant BAUD_1M  : std_logic_vector(2 downto 0) := "111";
        constant BAUD_9600: std_logic_vector(2 downto 0) := "001";
    begin
        -- Hold reset low
        KEY(0) <= '0';
        wait for 200 ns;
        KEY(0) <= '1';
        
        -- Default switch configuration
        SW(17) <= '0';                 -- Sender mode view
        SW(16 downto 14) <= BAUD_1M;   -- Fast baud for sim
        SW(13 downto 12) <= "00";      -- Hardcoded pattern (0xA5)
        SW(7 downto 0)   <= x"00";
        
        wait for 1 us;
        report "Sending hardcoded pattern (0xA5) at 1 Mbps";
        press_key3;
        expect_led(x"A5", "Hardcoded data");
        
        -- Switch to receiver mode view to check HEX5:HEX4 if desired
        SW(17) <= '1';
        wait for 1 us;
        SW(17) <= '0';
        
        -- Send SW-controlled value
        SW(13 downto 12) <= "01";
        SW(7 downto 0)   <= x"3C";
        report "Sending switch-selected value (0x3C) at 1 Mbps";
        press_key3;
        expect_led(x"3C", "Switch data");
        
        -- Try a slower baud rate to ensure timing works
        SW(16 downto 14) <= BAUD_9600;
        SW(7 downto 0)   <= x"5A";
        report "Sending switch-selected value (0x5A) at 9600 baud";
        press_key3;
        expect_led(x"5A", "Slow baud data");
        
        report "rs232_top testbench completed successfully" severity note;
        wait for 10 us;
        assert false report "Simulation finished" severity failure;
    end process;
    
end architecture rs232_top_arch;
