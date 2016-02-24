library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y               : out    vl_logic;
        EN              : in     vl_logic;
        SS              : in     vl_logic_vector(2 downto 0);
        DATA            : in     vl_logic_vector(15 downto 0)
    );
end behavioural;
