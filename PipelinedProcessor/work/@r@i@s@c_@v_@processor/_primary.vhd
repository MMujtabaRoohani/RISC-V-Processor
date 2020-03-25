library verilog;
use verilog.vl_types.all;
entity RISC_V_Processor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end RISC_V_Processor;
