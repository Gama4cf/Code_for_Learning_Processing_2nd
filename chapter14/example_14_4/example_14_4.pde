Pyramid pyramid;
float theta;

void setup(){
  size(200, 200, P3D);
  pyramid = new Pyramid(50);
  theta = 0.0;
}

void draw(){
  background(255);
  translate(100, 100, 0);
  
  rotateX(theta);
  //rotateY(theta);
  rotateZ(theta);
  theta = (theta+0.03) % TWO_PI;
  
  pyramid.display();
}
