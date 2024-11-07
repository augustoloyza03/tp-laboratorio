library verilog;
use verilog.vl_types.all;
entity circuiteria is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        soy             : out    vl_logic;
        finDIR          : out    vl_logic;
        finDATO         : out    vl_logic
    );
end circuiteria;
