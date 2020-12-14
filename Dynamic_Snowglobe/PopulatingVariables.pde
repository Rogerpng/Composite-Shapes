void populatingVariables() {
  baseX = width*4/5-width*4/5;
  baseY = height*4/5;
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
  //
  //The Base
  rect(baseX, baseY, baseWidth, baseHeight);
  //The circle
  rect(globeSquareX, globeSquareY, globeSquareSide, globeSquareSide);
  ellipse(globeX, globeY, globeDiameter, globeDiameter);
} //End PopulatingVariables()
