module gb(input[3:0] a,output[3:0] b);
assign b=a^(b>>1);
endmodule
//
module g2b (input  [3:0] g,output reg [3:0] b);
always @(*) begin
    b[3] = g[3];
    b[2] = g[3] ^ g[2];
    b[1] = g[3]^g[2] ^ g[1];
    b[0] = g[3]^g[2]^g[1] ^ g[0];
end
endmodule
