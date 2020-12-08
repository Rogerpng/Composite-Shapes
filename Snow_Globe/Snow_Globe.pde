//Global Variables
float baseX, baseY, baseWidth, baseHeight; 
float globeSquareX, globeSquareY, globeSquareSide;
float globeX, globeY, globeDiameter;
float snowX, snowY, snowDiameter;
//
//Display Geometry
size(600, 400);
//
//Populating Variables
globeSquareX = width*1/2-height*1/2;
globeSquareY = height*0;
globeSquareSide = height;
globeX = width*1/2;
globeY = height*1/2;
globeDiameter = height;

snowX = width*1/2-height*1/3;
snowY = height*1/2;
snowDiameter = height*1/10;

baseX = width*1/2;
baseY = height*1/2;
baseWidth = width*1/2;
baseHeight = height*1/3;
//
//The Snow Globe
//
//The Base
rect(baseX, baseY, baseWidth, baseHeight);
//The circle
rect(globeSquareX, globeSquareY, globeSquareSide, globeSquareSide);
ellipse(globeX, globeY, globeDiameter, globeDiameter);
//
//The Snow falling
ellipse(snowX, snowY, snowDiameter, snowDiameter);
//
