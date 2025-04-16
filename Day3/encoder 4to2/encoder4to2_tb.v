module encoder4to2_tb;
reg a,b,c,d;
wire y0,y1;
encoder4to2 dut(.a(a),.b(b),.c(c),.d(d),.y0(y0),.y1(y1));
initial begin
$monitor("a=%b,b=%b,c=%b,d=%b,y0=%b,y1=%b",a,b,c,d,y0,y1);
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
a=0;b=0;c=0;d=1;#10;
a=0;b=0;c=1;d=0;#10;
a=0;b=1;c=0;d=0;#10;
a=1;b=0;c=0;d=0;#10;
end
endmodule
