Cell[][] grid;

int clos = 10;
int rows = 10;

void setup(){
  size(200, 200);
  grid = new Cell[clos][rows];
  for(int i = 0; i < clos; i++){
    for (int j = 0; j < rows; j++){
      grid[i][j] = new Cell(i*20, j*20, 20, 20, i+j);
    }
  }
}

void draw(){
  background(0);
  for(int i = 0; i < clos; i++){
    for (int j = 0; j < rows; j++){
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
