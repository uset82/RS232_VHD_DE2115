library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_source_mux is
    port(
        data_source_sel : in  std_logic_vector(1 downto 0);  -- 00: hardcoded, 01: switches, others reserved
        sw_data         : in  std_logic_vector(7 downto 0);  -- SW(7 downto 0)
        data_out        : out std_logic_vector(7 downto 0)
    );
end entity data_source_mux;

architecture RTL of data_source_mux is
    constant HARDCODED_DATA : std_logic_vector(7 downto 0) := x"A5";
begin
    process(data_source_sel, sw_data)
    begin
        case data_source_sel is
            when "00" =>
                data_out <= HARDCODED_DATA;
            when "01" =>
                data_out <= sw_data;
            when others =>
                data_out <= HARDCODED_DATA;  -- default to known pattern
        end case;
    end process;
end architecture RTL;
