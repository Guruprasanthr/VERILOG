module for_loop;
  [7:0]reg ;
  initial begin
    for(i=0; i<10; i=i+1)begin
      $display("value of i=%0d",i);
    end
  end
endmodule

output:
value of i=0
value of i=1
value of i=2
value of i=3
value of i=4
value of i=5
value of i=6
value of i=7
value of i=8
value of i=9
