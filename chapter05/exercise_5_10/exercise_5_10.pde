float x = 100;
float y = 0;

float speedx = 0, speedy = 0;
float gravity = 1;

void setup (){
  size(255,255);
}

void draw(){
  background(255);
  //Draw ball
  fill(x,y,0);
  noStroke();
  ellipse(x,y,10,10);
  //x and y are add gravity
  y = y + speedy;
  x = x + speedx;
  speedy += gravity;
  speedx += gravity;
  
  // Bounce back up!
  if(y > height){
    speedy = speedy * -1;
    y = height;
  }else if(y < 0){
    speedy *= -1;
    y = 0;
  }
    if(x > width){
    speedx = speedx * -1;
    x = width;
  }else if(x < 0){
    speedx *= -1;
    x = 0;
  }
}
