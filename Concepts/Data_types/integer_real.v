module num_example;
  integer i;
  real r;

  initial begin
    i = 10;
    r = 3.5;
    $display("Integer i = %0d", i);
    $display("Real r = %0f", r);
    r = r + i;  
    $display("r + i = %0f", r);
  end
endmodule
