class SnowMen    
 {     
   private int x;
   private int y;
   
   SnowMen(int x, int y){
    this.x=x;
    this.y=y; 
   }
   
   void show(){
     fill(255);
     //ellipse(250,200,100,20);
     fill(255);
     ellipse(x,y,20,20);
     ellipse(x, y+20, 20, 20);
     fill(94,57,46);
     rect(x-8, y-15, 15, 10);
     rect(x-12, y-8, 25, 2);
     fill(0);
     ellipse(x-4,y, 3, 3);
     ellipse(x+4,y, 3, 3);
     fill(250, 62, 10);
     rect(x-2, y+2, 4, 4);
     
     fill(255);
     ellipse(275, 160, 140, 100);
     
     fill(255);
     ellipse(198,199,20, 20);
     
     fill(255);
     ellipse(176, 213, 15, 15);
     
     fill(255);
     ellipse(155, 226, 10, 10);
     
     
     fill(random(0, 255), random(0, 255), random(0,255));
     textSize(15);
     text("Merry Christmas!", 217, 168);
     
     fill(255);   //snow on ground
     rect(0,450, 2000, 50);
     
     fill(12,71,1);
     triangle(650, 147, 570, 408, 730, 408);
     fill(94,57,46);
     rect(635, 408, 30, 40);
     
     fill(random(0, 255), random(0, 255), random(0,255));
    
     ellipse(649, 205, 20,20);
     
     ellipse(633, 240, 20,20);
     ellipse(664, 240, 20,20);
       
     ellipse(625, 271, 20,20);
     ellipse(649, 271, 20,20);
     ellipse(673, 271, 20,20);
         
     ellipse(616, 302, 20,20);
     ellipse(640, 302, 20,20);
     ellipse(664, 302, 20,20);
     ellipse(688, 302, 20,20);
       
      ellipse(695, 333, 20,20);
      ellipse(625, 333, 20,20);
      ellipse(672, 333, 20,20);
      ellipse(649, 333, 20,20);
     ellipse(602, 333, 20,20);
     
     ellipse(649, 364, 20,20);
     ellipse(675, 364, 20,20);
     ellipse(701, 364, 20,20);
     ellipse(623, 364, 20,20);
     ellipse(598, 364, 20,20);
     
     ellipse(675, 395, 20,20);
     ellipse(649, 395, 20,20);
     ellipse(701, 395, 20,20);
     ellipse(623, 395, 20,20);
     ellipse(598, 395, 20,20);
     
     
   }
   
   void move(){
    
     x+=(int)(Math.random()*10);
     y+=(int)(Math.random()*5)-8; 
     
     if(y==-10){
     x+=(int)(Math.random()*10);
     y+=(int)(Math.random()*5)-8;
     }
    
   }
   
     void appear(){
       //if(a){
         x=97;
         y=207;

   }
     
  
    


   }
   
 
 
