public class StringParser {
  String[]w;
  public StringParser(String words[]) {
    w=words;
  }
  
    public StringParser() {
    w=words;
  }
  /**
   *countWords();
   * A "word" is defined as a contiguous string of alphabetic characters
   * i.e. any upper or lower case characters a-z or A-Z.  This method completely 
   * ignores numbers when you count words, and assumes that the document/paragraph does not have 
   * any strings that combine numbers and letters. 
   */

   public int countSentences(String s){
 String[]words=s.split("[.!?]+");
  //println(words.length);
  return words.length;
  }
  
  public int countVowels(String s){
   String[]words=s.split("[aeiouyAEIOUY]+");
  //println(words.length);
  return words.length;
  
  }
  
  public int countWords(String s){
  String[]words=s.split("\\W+");
// println(words.length);
 
 return words.length; 
  }
  
  public int countSyllables(String s){
 String[]words=s.split("[aeiouyAEOUY]{1,2}|[A-Za-z][!]");
 //println(words.length);
 return words.length; 
    
  }
  
  public float fleschReadability(String s){
    return((.39 * (countWords(s)/countSentences(s)) )+ (11.8 * (countSyllables(s)/countWords(s)))-15.59);
    
  }
  
  public float ease(String s){
    return( 206.835-(1.015*(countWords(s))/countSentences(s))) - (84.6 * (countSyllables(s)/countWords(s)));
  }
  
}
    
    
