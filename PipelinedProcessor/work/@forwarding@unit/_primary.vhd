library verilog;
use verilog.vl_types.all;
entity ForwardingUnit is
    port(
        rdMem           : in     vl_logic_vector(4 downto 0);
        regWriteMem     : in     vl_logic;
        rdWb            : in     vl_logic_vector(4 downto 0);
        regWriteWb      : in     vl_logic;
        rs1             : in     vl_logic_vector(4 downto 0);
        rs2             : in     vl_logic_vector(4 downto 0);
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0)
    );
end ForwardingUnit;
