module seq_tb;
reg in,clk,rst;
wire out;
seq uut(.in(in),.clk(clk),.rst(rst),.out(out));
initial clk=0;
always #5 clk=~clk;
initial begin
$monitor("$time=%t,in=%b,clk=%b,rst=%b,out=%b",$time,in,clk,rst,out);
$dumpfile("1101.vcd");
$dumpvars();
end
initial begin
rst = 0;
#10 rst = 1;
        #10 in = 1; 
	#10 in = 1;  
	#10 in = 0; 
        #10 in = 1;  
	#10 in = 1;  
        #10 in = 0; 
        #10 in = 1; 
#20 $finish;
end
endmodule
