class Line{
  float l;
  
  Line(float l_){
    l = l_;
  }
  
  void display(){
    float y = (width-l)/2;
    ellipse(0, -y, 3, 3);
    ellipse(0, y, 3, 3);
    line(0, -y, 0, y);
  }
}
