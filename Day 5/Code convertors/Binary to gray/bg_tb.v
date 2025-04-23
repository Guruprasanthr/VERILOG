module bg_tb;
reg [3:0] a;
wire [3:0] b;
bg dut(.a(a),.b(b));
initial begin
$monitor("a=%b,b=%b",a,b);
$dumpfile("waves.vcd");
$dumpvars();
a=4'b0000;
#5 a=4'b0001;
#5 a=4'b0011;
#5 a=4'b0100;
end
endmodule
