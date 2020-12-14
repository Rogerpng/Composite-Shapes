void populatingVariables() {
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
