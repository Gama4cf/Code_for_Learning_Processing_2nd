float y = 100;

void setup(){
  size(200,200);
}

void draw(){
  background(0);
  float r = random(1);
  stroke(0);
  if(r < 0.2){
    y++;
  }else if(r < 0.3){
    y--;
  }
  ellipse(width/2, y, 16, 16);
}
