module d(input d,output reg q,output qb);
assign qb=~q;
always @ (*) begin
case ({d})
1'b0:q=1'b0; //reset
1'b1:q=1'b1; //set
endcase
end
endmodule
