module case_example(input [1:0] sel, input [3:0] a, b, output reg [3:0] y);

  always @(*) begin
    case (sel)
      2'b00: y = a + b;  
      2'b01: y = a - b;  
      2'b10: y = a & b;   
      2'b11: y = a | b;  
      default: y = 4'b0000;
    endcase
  end

endmodule
