Particle[] particles;
XML xml;

void setup(){
  size(400, 300);
  loadData();
}

void loadData(){
  xml = loadXML("data.xml");
  XML[] children = xml.getChildren("particle");
  
  particles = new Particle[children.length];
  for(int i=0; i<children.length; i++){
    XML location = children[i].getChild("location");
    float x = location.getFloat("x");
    float y = location.getFloat("y");    
    XML speed = children[i].getChild("speed");
    float speedx = speed.getFloat("x");
    float speedy = speed.getFloat("y");
    XML size = children[i].getChild("size");
    float w = size.getFloat("w");
    float h = size.getFloat("h");
    
    particles[i] = new Particle(x, y, speedx, speedy, w, h);
  }
}

void draw(){
  background(255);
  for(int i = 0; i<particles.length; i++){
    particles[i].display();
    particles[i].move();
  }
}
