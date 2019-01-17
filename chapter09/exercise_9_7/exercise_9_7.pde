Snake snake;
void setup(){
  size(400,400);
  snake = new Snake(50);
}

void draw(){
  background(255);
  snake.display();
}
