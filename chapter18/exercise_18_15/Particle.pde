class Particle{
  float x, y;
  float speedx, speedy;
  float w, h;
  
  Particle(float x_, float y_, float speedx_, float speedy_, float w_, float h_){
    x = x_; y = y_;
    speedx = speedx_; speedy = speedy_;
    w = w_; h = h_;
  }
  
  void move(){
    x += speedx;
    y += speedy;
  }
  
  void display(){
    fill(random(255), random(255), random(255));
    ellipse(x, y, w, h);
  }
}
