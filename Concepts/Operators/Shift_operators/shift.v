module shift_example;
  reg signed [3:0] a = -4; 
  wire [3:0] lshift, rshift, arshift;
  assign lshift  = a << 1;
  assign rshift  = a >> 1;
  assign arshift = a >>> 1;
  initial begin    $display("a=%b,lshift=%b,rshift=%b,arshift=%b",a,lshift,rshift,arshift);
  end
endmodule

output:
a=1100,lshift=1000,rshift=0110,arshift=1110
