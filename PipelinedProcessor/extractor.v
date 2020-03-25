module extractor(
  input wire [31:0] ins,
  output reg [63:0] imm_data
);
  reg sel1, sel2;
  always @(ins)
  begin
    sel1 = ins[5];
    sel2 = ins[4];
    if(sel1)
    begin
      imm_data[9:0] <= {ins[30:25] , ins[11:8]};
      imm_data[63:10] <= {54{ins[30]}};
    end
    else
    begin
      if(sel2)
      begin
        imm_data[11:0] <= {ins[31:25] , ins[11:7]};
        imm_data[63:12] <= {52{ins[31]}};  
      end
      else
      begin
        imm_data[11:0] <= ins[31:20];
        imm_data[63:12] <= {52{ins[31]}};
      end
    end
  end
endmodule 