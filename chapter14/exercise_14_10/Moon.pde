class Moon{
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from plant
  float orbitspeed; // Orbit speed

  Moon(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01, 0.03);
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
    stroke(0);
    fill(20, 255, 20);
    ellipse(0, 0, diameter, diameter);
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix();
  }
}
