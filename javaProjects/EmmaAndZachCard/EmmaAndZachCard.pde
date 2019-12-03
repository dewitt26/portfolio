SnowMen[]s;
SnowFlake snowFlake;
SnowFlake[]mySnow=new SnowFlake[100];
Image img=new Image();
PImage image;
PImage window2;
PImage egg;
PImage r;
boolean reveal=false;
float snowman;
boolean a=false;
boolean p=true;

void setup()   
{     
 image= loadImage("santa.png");
window2=loadImage("window2.jpg");
egg=loadImage("egg3.png");
r=loadImage("doc.png");
 
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
   
   image(egg, 800, 350, 60,90);
   
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
  rect(0, 440, 1800, 70);
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
  
  //easter egg

  
  
fill(random(0, 255), random(0, 255), random(0,255));
ellipse(905,191, 10,10);
ellipse(925,191,10,10);
ellipse(945,191,10,10);
ellipse(965,191,10,10);
ellipse(985,191,10,10);
ellipse(1005,191,10,10);
ellipse(1025,191,10,10);
ellipse(1045,191,10,10);
ellipse(1065,191,10,10);
ellipse(1085,191,10,10);  
ellipse(1105,191,10,10);
ellipse(1125,191,10,10);
ellipse(1145,191,10,10);
ellipse(1165,191,10,10);
ellipse(1185,191,10,10);


ellipse(925,171,10,10);
ellipse(945,171,10,10);
ellipse(965,171,10,10);
ellipse(985,171,10,10);
ellipse(1005,171,10,10);
ellipse(1025,171,10,10);
ellipse(1045,171,10,10);
ellipse(1065,171,10,10);
ellipse(1085,171,10,10);  
ellipse(1105,171,10,10);
ellipse(1125,171,10,10);
ellipse(1145,171,10,10);
ellipse(1165,171,10,10);


ellipse(945,151,10,10);
ellipse(965,151,10,10);
ellipse(985,151,10,10);
ellipse(1005,151,10,10);
ellipse(1025,151,10,10);
ellipse(1045,151,10,10);
ellipse(1065,151,10,10);
ellipse(1085,151,10,10);  
ellipse(1105,151,10,10);
ellipse(1125,151,10,10);
ellipse(1145,151,10,10);


ellipse(965,131,10,10);
ellipse(985,131,10,10);
ellipse(1005,131,10,10);
ellipse(1025,131,10,10);
ellipse(1045,131,10,10);
ellipse(1065,131,10,10);
ellipse(1085,131,10,10);  
ellipse(1105,131,10,10);
ellipse(1125,131,10,10);


ellipse(985,111,10,10);
ellipse(1005,111,10,10);
ellipse(1025,111,10,10);
ellipse(1045,111,10,10);
ellipse(1065,111,10,10);
ellipse(1085,111,10,10);  
ellipse(1105,111,10,10);


ellipse(1005,91,10,10);
ellipse(1025,91,10,10);
ellipse(1045,91,10,10);
ellipse(1065,91,10,10);
ellipse(1085,91,10,10);  



ellipse(1045,71,10,10);


 if(reveal==true){
    image(r,1473,100, 300,300);
    fill(random(0, 255), random(0, 255), random(0,255));
     textSize(35);
     text("Premium Lab Day!", 1473, 50);
  }

}

void mousePressed() {
  if(mouseX>804 && mouseX<859 && mouseY<455 && mouseY>357){
    reveal=true;
  
  }
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
