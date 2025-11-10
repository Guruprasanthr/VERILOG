module wire_eg;
  wire a,b,c;
   assign a=1'b0;
   assign b=1'b1;
   assign c=1'b1;
  initial begin
    $display("a=%0b,b=%0bc=%0b",a,b,c);
  end
endmodule
