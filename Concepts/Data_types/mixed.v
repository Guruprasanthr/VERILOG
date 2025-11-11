module multiple;
  reg [3:0]a;
  integer b;
  real c;
  wire[3:0]d;
  assign d=(a+b)/c;
  initial begin
    a=5;
    b=7;
    c=6.6;
    $display("a=%d,b=%0d,c=%f,d=%f",a,b,c,d);
  end
endmodule

output:
a= 5,b=7,c=6.600000,d=2.000000
