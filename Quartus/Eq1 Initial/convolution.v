`define COUNTER_WIDTH 4
module convolution#(parameter WIDTH = 9)
(
	input clk,
	//input reg [3:0]counter,
	input signed [WIDTH-1:0] a0_in,input signed [WIDTH-1:0] a1_in,input signed [WIDTH-1:0] a2_in,input signed [WIDTH-1:0] a3_in,
	input signed [WIDTH-1:0] a4_in,input signed [WIDTH-1:0] a5_in,input signed [WIDTH-1:0] a6_in,input signed [WIDTH-1:0] a7_in,input signed [WIDTH-1:0] a8_in,
	input signed [WIDTH-1:0] y0_in,input signed [WIDTH-1:0] y1_in,input signed [WIDTH-1:0] y2_in,input signed [WIDTH-1:0] y3_in,
	input signed [WIDTH-1:0] y4_in,input signed [WIDTH-1:0] y5_in,input signed [WIDTH-1:0] y6_in,input signed [WIDTH-1:0] y7_in,input signed [WIDTH-1:0] y8_in,
	
	output wire signed [WIDTH-1:0]outreg1
);

reg signed[WIDTH-1:0] a_reg;
reg signed[WIDTH-1:0] y_reg;
wire signed[2*WIDTH-1:0]mult1_out;
//wire[2*WIDTH-1:0] outreg1;
reg signed[2*WIDTH-1:0]multi_out;
reg [3:0]clk_counter;
reg signed[WIDTH-1:0] sum1;


initial 
begin 
clk_counter=0;
sum1=0;
multi_out=0;
end
//assign mult1_out=0;
multiplier_unit mul1(a_reg,y_reg,mult1_out);
adder_unit add1({mult1_out[2*WIDTH-1],mult1_out[2*WIDTH-11:0]},sum1,outreg1);
always @ (posedge clk)
begin

	case(clk_counter)
		0:begin
			a_reg <= a0_in;			
			y_reg <= y0_in;
			//multi_out<=0;
			clk_counter<=clk_counter+1;
			end
		1:begin
			a_reg <= a1_in;//mult1 computed
			y_reg <= y1_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		2:begin
			a_reg <= a2_in;//mult1 computed
			y_reg <= y2_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		3:begin
			a_reg <= a3_in;//mult1 computed
			y_reg <= y3_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		4:begin
			a_reg <= a4_in;//mult1 computed
			y_reg <= y4_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		5:begin
			a_reg <= a5_in;//mult1 computed
			y_reg <= y5_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		6:begin
			a_reg <= a6_in;//mult1 computed
			y_reg <= y6_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		7:begin
			a_reg <= a7_in;//mult1 computed
			y_reg <= y7_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			end
		8:begin
			a_reg <= a8_in;//mult1 computed
			y_reg <= y8_in;
			//multi_out<=mult1_out;
			sum1<=outreg1;
			clk_counter<=clk_counter+1;
			
			end
	endcase

end




endmodule

