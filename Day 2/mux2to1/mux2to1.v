module mux2to1 (
input wire a, b,    
input wire sel,         
output wire out);
assign out = sel ? b : a;
endmodule
