library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_parteB is
end tb_parteB;

architecture tb of tb_parteB is

    component parteB
        Port (
            clk   : in std_logic;
            A     : in std_logic;
            B     : in std_logic;
            Bin   : in std_logic;
            Diff  : out std_logic;
            Bout  : out std_logic
        );
    end component;

    signal clk   : std_logic := '0';
    signal A     : std_logic := '0';
    signal B     : std_logic := '0';
    signal Bin   : std_logic := '0';
    signal Diff  : std_logic;
    signal Bout  : std_logic;

begin

    uut: parteB
        Port map (
            clk   => clk,
            A     => A,
            B     => B,
            Bin   => Bin,
            Diff  => Diff,
            Bout  => Bout
        );

    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stimulus_process : process
    begin
        A <= '0'; B <= '0'; Bin <= '0';
        wait for 20 ns;
        A <= '0'; B <= '0'; Bin <= '1';
        wait for 20 ns;
        A <= '0'; B <= '1'; Bin <= '0';
        wait for 20 ns;
        A <= '0'; B <= '1'; Bin <= '1';
        wait for 20 ns;
        A <= '1'; B <= '0'; Bin <= '0';
        wait for 20 ns;
        A <= '1'; B <= '0'; Bin <= '1';
        wait for 20 ns;
        A <= '1'; B <= '1'; Bin <= '0';
        wait for 20 ns;
        A <= '1'; B <= '1'; Bin <= '1';
        wait for 20 ns;
        wait;
    end process;

end tb;
