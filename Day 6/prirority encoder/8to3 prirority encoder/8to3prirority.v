module pe8(input[7:0]d,output[2:0]y);
assign y[0]=d[7]|d[5]|d[3]|d[1];
assign y[1]=d[7]|d[6]|d[3]|d[2];
assign y[2]=d[7]|d[6]|d[5]|d[4];
endmodule
