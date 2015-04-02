import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class NeighbourScript
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		for(int i=18;i<32;i++) {
			System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
			+ "\n    U1 <= U"+(i-17)+"_in;"
			+ "\n    U2 <= U"+(i-16)+"_in;" + "\n    U3 <= U"+(i-15)+"_in;"
			+ "\n    U4 <= U"+(i-1)+"_in;" + "\n    U5 <= U"+(i)+"_in;"
			+ "\n    U6 <= U"+(i+1)+"_in;" + "\n    U7 <= U"+(i+15)+"_in;"
			+ "\n    U8 <= U"+(i+16)+"_in;" + "\n    U9 <= U"+(i+17)+"_in;\n"
			
			+ "\n    Y1 <= Y"+(i-17)+"_in;"
			+ "\n    Y2 <= Y"+(i-16)+"_in;" + "\n    Y3 <= Y"+(i-15)+"_in;"
			+ "\n    Y4 <= Y"+(i-1)+"_in;" + "\n    Y5 <= Y"+(i)+"_in;"
			+ "\n    Y6 <= Y"+(i+1)+"_in;" + "\n    Y7 <= Y"+(i+15)+"_in;"
			+ "\n    Y8 <= Y"+(i+16)+"_in;" + "\n    Y9 <= Y"+(i+17)+"_in;\n");
		}
	}
}
