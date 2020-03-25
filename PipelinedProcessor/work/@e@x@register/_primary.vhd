library verilog;
use verilog.vl_types.all;
entity EXRegister is
    port(
        PC_in           : in     vl_logic_vector(63 downto 0);
        data1_in        : in     vl_logic_vector(63 downto 0);
        data2_in        : in     vl_logic_vector(63 downto 0);
        immData_in      : in     vl_logic_vector(63 downto 0);
        rs1_in          : in     vl_logic_vector(4 downto 0);
        rs2_in          : in     vl_logic_vector(4 downto 0);
        rd_in           : in     vl_logic_vector(4 downto 0);
        Funct_in        : in     vl_logic_vector(3 downto 0);
        Branch_in       : in     vl_logic;
        MemRead_in      : in     vl_logic;
        MemtoReg_in     : in     vl_logic;
        MemWrite_in     : in     vl_logic;
        ALUSrc_in       : in     vl_logic;
        RegWrite_in     : in     vl_logic;
        ALUOp_in        : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        PC_out          : out    vl_logic_vector(63 downto 0);
        data1_out       : out    vl_logic_vector(63 downto 0);
        data2_out       : out    vl_logic_vector(63 downto 0);
        immData_out     : out    vl_logic_vector(63 downto 0);
        rs1_out         : out    vl_logic_vector(4 downto 0);
        rs2_out         : out    vl_logic_vector(4 downto 0);
        rd_out          : out    vl_logic_vector(4 downto 0);
        Funct_out       : out    vl_logic_vector(3 downto 0);
        Branch_out      : out    vl_logic;
        MemRead_out     : out    vl_logic;
        MemtoReg_out    : out    vl_logic;
        MemWrite_out    : out    vl_logic;
        ALUSrc_out      : out    vl_logic;
        RegWrite_out    : out    vl_logic;
        ALUOp_out       : out    vl_logic_vector(1 downto 0)
    );
end EXRegister;
