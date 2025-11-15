module if_else(input[1:0]a, output reg[1:0] b);
  always @(*) begin
    if (a == 2'd0)
      b = 2'd0;
    else if(a==2'd1)
      b = 2'd1;
    else if(a==2'd2)
      b = 2'd2;
    else begin
      b=2'd3;
  end
  end
endmodule
