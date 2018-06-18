library verilog;
use verilog.vl_types.all;
entity timeSelector is
    port(
        entrada         : in     vl_logic_vector(4 downto 0);
        saida           : out    vl_logic
    );
end timeSelector;
