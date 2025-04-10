module 2to1mux_tb;
reg a, b, sel;
wire out;
mux2to1 uut (.a(a), .b(b), .sel(sel), .out(out));
initial begin
a = 0; b = 0; sel = 0;
#10 a = 1; sel = 0; // out = a (1)
#10 b = 1; sel = 1; // out = b (1)
#10 a = 0; sel = 0; // out = a (0)
#10 b = 0; sel = 1; // out = b (0)
#10 $finish;
end
initial begin
$monitor("Time=%0t | a=%b | b=%b | sel=%b | out=%b", $time, a, b, sel, out);
end
endmodule
