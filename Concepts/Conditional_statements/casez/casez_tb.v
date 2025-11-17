module tb_casez;
  reg [3:0] in;
  wire [1:0] out;
  casez_example uut(.in(in), .out(out));
  initial begin
    $monitor("in=%b,out=%b", in, out);
    in = 4'b1000; #1;
    in = 4'b1100; #1;
    in = 4'b0100; #1;
    in = 4'b0110; #1;
    in = 4'b1?00; #1;  
    in = 4'b01?0; #1;
    in = 4'b01x0; #1; 
    in = 4'b1111; #1;
  end
endmodule

output:
in=1000,out=01
in=1100,out=01
in=0100,out=10
in=0110,out=10
in=1z00,out=01
in=01z0,out=10
in=01x0,out=10
in=1111,out=00
