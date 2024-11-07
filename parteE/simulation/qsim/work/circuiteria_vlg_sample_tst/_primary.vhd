library verilog;
use verilog.vl_types.all;
entity circuiteria_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        reset           : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end circuiteria_vlg_sample_tst;
