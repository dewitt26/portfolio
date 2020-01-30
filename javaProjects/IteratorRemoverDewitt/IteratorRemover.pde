import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

public class IteratorRemover
{
  private ArrayList<String> list;

  //Iterator<String> it=list.iterator();
  
  private String toRemove;
  private String l;
  private String r;

  public IteratorRemover(String line, String rem)
  {
   list=new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove=rem;
  }

  public void setTest(String line, String rem)
  {
     list=new ArrayList<String>(Arrays.asList(line.split(" ")));
    toRemove=rem;
   
    }
  

  public void remove()
  {
    Iterator<String>it=list.iterator();
     while(it.hasNext()) {
    if(it.next().equals(toRemove))
     it.remove();
    }
      
    }
    
    
    
   
  

  public String toString()
  {
    return "New list: " + list;
  }
}
