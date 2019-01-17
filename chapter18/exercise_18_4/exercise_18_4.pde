PFont f;

String typing = "";
String answer = "";
int indent = 25;

void setup(){
  size(300, 300);
  f = createFont("Arial", 16);
}

void draw(){
  background(255);
  textFont(f);
  fill(0);
  
  text("u can say anything", indent, 50);
  text(typing, indent, 90);
  if(typing.indexOf("cats") != -1){
    answer = "How do cats make you feel?";
    text(answer, indent, 130);
  } 
}

void keyPressed(){
  typing += key;
}
