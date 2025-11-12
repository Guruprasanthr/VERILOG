module equality_eg;
  reg[3:0]a=4'b0110;
  reg[3:0]b=4'b01xz;
  wire eq1,eq2;
  
  assign eq1=a==b;
  assign eq2=a===b;
  
  initial begin 
    $display("a=%b,b=%b,eq1=%0b,eq2=%0b",a,b,eq1,eq2);
  end
endmodule


output:
a=0110,b=01xz,eq1=x,eq2=0
