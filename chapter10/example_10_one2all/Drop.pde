class Drop{
  float x, y;
  float speed;
  color c;
  float r;
  
  Drop(){
    r = 6;
    x = random(width);
    y = -r*4;
    speed = random(1,5);
    c = color(50,100,150);
  }
  
  void move(){
    y += speed;
  }
  
  boolean reachBottom(){
    if (y > height + r*4){
      y = -100;
      speed = 0;
      return true;
    }
    else
      return false;
  }
  
  void display(){
    noStroke();
    fill(c);
    for(int i = 1; i < r; i++){
      ellipse(x, y+i*4, i*2, i*2);
    }
  }
  
  void caught(){
    speed = 0;
    y = -100;
  }
}
