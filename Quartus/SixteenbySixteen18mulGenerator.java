import java.util.*;
import java.lang.Math;
/*
* Enmao Diao
*/
// please run this one http://www.compilejava.net/ and copy and paste the output on console
public class SixteenbySixteen18mulGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		int i = 0;
		int a = 0;
		int size = 16; // change this if need
		Integer[] vertical_left = new Integer[size-1];
		Integer[] vertical_right = new Integer[size-1];
    		for (i = 0; i < size-1; i++) {
        		vertical_left[i] = (i+1)*size+1;
    		}
    		for (i = 0; i < size-1; i++) {
        		vertical_right[i] = (i+2)*size;
    		}
		System.out.println("`define WIDTH 9"
		+ "\n`define COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN " + (int)(Math.log(size*size) / Math.log(2))
		+ "\nmodule sixteenbysixteen (\n");			
		for(a =1;a<=size*size;a+=16) {
			System.out.println("U"+a+"_in, U"+(a+1)+"_in, U"+(a+2)+"_in, U"+(a+3)
			+ "_in, U"+(a+4)+"_in, U"+(a+5)+"_in, U"+(a+6)+"_in, U"+(a+7)+"_in, U"+(a+8)
			+ "_in, U"+(a+9)+"_in, U"+(a+10)+"_in, U"+(a+11)+"_in, U"+(a+12)+"_in, U"+(a+13)
			+ "_in, U"+(a+14)+"_in, U"+(a+15)+"_in,");
		}
		System.out.println("\n\n");
		for(a =1;a<=size*size;a+=16) {
			System.out.println("Y"+a+"_out, Y"+(a+1)+"_out, Y"+(a+2)+"_out, Y"+(a+3)
			+ "_out, Y"+(a+4)+"_out, Y"+(a+5)+"_out, Y"+(a+6)+"_out, Y"+(a+7)+"_out, Y"+(a+8)
			+ "_out, Y"+(a+9)+"_out, Y"+(a+10)+"_out, Y"+(a+11)+"_out, Y"+(a+12)+"_out, Y"+(a+13)
			+ "_out, Y"+(a+14)+"_out, Y"+(a+15)+"_out,");
		}

		System.out.println("\nA1, A2, A3, A4, A5, A6, A7, A8, A9,\n\nB1, B2, B3, B4, B5, B6, B7, B8, B9,"
		+ "\n\nI,\n\nInitial_X_in,\n\nclk\n	  );");
		System.out.println("	input wire clk;"
		+ "\n	input wire signed [`WIDTH - 1:0] I;"
		+ "\n	input wire signed [2 * `WIDTH - 1:0] Initial_X_in;"
		+ "\n	wire signed [2 * `WIDTH - 1:0] X_onebyoneout;"
		+ "\n	wire signed [2 * `WIDTH - 1:0] Y_onebyoneout;"
		+ "\n	reg signed [`WIDTH - 1:0] U1, U2, U3, U4, U5, U6, U7, U8, U9;"
		+ "\n	reg signed [2 * `WIDTH - 1:0] Y1, Y2 , Y3, Y4, Y5, Y6, Y7, Y8, Y9;"
		+ "\n	reg [`COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN - 1:0] counter = `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b0;"
		+ "\n	reg initial_flag = 1'b1;"
		+ "\n	reg signed [2 * `WIDTH - 1:0] X;");
		System.out.println("\n\n	input wire signed [`WIDTH - 1:0] A1, A2, A3, A4, A5, A6, A7, A8, A9;");			
		System.out.println("	input wire signed [`WIDTH - 1:0] B1, B2, B3, B4, B5, B6, B7, B8, B9;\n\n");			
		//be sure to manually remove the extra terms at the tail				
		for(a=1;a<=size*size;a+=16) {
			System.out.println("input wire signed [`WIDTH - 1:0] U"+a+"_in, U"+(a+1)+"_in, U"+(a+2)+"_in, U"+(a+3)
			+ "_in, U"+(a+4)+"_in, U"+(a+5)+"_in, U"+(a+6)+"_in, U"+(a+7)+"_in, U"+(a+8)
			+ "_in, U"+(a+9)+"_in, U"+(a+10)+"_in, U"+(a+11)+"_in, U"+(a+12)+"_in, U"+(a+13)
			+ "_in, U"+(a+14)+"_in, U"+(a+15)+"_in;");
		}
		System.out.println("\n\n");
			
		//be sure to manually remove the extra terms at the tail				
		for(a=1;a<=size*size;a+=16) {
			System.out.println("reg signed [2 * `WIDTH - 1:0] "
			+ "X"+a+"_in = 0, X"+(a+1)+"_in = 0, X"+(a+2)+"_in = 0,"
			+ "X"+(a+3)+"_in = 0, X"+(a+4)+"_in = 0, X"+(a+5)+"_in = 0,"
			+ "X"+(a+6)+"_in = 0, X"+(a+7)+"_in = 0, X"+(a+8)+"_in = 0,"
			+ "X"+(a+9)+"_in = 0, X"+(a+10)+"_in = 0, X"+(a+11)+"_in = 0,"
			+ "X"+(a+12)+"_in = 0, X"+(a+13)+"_in = 0,"
			+ "X"+(a+14)+"_in = 0, X"+(a+15)+"_in = 0;");
		}
		System.out.println("\n\n");

		//be sure to manually remove the extra terms at the tail				
		for(a =1;a<=size*size;a+=16) {
			System.out.println("reg signed [2 * `WIDTH - 1:0] "
			+ "X"+a+"_next = 0, X"+(a+1)+"_next = 0, X"+(a+2)+"_next = 0,"
			+ "X"+(a+3)+"_next = 0, X"+(a+4)+"_next = 0, X"+(a+5)+"_next = 0,"
			+ "X"+(a+6)+"_next = 0, X"+(a+7)+"_next = 0, X"+(a+8)+"_next = 0,"
			+ "X"+(a+9)+"_next = 0, X"+(a+10)+"_next = 0, X"+(a+11)+"_next = 0,"
			+ "X"+(a+12)+"_next = 0, X"+(a+13)+"_next = 0,"
			+ "X"+(a+14)+"_next = 0, X"+(a+15)+"_next = 0;");
		}
		System.out.println("\n\n");
			
		//be sure to manually remove the extra terms at the tail				
		for(a =1;a<=size*size;a+=16) {
			System.out.println("reg signed [2 * `WIDTH - 1:0] "
			+ "Y"+a+"_in = 0, Y"+(a+1)+"_in = 0, Y"+(a+2)+"_in = 0,"
			+ "Y"+(a+3)+"_in = 0, Y"+(a+4)+"_in = 0, Y"+(a+5)+"_in = 0,"
			+ "Y"+(a+6)+"_in = 0, Y"+(a+7)+"_in = 0, Y"+(a+8)+"_in = 0,"
			+ "Y"+(a+9)+"_in = 0, Y"+(a+10)+"_in = 0, Y"+(a+11)+"_in = 0,"
			+ "Y"+(a+12)+"_in = 0, Y"+(a+13)+"_in = 0,"
			+ "Y"+(a+14)+"_in = 0, Y"+(a+15)+"_in = 0;");
		}
		System.out.println("\n\n");
		
		//be sure to manually remove the extra terms at the tail				
		for(a =1;a<=size*size;a+=16) {
			System.out.println("reg signed [2 * `WIDTH - 1:0] "
			+ "Y"+a+"_next = 0, Y"+(a+1)+"_next = 0, Y"+(a+2)+"_next = 0,"
			+ "Y"+(a+3)+"_next = 0, Y"+(a+4)+"_next = 0, Y"+(a+5)+"_next = 0,"
			+ "Y"+(a+6)+"_next = 0, Y"+(a+7)+"_next = 0, Y"+(a+8)+"_next = 0,"
			+ "Y"+(a+9)+"_next = 0, Y"+(a+10)+"_next = 0, Y"+(a+11)+"_next = 0,"
			+ "Y"+(a+12)+"_next = 0, Y"+(a+13)+"_next = 0,"
			+ "Y"+(a+14)+"_next = 0, Y"+(a+15)+"_next = 0;");
		}
		System.out.println("\n\n");
	
		//be sure to manually remove the extra terms at the tail				
		for(a=1;a<=size*size;a+=16) {
			System.out.println("output wire signed [2 * `WIDTH - 1:0] Y"+a+"_out, Y"+(a+1)+"_out, Y"+(a+2)+"_out, Y"+(a+3)
			+ "_out, Y"+(a+4)+"_out, Y"+(a+5)+"_out, Y"+(a+6)+"_out, Y"+(a+7)+"_out, Y"+(a+8)
			+ "_out, Y"+(a+9)+"_out, Y"+(a+10)+"_out, Y"+(a+11)+"_out, Y"+(a+12)+"_out, Y"+(a+13)
			+ "_out, Y"+(a+14)+"_out, Y"+(a+15)+"_out;");
		}
		System.out.println("\n\n");	
		//be sure to manually remove the extra terms at the tail		
		for(a=1;a<=size*size;a+=8) {
			System.out.println("assign Y"+a+"_out = Y"+a+"_next;"
			+ "assign Y"+(a+1)+"_out = Y"+(a+1)+"_next;"
			+ "assign Y"+(a+2)+"_out = Y"+(a+2)+"_next;"
			+ "assign Y"+(a+3)+"_out = Y"+(a+3)+"_next;"
			+ "assign Y"+(a+4)+"_out = Y"+(a+4)+"_next;"
			+ "assign Y"+(a+5)+"_out = Y"+(a+5)+"_next;"
			+ "assign Y"+(a+6)+"_out = Y"+(a+6)+"_next;"
			+ "assign Y"+(a+7)+"_out = Y"+(a+7)+"_next;");				
		}    	
		System.out.println("\n\n\n\n");		
		for(i=1;i<=size*size;i++) {
			// four corners
			if(i==1) { // top left
				System.out.println("always  @ (posedge clk)\nbegin"
				+ "\n  if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n	if (initial_flag == 1'b0) begin\n"
				+ "\n		Y"+(size*size)+"_next <= Y_onebyoneout;"
				+ "\n		X"+(size*size)+"_next <= X_onebyoneout;\n");
				
				//be sure to manually remove the extra terms at the tail
				for(a = 1;a<=size*size;a+=8) {
					System.out.println("Y"+a+"_in = Y"+a+"_next;"
					+ "Y"+(a+1)+"_in = Y"+(a+1)+"_next;"
					+ "Y"+(a+2)+"_in = Y"+(a+2)+"_next;"
					+ "Y"+(a+3)+"_in = Y"+(a+3)+"_next;"
					+ "Y"+(a+4)+"_in = Y"+(a+4)+"_next;"
					+ "Y"+(a+5)+"_in = Y"+(a+5)+"_next;"
					+ "Y"+(a+6)+"_in = Y"+(a+6)+"_next;"
					+ "Y"+(a+7)+"_in = Y"+(a+7)+"_next;");					
				}
				System.out.println();
				
				//be sure to manually remove the extra terms at the tail
				for(a = 1;a<=size*size;a+=8) {
					System.out.println("X"+a+"_in = X"+a+"_next;"
					+ "X"+(a+1)+"_in = X"+(a+1)+"_next;"
					+ "X"+(a+2)+"_in = X"+(a+2)+"_next;"
					+ "X"+(a+3)+"_in = X"+(a+3)+"_next;"
					+ "X"+(a+4)+"_in = X"+(a+4)+"_next;"
					+ "X"+(a+5)+"_in = X"+(a+5)+"_next;"
					+ "X"+(a+6)+"_in = X"+(a+6)+"_next;"
					+ "X"+(a+7)+"_in = X"+(a+7)+"_next;");
				}

				//be sure to manually remove the extra terms at the tail
				System.out.println("\n	end else begin\n");
				for(a = 1;a<=size*size;a+=8) {
					System.out.println("X"+a+"_in = Initial_X_in;"
					+ "X"+(a+1)+"_in = Initial_X_in;"
					+ "X"+(a+2)+"_in = Initial_X_in;"
					+ "X"+(a+3)+"_in = Initial_X_in;"
					+ "X"+(a+4)+"_in = Initial_X_in;"
					+ "X"+(a+5)+"_in = Initial_X_in;"
					+ "X"+(a+6)+"_in = Initial_X_in;"
					+" X"+(a+7)+"_in = Initial_X_in;");
				}
				System.out.println("\n		initial_flag = 1'b0;\n	end\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}};" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;");												
			} else if(i==size) { // top right
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};");				
			} else if(i==size*(size-1)+1) { // bottom left
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}};" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n");				
			}else if(i==size*size) { // bottom right
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n"
				+ "\n    end\n  counter = counter + `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b1;\nend");	
			// four boundaries except corners
			} else if(i>=2&i<=size-1) { // top 
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+"\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");					
			} else if(i>=size*(size-1)+2&i<=size*size-1) { // bottom
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n");					
			} else if(Arrays.asList(vertical_left).contains(i)) { // left
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}};" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");					
			} else if(Arrays.asList(vertical_right).contains(i)) { // right
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};"	);			
			} else { // all other cells in the middle
				System.out.println("\n  end else if (counter == `COUNTER_WIDTH_SIXTEEN_BY_SIXTEEN'b"+Integer.toBinaryString(i-1)+") begin // "+ i + "\n"
				+ "\n    Y"+(i-1)+"_next <= Y_onebyoneout;"
				+ "\n    X"+(i-1)+"_next <= X_onebyoneout;\n"				
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    X <= X"+i+"_in;\n"
								
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");				
			}
		}
		System.out.println("\nonebyone u1(");
		for(a=1;a<10;a++) {
			System.out.println(".A"+a+"(A"+a+"[`WIDTH - 1:0]),");
		}
		System.out.println();
		for(a=1;a<10;a++) {
			System.out.println(".B"+a+"(B"+a+"[`WIDTH - 1:0]),");
		}
		System.out.println();
		for(a=1;a<10;a++) {
			System.out.println(".U"+a+"(U"+a+"[`WIDTH - 1:0]),");
		}
		System.out.println();
		for(a=1;a<10;a++) {
			System.out.println(".Y"+a+"(Y"+a+"[2 * `WIDTH - 1:0]),");
		}
		System.out.println("\n.I(I[`WIDTH - 1:0]),\n");
		System.out.println(".Xout(X_onebyoneout[2 * `WIDTH - 1:0]),");
		System.out.println(".Yout(Y_onebyoneout[2 * `WIDTH - 1:0]),");
		System.out.println(".X(X[2 * `WIDTH - 1:0])\n");
		System.out.println(");\n\nendmodule");
	}
}
