class Image {
  PImage img;
 // PImage img2;
  
  
  public Image(){
    
  }
  
  void drawImg(){
    
    img=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\mRunner\\theater.JPG");
    //img2=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\mRunner\\curtains.JPG");
    image(img, 1, 1, 1200, 800);
    //image(img2, 1,1,1000, 800);
    
  }
  
}
