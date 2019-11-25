SnowMen[]s;
SnowFlake snowFlake;
SnowFlake[]mySnow=new SnowFlake[100];
Image img=new Image();
PImage image;
PImage window2;

float snowman;
boolean a=false;
boolean p=true;

void setup()   
{     
 image= loadImage("santa.png");
window2=loadImage("window2.jpg");
 
   snowFlake = new SnowFlake();
  size(1800, 500);

  s=new SnowMen[10];

  for (int i=0; i<s.length; i++) {
    s[i]=new SnowMen(width/2, height/2);
  }

  frameRate(10);

  for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }


} 

void draw()   
{    

  background(128,191,255);
   image(image,1300,330, 100,125);
   
  
  
  fill(102,51,0);
  rect(900, 190, 300, 260);
  rect(1100,40,50,150);
  triangle(900,190,1045,60,1200,190);
  
  fill(138, 84, 73);
  rect(1020, 325, 75, 125);
  
  fill(255,255,26);
 //rect(1115,253,60,60);
 //rect(935,253,60,60);
  
   image(window2,1115,253,60,60);
   image(window2,915,253,60,60);
    fill(0);
  ellipse(1076,401, 10, 10);
  if (a==true) {
      for (int i=0; i<s.length; i++) {
        s[i].show();
        s[i].move();
       

        System.out.println("x" + mouseX);
        System.out.println("y" + mouseY);
      }
      
      snowFlake.display();
      
      for(int i=0; i<mySnow.length; i++){
    mySnow[i].display();
  }
  
  
 
    }
    

   

  fill(255);
  ellipse(100, 450, 100, 100);
  ellipse(100, 360, 80, 80);
  ellipse(100, 290, 60, 60);
  fill(0);
  ellipse(85, 290, 10, 10);
  ellipse(110, 290, 10, 10);
  fill(94, 57, 46);
  rect(60, 245, 80, 20);
  rect(75, 215, 50, 30);
  fill(250, 62, 10);
  rect(95, 300, 8, 8);
  fill(0);
  ellipse(100,339, 12,12);
  ellipse(100,361, 12,12);
  ellipse(100,383, 12,12);
  
}

void mousePressed() {
  if (mouseX<137 && mouseX>69  && mouseY>320 && mouseY<396) {
    if (a==true) {
      a=false;
     // b.appear();
    } else{
      a=true;
  }
  for (int i=0; i<s.length; i++) {
        s[i].appear();
        
  }
}
}
