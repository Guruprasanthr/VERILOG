//design
module pe8(input[7:0]d,output[2:0]y);
assign y[0]=d[7]|d[5]|d[3]|d[1];
assign y[1]=d[7]|d[6]|d[3]|d[2];
assign y[2]=d[7]|d[6]|d[5]|d[4];
endmodule
//testbench
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
