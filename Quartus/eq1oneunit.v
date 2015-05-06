`define WIDTH 9
module eq1oneunit(
clk,

A1, A2, A3, A4, A5, A6, A7, A8, A9,
    
B1, B2, B3, B4, B5, B6, B7, B8, B9,
    
U1, U2, U3, U4, U5, U6, U7, U8, U9,

Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9,
	
I,

fin_flag,

out
);
	input wire clk;
	input wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;
	input wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;
	input wire signed [`WIDTH - 1:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;
	input wire signed [2 * `WIDTH - 1:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y9;
	reg signed [2 * `WIDTH - 1:0] outY;
	input wire signed [`WIDTH - 1:0] I;
	output wire fin_flag;	
	output wire signed [2 * `WIDTH - 1:0] out;
	reg signed [`WIDTH - 1 : 0] dataa;
	reg signed [2 * `WIDTH - 1 : 0] datab;
	reg signed [2 * `WIDTH - 1 : 0] mult_out;
	wire signed [2 * `WIDTH - 1 : 0] mult_out_wire;
	reg signed [2 * `WIDTH - 1 : 0] sum;
	wire signed [2 * `WIDTH - 1 : 0] add_out;
	reg flag = 1'b0;
	reg [4:0] counter;
	//assign outY = (A1 * Y1)+ (A2 * Y2) + (A3 * Y3) + (A4 * Y4) + (A5 * Y5) + (A6 * Y6) + (A7 * Y7) + (A8 * Y8) + (A9 * Y9);
	//assign outU = (B1 * U1)+ (B2 * U2) + (B3 * U3) + (B4 * U4) + (B5 * U5) + (B6 * U6) + (B7 * U7) + (B8 * U8) + (B9 * U9);

assign out = (add_out)?(flag == 1):{(2 * `WIDTH){1'b0}};
assign fin_flag = flag;
always @ (posedge clk)
begin
	if (counter != 18 || counter != 19) begin
		mult_out <= mult_out_wire;
	end
	if (counter == 0) begin  
			dataa <= A1;			
			datab <= Y1;
			sum <= 0;
			flag <= 0;
	end else if (counter == 1) begin
			dataa <= A2;			
			datab <= Y2;
			sum <= add_out;
	end else if (counter == 2) begin
			dataa <= A3;			
			datab <= Y3;
			sum <= add_out;
	end else if (counter == 3) begin
			dataa <= A4;			
			datab <= Y4;
			sum <= add_out;
	end else if (counter == 4) begin
			dataa <= A5;			
			datab <= Y5;
			sum <= add_out;
	end else if (counter == 5) begin
			dataa <= A6;			
			datab <= Y6;
			sum <= add_out;
	end else if (counter == 6) begin
			dataa <= A7;			
			datab <= Y7;
			sum <= add_out;
	end else if (counter == 7) begin
			dataa <= A8;			
			datab <= Y8;
			sum <= add_out;
	end else if (counter == 8) begin
			dataa <= A9;			
			datab <= Y9;
			sum <= add_out;
	end else if (counter == 9) begin
			outY <= add_out;
			dataa <= B1;			
			datab <= U1;
			sum <= 0;
	end else if (counter == 10) begin
			dataa <= B2;			
			datab <= U2;	
			sum <= add_out;
	end else if (counter == 11) begin
			dataa <= B3;			
			datab <= U3;
			sum <= add_out;
	end else if (counter == 12) begin
			dataa <= B4;			
			datab <= U4;
			sum <= add_out;
	end else if (counter == 13) begin
			dataa <= B5;			
			datab <= U5;
			sum <= add_out;
	end else if (counter == 14) begin
			dataa <= B6;			
			datab <= U6;
			sum <= add_out;
	end else if (counter == 15) begin
			dataa <= B7;			
			datab <= U7;
			sum <= add_out;
	end else if (counter == 16) begin
			dataa <= B8;			
			datab <= U8;
			sum <= add_out;
	end else if (counter == 17) begin
			dataa <= B9;			
			datab <= U9;
			sum <= add_out;
	end else if (counter == 18) begin
			mult_out <= outY;
			sum <= add_out;
	end else if (counter == 19) begin
			mult_out <= I;
			sum <= add_out;
			flag <= 1;
	end else begin
		counter <= 0;
	end
	counter <= counter + 5'b1;
end

multiplier u1(
.dataa(dataa[`WIDTH - 1:0]),
.datab(datab[2 * `WIDTH - 1:0]),
.dataout(mult_out_wire[2 * `WIDTH - 1:0])
);

adder u2(
.dataa(mult_out[2 * `WIDTH - 1:0]),
.datab(sum[2 * `WIDTH - 1:0]),
.dataout(add_out[2 * `WIDTH - 1:0])
);

endmodule