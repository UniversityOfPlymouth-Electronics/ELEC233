library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y_behave        : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CTRL            : in     vl_logic
    );
end behavioural;
