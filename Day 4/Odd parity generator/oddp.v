module oddp(input a,b,c,output x);
assign x=~(a^b^c);
endmodule
