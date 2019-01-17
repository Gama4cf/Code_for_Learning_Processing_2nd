class Cell{
  float x, y;
  float w, h;
  float angle;
  
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle){
    x = tempX;
    y = tempY;
    w = tempH;
    h = tempH;
    angle = tempAngle;
  }
  
  void oscillate(){
    angle += 0.02;
  }
  
  void display(){
    stroke(255);
    float bright = map(sin(angle),-1,1,0,255);
    fill(bright);
    rect(x,y,w,h);
  }
}
