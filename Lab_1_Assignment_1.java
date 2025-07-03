/* Write Java Program to find maximum number using ternary operator. */

package Java_LABs;

import java.util.Scanner;

public class Max_Value 
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter First value = ");
		int no1 = sc.nextInt();
		
		System.out.println("Enter Second value = ");
		int no2 = sc.nextInt();
		
		int ans = (no1>no2) ? no1:no2;
		
		System.out.println("Maximum value = "+ans);
	}

}


/* Output-
Enter First value = 
20
Enter Second value = 
46
Maximum value = 46 */
