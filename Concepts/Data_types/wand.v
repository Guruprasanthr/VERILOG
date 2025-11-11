module wand_eg;
  reg a,b;
  wand out;
  assign out=a;
  assign out=b;
  initial begin
   $monitor("a=%d,b=%d,out=%d",a,b,out);
    a=0;b=0;
    #1a=0;b=1;
    #2a=1;b=0;
    #3a=1;b=1;    
  end
endmodule

output:
a=0,b=0,out=0
a=0,b=1,out=0
a=1,b=0,out=0
a=1,b=1,out=1
