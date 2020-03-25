module ForwardingUnit(
  input wire [4:0] rdMem, wire regWriteMem, wire [4:0] rdWb, wire regWriteWb, wire [4:0] rs1, wire [4:0] rs2,
  output reg [1:0] ForwardA, reg [1:0] ForwardB
);
  always @(rdMem or rdWb or regWriteMem or regWriteWb or rs1 or rs2)
  begin
    if (regWriteMem && (rdMem !== 5'b0) && (rdMem === rs2))
      ForwardB = 2'b10;
    else if (regWriteWb && (rdWb !== 5'b0) && (rdWb === rs2))
      ForwardB <= 2'b01;
    else
      ForwardB <= 2'b00;

    
    if (regWriteMem && (rdMem !== 5'b0) && (rdMem === rs1))
      ForwardA <= 2'b10;
    else if (regWriteWb && (rdWb !== 5'b0) && (rdWb === rs1))
      ForwardA <= 2'b01;
    else
      ForwardA <= 2'b00;
  end
endmodule 