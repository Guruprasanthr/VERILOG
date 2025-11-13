module blocking;
  reg[3:0]a,b,c;
  initial begin
   a=5;
   b=a+1;
   c=b+1;
    $strobe("a=%d,b=%d,c=%d",a,b,c);
  end
endmodule

output:
a= 5,b= 6,c= 7
