module sipo_tb;
reg clk;
reg rs;
reg si;
wire [3:0]po;
sipo uut(.clk(clk),.rs(rs),.si(si),.po(po));
initial begin
clk=1;
$dumpfile("sipo.vcd");
$dumpvars();
$monitor("clk=%b,rs=%b,si=%b,p0=%b",clk,rs,si,po);
forever #5 clk=~clk;
end
initial begin
rs=1;
rs=0;
si=1;#10
si=1;#10
si=1;#10
si=1;#10

$finish;
end
endmodule
