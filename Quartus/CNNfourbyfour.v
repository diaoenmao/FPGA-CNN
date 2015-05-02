`define WIDTH 9
module CNNfourbyfour (
clk,

Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out
  );
	input wire clk;
	wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	wire signed [`WIDTH - 1:0] U1_in, U2_in, U3_in, U4_in, U5_in, U6_in, U7_in, U8_in, U9_in, U10_in, U11_in, U12_in, U13_in, U14_in, U15_in, U16_in;
	wire signed [`WIDTH - 1:0] I;
	wire signed [2 * `WIDTH - 1:0] Initial_X;
	output wire signed [2 * `WIDTH - 1:0] Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out;
//Value type is {signed, 2^3, 2^2, 2^1, 2^0, 2^-1...}
assign A1 = `WIDTH'b0;
assign A2 = `WIDTH'b0;
assign A3 = `WIDTH'b0;
assign A4 = `WIDTH'b0;
assign A5 = `WIDTH'b000010000;
assign A6 = `WIDTH'b0;
assign A7 = `WIDTH'b0;
assign A8 = `WIDTH'b0;
assign A9 = `WIDTH'b0;

assign B1 = `WIDTH'b111110000;
assign B2 = `WIDTH'b111110000;
assign B3 = `WIDTH'b111110000;
assign B4 = `WIDTH'b111110000;
assign B5 = `WIDTH'b001000000;
assign B6 = `WIDTH'b111110000;
assign B7 = `WIDTH'b111110000;
assign B8 = `WIDTH'b111110000;
assign B9 = `WIDTH'b111110000;
 
assign U1_in = `WIDTH'b0;
assign U2_in = `WIDTH'b0;
assign U3_in = `WIDTH'b0;
assign U4_in = `WIDTH'b0;
assign U5_in = `WIDTH'b0;
assign U6_in = `WIDTH'b000010000;
assign U7_in = `WIDTH'b000010000;
assign U8_in = `WIDTH'b0;
assign U9_in = `WIDTH'b0;
assign U10_in = `WIDTH'b000010000;
assign U11_in = `WIDTH'b000010000;
assign U12_in = `WIDTH'b0;
assign U13_in = `WIDTH'b0;
assign U14_in = `WIDTH'b0;
assign U15_in = `WIDTH'b0;
assign U16_in = `WIDTH'b0;

assign I = `WIDTH'b110110000;

assign Initial_X = {(2 * `WIDTH){1'b0}};

fourbyfour u1(

.clk(clk),

.A1(A1[`WIDTH - 1:0]),
.A2(A2[`WIDTH - 1:0]),
.A3(A3[`WIDTH - 1:0]),
.A4(A4[`WIDTH - 1:0]),
.A5(A5[`WIDTH - 1:0]),
.A6(A6[`WIDTH - 1:0]),
.A7(A7[`WIDTH - 1:0]),
.A8(A8[`WIDTH - 1:0]),
.A9(A9[`WIDTH - 1:0]),

.B1(B1[`WIDTH - 1:0]),
.B2(B2[`WIDTH - 1:0]),
.B3(B3[`WIDTH - 1:0]),
.B4(B4[`WIDTH - 1:0]),
.B5(B5[`WIDTH - 1:0]),
.B6(B6[`WIDTH - 1:0]),
.B7(B7[`WIDTH - 1:0]),
.B8(B8[`WIDTH - 1:0]),
.B9(B9[`WIDTH - 1:0]),

.U1_in(U1_in[`WIDTH - 1:0]),
.U2_in(U2_in[`WIDTH - 1:0]),
.U3_in(U3_in[`WIDTH - 1:0]),
.U4_in(U4_in[`WIDTH - 1:0]),
.U5_in(U5_in[`WIDTH - 1:0]),
.U6_in(U6_in[`WIDTH - 1:0]),
.U7_in(U7_in[`WIDTH - 1:0]),
.U8_in(U8_in[`WIDTH - 1:0]),
.U9_in(U9_in[`WIDTH - 1:0]),
.U10_in(U10_in[`WIDTH - 1:0]),
.U11_in(U11_in[`WIDTH - 1:0]),
.U12_in(U12_in[`WIDTH - 1:0]),
.U13_in(U13_in[`WIDTH - 1:0]),
.U14_in(U14_in[`WIDTH - 1:0]),
.U15_in(U15_in[`WIDTH - 1:0]),
.U16_in(U16_in[`WIDTH - 1:0]),

.Y1_out(Y1_out[2 * `WIDTH - 1:0]),
.Y2_out(Y2_out[2 * `WIDTH - 1:0]),
.Y3_out(Y3_out[2 * `WIDTH - 1:0]),
.Y4_out(Y4_out[2 * `WIDTH - 1:0]),
.Y5_out(Y5_out[2 * `WIDTH - 1:0]),
.Y6_out(Y6_out[2 * `WIDTH - 1:0]),
.Y7_out(Y7_out[2 * `WIDTH - 1:0]),
.Y8_out(Y8_out[2 * `WIDTH - 1:0]),
.Y9_out(Y9_out[2 * `WIDTH - 1:0]),
.Y10_out(Y10_out[2 * `WIDTH - 1:0]),
.Y11_out(Y11_out[2 * `WIDTH - 1:0]),
.Y12_out(Y12_out[2 * `WIDTH - 1:0]),
.Y13_out(Y13_out[2 * `WIDTH - 1:0]),
.Y14_out(Y14_out[2 * `WIDTH - 1:0]),
.Y15_out(Y15_out[2 * `WIDTH - 1:0]),
.Y16_out(Y16_out[2 * `WIDTH - 1:0]),

.I(I[`WIDTH - 1:0]),

.Initial_X_in(Initial_X[2 * `WIDTH - 1:0])
);

endmodule
