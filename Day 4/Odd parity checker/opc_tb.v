module opc_tb;
reg a,b,c;
wire x;
opc uut(.a(a),.b(b),.c(c),.x(x));
initial begin
$monitor("a=%b,b=%b,c=%b,x=%b",a,b,c,x);
$dumpfile("waves.vcd");
$dumpvars();
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
end
endmodule
