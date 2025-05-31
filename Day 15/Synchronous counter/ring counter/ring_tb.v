module ring_tb;
reg clk,rst;
wire [3:0]q;
ring uut(.clk(clk),.rst(rst),.q(q));
initial begin
$dumpfile("ring.vcd");
$dumpvars();
$monitor("clk=%b,rst=%b,q=%b",clk,rst,q);
clk = 0;
rst = 1;
#10 rst = 0;
#100 $finish;
end
always #5 clk = ~clk;
endmodule
