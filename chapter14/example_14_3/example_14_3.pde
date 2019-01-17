float z = 0;

void setup(){
  size(200, 200, P3D);
}

void draw(){
  background(0);
  stroke(255);
  fill(0);
  
  translate(width/2, height/2, z);
  rectMode(CENTER);
  rect(0,0,8,8);
  
  z++;
}
