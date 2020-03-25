library verilog;
use verilog.vl_types.all;
entity Program_Counter is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        PC_In           : in     vl_logic_vector(63 downto 0);
        PC_Out          : out    vl_logic_vector(63 downto 0)
    );
end Program_Counter;
