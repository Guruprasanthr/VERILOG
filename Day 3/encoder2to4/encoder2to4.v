module encoder4to2(input a,b,c,d,output y0,y1);
assign y0=b|c;
assign y1=a|c;
endmodule
