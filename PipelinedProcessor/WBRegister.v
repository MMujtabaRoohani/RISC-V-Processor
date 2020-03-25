module WBRegister(
  input wire [63:0] aluResult_in,
             [63:0] memData_in,
             [4:0] rd_in,
             wire MemtoReg_in, RegWrite_in,
             clk, reset,
  output reg [63:0] aluResult_out,
         reg [63:0] memData_out,
         reg [4:0] rd_out,
         reg MemtoReg_out, reg RegWrite_out

);
  always @(posedge reset or posedge clk)
  begin
    if(reset)
      begin
        aluResult_out <= 64'b0;
        memData_out <= 64'b0;
        rd_out <= 5'b0;
        MemtoReg_out <= 1'b0;
        RegWrite_out <= 1'b0;
      end
    else
      begin
        aluResult_out <= aluResult_in;
        memData_out <= memData_in;
        rd_out <= rd_in;
        MemtoReg_out <= MemtoReg_in;
        RegWrite_out <= RegWrite_in;
      end
  end
endmodule 