class Cell{
  float x, y;
  float w, h;
  int state;
  
  Cell(float x_, float y_, float w_, float h_){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    state = 0;
  }
  
  void click(){
    state = (state+1) % 3;
  }
  
  void display(){
    fill(100);
    if(state == 0){
      rect(x, y, w, h);
    }else if(state == 1){
      ellipse(x+w/2, y+h/2, w, h);
    }else if(state == 2){
      line(x, y, x+w, y+h);
      line(x, y+h, x+h, y);
    }
  }
}
