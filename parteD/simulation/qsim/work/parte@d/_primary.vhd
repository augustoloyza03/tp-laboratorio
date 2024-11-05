library verilog;
use verilog.vl_types.all;
entity parteD is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        X               : in     vl_logic;
        Z0              : out    vl_logic;
        Z1              : out    vl_logic;
        Z2              : out    vl_logic;
        Z3              : out    vl_logic
    );
end parteD;
