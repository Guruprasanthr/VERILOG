module siso_tb;
reg clk;
reg rst;
reg si;
wire so;
siso uut(.clk(clk),.rst(rst),.si(si),.so(so));
initial begin
clk=1;
$dumpfile("siso.vcd");
$dumpvars();
$monitor("clk=%b,rst=%b,si=%b,s0=%b",clk,rst,si,so);
forever #5 clk=~clk;
end
initial begin
rst=1;
#10 si=0;
rst=0;
si=1;
si=1;#10
si=1;#10
si=1;#10
si=0;#10

$finish;
end
endmodule
