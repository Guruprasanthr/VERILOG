module if_else_eg;
  reg a;
  wire b;

  if_else uut(.a(a), .b(b));

  initial begin
    a = 0;
   #1  $display("a=%b, b=%b", a, b);   
  end
endmodule

output:
a=0, b=1
