module mem_eg;
  reg[7:0]mem[3:0];
  initial begin
    mem[0]=8'hA1;
    mem[1]=8'hB2;
    mem[2]=8'hC3;
    mem[3]=8'hD4;
    $display("mem[0]=%d mem[1]=%d mem[2]=%d mem[3]=%d", 
          mem[0], mem[1], mem[2], mem[3]);
  end
endmodule

output:
mem[0]=161 mem[1]=178 mem[2]=195 mem[3]=212
