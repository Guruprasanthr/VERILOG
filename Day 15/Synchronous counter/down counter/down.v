module down(input clk,rst,output reg[3:0]count);
always @(posedge clk)begin
if(!rst)begin
count<=4'b1110;
end
else begin
count<=count-4'b0001;
end
end
endmodule
