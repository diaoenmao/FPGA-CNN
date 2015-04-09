import java.util.*;
import java.lang.*;
import java.io.*;
/*
* Enmao Diao
*/
// please run this one http://www.compilejava.net/ and copy and paste the output on console
public class InitalXAssignGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		for(int i =1;i<=256;i+=7) {
			System.out.println("assign X"+i+"_in = Initial_X_in;assign X"+(i+1)+"_in = Initial_X_in;"+
			"assign X"+(i+2)+"_in = Initial_X_in;"+
			"assign X"+(i+3)+"_in = Initial_X_in;assign X"+
			(i+4)+"_in = Initial_X_in;assign X"+(i+5)+"_in = Initial_X_in;" +
			"assign X"+(i+6)+"_in = Initial_X_in;");
		}
	}
}
