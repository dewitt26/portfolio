int startX;
int startY;
int endX;
int endY;
PImage img;
float imgX=180, imgY=0;
int size=0;
int startTime;

//float r;
//float g;
//float b;

void setup()
{
    
   img=loadImage("cloudd.png");
  startX=250;
    startY=0;
    endX= 450;
    endY=450;
   // rain=10;
    size(500,500);
    strokeWeight(3);
    background(#030303);
    
}
void draw()
{
  
  // b=map(mouseX, 0, width, 0, 255);
  //background(0, 0, b);
  
  //image(img, imgX, imgY, 150, 100);
  fill(0,0,0,25);

  rect(-5,-5,520,520);

  stroke(#F40BAA);
 
  while(endX<500){

  endX=startX+(int)((Math.random()*19)-9);
  endY=startY+(int)((Math.random()*10));
  line(startX, startY, endX, endY);
  startX=endX;
  startY=endY;
  image(img, imgX, imgY, 150, 100);
  
  }
    int time = millis() - startTime; 
  if (time > .01) {
    startTime = millis();
    reset();
  }
}
void reset() {
  startX=250;
  startY=0;
  endX=450;
  endY=450;
}


 void drawImg(){
 
 img=loadImage("cloudd.png");
 image(img, imgX, imgY, 150, 100);
 
 }
 // rain();


//void mousePressed()
//{
 // startX=250;
 // startY=0;
//  endX=450;
  //endY=450;

//}
