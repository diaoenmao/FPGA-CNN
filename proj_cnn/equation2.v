`define WIDTH 9
module equation2 (
dX,
Initial_X,
out
  );
	input wire signed [`WIDTH - 1:0] dX;
	input wire signed [`WIDTH - 1:0] Initial_X;
	wire signed [`WIDTH - 1:0] X;
	wire signed [`WIDTH - 1:0] Xplus1;
	wire signed [`WIDTH - 1:0] Xminus1;
	wire signed [`WIDTH - 1:0] Xplus;
	wire signed [`WIDTH - 1:0] Xminus;
	output wire signed [`WIDTH - 1:0] out;
	
	assign X = dX + Initial_X;
	assign Xplus1 = X + {{(`WIDTH-1){1'b0}}, 1'b1};
	assign Xminus1 = X - {{(`WIDTH-1){1'b0}}, 1'b1};	
	assign Xplus = (Xplus1[`WIDTH - 1])?(~Xplus1+{{(`WIDTH-1){1'b0}}, 1'b1}):Xplus1;
	assign Xminus =  (Xminus1[`WIDTH - 1])?(~Xminus1+{{(`WIDTH-1){1'b0}}, 1'b1}):Xminus1;
	assign out = (Xplus - Xminus) >>> {{(`WIDTH-1){1'b0}}, 1'b1};
endmodule

