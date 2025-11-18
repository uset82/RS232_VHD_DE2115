library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rs232_top is
    port(
        -- Clock and Reset
        CLOCK_50 : in    std_logic;
        KEY      : in    std_logic_vector(3 downto 0);  -- KEY(0) = reset_n, KEY(3) = send trigger
        SW       : in    std_logic_vector(17 downto 0);
        -- External I/O
        EX_IO    : inout std_logic_vector(6 downto 0);
        -- LEDs
        LEDR     : out   std_logic_vector(17 downto 0);
        LEDG     : out   std_logic_vector(7 downto 0);
        -- 7-segment displays
        HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(6 downto 0);
        HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0)
    );
end entity rs232_top;

architecture RTL of rs232_top is
    -- Component declarations
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
    
    component mottaker is
        port(
            clk             : in  std_logic;
            rst_n           : in  std_logic;
            dataInn         : in  std_logic;
            baudRateDivider : in  std_logic_vector(15 downto 0);
            error           : out std_logic;
            dataValidUt     : out std_logic;
            dataUt          : out std_logic_vector(7 downto 0)
        );
    end component;
    
    component baud_rate_selector is
        port(
            sw_select         : in  std_logic_vector(2 downto 0);
            baud_rate_divider : out std_logic_vector(15 downto 0)
        );
    end component;
    
    component data_source_mux is
        port(
            data_source_sel : in  std_logic_vector(1 downto 0);
            sw_data         : in  std_logic_vector(7 downto 0);
            data_out        : out std_logic_vector(7 downto 0)
        );
    end component;
    
    component data_display is
        port(
            clk         : in  std_logic;
            rst_n       : in  std_logic;
            data_valid  : in  std_logic;
            data_in     : in  std_logic_vector(7 downto 0);
            error       : in  std_logic;
            led_data    : out std_logic_vector(7 downto 0);
            led_valid   : out std_logic;
            led_error   : out std_logic;
            hex0        : out std_logic_vector(6 downto 0);
            hex1        : out std_logic_vector(6 downto 0);
            hex2        : out std_logic_vector(6 downto 0)
        );
    end component;

    component ROM_7_seg is
        port(
            adresse : in  std_logic_vector(3 downto 0);
            HEX     : out std_logic_vector(6 downto 0)
        );
    end component;

    component reset_sync is
        port(
            clk       : in  std_logic;
            rst_n_in  : in  std_logic;
            rst_n_out : out std_logic
        );
    end component;
    
    -- Internal signals
    signal rst_n_raw          : std_logic;
    signal rst_n              : std_logic;
    signal mode_select        : std_logic;  -- SW(17): 0=sender, 1=receiver
    signal baud_rate_divider  : std_logic_vector(15 downto 0);
    signal send_trigger       : std_logic;
    signal send_trigger_prev  : std_logic;
    signal start_pulse        : std_logic;
    
    -- Sender signals
    signal tx_ready           : std_logic;
    signal tx_data_out        : std_logic;
    signal tx_data_in         : std_logic_vector(7 downto 0);
    
    -- Receiver signals
    signal rx_data_in         : std_logic;
    signal rx_error           : std_logic;
    signal rx_data_valid      : std_logic;
    signal rx_data_out        : std_logic_vector(7 downto 0);
    
    -- Data source signals
    signal data_source_sel    : std_logic_vector(1 downto 0);

    -- Nibbles and 7-seg outputs for visualizing TX/RX data
    signal tx_data_hex_hi     : std_logic_vector(3 downto 0);
    signal tx_data_hex_lo     : std_logic_vector(3 downto 0);
    signal rx_data_hex_hi     : std_logic_vector(3 downto 0);
    signal rx_data_hex_lo     : std_logic_vector(3 downto 0);
    signal HEX7_rom, HEX6_rom : std_logic_vector(6 downto 0);
    signal HEX5_rom, HEX4_rom : std_logic_vector(6 downto 0);
    
