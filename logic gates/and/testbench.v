module andgate_tb;
reg a,b;
wire y;
andgate dut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
a=0;b=0;#10;
a=1;b=0;#10;
a=0;b=1;#10;
a=1;b=1;#10;
$display("a=%b,b=%b,y=%b",a,b,y);
end
endmodule
