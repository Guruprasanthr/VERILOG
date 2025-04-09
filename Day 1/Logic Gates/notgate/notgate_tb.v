module notgate_tb;
reg a;
wire y;
notgate dut(.a(a),.y(y));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
end
initial begin
a=0;#10;
a=0;#10;
a=1;#10;
a=1;#10;
$display("a=%b,y=%b",a,y);
end
endmodule
