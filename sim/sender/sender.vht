library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sender is
end entity tb_sender;

architecture sim of tb_sender is
    -- Component declaration
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
    
    -- Test signals
    signal clk               : std_logic := '0';
    signal rst_n             : std_logic := '0';
    signal startPuls         : std_logic := '0';
    signal baud_rate_divider : std_logic_vector(15 downto 0) := (others => '0');
    signal dataIn            : std_logic_vector(7 downto 0) := (others => '0');
    signal txReady           : std_logic;
    signal dataOut           : std_logic;
    
    -- Clock period (50 MHz)
    constant CLK_PERIOD : time := 20 ns;
    
    -- Baud rate divider for 1 Mbps (for fast simulation)
    constant BAUD_1M : integer := 50;
    
    -- Test data
    type data_array is array (0 to 3) of std_logic_vector(7 downto 0);
    constant test_data : data_array := (x"A5", x"12", x"34", x"5A");
    
begin
    -- Clock generation
    clk <= not clk after CLK_PERIOD/2;
    
    -- DUT instantiation
    DUT: sender
        port map(
            clk               => clk,
            rst_n             => rst_n,
            startPuls         => startPuls,
            baud_rate_divider => baud_rate_divider,
            dataIn            => dataIn,
            txReady           => txReady,
            dataOut           => dataOut
        );
    
    -- Test process
    test_proc: process
    begin
        -- Initial values
        rst_n <= '0';
        startPuls <= '0';
        baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_1M, 16));
        dataIn <= x"00";
        
        -- Wait for 100 ns
        wait for 100 ns;
        
        -- Release reset
        rst_n <= '1';
        wait for 100 ns;
        
        -- Send test data
        for i in 0 to 3 loop
            -- Wait for transmitter to be ready
            wait until txReady = '1';
            wait for CLK_PERIOD;
            
            -- Set data
            dataIn <= test_data(i);
            wait for CLK_PERIOD;
            
            -- Send start pulse
            startPuls <= '1';
            wait for CLK_PERIOD;
            startPuls <= '0';
            
            -- Wait for transmission to complete
            wait until txReady = '1';
            
            report "Sent byte " & integer'image(i) & ": 0x" & 
                   integer'image(to_integer(unsigned(test_data(i))));
            
            -- Wait between transmissions
            wait for 10 * CLK_PERIOD;
        end loop;
        
        -- Test complete
        report "Sender test completed successfully!";
        wait for 1 us;
        
        -- End simulation
        assert false report "Simulation finished" severity failure;
    end process;
    
    -- Monitor process to display transmitted bits
    monitor_proc: process
        variable bit_count : integer;
        variable rx_byte : std_logic_vector(7 downto 0);
    begin
        wait until rst_n = '1';
        
        loop
            -- Wait for start bit
            wait until dataOut = '0';
            report "Start bit detected";
            wait for BAUD_1M * CLK_PERIOD;  -- Wait one bit period
            
            -- Receive data bits
            for i in 0 to 7 loop
                rx_byte(i) := dataOut;
                wait for BAUD_1M * CLK_PERIOD;
            end loop;
            
            -- Check stop bit
            if dataOut = '1' then
                report "Received byte: 0x" & 
                       integer'image(to_integer(unsigned(rx_byte)));
            else
                report "ERROR: Invalid stop bit!" severity error;
            end if;
            
            wait for CLK_PERIOD;
        end loop;
    end process;
    
end architecture sim;
