module half_subractor(input a,b,output difference,borrow);
  assign difference=a^b;
  assign borrow=(~a&b);
endmodule
module full_subractor(input a,b,bin,output difference,borrow);
wire b1,b2,diff1;
  half_subractor hs1(.a(a),.b(b),.difference(diff1),.borrow(b1));
  half_subractor hs2(.a(diff1),.b(bin),.difference(difference),.borrow(b2));
  assign borrow=b1|b2;
endmodule
