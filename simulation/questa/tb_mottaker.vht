library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mottaker is
end entity tb_mottaker;

architecture sim of tb_mottaker is
    component mottaker is
        port(
            clk             : in  std_logic;
            rst_n           : in  std_logic;
            dataInn         : in  std_logic;
            baudRateDivider : in  std_logic_vector(15 downto 0);
            error           : out std_logic;
            dataValidUt     : out std_logic;
            dataUt          : out std_logic_vector(7 downto 0)
        );
    end component;
    
    -- Test signals
    signal clk               : std_logic := '0';
    signal rst_n             : std_logic := '0';
    signal baud_rate_divider : std_logic_vector(15 downto 0) := (others => '0');
    signal serial_line       : std_logic := '1';  -- idle level
    signal rx_error          : std_logic;
    signal rx_dataValid      : std_logic;
    signal rx_dataOut        : std_logic_vector(7 downto 0);
    
    -- Statistics
    signal bytes_sent     : integer := 0;
    signal bytes_received : integer := 0;
    signal errors_count   : integer := 0;
    
    -- Clock period (50 MHz)
    constant CLK_PERIOD : time := 20 ns;
    
    -- Baud-rate table (same values used on hardware)
    type baud_rate_array is array (0 to 3) of integer;
    constant baud_rates : baud_rate_array := (
        50,      -- 1 Mbps
        434,     -- 115200
        5208,    -- 9600
        10417    -- 4800
    );
    
    -- Test data
    type data_array is array (0 to 3) of std_logic_vector(7 downto 0);
    constant test_data : data_array := (x"A5", x"12", x"34", x"5A");
    
    -- Helper to convert divider to bit-period time
    function bit_period(divider : integer) return time is
    begin
        return divider * CLK_PERIOD;
    end function;
    
    -- Drive a full UART frame (start, 8 data bits LSB-first, stop)
    procedure send_byte(signal line : out std_logic;
                        value       : std_logic_vector(7 downto 0);
                        period      : time) is
    begin
        -- Start bit
        line <= '0';
        wait for period;
        -- Data bits
        for i in 0 to 7 loop
            line <= value(i);
            wait for period;
        end loop;
        -- Stop bit
        line <= '1';
        wait for period;
        -- Idle gap between frames
        wait for period;
    end procedure;
    
begin
    -- 50 MHz clock
    clk <= not clk after CLK_PERIOD/2;
    
    -- Device under test
    dut: mottaker
        port map(
            clk             => clk,
            rst_n           => rst_n,
            dataInn         => serial_line,
            baudRateDivider => baud_rate_divider,
            error           => rx_error,
            dataValidUt     => rx_dataValid,
            dataUt          => rx_dataOut
        );
    
    -- Stimulus
    test_proc: process
        variable bit_time : time;
    begin
        -- Reset
        rst_n <= '0';
        serial_line <= '1';
        wait for 100 ns;
        rst_n <= '1';
        wait for 100 ns;
        
        -- Sweep baud rates
        for baud_idx in baud_rates'range loop
            bit_time := bit_period(baud_rates(baud_idx));
            baud_rate_divider <= std_logic_vector(to_unsigned(baud_rates(baud_idx), 16));
            report "Testing receiver with divider " & integer'image(baud_rates(baud_idx));
            
            -- Transmit all test bytes
            for data_idx in test_data'range loop
                send_byte(serial_line, test_data(data_idx), bit_time);
                bytes_sent <= bytes_sent + 1;
                -- Allow time for receiver to assert dataValid
                wait for bit_time;
            end loop;
            
            wait for 20 us;
        end loop;
        
        -- Final summary
        wait for 100 us;
        report "=== RECEIVER TEST SUMMARY ===" severity note;
        report "Frames injected : " & integer'image(bytes_sent) severity note;
        report "Frames received : " & integer'image(bytes_received) severity note;
        report "Errors detected : " & integer'image(errors_count) severity note;
        
        if bytes_sent = bytes_received and errors_count = 0 then
            report "TEST PASSED: Receiver captured all bytes correctly." severity note;
        else
            report "TEST FAILED: Receiver errors detected." severity error;
        end if;
        
        -- End simulation
        assert false report "Simulation finished" severity failure;
    end process;
    
    -- Monitor results
    monitor_proc: process
        variable expected_idx : integer := 0;
    begin
        wait until rst_n = '1';
        wait until rising_edge(clk);
        
        while true loop
            wait until rising_edge(clk);
            
            if rx_dataValid = '1' then
                report "Receiver produced byte: 0x" &
                       integer'image(to_integer(unsigned(rx_dataOut))) &
                       " (expected 0x" &
                       integer'image(to_integer(unsigned(test_data(expected_idx)))) & ")";
                
                if rx_dataOut = test_data(expected_idx) then
                    report "Data match OK" severity note;
                else
                    report "DATA MISMATCH!" severity error;
                    errors_count <= errors_count + 1;
                end if;
                
                bytes_received <= bytes_received + 1;
                expected_idx := (expected_idx + 1) mod test_data'length;
            end if;
            
            if rx_error = '1' then
                report "Receiver flagged ERROR" severity error;
                errors_count <= errors_count + 1;
            end if;
        end loop;
    end process;
    
end architecture sim;

