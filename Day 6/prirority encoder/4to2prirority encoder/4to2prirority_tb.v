module tb_pe;
  reg  [3:0] d;
    wire [1:0] y;
pe uut (.d(d),.y(y));
initial begin
      $monitor("d=%b,y=%b",d,y); 
      $dumpfile("waves.vcd");
      $dumpvars();
        d = 4'b0001; #10;
        d = 4'b0010; #10; 
        d = 4'b0100; #10; 
        d = 4'b1000; #10;  
    end
endmodule
