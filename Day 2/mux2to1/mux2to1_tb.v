module mux2to1_tb;
reg a, b, sel;
wire out;
mux2to1 uut (.a(a), .b(b), .sel(sel), .out(out));
initial begin
$monitor(" a=%b,b=%b,sel=%b,out=%b",a, b, sel, out);
$dumpfile("waves.vcd");
$dumpvars();
a = 0; b = 0; sel = 0;
#10 a = 1; sel = 0;
#10 b = 1; sel = 1; 
#10 a = 0; sel = 0;
#10 b = 0; sel = 1; 
end
endmodule
