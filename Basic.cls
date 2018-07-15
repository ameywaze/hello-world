/**
* Class containing methods expected in assignment
*/

public class Basic {

  /**
  Method to calculate fibonacci series upto the value specified by the parameter
  *@param last - The value till which the series should be calculated  
  */
  public List<Integer> printFib(Integer last) {
    /**
    * num1, num2 and sum are used for calculating values of the series
    */
    Integer num1 = 0, num2 = 1, sum = 0;
    List<Integer> fibSeries = new List<Integer>();
    while(num1 <= last) {
      fibSeries.add(num1);
      sum = num1 + num2;
      num1 = num2;
      num2 = sum;
    }
    return fibSeries;
  }


  /**
  Method to return the reverse of a string specified by the parameter
  *@param stringToReverse - The string to reverse
  */
  public String reverseString(String stringToReverse) {
    String reversedString = '';
    for(Integer count = stringToReverse.length() - 1; count >= 0; count--) {
      reversedString += stringToReverse.substring(count, count+1);
    }

    /**
    * ReversedString = StringToReverse.reverse(); 
    */
    return reversedString;
  }


  /**
  Method to perform following string operations
  */
  public void stringOperations(String stringInput) {
    
    String repString = stringInput.replace('@', 'A');
    // part a
    System.debug('The replaced string = ' + repString);

    // part b
    if(repString.contains('Programming')) {
      System.debug('Apex Programming');
    }
    else {
      System.debug('' + repString.contains('Apex Programming'));
    }

    // part c
    String[] temp = repString.split(' ');
    System.debug(temp);

    // part d
    System.debug(repString.deleteWhitespace());
    // Another way : System.debug(String.join(temp,''));

    // part e
    System.debug(repString.toUpperCase());

    // part f
    System.debug(repString.toLowerCase());

  }


  /**
  Method to count occurrences of characters in a string
  */
  public Map<String, Integer> countOcc(String StringInput) {

    Integer count = 0; // Counter variable

    Map<String, Integer> occurences = new Map<String, Integer>(); // Map object to store character-occurrence pair

    String temp = StringInput.deleteWhitespace(); // Removes all the whitespaces in the input string
    String[] temp1 = temp.split('');  // Splits the above string into individual characters

    while(count < temp.length()) // Looping through the entire string character by character
    {
      if(occurences.containsKey(temp1[count])) {  /** If map already has a count of the 
                                                  * current character, this increments the count by 1
                                                  */
        occurences.put(temp1[count], occurences.get(temp1[count]) + 1);
      }
      else {                              // Else adds the first occurrence of the current character
        occurences.put(temp1[count], 1);
      }
      count++;
    }
    return occurences;
  }
}