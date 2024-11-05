LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_Block1 IS
END tb_Block1;

ARCHITECTURE resta OF tb_Block1 IS 

    
    COMPONENT Block1
    PORT(
         CLK : IN  std_logic;
         a0 : IN  std_logic;
         Bin : IN  std_logic;
         b0 : IN  std_logic;
         a1 : IN  std_logic;
         b1 : IN  std_logic;
         a2 : IN  std_logic;
         b2 : IN  std_logic;
         a3 : IN  std_logic;
         b3 : IN  std_logic;
         Bout : OUT  std_logic;
         Z3 : OUT  std_logic;
         Z2 : OUT  std_logic;
         Z1 : OUT  std_logic;
         Z0 : OUT  std_logic
        );
    END COMPONENT;
    
    
    signal CLK : std_logic := '0';
    signal a0 : std_logic := '0';
    signal Bin : std_logic := '0';
    signal b0 : std_logic := '0';
    signal a1 : std_logic := '0';
    signal b1 : std_logic := '0';
    signal a2 : std_logic := '0';
    signal b2 : std_logic := '0';
    signal a3 : std_logic := '0';
    signal b3 : std_logic := '0';
    signal Bout : std_logic;
    signal Z3 : std_logic;
    signal Z2 : std_logic;
    signal Z1 : std_logic;
    signal Z0 : std_logic;

BEGIN
    
    uut: Block1 PORT MAP (
          CLK => CLK,
          a0 => a0,
          Bin => Bin,
          b0 => b0,
          a1 => a1,
          b1 => b1,
          a2 => a2,
          b2 => b2,
          a3 => a3,
          b3 => b3,
          Bout => Bout,
          Z3 => Z3,
          Z2 => Z2,
          Z1 => Z1,
          Z0 => Z0
        );

    
    CLK_process :process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    
    stim_proc: process
    begin        
        
        a0 <= '0'; b0 <= '0'; Bin <= '0';
        a1 <= '0'; b1 <= '0';
        a2 <= '0'; b2 <= '0';
        a3 <= '0'; b3 <= '0';
        wait for 20 ns;
        
        
        a0 <= '1'; b0 <= '1'; Bin <= '0';
        a1 <= '1'; b1 <= '0';
        a2 <= '1'; b2 <= '1';
        a3 <= '1'; b3 <= '0';
        wait for 20 ns;

        
        a0 <= '1'; b0 <= '0'; Bin <= '1';
        a1 <= '0'; b1 <= '1';
        a2 <= '0'; b2 <= '0';
        a3 <= '1'; b3 <= '1';
        wait for 20 ns;

     
        wait;
    end process;

END;
