module systolic_array_2x2(
    input clk,
    input rst,
    input [7:0] a0, a1,
    input [7:0] b0, b1,
    output [15:0] c00, c01, c10, c11
);

wire [7:0] a01, a11;
wire [7:0] b10, b11;

pe pe00(
    .clk(clk),
    .rst(rst),
    .a_in(a0),
    .b_in(b0),
    .a_out(a01),
    .b_out(b10),
    .sum(c00)
);

pe pe01(
    .clk(clk),
    .rst(rst),
    .a_in(a01),
    .b_in(b1),
    .a_out(),
    .b_out(b11),
    .sum(c01)
);

pe pe10(
    .clk(clk),
    .rst(rst),
    .a_in(a1),
    .b_in(b10),
    .a_out(a11),
    .b_out(),
    .sum(c10)
);

pe pe11(
    .clk(clk),
    .rst(rst),
    .a_in(a11),
    .b_in(b11),
    .a_out(),
    .b_out(),
    .sum(c11)
);

endmodule
