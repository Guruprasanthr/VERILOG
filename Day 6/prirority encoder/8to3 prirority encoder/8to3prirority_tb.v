module tb_pe8;
  reg  [7:0] d;
    wire [2:0] y;
pe8 uut (.d(d),.y(y));
initial begin
      $monitor("d=%b,y=%b",d,y); 
      $dumpfile("waves.vcd");
      $dumpvars();
        d = 8'b00000001; #10;
        d = 8'b00000010; #10; 
        d = 8'b00000100; #10; 
        d = 8'b00001000; #10; 
        d = 8'b00010001; #10;
        d = 8'b00100000; #10; 
        d = 8'b01000000; #10; 
        d = 8'b10000000; #10;  
  end
endmodule
