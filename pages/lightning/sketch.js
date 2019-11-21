'use strict';

//create global vars here
var img= new Image(100,200);
img.src = 'cloudd.png';

var startX;
var startY;
var endX;
var endY;
var imgX=180;
var imgY=0;
//PImage photo;
var size;
var startTime;


//preload data if needed
//function preload() {
//}

function setup() {
    var canvas = createCanvas(500, 500);
    canvas.parent('sketch-div');
img=loadImage("cloudd.png");
  startX=250;
    startY=0;
    endX= 450;
    endY=450;
   // rain=10;
    //createCanvas(500,500);
    strokeWeight(3);
    background('030303');

}

function draw() {
 
        fill(0,0,0,25);
  rect(-5,-5,520,520);
  stroke('F40BAA');
  while(endX<500){
  endX=startX+(int)((Math.random()*19)-9);
  endY=startY+(int)((Math.random()*10));
  line(startX, startY, endX, endY);
  startX=endX;
  startY=endY;
   image(img, imgX, imgY, 150, 100);
  
  }
    
    
    //var timeCount = millis() - startTime; 
  if (frameCount%5==0) {
    //startTime = millis();
    reset();
  }
}


function reset() {
  startX=250;
  startY=0;
  endX=450;
  endY=450;
}
                
//function mousePressed() {

//}
    
    

 
function drawImg(){
 
 img=loadImage("cloudd.png");
 image(img, imgX, imgY, 150, 100);
 
 }




