module xorgate_tb;
reg a,b;
wire y;
xorgate dut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$display("a=%b,b=%b,y=%b",a,b,y);
end
endmodule
