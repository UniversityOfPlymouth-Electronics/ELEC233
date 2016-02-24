library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y               : out    vl_logic_vector(15 downto 0);
        EN              : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        mode            : in     vl_logic_vector(1 downto 0)
    );
end behavioural;
