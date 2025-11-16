library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd_8bit is
    port(
        binary_in : in  std_logic_vector(7 downto 0);
        bcd_out   : out std_logic_vector(11 downto 0)
    );
end entity bin2bcd_8bit;

architecture behavior of bin2bcd_8bit is
begin
    p_convert : process(binary_in)
        variable temp         : integer range 0 to 255;
        variable hundreds     : integer range 0 to 2;
        variable tens         : integer range 0 to 9;
        variable ones         : integer range 0 to 9;
    begin
        -- Convert binary to integer
        temp := to_integer(unsigned(binary_in));

        -- Extract hundreds digit
        hundreds := temp / 100;
        temp := temp - hundreds * 100;

        -- Extract tens digit
        tens := temp / 10;

        -- Extract ones digit
        ones := temp - tens * 10;

        -- Convert back to BCD (4 bits each)
        bcd_out(11 downto 8) <= std_logic_vector(to_unsigned(hundreds, 4));
        bcd_out(7 downto 4)  <= std_logic_vector(to_unsigned(tens, 4));
        bcd_out(3 downto 0)  <= std_logic_vector(to_unsigned(ones, 4));
    end process;

end architecture behavior;
