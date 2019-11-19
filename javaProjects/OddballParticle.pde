class OddballParticle implements Particle//uses an interface
{
  double x, y, angle, speed;
  int t=0;
  int r;
  int g;
  int b;
  
  
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
  
  if(x>580){
    x=580;
  }else if(x<80){
    x=80;
  }
  
   if(y>580){
    y=580;
  }else if(y<80){
    y=80;
  } 
  }
 void show(){
  noStroke();
 colorMode(HSB);
 

   fill(90,255,190);
  ellipse((int)x, (int)y-23,20, 30);

  fill(255);
  ellipse((int)x, (int)y, 50, 20);
  
   fill(0,0,0);
  ellipse((int)x+5, (int)y-26,5, 10);
  
   fill(0,0,0);
  ellipse((int)x-5, (int)y-26,5, 10);
  
   fill(280,385,135);
   ellipse((int)x, (int)y, 8,8);
   
   fill(280,385,135);
   ellipse((int)x+15, (int)y, 8,8);
   
   fill(280,385,135);
   ellipse((int)x-15, (int)y, 8,8);
  
  
  
 
}

void randomColor(){
 r=((int)(Math.random()*155 +100));
 g=((int)(Math.random()*155 +100));
 b=((int)(Math.random()*155 +100));
  
}
  
  


}
