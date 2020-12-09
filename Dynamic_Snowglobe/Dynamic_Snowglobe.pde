//Global Variables
int reset;

float baseX, baseY, baseWidth, baseHeight; 
float globeSquareX, globeSquareY, globeSquareSide;
float globeX, globeY, globeDiameter;
float snowX, snowY, snowDiameter;
//
void setup() {
  size(600, 400);
  //Variable Population
  populatingVariables();
} //End Void Setup
void draw() {

  snowX = random(width);
  snowY = random(height);
  snowDiameter = random(height*1/20, height*1/10);
  //The Snow falling
  ellipse(snowX, snowY, snowDiameter, snowDiameter);
  fill(reset);
} //End Draw

void keyPressed() {
} //End Keypressed

void mousePressed() {
}
