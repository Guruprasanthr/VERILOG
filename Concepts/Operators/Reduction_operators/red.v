module reduction(input[3:0] a,output[5:0] y);
  assign y[0]=&a;
  assign y[1]=|a;
  assign y[2]=^a;
  assign y[3]=~&a; 
  assign y[4]=~|a;   
  assign y[5]=^a;
endmodule
