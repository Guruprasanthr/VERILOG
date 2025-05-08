module comp(input [7:0] a,b,output aeb,agb,alb);
assign aeb=(a==b);
assign agb=(a>b);
assign alb=(a<b);
endmodule
