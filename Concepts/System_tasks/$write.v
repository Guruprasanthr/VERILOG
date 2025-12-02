module test;
    initial begin
      $write("Hello");         //prints without automatically moving to a new line
        $write(" World");      
    end
endmodule

output:
# KERNEL: Hello World
