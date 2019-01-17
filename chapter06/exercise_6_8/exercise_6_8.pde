int a, b, c;
void setup(){
  size(200,200);
}
void draw(){
  for(int x=0; x<width; x+=10){
    for(int y=0; y<height; y+=10){
      a = (int) random(0,255);
      b = (int) random(0,255);
      c = (int) random(0,255);
      noStroke();
      fill(a,b,c);
      rect(x,y,10,10);
    }
  }
}
