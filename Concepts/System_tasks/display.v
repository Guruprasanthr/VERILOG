module test;
    reg a = 0, b = 0;
    initial begin
      $display("a=%b,b=%b",a,b);        //Prints a message and automatically goes to a new line.
        #5 a = 1;
        #5 b = 1;
        #5 a = 0;
        #5 b = 0;
        #5 $finish;
    end
endmodule

output:
# KERNEL: a=0,b=0
