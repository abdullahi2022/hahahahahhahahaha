//Global Variables
PImage startImage;
float startImageX, startImageY, startImageWidth, startImageHeight;
PImage oogwayImage;
float oogwayImageX, oogwayImageY, oogwayImageWidth, oogwayImageHeight;
PImage rabbitStandingImage;
float rabbitStandingImageX, rabbitStandingImageY, rabbitStandingImageWidth, rabbitStandingImageHeight;
PImage raceImage; //10687379345_555c9954a1_b.jpeg
float raceImageX, raceImageY, raceImageWidth, raceImageHeight;
PImage pressFImage;
float pressFImageX, pressFImageY, pressFImageWidth, pressFImageHeight;
PImage gravestoneImage;
float gravestoneImageX, gravestoneImageY, gravestoneImageWidth, gravestoneImageHeight;
PImage givemoneyImage;
float givemoneyImageX, givemoneyImageY, givemoneyImageWidth, givemoneyImageHeight;
PImage lotteryImage;
float lotteryImageX, lotteryImageY, lotteryImageWidth, lotteryImageHeight;
PImage robberImage;
float robberImageX, robberImageY, robberImageWidth, robberImageHeight;
//
void startImage() {
  startImageX = rect9X5;
  startImageY = rect9Y5 + startButtonHeight1;
  startImageWidth = rect9Width; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  startImageHeight = rect9Height*2/3;
}//End startImage
//
void oogwayImage() {
  oogwayImageX = choice1TextX1;
  oogwayImageY = choice1TextY1+choice1TextHeight1;
  oogwayImageWidth = choice1TextWidth1;
  oogwayImageHeight = rect9Height*1/2;
}//End oogwayImage
//
void rabbitStandingImage() {
  rabbitStandingImageX = rect9X1;
  rabbitStandingImageY = rect9Y1+rect9Height*1/3;
  rabbitStandingImageWidth = rect9Width*1/2;
  rabbitStandingImageHeight = rect9Height*1/2;
}//End rabbitStandingImage
//
void raceImage() {
  raceImageX = rabbitStandingImageWidth;
  raceImageY = rabbitStandingImageY;
  raceImageWidth = rabbitStandingImageWidth;
  raceImageHeight = rabbitStandingImageHeight;
}//End raceImage
//
void pressFImage() {
  pressFImageX = rect9X2*11/10;
  pressFImageY = rect9Y2+acceptChoiceTextHeight1;
  pressFImageWidth = rect9Width*4/5;
  pressFImageHeight = rect9Height*19/30;
}//End rabbitTurtleImage
//
void gravestoneImage() {
  gravestoneImageX = rect9X3+rect9Width*1/5;
  gravestoneImageY = rect9Y3+declineChoiceTextHeight1;
  gravestoneImageWidth = rect9Width*3/5;
  gravestoneImageHeight = rect9Height*19/30;
}
//
void givemoneyImage() {
  givemoneyImageX = rect9X7;
  givemoneyImageY = rect9Y7;
  givemoneyImageWidth = rect9Width;
  givemoneyImageHeight = rect9Height;
}
//
void lotteryImage() {
  lotteryImageX = rect9X8;
  lotteryImageY = rect9Y8;
  lotteryImageWidth = rect9Width;
  lotteryImageHeight = rect9Height;
}
//
void robberImage() {
  robberImageX = rect9X9;
  robberImageY = rect9Y9;
  robberImageWidth = rect9Width;
  robberImageHeight = rect9Height;
}
