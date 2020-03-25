module ALU_64_bit(
  input wire [63:0] a, wire [63:0] b, wire [3:0] ALUOp,
  output wire [63:0] Result, wire zero
);
  wire [63:0] abar, bbar, mux1out, mux2out;
  wire [63:0] andOut, orOut, sumOut;
  assign abar = ~a;
  assign bbar = ~b;
  mux m1 (.in1(a), .in2(abar), .sel(ALUOp[3]), .out(mux1out));
  mux m2 (.in1(b), .in2(bbar), .sel(ALUOp[2]), .out(mux2out));
  assign andOut = mux1out & mux2out;
  assign orOut = mux1out | mux2out;
  assign sumOut = mux1out + mux2out;
  mux2 res (.in1(andOut), .in2(orOut), .in3(sumOut), .sel(ALUOp[1:0]), .out(Result));
  assign zero = Result == 64'b0;
endmodule