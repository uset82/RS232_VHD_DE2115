library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_loopback is
end entity tb_loopback;

architecture sim of tb_loopback is
    -- Component declarations
    component sender is
        port(
            clk               : in  std_logic;
            rst_n             : in  std_logic;
            startPuls         : in  std_logic;
            baud_rate_divider : in  std_logic_vector(15 downto 0);
            dataIn            : in  std_logic_vector(7 downto 0);
            txReady           : out std_logic;
            dataOut           : out std_logic
        );
    end component;
    
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
    signal startPuls         : std_logic := '0';
    signal baud_rate_divider : std_logic_vector(15 downto 0) := (others => '0');
    signal tx_dataIn         : std_logic_vector(7 downto 0) := (others => '0');
    signal txReady           : std_logic;
    signal serial_line       : std_logic;  -- Connection between TX and RX
    signal rx_error          : std_logic;
    signal rx_dataValid      : std_logic;
    signal rx_dataOut        : std_logic_vector(7 downto 0);
    
    -- Clock period (50 MHz)
    constant CLK_PERIOD : time := 20 ns;
    
    -- Test different baud rates
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
    
    -- Statistics
    signal bytes_sent     : integer := 0;
    signal bytes_received : integer := 0;
    signal errors_count   : integer := 0;
    
begin
    -- Clock generation
    clk <= not clk after CLK_PERIOD/2;
    
    -- Sender instantiation
    sender_inst: sender
        port map(
            clk               => clk,
            rst_n             => rst_n,
            startPuls         => startPuls,
            baud_rate_divider => baud_rate_divider,
            dataIn            => tx_dataIn,
            txReady           => txReady,
            dataOut           => serial_line
        );
    
    -- Receiver instantiation
    receiver_inst: mottaker
        port map(
            clk             => clk,
            rst_n           => rst_n,
            dataInn         => serial_line,
            baudRateDivider => baud_rate_divider,
            error           => rx_error,
            dataValidUt     => rx_dataValid,
            dataUt          => rx_dataOut
        );
    
    -- Test process
    test_proc: process
    begin
        -- Initial values
        rst_n <= '0';
        startPuls <= '0';
        tx_dataIn <= x"00";
        
        -- Wait for 100 ns
        wait for 100 ns;
        
        -- Release reset
        rst_n <= '1';
        wait for 100 ns;
        
        -- Test each baud rate
        for baud_idx in 0 to 3 loop
            report "Testing baud rate divider: " & integer'image(baud_rates(baud_idx));
            baud_rate_divider <= std_logic_vector(to_unsigned(baud_rates(baud_idx), 16));
            
            -- Send test data
            for data_idx in 0 to 3 loop
                -- Wait for transmitter to be ready
                wait until txReady = '1';
                wait for CLK_PERIOD;
                
                -- Set data
                tx_dataIn <= test_data(data_idx);
                wait for CLK_PERIOD;
                
                -- Send start pulse
                startPuls <= '1';
                wait for CLK_PERIOD;
                startPuls <= '0';
                bytes_sent <= bytes_sent + 1;
                
                -- Wait for transmission to complete
                wait until txReady = '1';
                
                -- Add some delay between transmissions
                wait for 20 * CLK_PERIOD;
            end loop;
            
            -- Wait for last byte to be received
            wait for 100 us;
            
            -- Add delay between baud rate changes
            wait for 10 us;
        end loop;
        
        -- Final report
        wait for 100 us;
        report "=== LOOPBACK TEST SUMMARY ===" severity note;
        report "Bytes sent: " & integer'image(bytes_sent) severity note;
        report "Bytes received: " & integer'image(bytes_received) severity note;
        report "Errors: " & integer'image(errors_count) severity note;
        
        if bytes_sent = bytes_received and errors_count = 0 then
            report "TEST PASSED: All bytes transmitted and received correctly!" severity note;
        else
            report "TEST FAILED: Transmission errors detected!" severity error;
        end if;
        
        -- End simulation
        assert false report "Simulation finished" severity failure;
    end process;
    
    -- Monitor received data
    rx_monitor: process
    begin
        wait until rst_n = '1';
        
        loop
            wait until rising_edge(clk);
            
            if rx_dataValid = '1' then
                bytes_received <= bytes_received + 1;
                report "Received byte: 0x" & 
                       integer'image(to_integer(unsigned(rx_dataOut))) &
                       " (byte #" & integer'image(bytes_received) & ")";
                       
                -- Check if received data matches expected
                if bytes_received <= 16 then  -- We send 4 bytes x 4 baud rates = 16 bytes
                    if rx_dataOut = test_data((bytes_received - 1) mod 4) then
                        report "Data match OK" severity note;
                    else
                        report "DATA MISMATCH! Expected: 0x" & 
                               integer'image(to_integer(unsigned(test_data((bytes_received - 1) mod 4)))) &
                               " Got: 0x" & 
                               integer'image(to_integer(unsigned(rx_dataOut))) severity error;
                        errors_count <= errors_count + 1;
                    end if;
                end if;
            end if;
            
            if rx_error = '1' then
                report "RX ERROR detected!" severity error;
                errors_count <= errors_count + 1;
            end if;
        end loop;
    end process;
    
end architecture sim;
