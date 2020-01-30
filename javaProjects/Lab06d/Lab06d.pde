import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;
import java.util.List;
SiteName sn;
String [] sitename;
List<SiteName>myList=new ArrayList<SiteName>();
void setup(){

  sitename=loadStrings("site.txt");
  println(sitename);
  for(String str: sitename){
  
  sn=new SiteName(str);
  myList.add(sn);
  
  }
  Collections.sort(myList);
  
   for(SiteName s : myList) {
     out.println(s);
   }
}
