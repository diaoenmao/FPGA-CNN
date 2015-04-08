/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class ConstantGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		// your code goes here
		for(int i =1;i<260;i+=7) {
			System.out.println("assign Y"+i+"_in = Y"+i+"_next;assign Y"+(i+1)+"_in = Y"+
			(i+1)+"_next;assign Y"+(i+2)+"_in = Y"+(i+2)+
			"_next;assign Y"+(i+3)+"_in = Y"+(i+3)+"_next;assign Y"+
			(i+4)+"_in = Y"+(i+4)+"_next;assign Y"+(i+5)+"_in = Y"+
			(i+5)+"_next;assign Y"+(i+6)+"_in = Y"+(i+6)+"_next;");
		}
	}
}
