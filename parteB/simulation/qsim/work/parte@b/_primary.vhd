library verilog;
use verilog.vl_types.all;
entity parteB is
    port(
        clk             : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        Bin             : in     vl_logic;
        Diff            : out    vl_logic;
        Bout            : out    vl_logic
    );
end parteB;
