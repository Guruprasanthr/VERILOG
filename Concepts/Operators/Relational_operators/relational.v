module relational_eg;
  reg[3:0]a=1;
  reg[3:0]b=15;
  wire [7:0]g,l,ge,le;
  
  assign g=a>b;
  assign l=a<b;
  assign ge=a>=b;
  assign le=a<=b;
  initial begin $display("a=%d,b=%d,g=%0d,l=%0d,ge=%0d,le=%0d",a,b,g,l,ge,le);
  end
endmodule

output:
a=1,b=15,g=0,l=1,ge=0,le=1
