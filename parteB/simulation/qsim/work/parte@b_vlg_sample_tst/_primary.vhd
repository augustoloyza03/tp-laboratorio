library verilog;
use verilog.vl_types.all;
entity parteB_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Bin             : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end parteB_vlg_sample_tst;
