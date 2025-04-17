module epc_tb;
reg a,b,c,d;
wire x;
  epc uut(.a(a),.b(b),.c(c),.d(d),.x(x));
initial begin
  $monitor("a=%b,b=%b,c=%b,d=%b,x=%b",a,b,c,x);
$dumpfile("waves.vcd");
$dumpvars();
#5 a=0; b=0; c=0; p=0; 
#5 a=0; b=0; c=0; p=1; 
#5 a=0; b=0; c=1; p=0; 
#5 a=0; b=0; c=1; p=1; 
#5 a=0; b=1; c=0; p=0; 
#5 a=0; b=1; c=0; p=1; 
#5 a=0; b=1; c=1; p=0; 
#5 a=0; b=1; c=1; p=1; 
#5 a=1; b=0; c=0; p=0; 
#5 a=1; b=0; c=0; p=1; 
#5 a=1; b=0; c=1; p=0; 
#5 a=1; b=0; c=1; p=1; 
#5 a=1; b=1; c=0; p=0; 
#5 a=1; b=1; c=0; p=1; 
#5 a=1; b=1; c=1; p=0; 
#5 a=1; b=1; c=1; p=1; 
end
endmodule
