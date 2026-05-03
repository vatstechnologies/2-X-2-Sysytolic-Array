module tb_systolic;

reg clk;
reg rst;

reg [7:0] a0, a1;
reg [7:0] b0, b1;

wire [15:0] c00, c01, c10, c11;

systolic_array_2x2 uut(
    .clk(clk),
    .rst(rst),
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .c00(c00),
    .c01(c01),
    .c10(c10),
    .c11(c11)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("systolic.vcd");
    $dumpvars(0, tb_systolic);
end

initial begin
    clk = 0;
    rst = 1;

    #10 rst = 0;

    // Matrix input cycle 1
    a0 = 1; a1 = 3;
    b0 = 5; b1 = 6;

    #10;

    // Matrix input cycle 2
    a0 = 2; a1 = 4;
    b0 = 7; b1 = 8;

    #50;

    $display("C00=%d", c00);
    $display("C01=%d", c01);
    $display("C10=%d", c10);
    $display("C11=%d", c11);

    $finish;
end

endmodule
