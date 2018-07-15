@isTest
private class ReverseStringTest {

    static testMethod void testNormal() {
        Basic temp = new Basic();
        String reverse = temp.reverseString('Amey Waze');
        System.assertEquals('ezaW yemA', reverse, 'String is incorrect!');
    }
    
    static testMethod void testAlphaNumeric() {
        Basic temp = new Basic();
        String reverse = temp.reverseString('889@hHs IHg89.');
        System.assertEquals('.98gHI sHh@988', reverse, 'String is incorrect!');
    }
}