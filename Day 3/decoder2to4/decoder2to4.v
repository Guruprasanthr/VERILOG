module decoder2to4(input x,y,output a,b,c,d);
assign a=~x&~y;
assign b=~x&y;
assign c=x&~y;
assign d=x&y;
endmodule
