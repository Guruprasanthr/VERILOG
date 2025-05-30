module up_tb;
reg clk,rst;
wire [2:0]count;
up uut(.clk(clk),.rst(rst),.count(count));
initial begin 
$dumpfile("up.vcd");
$dumpvars();
$monitor("clk=%b,rst=%b,count=%b",clk,rst,count);
clk=0;
rst=0;
#10 rst=1;
#50
$finish;
end
always #5 clk=~clk;
endmodule
