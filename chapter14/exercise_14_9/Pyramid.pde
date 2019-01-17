class Pyramid{
  float x, y;
  int t;  //size
  float thetax, thetay, thetaz;  //rotate angle
  
  Pyramid(int t_, float tx, float ty, float tz){
    x = random(0, width);
    y = random(0, height);
    t = t_;
    thetax = tx;
    thetay = ty;
    thetaz = tz;
  }
  
  void display(){
    stroke(0);
    
    pushMatrix();
    
    translate(x, y, 0);
    rotateX(thetax);
    rotateY(thetay);
    rotateZ(thetaz);
    
    beginShape(TRIANGLES);
    fill(255, 150);
    vertex(-t, -t, -t);
    vertex(t, -t, -t);
    vertex(0, 0, t);
    
    fill(150, 150);
    vertex(t, -t, -t);
    vertex(t, t, -t);
    vertex(0, 0, t);
    
    fill(255, 150);
    vertex(t, t, -t);
    vertex(-t, t, -t);
    vertex(0, 0, t);
    
    fill(150, 150);
    vertex(-t, t, -t);
    vertex(-t, -t, -t);
    vertex(0, 0, t);
    endShape();
    
    popMatrix();
    
    thetax += 0.01;
    thetay += 0.01;
    thetaz += 0.01;
  }
}
