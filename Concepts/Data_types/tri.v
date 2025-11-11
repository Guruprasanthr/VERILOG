module tri_eg;
 tri out;
  reg a,b;
  reg en1,en2;
  assign out=en1?a:1'bz;
  assign out=en2?b:1'bz;
  initial begin
    $monitor("en1=%d;en2=%d;a=%d,b=%d,out=%d",en1,en2,a,b,out);
    en1=1;en2=0;a=1;b=0;
    #1en1=0;en2=1;a=1;b=0;
    #2en1=1;en2=1;a=1;b=0;
    #3en1=0;en2=0;a=1;b=0;    
  end
endmodule

output:
en1=1;en2=0;a=1,b=0,out=1
en1=0;en2=1;a=1,b=0,out=0
en1=1;en2=1;a=1,b=0,out=x
en1=0;en2=0;a=1,b=0,out=z
