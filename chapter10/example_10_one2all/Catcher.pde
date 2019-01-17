class Catcher{
  float x;
  float y;
  float r;
  
  Catcher(float tempR){
    r = tempR;
    x = 0;
    y = 0;
  }
  
  void setLocation(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
  }
  
  boolean intersect(Drop b){
    float d = dist(x, y, b.x, b.y);
    if(d <= r + b.r)
      return true;
    else
      return false; 
  }
}
