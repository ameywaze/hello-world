public with sharing abstract class OopsConcepts {

	public Integer nonStatic = 10;

	public static void class1Method() {
		System.debug('In class1 method');
	}

	public void printHello() {
		System.debug('Hello World');
	}

	public abstract void absMethod();
}