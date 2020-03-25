module Instruction_Memory(
  input wire [63:0] Inst_Address,
  output reg [31:0] Instruction 
);
  reg [7:0] insMem [15:0];
  initial
  begin
    insMem[15] = 8'h02;
    insMem[14] = 8'h95;
    insMem[13] = 8'h34;
    insMem[12] = 8'h23;
    insMem[11] = 8'h00;
    insMem[10] = 8'h14;
    insMem[9] = 8'h84;
    insMem[8] = 8'h93;
    insMem[7] = 8'h0;
    insMem[6] = 8'h9A;
    insMem[5] = 8'h84;
    insMem[4] = 8'hB3;
    insMem[3] = 8'h02;
    insMem[2] = 8'h85;
    insMem[1] = 8'h34;
    insMem[0] = 8'h83;
  end
  always @(Inst_Address)
  begin
    Instruction <= {insMem[Inst_Address[3:0]+3], insMem[Inst_Address[3:0]+2], insMem[Inst_Address[3:0]+1], insMem[Inst_Address[3:0]+0]};
  end
endmodule 