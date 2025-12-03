module random;
  reg[7:0] a,b;
  initial begin
  a=$random;
    b=$random;
    $display("a=%b,b=%b",a,b);
  end
endmodule

output:
a=00100100,b=10000001
