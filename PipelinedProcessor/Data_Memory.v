module Data_Memory(
  input wire [63:0] Mem_Addr, wire [63:0] Write_Data, wire clk, MemWrite, MemRead, wire [1:0] wordSize,
  output reg [63:0] Read_Data 
);
  reg [7:0] dataMem [63:0];
  initial
  begin
    dataMem[0] = 8'b0;
    dataMem[1] = 8'b0;
    dataMem[2] = 8'b0;
    dataMem[3] = 8'b0;
    dataMem[4] = 8'b0;
    dataMem[5] = 8'b0;
    dataMem[6] = 8'b0;
    dataMem[7] = 8'b0;
    dataMem[8] = 8'b0;
    dataMem[9] = 8'b0;
    dataMem[10] = 8'b0;
    dataMem[11] = 8'b0;
    dataMem[12] = 8'b0;
    dataMem[13] = 8'b0;
    dataMem[14] = 8'b0;
    dataMem[15] = 8'b0;
    dataMem[16] = 8'b0;
    dataMem[17] = 8'b0;
    dataMem[18] = 8'b0;
    dataMem[19] = 8'b0;
    dataMem[20] = 8'b0;
    dataMem[21] = 8'b0;
    dataMem[22] = 8'b0;
    dataMem[23] = 8'b0;
    dataMem[24] = 8'b0;
    dataMem[25] = 8'b0;
    dataMem[26] = 8'b0;
    dataMem[27] = 8'b0;
    dataMem[28] = 8'b0;
    dataMem[29] = 8'b0;
    dataMem[30] = 8'b0;
    dataMem[31] = 8'b0;
    dataMem[32] = 8'b0;
    dataMem[33] = 8'b0;
    dataMem[34] = 8'b0;
    dataMem[35] = 8'b0;
    dataMem[36] = 8'b0;
    dataMem[37] = 8'b0;
    dataMem[38] = 8'b0;
    dataMem[39] = 8'b0;
    dataMem[40] = 8'b0;
    dataMem[41] = 8'b0;
    dataMem[42] = 8'b0;
    dataMem[43] = 8'b0;
    dataMem[44] = 8'b0;
    dataMem[45] = 8'b0;
    dataMem[46] = 8'b0;
    dataMem[47] = 8'b0;
    dataMem[48] = 8'b0;
    dataMem[49] = 8'b0;
    dataMem[50] = 8'b0;
    dataMem[51] = 8'b0;
    dataMem[52] = 8'b0;
    dataMem[53] = 8'b0;
    dataMem[54] = 8'd11;
    dataMem[55] = 8'd12;
    dataMem[56] = 8'd13;
    dataMem[57] = 8'd14;
    dataMem[58] = 8'b0;
    dataMem[59] = 8'b0;
    dataMem[60] = 8'b0;
    dataMem[61] = 8'b0;
    dataMem[62] = 8'b0;
    dataMem[63] = 8'b0;
  end

  always @(posedge clk)
  begin
    if(MemWrite)
    begin
      if(wordSize[0])
      begin
        if(wordSize[1])
        begin
          dataMem[Mem_Addr[5:0]+7] <= Write_Data[7:0];
          dataMem[Mem_Addr[5:0]+6] <= Write_Data[15:8];
          dataMem[Mem_Addr[5:0]+5] <= Write_Data[23:16];
          dataMem[Mem_Addr[5:0]+4] <= Write_Data[31:24];
          dataMem[Mem_Addr[5:0]+3] <= Write_Data[39:32];
          dataMem[Mem_Addr[5:0]+2] <= Write_Data[47:40];
          dataMem[Mem_Addr[5:0]+1] <= Write_Data[55:48];
          dataMem[Mem_Addr[5:0]+0] <= Write_Data[63:56];
        end
        else
        begin
          dataMem[Mem_Addr[5:0]+1] <= Write_Data[7:0];
          dataMem[Mem_Addr[5:0]+0] <= Write_Data[15:8];
        end
      end
      else
      begin
        if(wordSize[1])
        begin
          dataMem[Mem_Addr[5:0]+3] <= Write_Data[7:0];
          dataMem[Mem_Addr[5:0]+2] <= Write_Data[15:8];
          dataMem[Mem_Addr[5:0]+1] <= Write_Data[23:16];
          dataMem[Mem_Addr[5:0]+0] <= Write_Data[31:24];
        end
        else
        begin
          dataMem[Mem_Addr[5:0]+0] <= Write_Data[7:0];
        end
      end
    end
  end

  always @(Mem_Addr or MemRead or wordSize)
  begin
    if(MemRead)
    begin
      if(wordSize[0])
      begin
        if(wordSize[1])
        begin
          Read_Data <= {dataMem[Mem_Addr[5:0]+0],
                    dataMem[Mem_Addr[5:0]+1],
                    dataMem[Mem_Addr[5:0]+2],
                    dataMem[Mem_Addr[5:0]+3],
                    dataMem[Mem_Addr[5:0]+4],
                    dataMem[Mem_Addr[5:0]+5],
                    dataMem[Mem_Addr[5:0]+6],
                    dataMem[Mem_Addr[5:0]+7]};
        end
        else
        begin
          Read_Data[15:0] <= {dataMem[Mem_Addr[5:0]+0],
                    dataMem[Mem_Addr[5:0]+1]};
          Read_Data[63:16] <= {48{dataMem[Mem_Addr[5:0]][7]}};
        end
      end
      else
      begin
        if(wordSize[1])
        begin
          Read_Data[31:0] <= {dataMem[Mem_Addr[5:0]+0],
                    dataMem[Mem_Addr[5:0]+1],
                    dataMem[Mem_Addr[5:0]+2],
                    dataMem[Mem_Addr[5:0]+3]};
          Read_Data[63:32] <= {32{dataMem[Mem_Addr[5:0]][7]}};
        end
        else
        begin
          Read_Data[7:0] <= dataMem[Mem_Addr[5:0]];
          Read_Data[63:8] <= {56{dataMem[Mem_Addr[5:0]][7]}};
        end
      end
    end
  end
endmodule 