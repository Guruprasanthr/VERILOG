//design
module g2b (input  [3:0] g,output reg [3:0] b);
always @(*) begin
    b[3] = g[3];
    b[2] = g[3] ^ g[2];
    b[1] = g[3]^g[2] ^ g[1];
    b[0] = g[3]^g[2]^g[1] ^ g[0];
end
endmodule
//testbench
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
