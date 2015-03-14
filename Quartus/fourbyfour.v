`define WIDTH 9
`define COUNTER_WIDTH 4
module fourbyfour (
A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1_in, U2_in, U3_in, U4_in, U5_in, U6_in, U7_in, U8_in, U9_in, U10_in, U11_in, U12_in, U13_in, U14_in, U15_in, U16_in,
	
I,

clk,

Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out
  );
	input wire clk;
	input wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire signed [`WIDTH - 1:0] U1_in, U2_in, U3_in, U4_in, U5_in, U6_in, U7_in, U8_in, U9_in, U10_in, U11_in, U12_in, U13_in, U14_in, U15_in, U16_in;
	input wire signed [`WIDTH - 1:0] I;
	reg signed [`WIDTH - 1:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	reg signed [`WIDTH - 1:0] Y1 = `WIDTH'b0, Y2 = `WIDTH'b0, Y3 = `WIDTH'b0, Y4 = `WIDTH'b0, Y5 = `WIDTH'b0, Y6 = `WIDTH'b0, Y7 = `WIDTH'b0, Y8 = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y9 = `WIDTH'b0, Y10 = `WIDTH'b0, Y11 = `WIDTH'b0, Y12 = `WIDTH'b0, Y13 = `WIDTH'b0, Y14 = `WIDTH'b0, Y15 = `WIDTH'b0, Y16 = `WIDTH'b0;
	reg [`COUNTER_WIDTH - 1:0] counter = `COUNTER_WIDTH'b0;
	wire signed [`WIDTH - 1:0] onebyoneout;
	reg signed [`WIDTH - 1:0] Y1_next = `WIDTH'b0, Y2_next = `WIDTH'b0, Y3_next = `WIDTH'b0, Y4_next = `WIDTH'b0, Y5_next = `WIDTH'b0, Y6_next = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y7_next = `WIDTH'b0, Y8_next = `WIDTH'b0, Y9_next = `WIDTH'b0, Y10_next = `WIDTH'b0, Y11_next = `WIDTH'b0, Y12_next = `WIDTH'b0, Y13_next = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y14_next = `WIDTH'b0, Y15_next = `WIDTH'b0, Y16_next = `WIDTH'b0;
	output wire signed [`WIDTH - 1:0] Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out;

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
  
  if (counter == `COUNTER_WIDTH'b0000) begin
  
	U1 <= `WIDTH'b0;
	U2 <= `WIDTH'b0;
	U3 <= `WIDTH'b0;
	U4 <= `WIDTH'b0;
	U5 <= U1_in;
	U6 <= U2_in;
	U7 <= `WIDTH'b0;
	U8 <= U5_in;
	U9 <= U6_in;
  
    Y1 <= `WIDTH'b0;
    Y2 <= `WIDTH'b0;
    Y3 <= `WIDTH'b0;
    Y4 <= `WIDTH'b0;
    Y5 <= Y1;
    Y6 <= Y2;
    Y7 <= `WIDTH'b0;
    Y8 <= Y5;
    Y9 <= Y6;   
    
    
    Y1_next <= onebyoneout;
    
  end else if (counter == `COUNTER_WIDTH'b0001) begin
  
    U1 <= `WIDTH'b0;
    U2 <= `WIDTH'b0;
    U3 <= `WIDTH'b0;
    U4 <= U1_in;
    U5 <= U2_in;
    U6 <= U3_in;
    U7 <= U5_in;
    U8 <= U6_in;
    U9 <= U7_in;
    
    Y1 <= `WIDTH'b0;
    Y2 <= `WIDTH'b0;
    Y3 <= `WIDTH'b0;
    Y4 <= Y1;
    Y5 <= Y2;
    Y6 <= Y3;
    Y7 <= Y5;
    Y8 <= Y6;
    Y9 <= Y7; 
    
        
    Y2_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b0010) begin
  
    U1 <= `WIDTH'b0;
    U2 <= `WIDTH'b0;
    U3 <= `WIDTH'b0;
    U4 <= U2_in;
    U5 <= U3_in;
    U6 <= U4_in;
    U7 <= U6_in;
    U8 <= U7_in;
    U9 <= U8_in;
    
    Y1 <= `WIDTH'b0;
    Y2 <= `WIDTH'b0;
    Y3 <= `WIDTH'b0;
    Y4 <= Y2;
    Y5 <= Y3;
    Y6 <= Y4;
    Y7 <= Y6;
    Y8 <= Y7;
    Y9 <= Y8;
    
    
    Y3_next <= onebyoneout; 
  end else if (counter == `COUNTER_WIDTH'b0011) begin
  
    U1 <= `WIDTH'b0;
    U2 <= `WIDTH'b0;
    U3 <= `WIDTH'b0;
    U4 <= U3_in;
    U5 <= U4_in;
    U6 <= `WIDTH'b0;
    U7 <= U7_in;
    U8 <= U8_in;
    U9 <= `WIDTH'b0;
    
    Y1 <= `WIDTH'b0;
    Y2 <= `WIDTH'b0;
    Y3 <= `WIDTH'b0;
    Y4 <= Y3;
    Y5 <= Y4;
    Y6 <= `WIDTH'b0;
    Y7 <= Y7;
    Y8 <= Y8;
    Y9 <= `WIDTH'b0;
    
    
    Y4_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b0100) begin
  
    U1 <= `WIDTH'b0;
    U2 <= U1_in;
    U3 <= U2_in;
    U4 <= `WIDTH'b0;
    U5 <= U5_in;
    U6 <= U6_in;
    U7 <= `WIDTH'b0;
    U8 <= U9_in;
    U9 <= U10_in;
    
    Y1 <= `WIDTH'b0;
    Y2 <= Y1;
    Y3 <= Y2;
    Y4 <= `WIDTH'b0;
    Y5 <= Y5;
    Y6 <= Y6;
    Y7 <= `WIDTH'b0;
    Y8 <= Y9;
    Y9 <= Y10;
    
    
    Y5_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b0101) begin
  
    U1 <= U1_in;
    U2 <= U2_in;
    U3 <= U3_in;
    U4 <= U5_in;
    U5 <= U6_in;
    U6 <= U7_in;
    U7 <= U9_in;
    U8 <= U10_in;
    U9 <= U11_in;
    
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
  end else if (counter == `COUNTER_WIDTH'b0110) begin
  
    U1 <= U2_in;
    U2 <= U3_in;
    U3 <= U4_in;
    U4 <= U6_in;
    U5 <= U7_in;
    U6 <= U8_in;
    U7 <= U10_in;
    U8 <= U11_in;
    U9 <= U12_in;
    
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
  end else if (counter == `COUNTER_WIDTH'b0111) begin
  
    U1 <= U3_in;
    U2 <= U4_in;
    U3 <= `WIDTH'b0;
    U4 <= U7_in;
    U5 <= U8_in;
    U6 <= `WIDTH'b0;
    U7 <= U11_in;
    U8 <= U12_in;
    U9 <= `WIDTH'b0;

    Y1 <= Y3;
    Y2 <= Y4;
    Y3 <= `WIDTH'b0;
    Y4 <= Y7;
    Y5 <= Y8;
    Y6 <= `WIDTH'b0;
    Y7 <= Y11;
    Y8 <= Y12;
    Y9 <= `WIDTH'b0;
    
    
    Y8_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1000) begin
  
    U1 <= `WIDTH'b0;
    U2 <= U5_in;
    U3 <= U6_in;
    U4 <= `WIDTH'b0;
    U5 <= U9_in;
    U6 <= U10_in;
    U7 <= `WIDTH'b0;
    U8 <= U13_in;
    U9 <= U14_in;
    
    Y1 <= `WIDTH'b0;
    Y2 <= Y5;
    Y3 <= Y6;
    Y4 <= `WIDTH'b0;
    Y5 <= Y9;
    Y6 <= Y10;
    Y7 <= `WIDTH'b0;
    Y8 <= Y13;
    Y9 <= Y14;
    
    
    Y9_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1001) begin
  
    U1 <= U5_in;
    U2 <= U6_in;
    U3 <= U7_in;
    U4 <= U9_in;
    U5 <= U10_in;
    U6 <= U11_in;
    U7 <= U13_in;
    U8 <= U14_in;
    U9 <= U15_in;
 
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
  end else if (counter == `COUNTER_WIDTH'b1010) begin
  
    U1 <= U6_in;
    U2 <= U7_in;
    U3 <= U8_in;
    U4 <= U10_in;
    U5 <= U11_in;
    U6 <= U12_in;
    U7 <= U14_in;
    U8 <= U15_in;
    U9 <= U16_in;
  
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
  end else if (counter == `COUNTER_WIDTH'b1011) begin
  
    U1 <= U7_in;
    U2 <= U8_in;
    U3 <= `WIDTH'b0;
    U4 <= U11_in;
    U5 <= U12_in;
    U6 <= `WIDTH'b0;
    U7 <= U15_in;
    U8 <= U16_in;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y7;
    Y2 <= Y8;
    Y3 <= `WIDTH'b0;
    Y4 <= Y11;
    Y5 <= Y12;
    Y6 <= `WIDTH'b0;
    Y7 <= Y15;
    Y8 <= Y16;
    Y9 <= `WIDTH'b0;
    
    Y12_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1100) begin
  
    U1 <= `WIDTH'b0;
    U2 <= U9_in;
    U3 <= U10_in;
    U4 <= `WIDTH'b0;
    U5 <= U13_in;
    U6 <= U14_in;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;
    
    Y1 <= `WIDTH'b0;
    Y2 <= Y9;
    Y3 <= Y10;
    Y4 <= `WIDTH'b0;
    Y5 <= Y13;
    Y6 <= Y14;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
    Y13_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1101) begin
  
    U1 <= U9_in;
    U2 <= U10_in;
    U3 <= U11_in;
    U4 <= U13_in;
    U5 <= U14_in;
    U6 <= U15_in;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y9;
    Y2 <= Y10;
    Y3 <= Y11;
    Y4 <= Y13;
    Y5 <= Y14;
    Y6 <= Y15;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
    
    Y14_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1110) begin
  
    U1 <= U10_in;
    U2 <= U11_in;
    U3 <= U12_in;
    U4 <= U14_in;
    U5 <= U15_in;
    U6 <= U16_in;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y10;
    Y2 <= Y11;
    Y3 <= Y12;
    Y4 <= Y14;
    Y5 <= Y15;
    Y6 <= Y16;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
    Y15_next <= onebyoneout;
  end else if (counter == `COUNTER_WIDTH'b1111) begin
  
    U1 <= U11_in;
    U2 <= U12_in;
    U3 <= `WIDTH'b0;
    U4 <= U15_in;
    U5 <= U16_in;
    U6 <= `WIDTH'b0;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;

    Y1 <= Y11;
    Y2 <= Y12;
    Y3 <= `WIDTH'b0;
    Y4 <= Y15;
    Y5 <= Y16;
    Y6 <= `WIDTH'b0;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
    
    Y16_next <= onebyoneout;
  end
  if (counter == `COUNTER_WIDTH'b1111) begin
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
  counter <= counter + `COUNTER_WIDTH'b1;
end




onebyone u1(
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

.Y1(Y1[`WIDTH - 1:0]),
.Y2(Y2[`WIDTH - 1:0]),
.Y3(Y3[`WIDTH - 1:0]),
.Y4(Y4[`WIDTH - 1:0]),
.Y5(Y5[`WIDTH - 1:0]),
.Y6(Y6[`WIDTH - 1:0]),
.Y7(Y7[`WIDTH - 1:0]),
.Y8(Y8[`WIDTH - 1:0]),
.Y9(Y9[`WIDTH - 1:0]),

.I(I[`WIDTH - 1:0]),

.out(onebyoneout[`WIDTH - 1:0])

);

endmodule
