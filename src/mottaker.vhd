library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mottaker is
    port(
        clk             : in  std_logic;  -- systemklokke
        rst_n           : in  std_logic;  -- reset aktiv låg
        dataInn         : in  std_logic;  -- Serielle data inn
        baudRateDivider : in  std_logic_vector(15 downto 0);  -- Baud-periode i antall (50 MHz) klokkeperiodar
        error           : out std_logic;  -- flag som er høg om mottatt data ikkje er gyldig RS-232-data.
        dataValidUt     : out std_logic;  -- høg når feilfrie data er mottatt og tilgjengeleg i dataUt
        dataUt          : out std_logic_vector(7 downto 0)  -- 8 bit mottatt data
    );
end entity mottaker;

architecture RTL of mottaker is
    -- State machine states
    type state_type is (IDLE, START_BIT, DATA_BITS, STOP_BIT, ERROR_STATE);
    signal state : state_type;
    
    -- Synchronization registers for dataInn (clock domain crossing)
    signal dataInn_sync1, dataInn_sync2, dataInn_sync3 : std_logic;
    signal dataInn_prev : std_logic;
    
    -- Baud rate counter
    signal baud_counter : unsigned(15 downto 0);
    signal baud_enable  : std_logic;
    signal half_baud_period : unsigned(15 downto 0);
    
    -- Data shift register
    signal data_shift_reg : std_logic_vector(7 downto 0);
    signal bit_counter    : integer range 0 to 7;
    
    -- Internal signals
    signal start_detected : std_logic;
    signal error_internal : std_logic;
    
begin
    -- Calculate half baud period for sampling in the middle of bit
    half_baud_period <= '0' & unsigned(baudRateDivider(15 downto 1));  -- Divide by 2
    
    -- Triple register synchronization for clock domain crossing
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            dataInn_sync1 <= '1';
            dataInn_sync2 <= '1';
            dataInn_sync3 <= '1';
            dataInn_prev <= '1';
        elsif rising_edge(clk) then
            dataInn_sync1 <= dataInn;
            dataInn_sync2 <= dataInn_sync1;
            dataInn_sync3 <= dataInn_sync2;
            dataInn_prev <= dataInn_sync3;
        end if;
    end process;
    
    -- Start bit detection (falling edge)
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            start_detected <= '0';
        elsif rising_edge(clk) then
            if state = IDLE and dataInn_prev = '1' and dataInn_sync3 = '0' then
                start_detected <= '1';
            else
                start_detected <= '0';
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
            elsif start_detected = '1' then
                -- Start counting from 0 when start bit is detected
                baud_counter <= (others => '0');
                baud_enable <= '0';
            elsif state = START_BIT and baud_counter = half_baud_period - 1 then
                -- First baud enable comes at half period (middle of start bit)
                baud_counter <= (others => '0');
                baud_enable <= '1';
            elsif baud_counter = unsigned(baudRateDivider) - 1 then
                -- Subsequent baud enables come at full period
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
            data_shift_reg <= (others => '0');
            bit_counter <= 0;
            dataValidUt <= '0';
            error <= '0';
            error_internal <= '0';
            dataUt <= (others => '0');
        elsif rising_edge(clk) then
            -- Clear dataValidUt after one clock cycle
            dataValidUt <= '0';
            
            case state is
                when IDLE =>
                    error <= '0';
                    error_internal <= '0';
                    if start_detected = '1' then
                        state <= START_BIT;
                        bit_counter <= 0;
                    end if;
                    
                when START_BIT =>
                    if baud_enable = '1' then
                        -- Sample in the middle of start bit
                        if dataInn_sync3 = '0' then
                            -- Valid start bit
                            state <= DATA_BITS;
                            bit_counter <= 0;
                        else
                            -- Invalid start bit
                            state <= ERROR_STATE;
                            error_internal <= '1';
                        end if;
                    end if;
                    
                when DATA_BITS =>
                    if baud_enable = '1' then
                        -- Sample data bit (LSB first)
                        data_shift_reg <= dataInn_sync3 & data_shift_reg(7 downto 1);
                        if bit_counter = 7 then
                            state <= STOP_BIT;
                        else
                            bit_counter <= bit_counter + 1;
                        end if;
                    end if;
                    
                when STOP_BIT =>
                    if baud_enable = '1' then
                        -- Check stop bit
                        if dataInn_sync3 = '1' then
                            -- Valid stop bit
                            dataUt <= data_shift_reg;
                            dataValidUt <= '1';
                            state <= IDLE;
                        else
                            -- Invalid stop bit
                            state <= ERROR_STATE;
                            error_internal <= '1';
                        end if;
                    end if;
                    
                when ERROR_STATE =>
                    error <= '1';
                    -- Wait for line to go high again
                    if dataInn_sync3 = '1' then
                        state <= IDLE;
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
            
            -- Latch error output
            if error_internal = '1' then
                error <= '1';
            end if;
        end if;
    end process;
    
end architecture RTL;
