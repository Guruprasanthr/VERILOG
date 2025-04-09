module xnorgate_tb;
reg a,b;
wire y;
xnorgate dut(.a(a),.b(b),.y(y));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
a=0;b=0;#3;
a=0;b=1;#3;
a=1;b=0;#3;
a=1;b=1;#3;
$display("a=%b,b=%b,y=%b",a,b,y);
end 
endmodule
