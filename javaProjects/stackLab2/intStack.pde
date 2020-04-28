class IntStack {

  //pick your storage for the stack
  //you can use the an array or an ArrayList

  //option 1
  private int[] rayOfInts;
  private int numInts;

  //option 2
  //private ArrayList<Integer> listOfInts;

  public IntStack() {
    rayOfInts =new int[10];
    numInts=0;
   // listOfInts = new ArrayList<Integer>();
  }

  public void push(int item) {
  rayOfInts[numInts] = item;
  numInts++;
  }

  public int pop() {
  int result =rayOfInts[numInts-1];
  numInts--;
  return result;
  
  }

  public boolean isEmpty() {
  if(numInts==0){
   return true; 
  }
  else
  return false;
  }

  public int peek() {  
  int result =rayOfInts[numInts-1];
 
  return result;
  }

  public String toString() {
  return "" + rayOfInts;
 }
}
