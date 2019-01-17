void setup(){
  size(400,400);
}
void draw(){
  drawCircle(200, 200, 200);
}

void drawCircle(int x, int y, float radius){
  ellipseMode(RADIUS);
  ellipse(x, y, radius, radius);
  if(radius > 1){
    radius *= 0.8;
    drawCircle(x, y, radius);
  }
}
