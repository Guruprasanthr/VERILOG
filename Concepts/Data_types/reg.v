module reg_example;
  reg a, b, y; 
initial begin
    a = 1;
    b = 0;
    y = a & b;   
   $display("a=%b b=%b y=%b", a, b, y);
  end
endmodule
