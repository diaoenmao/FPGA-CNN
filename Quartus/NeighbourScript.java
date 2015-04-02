import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
public class NeighbourScript
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		for(int i=18;i<32;i++) {
			System.out.println("\n    Y"+(i-1)+"_next <= onebyoneout;\n"
			+ "\n    U"+(i-17)+" <= U"+(i-17)+"_in;"
			+ "\n    U"+(i-16)+" <= U"+(i-16)+"_in;" + "\n    U"+(i-15)+" <= U"+(i-15)+"_in;"
			+ "\n    U"+(i-14)+" <= U"+(i-1)+"_in;" + "\n    U"+(i-13)+" <= U"+(i)+"_in;"
			+ "\n    U"+(i-12)+" <= U"+(i+1)+"_in;" + "\n    U"+(i-11)+" <= U"+(i+15)+"_in;"
			+ "\n    U"+(i-10)+" <= U"+(i+16)+"_in;" + "\n    U"+(i-9)+" <= U"+(i+17)+"_in;\n\n"
			
			+ "\n    Y"+(i-17)+" <= Y"+(i-17)+"_in;"
			+ "\n    Y"+(i-16)+" <= Y"+(i-16)+"_in;" + "\n    Y"+(i-15)+" <= Y"+(i-15)+"_in;"
			+ "\n    Y"+(i-14)+" <= Y"+(i-1)+"_in;" + "\n    Y"+(i-13)+" <= Y"+(i)+"_in;"
			+ "\n    Y"+(i-12)+" <= Y"+(i+1)+"_in;" + "\n    Y"+(i-11)+" <= Y"+(i+15)+"_in;"
			+ "\n    Y"+(i-10)+" <= Y"+(i+16)+"_in;" + "\n    Y"+(i-9)+" <= Y"+(i+17)+"_in;\n");
		}
	}
