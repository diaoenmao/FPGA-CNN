`define WIDTH 9
module eq1oneunit(
clk,

A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1, U2, U3, U4, U5, U6, U7, U8, U9,

Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9,
	
I,

fin_flag,
counter_flag,

out
);
	input wire clk;
	input wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire signed [`WIDTH - 1:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	input wire signed [2 * `WIDTH - 1:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9;
	input wire signed [`WIDTH - 1:0] I;
	output wire fin_flag;
	output wire counter_flag;	
	output reg signed [2 * `WIDTH - 1:0] out = 0;
	reg signed [2 * `WIDTH - 1:0] outY;
	
	reg signed [2 * `WIDTH - 1:0] adda;
	reg signed [2 * `WIDTH - 1:0] addb;
	wire signed [2 * `WIDTH - 1:0] data_out;

	reg signed [`WIDTH - 1 : 0] dataa;
	reg signed [2 * `WIDTH - 1:0] datab;
	wire signed [2 * `WIDTH - 1:0] mult_out;
	reg signed [2 * `WIDTH - 1:0] sum = {(2 * `WIDTH){1'b0}};
	wire signed [2 * `WIDTH - 1:0] add_out;
	
	reg flag = 1'b1;
	reg c_flag = 1'b0;
	reg [4:0] counter = 5'b11111;
	//assign outY = (A1 * Y1)+ (A2 * Y2) + (A3 * Y3) + (A4 * Y4) + (A5 * Y5) + (A6 * Y6) + (A7 * Y7) + (A8 * Y8) + (A9 * Y9);
	//assign outU = (B1 * U1)+ (B2 * U2) + (B3 * U3) + (B4 * U4) + (B5 * U5) + (B6 * U6) + (B7 * U7) + (B8 * U8) + (B9 * U9);
assign fin_flag = flag;
assign counter_flag = c_flag;
always @ (posedge clk)
begin
	if (counter == 5'b11111) begin 
		// let Y value be assigned
		// this clock cycle is idle
		    out = data_out;
		    c_flag = 1'b0;
	end else if (counter == 5'b00000) begin
			flag <= 1'b0;
			dataa <= A1;			
			datab <= Y1;
			sum <= {(2 * `WIDTH){1'b0}};
	end else if (counter == 5'b00001) begin
			dataa <= A2;			
			datab <= Y2;
			sum <= add_out;
	end else if (counter == 5'b00010) begin
			dataa <= A3;			
			datab <= Y3;
			sum <= add_out;
	end else if (counter == 5'b00011) begin
			dataa <= A4;			
			datab <= Y4;
			sum <= add_out;
	end else if (counter == 5'b00100) begin
			dataa <= A5;			
			datab <= Y5;
			sum <= add_out;
	end else if (counter == 5'b00101) begin
			dataa <= A6;			
			datab <= Y6;
			sum <= add_out;
	end else if (counter == 5'b00110) begin
			dataa <= A7;			
			datab <= Y7;
			sum <= add_out;
	end else if (counter == 5'b00111) begin
			dataa <= A8;			
			datab <= Y8;
			sum <= add_out;
	end else if (counter == 5'b01000) begin
			dataa <= A9;			
			datab <= Y9;
			sum <= add_out;
	end else if (counter == 5'b01001) begin
			outY <= add_out;
			dataa <= B1;			
			datab <= U1;
			sum <= {(2 * `WIDTH){1'b0}};
	end else if (counter == 5'b01010) begin
			dataa <= B2;			
			datab <= U2;	
			sum <= add_out;
	end else if (counter == 5'b01011) begin
			dataa <= B3;			
			datab <= U3;
			sum <= add_out;
	end else if (counter == 5'b01100) begin
			dataa <= B4;			
			datab <= U4;
			sum <= add_out;
	end else if (counter == 5'b01101) begin
			dataa <= B5;			
			datab <= U5;
			sum <= add_out;
	end else if (counter == 5'b01110) begin
			dataa <= B6;			
			datab <= U6;
			sum <= add_out;
	end else if (counter == 5'b01111) begin
			dataa <= B7;			
			datab <= U7;
			sum <= add_out;
	end else if (counter == 5'b10000) begin
			dataa <= B8;			
			datab <= U8;
			sum <= add_out;
	end else if (counter == 5'b10001) begin
			dataa <= B9;			
			datab <= U9;
			sum <= add_out;
	end else if (counter == 5'b10010) begin
			adda <= outY;
			addb <= add_out;
	end else if (counter == 5'b10011) begin
			adda <= I;
			addb <= data_out;
			c_flag <= 1'b1;
			flag <= 1'b1;
			counter = 5'b11110;
	end
	counter = counter + 5'b1;
end

multiplier u1(
.dataa(dataa[`WIDTH - 1:0]),
.datab(datab[2 * `WIDTH - 1:0]),
.dataout(mult_out[2 * `WIDTH - 1:0])
);

adder u2(
.dataa(mult_out[2 * `WIDTH - 1:0]),
.datab(sum[2 * `WIDTH - 1:0]),
.dataout(add_out[2 * `WIDTH - 1:0])
);

adder u3(
.dataa(adda[2 * `WIDTH - 1:0]),
.datab(addb[2 * `WIDTH - 1:0]),
.dataout(data_out[2 * `WIDTH - 1:0])
);

endmodule