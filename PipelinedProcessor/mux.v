module mux(
  input wire [63:0] in1, wire [63:0] in2, wire sel,
  output reg [63:0] out
);
  always @(in1 or in2 or sel)
  begin
    if (sel)
      out <= in2;
    else
      out <= in1;
  end
endmodule 