// 2D Array of objects
Cell[][] grid;

// Number of columns and rows in the grid
int cols = 10;
int rows = 10;

void setup() {
  size(200,200);
  grid = new Cell[cols][rows];
  boolean isAlive;
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      isAlive = int(random(2)) == 1 ? true : false;
      grid[i][j] = new Cell(i*20, j*20, 20, 20, isAlive);
    }
  }
}

void draw() {
  background(0);
  // The counter variables i and j are also the column and row numbers and 
  // are used as arguments to the constructor for each object in the grid.  
  drawGrid();
}

drawGrid() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {      
      grid[i][j].display();
    }
  }
}
void calculateLifeStatus() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
     
      // Check status based on 4 rules:
      // 1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
      // 2. Any live cell with two or three live neighbours lives on to the next generation.
      // 3. Any live cell with more than three live neighbours dies, as if by overcrowding.
      // 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

    }
  }
}

// A Cell object
class Cell {
  // A cell object knows about its location in the grid as well as its size with the variables x,y,w,h.
  float x,y;   // x,y location
  float w,h;   // width and height
  boolean isAlive; // is this organism alive

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, boolean tempIsAlive) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    isAlive = tempIsAlive;
  } 

  void display() {
    stroke(255);
    // Color calculated using sine wave
    
    if(isAlive) 
      fill(255);
    else
      fill(0);
      
    rect(x,y,w,h); 
  }
}
