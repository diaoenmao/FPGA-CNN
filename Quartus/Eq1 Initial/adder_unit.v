
module adder_unit#(parameter WIDTH=9)
(//input declarations

input signed[WIDTH-1:0] A_in,input signed[WIDTH-1:0] B_in,

//output declarations
output reg signed[WIDTH-1:0] C_out);

always@(*)
begin
	if(A_in[WIDTH-1]^B_in[WIDTH-1]==0)
		begin
		C_out[WIDTH-2:0]<= B_in[WIDTH-2:0] + A_in[WIDTH-2:0];
		C_out[WIDTH-1]<= A_in[WIDTH-1];
		end
	if(A_in[WIDTH-1]^B_in[WIDTH-1]==1)
	//if({A_in[WIDTH-1]B_in[WIDTH-1]}==01)
		begin
		C_out[WIDTH-2:0] <= (B_in[WIDTH-2:0]>A_in[WIDTH-2:0])?(B_in[WIDTH-2:0]-A_in[WIDTH-2:0]):(A_in[WIDTH-2:0]-B_in[WIDTH-2:0]);
		C_out[WIDTH-1] <= (B_in[WIDTH-2:0]>A_in[WIDTH-2:0])?(B_in[WIDTH-1]):(A_in[WIDTH-1]);
		end
end
endmodule