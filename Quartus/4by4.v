module main (
A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1, U2, U3, U4, U5, U6, U7, U8, U9,
	
I,

clk,

Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out
  );
	input wire clk;
	input wire [7:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire [7:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire [7:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	input wire [7:0] I;
	reg [7:0] A1i, A2i, A3i, A4i, A5i, A6i, A7i, A8i, A9i;
	reg [7:0] B1i, B2i, B3i, B4i, B5i, B6i, B7i, B8i, B9i;
	reg [7:0] U1i, U2i, U3i, U4i, U5i, U6i, U7i, U8i, U9i;
	reg signed [8:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9, Y10, Y11, Y12, Y13, Y14, Y15, Y16;
	reg [7:0] Ii;
	reg [3:0] counter;
	wire signed [8:0] onebyoneout;
	reg signed [8:0] Y1_next, Y2_next, Y3_next, Y4_next, Y5_next, Y6_next, Y7_next, Y8_next, Y9_next, Y10_next, Y11_next, Y12_next, Y13_next, Y14_next, Y15_next, Y16_next;
	output wire signed [8:0] Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out;

assign Y1_out = Y1_next;
assign Y2_out = Y2_next;
assign Y3_out = Y3_next;
assign Y4_out = Y4_next;
assign Y5_out = Y5_next;
assign Y6_out = Y6_next;
assign Y7_out = Y7_next;
assign Y8_out = Y8_next;
assign Y9_out = Y9_next;
assign Y10_out = Y10_next;
assign Y11_out = Y11_next;
assign Y12_out = Y12_next;
assign Y13_out = Y13_next;
assign Y14_out = Y14_next;
assign Y15_out = Y15_next;
assign Y16_out = Y16_next;
	
always  @ (posedge clk)
begin
  A1i <= A1;
  A2i <= A2;
  A3i <= A3;
  A4i <= A4;
  A5i <= A5;
  A6i <= A6;
  A7i <= A7;
  A8i <= A8;
  A9i <= A9;

  B1i <= B1;
  B2i <= B2;
  B3i <= B3;
  B4i <= B4;
  B5i <= B5;
  B6i <= B6;
  B7i <= B7;
  B8i <= B8;
  B9i <= B9;
  
  U1i <= U1;
  U2i <= U2;
  U3i <= U3;
  U4i <= U4;
  U5i <= U5;
  U6i <= U6;
  U7i <= U7;
  U8i <= U8;
  U9i <= U9;
  
  Ii <= I;
  if (counter == 4'b0000) begin
    Y1 <= 8'b00000000;
    Y2 <= 8'b00000000;
    Y3 <= 8'b00000000;
    Y4 <= 8'b00000000;
    Y5 <= Y1;
    Y6 <= Y2;
    Y7 <= 8'b00000000;
    Y8 <= Y5;
    Y9 <= Y6;   
    Y1_next <= onebyoneout;
  end else if (counter == 4'b0001) begin
    Y1 <= 8'b00000000;
    Y2 <= 8'b00000000;
    Y3 <= 8'b00000000;
    Y4 <= Y1;
    Y5 <= Y2;
    Y6 <= Y3;
    Y7 <= Y5;
    Y8 <= Y6;
    Y9 <= Y7; 
    Y2_next <= onebyoneout;
  end else if (counter == 4'b0010) begin
    Y1 <= 8'b00000000;
    Y2 <= 8'b00000000;
    Y3 <= 8'b00000000;
    Y4 <= Y2;
    Y5 <= Y3;
    Y6 <= Y4;
    Y7 <= Y6;
    Y8 <= Y7;
    Y9 <= Y8;
    Y3_next <= onebyoneout; 
  end else if (counter == 4'b0011) begin
    Y1 <= 8'b00000000;
    Y2 <= 8'b00000000;
    Y3 <= 8'b00000000;
    Y4 <= Y3;
    Y5 <= Y4;
    Y6 <= 8'b00000000;
    Y7 <= Y7;
    Y8 <= Y8;
    Y9 <= 8'b00000000;
    Y4_next <= onebyoneout;
  end else if (counter == 4'b0100) begin
    Y1 <= 8'b00000000;
    Y2 <= Y1;
    Y3 <= Y2;
    Y4 <= 8'b00000000;
    Y5 <= Y5;
    Y6 <= Y6;
    Y7 <= 8'b00000000;
    Y8 <= Y9;
    Y9 <= Y10;
    Y5_next <= onebyoneout;
  end else if (counter == 4'b0101) begin
    Y1 <= Y1;
    Y2 <= Y2;
    Y3 <= Y3;
    Y4 <= Y5;
    Y5 <= Y6;
    Y6 <= Y7;
    Y7 <= Y9;
    Y8 <= Y10;
    Y9 <= Y11;
    Y6_next <= onebyoneout;
  end else if (counter == 4'b0110) begin
    Y1 <= Y2;
    Y2 <= Y3;
    Y3 <= Y4;
    Y4 <= Y6;
    Y5 <= Y7;
    Y6 <= Y8;
    Y7 <= Y10;
    Y8 <= Y11;
    Y9 <= Y12;
    Y7_next <= onebyoneout;
  end else if (counter == 4'b0111) begin
    Y1 <= Y3;
    Y2 <= Y4;
    Y3 <= 8'b00000000;
    Y4 <= Y7;
    Y5 <= Y8;
    Y6 <= 8'b00000000;
    Y7 <= Y11;
    Y8 <= Y12;
    Y9 <= 8'b00000000;
    Y8_next <= onebyoneout;
  end else if (counter == 4'b1000) begin
    Y1 <= 8'b00000000;
    Y2 <= Y5;
    Y3 <= Y6;
    Y4 <= 8'b00000000;
    Y5 <= Y9;
    Y6 <= Y10;
    Y7 <= 8'b00000000;
    Y8 <= Y13;
    Y9 <= Y14;
    Y9_next <= onebyoneout;
  end else if (counter == 4'b1001) begin
    Y1 <= Y5;
    Y2 <= Y6;
    Y3 <= Y7;
    Y4 <= Y9;
    Y5 <= Y10;
    Y6 <= Y11;
    Y7 <= Y13;
    Y8 <= Y14;
    Y9 <= Y15;
    Y10_next <= onebyoneout;
  end else if (counter == 4'b1010) begin
    Y1 <= Y6;
    Y2 <= Y7;
    Y3 <= Y8;
    Y4 <= Y10;
    Y5 <= Y11;
    Y6 <= Y12;
    Y7 <= Y14;
    Y8 <= Y15;
    Y9 <= Y16;
    Y11_next <= onebyoneout;
  end else if (counter == 4'b1011) begin
    Y1 <= Y7;
    Y2 <= Y8;
    Y3 <= 8'b00000000;
    Y4 <= Y11;
    Y5 <= Y12;
    Y6 <= 8'b00000000;
    Y7 <= Y15;
    Y8 <= Y16;
    Y9 <= 8'b00000000;
    Y12_next <= onebyoneout;
  end else if (counter == 4'b1100) begin
    Y1 <= 8'b00000000;
    Y2 <= Y9;
    Y3 <= Y10;
    Y4 <= 8'b00000000;
    Y5 <= Y13;
    Y6 <= Y14;
    Y7 <= 8'b00000000;
    Y8 <= 8'b00000000;
    Y9 <= 8'b00000000;
    Y13_next <= onebyoneout;
  end else if (counter == 4'b1101) begin
    Y1 <= Y9;
    Y2 <= Y10;
    Y3 <= Y11;
    Y4 <= Y13;
    Y5 <= Y14;
    Y6 <= Y15;
    Y7 <= 8'b00000000;
    Y8 <= 8'b00000000;
    Y9 <= 8'b00000000;
    Y14_next <= onebyoneout;
  end else if (counter == 4'b1110) begin
    Y1 <= Y10;
    Y2 <= Y11;
    Y3 <= Y12;
    Y4 <= Y14;
    Y5 <= Y15;
    Y6 <= Y16;
    Y7 <= 8'b00000000;
    Y8 <= 8'b00000000;
    Y9 <= 8'b00000000;
    Y15_next <= onebyoneout;
  end else if (counter == 4'b1111) begin
    Y1 <= Y11;
    Y2 <= Y12;
    Y3 <= 8'b00000000;
    Y4 <= Y15;
    Y5 <= Y16;
    Y6 <= 8'b00000000;
    Y7 <= 8'b00000000;
    Y8 <= 8'b00000000;
    Y9 <= 8'b00000000;
    Y16_next <= onebyoneout;
  end
  if (counter == 4'b1111) begin
  Y1 <= Y1_next;
  Y2 <= Y2_next;
  Y3 <= Y3_next;
  Y4 <= Y4_next;
  Y5 <= Y5_next;
  Y6 <= Y6_next;
  Y7 <= Y7_next;
  Y8 <= Y8_next;
  Y9 <= Y9_next;
  Y10 <= Y10_next;
  Y11 <= Y11_next;
  Y12 <= Y12_next;
  Y13 <= Y13_next;
  Y14 <= Y14_next;
  Y15 <= Y15_next;
  Y16 <= Y16_next;       
  end
  counter <= counter + 1;
end




onebyone u1(
.A1(A1i[7:0]),
.A2(A2i[7:0]),
.A3(A3i[7:0]),
.A4(A4i[7:0]),
.A5(A5i[7:0]),
.A6(A6i[7:0]),
.A7(A7i[7:0]),
.A8(A8i[7:0]),
.A9(A9i[7:0]),

.B1(B1i[7:0]),
.B2(B2i[7:0]),
.B3(B3i[7:0]),
.B4(B4i[7:0]),
.B5(B5i[7:0]),
.B6(B6i[7:0]),
.B7(B7i[7:0]),
.B8(B8i[7:0]),
.B9(B9i[7:0]),

.U1(U1i[7:0]),
.U2(U2i[7:0]),
.U3(U3i[7:0]),
.U4(U4i[7:0]),
.U5(U5i[7:0]),
.U6(U6i[7:0]),
.U7(U7i[7:0]),
.U8(U8i[7:0]),
.U9(U9i[7:0]),

.Y1(Y1[8:0]),
.Y2(Y2[8:0]),
.Y3(Y3[8:0]),
.Y4(Y4[8:0]),
.Y5(Y5[8:0]),
.Y6(Y6[8:0]),
.Y7(Y7[8:0]),
.Y8(Y8[8:0]),
.Y9(Y9[8:0]),

.I(Ii[7:0]),

.out(onebyoneout[8:0])

);

endmodule
