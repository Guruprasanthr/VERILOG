module arithmetic_eg;
  reg[3:0]a=15;
  reg[3:0]b=10;
  wire [7:0]sum,diff,prod,div,mod;
  
  assign sum=a+b;
  assign diff=a-b;
  assign prod=a*b;
  assign div=a/b;
  assign mod=a%b;
  initial begin $display("a=%d,b=%d,sum=%d,diff=%d,prod=%d,div=%d,mod=%d",a,b,sum,diff,prod,div,mod);
  end
endmodule

output:
a=15,b=10,sum= 25,diff=  5,prod=150,div=  1,mod=  5
