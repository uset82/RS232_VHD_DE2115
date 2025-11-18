library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_display is
    port(
        clk         : in  std_logic;
        rst_n       : in  std_logic;
        -- Data input
        data_valid  : in  std_logic;
        data_in     : in  std_logic_vector(7 downto 0);
        error       : in  std_logic;
        -- LED outputs
        led_data    : out std_logic_vector(7 downto 0);
        led_valid   : out std_logic;
        led_error   : out std_logic;
        -- 7-segment outputs
        hex0        : out std_logic_vector(6 downto 0);
        hex1        : out std_logic_vector(6 downto 0);
        hex2        : out std_logic_vector(6 downto 0)
    );
end entity data_display;

architecture RTL of data_display is
    -- Component declarations
    component bin2bcd_8bit is
        port(
            binary_in : in  std_logic_vector(7 downto 0);
            bcd_out   : out std_logic_vector(11 downto 0)
        );
    end component;

    component ROM_7_seg is
        port(
            adresse : in  std_logic_vector(3 downto 0);
            HEX     : out std_logic_vector(6 downto 0)
        );
    end component;
    
    -- Internal signals
    signal data_latched : std_logic_vector(7 downto 0);
    signal bcd_data     : std_logic_vector(11 downto 0);
    signal valid_pulse_counter : integer range 0 to 500000;  -- 10ms pulse
    signal hex2_raw     : std_logic_vector(6 downto 0);
    
begin
    -- LED outputs
    led_data <= data_latched;
    led_error <= error;
    
    -- Latch data when valid
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            data_latched <= (others => '0');
        elsif rising_edge(clk) then
            if data_valid = '1' then
                data_latched <= data_in;
            end if;
        end if;
    end process;
    
    -- Generate visible pulse for data valid LED
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            valid_pulse_counter <= 0;
            led_valid <= '0';
        elsif rising_edge(clk) then
            if data_valid = '1' then
                valid_pulse_counter <= 500000;  -- 10ms at 50MHz
                led_valid <= '1';
            elsif valid_pulse_counter > 0 then
                valid_pulse_counter <= valid_pulse_counter - 1;
                led_valid <= '1';
            else
                led_valid <= '0';
            end if;
        end if;
    end process;
    
    -- Binary to BCD conversion
    bin2bcd_inst : bin2bcd_8bit
        port map(
            binary_in => data_latched,
            bcd_out   => bcd_data
        );

    -- 7-segment display for ones digit
    rom_7seg_ones : ROM_7_seg
        port map(
            adresse => bcd_data(3 downto 0),
            HEX     => hex0
        );

    -- 7-segment display for tens digit
    rom_7seg_tens : ROM_7_seg
        port map(
            adresse => bcd_data(7 downto 4),
            HEX     => hex1
        );

    -- 7-segment display for hundreds digit
    rom_7seg_hundreds : ROM_7_seg
        port map(
            adresse => bcd_data(11 downto 8),
            HEX     => hex2_raw
        );

    -- Hide hundreds digit when zero to avoid leading zero for values < 100
    process(bcd_data, hex2_raw)
    begin
        if bcd_data(11 downto 8) = "0000" then
            hex2 <= "1111111";
        else
            hex2 <= hex2_raw;
        end if;
    end process;
    
end architecture RTL;
