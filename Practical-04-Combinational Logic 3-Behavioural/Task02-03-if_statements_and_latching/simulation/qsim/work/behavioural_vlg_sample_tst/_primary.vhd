library verilog;
use verilog.vl_types.all;
entity behavioural_vlg_sample_tst is
    port(
        DATA            : in     vl_logic;
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end behavioural_vlg_sample_tst;
