library ieee;
use ieee.std_logic_1164.all;

entity parteE is
	port(
		clk      : in std_logic;
		SDA      : in std_logic;
		finDIR   : in std_logic;
		finDATO  : in std_logic;
		soy      : in std_logic;
		reset    : in std_logic;
		output   : out std_logic_vector(2 downto 0)  -- orden de salida: habdir/habdat/ack
	);
end entity;

architecture rtl of parteE is


	type state_type is (ocioso, start, guardaDIR, RW, ack, guardaDATO);

	-- Register to hold the current state
	signal state : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= ocioso;
		elsif (rising_edge(clk)) then
			case state is
				when ocioso =>
					if SDA = '1' then
						state <= ocioso;
					else
						state <= start;
					end if;
				when start =>
					state <= guardaDIR;
				when guardaDIR =>
					if finDIR = '0' then
						state <= guardaDIR;
					elsif soy = '0' then
						state <= ocioso;
					else
						state <= RW; 
					end if;
				when RW =>
					state <= ack;
				when ack =>
					if finDATO = '1' then
						state <= ocioso;
					else
						state <= guardaDATO;
					end if;
				when guardaDATO =>
					if finDATO = '1' then
						state <= ocioso;
					else
						state <= guardaDATO;
					end if;	
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when ocioso =>
				output <= "000";
			when start =>
				output <= "000";
			when guardaDIR =>
				output <= "100";
			when RW =>
				output <= "000";
			when ack =>
				output <= "001";
			when guardaDATO =>
				output <= "010";	
		end case;
	end process;

end rtl;

