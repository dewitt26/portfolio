//Die die, die2, die3, die4, die5, die6, die7, die8, die9,die10, die11, die12, die13,die14, die15, die16,die17,die18,die19,die20,die21,die22,die23,die24,die25;
  private int count1;
  private int count2;
  private int count3;
  private int count4;
  private int count5;
  private int count6;
  private int total;
  
   Die[] dice;
   
   
void setup()
{
 size(620, 700);
  //noLoop();
  
  dice=new Die[25];
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      dice[i*5+j] =new Die(110*i+20, 110*j+20);
    }
  }
}
void draw()
{
   background(0);
 
  for(Die d :dice){
    d.show();
  }
 
  
  if(frameCount%60==0){
   for(Die d :dice){
    d.roll();
    total += d.rand;
  }
  }
  
 
  
fill(255);
textSize(15);
text("Count 1: ", 40, 620); 
text(count1, 120, 620);

fill(255);
textSize(15);
text("Count 2: ", 200, 620); 
text(count2, 280, 620);

fill(255);
textSize(15);
text("Count 3: ", 360, 620); 
text(count3, 440, 620);

fill(255);
textSize(15);
text("Count 4: ", 40, 680); 
text(count4, 120, 680);

fill(255);
textSize(15);
text("Count 5: ", 200, 680); 
text(count5, 280, 680);

fill(255);
textSize(15);
text("Count 6: ", 360, 680); 
text(count6, 440, 680);

fill(255);
textSize(15);
text("Total: ", 500, 650); 
text(total, 550, 650);


fill(255, 255, 255);


//  die=new Die(20, 20);
//  die2=new Die(140,20);
//  die3=new Die(260, 20);
//  die4=new Die(380, 20);
//  die5=new Die(500, 20);
  
//  die6=new Die(20, 130);
//  die7=new Die(140,130);
//  die8=new Die(260, 130);
//  die9=new Die(380, 130);
//  die10=new Die(500, 130);
   
//  die11=new Die(20, 240);
//  die12=new Die(140,240);
//  die13=new Die(260, 240);
//  die14=new Die(380, 240);
//  die15=new Die(500, 240);
  
//  die16=new Die(20, 350);
//  die17=new Die(140,350);
//  die18=new Die(260, 350);
//  die19=new Die(380, 350);
//  die20=new Die(500, 350);
  
//  die21=new Die(20, 460);
//  die22=new Die(140,460);
//  die23=new Die(260, 460);
//  die24=new Die(380, 460);
//  die25=new Die(500, 460);
 
  
  
//  die.show();
//  die2.show();
//  die3.show();
//  die4.show();
//  die5.show();
//  die6.show();
//  die7.show();
//  die8.show();
//  die9.show();
//  die10.show();
//  die11.show();
//  die12.show();
//  die13.show();
//  die14.show();
//  die15.show();
//  die16.show();
//  die17.show();
//  die18.show();
//  die19.show();
//  die20.show();
//  die21.show();
//  die22.show();
//  die23.show();
//  die24.show();
//  die25.show();
  
  

  
  //your code here
}





void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  private int x;
  private int y;
  private int rand;
  
  //variable declarations here
  Die(int x, int y) //constructor
  {

this.x=x;
this.y=y;    

rand=(int)(Math.random()*6)+1;
    
  }
  void roll()
  {
rand=(int)(Math.random()*6)+1;
switch(rand){
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
    
  }

void mousePressed(){
  for(Die d: dice){
    d.roll();
  }
}
  
  
  void show()
  {
  

   
    System.out.println(rand);
    if(rand==1){
   fill(213,101,187);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(x+50, y+50, 20, 20);
    

    }
    
    if(rand==2){
   fill(101,198,213);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(x+75, y+75, 20, 20);
   ellipse(x+25, y+25, 20, 20);
    

    }
    
    if(rand==3){
   fill(108,216,115);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(x+75, y+75, 20, 20);
   ellipse(x+25, y+25, 20, 20);
    ellipse(x+50, y+50, 20, 20);
    

   
    }
 
    if(rand==4){
   fill(239,125,60);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(x+75, y+75, 20, 20);
   ellipse(x+25, y+25, 20, 20);
   ellipse(x+75, y+25, 20, 20);
   ellipse(x+25, y+75, 20, 20);
    



    }
 
    if(rand==5){
   fill(247,80,152);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   
   ellipse(x+75, y+75, 20, 20);
   ellipse(x+25, y+25, 20, 20);
   ellipse(x+50, y+50, 20, 20);
   ellipse(x+75, y+25, 20, 20);
   ellipse(x+25, y+75, 20, 20);

   
    

    }

    if(rand==6){
   fill(218,252,83);
   rect(x, y, 100, 100, 20);
   fill(0, 0, 0);
   ellipse(x+25, y+20, 20, 20);
   ellipse(x+25, y+50, 20, 20);
   ellipse(x+25, y+80, 20, 20);
   ellipse(x+75, y+20, 20, 20);
   ellipse(x+75, y+50, 20, 20);
   ellipse(x+75, y+80, 20, 20);

    
   
    }
  }
  
  
  
  
   }
   
   
  
   
   
   
   
  
