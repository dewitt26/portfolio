//////////////splitTokens
String [] w;
String [] w2;
String [] w3;
String s= new String();
String s2=new String();
String s3=new String();
String[]words;

//WordList wList;
//ArrayList myList= new ArrayList();
StringParser sp = new StringParser();

int wc;
int vc;
int sc;
int syc;
float fl;
float fle;

int wc2;
int vc2;
int sc2;
int syc2;
float fl2;
float fle2;

int wc3;
int vc3;
int sc3;
int syc3;
float fl3;
float fle3;

boolean reveal=false;
boolean reveal2=false;
boolean reveal3=false;

PImage image;
PImage image2;
PImage image3;

void setup() {

  image= loadImage("littleW.png");
   image2= loadImage("prideP.png");
    image3= loadImage("emC.png");
  size(1000, 700);
  String one="Hello, I am nine syllables long. And it is great!";
  w=loadStrings("C:\\Users\\dewit\\OneDrive\\Desktop\\wordCloudDewitt\\lit.txt");
   w2=loadStrings("C:\\Users\\dewit\\OneDrive\\Desktop\\wordCloudDewitt\\pride.txt");
    w3=loadStrings("C:\\Users\\dewit\\OneDrive\\Desktop\\wordCloudDewitt\\em.txt");
  String s=join(w," ");
  String s2=join(w2," ");
  String s3=join(w3, " ");
 
  vc=sp.countVowels(s);
 wc= sp.countWords(s);
  sc=sp.countSentences(s);
 syc= sp.countSyllables(s);
 fl=sp.fleschReadability(s);
 fle=sp.ease(s);
 
  vc2=sp.countVowels(s2);
 wc2= sp.countWords(s2);
  sc2=sp.countSentences(s2);
 syc2= sp.countSyllables(s2);
 fl2=sp.fleschReadability(s2);
 fle2=sp.ease(s2);
 
 vc3=sp.countVowels(s3);
 wc3= sp.countWords(s3);
  sc3=sp.countSentences(s3);
 syc3= sp.countSyllables(s3);
 fl3=sp.fleschReadability(s3);
 fle3=sp.ease(s3);

}

void draw(){
  background(0);
  
  
  
  fill(125, 31, 56);
  rect(100, 300, 200, 380);
  textSize(60);
  text("Classic Book Information", 135, 100);
  
  fill(255);
  textSize(15);
  
  
  
  text("Little Women", 150, 360);
  
  text("Word Count: ", 110, 400);
  text(" "+wc, 200, 400);
  
  text("Sentence Count: ", 110, 440);
  text(sc, 240,440);
  
  text("Vowel Count: ", 110, 480);
  text(vc, 210, 480);
  
  text("Sentence Count: ", 110, 520);
  text(sc, 230, 520);
  
  text("Syllable Count: ", 110, 560);
  text(syc, 230, 560);
  
  text("Flesh Grade Level: ", 110, 600);
  text(fl, 240, 600);
  
  text("Flesch Ease: ", 110, 640);
  text(fle, 210, 640);
  
  if(reveal==true){
    image(image,100,300, 200,380);
    System.out.println("x" + mouseX);
    System.out.println("y" + mouseY);
  }
    
  fill(125, 31, 56);
  rect(400, 300, 200, 380);
  
  fill(255);
  textSize(15);
  
  text("Pride and Prejudice", 430, 360);
  
  text("Word Count: ", 410, 400);
  text(" "+wc2, 500, 400);
  
  text("Sentence Count: ", 410, 440);
  text(sc2, 540,440);
  
  text("Vowel Count: ", 410, 480);
  text(vc2, 510, 480);
  
  text("Sentence Count: ", 410, 520);
  text(sc2, 530, 520);
  
  text("Syllable Count: ", 410, 560);
  text(syc2, 530, 560);
  
  text("Flesh Grade Level: ", 410, 600);
  text(fl2, 540, 600);
  
   text("Flesch Ease: ", 410, 640);
  text(fle2, 510, 640);
  
  if(reveal2==true){
    image(image2,400,300, 200,380);
   
  }
  
  fill(125, 31, 56);
  rect(700, 300, 200, 380);
  
   fill(255);
  textSize(15);
  
  text("Emma", 770, 360);
  
  text("Word Count: ", 710, 400);
  text(" "+wc3, 800, 400);
  
  text("Sentence Count: ", 710, 440);
  text(sc3, 840,440);
  
  text("Vowel Count: ", 710, 480);
  text(vc3, 810, 480);
  
  text("Sentence Count: ", 710, 520);
  text(sc3, 830, 520);
  
  text("Syllable Count: ", 710, 560);
  text(syc3, 830, 560);
  
  text("Flech Readability: ", 710, 600);
  text(fl3, 840, 600);
  
  text("Flesch Ease: ", 710, 640);
  text(fle, 810, 640);
  
  if(reveal3==true){
    image(image3,700,300, 200,380);
    
  }
  
  }
  







void mousePressed() {
 // if(mouseX>00 && mouseX<100 && mouseY<100 && mouseY>200){
   if(mouseX>200){
    reveal=true;
  }
  if(mouseX<800 && mouseX>300){
   reveal2=true; 
  }
  if(mouseX<800 && mouseX>600){
   reveal3=true; 
  }


}
 
