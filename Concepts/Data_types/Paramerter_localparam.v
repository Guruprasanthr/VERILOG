module param;
  parameter depth=5;
  localparam width=8;
  reg [depth-1:0] data;
  initial begin
    data=5'h5;
    $display("depth=%0d,width=%0d,data=%0h",depth,width,data);
  end
endmodule

output:
depth=5,width=8,data=5
