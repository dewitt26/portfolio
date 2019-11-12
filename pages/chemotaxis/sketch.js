'use strict';

//Bacteria[] b;

var b= new Array();


var snowman; //float
var a=false; //boolean
var p=true; //boolean
//PShape star;

function setup()   
{     
  //initialize bacteria variables here   
  createCanvas(800, 500);

//Bacteria=[];
  for (var i=0; i<9; i++) {
    b[i]=new Bacteria(width/2, height/2);
  }

  frameRate(10);

 // star = createShape();
  //star.beginShape();

  //star.fill(247, 255, 5);
  //star.stroke(0);
  //star.strokeWeight(2);


 // star.vertex(0, -50);
  //star.vertex(14, -20);
  //star.vertex(47, -15);
  //star.vertex(23, 7);
  //star.vertex(29, 40);
  //star.vertex(0, 25);
  //star.vertex(-29, 40);
  //star.vertex(-23, 7);
  //star.vertex(-47, -15);
  //star.vertex(-14, -20);
  //star.endShape(CLOSE);
} 

function draw()   
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
      for (var i=0; i<b.length; i++) {
        b[i].show();
        b[i].move();
        //b[i].appear();

       // System.out.println("x" + mouseX);
        //System.out.println("y" + mouseY);
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

function mousePressed() {
  if (mouseX<137 && mouseX>69  && mouseY>320 && mouseY<396) {
    if (a==true) {
      a=false;
     // b.appear();
    } else{
      a=true;
  }
  for (var i=0; i<b.length; i++) {
        b[i].appear();
        
  }
}
}



 class Bacteria    
 {     
   //private var x;
   //private var y;
   
   constructor(x, y){
    this.x=x;
    this.y=y; 
   }
   
    show(){
     fill(255);
     ellipse(this.x,this.y,20,20);
     ellipse(this.x, this.y+20, 20, 20);
     fill(94,57,46);
     rect(this.x-8, this.y-15, 15, 10);
     rect(this.x-12, this.y-8, 25, 2);
     fill(0);
     ellipse(this.x-4,this.y, 3, 3);
     ellipse(this.x+4,this.y, 3, 3);
     fill(250, 62, 10);
     rect(this.x-2, this.y+2, 4, 4);
     
     fill(255);
     ellipse(275, 160, 140, 100);
     
     fill(255);
     ellipse(198,199,20, 20);
     
     fill(255);
     ellipse(176, 213, 15, 15);
     
     fill(255);
     ellipse(155, 226, 10, 10);
     
     //snow day text
     fill(random(0, 255), random(0, 255), random(0,255));
     textSize(25);
     text("snow day!", 217, 168);
     
     fill(255);   //snow on ground
     rect(0,450, 1000, 50);
     
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
   
    move(){
     //x=0;
     //y=500;
     this.x+=(Math.random()*10);
     this.y+=(Math.random()*5)-8; 
     
     if(this.y==-10){
     this.x+=(Math.random()*10);
     this.y+=(Math.random()*5)-8;
     }
    
   }
   
     appear(){
       //if(a){
         this.x=97;
         this.y=207;
         //show();
         //move();
     //}
   }
     
  
    
  //if(mouseX>x){
     //  x+=(int)(Math.random()*6);
     //}
     
    // if(mouseX<x){
      // x-=(int)(Math.random()*6);  
    //}
     
     //if(mouseY>y){
       //y+=(int)(Math.random()*6);
     //}
     
     //if(mouseY<y){
       //y-=(int)(Math.random()*6);
     //}


   }
   
 
 
