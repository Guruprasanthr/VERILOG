module if_else(input a, output reg b);
  always @(*) begin
    if (a == 1'b0)
      b = 1'b1;
    else
      b = 1'b0;
  end
endmodule
