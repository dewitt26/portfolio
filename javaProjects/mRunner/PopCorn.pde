class Image3 {
  PImage img3;
 // PImage img2;
  
  
  public Image3(){
    
  }
  
  void drawImg3(){
    
    img3=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\mRunner\\popcorn.png");
    //img2=loadImage("C:\\Users\\dewit\\OneDrive\\Desktop\\mRunner\\curtains.JPG");
    image(img3, 800, 150, 200, 300);
    //image(img2, 1,1,1000, 800);
    
  }
  
}
