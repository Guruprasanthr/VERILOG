module comp_tb;
reg a,b;
wire x,y,z;
comp dut(.a(a),.b(b),.x(x),.y(y),.z(z));
initial begin
$monitor("a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
$dumpfile("waves.vcd");
$dumpvars();
a=0;b=0;
#5a=2'b00;b=2'b00;
#10a=2'b11;b=2'b10;
#15a=2'b00;b=2'b11;
end
endmodule
