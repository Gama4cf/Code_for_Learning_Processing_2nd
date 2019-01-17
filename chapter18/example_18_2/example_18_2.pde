int[] data;

void setup(){
  size(200, 200);
  String[] stuff = loadStrings("data.csv");
  data = int(split(stuff[0], ','));
  printArray(data);
}

void draw(){
  background(255);
  stroke(0);
  float w = width/data.length;
  for(int i=0; i<data.length; i++){
    fill(data[i]);
    rect(i*w, 0, w, data[i]);
  }
  noLoop();
}
