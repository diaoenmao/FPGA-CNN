module onebyone (
A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1, U2, U3, U4, U5, U6, U7, U8, U9,

Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9,
	
I,

out
  );
  
	input wire signed [7:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire signed [7:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire signed [7:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	input wire signed [8:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9;
	input wire signed [7:0] I;
	wire signed [16:0] eq1out;
	output wire signed [8:0] out;
	
eq1 u1(
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

.U1(U1[7:0]),
.U2(U2[7:0]),
.U3(U3[7:0]),
.U4(U4[7:0]),
.U5(U5[7:0]),
.U6(U6[7:0]),
.U7(U7[7:0]),
.U8(U8[7:0]),
.U9(U9[7:0]),

.Y1(Y1[8:0]),
.Y2(Y2[8:0]),
.Y3(Y3[8:0]),
.Y4(Y4[8:0]),
.Y5(Y5[8:0]),
.Y6(Y6[8:0]),
.Y7(Y7[8:0]),
.Y8(Y8[8:0]),
.Y9(Y9[8:0]),

.I(I[7:0]),

.out(eq1out[16:0])

);

eq2 u2(
.X(eq1out[16:0]),

.out(out[8:0])
);

endmodule
