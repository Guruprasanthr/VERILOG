// design
module cla(
input [3:0]a,
input[3:0]b,
input cin, 
output [3:0]sum,
output cout);
wire [3:0] g,p;
wire [4:0]c;

assign g= a&b;
assign p = a^b;

assign c[0] = cin;
assign c[1]= g[0]  | (p[0]& cin);
assign c[2]= g [1] | (p[1] &c[1] )  ;
assign c[3]= g[2]  | (p[2]& c[2])  ;
assign c[4] = g[3] | (p[3] & c[3]); 
assign sum = p ^ c[3:0] ;
assign cout =c[4];
endmodule

//testbench
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
