module bg(input[3:0] a,output[3:0] b);
assign b=a^(a>>1);
endmodule

// 
module b2g (input  [3:0] b,output reg [3:0] g);
always @(*) begin
    g[3] = b[3];
    g[2] = b[3] ^ b[2];
    g[1] = b[2] ^ b[1];
    g[0] = b[1] ^ b[0];
end
endmodule

