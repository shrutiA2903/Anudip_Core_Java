/*Multi-Dimentional Array Function Example*/

package Java_Assignments;

public class MultiDimention_Array_Func 
{
	static void show1(int b[][])
	{
		for(int i=0;i<b.length;i++)
		{
			for(int j=0;j<b[i].length;j++)
			{
				System.out.print(b[i][j]+" ");
			}
			System.out.println();
		}
	}
	
	public static void main(String[] args) 
	{
		int b[][] = {{1,2,3},{4,5,6}};	//Declaration and Intialization
		show1(b);
	}
}


/* Output ->

1 2 3 
4 5 6

*/
