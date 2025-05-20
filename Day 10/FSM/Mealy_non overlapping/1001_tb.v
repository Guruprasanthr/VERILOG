module seq_tb;
reg x,rst,clk;
wire z;
seq uut(x,rst,clk,z);
initial clk=0;
always #2 clk=~clk;

initial begin
$monitor($time,"x=%b,rst=%b,clk=%b,z=%b",x,rst,clk,z);

$dumpfile("1001.vcd");
$dumpvars;

x=1;
#5 rst=1;
#5 rst=0;

#5 x=1;
#5 x=0; 
#5 x=0; 
#5 x=1;
$finish;

end
endmodule
