library verilog;
use verilog.vl_types.all;
entity parteD3 is
    port(
        clk             : in     vl_logic;
        input           : in     vl_logic;
        reset           : in     vl_logic;
        output          : out    vl_logic_vector(3 downto 0)
    );
end parteD3;
