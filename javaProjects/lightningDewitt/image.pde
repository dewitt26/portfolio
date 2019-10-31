public class Image {
  PImage img;
  float imgX=180, imgY=0;
  
 public Image(){
 }
 
 void drawImg(){
 
 img=loadImage("cloudd.png");
 image(img, imgX, imgY, 150, 100);
 
 }






}
