module block;
  reg [7:0]a=10;
  reg [7:0]b=20;
  reg[7:0]temp;
  initial begin
    temp=a;
  a=b;
  b=a;
  end
  initial begin
    $display("a=%d,b=%d,temp=%d",a,b,temp);
  end
endmodule

output:
a= 20,b= 20,temp= 10
