import java.util.Scanner;
import java.util.Collections;
import java.util.Arrays;
import static java.lang.System.*;

//String [] rat;
String  s="terrible";

MovieList m= new MovieList();

Image img=new Image();
Image2 img2=new Image2();
Image3 img3=new Image3();

boolean a=false;
boolean p=true;

void setup()
{
  
  //rat=loadStrings("C:\\Users\\dewit\\OneDrive\\Desktop\\movieSentiment\\reviews.txt ");
  
 // ArrayList<Movie> m=new ArrayList<Movie>();
  
  size(1200,800);
   m.loadMovie();
 
}
   void draw(){
     int count=m.countWords(s);
     //println(m.countWords(s));
     
    
     img2.drawImg2();
     
     if(a==true){
       img.drawImg();
       img3.drawImg3();
       fill(0);
     textSize(25);
     text("Word Info: " + s +" appears "+count + " times.", 150, 360);
     fill(0);
     textSize(40);
     text("Movie Review Data!", 400, 150);
     fill(0);
     textSize(25);
     
      text("Total Count: " + m.getCount(), 150, 210);
     text("Average Score of Ratings: " + m.getAverageScore(), 150, 260);
     text("Overall Comment: " + m.overallComment(), 150, 310);
     
     
     

     
     }
     
   }
   
   void mousePressed(){
    if(mouseX>200 && mouseX<600){
 if (a==true) {
      a=false;
     
    } else{
      a=true;
  }
}

}
