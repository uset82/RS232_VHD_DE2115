library ieee;
use ieee.std_logic_1164.all;

entity reset_sync is
    port(
        clk      : in  std_logic;
        rst_n_in : in  std_logic;  -- Asynchronous reset input
        rst_n_out: out std_logic   -- Synchronized reset output
    );
end entity reset_sync;

architecture RTL of reset_sync is
    -- Synchronization registers
    signal rst_sync1, rst_sync2 : std_logic;
    
begin
    -- Two-stage synchronizer for reset
    process(clk, rst_n_in)
    begin
        if rst_n_in = '0' then
            -- Asynchronous reset
            rst_sync1 <= '0';
            rst_sync2 <= '0';
        elsif rising_edge(clk) then
            -- Synchronous release
            rst_sync1 <= '1';
            rst_sync2 <= rst_sync1;
        end if;
    end process;
    
    rst_n_out <= rst_sync2;
    
end architecture RTL;
