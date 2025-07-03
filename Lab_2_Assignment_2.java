/* Write a Java program to calculate factorial of given number. eg.3!=3*2*1=6 */

package Java_LABs;

import java.util.Scanner;

public class Factorial
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter value = ");
		int no = sc.nextInt();
		
		int fact = 1;
		
		for(int i=1; i<=no ;i++)
		{
			fact = fact * i;
		}
		
		System.out.println("Factorial of "+no+" is = "+fact);
	}
}

/* Output -
Enter value = 
5
Factorial of 5 is = 120 */
