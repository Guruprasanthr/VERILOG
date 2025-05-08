module gb_tb;
reg [3:0] a;
wire [3:0] b;
gb dut(.a(a),.b(b));
initial begin
$monitor("a=%b,b=%b",a,b);
$dumpfile("waves.vcd");
$dumpvars();
a=4'b0000;
#5 a=4'b0001;
#5 a=4'b0011;
#5 a=4'b0010;
end
endmodule

//
module g2b_tb;
reg[3:0]g;
wire[3:0]b;
g2b dut(.g(g),.b(b));
initial begin
$monitor("g=%b,b=%b",g,b);
$dumpfile("waves.vcd");
$dumpvars();
 g = 4'b0000; #10;
 g = 4'b0001; #10;
 g = 4'b0011; #10;
 g = 4'b0100; #10;
 g = 4'b1010; #10;
 g = 4'b0111; #10;
 g = 4'b1111; #10;
end
endmodule
