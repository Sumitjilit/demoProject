package mypack;

import java.util.Scanner;

public class Demo {

	public static void main(String arr[])
	{
		Scanner in=new Scanner(System.in);
		System.out.print("Enter first no.");
		int x=in.nextInt();
		System.out.print("Enter second no.");
		int y=in.nextInt();
		int z=Adder.add(x, y);
		System.out.println("Sum is: "+z);
	}
}
