//Global Variables
int reset;

float baseX, baseY, baseWidth, baseHeight; 
float globeSquareX, globeSquareY, globeSquareSide;
float globeX, globeY, globeDiameter;
float snowX, snowY, snowDiameter;

int buttonX, buttonY, buttonWidth, buttonHeight;
color baseColour, brown = #620404, buttonColour, red=#E30505, yellow=#FFFB7E, resetWhite=#FFFFFF;
//
void setup() {
  size(600, 400);
  //Variable Population
  buttonX = width*5/6;
  buttonY = height*3/4;
  buttonWidth = width*3/4;
  buttonHeight = height*2/3;
 
  populatingVariables();
} //End Void Setup
void draw() {

  snowX = random(globeSquareX+snowDiameter, globeSquareX+globeSquareSide-snowDiameter);
  snowY = random(height*0+snowDiameter, height*3/4-snowDiameter);
  snowDiameter = random(height*1/20, height*1/10);
  //The Snow falling
  ellipse(snowX, snowY, snowDiameter, snowDiameter);
  fill(reset);

if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) {
    buttonColour = yellow;
  } else {
    buttonColour = red;
  } // End If

  buttonColour = red;
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
} //End Draw

void keyPressed() {
if (key == 'p' || key == 'P' )  exit();
} //End Keypressed

void mousePressed() {
if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) exit();
}
