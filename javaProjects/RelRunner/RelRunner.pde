void setup(){
  
  Relatives r = new Relatives();
  String [] str = loadStrings("rels.txt");
  
  for(String s: str) {
    r.setPersonRelative(s);
  }
  println(r);
}
