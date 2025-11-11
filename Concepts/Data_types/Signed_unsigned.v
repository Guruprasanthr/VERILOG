module signed_eg;
  reg signed[3:0] a,b;
  reg[3:0]c;
  initial begin
    a=4'b1011;
    b=4'b0001;
    c=a+b;
    $display("a=%0d,b=%0d,c=%0d",a,b,c);
  end
endmodule

output:
a=-5,b=1,c=12
