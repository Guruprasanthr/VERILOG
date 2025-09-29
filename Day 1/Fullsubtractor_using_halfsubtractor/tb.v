module full_subractor_tb;
  reg a,b,bin;
  wire difference,borrow;
  full_subractor uut(.a(a),.b(b),.bin(bin),.difference(difference),.borrow(borrow));
 
 initial begin
    $monitor("a=%b,b=%b,cin=%b,difference=%b,borrow=%b",a,b,bin,difference,borrow);
    $dumpfile("waves.vcd");
    $dumpvars();
  end
  
initial begin
    a=0;b=0;bin=0;#10;
    a=0;b=0;bin=1;#10;
    a=0;b=1;bin=0;#10;
    a=0;b=1;bin=1;#10;
  end
endmodule
