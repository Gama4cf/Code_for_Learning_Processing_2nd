Cell[][] board;

int cols = 3;
int rows = 3;

void setup(){
  size(300, 300);
  board = new Cell[cols][rows];
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      board[i][j] = new Cell(i*100, j*100, 100, 100);
    }
  }
}

void draw(){
  background(255);
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      board[i][j].display();
    }
  }
}

void mousePressed(){
  int i, j;
  i = (int)mouseX/100;
  j = (int)mouseY/100;
  board[i][j].click();
}
