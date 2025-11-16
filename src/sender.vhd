library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sender is
    port(
        clk               : in  std_logic;  -- systemklokke
        rst_n             : in  std_logic;  -- reset, aktiv låg
        startPuls         : in  std_logic;  -- puls som startar sending av 8 bit med data
        baud_rate_divider : in  std_logic_vector(15 downto 0);  -- Baud-periode i antall (50 MHz) klokkeperiodar
        dataIn            : in  std_logic_vector(7 downto 0);   -- 8 bit med data som skal overførast i ei melding
        txReady           : out std_logic;  -- Når txReady = '1' ventar sendar på ny sendEnable for å starta sending av nye data.
        dataOut           : out std_logic   -- serielle data, skal koplast mot EX_IO-port
    );
end entity sender;

architecture RTL of sender is
    -- State machine states
    type state_type is (IDLE, START_BIT, DATA_BITS, STOP_BIT);
    signal state : state_type;
    
    -- Baud rate counter
    signal baud_counter : unsigned(15 downto 0);
    signal baud_enable  : std_logic;
    
    -- Data shift register
    signal data_shift_reg : std_logic_vector(7 downto 0);
    signal bit_counter    : integer range 0 to 7;
    
    -- Internal signals
    signal tx_ready_internal : std_logic;
    signal start_transmission : std_logic;
    signal start_pulse_prev : std_logic;
    
begin
    -- Output assignments
    txReady <= tx_ready_internal;
    
    -- Edge detection for startPuls
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            start_pulse_prev <= '0';
            start_transmission <= '0';
        elsif rising_edge(clk) then
            start_pulse_prev <= startPuls;
            -- Detect rising edge of startPuls
            if startPuls = '1' and start_pulse_prev = '0' and tx_ready_internal = '1' then
                start_transmission <= '1';
            else
                start_transmission <= '0';
            end if;
        end if;
    end process;
    
    -- Baud rate generator
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            baud_counter <= (others => '0');
            baud_enable <= '0';
        elsif rising_edge(clk) then
            if state = IDLE then
                baud_counter <= (others => '0');
                baud_enable <= '0';
            elsif baud_counter = unsigned(baud_rate_divider) - 1 then
                baud_counter <= (others => '0');
                baud_enable <= '1';
            else
                baud_counter <= baud_counter + 1;
                baud_enable <= '0';
            end if;
        end if;
    end process;
    
    -- Main state machine
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            state <= IDLE;
            dataOut <= '1';  -- Idle state is high
            data_shift_reg <= (others => '0');
            bit_counter <= 0;
            tx_ready_internal <= '1';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    dataOut <= '1';  -- Keep line high when idle
                    tx_ready_internal <= '1';
                    if start_transmission = '1' then
                        data_shift_reg <= dataIn;
                        tx_ready_internal <= '0';
                        state <= START_BIT;
                    end if;
                    
                when START_BIT =>
                    dataOut <= '0';  -- Start bit is always '0'
                    if baud_enable = '1' then
                        bit_counter <= 0;
                        state <= DATA_BITS;
                    end if;
                    
                when DATA_BITS =>
                    dataOut <= data_shift_reg(bit_counter);  -- Send LSB first
                    if baud_enable = '1' then
                        if bit_counter = 7 then
                            state <= STOP_BIT;
                        else
                            bit_counter <= bit_counter + 1;
                        end if;
                    end if;
                    
                when STOP_BIT =>
                    dataOut <= '1';  -- Stop bit is always '1'
                    if baud_enable = '1' then
                        state <= IDLE;
                        tx_ready_internal <= '1';
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
    
end architecture RTL;
