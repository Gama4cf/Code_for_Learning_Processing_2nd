int y = 80;
int x = 0;
int spacing = 10;
int len = 20;
int endLegs =200;

void setup(){
  size(200,200);
}

void draw(){
  spacing = constrain(mouseX,1,100);
  background(0);
  stroke(255);
  x = 0; 
  while(x<=endLegs){
    line(x,y,x,y+len);
    x = x + spacing;
  }
}
