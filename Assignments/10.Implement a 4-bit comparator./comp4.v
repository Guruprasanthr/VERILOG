//design
module comp(
    input  [3:0] a, b,
    output reg gr, ls, eq
);
always @(*) begin
    gr = 0;
    eq = 0;
    ls = 0;
 if (a > b)
        gr = 1;
    else if (a < b)
        ls = 1;
    else
        eq = 1;
 end

endmodule

//testbench
module comp4_tb;
reg[3:0]a,b;
wire gr,ls,eq;
comp dut(.a(a),.b(b),.gr(gr),.ls(ls),.eq(eq));
initial begin
$monitor("a=%b,b=%b,gr=%b,ls=%b,eq=%b",a,b,gr,ls,eq);
$dumpfile("waves.vcd");
$dumpvars();
#10 a=4'b0000;b=4'b0001;
#10 a=4'b1110;b=4'b0001;
#10 a=4'b0011;b=4'b0011;
end
endmodule
