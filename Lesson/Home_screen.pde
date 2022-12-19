int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85; //BLUE should be Zero or as close to it
//
/* Home Screen Expectations
 - Background image using tint()
 - 9 evenly spaced rectangles, Assignment #3
 - Quit Button and Reset Button (Splash Screen Start Button)
 - In each: image, text, 2D Shape, Button
 - Narrative through the 9 rectangles
 - See Case Study
 - Note: must have one image with aspect ratio
 */
//
void homeScreen() {
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button
  //
  //rect( quitX, quitY, quitWidth, quitHeight );
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    float centerX=appWidth*1/2;
    float quitX_whiteScreen = centerX - appWidth * 1/15;
    float quitWidth_whiteScreen = appWidth * 1/8;
    rect( quitX_whiteScreen, quitY, quitWidth_whiteScreen, quitHeight );
    strokeWeight(1); //Reset: 1 pixel
    noFill();
    quitButtonImage(); //Cookie, aspect ratio
    /*
    fill(white);
     rect( quitX, quitY, quitWidth, quitHeight ); //testing only
     noFill();
     */
  } else {
    fill(white);
    noStroke();
    float centerX=appWidth*1/2;
    float quitX_whiteScreen = centerX - appWidth * 1/15;
    float quitWidth_whiteScreen = appWidth * 1/8;
    rect( quitX_whiteScreen, quitY, quitWidth_whiteScreen, quitHeight );
    strokeWeight(1); //Reset: 1 pixel
    noFill();
    quitButtonText();
  }
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset: 1 pixel
  noFill();
}//End backgroundWhiteScreen()
//
void backgroundImage() {
  backgroundWhiteScreen();
  if ( nightMode==false ) tint( tintDayMode, tintDayModeOpacity ); //Day Mode, see ternary operator
  if ( nightMode==true ) tint( tintRed, tintGreen, tintBlue, tintNightModeOpacity ); //Night Mode, see ternary operator
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//End backgroundImage
//
//End Home Screen Subprogram
