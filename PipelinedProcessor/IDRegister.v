module IDRegister(
  input wire [63:0] PC_in, [31:0] ins_in, wire clk, reset,
  output reg [63:0] PC_out, reg [31:0] ins_out 
);
  always @(posedge reset or posedge clk)
  begin
    if(reset)
      begin
        ins_out <= 32'b0;
        PC_out <= 64'b0;
      end
    else
      begin
        PC_out <= PC_in;
        ins_out <= ins_in;
      end
  end
endmodule 