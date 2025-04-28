module srl(input s,r,output q,qb);
assign q = ~(r | qb);
assign qb = ~( s | q);
endmodule
