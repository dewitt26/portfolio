class StarParticle{
//your code here
double x, y, angle, speed;
int r, g, b;
int t=0;

StarParticle(){
  x=width/2;
  y=height/2;
    speed=Math.random()*20;
  angle=(Math.PI*5)*Math.random()*6;
  //angle=(Math.PI/2)*Math.random();
}
void move(){
  x+=Math.cos(angle)*speed*3;
  y+=Math.sin(angle)*speed;
  angle+=.01;
  
  if(x>999){
    x=999;
  }else if(x<1){
    x=1;
  }
  
   if(y>999){
    y=999;
  }else if(y<1){
    y=1;
  } 
}

void show(){
  noStroke();
  if(t==0){
  randomColor();
  t=300;
  }
  t++;
  //println(t);
 // colorMode(HSB);
  //blendMode(LIGHTEST);
  fill(255);
  ellipse((int)x, (int)y, 3,3);
}

void randomColor(){
 r=((int)(Math.random()*155 +100));
 g=((int)(Math.random()*155 +100));
 b=((int)(Math.random()*155 +100));
  
}
  
  
}
