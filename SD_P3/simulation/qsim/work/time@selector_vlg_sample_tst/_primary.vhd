library verilog;
use verilog.vl_types.all;
entity timeSelector_vlg_sample_tst is
    port(
        entrada         : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end timeSelector_vlg_sample_tst;
