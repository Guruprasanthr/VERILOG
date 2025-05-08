//design
module b2g (input  [3:0] b,output reg [3:0] g);
always @(*) begin
    g[3] = b[3];
    g[2] = b[3] ^ b[2];
    g[1] = b[2] ^ b[1];
    g[0] = b[1] ^ b[0];
end
endmodule

//testbench
module b2g_tb;
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
