final int SPACING = 20; // each cell's width/height //<>// //<>// //<>//
final float DENSITY = 0.1; // how likely each cell is to be alive at the start
int[][] grid; // the 2D array to hold 0's and 1's

void setup() {
  size(800, 600); // adjust accordingly, make sure it's a multiple of SPACING
  noStroke(); // don't draw the edges of each cell
  frameRate(1); // controls speed of regeneration
  grid = new int[height / SPACING][width / SPACING];

  // populate initial grid
  // your code here
  /*for(int i = 0; i < grid.length; i++) {
    for(int j = 0; j < grid[i].length; j++) {
      if(random(1) < DENSITY) {
        grid[i][j] = 1;
      }
      else {
        grid[i][j] = 0;
      }
    }
  }*/
  grid[20][20] = 1;
  grid[19][20] = 1;
  grid[19][19] = 1;
  grid[20][19] = 1;
  grid[21][20] = 1;
}

void draw() {
  showGrid();
  grid = calcNextGrid();
}

int[][] calcNextGrid() {
  int[][] nextGrid = new int[grid.length][grid[0].length];

  // your code here
  int neighbors = countNeighbors(20, 20);
  
  return nextGrid;
}

int countNeighbors(int y, int x) {
  int n = 0; // don't count yourself!
  
  // your code here
  // don't check out-of-bounds cells
  for(int i = y - 1; i <= y + 1; i++) {
    for(int j = x - 1; j <= x + 1; j++) {
      if(!(i == y && j == x)) {
        n += grid[i][j];
      }
    }
  }
  System.out.println(n);
  return n;
}

void showGrid() {
  // your code here
  // use square() to represent each cell
  // use fill(r, g, b) to control color: black for empty, red for filled (or alive)
  for(int i = 0; i < grid.length; i++) {
    for(int j = 0; j < grid[i].length; j++) {
      if(grid[i][j] == 1) {
        fill(255, 0, 0);
      }
      else {
        fill(0);
      }
      square(j * SPACING, i * SPACING, SPACING);
    }
  }
}
