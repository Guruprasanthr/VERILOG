module halfadder_tb;
  reg a, b;
  wire sum, carry;
  halfadder dut (.a(a), .b(b), .sum(sum), .carry(carry));

  initial begin
    $dumpfile("waves.vcd");
    $dumpvars();
end
initial begin
    a = 0; b = 0; #5;
    a = 0; b = 1; #5;
    a = 1; b = 0; #5;
    a = 1; b = 1; #5;
    $display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
  end
endmodule
