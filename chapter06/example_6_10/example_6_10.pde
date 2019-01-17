int x=100;
int y=100;
int w= 60;
int h=60;
int eyeSize=16;
int speed=1;

void setup(){
  size(200,200);
}

void draw(){
  x += speed;
  if(x >= width || x < 0){
    speed *= -1;
  }
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  for(int i = y+5; i<y+h; i+=10){
    stroke(0);
    line(x-w/3,i,x+w/3,i);
  }
  //body
  stroke(0);
  fill(175);
  rect(x,y,w/6,h*2);
  //head
  fill(255);
  ellipse(x,y-h/2,w,h);
  //eye
  fill(x,y,0);
  ellipse(x-w/3,y-h/2,eyeSize,eyeSize*2);
  ellipse(x+w/3,y-h/2,eyeSize,eyeSize*2);
  //legs
  stroke(0);
  line(x-w/12,y+h,x-w/4,y+h+10);
  line(x+w/12,y+h,x+w/4,y+h+10);
}
