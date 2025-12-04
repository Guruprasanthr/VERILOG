module red_tb;
  reg [3:0]a;
  wire [5:0]y;
  reduction dut(.a(a),.y(y));
  initial begin
    a=4'b0x10;
  end
  initial begin
    $monitor("a=%b,y[0]=%b,y[1]=%b,y[2]=%b,y[3]=%b,y[4]=%b,y[5]=%b",a,y[0],y[1],y[2],y[3],y[4],y[5]);
  end
endmodule
