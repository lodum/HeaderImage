int boxSize      = 2;
int space        = 1;
int rows         = 32;
int canvasWidth  = (boxSize + space) * 500;
int canvasHeight = (boxSize + space) * rows;

PGraphics pg;

// WWU CI color palette:
color[] palette = {color(0,110,137),
                   color(0,157,209),
                   color(0,142,150),
                   color(122,181,22),
                   color(177,200,0),
                   color(223,219,0),
                   color(255,237,0)};

int[] alphas = {64,128,176,255};

void setup() {
  size(canvasWidth, canvasHeight, P2D);
  noStroke();
  background(255);
}

void draw() {
  
  int y = 0-1-boxSize;
  int row = 0;
  
  while(y <= canvasHeight){
    
    y = y + space + boxSize;
    row++;    
    int x = 0-boxSize;
    
    while(x <= canvasWidth){
      
      int randomColor = int(random(palette.length));
      int randomAlpha = int(random(alphas.length));
      
      fill(palette[randomColor], (alphas[randomAlpha]) / (row-sqrt(row)));
      
      x = x + space + boxSize;
      rect(x, y, boxSize, boxSize);      
    }
  }
  noLoop();
  save("tiles.png");
  
}
