library verilog;
use verilog.vl_types.all;
entity IDRegister is
    port(
        PC_in           : in     vl_logic_vector(63 downto 0);
        ins_in          : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        PC_out          : out    vl_logic_vector(63 downto 0);
        ins_out         : out    vl_logic_vector(31 downto 0)
    );
end IDRegister;
