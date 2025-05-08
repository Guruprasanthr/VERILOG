//design
//even parity generator
module epg(input a,b,c,output x);
assign x=(a^b^c);
endmodule

//testbench

module epg_tb;
reg a,b,c;
wire x;
epg uut(.a(a),.b(b),.c(c),.x(x));
initial begin
$monitor("a=%b,b=%b,c=%b,x=%b",a,b,c,x);
$dumpfile("waves.vcd");
$dumpvars();
a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;
end
endmodule


//design
//even parity checker
module even(input a,b,c,p,output x);
assign x=(a^b^c^p);
endmodule

//testbench
module even_tb;
reg a,b,c,p;
wire x;
even uut(.a(a),.b(b),.c(c),.p(p),.x(x));
initial begin
$monitor("a=%b,b=%b,c=%b,p=%b,x=%b",a,b,c,p,x);
$dumpfile("waves.vcd");
$dumpvars();
a=0; b=0; c=0;p=0; #10;
a=0; b=0; c=1;p=0; #10;
a=0; b=1; c=0;p=1; #10;
a=0; b=1; c=1;p=1; #10;
end
endmodule
