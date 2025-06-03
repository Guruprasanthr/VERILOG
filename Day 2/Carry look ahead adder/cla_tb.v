module cla_tb;
reg[3:0]a;
reg[3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
cla uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
	$monitor("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
	$dumpfile("cla.vcd");
	$dumpvars();
a=4'b0001;
b=4'b1000;
cin=1;
#10
$finish;
end
endmodule
