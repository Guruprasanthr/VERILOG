//design
module encoder(input[1:0]d,output reg[3:0]y);
always@(*)begin
case(d)
2'b00:y=4'b0001;
2'b01:y=4'b0010;
2'b10:y=4'b0100;
2'b11:y=4'b1000;
endcase
end
endmodule

//testbench
module tb_encoder;
  reg  [1:0] d;
    wire [3:0] y;
encoder uut (.d(d),.y(y));
initial begin
      $monitor("d=%b,y=%b",d,y); 
      $dumpfile("waves.vcd");
      $dumpvars();
        d = 4'b00; #10;
        d = 4'b01; #10; 
        d = 4'b10; #10; 
        d = 4'b11; #10;  
    end
endmodule
