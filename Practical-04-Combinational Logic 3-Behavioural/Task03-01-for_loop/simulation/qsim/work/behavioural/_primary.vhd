library verilog;
use verilog.vl_types.all;
entity behavioural is
    port(
        Y               : out    vl_logic_vector(15 downto 0);
        X               : in     vl_logic_vector(15 downto 0)
    );
end behavioural;
