void populatingVariables() {
  globeSquareX = width*1/2-height*1/2;
  globeSquareY = height*0;
  globeSquareSide = height;
  globeX = width*1/2;
  globeY = height*1/2-height*1/8;
  globeDiameter = height;

  baseX = width*1/2-width*1/2;
  baseY = height*7/8;
  baseWidth = width*1/3;
  baseHeight = height*1/7;
  //
  //The Snow Globe
  //
  //The Base
  rect(baseX, baseY, baseWidth, baseHeight);
  //The circle
  rect(globeSquareX, globeSquareY, globeSquareSide, globeSquareSide);
  ellipse(globeX, globeY, globeDiameter, globeDiameter);
} //End PopulatingVariables()
