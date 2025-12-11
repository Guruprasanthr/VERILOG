module block;
  reg [3:0] a = 8;
  reg [3:0] b = 10;
  reg [3:0] temp;

  initial begin
    temp = a;
    a = b;
    b = temp;
  end

  initial begin
   $monitor("temp=%0d; a=%0d; b=%0d", temp, a, b);
  end
endmodule

output:
temp=8; a=10; b=8
