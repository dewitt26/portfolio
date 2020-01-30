import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import java.util.Arrays;
import static java.lang.System.*;

String [] bday;
String b=new String();

void setup()
{

  bday=loadStrings("bday.txt");
  //String b=join(bday, " ");
  println(bday);

  ArrayList<Person> p=new ArrayList<Person>();
  println(p);

  System.out.println("before sorted: ");
  for (String s : bday) {
    Scanner scan=new Scanner(s);
    p.add(new Person(scan.nextInt(), scan.nextInt(), scan.nextInt(), scan.next()));
  }
  System.out.println();

  System.out.println("after sorted: ");
  Collections.sort(p);
  for (Person person : p) {
    out.println(person);
  }

  //add test cases
}
