//private float fractionLength = .8;
private int smallestBranch = 10;
private float branchAngle = .2;  
private int trees=0;

//private boolean a=false;

public void setup() {  

  size(1200, 800); 
  noLoop();
  
}

public void draw() {  
  background(0);   
  
  translate(270, height);
  stroke(245, 192, 106); //orange
  drawBranches(220);

  translate(-20, 0);
  stroke(255, 150, 208); //pink
  drawBranches(160);

  translate(-150, 0);
  stroke(218, 160, 227); //purple
  drawBranches(90);
 
  translate(350, 0);
  stroke(170, 224, 139); //green
  drawBranches(120);
 
  translate(250, 0);
  stroke(250, 126, 126); //red
  drawBranches(240);
 
  stroke(137, 190, 242); //blue
  drawBranches(170);

  stroke(250, 247, 167); //yellow
  drawBranches(90);
  }
  


public void drawBranches(float len) {  
  
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len>3) {
    pushMatrix();
    rotate(branchAngle*2.9);
    drawBranches(len*.7);
    popMatrix();
    pushMatrix();
    rotate(-(branchAngle*2.9));
    drawBranches(len*.7);
    popMatrix();
    
  }
  translate(50, len);
  }
  
 
