// Example 14-18: Object-oriented solar system

// An array of 8 planet objects
Planet[] planets = new Planet[4];

void setup() {
  size(700,700);
  
  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++ ) {
    planets[i] = new Planet(120 + i*64,24);
  }
}

void draw() {
  background(0);
  
  // Drawing the Sun
  pushMatrix();
  translate(width/2,height/2);
  stroke(0);
  fill(255);
  ellipse(0,0,64,64);
  
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
