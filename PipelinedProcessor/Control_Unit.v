module Control_Unit(
  input wire [6:0] Opcode,
  output reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, [1:0] ALUOp 
);
  always @(Opcode)
  begin
    if(Opcode == 7'b0110011)
    begin
      ALUSrc <= 0;
      MemtoReg <= 0;
      RegWrite <= 1;
      MemRead <= 0;
      MemWrite <= 0;
      Branch <= 0;
      ALUOp <= 2'b10;
    end
    else if(Opcode == 7'b0000011)
    begin
      ALUSrc <= 1;
      MemtoReg <= 1;
      RegWrite <= 1;
      MemRead <= 1;
      MemWrite <= 0;
      Branch <= 0;
      ALUOp <= 2'b00;
    end
    else if(Opcode == 7'b0100011)
    begin
      ALUSrc <= 1;
      MemtoReg <= 1;
      RegWrite <=0;
      MemRead <= 0;
      MemWrite <= 1;
      Branch <= 0;
      ALUOp <= 2'b00;
    end
    else if(Opcode == 7'b1100011)
    begin
      ALUSrc <= 0;
      MemtoReg <= 0;
      RegWrite <=0;
      MemRead <= 0;
      MemWrite <= 0;
      Branch <= 1;
      ALUOp <= 2'b01;
    end
    else
    begin
      ALUSrc <= 0;
      MemtoReg <= 0;
      RegWrite <=0;
      MemRead <= 1;
      MemWrite <= 0;
      Branch <= 0;
      ALUOp <= 2'b00;
    end
  end
endmodule 