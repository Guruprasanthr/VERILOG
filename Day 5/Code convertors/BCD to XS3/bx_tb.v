module bcdtoxs3_tb;
reg [3:0] bcd;
wire [3:0] xs;
bx dut(.bcd(bcd),.xs(xs));
initial begin
$monitor("bcd=%b,xs=%b",bcd,xs);
$dumpfile("waves.vcd");
$dumpvars();
bcd=4'b0000;
#10bcd=4'b0000;
#10bcd=4'b0001;
#10bcd=4'b0010;
#10bcd=4'b0011;
#10bcd=4'b0100;
#10bcd=4'b0101;
#10bcd=4'b0111;
#10bcd=4'b1000;
#10bcd=4'b1001;
end
endmodule

