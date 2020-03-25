library verilog;
use verilog.vl_types.all;
entity registerFile is
    port(
        rs1             : in     vl_logic_vector(4 downto 0);
        rs2             : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        writeData       : in     vl_logic_vector(63 downto 0);
        regWrite        : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ReadData1       : out    vl_logic_vector(63 downto 0);
        ReadData2       : out    vl_logic_vector(63 downto 0)
    );
end registerFile;
