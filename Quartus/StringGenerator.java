import java.util.*;

/* Name of the class has to be "Main" only if the class is public. */
public class StringGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		int size = 16; // change this if need
		int[] vertical_left = new int[size];
    		for (int i = 1; i < size-1; i++) {
        		vertical_left[i] = i*size+1;
    		}
    		int[] vertical_right = new int[size];
    		for (int i = 1; i < size-1; i++) {
        		vertical_right[i] = (i+1)*size;
    		}     		
		for(int i=1;i<size*size;i++) {
			// four corners
			if(i==1) { // top left
				System.out.println("\n    Y"+size+"_next <= onebyoneout;\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}}" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in");												
			} else if(i==size) { // top right
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= {(2 * `WIDTH){1'b0}}");				
			} else if(i==size*(size-1)+1) { // bottom left
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}};" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n");				
			}else if(i==size*size) { // bottom right
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n");	
			// four boundarier except corners
			} else if(i>=2&i<=size-1) { // top 
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= `WIDTH'b0;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= {(2 * `WIDTH){1'b0}};" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");					
			} else if(i>=size*(size-1)+2&i<=size*size-1) { // bottom
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= `WIDTH'b0;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= {(2 * `WIDTH){1'b0}};" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};\n");					
			} else if(Arrays.asList(vertical_left).contains(i)) { // left
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= `WIDTH'b0;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= `WIDTH'b0;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= `WIDTH'b0;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    Y1 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= {(2 * `WIDTH){1'b0}};" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");					
			} else if(Arrays.asList(vertical_right).contains(i)) { // right
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= `WIDTH'b0;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= `WIDTH'b0;" + "\n    U7 <= `U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= `WIDTH'b0;\n"
				
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= {(2 * `WIDTH){1'b0}};"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= {(2 * `WIDTH){1'b0}};" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= {(2 * `WIDTH){1'b0}};"	);			
			} else { // all other cells in the middle
				System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
				+ "\n    U1 <= U"+(i-size-1)+"_in;"
				+ "\n    U2 <= U"+(i-size)+"_in;" + "\n    U3 <= U"+(i-size+1)+"_in;"
				+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
				+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= U"+(i+size-1)+"_in;"
				+ "\n    U8 <= U"+(i+size)+"_in;" + "\n    U9 <= U"+(i+size+1)+"_in;\n"
				
				+ "\n    Y1 <= Y"+(i-size-1)+"_in;"
				+ "\n    Y2 <= Y"+(i-size)+"_in;" + "\n    Y3 <= Y"+(i-size+1)+"_in;"
				+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
				+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= Y"+(i+size-1)+"_in;"
				+ "\n    Y8 <= Y"+(i+size)+"_in;" + "\n    Y9 <= Y"+(i+size+1)+"_in;\n");				
                        }
                }
        }
}
