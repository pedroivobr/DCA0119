library verilog;
use verilog.vl_types.all;
entity testes is
    port(
        pin_name2       : out    vl_logic;
        t               : in     vl_logic_vector(4 downto 0);
        pin_name3       : out    vl_logic;
        pin_name4       : out    vl_logic;
        pin_name5       : out    vl_logic;
        pin_name6       : out    vl_logic;
        pin_name7       : out    vl_logic
    );
end testes;
