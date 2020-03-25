module Adder(
  input [63:0] a, [63:0] b,
  output [63:0] out
);
  assign out = a + b;
endmodule 