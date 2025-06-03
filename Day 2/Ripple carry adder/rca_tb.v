module rca_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] s;
  wire cout;
  rca dut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
initial begin
    $dumpfile("rca.vcd");
    $dumpvars(0, rca_tb);
   
    $monitor("a=%b,b=%b,cin=%b,s=%b,cout=%b", a, b, cin, s, cout);
    a = 4'b0000; b = 4'b0000; cin = 0; #10;
    a = 4'b0001; b = 4'b0001; cin = 0; #10;
    a = 4'b0011; b = 4'b0101; cin = 1; #10;
    a = 4'b1111; b = 4'b1111; cin = 0; #10;
    a = 4'b1010; b = 4'b0101; cin = 1; #10;

    #10 $finish;
  end
endmodule
