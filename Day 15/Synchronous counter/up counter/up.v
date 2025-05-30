module up(input clk,rst,output reg[2:0]count);
always@(posedge clk)begin
if(rst==0)begin
count<=3'b000;
end
else begin
count<=count+3'b001;
end
end
endmodule
