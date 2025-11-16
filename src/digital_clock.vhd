library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity digital_clock is
    port(
        clk        : in  std_logic;
        rst_n      : in  std_logic;
        enable_1hz : in  std_logic;  -- 1 Hz enable pulse
        hours      : out std_logic_vector(7 downto 0);
        minutes    : out std_logic_vector(7 downto 0);
        seconds    : out std_logic_vector(7 downto 0)
    );
end entity digital_clock;

architecture RTL of digital_clock is
    -- Internal counters
    signal sec_counter  : integer range 0 to 59;
    signal min_counter  : integer range 0 to 59;
    signal hour_counter : integer range 0 to 23;
    
begin
    -- Convert to binary output
    hours   <= std_logic_vector(to_unsigned(hour_counter, 8));
    minutes <= std_logic_vector(to_unsigned(min_counter, 8));
    seconds <= std_logic_vector(to_unsigned(sec_counter, 8));
    
    -- Clock process
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            sec_counter  <= 0;
            min_counter  <= 0;
            hour_counter <= 0;
        elsif rising_edge(clk) then
            if enable_1hz = '1' then
                -- Increment seconds
                if sec_counter = 59 then
                    sec_counter <= 0;
                    -- Increment minutes
                    if min_counter = 59 then
                        min_counter <= 0;
                        -- Increment hours
                        if hour_counter = 23 then
                            hour_counter <= 0;
                        else
                            hour_counter <= hour_counter + 1;
                        end if;
                    else
                        min_counter <= min_counter + 1;
                    end if;
                else
                    sec_counter <= sec_counter + 1;
                end if;
            end if;
        end if;
    end process;
    
end architecture RTL;
