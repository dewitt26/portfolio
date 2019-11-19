 class Image {
  PImage img;
  float imgX=180, imgY=0;
  int xPos=5000;
  int xDir=1;
  int yPos=950;
  int yDir=1;
  
 public Image(){
 }
 
 void drawImg(){
 
 img=loadImage("rocket2.png");
 
  image(img, 450, yPos, 75, 150);
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
