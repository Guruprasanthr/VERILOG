module for_loop_array;
  reg [7:0] data [0:7]; 
  integer i;
  initial begin
    for (i = 0; i < 8; i = i + 1)
      data[i] = i*2;   
    for (i = 0; i < 8; i = i + 1)
      $display("data[%0d] = %0d", i, data[i]);
  end
endmodule

output:
data[0] = 0
data[1] = 2
data[2] = 4
data[3] = 6
data[4] = 8
data[5] = 10
data[6] = 12
data[7] = 14
