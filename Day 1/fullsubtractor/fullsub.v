module fullsub(input a,b,bin,output difference,borrow);
assign difference =( a ^ b ^ bin);
assign borrow = ((~a & b)|(~a & bin)|(~b & bin));
endmodule
