'use strict';

var sArray =new Array();
var nArray =new Array();
var rArray =new Array();
var oArray =new Array();
var jArray =new Array();


//var img=new Image();
//img.src("rocket2.png");

function setup(){
  
  //createCanvas(1000,1000);
  var canvas = createCanvas(800, 800);
    canvas.parent('sketch-div');
  
  for(var i=0; i<1000; i++){
    sArray[i]=new StarParticle();
  }
  for(var i=0; i<1500; i++){
    nArray[i]=new NormalParticle();
  }
  for(var i=0; i<50; i++){
    rArray[i]=new RandomParticle();
  }
  for(var i=0; i<3;i++){
   oArray[i]=new OddballParticle(); 
  }
  for(var i=0; i<2; i++){
   jArray[i]=new JumboParticle(); 
  }
  
}
function draw(){
  
  background(0);
   for(var i=0;i<1000; i++){
    sArray[i].show();
    sArray[i].move();
  }  
  for(var i=0;i<1500; i++){
    nArray[i].show();
    nArray[i].move();
  }  
  for(var i=0;i<50; i++){
    rArray[i].show();
    rArray[i].move();
  } 
  for(var i=0; i<3; i++){
    oArray[i].show();
    oArray[i].move();
  }
  for(var i=0; i<2; i++){
    jArray[i].show();
    jArray[i].move();
  }
 // img.drawImg();
}


class OddballParticle//uses an interface
{
 
  
  constructor(){
   
  this.x=width/2;
  this.y=height/2;
  this.speed=Math.random()*20;
  this.angle=(Math.PI*5)*Math.random()*6;
      this.t=0;
      this.r;
      this.g;
      this.b;
  }
  move(){
  this.x+=Math.cos(this.angle)*this.speed;
  this.y+=Math.sin(this.angle)*this.speed;
  this.angle+=.01;
  
  if(this.x>580){
    this.x=580;
  }else if(this.x<80){
    this.x=80;
  }
  
   if(this.y>580){
    this.y=580;
  }else if(this.y<80){
    this.y=80;
  } 
  }
 show(){
  noStroke();
 colorMode(HSB, [300]);
 

   fill(90,255,190);
  ellipse(floor(this.x), floor(this.y-23),20, 30);

  fill(255);
  ellipse(floor(this.x), floor(this.y), 50, 20);
  
   fill(0,0,0);
  ellipse(floor(this.x+5), floor(this.y-26),5, 10);
  
   fill(0,0,0);
  ellipse(floor(this.x-5), floor(this.y-26),5, 10);
  
   fill(280,385,135);
   ellipse(floor(this.x), floor(this.y), 8,8);
   
   fill(280,385,135);
   ellipse(floor(this.x+15), floor(this.y), 8,8);
   
   fill(280,385,135);
   ellipse(floor(this.x-15), floor(this.y), 8,8);
  
  
  
 
}

randomColor(){
 this.r=(floor(Math.random()*155 +100));
 this.g=(floor(Math.random()*155 +100));
 this.b=(floor(Math.random()*155 +100));
  
}
  
  


}



class JumboParticle extends OddballParticle//uses inheritance
{

  
  constructor(){
  super();
  this.x=width/2;
  this.y=height/2;
 this.speed=Math.random()*20;
  this.angle=(Math.PI*5)*Math.random()*6;
  this.r;
  this.g;
  this.b;
this.t=0;
  }
   move(){
   this.x+=Math.cos(this.angle)*this.speed*3;
  this.y+=Math.sin(this.angle)*this.speed;
  this.angle+=.01;
  
  if(this.x>999){
    this.x=999;
  }else if(this.x<10){
    this.x=10;
  }
  
   if(this.y>999){
    this.y=999;
  }else if(this.y<10){
    this.y=10;
  } 
  }
show(){
   noStroke();
  if(this.t==0){
  this.randomColor();
  this.t=300;
  }
  this.t++;
  colorMode(HSB);
  fill(this.r,this.g,this.b);
  ellipse(this.x, this.y, 40,40);
}

