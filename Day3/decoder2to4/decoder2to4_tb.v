module decoder2to4_tb;
reg x,y;
wire a,b,c,d;
decoder2to4 dut(.x(x),.y(y),.a(a),.b(b),.c(c),.d(d));
initial begin
$monitor("x=%b,y=%b,a=%b,b=%b,c=%b,d=%b",x,y,a,b,c,d);
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
x=0;y=0;#10;
x=0;y=1;#10;
x=1;y=0;#10;
x=1;y=1;#10;
end
endmodule
