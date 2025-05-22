module seq(input in,clk,rst,output reg out);
parameter s0=4'd1;
parameter s1=4'd2;
parameter s2=4'd3;
parameter s3=4'd4;
reg[1:0]cs,ns;
always@(posedge clk or negedge rst)begin
if(!rst)begin
cs<=2'b00;
end
else begin
cs<=ns;
end
end
always@(*)begin
case(cs)
s0:begin
ns=in?s1:s0;
out=1'b1;
end
s1:begin
ns=in?s2:s0;
out=1'b1;
end
s2:begin
ns=in?s2:s0;
out=1'b0;
end
s3:begin
ns=in?s1:s0;
out=1'b1;
end
default:begin
ns=s0;
out = in ? 1'b1 : 1'b0;
end
endcase
end
endmodule
