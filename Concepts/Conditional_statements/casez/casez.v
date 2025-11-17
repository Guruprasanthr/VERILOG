module casez_example(input [3:0] in, output reg [1:0] out);
  always @(*) begin
    casez(in)
      4'b1z00: out = 2'b01;    
      4'b01?0: out = 2'b10;    
      default: out = 2'b00;
    endcase
  end
endmodule
