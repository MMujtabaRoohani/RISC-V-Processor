library verilog;
use verilog.vl_types.all;
entity mux2 is
    port(
        in1             : in     vl_logic_vector(63 downto 0);
        in2             : in     vl_logic_vector(63 downto 0);
        in3             : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end mux2;
