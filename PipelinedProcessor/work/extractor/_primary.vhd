library verilog;
use verilog.vl_types.all;
entity extractor is
    port(
        ins             : in     vl_logic_vector(31 downto 0);
        imm_data        : out    vl_logic_vector(63 downto 0)
    );
end extractor;
