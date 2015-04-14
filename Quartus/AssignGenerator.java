import java.util.*;
import java.lang.*;
import java.io.*;
/*
* Enmao Diao
*/
// please run this one http://www.compilejava.net/ and copy and paste the output on console
public class AssignGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		for(int i =1;i<=256;i+=8) {
			System.out.println("assign U"+i+"_in = `WIDTH'b0;"
            + "assign U"+(i+1)+"_in = `WIDTH'b0;"
			+ "assign U"+(i+2)+"_in = `WIDTH'b0;"
			+ "assign U"+(i+3)+"_in = `WIDTH'b0;"
            + "assign U"+(i+4)+"_in = `WIDTH'b0;"
            + "assign U"+(i+5)+"_in = `WIDTH'b0;"
            + "assign U"+(i+6)+"_in = `WIDTH'b0;"
            + "assign U"+(i+7)+"_in = `WIDTH'b0;");
		}
	}
}
