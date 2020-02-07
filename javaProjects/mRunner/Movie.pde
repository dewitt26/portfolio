import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;

public class Movie implements Comparable <Movie>{
  public int rating;
  public String review;
  
  public Movie(int r, String rev){
   rating=r;
   review=rev;
  }
  
  public int compareTo(Movie other){
    if(this.rating>other.rating){
      return 1;
    }
    if(this.rating>other.rating){
     return -1; 
    }
    return 0;
    
    
  }
  
  public int getRating(){
    return rating;
  }
  
  public String getReview(){
   return review; 
  }
  
  public String toString(){
   return "rating: " + rating + "review: " + review; 
    
  }
  
  
  
}
