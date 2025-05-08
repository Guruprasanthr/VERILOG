//design
module decoder3to8 (
    input  [2:0] d,
    input        en,
    output reg [7:0] y
);

always @(*) begin
    if (en) begin
        case (d)
            3'b000: y = 8'b00000001;
            3'b001: y = 8'b00000010;
            3'b010: y = 8'b00000100;
            3'b011: y = 8'b00001000;
            3'b100: y = 8'b00010000;
            3'b101: y = 8'b00100000;
            3'b110: y = 8'b01000000;
            3'b111: y = 8'b10000000;
        endcase
    end else begin
        y = 8'b00000000;
    end
end

endmodule

//testbench
module tb_decoder;
  reg  [2:0] d;
reg en;
wire [7:0] y;
decoder3to8 uut (.d(d),.en(en),.y(y));
initial begin
      $monitor("d=%b,en=%b,y=%b",d,en,y); 
      $dumpfile("waves.vcd");
      $dumpvars();
      en=1;
        d = 4'b000; #10;
        d = 4'b001; #10; 
        d = 4'b010; #10; 
        d = 4'b011; #10;  
        d = 4'b100; #10;  
        d = 4'b101; #10;  
        d = 4'b110; #10;  
        d = 4'b111; #10;  
end
endmodule
