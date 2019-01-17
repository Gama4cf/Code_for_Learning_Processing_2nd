import processing.video.*;
Capture video;

void setup(){
  size(640, 480);
  printArray(Capture.list());
  video = new Capture(this, Capture.list()[0]);
  video.start();
}

void captureEvent(Capture video){
  video.read();
}

void draw(){
  background(255);
  tint(mouseX, mouseY, 255);
  translate(width/2, height/2);
  imageMode(CENTER);
  rotate(0);
  image(video, 0, 0, 640, 480);
}
