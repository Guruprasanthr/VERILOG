//design
module mux4to1(input [3:0] d, input [1:0] sel, output reg y);
    always @(*) begin
        case(sel)
            2'b00: y = d[0];
            2'b01: y = d[1];
            2'b10: y = d[2];
            2'b11: y = d[3];
        endcase
    end
endmodule

module mux2to1(input [1:0] d, input sel, output reg out);
    always @(*) begin
        case(sel)
            1'b0: out = d[0];
            1'b1: out = d[1];
        endcase
    end
endmodule

module mux8to1(
    input [7:0] d,
    input [2:0] sel, 
    output out
);
    wire y1, y2; 
    mux4to1 mux_lower(.d(d[3:0]), .sel(sel[1:0]), .y(y1));
    mux4to1 mux_upper(.d(d[7:4]), .sel(sel[1:0]), .y(y2));
    mux2to1 mux_final(.d({y2, y1}), .sel(sel[2]), .out(out));
endmodule


//testbench
module mux8to1_tb;
    reg [7:0] d;
    reg [2:0] sel;
    wire out; 
mux8to1 uut(.d(d), .sel(sel), .out(out));
initial begin
$dumpfile("waves.vcd");
$dumpvars();
$monitor("Time=%0t d=%b sel=%b out=%b", $time, d, sel, out);
        #10 d = 8'b00000001; sel = 3'b000;  
        #10 d = 8'b00000010; sel = 3'b001;  
        #10 d = 8'b00000100; sel = 3'b010;  
        #10 d = 8'b00001000; sel = 3'b011;  
        #10 d = 8'b00010000; sel = 3'b100;  
        #10 d = 8'b00100000; sel = 3'b101;  
        #10 d = 8'b01000000; sel = 3'b110;  
        #10 d = 8'b10000000; sel = 3'b111;  
 end
endmodule
