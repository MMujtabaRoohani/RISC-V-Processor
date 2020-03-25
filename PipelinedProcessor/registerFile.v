module registerFile(
  input wire [4:0] rs1, [4:0] rs2, [4:0] rd, [63:0] writeData, wire regWrite, clk, reset,
  output wire [63:0] ReadData1, wire [63:0] ReadData2 
);
  reg [63:0] registerArr [31:0];
  always @(posedge reset or posedge clk)
  begin
    if(reset)
      begin
        registerArr[0] = 64'd0;
        registerArr[1] = 64'd0;
        registerArr[2] = 64'd0;
        registerArr[3] = 64'd0;
        registerArr[4] = 64'd0;
        registerArr[5] = 64'd0;
        registerArr[6] = 64'd0;
        registerArr[7] = 64'd0;
        registerArr[8] = 64'd0;
        registerArr[9] = 64'd0;
        registerArr[10] = 64'd15;
        registerArr[11] = 64'd0;
        registerArr[12] = 64'd0;
        registerArr[13] = 64'd0;
        registerArr[14] = 64'd0;
        registerArr[15] = 64'd0;
        registerArr[16] = 64'd0;
        registerArr[17] = 64'd0;
        registerArr[18] = 64'd0;
        registerArr[19] = 64'd0;
        registerArr[20] = 64'd0;
        registerArr[21] = 64'd4;
        registerArr[22] = 64'd0;
        registerArr[23] = 64'd0;
        registerArr[24] = 64'd0;
        registerArr[25] = 64'd0;
        registerArr[26] = 64'd0;
        registerArr[27] = 64'd0;
        registerArr[28] = 64'd0;
        registerArr[29] = 64'd0;
        registerArr[30] = 64'd0;
        registerArr[31] = 64'd0;
      end
    else
    begin
      if(regWrite)
      begin
        registerArr[rd] <= writeData;
      end
    end
  end
  assign ReadData1 = registerArr[rs1];
  assign ReadData2 = registerArr[rs2];
endmodule 