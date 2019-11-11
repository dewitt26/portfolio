//declare bacteria variables here
Bacteria[] b;

float snowman;
boolean a=false;
boolean p=true;
PShape star;

void setup()   
{     
  //initialize bacteria variables here   
  size(800, 500);

  b=new Bacteria[8];

  for (int i=0; i<b.length; i++) {
    b[i]=new Bacteria(width/2, height/2);
  }

  frameRate(10);

  star = createShape();
  star.beginShape();

  star.fill(247, 255, 5);
  star.stroke(0);
  star.strokeWeight(2);


  star.vertex(0, -50);
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape(CLOSE);
} 

void draw()   
{    
  //move and show the bacteria   

  background(0);
  
//if(frameCount%1==0){
  // for(Bacteria x :b){
    //x.show();
    //x.move();
    //x.appear();
  //}
 // }
  
  if (a==true) {
      for (int i=0; i<b.length; i++) {
        b[i].show();
        b[i].move();
        //b[i].appear();

        System.out.println("x" + mouseX);
        System.out.println("y" + mouseY);
      }
    }
    
 // shape(star);
   

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
  for (int i=0; i<b.length; i++) {
        b[i].appear();
        
  }
}
}
