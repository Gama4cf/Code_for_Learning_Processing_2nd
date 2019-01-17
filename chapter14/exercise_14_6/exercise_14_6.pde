Line line;

void setup(){
  size(200, 200, P3D);
  line = new Line(100);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  float r = map(mouseX, 0, width, 0, TWO_PI);
  rotateX(r);
  rotateZ(r);
  line.display();
}
