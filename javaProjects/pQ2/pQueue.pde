import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.lang.Object;

class PQTester
{
  private Queue<String> pq;

  public PQTester()
  {
    setPQ(new String[0]);
  }

  public PQTester(String[] list)
  {
    setPQ(list);
  }

  public void setPQ(String[] list)
  {
    pq=new PriorityQueue<String>();
    for (int i=0; i<list.length; i++) {
      pq.add(list[i]);
    }
  }

  public Object getMin()
  {
    Queue<String> pq1=new PriorityQueue<String>();
    pq1=pq;
    return pq1.peek();
  }

  public String getPriorityOrder()
  {    
    Queue<String> pq2=new PriorityQueue<String>();
    pq2=pq;
    return ""+pq2;
  }

  public String getNaturalOrder()
  {
    Queue<String> pq3=new PriorityQueue<String>();
    pq3=pq;
    String order=""; 
    while (!pq3.isEmpty()) {
      order=order+pq3.poll()+" ";
    }
    return order;
  }

  public String toString()
  {
    return "toString() - "+getPriorityOrder()+"\n"+"getmin() - "+getMin()+"\n"+"getnaturalOrder - "+getNaturalOrder()+"\n";
  }
}
