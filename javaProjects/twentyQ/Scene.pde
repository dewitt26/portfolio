class Scenes
{
  public void words() {
    fill(0);
    textSize(25);
    text("Click A or B below to start your Myers Briggs Personality Test!", 20, 100);
  }

  public void abKeys() {
    
    noStroke();
    fill(102, 222, 216);
    rect(100, 450, 200, 200);
    fill(0);
    textSize(100);
    text("A",165, 580);
    
    fill(240, 84, 240);
    rect(475, 450, 200, 200);
    fill(0);
    text("B", 545, 580);
    
    fill(255);
    rect(0, 700, 800, 100);
    fill(0);
    textSize(20);
    text("Click here when finished with the test for info on the personality types!",50,750);
  }


  public void results() {
  }
}
