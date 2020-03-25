library verilog;
use verilog.vl_types.all;
entity ALU_Control is
    port(
        ALUOp           : in     vl_logic_vector(1 downto 0);
        Funct           : in     vl_logic_vector(3 downto 0);
        Operation       : out    vl_logic_vector(3 downto 0)
    );
end ALU_Control;
