module tb_casex;
  reg [3:0] in;
  wire [1:0] out;
  casex_example uut(.in(in), .out(out));
  initial begin
    $monitor("in=%b,out=%b", in, out);
    in = 4'b1000; #1;
    in = 4'b1100; #1;
    in = 4'b0100; #1;
    in = 4'b0110; #1;
    in = 4'b1x00; #1;    
    in = 4'b01z0; #1;
    in = 4'b1111; #1;
  end
endmodule
