class Ball {
  float r;
  float x, y;
  float xspeed, yspeed;
  color c = color(100, 50);
  
  Ball(float tempR){
    r = tempR;
    x = random(width);
    y = random(height);
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }
  
  void move(){
    x += xspeed;
    y += yspeed;
    
    if(x > width){
      xspeed *= -1;
      x = width;
    }else if(x < 0){
      xspeed *= -1;
      x = 0;
    }
    if(y > height){
      yspeed *= -1;
      y = height;
    }else if(y < 0){
      yspeed *= -1;
      y = 0;
    }
  }
  
  void highlight(){
    c = color(0,255,0,100);
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
    c = color(100, 50);
  }
  
  boolean intersect(Ball b){
    float d = dist(x, y, b.x, b.y);
    if(d <= r + b.r)
      return true;
    else
      return false; 
  }
}  
