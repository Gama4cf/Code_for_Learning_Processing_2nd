Pyramid[] pyramid;

void setup(){
  size(400, 400, P3D);
  pyramid = new Pyramid[20];
  for (int i=0; i< pyramid.length; i++){
    int t= (int)random(28, 14);  //size
    float tx = random(0, TWO_PI);  //rotate angle
    float ty = random(0, TWO_PI);
    float tz = random(0, TWO_PI);
    pyramid[i] = new Pyramid(t, tx, ty, tz);
  }
}

void draw(){
  background(255);
  for(int i=0; i< pyramid.length; i++)
    pyramid[i].display();
}
