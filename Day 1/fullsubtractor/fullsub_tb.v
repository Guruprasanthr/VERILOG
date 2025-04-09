module fullsub_tb;
reg a, b,bin;
wire difference,borrow;
fullsub uut (.a(a),.b(b),.bin(bin),.difference(difference),.borrow(borrow));
initial begin
$monitor("a=%b,b=%b,bin=%b,difference=%b,borrow=%b",a,b,bin,difference,borrow);
$dumpfile("waves.vcd");
$dumpvars();
//end
//initial begin
a=0; b=0; bin=0; #10;
a=0; b=0; bin=1; #10;
a=0; b=1; bin=0; #10;
a=0; b=1; bin=1; #10;
a=1; b=0; bin=0; #10;
a=1; b=0; bin=1; #10;
a=1; b=1; bin=0; #10;
a=1; b=1; bin=1; #10;
end
endmodule
