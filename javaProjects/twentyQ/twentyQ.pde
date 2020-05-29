//Charlie Huang helped me with some issues on this lab

Scenes sc = new Scenes();
BST tree1 = new BST();
String s;
TreeNode current;
boolean start=false;
boolean questions=true;
PImage image;

void setup() {
  image=loadImage("MyersBriggsTypes.png");
  size(800, 800);
  background (174, 189, 178);
  introScene();
  current=tree1.buildTree();
}

void draw() {
}

void mousePressed() {
  s=(String)current.getValue();
  if (start==false) {
    start=true;
    sceneOne();
  } else if (questions==false) {
     resultsSlide();
  } else {
    if (mouseX>=100&&mouseX<=475&&mouseY>=450&&mouseY<=580) {
      current=current.getLeft();
      s=(String)current.getValue();
      sceneOne();
    }

    if (mouseX>=475&&mouseX<=850&&mouseY>=450&&mouseY<=580) {
      current=current.getRight();
      s=(String)current.getValue();
      sceneOne();
      }
    if(mouseX>=0 && mouseX<=800&& mouseY>=700){
      resultsSlide();
    }
    }
   
  }


void resultsSlide() {
  background(174, 189, 178);
 image(image, 0, 200, 800, 400);
}

void introScene() {
  sc.words();
  sc.abKeys();
}

void sceneOne() {
  background(174, 189, 178);
  sc.abKeys();
  textSize(20);
  text(s, 30, 150);
  fill(255);
  
  rect(0, 700, 800, 100);
  fill(0);
  textSize(20);
  text("Click here when finished with the test for info on the personality types!",50,750);
}



public interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
