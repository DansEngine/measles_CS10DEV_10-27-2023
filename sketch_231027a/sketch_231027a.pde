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
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
}//END setup
//
void draw () {
  stroke(2);
  fill(255);
  //rect( backGX, backGY, backGW, backGH );
  //
  color measleColor = color( 255, random(0,60), random(0, 80));
  fill (measleColor);
  measleX = random( backGX , FaceD ) ;
  measleY = random( backGY , FaceD ) ;
  measleD = random( smallerDimension*1/30, smallerDimension*1/10 ) ;
  ellipse( measleX, measleY, measleD, measleD);
  fill (resetColor);
  fill(255);
  //fill(random(0,255), random(0,255), random(0,255));
  ellipse( faceX, faceY, FaceD, FaceD );
  ellipse(ERX, ERY, ERW, ERH);
  ellipse(ELX, ELY, ELW, ELH);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
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
