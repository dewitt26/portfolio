StarParticle[] sArray;
NormalParticle[] nArray;
RandomParticle[] rArray;
OddballParticle[] oArray;
JumboParticle[] jArray;

Image img=new Image();

void setup(){
  
  size(1000,1000);
  sArray=new StarParticle[1000];
  nArray=new NormalParticle[1500];
  rArray=new RandomParticle[50];
 oArray=new OddballParticle[3];
  jArray=new JumboParticle[2];
  
  for(int i=0; i<sArray.length; i++){
    sArray[i]=new StarParticle();
  }
  for(int i=0; i<nArray.length; i++){
    nArray[i]=new NormalParticle();
  }
  for(int i=0; i<rArray.length; i++){
    rArray[i]=new RandomParticle();
  }
  for(int i=0; i<jArray.length; i++){
   jArray[i]=new JumboParticle(); 
  }
   for(int i=0; i<oArray.length;i++){
   oArray[i]=new OddballParticle(); 
  }
  
}
void draw(){
  
  background(0);
   for(int i=0;i<sArray.length; i++){
    sArray[i].show();
    sArray[i].move();
  }  
  for(int i=0;i<nArray.length; i++){
    nArray[i].show();
    nArray[i].move();
  }  
  for(int i=0;i<rArray.length; i++){
    rArray[i].show();
    rArray[i].move();
  } 
 
  for(int i=0; i<jArray.length; i++){
    jArray[i].show();
    jArray[i].move();
  }
   for(int i=0; i<oArray.length; i++){
    oArray[i].show();
    oArray[i].move();
  }
  img.drawImg();
}
interface Particle{

  void show();
  void move();
}
