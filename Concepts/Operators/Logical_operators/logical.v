module logical;
  reg[3:0]a=4'b1111;
  reg[3:0]b=4'b0000;
  wire and_gate,or_gate;
  assign and_gate=a&&b;
  assign or_gate=a||b;
initial begin
 #1 $display("a=%d,b=%d,and_gate=%b,or_gate=%b",a,b,and_gate,or_gate);
end
endmodule


output:
a=15,b= 0,and_gate=0,or_gate=1
