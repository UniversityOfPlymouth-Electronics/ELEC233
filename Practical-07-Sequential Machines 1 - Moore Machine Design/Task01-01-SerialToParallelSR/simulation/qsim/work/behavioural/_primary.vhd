library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y               : out    vl_logic;
        CLK             : in     vl_logic;
        LOAD            : in     vl_logic;
        RESET           : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(7 downto 0)
    );
end behavioural;
