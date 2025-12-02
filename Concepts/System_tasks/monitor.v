module test;
    reg a = 0, b = 0;
    initial begin
      $monitor("a=%b,b=%b",a,b);   // prints automatically whenever any variable changes.
        #5 a = 1;
        #5 b = 1;
        #5 a = 0;
        #5 b = 0;
        #5 $finish;
    end
endmodule


output:
# KERNEL: a=0,b=0
# KERNEL: a=1,b=0
# KERNEL: a=1,b=1
# KERNEL: a=0,b=1
# KERNEL: a=0,b=0
