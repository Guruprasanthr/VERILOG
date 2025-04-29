module d (input d,output q,qb);
assign q= ~(qb | d);
assign qb= ~(q|(~d));
endmodule
