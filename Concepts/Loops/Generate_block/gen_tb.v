module tb_simple_generate;
  reg  [3:0] a, b;
  wire [3:0] y;
  simple_generate dut (
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    $monitor("a=%b,b=%b,y=%b",a,b,y);
    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b1010; b = 4'b1100; #10;
    a = 4'b1111; b = 4'b0001; #10;
    a = 4'b0101; b = 4'b1010; #10;
  end
endmodule


output:
a=0000,b=0000,y=0000
a=1010,b=1100,y=1000
a=1111,b=0001,y=0001
a=0101,b=1010,y=0000
