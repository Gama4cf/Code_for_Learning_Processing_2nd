Catcher catcher;
Timer timer;
Drop[] drops;

int totalDrops = 0;
int level = 1;
int score = 0;

void setup(){
  size(300, 600);
  catcher = new Catcher(32);
  //drops 
  drops = new Drop[1000];
  //timer
  timer = new Timer(10);
  timer.start();
}

void draw(){
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
  
  if(timer.isFinished()){
    drops[totalDrops] = new Drop();
    totalDrops++;
  }
  
  if(totalDrops >= drops.length){
    totalDrops = 0;
    if(score > 0){
      score = 0;
      level++;
      println("Level:"+level);
    }
  }
  //display drops
  for(int i = 0; i < totalDrops; i += level){
    for(int j = i; j < i+level && j < totalDrops; j++){
      drops[j].move();
      drops[j].display();
      if(catcher.intersect(drops[j])){
        drops[j].caught();
        score++;
      }
      if(drops[j].reachBottom()){
        score--;
      }
    }
  }
  println("Score:"+score); //<>//
}
