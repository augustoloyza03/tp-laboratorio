library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuiteria is
	port(
		clk     : in std_logic;
		reset   : in std_logic;
		SCL     : in std_logic;
		SDA     : in std_logic;
		Hab_Dir : in std_logic;  -- Señal de habilitación para el registro de dirección
		Hab_Dat : in std_logic;  -- Señal de habilitación para el registro de datos
		soy     : out std_logic;
		finDIR  : out std_logic;
		finDATO : out std_logic
	);
end circuiteria;

architecture behavioral of circuiteria is

	signal contador_dir : unsigned(6 downto 0) := (others => '0');
	signal contador_dato: unsigned(7 downto 0) := (others => '0');
	signal registro_dir : std_logic_vector(6 downto 0) := (others => '0');
	signal registro_dato: std_logic_vector(7 downto 0) := (others => '0');
	signal direccion_esperada : std_logic_vector(6 downto 0) := "1111111";  -- Dirección esperada de ejemplo
	signal soy_int : std_logic;  -- Señal interna para `soy`

begin

	-- Proceso para manejar el registro y contador de dirección
	process(clk, reset)
	begin
		if reset = '1' then
			contador_dir <= (others => '0');
			registro_dir <= (others => '0');
			finDIR <= '0';
		elsif rising_edge(SCL) and Hab_Dir = '1' then  -- Utiliza Hab_Dir para habilitar
			if contador_dir < "111" then
				contador_dir <= contador_dir + 1;
				registro_dir <= registro_dir(5 downto 0) & SDA;  
				finDIR <= '0';
			else
				finDIR <= '1';  
				contador_dir <= (others => '0');  -- Reinicia el contador
			end if;
		end if;
	end process;

	-- Proceso de comparación para determinar si la dirección recibida coincide
	process(registro_dir)
	begin
		if registro_dir = direccion_esperada then
			soy_int <= '1';
		else
			soy_int <= '0';
		end if;
	end process;

	-- Asignación de la señal interna soy_int a la salida soy
	soy <= soy_int;

	-- Proceso para manejar el registro y contador de datos
	process(clk, reset)
	begin
		if reset = '1' then
			contador_dato <= (others => '0');
			registro_dato <= (others => '0');
			finDATO <= '0';
		elsif rising_edge(SCL) and Hab_Dat = '1' and soy_int = '1' then  -- Utiliza Hab_Dat para habilitar
			if contador_dato < "11111111" then
				contador_dato <= contador_dato + 1;
				registro_dato <= registro_dato(6 downto 0) & SDA;  -- Desplaza los bits recibidos
				finDATO <= '0';
			else
				finDATO <= '1';  
				contador_dato <= (others => '0');  -- Reinicia el contador
			end if;
		end if;
	end process;

end behavioral;
