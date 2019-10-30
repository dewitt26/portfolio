'use strict';

var count1=0;
var count2=0;
var count3=0;
var count4=0;
var count5=0;
var count6=0;
var total=0;
  
var dice= new Array();
   
   
function setup()
{
createCanvas(620, 700);
  //noLoop();
  
  dice=[];
  for(var i=0; i<5; i++){
    for(var j=0; j<5; j++){
      dice[i*5+j] =new Die(110*i+20, 110*j+20);

    }
  console.log(dice);
  }
}
function draw()
{
   background(0);
 
  for(var d of dice){
    d.show();
  }
 
  
  if(frameCount%60==0){
   for(var d of dice){
    d.roll();
    total += d.rand;
  }
  }
  
 
  
fill(255);
textSize(15);
text('Count 1: ', 40, 620); 
text(count1, 120, 620);

fill(255);
textSize(15);
text('Count 2: ', 200, 620); 
text(count2, 280, 620);

fill(255);
textSize(15);
text('Count 3: ', 360, 620); 
text(count3, 440, 620);

fill(255);
textSize(15);
text('Count 4: ', 40, 680); 
text(count4, 120, 680);

fill(255);
textSize(15);
text('Count 5: ', 200, 680); 
text(count5, 280, 680);

fill(255);
textSize(15);
text('Count 6: ', 360, 680); 
text(count6, 440, 680);

fill(255);
textSize(15);
text('Total: ', 500, 650); 
text(total, 550, 650);


fill(255, 255, 255);

}





function mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  constructor(x, y) //constructor
  {

this.x=x;
this.y=y;    

this.rand=floor(Math.random()*6)+1;
    
  }
roll()
  {
this.rand=floor(Math.random()*6)+1;
switch(this.rand){
  case 1:
  count1++;
  break;
  case 2:
  count2++;
  break;
  case 3:
  count3++;
  break;
  case 4:
  count4++;
  break;
  case 5:
  count5++;
  break;
  case 6:
  count6++;
  break;
}
    


/*function mousePressed(){
  for(var d of dice){
    d.roll();
  }
}*/
  
  }
 show()
  {
  

   
    
    if(this.rand==1){
   fill(213,101,187);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(this.x+50, this.y+50, 20, 20);
    

    }
    
    if(this.rand==2){
   fill(101,198,213);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(this.x+75, this.y+75, 20, 20);
   ellipse(this.x+25, this.y+25, 20, 20);
    

    }
    
    if(this.rand==3){
   fill(108,216,115);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(this.x+75, this.y+75, 20, 20);
   ellipse(this.x+25, this.y+25, 20, 20);
    ellipse(this.x+50, this.y+50, 20, 20);
    

   
    }
 
    if(this.rand==4){
   fill(239,125,60);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(this.x+75, this.y+75, 20, 20);
   ellipse(this.x+25, this.y+25, 20, 20);
   ellipse(this.x+75, this.y+25, 20, 20);
   ellipse(this.x+25, this.y+75, 20, 20);
    



    }
 
    if(this.rand==5){
   fill(247,80,152);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   
   ellipse(this.x+75, this.y+75, 20, 20);
   ellipse(this.x+25, this.y+25, 20, 20);
   ellipse(this.x+50, this.y+50, 20, 20);
   ellipse(this.x+75, this.y+25, 20, 20);
   ellipse(this.x+25, this.y+75, 20, 20);

   
    

    }

    if(this.rand==6){
   fill(218,252,83);
   rect(this.x, this.y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(this.x+25, this.y+20, 20, 20);
   ellipse(this.x+25, this.y+50, 20, 20);
   ellipse(this.x+25, this.y+80, 20, 20);
   ellipse(this.x+75, this.y+20, 20, 20);
   ellipse(this.x+75, this.y+50, 20, 20);
   ellipse(this.x+75, this.y+80, 20, 20);

    
   
    }
  
  
  
  
  
   }
}