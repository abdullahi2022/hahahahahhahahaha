//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false;
/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is WHITE, not Night Mode Friendly, full BLUE
 */
color purple=#FF00FF, resetDefaultInk=#FFFFFF;
//
void setup() {
  size(600, 400);
  //fullScreen(); //displayWidth //displayHeight
  appWidth = width;
  appHeight = height;
  //Assignment: Display Alogrithm from Hello World
  //display(); 
  //Display Algorithm will populate smaller and larger dimensions
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  population();
  textSetup();
}//End setup
//
void draw() {
  //Assginment #2: OS Level Mouse Click and Splash Screen
  if ( OS_on==true ) splashScreen(); //OS Level Mouse Click
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
}//End mousePressed
//
void display() {
  //Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in the monitor
  //Output #2: Console confirms display orientation (landscape-square or portrait)
  //Output #3: Console confirms dimension sizes (smaller and larger)
  //Output #4: if error with any of above, program will exit or be broken
  //           Hint: "Bru, turn your phun."
}//End display
//
//End Display and Orientation Subprogram
//
void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
}//End population
//
//End Population Subprogram
//
//splash screen
float startX, startY, startWidth, startHeight;
//
void splashScreen() {
  /* Note: any visually-based code running in SetUp() controlled by MouseClick
   - background image
   */
  //
  /* Any other code for Splash Screen goes below
   - Start Button
   - Any other instructions
   - Splash Screen Details
   */
   background(255); //Testing only, not night mode friendly, full BLUE
   spaceBarText();
}//End splashScreen
//
//End Splash Screen Subprogram
//
PFont harrington;
//
void textSetup() {
  //Assignment #2: Minimum Expectation = one font
  //
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
}//End textSetup
//
void spaceBarText() {
  //rect( startX, startY, startWidth, startHeight );
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 19; //Change the number until it fits
  textFont(harrington, size); 
  String spaceBar = "Press the SPACE BAR to continue";
  text( spaceBar, startX, startY, startWidth, startHeight );
  fill(resetDefaultInk);
}//End spaceBarText
//
//End Text Subprogram
//
//End MAIN Program
