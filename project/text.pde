//Global Variables
int startTextSize = 25, smallerTextSize = 20, biggerTextSize = 35, ultimateSize = 50;
PFont startTextFont1, choice1TextFont1, choice1TextFontBold, impactTextFont, lottoTextFont2;
String startText1 = "Choose this";
float startTextX1, startTextY1, startTextWidth1, startTextHeight1;
String startText2 = "or this";
float startTextX2, startTextY2, startTextWidth2, startTextHeight2;
String choice1Text1 = "You died and reincarnated into a turtle";
float choice1TextX1, choice1TextY1, choice1TextWidth1, choice1TextHeight1;
String okText4 = "OK BRUH";
float okTextX4, okTextY4, okTextWidth4, okTextHeight4;
String choice1Text2 = "A rabbit stood in front of you and said \n 'Hey fat dude wanna battle?'";
float choice1TextX2, choice1TextY2, choice1TextWidth2, choice1TextHeight2;
String acceptText1 = "Accept";
float acceptTextX1, acceptTextY1, acceptTextWidth1, acceptTextHeight1;
String declineText1 = "Decline";
float declineTextX1, declineTextY1, declineTextWidth1, declineTextHeight1;
String acceptChoiceText1 = "You died in the battle";
float acceptChoiceTextX1, acceptChoiceTextY1, acceptChoiceTextWidth1, acceptChoiceTextHeight1;
String ripText1 = "F";
float ripTextX1, ripTextY1, ripTextWidth1, ripTextHeight1;
String declineChoiceText1 = "The rabbit said that you're a coward \n and left, you died at the age of 100";
float declineChoiceTextX1, declineChoiceTextY1, declineChoiceTextWidth1, declineChoiceTextHeight1;
String ripText2 = "RIP";
float ripTextX2, ripTextY2, ripTextWidth2, ripTextHeight2;
String respectText1 = "Respect";
float respectTextX1, respectTextY1, respectTextWidth1, respectTextHeight1;
String resetText = "RESET";
float resetTextX, resetTextY, resetTextWidth, resetTextHeight;
String lottoText1 = "You bought the lotto";
float lottoTextX1, lottoTextY1, lottoTextWidth1, lottoTextHeight1;
String okText7 = "OK";
float okTextX7, okTextY7, okTextWidth7, okTextHeight7;
String lottoText2 = "You won a million";
float lottoTextX2, lottoTextY2, lottoTextWidth2, lottoTextHeight2;
String okText8 = "NICE";
float okTextX8, okTextY8, okTextWidth8, okTextHeight8;
String lottoText3 = "You got robbed and lost everything, RIP";
float lottoTextX3, lottoTextY3, lottoTextWidth3, lottoTextHeight3;
//
void startText1() {
  //Population
  startTextX1 = startX1;
  startTextY1 = startY1;
  startTextWidth1 = startButtonWidth1;
  startTextHeight1 = startButtonHeight1;
  startTextFont1 = createFont("TimesNewRomanPS-BoldItalicMT", 600);
  //
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For Listing all possible fonts to choose from, then createFont
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(startText1, startTextX1, startTextY1, startTextWidth1, startTextHeight1);
}//End startText1
//
void startText2() {
  //Population
  startTextX2 = startX2;
  startTextY2 = startY2;
  startTextWidth2 = startButtonWidth2;
  startTextHeight2 = startButtonHeight2;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(startText2, startTextX2, startTextY2, startTextWidth2, startTextHeight2);
}//End startText2
//
void choice1Text1() {
  //Population
  choice1TextX1 = rect9X4;
  choice1TextY1 = rect9Y4;
  choice1TextWidth1 = rect9Width;
  choice1TextHeight1 = rect9Height*1/3;
  choice1TextFont1 = createFont("TimesNewRomanPSMT", 603);
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, startTextSize);
  text(choice1Text1, choice1TextX1, choice1TextY1, choice1TextWidth1, choice1TextHeight1);
  fill(resetWhite);
}//End choice1Text1
//
void okText4() {
  //Population
  okTextX4 = okButtonX4;
  okTextY4 = okButtonY4;
  okTextWidth4 = okButtonWidth4;
  okTextHeight4 = okButtonHeight4;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(okText4, okTextX4, okTextY4, okTextWidth4, okTextHeight4);
  fill(resetWhite);
}//End choice1Text1
//
void choice1Text2() {
  //Population
  choice1TextX2 = rect9X1;
  choice1TextY2 = rect9Y1;
  choice1TextWidth2 = rect9Width;
  choice1TextHeight2 = rect9Height*1/3;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, startTextSize);
  text(choice1Text2, choice1TextX2, choice1TextY2, choice1TextWidth2, choice1TextHeight2);
  fill(resetWhite);
}//End choice1Text2
//
void acceptText1() {
  //Population
  acceptTextX1 = acceptButtonX1;
  acceptTextY1 = acceptButtonY1;
  acceptTextWidth1 = acceptButtonWidth1;
  acceptTextHeight1 = acceptButtonHeight1;
  choice1TextFontBold = createFont("TimesNewRomanPS-BoldMT", 601);
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFontBold, startTextSize); //CHANGE TO BOLD
  text(acceptText1, acceptTextX1, acceptTextY1, acceptTextWidth1, acceptTextHeight1);
}//End acceptText1
//
void declineText1() {
  //Population
  declineTextX1 = declineButtonX1;
  declineTextY1 = declineButtonY1;
  declineTextWidth1 = declineButtonWidth1;
  declineTextHeight1 = declineButtonHeight1;
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFontBold, startTextSize); //CHANGE TO BOLD
  text(declineText1, declineTextX1, declineTextY1, declineTextWidth1, declineTextHeight1);
}//End declineText1
//
void acceptChoiceText1() {
  acceptChoiceTextX1 = rect9X2;
  acceptChoiceTextY1 = rect9Y2;
  acceptChoiceTextWidth1 = rect9Width;
  acceptChoiceTextHeight1 = rect9Height*1/5;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, startTextSize);
  text(acceptChoiceText1, acceptChoiceTextX1, acceptChoiceTextY1, acceptChoiceTextWidth1, acceptChoiceTextHeight1);
  fill(resetWhite);
}//End acceptChoiceText1()
//
void ripText1() {
  //Population
  ripTextX1 = ripButtonX1;
  ripTextY1 = ripButtonY1;
  ripTextWidth1 = ripButtonWidth1;
  ripTextHeight1 = ripButtonHeight1;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(ripText1, ripTextX1, ripTextY1, ripTextWidth1, ripTextHeight1);
  fill(resetWhite);
}//End ripText1
//
void declineChoiceText1() {
  declineChoiceTextX1 = rect9X3;
  declineChoiceTextY1 = rect9Y3;
  declineChoiceTextWidth1 = rect9Width;
  declineChoiceTextHeight1 = rect9Height*1/3;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(choice1TextFont1, startTextSize);
  text(declineChoiceText1, declineChoiceTextX1, declineChoiceTextY1, declineChoiceTextWidth1, declineChoiceTextHeight1);
  fill(resetWhite);
}//End declineChoiceText1()
//
void ripText2() {
  //Population
  ripTextX2 = ripButtonX2;
  ripTextY2 = ripButtonY2;
  ripTextWidth2 = ripButtonWidth2;
  ripTextHeight2 = ripButtonHeight2;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(ripText2, ripTextX2, ripTextY2, ripTextWidth2, ripTextHeight2);
  fill(resetWhite);
}//End ripText1
//
void respectText1() {
  //Population
  respectTextX1 = rect9X2;
  respectTextY1 = rect9Y2;
  respectTextWidth1 = rect9Width;
  respectTextHeight1 = rect9Height;
  impactTextFont = createFont("Impact", 281);
  //
  fill(resetWhite);
  textAlign(CENTER, CENTER);
  textFont(impactTextFont, biggerTextSize);
  text(respectText1, respectTextX1, respectTextY1, respectTextWidth1, respectTextHeight1);
}//End ripText1
//
/*void choseAcceptText1() {
  //Population
  choseAcceptTextX1 = rect9X1+rect9Width*1/2;
  choseAcceptTextY1 = rabbitStandingImageY;
  choseAcceptTextWidth1 = rect9Width/2;
  choseAcceptTextHeight1 = rect9Height*2/3;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, startTextSize);
  text(choseAcceptText1, choseAcceptTextX1, choseAcceptTextY1, choseAcceptTextWidth1, choseAcceptTextHeight1);
  fill(resetWhite);
}//End ripText1*/
//
void resetText() {
  //Population
  resetTextX = resetButtonX;
  resetTextY = resetButtonY;
  resetTextWidth = resetButtonWidth;
  resetTextHeight = resetButtonHeight;
  //
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, biggerTextSize);
  text(resetText, resetTextX, resetTextY, resetTextWidth, resetTextHeight);
}
//
void lottoText1() {
  //Population
  lottoTextX1 = rect9X7;
  lottoTextY1 = rect9Y7; 
  lottoTextWidth1 = rect9Width;
  lottoTextHeight1 = rect9Height;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, startTextSize);
  fill(red);
  text(lottoText1, lottoTextX1, lottoTextY1, lottoTextWidth1, lottoTextHeight1);
  fill(resetWhite);
}
//
void okText7() {
  //Population
  okTextX7 = lottoButtonX1;
  okTextY7 = lottoButtonY1;
  okTextWidth7 = lottoButtonWidth1;
  okTextHeight7 = lottoButtonHeight1;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, biggerTextSize);
  text(okText7, okTextX7, okTextY7, okTextWidth7, okTextHeight7);
  fill(resetWhite);
}
//
void lottoText2() {
  //Population
  lottoTextX2 = rect9X8;
  lottoTextY2 = rect9Y8; 
  lottoTextWidth2 = rect9Width;
  lottoTextHeight2 = rect9Height;
  lottoTextFont2= createFont("Impact", 281);
  //
  textAlign(CENTER, CENTER);
  textFont(lottoTextFont2, ultimateSize);
  fill(resetWhite);
  text(lottoText2, lottoTextX2, lottoTextY2, lottoTextWidth2, lottoTextHeight2);
}
//
void okText8() {
  //Population
  okTextX8 = lottoButtonX2;
  okTextY8 = lottoButtonY2;
  okTextWidth8 = lottoButtonWidth2;
  okTextHeight8 = lottoButtonHeight2;
  //
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(startTextFont1, biggerTextSize);
  text(okText8, okTextX8, okTextY8, okTextWidth8, okTextHeight8);
  fill(resetWhite);
}
//
void lottoText3() {
  //Population
  lottoTextX3 = rect9X9;
  lottoTextY3 = rect9Y9; 
  lottoTextWidth3 = rect9Width;
  lottoTextHeight3 = rect9Height;
  //
  textAlign(CENTER, TOP);
  textFont(startTextFont1, startTextSize);
  fill(red);
  text(lottoText3, lottoTextX3, lottoTextY3, lottoTextWidth3, lottoTextHeight3);
  fill(resetWhite);
}
