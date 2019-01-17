String info = "A long long time ago\nIn a galaxy far far away";
PFont f;
float y=0;

void setup(){
  size(400, 200, P3D);
  y = height;
}

void draw(){
  background(255);
  float fontSize = map(y, 0, height, 1, 100);
  f = createFont("Arial", fontSize);
  fill(0);
  translate(width/2,y);
  rotateX(PI/4);
  textFont(f);
  textAlign(CENTER);
  text(info, 0, 0);
  if(--y < 0){
    noLoop();
  }
}
