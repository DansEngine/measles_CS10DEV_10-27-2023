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
float B1X,B1Y,B1;
float B2X, B2Y, B2;
float B3X, B3Y, B3;
float B4X, B4Y, B4;
Boolean measlesON=false, splashScreen=false, troll=false, StopB=false;
PFont titleFont, footerFont;
int recog;
color resetColor=#FFFFFF, red =#FC0000, cyan=#00FFFD,green=#B6DE1B, yellow=#FFEA00;
String start="START", stop="STOP",quit="X", trollText="you never see cominggggg... You'll see that my mind is too fast for eyes", StopTroll="and then you can't stop";
//
void setup () {
  fullScreen (); //size();
  //size(600,400);
  appW = displayWidth;
  appH = displayHeight;
  smallerDimension = (appW >= appH) ? appH : appW; //start at a GV.
  println("smallerDimension", smallerDimension);
  String[] fontList = PFont.list (); //List all fonts available on OS
  printArray(fontList);
  titleFont = createFont("Californian FB Bold",40);
  footerFont = createFont("Arial",55);
  if ( splashScreen==false ) SetupProgram();
  //
  //population
}//END setup
//
void draw () {
  if ( splashScreen==false) background (0);
  if ( splashScreen==true ) measleProgram ();
  if (troll==true) trollingText();
  if (StopB==true) StopTrolling();
//
}//END draw
//
void keyPressed () {
  if ( key==' ' ) measlesON=true; //START,space-bar
  if ( keyCode==BACKSPACE ) measlesON=false; //stop //Not Needed key==CODED &&
  if ( keyCode==ESC) exit(); //QUIT
  //
}//END keyPressed
//
void mousePressed () {
  splashScreen=true;
  //
  if ( mouseX>B1X && mouseX<B1X+B1 && mouseY>B1Y && mouseY<B1Y+B1 ) measlesON=true ; //START
  //if ( mouseX>B2X && mouseX<B2X+B2 && mouseY>B2Y && mouseY<B2Y+B2 ) measlesON=false ;
  if ( mouseX>B2X && mouseX<B2X+B2 && mouseY>B2Y && mouseY<B2Y+B2 ) StopB=true ;
  //if ( mouseX>B3X && mouseX<B3X+B3 && mouseY>B3Y && mouseY<B3Y+B3 ) exit();
  if ( mouseX>B3X && mouseX<B3X+B3 && mouseY>B3Y && mouseY<B3Y+B3 ) troll=true ;
  //
}//END mousePressed
//
//END MAIN Program
