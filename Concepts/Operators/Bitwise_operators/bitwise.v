module bitwise;
  reg a=1'b1;
  reg b=1'b0;
  wire and_gate,or_gate,not_gate,xor_gate,xnor_gate;
  assign and_gate=a&b;
  assign or_gate=a|b;
  assign not_gate=~a;
  assign xor_gate=a^b;
  assign xnor_gate=a~^b;
initial begin
  #1 $display("a=%d,b=%d,and_gate=%b,or_gate=%b,not_gate=%b,xor_gate=%b,xnor=%b",a,b,and_gate,or_gate,not_gate,xor_gate,xnor_gate);
end
endmodule


output:
a=1,b=0,and_gate=0,or_gate=1,not_gate=0,xor_gate=1,xnor=0
