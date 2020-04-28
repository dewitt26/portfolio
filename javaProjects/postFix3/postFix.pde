import java.util.*;

public class PostFix{
    private Stack<Double> stack;
    private String expression;
    
    public PostFix(){
        stack = new Stack<Double>();
        setExpression("");
        
    }

    public PostFix(String exp){
        stack = new Stack<Double>();
        setExpression(exp);
    }

    public void setExpression(String exp){
        expression = exp;
    }

    public double calc(double one, double two, char op){
      double ans=0.0;
      
      if(op=='+')
      {
       ans=one+two; 
      }
      if(op=='-')
      {
       ans=one-two; 
      }
      if(op=='*'){
       ans=one*two; 
      }
      if(op=='/')
      {
        ans=two/one;
      }
      return ans;
    }

  
    public double solve() {
    Scanner scan = new Scanner(expression);
    while (scan.hasNext()) {
      String loc = scan.next();
      char c = loc.charAt(0);

      //for(int i=0; i<expression.length(); i++){
      //   char c=expression.charAt(i); 

      if (Character.isDigit(c)) {
        stack.push( (double)(c - '0') );
      } else {
        double one = stack.pop();
        double two = stack.pop();
        stack.push( calc(one, two, c) );
      }
    }
    return stack.pop();
  }


    public String toString() {
        return expression + " = " + solve();
    }
}
