module half_adder(input a,b,output sum,carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule
module full_adder(input a, b, cin, output sum, carry);
  wire sum1, c1, c2;
  half_adder ha1 (.a(a), .b(b), .sum(sum1), .carry(c1));
  half_adder ha2 (.a(sum1), .b(cin), .sum(sum), .carry(c2));
  assign carry = c1 | c2;
endmodule
