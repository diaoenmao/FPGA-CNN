`define WIDTH 9
module onebyone (
A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1, U2, U3, U4, U5, U6, U7, U8, U9,

Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9,
	
I,

Initial_X,

out
  );
  
	input wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire signed [`WIDTH - 1:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	input wire signed [2 * `WIDTH - 1:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9;
	input wire signed [`WIDTH - 1:0] I;
	input wire signed [2 * `WIDTH - 1:0] Initial_X;
	wire signed [2 * `WIDTH - 1:0] eq1out;
	output wire signed [2 * `WIDTH - 1:0] out;
	
eq1 u1(
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

.U1(U1[`WIDTH - 1:0]),
.U2(U2[`WIDTH - 1:0]),
.U3(U3[`WIDTH - 1:0]),
.U4(U4[`WIDTH - 1:0]),
.U5(U5[`WIDTH - 1:0]),
.U6(U6[`WIDTH - 1:0]),
.U7(U7[`WIDTH - 1:0]),
.U8(U8[`WIDTH - 1:0]),
.U9(U9[`WIDTH - 1:0]),

.Y1(Y1[2 * `WIDTH - 1:0]),
.Y2(Y2[2 * `WIDTH - 1:0]),
.Y3(Y3[2 * `WIDTH - 1:0]),
.Y4(Y4[2 * `WIDTH - 1:0]),
.Y5(Y5[2 * `WIDTH - 1:0]),
.Y6(Y6[2 * `WIDTH - 1:0]),
.Y7(Y7[2 * `WIDTH - 1:0]),
.Y8(Y8[2 * `WIDTH - 1:0]),
.Y9(Y9[2 * `WIDTH - 1:0]),

.I(I[`WIDTH - 1:0]),

.out(eq1out[2 * `WIDTH - 1:0])

);

eq2 u2(
.dX(eq1out[2 * `WIDTH - 1:0]),

.Initial_X(Initial_X[2 * `WIDTH - 1:0]),

.out(out[2 * `WIDTH - 1:0])
);

endmodule
