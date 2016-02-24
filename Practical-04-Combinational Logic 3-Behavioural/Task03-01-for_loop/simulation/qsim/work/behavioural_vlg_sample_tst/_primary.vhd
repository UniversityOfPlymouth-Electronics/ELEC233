library verilog;
use verilog.vl_types.all;
entity behavioural_vlg_sample_tst is
    port(
        X               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end behavioural_vlg_sample_tst;
