library verilog;
use verilog.vl_types.all;
entity Instruction_Memory is
    port(
        Inst_Address    : in     vl_logic_vector(63 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0)
    );
end Instruction_Memory;
