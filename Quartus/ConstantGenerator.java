import java.util.*;
import java.lang.*;
import java.io.*;
/*
* Enmao Diao
*/
// please run this one http://www.compilejava.net/ and copy and paste the output on console
public class ConstantGenerator
{
	public static void main (String[] args) throws java.lang.Exception
	{
		for(int a =1;a<=256;a+=7) {
			System.out.println("output wire signed [2 * `WIDTH - 2:0] Y"+a+"_out, Y"+(a+1)+"_out, Y"+(a+2)+"_out, Y"+(a+3)
			+ "_out, Y"+(a+4)+"_out, Y"+(a+5)+"_out, Y"+(a+6)+"_out, Y"+(a+7)+"_out, Y"+(a+8)
			+ "_out, Y"+(a+9)+"_out, Y"+(a+10)+"_out, Y"+(a+11)+"_out, Y"+(a+12)+"_out, Y"+(a+13)
			+ "_out, Y"+(a+14)+"_out, Y"+(a+15)+"_out;");
		}
	}
}
