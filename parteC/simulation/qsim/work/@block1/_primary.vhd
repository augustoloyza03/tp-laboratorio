library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        CLK             : in     vl_logic;
        a0              : in     vl_logic;
        Bin             : in     vl_logic;
        b0              : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        Bout            : out    vl_logic;
        Z3              : out    vl_logic;
        Z2              : out    vl_logic;
        Z1              : out    vl_logic;
        Z0              : out    vl_logic
    );
end Block1;
