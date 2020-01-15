import java.util.*;

public class WordList{
  public List <Word> myList;
  
  public WordList(String[]tokens){
    myList=new ArrayList<Word>();
    for(String x: tokens){
      boolean f=false;
      for(Word y: myList){
        if(y.word.equals(x)){
          y.count++;
          f=true;
        }
      }
      
      if(!f){
        myList.add(new Word(x));
        
      }
    }
  }
  
  public int countLargest(){
    
    int countLargest=0;
    for(Word w: myList){
      if(w.count>countLargest)
      countLargest=w.count;
    }
    return countLargest;
    
  }
    
    public void display(){
      
      for(Word w: myList){
        textSize(map(w.count,1,countLargest(), 15,100));
        fill(random(255));
        if(w.count<=75){
          text(w.word,(float)(Math.random()*500)+170, (float)(Math.random()*500)+200);
        }
        if(w.count>=75)
        {
          fill(#FF0000);
          text(w.word, random(900),random(900));
          
        }
        
      }

    }
}
