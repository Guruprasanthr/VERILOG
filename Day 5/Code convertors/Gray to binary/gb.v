module gb(input[3:0] a,output[3:0] b);
assign b=a^(b>>1);
endmodule
