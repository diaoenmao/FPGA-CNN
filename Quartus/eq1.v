module eq1 (
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
	wire signed [16:0] outY;
	wire signed [16:0] outU;
	input wire signed [7:0] I;
	output wire signed [16:0] out;
	
	assign outY = (A1 * Y1)+ (A2 * Y2) + (A3 * Y3) + (A4 * Y4) + (A5 * Y5) + (A6 * Y6) + (A7 * Y7) + (A8 * Y8) + (A9 * Y9);
	assign outU = (B1 * U1)+ (B2 * U2) + (B3 * U3) + (B4 * U4) + (B5 * U5) + (B6 * U6) + (B7 * U7) + (B8 * U8) + (B9 * U9);
	assign out = outY + outU + I;
endmodule
