void SetupProgram() {
  faceX = appW*1/2 ;
  faceY = appH*1/2 ;
  FaceD = smallerDimension ;
  //
  backGX = faceX - FaceD*1/2 ;
  backGY = faceY - FaceD*1/2;
  backGW = FaceD;
  backGH = FaceD;
  //
  ERX = faceX - FaceD*2/8 ;
  ERY = faceY - FaceD*1/8 ;
  ERW = FaceD*1/8 ;
  ERH = FaceD*1/8 ;
  ELX = faceX + FaceD*2/8 ;
  ELY = ERY ;
  ELW = FaceD*1/8 ;
  ELH = FaceD*1/8 ;
  //
  noseX1 = faceX ;
  noseY1 = ERY ;
  noseX2 = ELX;
  noseY2 = faceY;
  noseX3 = ERX;
  noseY3 = faceY;
  //
  linex = noseX2;
  liney = backGY + smallerDimension*6/8;
  linex1 = noseX3;
  liney1 = liney;
  //
  B1X = backGX;
  B1Y = backGY;
  B1 = FaceD/2 - sqrt(sq(FaceD/2)/2);
  B2X = (backGX + backGW) - B1;
  B2Y = backGY;
  B2 = B1;
  B3X = (backGX + backGW) - B1;
  B3Y = (backGY + backGH) - B1;
  B3 = B1;
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //DIVS
  rect( backGX, backGY, backGW, backGH );
  ellipse ( faceX, faceY, FaceD, FaceD );
  //
  rect( B1X, B1Y, B1, B1 );
  rect( B2X, B2Y, B2, B2 );
  rect( B3X, B3Y, B3, B3 );
} //END SETUPP
void measleProgram() {
//Text Code
  rect( B1X, B1Y, B1, B1 );
  rect( B2X, B2Y, B2, B2 );
  rect( B3X, B3Y, B3, B3 );
  color hoverOverColor=yellow;
  if ( mouseX>B1X && mouseX<B1X+B1 && mouseY>B1Y && mouseY<B1Y+B1 ) { //B1
  fill(hoverOverColor);
  ellipse( B1X+(B1/2), B1Y+(B1/2), B1, B1 );
  fill( resetColor );
  } else if ( mouseX>B2X && mouseX<B2X+B2 && mouseY>B2Y && mouseY<B2Y+B2 ) { //B2
  fill(hoverOverColor);
  ellipse( B2X+(B2/2), B2Y+(B2/2), B2, B2 );
  fill( resetColor );
  } else if ( mouseX>B3X && mouseX<B3X+B3 && mouseY>B3Y && mouseY<B3Y+B3 ) { //B2
  fill (hoverOverColor);
  ellipse( B3X+(B3/2), B3Y+(B3/2), B3, B3 );
  fill( resetColor );
  } else { //No Buttons
  fill( resetColor );
  rect( B1X, B1Y, B1, B1 );
  rect( B2X, B2Y, B2, B2 );
  rect( B3X, B3Y, B3, B3 );
  }
  fill( resetColor );
  //
  noStroke();
  fill(255);
  //rect( backGX, backGY, backGW, backGH );
  //
  //ellipse ( faceX, faceY, FaceD, FaceD );
  color measleColor = color( random(0,255), random(0,255), random(0, 255));
  fill (measleColor);
  measleX = random( backGX + (measleD/2), (backGX + backGW) - (measleD/2) );
  //measleX = random( (backGX + backGW) - (measleD), (backGX + backGW) - (measleD)); //TEST
  //while ( measleX <= B1X+B1 ) measleX = random ( (backGX + backGW) - (measleD) );
  measleY = random( backGY + (measleD/2), (backGX + backGH) - (measleD) );
  //measleY = random( backGY + (measleD), (backGX + backGH) - (measleD));//Test
  //while ( measleY <= B1Y+B1 ) measleY = random ( (backGY + backGH) - (measleD) );
  measleD = random( smallerDimension*1/20, smallerDimension*1/20 );
  //ellipse( measleX, measleY, measleD, measleD );
  if (sq(measleX-faceX)+sq(measleY-faceY) < sq((FaceD/2)-(measleD/2))) { //Neasle on Circle
  if (measlesON==true) ellipse( measleX, measleY, measleD, measleD );
  }
  //noRect();
  stroke(1);
  fill (resetColor);
  fill(255);
  //ellipse ( faceX, faceY, FaceD, FaceD );
  if (measlesON==true) fill(random(0,255), random(0,255), random(0,255));
  ellipse(ERX, ERY, ERW, ERH);
  ellipse(ELX, ELY, ELW, ELH);
  fill(255);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  textSize (40);
  textFont (titleFont);
  textAlign(CENTER, CENTER);
  fill(cyan);
  text (start, B1X, B1Y, B1, B1);
  fill(red);
  text (stop, B2X, B2Y, B2, B2);
  fill(255);
  fill(red);
  text (quit, B3X, B3Y, B3, B3);
  fill(255);
  strokeWeight (mouthOpen);
  line(linex, liney, linex1, liney1);
  strokeWeight (mouthReset);
  noStroke();
  //
}//End measleProgram
void trollingText() {
  fill(0);
  fill(red);
  text(trollText, backGX, backGY, backGW, backGH );
  textAlign (CENTER, CENTER);
}//END
void StopTrolling() {
  fill(0);
  fill(red);
  text(StopTroll, backGX, BOTTOM, backGW, backGH);
  textAlign (CENTER, BOTTOM);
}
