Star[] stars;

void setup(){
  size(400, 400);
  stars = new Star[20];
  for(int i=0; i<stars.length; i++){
    stars[i] = new Star((int)random(width),(int)random(height));
  }
}

void draw(){
  background(175);
  for(int i=0; i<stars.length; i++){
    stars[i].display();
    stars[i].move();
  }
}
