class OddballParticle implements Particle//uses an interface
{
  double x, y, angle, speed;
  
  OddballParticle(){
   
  x=width/2;
  y=height/2;
  speed=Math.random()*20;
  angle=(Math.PI*5)*Math.random()*6;
  }
  void move(){
  x+=Math.cos(angle)*speed;
  y+=Math.sin(angle)*speed;
  angle+=.01;
  
  if(x>700){
    x=700;
  }else if(x<200){
    x=200;
  }
  
   if(y>700){
    y=700;
  }else if(y<200){
    y=200;
  } 
  }
 void show(){
  noStroke();
 colorMode(HSB);
 

   fill(90,255,190);
  ellipse((int)x, (int)y-23,20, 30); //green alien head

  fill(255);
  ellipse((int)x, (int)y, 50, 20); //ufo shape
  
   fill(0,0,0);
  ellipse((int)x+5, (int)y-26,5, 10); //alien eyes
  
   fill(0,0,0);
  ellipse((int)x-5, (int)y-26,5, 10); //alien eyes
  
   fill(280,385,135);
   ellipse((int)x, (int)y, 8,8); //dot on ufo
   
   fill(280,385,135);
   ellipse((int)x+15, (int)y, 8,8); //dot on ufo
   
   fill(280,385,135);
   ellipse((int)x-15, (int)y, 8,8); //dot on ufo
  
  
  
 
}


}
