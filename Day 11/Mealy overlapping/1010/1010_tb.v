module seq_tb;
reg in,clk,rst;
wire out;
wire[1:0]cs;
seq uut(.in(in),.clk(clk),.rst(rst),.out(out),.cs(cs));
initial clk=0;
always #4 clk=~clk;

initial begin
$monitor($time,"in=%b,rst=%b,clk=%b,out=%b,cs=%b",in,rst,clk,out,cs);

$dumpfile("1010.vcd");
$dumpvars;

in=1;
#8 rst=1;
#8 rst=0;

 in=1;

#8 in=0; 

#8 in=1; 

#8 in=0;
#8 in=0; 
#8 in=0; 
#8 in=0;
#8 in=0;




$finish;
end
endmodule

