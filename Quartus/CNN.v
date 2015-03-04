module CNN (
clk,

Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out
  );
	input wire clk;
	wire signed [7:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	wire signed [7:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	wire [7:0] U1_in, U2_in, U3_in, U4_in, U5_in, U6_in, U7_in, U8_in, U9_in, U10_in, U11_in, U12_in, U13_in, U14_in, U15_in, U16_in;
	wire signed [7:0] I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16;
	output wire signed [8:0] Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out;

assign A1 = 8'b0;
assign A2 = 8'b0;
assign A3 = 8'b0;
assign A4 = 8'b0;
assign A5 = 8'b0;
assign A6 = 8'b0;
assign A7 = 8'b0;
assign A8 = 8'b0;
assign A9 = 8'b0;

assign B1 = 8'b0;
assign B2 = 8'b0;
assign B3 = 8'b0;
assign B4 = 8'b0;
assign B5 = 8'b0;
assign B6 = 8'b0;
assign B7 = 8'b0;
assign B8 = 8'b0;
assign B9 = 8'b0;

assign U1_in = 8'b0;
assign U2_in = 8'b0;
assign U3_in = 8'b0;
assign U4_in = 8'b0;
assign U5_in = 8'b0;
assign U6_in = 8'b0;
assign U7_in = 8'b0;
assign U8_in = 8'b0;
assign U9_in = 8'b0;
assign U10_in = 8'b0;
assign U11_in = 8'b0;
assign U12_in = 8'b0;
assign U13_in = 8'b0;
assign U14_in = 8'b0;
assign U15_in = 8'b0;
assign U16_in = 8'b0;

assign I1 = 8'b0;
assign I2 = 8'b0;
assign I3 = 8'b0;
assign I4 = 8'b0;
assign I5 = 8'b0;
assign I6 = 8'b0;
assign I7 = 8'b0;
assign I8 = 8'b0;
assign I9 = 8'b0;
assign I10 = 8'b0;
assign I11 = 8'b0;
assign I12 = 8'b0;
assign I13 = 8'b0;
assign I14 = 8'b0;
assign I15 = 8'b0;
assign I16 = 8'b0;


fourbyfour u1(

.clk(clk),

.A1(A1[7:0]),
.A2(A2[7:0]),
.A3(A3[7:0]),
.A4(A4[7:0]),
.A5(A5[7:0]),
.A6(A6[7:0]),
.A7(A7[7:0]),
.A8(A8[7:0]),
.A9(A9[7:0]),

.B1(B1[7:0]),
.B2(B2[7:0]),
.B3(B3[7:0]),
.B4(B4[7:0]),
.B5(B5[7:0]),
.B6(B6[7:0]),
.B7(B7[7:0]),
.B8(B8[7:0]),
.B9(B9[7:0]),

.U1_in(U1_in[7:0]),
.U2_in(U2_in[7:0]),
.U3_in(U3_in[7:0]),
.U4_in(U4_in[7:0]),
.U5_in(U5_in[7:0]),
.U6_in(U6_in[7:0]),
.U7_in(U7_in[7:0]),
.U8_in(U8_in[7:0]),
.U9_in(U9_in[7:0]),
.U10_in(U10_in[7:0]),
.U11_in(U11_in[7:0]),
.U12_in(U12_in[7:0]),
.U13_in(U13_in[7:0]),
.U14_in(U14_in[7:0]),
.U15_in(U15_in[7:0]),
.U16_in(U16_in[7:0]),

.Y1_out(Y1_out[8:0]),
.Y2_out(Y2_out[8:0]),
.Y3_out(Y3_out[8:0]),
.Y4_out(Y4_out[8:0]),
.Y5_out(Y5_out[8:0]),
.Y6_out(Y6_out[8:0]),
.Y7_out(Y7_out[8:0]),
.Y8_out(Y8_out[8:0]),
.Y9_out(Y9_out[8:0]),
.Y10_out(Y10_out[8:0]),
.Y11_out(Y11_out[8:0]),
.Y12_out(Y12_out[8:0]),
.Y13_out(Y13_out[8:0]),
.Y14_out(Y14_out[8:0]),
.Y15_out(Y15_out[8:0]),
.Y16_out(Y16_out[8:0]),

.I1(I1[7:0]),
.I2(I2[7:0]),
.I3(I3[7:0]),
.I4(I4[7:0]),
.I5(I5[7:0]),
.I6(I6[7:0]),
.I7(I7[7:0]),
.I8(I8[7:0]),
.I9(I9[7:0]),
.I10(I10[7:0]),
.I11(I11[7:0]),
.I12(I12[7:0]),
.I13(I13[7:0]),
.I14(I14[7:0]),
.I15(I15[7:0]),
.I16(I16[7:0]),

);

endmodule
