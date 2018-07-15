public with sharing class Class2 Extends OopsConcepts {
	public void class2Method() {
		class1Method();
		System.debug('In class2 method');
	}

	public override void absMethod() {
		System.debug('Implementation of abstract method');
	}
}

/**
Basic t = new Basic();
t.stringOperations('Welcome to @pex Programming');

Class2 temp = new Class2();
temp.class2Method();
temp.printHello();
System.debug(temp.nonStatic);
temp.absMethod();
*/