PFont f;

String typing = "";
String saved = "";

void setup(){
  size(300, 300);
  f = createFont("Arial", 16);
}

void draw(){
  background(255);
  int indent = 25;
  textFont(f);
  fill(0);
  
  text("return to saved what u hit", indent, 50);
  text(typing, indent, 90);
  text(saved, indent, 130);
}

void keyPressed(){
  if(key == '\n'){
    saved = typing;
    typing = "";
  }else{
    typing += key;
  }
}
