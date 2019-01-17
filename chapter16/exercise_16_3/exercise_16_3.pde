import processing.video.*;
Capture video;
float x, y;

void setup(){
  size(640, 480);
  background(0);
  x = width/2;
  y = height/2;
  video = new Capture(this, 640, 480);
  video.start();
}

void captureEvent(Capture video){
  video.read();
}

void draw(){
  video.loadPixels();
  
  float newx = constrain(x+random(-30,30), 0 ,width-1);
  float newy = constrain(y+random(-30,30), 0 ,height-1);
  int midx = int((newx+x)/2), midy = int((newy+y)/2);
  color c = video.pixels[(width-1-midx)+midy*video.width];
  
  stroke(c);
  strokeWeight(4);
  line(x, y, newx, newy);
  
  x = newx;
  y = newy;
}
