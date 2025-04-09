module halfsub_tb;
  reg a, b;
  wire difference, borrow;
  halfsub uut (.a(a), .b(b), .difference(difference), .borrow(borrow));

  initial begin
    $dumpfile("waves.vcd");
    $dumpvars();
end
initial begin
    a = 0; b = 0; #5;
    a = 0; b = 1; #5;
    a = 1; b = 0; #5;
    a = 1; b = 1; #5;
    $display("a=%b,b=%b,difference=%b,borrow=%b",a,b,difference,borrow);
  end
endmodule
