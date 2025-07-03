/* Write a Java program to calculate area using method overloading for the following shapes:

Circle (radius)
Rectangle (length, breadth)
Triangle (base, height)

Use the method area() with different parameters. */

package Java_LABs;

class Shape
{
	void area(double radius)
	{
		double AreaCircle = 3.14 * radius * radius;
		System.out.println("Area of Circle = "+AreaCircle);
	}
	
	void area(double length, double breadth)
	{
		double AreaRectangle = length * breadth;
		System.out.println("Area of Rectangle = "+AreaRectangle);
	}
	
	void area(float height, float base)
	{
		double AreaTriangle = 0.5 * height * base;
		System.out.println("Area of Triangle = "+AreaTriangle);
	}
}

public class Method_OverloadingEx
{
	public static void main(String[] args) 
	{
		Shape s = new Shape();
		
		s.area(4.0);
		s.area(5.0, 7.0);
		s.area(2.5, 5.5);
	}
}


/*
Area of Circle = 50.24
Area of Rectangle = 35.0
Area of Rectangle = 13.75
*/
