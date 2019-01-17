float time = 0.0;

void setup(){
  size(200, 200);
}

void draw(){
  background(255);
  time += 0.02;
  
  noStroke();
  fill(0);
  
  float sec = time;
  
  for(int i=0; i<20; i++){
    float y = map(noise(sec), 0, 1, 0 ,height);
    ellipse(i*10, y, 8, 8);
    sec += 0.2;
  }
}
