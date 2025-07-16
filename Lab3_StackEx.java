//Write a program to declare stack. Store 10 elements into it.Remove 4 elements from stack and display it.

package Java_LABs;

import java.util.Stack;

public class Lab3_StackEx 
{
	public static void main(String[] args) 
	{
		Stack<Integer> s = new Stack<Integer>();
		
		//Store 10 element
		for(int i=1;i<=10;i++)
		{
			s.push(i);
		}
		
		System.out.println("Stack Element = "+s);
		
		//Remove 4 element
		for(int i=1;i<=4;i++)
		{
			s.pop();
		}
		
		System.out.println("After Removing 4 Element = "+s);
	}
}


/* Output ->
 
Stack Element = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
After Removing 4 Element = [1, 2, 3, 4, 5, 6]

*/

