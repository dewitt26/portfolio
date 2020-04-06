String a;
String b;

boolean c=false;

Image img=new Image();
Image img2=new Image();
Image img3=new Image();
Image img4=new Image();


void setup() {
  size(900, 800);

  MarkovChain mc=new MarkovChain();
  MarkovChain mc2=new MarkovChain();

  String [] str=loadStrings("playlist.txt");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  mc2.trainMap(cleanText);

  for (String s : cleanText) {
    a = mc.generateText(s);
    //b = mc2.generateText(s);
    //println(mc.generateText(s));
    //println(mc.generateText2(2));
  }
  mc.printMap();
}


void draw() {
  background(0);
  textSize(40);
  text("My Playlist", 300, 50);
  textSize(30);
  fill(200);
  text("Sample lyrics using compilaion of songs: ", 50, 100);

  if (c==true) {
    textSize(20);
    text(a, 50, 140);
  }

  textSize(30);
  text("Artists included in my playlist: ", 50, 350);
  textSize(20);
  text("*Ajr", 50, 390);
  text("*Jon Bellion", 50, 420);
  text("*Noah Kahan", 50, 450);
  text("*Quinn XCII", 50, 480);
  text("*ayokay", 50, 510);
  //text(b, 100, 200);

  img.drawImg();
  img2.drawImg();
  img3.drawImg();
  img4.drawImg();
}

void mousePressed() {
  if (mouseX>100 && mouseX<700) {
    if (c==true) {
      c=false;
      MarkovChain mc=new MarkovChain();
      String [] str=loadStrings("playlist.txt");
      String allText=join(str, " ");
      String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
      mc.trainMap(cleanText);
      //mc2.trainMap(cleanText);

      for (String s : cleanText) {
        a = mc.generateText(s);
        //b = mc2.generateText(s);
        //println(mc.generateText(s));
        //println(mc.generateText2(2));
      }
    } else {
      c=true;
    }
  }
}
