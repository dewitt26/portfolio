import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class PartList
{
  private TreeMap<Part, Integer> partsMap;
  
  public PartList()
  {
  partsMap=new TreeMap<Part, Integer>();

  }
  
  public PartList(String fileName)
  {
    this();
    String [] s=loadStrings(fileName);
    Part part;
    for(String str: s){
     Part p= new Part(str);
     //part= new Part(s);
     
     if(partsMap.get(p)==null){
       partsMap.put(p, 0);
     }
     partsMap.put(p, partsMap.get(p)+1);
    }

  }
  
  public String toString()
  {
    String output="" + partsMap;

    return output;
  }
}
