public class SnowFlake{

  float x = (float)Math.random()*width;
  float y = (float)Math.random()*height;
  float r = (float)Math.random()*20;
  float speed=(float)(Math.random()*5)+1;
  
  public SnowFlake(){
  }

  public void display(){
    fill(255);
   ellipse(x, y, r, r);
   y+=speed;
   if(y > height){
     y = 0;
     x = (float)Math.random()*width;
   }
  }
}
