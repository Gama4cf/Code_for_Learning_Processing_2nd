void setup(){
  size(200,200);
  frameRate(10);
}

void draw(){
  drawflower(3, 100, 100, 20, 40, color(255,0,0));
}

void drawflower(int num, float centerx, float centery, float w, float h, color c){
  float r_arg = 360/num;
  println(r_arg);
  float corner1 = sqrt(h*h + (w/2)*(w/2));
  float corner2 = w/2;
  float sinCO1 = w/(2*corner1);
  float cosCO1 = h/corner1;
  point(100,100);
  for (int n = 0; n < num; n++){
    float sinCorner1 = sinCO1*cos(n*r_arg*3.14159/180) + cosCO1*sin(n*r_arg*3.14159/180);
    float cosCorner1 = cosCO1*cos(n*r_arg*3.14159/180) - sinCO1*sin(n*r_arg*3.14159/180);
    float sinCorner2 = -1*cos(n*r_arg*3.14159/180);
    float cosCorner2 = sin(n*r_arg*3.14159/180);
    println(sinCorner1,cosCorner1,sinCorner2,cosCorner2);
    fill(c);
    //point(centerx+corner1*cosCorner1,centery+corner1*sinCorner1);
    //point(centerx+corner2*cosCorner2,centery+corner2*sinCorner2);
    line(centerx+corner1*cosCorner1,centery+corner1*sinCorner1,centerx+corner2*cosCorner2,centery+corner2*sinCorner2);
    line(100,100,centerx+corner2*cosCorner2,centery+corner2*sinCorner2);
    line(centerx+corner1*cosCorner1,centery+corner1*sinCorner1,100,100);
  }
}

void drawpetal(float x1, float y1, float x2, float y2){
  ellipseMode(CORNERS);
  ellipse(x1, y1, x2, y2);
}
