class Image{
 PImage img;
 PImage img2;
 PImage img3;
 PImage img4;
 
 public Image(){
   
 }
 
 void drawImg(){
   img=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\maRunner\\neo.jpg");
   image(img,20, 550, 200, 200);
   img2=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\maRunner\\noah.jpg");
   image(img2,240,550, 200, 200);
   img3=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\maRunner\\jon.png");
   image(img3,460,550,200,200);   
   img4=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\maRunner\\quinn.jpg");
   image(img4,680,550,200,200);
 
 }
}
