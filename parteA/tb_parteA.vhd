library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_parteA is
end tb_parteA;

architecture testbench of tb_parteA is
    signal SW1, SW2, SW3 : STD_LOGIC;
    signal LED : STD_LOGIC;

    component parteA
        port (SW1 : in STD_LOGIC;
              SW2 : in STD_LOGIC;
              SW3 : in STD_LOGIC;
              LED : out STD_LOGIC);
    end component;

begin
    uut: parteA
        port map (
            SW1 => SW1,
            SW2 => SW2,
            SW3 => SW3,
            LED => LED
        );

    process
    begin
        SW1 <= '0'; SW2 <= '0'; SW3 <= '0'; wait for 20 ns;
        SW1 <= '0'; SW2 <= '0'; SW3 <= '1'; wait for 20 ns;
        SW1 <= '0'; SW2 <= '1'; SW3 <= '0'; wait for 20 ns;
        SW1 <= '0'; SW2 <= '1'; SW3 <= '1'; wait for 20 ns;
        SW1 <= '1'; SW2 <= '0'; SW3 <= '0'; wait for 20 ns;
        SW1 <= '1'; SW2 <= '0'; SW3 <= '1'; wait for 20 ns;
        SW1 <= '1'; SW2 <= '1'; SW3 <= '0'; wait for 20 ns;
        SW1 <= '1'; SW2 <= '1'; SW3 <= '1'; wait for 20 ns;
        wait;
    end process;
end testbench;
