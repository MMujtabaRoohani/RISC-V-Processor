library verilog;
use verilog.vl_types.all;
entity WBRegister is
    port(
        aluResult_in    : in     vl_logic_vector(63 downto 0);
        memData_in      : in     vl_logic_vector(63 downto 0);
        rd_in           : in     vl_logic_vector(4 downto 0);
        MemtoReg_in     : in     vl_logic;
        RegWrite_in     : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        aluResult_out   : out    vl_logic_vector(63 downto 0);
        memData_out     : out    vl_logic_vector(63 downto 0);
        rd_out          : out    vl_logic_vector(4 downto 0);
        MemtoReg_out    : out    vl_logic;
        RegWrite_out    : out    vl_logic
    );
end WBRegister;
