class Star{
  PShape s;
  float x, y;
  
  Star(float x_, float y_){
    
    x = x_;
    y = y_;
    //shape star 
    s = createShape();
    s.beginShape();
    s.fill(102);
    s.stroke(0);
    s.strokeWeight(2);
    //vertex
    s.vertex(0, -50);
    s.vertex(14, -20);
    s.vertex(47, -15);
    s.vertex(23, 7);
    s.vertex(29, 40);
    s.vertex(0, 25);
    s.vertex(-29, 40);
    s.vertex(-23, 7);
    s.vertex(-47, -15);
    s.vertex(-14, -20);
    s.endShape(CLOSE);
  }
  
  void move(){
    x += random(-1,1);
    y += random(-1,1);
  }
  
  void display(){
    //push
    pushMatrix();
    //translate
    translate(x, y);
    //draw
    shape(s);
    //pop
    popMatrix();
  }
}
