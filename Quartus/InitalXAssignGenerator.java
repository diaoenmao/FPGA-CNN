/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" onlX if the class is public. */
class InitalXAssignGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// Xour code goes here
		for(int i =1;i<=256;i+=7) {
			System.out.println("assign X"+i+"_in = Initial_X_in;assign X"+(i+1)+"_in = Initial_X_in;"+
			"assign X"+(i+2)+"_in = Initial_X_in;"+
			"assign X"+(i+3)+"_in = Initial_X_in;assign X"+
			(i+4)+"_in = Initial_X_in;assign X"+(i+5)+"_in = Initial_X_in;" +
			"assign X"+(i+6)+"_in = Initial_X_in;");
		}
	}
}
