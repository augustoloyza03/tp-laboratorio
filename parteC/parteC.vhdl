library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity parteC is
    Port (
        clk       : in std_logic;    
        A, B      : in std_logic;    
        Bin       : in std_logic;    
        Diff      : out std_logic;   
        Bout      : out std_logic    
    );
end parteC;

architecture resta of parteC is

 begin
        Diff <= A xor B xor Bin;       
        Bout <= (not A and B) or (Bin and (not A xor B));  
 end resta;