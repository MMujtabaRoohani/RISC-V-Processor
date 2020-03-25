library verilog;
use verilog.vl_types.all;
entity parser is
    port(
        ins             : in     vl_logic_vector(31 downto 0);
        opcode          : out    vl_logic_vector(6 downto 0);
        rd              : out    vl_logic_vector(4 downto 0);
        funct3          : out    vl_logic_vector(2 downto 0);
        rs1             : out    vl_logic_vector(4 downto 0);
        rs2             : out    vl_logic_vector(4 downto 0);
        funct7          : out    vl_logic_vector(6 downto 0)
    );
end parser;
