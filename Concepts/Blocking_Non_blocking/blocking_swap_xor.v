module xor_swap;
  reg[7:0]a=8;
  reg[7:0]b=10;
  initial begin
    $display("before a=%d,b=%d",a,b);
    a=a^b;
    b=a^b;
    a=a^b;
    $display("after a=%d,b=%d",a,b);
  end
endmodule

output:
before a=  8,b= 10
after a= 10,b=  8
