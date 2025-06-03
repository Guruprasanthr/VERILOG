module rca (
    input  [3:0] a, b,
    input        cin,
    output [3:0] s,
    output       cout
);
    wire c0, c1, c2;

    full_adder fa0(a[0], b[0], cin,  s[0], c0);
    full_adder fa1(a[1], b[1], c0,   s[1], c1);
    full_adder fa2(a[2], b[2], c1,   s[2], c2);
    full_adder fa3(a[3], b[3], c2,   s[3], cout);
endmodule

module full_adder (
    input  a, b, cin,
    output sum, carry
);
    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (cin & a);
endmodule
