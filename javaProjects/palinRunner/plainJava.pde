import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Scanner;

public class PalinList
{
  private Queue<String> queue;
  private Stack<String> stack;
  private Queue<String> copy;
  private String [] str;


  public PalinList()
  {
    setList("");
  }

  public PalinList(String list)
  {
    stack = new Stack<String>();
    setList(list);
  }

  public void setList(String list)
  {
    queue= new LinkedList <String>();
    stack=new Stack<String>();
    copy = new LinkedList<String>();
    str=list.split(" ");
  for(int i=0; i<str.length;i++){
    queue.add(str[i]);
    copy.add(str[i]);
    stack.push(str[i]);
  }

   
  }

  public boolean isPalin()
  {
  
  while(!queue.isEmpty() && !stack.empty()){
    if(queue.remove().equals(stack.pop())){
      return true;
    } 
   
 }
  return false;
  }

  public String toString(){
    if(isPalin()==true){
     return copy + " is a palinlist."; 
    }
    return copy + " is not a palinlist";
  }
  //write a toString method
}