begin
    -- Reset synchronizer (active low)
    rst_sync_inst : reset_sync
        port map(
            clk      => CLOCK_50,
            rst_n_in => KEY(0),
            rst_n_out=> rst_n
        );
    
    -- Mode selection: SW(17) = 0 for sender, 1 for receiver
    mode_select <= SW(17);
    
    -- Data source selection for sender
    data_source_sel <= SW(13 downto 12);
    
    -- Send trigger from KEY(3)
    send_trigger <= KEY(3);
    
    -- Edge detection for manual send trigger
    process(CLOCK_50, rst_n)
    begin
        if rst_n = '0' then
            send_trigger_prev <= '1';
            start_pulse <= '0';
        elsif rising_edge(CLOCK_50) then
            send_trigger_prev <= send_trigger;
            -- Detect falling edge of KEY(3) (active low)
            if send_trigger = '0' and send_trigger_prev = '1' then
                start_pulse <= '1';
            else
                start_pulse <= '0';
            end if;
        end if;
    end process;
    
    -- Baud rate selector
    baud_selector : baud_rate_selector
        port map(
            sw_select         => SW(16 downto 14),
            baud_rate_divider => baud_rate_divider
        );
    
    -- Data source multiplexer
    data_mux : data_source_mux
        port map(
            data_source_sel => data_source_sel,
            sw_data         => SW(7 downto 0),
            data_out        => tx_data_in
        );
    
    -- RS232 Sender
    sender_inst : sender
        port map(
            clk               => CLOCK_50,
            rst_n             => rst_n,
            startPuls         => start_pulse,
            baud_rate_divider => baud_rate_divider,
            dataIn            => tx_data_in,
            txReady           => tx_ready,
            dataOut           => tx_data_out
        );
    
    -- RS232 Receiver (active only when mode_select = '1')
    receiver_inst : mottaker
        port map(
            clk             => CLOCK_50,
            rst_n           => rst_n,
            dataInn         => rx_data_in,
            baudRateDivider => baud_rate_divider,
            error           => rx_error,
            dataValidUt     => rx_data_valid,
            dataUt          => rx_data_out
        );
    
    -- Data display
    display_inst : data_display
        port map(
            clk         => CLOCK_50,
            rst_n       => rst_n,
            data_valid  => rx_data_valid,
            data_in     => rx_data_out,
            error       => rx_error,
            led_data    => LEDR(7 downto 0),
            led_valid   => LEDG(0),
            led_error   => LEDG(1),
            hex0        => HEX0,
            hex1        => HEX1,
            hex2        => HEX2
        );

    --------------------------------------------------------------------
    -- Sender/Receiver data display on HEX7..HEX4
    --  Sender  : HEX7 (MS nibble), HEX6 (LS nibble)
    --  Receiver: HEX5 (MS nibble), HEX4 (LS nibble)
    --------------------------------------------------------------------

    -- Split bytes into hex nibbles
    tx_data_hex_lo <= tx_data_in(3 downto 0);
    tx_data_hex_hi <= tx_data_in(7 downto 4);
    rx_data_hex_lo <= rx_data_out(3 downto 0);
    rx_data_hex_hi <= rx_data_out(7 downto 4);

    -- ROM instances for hex digits
    rom_tx_hi : ROM_7_seg
        port map(
            adresse => tx_data_hex_hi,
            HEX     => HEX7_rom
        );

    rom_tx_lo : ROM_7_seg
        port map(
            adresse => tx_data_hex_lo,
            HEX     => HEX6_rom
        );

    rom_rx_hi : ROM_7_seg
        port map(
            adresse => rx_data_hex_hi,
            HEX     => HEX5_rom
        );

    rom_rx_lo : ROM_7_seg
        port map(
            adresse => rx_data_hex_lo,
            HEX     => HEX4_rom
        );

    
    -- I/O configuration based on mode
    -- Always drive TX and sample RX (supports loopback and two-board setups)
    EX_IO(0) <= tx_data_out;
    EX_IO(6) <= 'Z';
    rx_data_in <= EX_IO(6);
    
    -- Status LEDs
    LEDG(7) <= tx_ready when mode_select = '0' else '0';
    LEDG(6) <= mode_select;              -- Receiver mode indicator (SW17=1)
    LEDG(5) <= not mode_select;          -- Sender mode indicator (SW17=0)

    -- Map ROM outputs to displays depending on mode
    -- Sender view: show TX byte on HEX7:HEX6
    -- Receiver view: show RX byte on HEX5:HEX4
    HEX7 <= HEX7_rom when mode_select = '0' else "1111111";
    HEX6 <= HEX6_rom when mode_select = '0' else "1111111";
    HEX5 <= HEX5_rom when mode_select = '1' else "1111111";
    HEX4 <= HEX4_rom when mode_select = '1' else "1111111";

    -- Show baud-rate selection on HEX3 (0..7)
    rom_baud_sel : ROM_7_seg
        port map(
            adresse => '0' & SW(16 downto 14),
            HEX     => HEX3
        );
    
    -- Unused outputs
    LEDR(17 downto 8) <= (others => '0');
    LEDG(4 downto 2) <= (others => '0');
    EX_IO(5 downto 1) <= (others => 'Z');
    
end architecture RTL;
