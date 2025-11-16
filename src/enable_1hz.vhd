library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity enable_1hz is
    port(
        clk        : in  std_logic;
        rst_n      : in  std_logic;
        enable_1hz : out std_logic
    );
end entity enable_1hz;

architecture RTL of enable_1hz is
    -- Counter for 50 MHz clock to generate 1 Hz
    -- 50,000,000 cycles = 1 second
    constant COUNT_MAX : integer := 50000000 - 1;
    signal counter : integer range 0 to COUNT_MAX;
    
begin
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            counter <= 0;
            enable_1hz <= '0';
        elsif rising_edge(clk) then
            if counter = COUNT_MAX then
                counter <= 0;
                enable_1hz <= '1';
            else
                counter <= counter + 1;
                enable_1hz <= '0';
            end if;
        end if;
    end process;
    
end architecture RTL;
