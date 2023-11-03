//Gobal variables
int appW, appH, smallerDimension;
float faceX, faceY, FaceD;
float backGX, backGY, backGW, backGH;
float ERX, ERY, ERW, ERH;
float ELX, ELY, ELW, ELH;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float linex, liney, linex1, liney1;
float mouthOpen, mouthReset;
float measleX, measleY, measleD;
float B1,B2,B3;
int recog;
color resetColor=#FFFFFF;
//
void setup () {
  fullScreen (); //size();
  //size(600,400);
  appW = displayWidth;
  appH = displayHeight;
  smallerDimension = (appW >= appH) ? appH : appW; //start at a GV.
  println("smallerDimension", smallerDimension);
  //
  //population
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
  B1 = backGX;
  B2 = backGY;
  B3 = FaceD/2 - sqrt(sq(FaceD/2)/2);
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //DIVS
  rect( backGX, backGY, backGW, backGH );
  //ellipse ( faceX, faceY, FaceD, FaceD );
  //
}//END setup
//
void draw () {
  noStroke();
  fill(255);
  //rect( backGX, backGY, backGW, backGH );
  //
  //ellipse ( faceX, faceY, FaceD, FaceD );
  color measleColor = color( random(0,255), random(0,255), random(0, 255));
  fill (measleColor);
  measleX = random( backGX + (measleD/2), (backGX + backGW) - (measleD/2) );
  //measleX = random( (backGX + backGW) - (measleD), (backGX + backGW) - (measleD)); //TEST
  while ( measleX < B1+B3 ) measleX = random ( (backGX + backGW) - (measleD) );
  measleY = random( backGY + (measleD/2), (backGX + backGH) - (measleD) );
  //measleY = random( backGY + (measleD), (backGX + backGH) - (measleD));//Test
  while ( measleY < B1+B3 ) measleY = random ( (backGY + backGH) - (measleD) );
  measleD = random( smallerDimension*1/20, smallerDimension*1/20 );
  //ellipse( measleX, measleY, measleD, measleD );
  ellipse( measleX, measleY, measleD, measleD );
  //noRect();
  stroke(1);
  fill (resetColor);
  fill(255);
  //ellipse ( faceX, faceY, FaceD, FaceD );
  fill(random(0,255), random(0,255), random(0,255));
  ellipse(ERX, ERY, ERW, ERH);
  ellipse(ELX, ELY, ELW, ELH);
  fill(255);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  rect(B1, B2,B3 ,B3);
  strokeWeight (mouthOpen);
  line(linex, liney, linex1, liney1);
  strokeWeight (mouthReset);
  noStroke();
  //
}//END draw
//
void keyPressed () {
  //
}//END keyPressed
//
void mousePressed () {
  //
}//END mousePressed
//
//END MAIN Program
