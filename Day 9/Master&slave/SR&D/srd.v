module srff(input s,r,clk,output reg qs,qbs);
always @(posedge clk)begin
if(s==0 && r==0)begin
qs<=1'bx;
qbs<=1'bx;
end
else if(s==0 && r==1)begin
qs<=1'b0;
qbs<=1'b1;
end
else if(s==1 && r==0)begin
qs<=1'b1;
qbs<=1'b0;
end
else begin
qs<=1'bx;
qbs<=1'bx;
end
end
endmodule
