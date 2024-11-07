library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity parteF is
    Port ( dividendo : in unsigned(5 downto 0);  -- 4 bits de p. entera, 2 bits p. fraccionaria
           divisor : in unsigned(5 downto 0);   -- 3  bits p. entera, 3 bits p. fraccionaria
           cociente : out unsigned(9 downto 0)  -- 7  bits p. entero, 3 bits p. fraccionario
         );
end parteF;

architecture Division of parteF is
    signal dividendo_escalado : unsigned(15 downto 0);  -- 6 bits adicionales de p.entera y 4 p.decimal
    signal cociente_escalado : unsigned(15 downto 0);
	 --signal divisor_escalado : unsigned (5 downto 0);
begin
    process(dividendo, divisor)
    begin
       
        dividendo_escalado <= "000000" & dividendo & "0000";
		 -- divisor_escalado <= divisor;
        
        -- División entera y asignación del resultado
        if divisor= "000000" then 
          cociente <= (others => '0');  -- Devuelve 0 en caso de división por cero
        else
		  cociente_escalado <= dividendo_escalado / divisor;
            cociente <= cociente_escalado(9 downto 0);  -- me quedo solo con 10 bits finales (7 enteros, 3 fraccionarios)
        end if;
    end process;
end Division;
