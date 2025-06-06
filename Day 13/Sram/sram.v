module sram(input clk,rs,wr,input [3:0]din,input [2:0]add,output reg[3:0]dout);
reg [3:0]ram[0:7];
always@(posedge clk)begin
  if(rs==1)
     dout<=4'b0000;
  else if(wr==1)
     ram[add]<=din;
  else if(wr==0)
     dout<=ram[add];
end
endmodule
