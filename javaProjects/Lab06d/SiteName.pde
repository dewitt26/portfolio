import static java.lang.System.*;

import static java.lang.System.*;

public class SiteName implements Comparable<SiteName>
{
  //add instance variables
  
  private String category;
  private String name;
  
  //add a constructor

  public SiteName(String str){
    String [] s = str.split("\\.");
    category=s[1];
    name=s[0];
    
  }

  //add a compareTo
  public int compareTo(SiteName other){
   
   if(this.name.compareTo(other.name)>0){
     return 1;
   }
   if(this.name.compareTo(other.name)<0){
     return -1;
   }
 return this.category.compareTo(other.category);
  }
  

  //add a toString
  public String toString(){
   return name+ "." + category; 
    
  }

}
