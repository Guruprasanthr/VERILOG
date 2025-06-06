//design
module mux4to1(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output reg out
);
    always @(*) begin
        case(sel)
            2'b00 : out = a;
            2'b01 : out = b;
            2'b10 : out = c;
            2'b11 : out = d;
            default: out = 1'b0; 
        endcase    
    end
endmodule
//testbench
module mux4to1_tb;
    wire out;
    reg a;
    reg b;
    reg c;
    reg d;
    reg [1:0] sel;
    mux4to1 mux(.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
$monitor("a=%b, b=%b, c=%b, d=%b, sel=%b, out=%b", a, b, c, d, sel, out);

       
        a = 0; b = 0; c = 0; d = 0; sel = 2'b00;

        #0    a = 1'b1; sel = 2'b00;
        #50   a = 0;

        #100  b = 1'b1; sel = 2'b01;
        #50   b = 0;

        #100  c = 1'b1; sel = 2'b10;
        #50   c = 0;

        #100  d = 1'b1; sel = 2'b11;
        #50   d = 0;
    end
endmodule
