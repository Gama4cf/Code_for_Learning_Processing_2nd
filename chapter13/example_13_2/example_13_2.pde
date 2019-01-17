float[] randomCounter;

void setup(){
  size(200,700);
  randomCounter = new float[20];
}

void draw(){
  background(255);
  int index = (int)random(randomCounter.length);
  randomCounter[index]++;
  stroke(0);
  fill(175);
  for (int x = 0; x < randomCounter.length; x++){
    rect(x*10, 0, 9, randomCounter[x]);
  }
}
