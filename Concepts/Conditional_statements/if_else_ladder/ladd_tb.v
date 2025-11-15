module if_else_eg;
  reg[1:0] a;
  wire[1:0] b;

  if_else uut(.a(a), .b(b));

  initial begin
    $monitor("a=%d, b=%d", a, b);   
      a = 0;
    #1a=1;
    #2a=2;
    #3a=3;
    
  end
endmodule

output:
a=0, b=0
a=1, b=1
a=2, b=2
a=3, b=3
