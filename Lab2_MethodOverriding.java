/*Create a superclass Animal with a method makeSound(). Create two subclasses Dog and Cat that override the method.*/

package Java_LABs;

class Animal
{
	void makeSound()
	{
		System.out.println("Animal Makes a Sound...");
	}
}

class Dog extends Animal
{
	@Override
	void makeSound() 
	{
		super.makeSound();
		System.out.println("I am Dog...");
	}
}

class Cat extends Animal
{
	@Override
	void makeSound() 
	{
		System.out.println("I am Cat...");
	}
}

public class Lab2_MethodOverriding
{
	public static void main(String[] args) 
	{
		Dog d = new Dog();
		d.makeSound();
		
		Cat c = new Cat();
		c.makeSound();
	}
}


/* Output ->

Animal Makes a Sound...
I am Dog...
I am Cat...

*/
