// Example 14-18: Object-oriented solar system

class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
  Moon[] moons;

  Planet(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01, 0.03);
    moons = new Moon[(int)random(1,3)];
    for(int i = 0; i<moons.length; i++){
      moons[i] = new Moon(30+i*12, 4);
    }
  }

  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }

  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // Translate out distance
    translate(distance, 0); 
    noStroke();
    fill(20, 20, 200);
    sphere(diameter);
    
    //Moon
    for(int i = 0; i<moons.length; i++){
      moons[i].display();
      moons[i].update();
    }
    
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix();
  }
}
