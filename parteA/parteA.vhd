library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity parteA is 
    port (SW1 :in STD_LOGIC;
	        SW2 : in STD_LOGIC;  
	         SW3 : in STD_LOGIC;
	          LED : out STD_LOGIC);
end parteA;				 

architecture OP of parteA is
   signal  med1: STD_LOGIC;
	signal	med2: STD_LOGIC;
	signal	med3: STD_LOGIC;

 begin
  med2<= not(SW2);
  med1<= SW1 xnor med2 ;
  med3<= SW3 and med2;
  LED<= med1 or med3 ;
end OP;				 