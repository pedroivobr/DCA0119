library verilog;
use verilog.vl_types.all;
entity testes_vlg_sample_tst is
    port(
        t               : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end testes_vlg_sample_tst;
