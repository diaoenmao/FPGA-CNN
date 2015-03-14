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
	reg signed [`WIDTH - 1:0] Y1_in = `WIDTH'b0, Y2_in = `WIDTH'b0, Y3_in = `WIDTH'b0, Y4_in = `WIDTH'b0, Y5_in = `WIDTH'b0, Y6_in = `WIDTH'b0, Y7_in = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y8_in = `WIDTH'b0, Y9_in = `WIDTH'b0, Y10_in = `WIDTH'b0, Y11_in = `WIDTH'b0, Y12_in = `WIDTH'b0, Y13_in = `WIDTH'b0, Y14_in = `WIDTH'b0, Y15_in = `WIDTH'b0, Y16_in = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y1, Y2 , Y3, Y4, Y5, Y6, Y7, Y8, Y9;
	reg [`COUNTER_WIDTH - 1:0] counter = `COUNTER_WIDTH'b0;
	wire signed [`WIDTH - 1:0] onebyoneout;
	reg signed [`WIDTH - 1:0] Y1_next = `WIDTH'b0, Y2_next = `WIDTH'b0, Y3_next = `WIDTH'b0, Y4_next = `WIDTH'b0, Y5_next = `WIDTH'b0, Y6_next = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y7_next = `WIDTH'b0, Y8_next = `WIDTH'b0, Y9_next = `WIDTH'b0, Y10_next = `WIDTH'b0, Y11_next = `WIDTH'b0, Y12_next = `WIDTH'b0, Y13_next = `WIDTH'b0;
	reg signed [`WIDTH - 1:0] Y14_next = `WIDTH'b0, Y15_next = `WIDTH'b0, Y16_next = `WIDTH'b0;
	output wire signed [`WIDTH - 1:0] Y1_out, Y2_out, Y3_out, Y4_out, Y5_out, Y6_out, Y7_out, Y8_out, Y9_out, Y10_out, Y11_out, Y12_out, Y13_out, Y14_out, Y15_out, Y16_out;
    reg initial_flag = 1'b1;
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
	if (initial_flag == 1'b0) begin
		Y16_next = onebyoneout;

		Y1_in = Y1_next;
		Y2_in = Y2_next;
		Y3_in = Y3_next;
		Y4_in = Y4_next;
		Y5_in = Y5_next;
		Y6_in = Y6_next;
		Y7_in = Y7_next;
		Y8_in = Y8_next;
		Y9_in = Y9_next;
		Y10_in = Y10_next;
		Y11_in = Y11_next;
		Y12_in = Y12_next;
		Y13_in = Y13_next;
		Y14_in = Y14_next;
		Y15_in = Y15_next;
		Y16_in = Y16_next;  
	end else begin
		initial_flag = 1'b0;
	end
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
    Y5 <= Y1_in;
    Y6 <= Y2_in;
    Y7 <= `WIDTH'b0;
    Y8 <= Y5_in;
    Y9 <= Y6_in;   

    
  end else if (counter == `COUNTER_WIDTH'b0001) begin
    
    Y1_next <= onebyoneout;
    
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
    Y4 <= Y1_in;
    Y5 <= Y2_in;
    Y6 <= Y3_in;
    Y7 <= Y5_in;
    Y8 <= Y6_in;
    Y9 <= Y7_in; 
           

  end else if (counter == `COUNTER_WIDTH'b0010) begin
  
    Y2_next <= onebyoneout; 
      
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
    Y4 <= Y2_in;
    Y5 <= Y3_in;
    Y6 <= Y4_in;
    Y7 <= Y6_in;
    Y8 <= Y7_in;
    Y9 <= Y8_in;
      

  end else if (counter == `COUNTER_WIDTH'b0011) begin
  
    Y3_next <= onebyoneout;
    
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
    Y4 <= Y3_in;
    Y5 <= Y4_in;
    Y6 <= `WIDTH'b0;
    Y7 <= Y7_in;
    Y8 <= Y8_in;
    Y9 <= `WIDTH'b0;
       

  end else if (counter == `COUNTER_WIDTH'b0100) begin
  
    Y4_next <= onebyoneout;
    
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
    Y2 <= Y1_in;
    Y3 <= Y2_in;
    Y4 <= `WIDTH'b0;
    Y5 <= Y5_in;
    Y6 <= Y6_in;
    Y7 <= `WIDTH'b0;
    Y8 <= Y9_in;
    Y9 <= Y10_in;
    
    
  end else if (counter == `COUNTER_WIDTH'b0101) begin
  
    Y5_next <= onebyoneout;  
  
    U1 <= U1_in;
    U2 <= U2_in;
    U3 <= U3_in;
    U4 <= U5_in;
    U5 <= U6_in;
    U6 <= U7_in;
    U7 <= U9_in;
    U8 <= U10_in;
    U9 <= U11_in;
    
    Y1 <= Y1_in;
    Y2 <= Y2_in;
    Y3 <= Y3_in;
    Y4 <= Y5_in;
    Y5 <= Y6_in;
    Y6 <= Y7_in;
    Y7 <= Y9_in;
    Y8 <= Y10_in;
    Y9 <= Y11_in;
    

  end else if (counter == `COUNTER_WIDTH'b0110) begin
  
    Y6_next <= onebyoneout;
    
    U1 <= U2_in;
    U2 <= U3_in;
    U3 <= U4_in;
    U4 <= U6_in;
    U5 <= U7_in;
    U6 <= U8_in;
    U7 <= U10_in;
    U8 <= U11_in;
    U9 <= U12_in;
    
    Y1 <= Y2_in;
    Y2 <= Y3_in;
    Y3 <= Y4_in;
    Y4 <= Y6_in;
    Y5 <= Y7_in;
    Y6 <= Y8_in;
    Y7 <= Y10_in;
    Y8 <= Y11_in;
    Y9 <= Y12_in;
    
    
  end else if (counter == `COUNTER_WIDTH'b0111) begin

    Y7_next <= onebyoneout;
    
    U1 <= U3_in;
    U2 <= U4_in;
    U3 <= `WIDTH'b0;
    U4 <= U7_in;
    U5 <= U8_in;
    U6 <= `WIDTH'b0;
    U7 <= U11_in;
    U8 <= U12_in;
    U9 <= `WIDTH'b0;

    Y1 <= Y3_in;
    Y2 <= Y4_in;
    Y3 <= `WIDTH'b0;
    Y4 <= Y7_in;
    Y5 <= Y8_in;
    Y6 <= `WIDTH'b0;
    Y7 <= Y11_in;
    Y8 <= Y12_in;
    Y9 <= `WIDTH'b0;
    
    

  end else if (counter == `COUNTER_WIDTH'b1000) begin
 
    Y8_next <= onebyoneout;
     
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
    Y2 <= Y5_in;
    Y3 <= Y6_in;
    Y4 <= `WIDTH'b0;
    Y5 <= Y9_in;
    Y6 <= Y10_in;
    Y7 <= `WIDTH'b0;
    Y8 <= Y13_in;
    Y9 <= Y14_in;
    
    
 
  end else if (counter == `COUNTER_WIDTH'b1001) begin

    Y9_next <= onebyoneout;
     
    U1 <= U5_in;
    U2 <= U6_in;
    U3 <= U7_in;
    U4 <= U9_in;
    U5 <= U10_in;
    U6 <= U11_in;
    U7 <= U13_in;
    U8 <= U14_in;
    U9 <= U15_in;
 
    Y1 <= Y5_in;
    Y2 <= Y6_in;
    Y3 <= Y7_in;
    Y4 <= Y9_in;
    Y5 <= Y10_in;
    Y6 <= Y11_in;
    Y7 <= Y13_in;
    Y8 <= Y14_in;
    Y9 <= Y15_in;
    

  end else if (counter == `COUNTER_WIDTH'b1010) begin

    Y10_next <= onebyoneout;
      
    U1 <= U6_in;
    U2 <= U7_in;
    U3 <= U8_in;
    U4 <= U10_in;
    U5 <= U11_in;
    U6 <= U12_in;
    U7 <= U14_in;
    U8 <= U15_in;
    U9 <= U16_in;
  
    Y1 <= Y6_in;
    Y2 <= Y7_in;
    Y3 <= Y8_in;
    Y4 <= Y10_in;
    Y5 <= Y11_in;
    Y6 <= Y12_in;
    Y7 <= Y14_in;
    Y8 <= Y15_in;
    Y9 <= Y16_in;
    
    

  end else if (counter == `COUNTER_WIDTH'b1011) begin

    Y11_next <= onebyoneout;
      
    U1 <= U7_in;
    U2 <= U8_in;
    U3 <= `WIDTH'b0;
    U4 <= U11_in;
    U5 <= U12_in;
    U6 <= `WIDTH'b0;
    U7 <= U15_in;
    U8 <= U16_in;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y7_in;
    Y2 <= Y8_in;
    Y3 <= `WIDTH'b0;
    Y4 <= Y11_in;
    Y5 <= Y12_in;
    Y6 <= `WIDTH'b0;
    Y7 <= Y15_in;
    Y8 <= Y16_in;
    Y9 <= `WIDTH'b0;
    

  end else if (counter == `COUNTER_WIDTH'b1100) begin

    Y12_next <= onebyoneout;
      
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
    Y2 <= Y9_in;
    Y3 <= Y10_in;
    Y4 <= `WIDTH'b0;
    Y5 <= Y13_in;
    Y6 <= Y14_in;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    

  end else if (counter == `COUNTER_WIDTH'b1101) begin

    Y13_next <= onebyoneout;
      
    U1 <= U9_in;
    U2 <= U10_in;
    U3 <= U11_in;
    U4 <= U13_in;
    U5 <= U14_in;
    U6 <= U15_in;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y9_in;
    Y2 <= Y10_in;
    Y3 <= Y11_in;
    Y4 <= Y13_in;
    Y5 <= Y14_in;
    Y6 <= Y15_in;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
    

  end else if (counter == `COUNTER_WIDTH'b1110) begin
 
    Y14_next <= onebyoneout;
      
    U1 <= U10_in;
    U2 <= U11_in;
    U3 <= U12_in;
    U4 <= U14_in;
    U5 <= U15_in;
    U6 <= U16_in;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;
    
    Y1 <= Y10_in;
    Y2 <= Y11_in;
    Y3 <= Y12_in;
    Y4 <= Y14_in;
    Y5 <= Y15_in;
    Y6 <= Y16_in;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    

  end else if (counter == `COUNTER_WIDTH'b1111) begin

    Y15_next <= onebyoneout;
      
    U1 <= U11_in;
    U2 <= U12_in;
    U3 <= `WIDTH'b0;
    U4 <= U15_in;
    U5 <= U16_in;
    U6 <= `WIDTH'b0;
    U7 <= `WIDTH'b0;
    U8 <= `WIDTH'b0;
    U9 <= `WIDTH'b0;

    Y1 <= Y11_in;
    Y2 <= Y12_in;
    Y3 <= `WIDTH'b0;
    Y4 <= Y15_in;
    Y5 <= Y16_in;
    Y6 <= `WIDTH'b0;
    Y7 <= `WIDTH'b0;
    Y8 <= `WIDTH'b0;
    Y9 <= `WIDTH'b0;
    
  end
  counter = counter + `COUNTER_WIDTH'b1;
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
