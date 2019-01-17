float x = 100;
float y = 0;

float speedx = 100, speedy = 400;
float gravity = 53;

PFont f;

void setup (){
  size(255,255);
  f = createFont("LithosPro-Regular", 12);
}

void draw(){
  background(255);
  //Draw ball
  fill(x,y,0);
  noStroke();
  ellipse(x,y,10,10);
  textFont(f, 12);
  text("("+int(x)+","+int(y)+")", x+11, y-11);
  //x and y are add gravity
  y = y + speedy;
  x = x + speedx;
  speedy += gravity;
  
  // Bounce back up!
  if(y > height){
    speedy = speedy * -0.1;
    y = height;
  }else if(y < 0){
    speedy *= -0.1;
    y = 0;
  }
    if(x > width){
    speedx = speedx * -0.1;
    x = width;
  }else if(x < 0){
    speedx *= -0.1;
    x = 0;
  }
}
