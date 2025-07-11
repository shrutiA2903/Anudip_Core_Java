/*Write a Java program to demonstrate method overloading by creating a class Calculator with multiple add() methods that accept different parameter types.*/

package Java_LABs;

class Calculator
{
	void add(int a,int b)
	{
		System.out.println("Addition Of Two Integer value = "+(a+b));
	}
	
	void add(int a,int b, int c)
	{
		System.out.println("Addition Of Three Integer value = "+(a+b+c));
	}
	
	void add(double a,double b)
	{
		System.out.println("Addition Of Two Double value = "+(a+b));
	}
	
	void add(int a,float b)
	{
		System.out.println("Addition Of One Integer & One Float value = "+(a+b));
	}
}

public class Lab2_MethodOverloading
{
	public static void main(String[] args)
	{
		Calculator c = new Calculator();
		
		c.add(10, 20);
		c.add(10, 20, 30);
		c.add(2.5, 13.2);
		c.add(25, 2.4);
	}
}


/* Output ->
 
Addition Of Two Integer value = 30
Addition Of Three Integer value = 60
Addition Of Two Double value = 15.7
Addition Of Two Double value = 27.4

 */