//Gobal variables
int appW, appH;
float faceX, faceY, FaceD;
float backGX, backGY, backGW, backGH;
float ERX, ERY, ERW, ERH;
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
  FaceD = appH*1/2 ;
  backGX = faceX - FaceD*1/2 ;
  backGY = faceY - FaceD*1/2;
  backGW = FaceD;
  backGH = FaceD;
  ERX = ;
  ERY = ;
  ERW = ;
  ERH = ;
  ELX = ;
  ELY = ;
  ELW=;
  ELH=;
  //
}//END setup
//
void draw () {
  rect( backGX, backGY, backGW, backGH );
  ellipse( faceX, faceY, FaceD, FaceD );
  ellipse(ERX, ERY, ERW, ERH);
  ellipse(ELX, ELY, ELW, ELH);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  rect(linex, liney, lineW, lineH);
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
