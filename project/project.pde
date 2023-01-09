//Global Variables
color buttonFill, resetWhite=#FFFFFF, black=#000000, red=#FF0000, green=#00FF00, yellow=#FFFF00, brown=#643200, backgroundColor;
Boolean startButton1ON=false, startButton2ON=false, okButton4ON=false, acceptButton1ON=false, declineButton1ON=false, okButton7ON=false, okButton8ON=false;
int h = hour();
//
void setup() {
  size(1200, 750);
  if ( width > displayWidth || height > displayHeight ) {
    //CANVAS Too Big
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  populationVariables();
  rect(rect9X1, rect9Y1, rect9Width, rect9Height);
  rect(rect9X2, rect9Y2, rect9Width, rect9Height);
  rect(rect9X3, rect9Y3, rect9Width, rect9Height);
  rect(rect9X4, rect9Y4, rect9Width, rect9Height);
  rect(rect9X5, rect9Y5, rect9Width, rect9Height);
  rect(rect9X6, rect9Y6, rect9Width, rect9Height);
  rect(rect9X7, rect9Y7, rect9Width, rect9Height);
  rect(rect9X8, rect9Y8, rect9Width, rect9Height);
  rect(rect9X9, rect9Y9, rect9Width, rect9Height);
  if (h >= 20 || h<=7) {
    backgroundColor = color(random(100, 255), random(255), 0);
    println("nightMode ON");
  } else {
    backgroundColor = color(random(100, 255), random(255), random(255));
    println("nightMode OFF");
  }
  background(backgroundColor);
}//End setup
//
void draw() {
  //Hover-over start button 1
  if ( mouseX> startX1 && mouseX< startX1+startButtonWidth1 && mouseY> startY1 && mouseY< startY1+startButtonHeight1 ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(startX1, startY1, startButtonWidth1, startButtonHeight1);
  //Hover-over start button 2
  if ( mouseX> startX2 && mouseX< startX2+startButtonWidth2 && mouseY> startY2 && mouseY< startY2+startButtonHeight2 ) {
    buttonFill = black;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(startX2, startY2, startButtonWidth2, startButtonHeight2);
  //
  fill(resetWhite);
  //
  startImage();
  startImage= loadImage("../Images Used/start button.png"); //width 512 height 512
  image(startImage, startImageX, startImageY, startImageWidth, startImageHeight);
  //
  startText1();
  startText2();
  //
  //Hover-over start button 2
  if ( mouseX> resetButtonX && mouseX< resetButtonX+resetButtonWidth && mouseY> resetButtonY && mouseY< resetButtonY+resetButtonHeight ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-over
  fill(buttonFill);
  rect(resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
  fill(resetWhite);
  resetText();
  //First Start Choice
  //
  if ( startButton1ON==true ) {
    fill(backgroundColor);
    rect( startX2, startY2, startButtonWidth2, startButtonHeight2 );
    fill(resetWhite);
    choice1Text1();
    //Hover-over OK BUTTON
    if ( mouseX> okButtonX4 && mouseX< okButtonX4+okButtonWidth4 && mouseY> okButtonY4 && mouseY< okButtonY4+okButtonHeight4 ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }//End Hover-over OK BUTTON
    fill(buttonFill); //2-colors to start , remember nightMode adds choice
    rect(okButtonX4, okButtonY4, okButtonWidth4, okButtonHeight4);
    oogwayImage();
    oogwayImage= loadImage("../Images Used/quotesthatprovemasteroogwayfromkungfupandaisthegreatestteachereverh_1427201176.jpeg");
    image(oogwayImage, oogwayImageX, oogwayImageY, oogwayImageWidth, oogwayImageHeight);
    okText4();
  }//End START Button 1
  //
  if ( okButton4ON==true ) {
    fill(backgroundColor);
    rect( startX2, startY2, startButtonWidth2, startButtonHeight2 );
    fill(resetWhite);
    choice1Text2();
    rabbitStandingImage();
    rabbitStandingImage= loadImage("../Images Used/standing.jpeg");
    image(rabbitStandingImage, rabbitStandingImageX, rabbitStandingImageY, rabbitStandingImageWidth, rabbitStandingImageHeight);
    raceImage();
    raceImage= loadImage("../Images Used/10687379345_555c9954a1_b.jpeg");
    image(raceImage, raceImageX, raceImageY, raceImageWidth, raceImageHeight);
    fill(green);
    rect(acceptButtonX1, acceptButtonY1, acceptButtonWidth1, acceptButtonHeight1);
    fill(red);
    rect(declineButtonX1, declineButtonY1, declineButtonWidth1, declineButtonHeight1);
    acceptText1();
    declineText1();
  }//End okButton 4th rect
  //
  if ( acceptButton1ON==true ) {
    fill(backgroundColor);
    rect( startX2, startY2, startButtonWidth2, startButtonHeight2 );
    fill(resetWhite);
    acceptChoiceText1();
    pressFImage();
    pressFImage= loadImage("../Images Used/pressf.jpeg");
    image(pressFImage, pressFImageX, pressFImageY, pressFImageWidth, pressFImageHeight);
    fill(brown);
    rect(ripButtonX1, ripButtonY1, ripButtonWidth1, ripButtonHeight1);
    fill(resetWhite);
    if (key=='f' || key=='F') {
      respectText1();
    }
    //rect(choseAcceptTextX1, choseAcceptTextY1, choseAcceptTextWidth1, choseAcceptTextHeight1);
    //choseAcceptText1();
    ripText1();
  }
  //
  if ( declineButton1ON==true ) {
    acceptButton1ON=false;
    fill(backgroundColor);
    rect( startX2, startY2, startButtonWidth2, startButtonHeight2 );
    fill(resetWhite);
    declineChoiceText1();
    gravestoneImage();
    gravestoneImage= loadImage("../Images Used/gravestone.png");
    image(gravestoneImage, gravestoneImageX, gravestoneImageY, gravestoneImageWidth, gravestoneImageHeight);
    fill(brown);
    rect(ripButtonX2, ripButtonY2, ripButtonWidth2, ripButtonHeight2);
    fill(resetWhite);
    //rect(choseDeclineTextX2, choseDeclineTextY2, choseDeclineTextWidth2, choseDeclineTextHeight2);
    //choseDeclineText2();
    ripText2();
  }
  //
  //Second Start Choice
  //
  if ( startButton2ON==true ) {
    fill(backgroundColor);
    rect( startX1, startY1, startButtonWidth1, startButtonHeight1 );
    fill(resetWhite);
    givemoneyImage();
    givemoneyImage= loadImage("../Images Used/givemoney.jpeg");
    image(givemoneyImage, givemoneyImageX, givemoneyImageY, givemoneyImageWidth, givemoneyImageHeight);
    if ( mouseX> lottoButtonX1 && mouseX< lottoButtonX1+lottoButtonWidth1 && mouseY> lottoButtonY1 && mouseY< lottoButtonY1+lottoButtonHeight1 ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(lottoButtonX1, lottoButtonY1, lottoButtonWidth1, lottoButtonHeight1);
    fill(resetWhite);
    lottoText1();
    okText7();
  }//End START Button 2
  //
  if ( okButton7ON==true ) {
    fill(backgroundColor);
    rect( startX1, startY1, startButtonWidth1, startButtonHeight1 );
    fill(resetWhite);
    lotteryImage();
    lotteryImage= loadImage("../Images Used/lottery.jpeg");
    image(lotteryImage, lotteryImageX, lotteryImageY, lotteryImageWidth, lotteryImageHeight);
    if ( mouseX> lottoButtonX2 && mouseX< lottoButtonX2+lottoButtonWidth2 && mouseY> lottoButtonY2 && mouseY< lottoButtonY2+lottoButtonHeight2 ) {
      buttonFill = green;
    } else {
      buttonFill = yellow;
    }
    fill(buttonFill);
    rect(lottoButtonX2, lottoButtonY2, lottoButtonWidth2, lottoButtonHeight2);
    fill(resetWhite);
    lottoText2();
    okText8();
  }//End okButton7
  //
  if ( okButton8ON==true ) {
    fill(backgroundColor);
    rect( startX1, startY1, startButtonWidth1, startButtonHeight1 );
    fill(resetWhite);
    robberImage();
    robberImage= loadImage("../Images Used/robbery.jpeg");
    image(robberImage, robberImageX, robberImageY, robberImageWidth, robberImageHeight);
    lottoText3();
  }
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  startButton1ON=false;
  startButton2ON=false;
  okButton4ON=false;
  acceptButton1ON=false;
  declineButton1ON=false;
  okButton7ON=false;
  okButton8ON=false;
  if ( mouseX>=startX1 && mouseX<=startX1+startButtonWidth1 && mouseY>=startY1 && mouseY<=startY1+startButtonHeight1 ) startButton1ON=true;
  if ( mouseX>=startX2 && mouseX<=startX2+startButtonWidth2 && mouseY>=startY2 && mouseY<=startY1+startButtonHeight2 ) startButton2ON=true;
  if ( mouseX>=okButtonX4 && mouseX<=okButtonX4+okButtonWidth4 && mouseY>=okButtonY4 && mouseY<=okButtonY4+okButtonHeight4 ) okButton4ON=true;
  if ( mouseX>=acceptButtonX1 && mouseX<=acceptButtonX1+acceptButtonWidth1 && mouseY>=acceptButtonY1 && mouseY<=acceptButtonY1+acceptButtonHeight1 ) {
    acceptButton1ON=true;
    declineButton1ON=false;
  }
  if ( mouseX>=declineButtonX1 && mouseX<=declineButtonX1+declineButtonWidth1 && mouseY>=declineButtonY1 && mouseY<=declineButtonY1+declineButtonHeight1 ) {
    declineButton1ON=true;
    acceptButton1ON=false;
  }
  if ( mouseX> lottoButtonX1 && mouseX< lottoButtonX1+lottoButtonWidth1 && mouseY> lottoButtonY1 && mouseY< lottoButtonY1+lottoButtonHeight1 ) okButton7ON=true;
  if ( mouseX> lottoButtonX2 && mouseX< lottoButtonX2+lottoButtonWidth2 && mouseY> lottoButtonY2 && mouseY< lottoButtonY2+lottoButtonHeight2 ) okButton8ON=true;
  if ( mouseX> resetButtonX && mouseX< resetButtonX+resetButtonWidth && mouseY> resetButtonY && mouseY< resetButtonY+resetButtonHeight ) {
    fill(backgroundColor);
    rect(rect9X1, rect9Y1, rect9Width, rect9Height);
    rect(rect9X2, rect9Y2, rect9Width, rect9Height);
    rect(rect9X3, rect9Y3, rect9Width, rect9Height);
    rect(rect9X4, rect9Y4, rect9Width, rect9Height);
    rect(rect9X6, rect9Y6, rect9Width, rect9Height);
    rect(rect9X7, rect9Y7, rect9Width, rect9Height);
    rect(rect9X8, rect9Y8, rect9Width, rect9Height);
    rect(rect9X9, rect9Y9, rect9Width, rect9Height);
    fill(resetWhite);
  }
}//End mousePressed
//
//End MAIN Program
