module conditional_example;
  reg a = 1'b1, b = 1'b0, sel = 1'b1;
  wire y;
  assign y = (sel) ? a : b;
  initial begin
    $display("sel=%b,y=%b", sel, y);
  end
endmodule

output:
sel=1, y=1
