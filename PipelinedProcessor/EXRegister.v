module EXRegister(
  input wire [63:0] PC_in,
             [63:0] data1_in,
             [63:0] data2_in,
             [63:0] immData_in, 
             [4:0] rs1_in, 
             [4:0] rs2_in, 
             [4:0] rd_in,
             [3:0] Funct_in,
             wire Branch_in, MemRead_in, MemtoReg_in, MemWrite_in, ALUSrc_in, RegWrite_in, 
             [1:0] ALUOp_in, 
             wire clk, reset,
  output reg [63:0] PC_out,
         reg [63:0] data1_out,
         reg [63:0] data2_out,
         reg [63:0] immData_out, 
         reg [4:0] rs1_out, 
         reg [4:0] rs2_out, 
         reg [4:0] rd_out,
         reg [3:0] Funct_out,
         reg Branch_out, reg MemRead_out, reg MemtoReg_out, reg MemWrite_out, reg ALUSrc_out, reg RegWrite_out,
         reg [1:0] ALUOp_out 

);
  always @(posedge reset or posedge clk)
  begin
    if(reset)
      begin
        PC_out <= 64'b0;
        data1_out <= 64'b0;
        data2_out <= 64'b0;
        immData_out <= 64'b0;
        rs1_out <= 5'b0;
        rs2_out <= 5'b0;
        rd_out <= 5'b0;
        Funct_out <= 4'b0;
        Branch_out <= 1'b0;
        MemRead_out <= 1'b0;
        MemtoReg_out <= 1'b0;
        MemWrite_out <= 1'b0;
        ALUSrc_out <= 1'b0;
        RegWrite_out <= 1'b0;
        ALUOp_out <= 2'b0;
      end
    else
      begin
        PC_out <= PC_in;
        data1_out <= data1_in;
        data2_out <= data2_in;
        immData_out <= immData_in;
        rs1_out <= rs1_in;
        rs2_out <= rs2_in;
        rd_out <= rd_in;
        Funct_out <= Funct_in;
        Branch_out <= Branch_in;
        MemRead_out <= MemRead_in;
        MemtoReg_out <= MemtoReg_in;
        MemWrite_out <= MemWrite_in;
        ALUSrc_out <= ALUSrc_in;
        RegWrite_out <= RegWrite_in;
        ALUOp_out <= ALUOp_in;
      end
  end
endmodule 