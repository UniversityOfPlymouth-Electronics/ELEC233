library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y               : out    vl_logic;
        DATA            : in     vl_logic;
        EN              : in     vl_logic
    );
end behavioural;
