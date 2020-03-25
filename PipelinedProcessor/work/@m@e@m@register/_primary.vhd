library verilog;
use verilog.vl_types.all;
entity MEMRegister is
    port(
        PC_in           : in     vl_logic_vector(63 downto 0);
        aluResult_in    : in     vl_logic_vector(63 downto 0);
        data2_in        : in     vl_logic_vector(63 downto 0);
        rd_in           : in     vl_logic_vector(4 downto 0);
        Branch_in       : in     vl_logic;
        MemRead_in      : in     vl_logic;
        MemtoReg_in     : in     vl_logic;
        MemWrite_in     : in     vl_logic;
        RegWrite_in     : in     vl_logic;
        zero_in         : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        PC_out          : out    vl_logic_vector(63 downto 0);
        aluResult_out   : out    vl_logic_vector(63 downto 0);
        data2_out       : out    vl_logic_vector(63 downto 0);
        rd_out          : out    vl_logic_vector(4 downto 0);
        Branch_out      : out    vl_logic;
        MemRead_out     : out    vl_logic;
        MemtoReg_out    : out    vl_logic;
        MemWrite_out    : out    vl_logic;
        RegWrite_out    : out    vl_logic;
        zero_out        : out    vl_logic
    );
end MEMRegister;
