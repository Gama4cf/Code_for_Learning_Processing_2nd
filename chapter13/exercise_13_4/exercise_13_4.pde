float xtime = 0.0;
float ytime = 100.0;

float increment = 0.01;

void setup(){
  size(200,200);
}

void draw(){
  background(0);
  
  float x = map(noise(xtime),0,1,0,width);
  float y = map(noise(ytime),0,1,0,height);
  
  xtime += increment;
  ytime += increment;
  
  fill(200);
  
  ellipse(100,100, x, y);
}
