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

//module b2g_tb;
reg[3:0]b;
wire[3:0]g;
b2g dut(.b(b),.g(g));
initial begin
$monitor("b=%b,g=%b",b,g);
$dumpfile("waves.vcd");
$dumpvars();
 b = 4'b0000; #10;
 b = 4'b0001; #10;
 b = 4'b0010; #10;
 b = 4'b0110; #10;
 b = 4'b1010; #10;
 b = 4'b1110; #10;
 b = 4'b1111; #10;
end
endmodule
