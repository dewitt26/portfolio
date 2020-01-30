public class Word{
  int count;
  String word;
  
 public Word(String word){
    this.word=word;
    count=1;
  }
  public String getWord(){
   return word; 
  }
  
  public void setWord(String name){
   this.word=name; 
  }
  
  public String toString(){
   return word+" "+count; 
  }
  
  
 
}
