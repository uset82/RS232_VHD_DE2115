library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baud_rate_selector is
    port(
        sw_select        : in  std_logic_vector(2 downto 0);  -- SW(16 downto 14)
        baud_rate_divider : out std_logic_vector(15 downto 0)
    );
end entity baud_rate_selector;

architecture RTL of baud_rate_selector is
    -- Baud rate divider values for 50 MHz clock
    -- Divider = 50,000,000 / baud_rate
    constant BAUD_4800   : integer := 50000000 / 4800;    -- 10417
    constant BAUD_9600   : integer := 50000000 / 9600;    -- 5208
    constant BAUD_19200  : integer := 50000000 / 19200;   -- 2604
    constant BAUD_34800  : integer := 50000000 / 34800;   -- 1437
    constant BAUD_57600  : integer := 50000000 / 57600;   -- 868
    constant BAUD_74880  : integer := 50000000 / 74880;   -- 668
    constant BAUD_115200 : integer := 50000000 / 115200;  -- 434
    constant BAUD_1M     : integer := 50000000 / 1000000; -- 50
    
begin
    process(sw_select)
    begin
        case sw_select is
            when "000" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_4800, 16));
            when "001" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_9600, 16));
            when "010" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_19200, 16));
            when "011" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_34800, 16));
            when "100" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_57600, 16));
            when "101" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_74880, 16));
            when "110" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_115200, 16));
            when "111" =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_1M, 16));
            when others =>
                baud_rate_divider <= std_logic_vector(to_unsigned(BAUD_9600, 16));
        end case;
    end process;
    
end architecture RTL;
