library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity message_sync is
    port(
        clk          : in  std_logic;
        rst_n        : in  std_logic;
        -- Input from receiver
        data_valid   : in  std_logic;
        data_in      : in  std_logic_vector(7 downto 0);
        -- Synchronized output
        sync_valid   : out std_logic;
        hours_out    : out std_logic_vector(7 downto 0);
        minutes_out  : out std_logic_vector(7 downto 0);
        seconds_out  : out std_logic_vector(7 downto 0)
    );
end entity message_sync;

architecture RTL of message_sync is
    -- State machine for message synchronization
    type state_type is (WAIT_SYNC, GET_HOURS, GET_MINUTES, GET_SECONDS);
    signal state : state_type;
    
    -- Data registers
    signal hours_reg   : std_logic_vector(7 downto 0);
    signal minutes_reg : std_logic_vector(7 downto 0);
    signal seconds_reg : std_logic_vector(7 downto 0);
    
    -- Timeout counter (to recover from lost bytes)
    signal timeout_counter : integer range 0 to 5000000;  -- 100ms timeout
    
begin
    -- Output assignments
    hours_out   <= hours_reg;
    minutes_out <= minutes_reg;
    seconds_out <= seconds_reg;
    
    -- Message synchronization state machine
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            state <= WAIT_SYNC;
            hours_reg <= (others => '0');
            minutes_reg <= (others => '0');
            seconds_reg <= (others => '0');
            sync_valid <= '0';
            timeout_counter <= 0;
        elsif rising_edge(clk) then
            sync_valid <= '0';  -- Default
            
            -- Timeout handling
            if state /= WAIT_SYNC and timeout_counter > 0 then
                timeout_counter <= timeout_counter - 1;
            elsif state /= WAIT_SYNC and timeout_counter = 0 then
                -- Timeout occurred, go back to waiting for sync
                state <= WAIT_SYNC;
            end if;
            
            -- State machine
            case state is
                when WAIT_SYNC =>
                    if data_valid = '1' and data_in = x"FF" then
                        -- Sync byte detected
                        state <= GET_HOURS;
                        timeout_counter <= 5000000;  -- Reset timeout
                    end if;
                    
                when GET_HOURS =>
                    if data_valid = '1' then
                        hours_reg <= data_in;
                        state <= GET_MINUTES;
                        timeout_counter <= 5000000;  -- Reset timeout
                    end if;
                    
                when GET_MINUTES =>
                    if data_valid = '1' then
                        minutes_reg <= data_in;
                        state <= GET_SECONDS;
                        timeout_counter <= 5000000;  -- Reset timeout
                    end if;
                    
                when GET_SECONDS =>
                    if data_valid = '1' then
                        seconds_reg <= data_in;
                        sync_valid <= '1';  -- Complete message received
                        state <= WAIT_SYNC;
                    end if;
                    
                when others =>
                    state <= WAIT_SYNC;
            end case;
        end if;
    end process;
    
end architecture RTL;
