import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
void setup() {
  String[] sample1=new String[]{"one", "two", "three", "four", "five", "six", "seven"};  
  String[] sample2=new String[]{"1", "2", "3", "4", "5", "one", "two", "three", "four", "five"};  
  String[] sample3=new String[]{"a", "p", "h",  "j", "e", "f", "m", "c", "i", "d", "k", "l", "g", "n", "o", "b"};
 

  System.out.println(new PQTester(sample1));
  System.out.println(new PQTester(sample2));
  System.out.println(new PQTester(sample3));
 
}
