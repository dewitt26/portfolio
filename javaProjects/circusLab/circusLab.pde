import java.util.Stack;
import java.util.Scanner;
import java.util.ListIterator;

Stack<String>circus=new Stack<String>();

void setup() {
 
  try {
    int count=1;
    Scanner scan=new Scanner(new File("C:\\Users\\dewit\\OneDrive\\Desktop\\circusLab\\full.txt"));
    int num=scan.nextInt();
    while(num!=0){
      Stack<String> names = new Stack<String>();
      Stack<String> o = new Stack<String>();
      println("Set " +count + ": ");
    scan.nextLine();
    
    for(int i=0; i<num; i++){
      String name=scan.nextLine();
      names.push(name);
      i++;
      if(i<num) {
        name=scan.nextLine();
        o.push(name);
      }
    }
    
    while(!o.empty()) {
      names.push(o.pop());
    }
    
    
  ListIterator<String> fix=names.listIterator();
  while(fix.hasNext()){
    println(fix.next());
 }
  print("\n");
  count++;
  num=scan.nextInt();
    }
  }
    catch(Exception e) {
      println(e);
    }
    
}
      
  
