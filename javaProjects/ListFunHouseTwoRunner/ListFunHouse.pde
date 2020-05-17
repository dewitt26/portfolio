import static java.lang.System.*;

public class ListFunHouseTwo {
  private ListNode theList = null;

  public String toString() {
    String output = "";

    ListNode first = theList;
    while(first.getNext() != theList){
      output+=(String) first.getValue() + ", ";
      first = first.getNext();
    }
    
    output+=first.getValue();
    return output;
  }

  public int nodeCount() {
    int count = 1;
    ListNode x = theList;
    while(x.getNext() != theList){
      count++;
      x = x.getNext();
    }
    return count;
  }

  // this method will create a new node with the same value as the first node
  // and add this
  // new node to the list. Once finished, the first node will occur twice.
  public void doubleFirst() {
    theList.setNext(new ListNode(theList.getValue(),theList.getNext()));
  }

  public void doubleLast() {
      ListNode first = theList;
      ListNode last = theList;
      first = first.getNext();
      while(first != theList){
        last = first;
        first = first.getNext();
      }
      last.setNext(new ListNode(last.getValue(),theList));
  }
  
  public void skipEveryOther() {
    removeXthNode(2);
  }

  public void setXthNode(int x, Comparable value) {
    ListNode first = theList;
    ListNode last = theList;
    int count=1;
    ListNode temp = theList;
    first = first.getNext();
    while(first != theList){
      if(count % x == 0)
        temp.setValue(value);
      temp = temp.getNext();
      count++;
    }
      
  }

  public void removeXthNode(int x) {

    int count = 1;
    ListNode previous = null;
    ListNode temp = theList;
    
    ListNode first = theList;
    ListNode last = theList;
    theList = theList.getNext();
    while(theList != first){
      if(count % x == 0)
      {
        previous.setNext(temp.getNext());
      }
      previous = temp;
      temp = temp.getNext();
      count++;
      
      last = theList;
      theList = theList.getNext();
    }
  }

  public void add(String string) {
  
    if(theList == null){
      theList = new ListNode(string, null);
      theList.setNext(theList);
    }
    else{
      ListNode first = theList;
      ListNode last = theList;
      theList = theList.getNext();
      while(theList != first){
        last = theList;
        theList = theList.getNext();
      }
      last.setNext(new ListNode(string, first));
    }
  }
}
