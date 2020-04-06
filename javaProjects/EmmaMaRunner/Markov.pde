import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {   
    for (int i=0; i<str.length-1; i++) {
      String currentWord=str[i];
      String nextWord=str[i+1];
      if (myMap.get(currentWord)==null) {
        myMap.put(currentWord, new ArrayList<String>());
      }
      myMap.get(currentWord).add(nextWord);
    }
  }

  String commonWord(String [] str){
    String common="";
    
    
    return common;
    
    
  }

  String generateText(String str) {

    String newString = "";
    int randomIndex= 0;
    int randomIndex2= 0;
    int randomIndex3=0;
    int randomIndex4=0;
    int randomIndex5=0;
    int randomIndex6= 0;
    int randomIndex7= 0;
    int randomIndex8=0;
    int randomIndex9=0;
    int randomIndex10=0;
    int randomIndex11= 0;
    int randomIndex12= 0;
    int randomIndex13=0;
    int randomIndex14=0;
    int randomIndex15=0;
    int randomIndex16=0;
    int randomIndex17= 0;
    int randomIndex18= 0;
    int randomIndex19=0;
    int randomIndex20=0;
    int randomIndex21=0;
    int randomIndex22= 0;
    int randomIndex23=0;
    int randomIndex24=0;
    int randomIndex25=0;
    int randomIndex26= 0;
    int randomIndex27= 0;
    int randomIndex28=0;
    int randomIndex29=0;
    int randomIndex30=0;
    int randomIndex31= 0;
    int randomIndex32= 0;
    int randomIndex33=0;
    int randomIndex34=0;
    int randomIndex35=0;
    int randomIndex36= 0;
    int randomIndex37= 0;
    int randomIndex38=0;
    int randomIndex39=0;
    int randomIndex40=0;
    int randomIndex41=0;
    int randomIndex42= 0;
    int randomIndex43= 0;
    int randomIndex44=0;
    int randomIndex45=0;





    if (myMap.containsKey(str)) {
      randomIndex=getRandomIndex(str);
      randomIndex2=getRandomIndex(str);
      randomIndex3=getRandomIndex(str);
      randomIndex4=getRandomIndex(str);
      randomIndex5=getRandomIndex(str);
      randomIndex6=getRandomIndex(str);
      randomIndex7=getRandomIndex(str);
      randomIndex8=getRandomIndex(str);
      randomIndex9=getRandomIndex(str);
      randomIndex10=getRandomIndex(str);
      randomIndex11=getRandomIndex(str);
      randomIndex12=getRandomIndex(str);
      randomIndex13=getRandomIndex(str);
      randomIndex14=getRandomIndex(str);
      randomIndex15=getRandomIndex(str);
       randomIndex16=getRandomIndex(str);
      randomIndex17=getRandomIndex(str);
      randomIndex18=getRandomIndex(str);
      randomIndex19=getRandomIndex(str);
      randomIndex20=getRandomIndex(str);
      randomIndex21=getRandomIndex(str);
      randomIndex22=getRandomIndex(str);
      randomIndex23=getRandomIndex(str);
      randomIndex24=getRandomIndex(str);
      randomIndex25=getRandomIndex(str);
      randomIndex26=getRandomIndex(str);
      randomIndex27=getRandomIndex(str);
      randomIndex28=getRandomIndex(str);
      randomIndex29=getRandomIndex(str);
      randomIndex30=getRandomIndex(str);
      randomIndex31=getRandomIndex(str);
      randomIndex32=getRandomIndex(str);
      randomIndex33=getRandomIndex(str);
      randomIndex34=getRandomIndex(str);
      randomIndex35=getRandomIndex(str);
       randomIndex36=getRandomIndex(str);
      randomIndex37=getRandomIndex(str);
      randomIndex38=getRandomIndex(str);
      randomIndex39=getRandomIndex(str);
      randomIndex40=getRandomIndex(str);
      randomIndex41=getRandomIndex(str);
      randomIndex42=getRandomIndex(str);
      randomIndex43=getRandomIndex(str);
      randomIndex44=getRandomIndex(str);
      randomIndex45=getRandomIndex(str);
      
      

      newString+=str+" "+myMap.get(str).get(randomIndex)+" ";
      newString=(myMap.get(str).get(randomIndex2))+ " "+ (myMap.get(str).get(randomIndex3)+ " "+ (myMap.get(str).get(randomIndex4))+ " "+ (myMap.get(str).get(randomIndex5))+ " "+(myMap.get(str).get(randomIndex6))+" " + (myMap.get(str).get(randomIndex7))+ " " + (myMap.get(str).get(randomIndex8))+ " " + (myMap.get(str).get(randomIndex9))+ "\n " + (myMap.get(str).get(randomIndex10))+ " "+ (myMap.get(str).get(randomIndex11))+ " " + (myMap.get(str).get(randomIndex12))+ " " + (myMap.get(str).get(randomIndex13))+ 
      " "+ (myMap.get(str).get(randomIndex14))+ " "+ (myMap.get(str).get(randomIndex15))+ " " + (myMap.get(str).get(randomIndex16))+ " "+ (myMap.get(str).get(randomIndex17))+ " "+ (myMap.get(str).get(randomIndex18))+ " " + (myMap.get(str).get(randomIndex19))+ " \n" + (myMap.get(str).get(randomIndex20))+ " "+ (myMap.get(str).get(randomIndex21))+ " " + (myMap.get(str).get(randomIndex22))+ " " + (myMap.get(str).get(randomIndex23))+ " " + (myMap.get(str).get(randomIndex24))+ " " + (myMap.get(str).get(randomIndex25))
      +" "+(myMap.get(str).get(randomIndex26))+" "+(myMap.get(str).get(randomIndex27))+" "+(myMap.get(str).get(randomIndex28))+" "+(myMap.get(str).get(randomIndex29))+" "+(myMap.get(str).get(randomIndex30))+"\n "+(myMap.get(str).get(randomIndex31))+" "+(myMap.get(str).get(randomIndex32))+" "+(myMap.get(str).get(randomIndex33))+" "+(myMap.get(str).get(randomIndex34))+" "+(myMap.get(str).get(randomIndex35))+" "+(myMap.get(str).get(randomIndex36))+" "+(myMap.get(str).get(randomIndex37))
      +" "+(myMap.get(str).get(randomIndex38))+" "+(myMap.get(str).get(randomIndex39))+" \n"+(myMap.get(str).get(randomIndex40))+" "+(myMap.get(str).get(randomIndex41))+" "+(myMap.get(str).get(randomIndex42))+" "+(myMap.get(str).get(randomIndex43))+" "+(myMap.get(str).get(randomIndex44))+" "+(myMap.get(str).get(randomIndex45)));
    }
    return newString;
  }


  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }

  void printMap() {
    println(myMap);
  }


  public String toString() {
    return "" + wordList;
  }
}
