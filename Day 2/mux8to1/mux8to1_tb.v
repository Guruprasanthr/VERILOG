     
module mux8to1_tb;
    wire out;
    reg a, b, c, d, e, f, g, h;
    reg [2:0] sel;

       mux8to1 mux(
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h),
        .sel(sel), .out(out)
    );

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars();
        $monitor("a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b sel=%b out=%b",
                 a, b, c, d, e, f, g, h, sel, out);

         a = 0; b = 0; c = 0; d = 0;
        e = 0; f = 0; g = 0; h = 0;
        sel = 3'b000;

         #10  a = 1; sel = 3'b000;
        #50  a = 0;

        #10  b = 1; sel = 3'b001;
        #50  b = 0;

        #10  c = 1; sel = 3'b010;
        #50  c = 0;

        #10  d = 1; sel = 3'b011;
        #50  d = 0;

        #10  e = 1; sel = 3'b100;
        #50  e = 0;

        #10  f = 1; sel = 3'b101;
        #50  f = 0;

        #10  g = 1; sel = 3'b110;
        #50  g = 0;

        #10  h = 1; sel = 3'b111;
        #50  h = 0;

        #20;
        $finish;
    end
endmodule
