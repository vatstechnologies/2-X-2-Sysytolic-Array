module pe(
    input clk,
    input rst,
    input [7:0] a_in,
    input [7:0] b_in,
    output reg [7:0] a_out,
    output reg [7:0] b_out,
    output reg [15:0] sum
);

always @(posedge clk) begin
    if(rst) begin
        a_out <= 0;
        b_out <= 0;
        sum   <= 0;
    end
    else begin
        sum   <= sum + (a_in * b_in);
        a_out <= a_in;
        b_out <= b_in;
    end
end

endmodule
