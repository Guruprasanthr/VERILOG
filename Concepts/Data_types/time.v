module time_example;
  time start_time, end_time;
  initial begin
    start_time=$time;   
    #10;                 
    end_time=$time;
    $display("time=%0t",end_time,start_time);
  end
endmodule


output:
time=10      
