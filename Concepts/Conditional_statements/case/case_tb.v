module tb_case_example;

  reg  [1:0] sel;
  reg  [3:0] a, b;
  wire [3:0] y;

  case_example uut (
    .sel(sel),
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    a = 4'd7;
    b = 4'd3;
    $monitor("sel=%d,a=%b,b=%b,y=%d", sel, a, b, y);
    sel = 2'b00;
   #1 sel = 2'b01;
    #2 sel = 2'b10;
    #3 sel = 2'b11;
    #4 sel = 2'bxx;
  end

endmodule

output:
sel=0,a=0111,b=0011,y=10
sel=1,a=0111,b=0011,y= 4
sel=2,a=0111,b=0011,y= 3
sel=3,a=0111,b=0011,y= 7
sel=x,a=0111,b=0011,y= 0