 randomColor(){
 this.r=(floor(Math.random()*155 +100));
 this.g=(floor(Math.random()*155 +100));
 this.b=(floor(Math.random()*155 +100));
  
}

}



class NormalParticle{



constructor(){
  this.x=width/2;
  this.y=height/2;
  this.speed=Math.random()*20;
  this.angle=(Math.PI*5)*Math.random()*6;
    this.r;
    this.g;
    this.b;
    this.t=0;
  
}
move(){
  this.x+=Math.cos(this.angle)*this.speed*3;
  this.y+=Math.sin(this.angle)*this.speed;
  this.angle+=.01;
  
  if(this.x>999){
    this.x=999;
  }else if(this.x<1){
    this.x=1;
  }
  
   if(this.y>999){
    this.y=999;
  }else if(this.y<1){
    this.y=1;
  } 
}

show(){
  noStroke();
  if(this.t==0){
  this.randomColor();
  this.t=300;
  }
  this.t++;
 
  colorMode(HSB);
  fill(this.r,this.g,this.b);
  ellipse(floor(this.x), floor(this.y), 5,5);
}

 randomColor(){
 this.r=(floor(Math.random()*155 +100));
 this.g=(floor(Math.random()*155 +100));
 this.b=(floor(Math.random()*155 +100));
  
}
  
  
}





class RandomParticle{

constructor(){
  this.x=width/2;
  this.y=height/2;
  this.speed=Math.random()*20;
  this.angle=((Math.PI/2)+25)*Math.random();
    this.r;
    this.g;
    this.b;
    this.t=0;
}
 move(){
  this.x+=Math.cos(this.angle)*this.speed;
  this.y+=Math.tan(this.angle)*this.speed*2;
  this.angle+=.01;
  
  if(this.x>999){
    this.x=999;
  }else if(this.x<1){
    this.x=1;
  }
  
   if(this.y>999){
    this.y=999;
  }else if(this.y<1){
    this.y=1;
  } 
}

show(){
  noStroke();
  if(this.t==0){
  this.randomColor();
  this.t=300;
  }
  this.t++;
 // println(t);
 colorMode(HSB);
  //blendMode(LIGHTEST);
  fill(this.r,this.g,this.b);
  ellipse(floor(this.x), floor(this.y), 10,10);
}

randomColor(){
 this.r=(floor(Math.random()*155 +100));
 this.g=(floor(Math.random()*155 +100));
 this.b=(floor(Math.random()*155 +100));
  
}
  
  
}




//class Image {
  //PImage img;
  //var imgX=180, imgY=0;
  //var xPos=5000;
  //var xDir=1;
  //var yPos=950;
  //var yDir=1;
  
 //constructor(){
 //}
 
 //void drawImg(){
 
 //img=loadImage("rocket2.png");
 
  //image(img, 450, this.Pos, 75, 150);
//this.yPos=this.yPos-this.yDir;
  //if (this.yPos<-5)
  //{
    //this.yPos=980;
  //}
  //else
  //{
    //this.yPos--;
    
  //}
 //}

//}




class StarParticle{



constructor(){
  this.x=width/2;
  this.y=height/2;
    this.speed=Math.random()*20;
  this.angle=(Math.PI*5)*Math.random()*6;
    this.r;
    this.g;
    this.b;
    this.t=0;

}
move(){
  this.x+=Math.cos(this.angle)*this.speed*3;
  this.y+=Math.sin(this.angle)*this.speed;
  this.angle+=.01;
  
  if(this.x>999){
    this.x=999;
  }else if(this.x<1){
    this.x=1;
  }
  
   if(this.y>999){
    this.y=999;
  }else if(this.y<1){
    this.y=1;
  } 
}

 show(){
  noStroke();
  if(this.t==0){
  this.randomColor();
  this.t=300;
  }
  this.t++;
 
  fill(255);
  ellipse(floor(this.x), floor(this.y), 3,3);
}

randomColor(){
 this.r=(floor(Math.random()*155 +100));
 this.g=(floor(Math.random()*155 +100));
 this.b=(floor(Math.random()*155 +100));
  
}
  
  
}

