//design
module pe (
    input  [3:0] d,
    output [1:0] y
);
    assign y[0] = d[3] | ((~d[2]) & d[1]);
    assign y[1] = d[3] | d[2];
endmodule

//testbench
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
