import processing.video.*;
Capture video;
int pointillize = 16;

void setup(){
  size(640, 480);
  printArray(Capture.list());
  video = new Capture(this, 640, 480);
  video.start();
  background(0);
}

void captureEvent(Capture video){
  video.read();
}

void draw(){
  int x = int(random(video.width));
  int y = int(random(video.height));
  println(video.width);
  println(video.height);
  int loc = x + y*video.width;
  
  video.loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);
  
  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize);
}
