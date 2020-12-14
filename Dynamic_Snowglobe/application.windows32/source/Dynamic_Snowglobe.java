import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dynamic_Snowglobe extends PApplet {

//Global Variables
int reset;

float baseX, baseY, baseWidth, baseHeight; 
float globeSquareX, globeSquareY, globeSquareSide;
float globeX, globeY, globeDiameter;
float snowX, snowY, snowDiameter;

int buttonX, buttonY, buttonWidth, buttonHeight;
int baseColour, brown = 0xff620404, buttonColour, red=0xffE30505, yellow=0xffFFFB7E, resetWhite=0xffFFFFFF;
//
public void setup() {
  
  //Variable Population
  buttonX = width*5/6;
  buttonY = height*3/4;
  buttonWidth = width*3/4;
  buttonHeight = height*2/3;
 
  populatingVariables();
} //End Void Setup
public void draw() {

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

public void keyPressed() {
if (key == 'p' || key == 'P' )  exit();
} //End Keypressed

public void mousePressed() {
if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) exit();
}
public void populatingVariables() {
  baseX = width*6/7-width*2/3;
  baseY = height*3/4;
  baseWidth = width*2/3;
  baseHeight = height*2/3;
  
  globeSquareX = width*1/2-height*1/2;
  globeSquareY = height*0;
  globeSquareSide = height;
  globeX = width*1/2;
  globeY = height*1/2-height*1/8;
  globeDiameter = height;
  
  //
  //The Snow Globe
  //The circle
  rect(globeSquareX, globeSquareY, globeSquareSide, globeSquareSide);
  ellipse(globeX, globeY, globeDiameter, globeDiameter);
  //
  //The Base
  baseColour = brown;
  fill(baseColour);
  rect(baseX, baseY, baseWidth, baseHeight);
  fill(reset);
} //End PopulatingVariables()
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "Dynamic_Snowglobe" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
