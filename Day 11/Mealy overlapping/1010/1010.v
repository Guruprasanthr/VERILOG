module seq(
    input in,     
    input clk,  
    input rst,      
    output reg out,
    output reg[1:0]cs
);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;

reg [1:0] ns;  
always @(posedge clk or negedge rst) begin
    if (rst) begin 
        cs <= 1'b0;
    end
    else begin
        cs <= ns;
    end
end
always @(*) begin
    case (cs)
        s0: begin
            ns = in ? s1 : s0;
            out = 1'b0;
        end
        s1: begin
            ns = in ? s1 : s2;
            out = 1'b0;
        end
        s2: begin
            ns = in ? s3 : s0;
            out = 1'b0;
        end
        s3: begin
            ns = in ? s1 : s0; 
  	    out = 1'b1;
        end
        default: begin
            ns = s0;
            out = 1'b0;
        end
    endcase
end

endmodule

