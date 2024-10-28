library verilog;
use verilog.vl_types.all;
entity parteB_vlg_check_tst is
    port(
        Bout            : in     vl_logic;
        Diff            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end parteB_vlg_check_tst;
