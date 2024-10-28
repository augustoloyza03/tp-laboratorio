library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity parteB is
    Port (
        clk       : in std_logic;    
        A, B      : in std_logic;    
        Bin       : in std_logic;    
        Diff      : out std_logic;   
        Bout      : out std_logic    
    );
end parteB;

architecture RestadorCompleto of parteB is
    
    signal diff_internal : std_logic;
    signal bout_internal : std_logic;

    
    component FlipFlopD
        Port (
            clk : in std_logic;
            d   : in std_logic;
            q   : out std_logic
        );
    end component;

begin
    
    process(A, B, Bin)
    begin
        diff_internal <= A xor B xor Bin;       
        bout_internal <= (not A and B) or (Bin and (not A xor B));  
    end process;

    
    FFD_diff: FlipFlopD Port map(clk => clk, d => diff_internal, q => Diff);
    FFD_bout: FlipFlopD Port map(clk => clk, d => bout_internal, q => Bout);

end RestadorCompleto;
