//Gobal variables
int appW, appH;
float faceX, faceY, FaceD;
float backGX, backGY, backGW, backGH;
float ERX, ERY, ERW, ERH;
float ELX, ELY, ELW, ELH;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float linex, liney, lineW, lineH;
float mouthOpen, mouthReset;
color red=#FF0505;
//
void setup () {
  fullScreen (); //size();
  //size(600,800);
  appW = displayWidth;
  appH = displayHeight;
  int smallerDimension = (appW >= appH) ? appH : appW;
  println("smallerDimension", smallerDimension);
  //
  //population
  faceX = appW*1/2 ;
  faceY = appH*1/2 ;
  FaceD = smallerDimension ;
  backGX = faceX - FaceD*1/2 ;
  backGY = faceY - FaceD*1/2;
  backGW = FaceD;
  backGH = FaceD;
  ERX = faceX - FaceD*2/8 ;
  ERY = faceY - FaceD*1/8 ;
  ERW = FaceD*1/8 ;
  ERH = FaceD*1/8 ;
  ELX = faceX + FaceD*2/8 ;
  ELY = ERY ;
  ELW = FaceD*1/8 ;
  ELH = FaceD*1/8 ;
  noseX1 = faceX ;
  noseY1 = ERY ;
  noseX2 = ELX;
  noseY2 = faceY;
  noseX3 = ERX;
  noseY3 = faceY;
  linex = faceX*1/2;
  liney = faceY*3/4;
  lineW = noseX3;
  lineH = linex;
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension;
  //
}//END setup
//
void draw () {
  fill(255);
  rect( backGX, backGY, backGW, backGH );
  fill(255);
  ellipse( faceX, faceY, FaceD, FaceD );
  fill(red);
  ellipse(ERX, ERY, ERW, ERH);
  ellipse(ELX, ELY, ELW, ELH);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight (mouthOpen);
  line(linex, liney, lineW, lineH);
  strokeWeight (mouthReset);
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
