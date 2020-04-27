import java.util.Stack;
import java.util.Scanner;

Stack<String>circus=new Stack<String>();

void setup() {
 
  try {
    Scanner scan=new Scanner(new File("C:\\Users\\dewit\\OneDrive\\Desktop\\circusLab\\full.txt"));
    int num=scan.nextInt();
    for(int i=0; i<num; i++){
      String name=scan.next();
      if(i%2==0){
        println(name);
      } else {
        circus.push(name);
      }
      
    }
    
    while(!circus.isEmpty()) {
      println(circus.pop());
    }
  }
    catch(Exception e) {
      println(e);
    }
  }
      
  
