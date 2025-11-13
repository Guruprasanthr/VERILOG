module concat;
  reg[3:0]a=4'b1010;
  reg[3:0]b=4'b1101;
  wire [7:0]concat;
  wire[15:0]repli;
  assign concat={a,b};
  assign repli={4{b}};
  initial begin
    $display("a=%b,b=%b,concat=%b,repli=%b",a,b,concat,repli);
  end
endmodule

output:
a=1010,b=1101,concat=10101101,repli=1101110111011101
