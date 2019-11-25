 class Image {
  PImage img;
  float imgX=180, imgY=0;
  int xPos=500;
  int xDir=1;
  int yPos=550;
  int yDir=1;
  
 public Image(){
 }
 
 void drawImg(){
 
 img=loadImage("santa.png");
 
  image(img, 1400, 500, 75, 150);
yPos=yPos-yDir;
  if (yPos<-5) //code to launch rocket, restarts at bottom of screen when y position <-5
  {
    yPos=980;
  }
  else
  {
    yPos--;
    
  }
 }

}
