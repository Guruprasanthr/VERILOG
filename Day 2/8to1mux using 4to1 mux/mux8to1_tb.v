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
