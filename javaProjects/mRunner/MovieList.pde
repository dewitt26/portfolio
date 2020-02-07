import java.util.*;
public class MovieList{
  
ArrayList<Movie> list = new ArrayList <Movie>();


  public int count;
  
  int total;
 // int c2;
  
  public MovieList(){
   // movieList= new <Movie> ArrayList();
  }
  
  public void loadMovie(){
    
    
   
    String[] str=loadStrings("C:\\Users\\dewit\\OneDrive\\Desktop\\mRunner\\reviews.txt"); 
   for(String x: str){
    Scanner scan= new Scanner(x);
    list.add(new Movie(scan.nextInt(), scan.nextLine()));
    scan.close();
   }
    
  
   count=list.size();
   

  }
  
  public int getCount(){
    return count;
  }
  
  public int countWords(String str){
    int count=0;
    for(Movie m: list){
      if(m.getReview().contains(str)){
        count++;
    }
    }
    return count;
  }
  
  
  public String mostCommon(){
   
   int maxWords=0;
   int numWords=0;
    for(Movie m: list){
      
    }
    
    
    return " ";
  }
  
  public double getAverageScore(){
  int count=list.size();
  int total=0;
   for(Movie m: list){
    total+=m.getRating();
    //this.c2++;
   }
    
    return (double)total/count;
    
    
  
  }
  
  public String overallComment(){
   if(getAverageScore()<1){
    return "This movie is terrible."; 
   }
   else if(getAverageScore()<2){
    return "This is a bad movie"; 
   }
   else if(getAverageScore()<3){
    return "This is not a great movie."; 
   }
   else if(getAverageScore()<4){
    return "This is a pretty good movie."; 
   }
   else if(getAverageScore()>3.5){
    return "This is a suberb movie!"; 
   }
   return "This is an amazing movie! ";
  }
  
  public void sortMovieByCount(){
   Collections.sort(list);
  }
  
  public String toString(){
    Iterator<Movie> here=list.iterator();
    String ts="";
    while(here.hasNext()){
     ts+=here.next(); 
    }
    return ts;
    
  }
  
}
