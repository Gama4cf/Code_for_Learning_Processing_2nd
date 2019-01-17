void setup(){
  size(400, 200);
}

void draw(){
  background(255);
  stroke(0);
  branch(width/2, height, 200);
}

void branch(float x, float y, float h){
  rectMode(CORNERS);
  rect(x, y, x, y-h);
  if(h > 2){
    branch(x-h/2,y-h/2,h/2);
    branch(x+h/2,y-h/2,h/2);
  }
}
