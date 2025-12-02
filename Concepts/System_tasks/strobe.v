module test;
    reg a = 0, b = 0;
    initial begin
        #5  a <= 1;
        #5  b <= 1;
      $display("DISPLAY time=%0t  a=%b b=%b", $time, a, b);          //
        $strobe ("STROBE  time=%0t  a=%b b=%b", $time, a, b);
    end
endmodule

output:
# KERNEL: DISPLAY time=10  a=1 b=0
# KERNEL: STROBE  time=10  a=1 b=1

/*$display sees OLD values
Because it runs before NBA updates.
✔ $strobe sees NEW values
Because it runs after NBA updates./*
