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
 //image(img, xPos, 200, 150, 100);
  //xPos=xPos+xDir;
   //if (xPos>width-20 || xPos<20)
  //{
   // xDir=-xDir;
  //}
  
  image(img, 450, yPos, 150, 200);
yPos=yPos-yDir;
  if (yPos<-5)
  {
    yPos=980;
  }
  else
  {
    yPos--;
    
  }
 }

}
