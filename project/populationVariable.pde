//Global Variables
float rect9Width, rect9Height;
float rect9X1, rect9Y1, rect9X2, rect9Y2, rect9X3, rect9Y3, rect9X4, rect9Y4, rect9X5, rect9Y5, rect9X6, rect9Y6, rect9X7, rect9Y7, rect9X8, rect9Y8, rect9X9, rect9Y9;
float startX1, startY1, startButtonWidth1, startButtonHeight1;
float startX2, startY2, startButtonWidth2, startButtonHeight2;
float okButtonX4, okButtonY4, okButtonWidth4, okButtonHeight4;
float acceptButtonX1, acceptButtonY1, acceptButtonWidth1, acceptButtonHeight1;
float declineButtonX1, declineButtonY1, declineButtonWidth1, declineButtonHeight1;
float ripButtonX1, ripButtonY1, ripButtonWidth1, ripButtonHeight1;
float ripButtonX2, ripButtonY2, ripButtonWidth2, ripButtonHeight2;
float resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight;
float lottoButtonX1, lottoButtonY1, lottoButtonWidth1, lottoButtonHeight1;
float lottoButtonX2, lottoButtonY2, lottoButtonWidth2, lottoButtonHeight2;
//
void populationVariables() {
  //rect9
  rect9Width = width*1/3;
  rect9Height = height*1/3;
  rect9X1 = width*0;
  rect9Y1 = height*0;
  rect9X2 = rect9Width;
  rect9Y2 = rect9Y1;
  rect9X3 = rect9Width*2;
  rect9Y3 = rect9Y1;
  rect9X4 = rect9X1;
  rect9Y4 = rect9Height;
  rect9X5 = rect9X2;
  rect9Y5 = rect9Height;
  rect9X6 = rect9X3;
  rect9Y6 = rect9Height;
  rect9X7 = rect9X1;
  rect9Y7 = rect9Height*2;
  rect9X8 = rect9X2;
  rect9Y8 = rect9Y7;
  rect9X9 = rect9X3;
  rect9Y9 = rect9Y7;
  //
  startX1 = rect9X5;
  startY1 = rect9Y5;
  startButtonWidth1 = width*1/6;
  startButtonHeight1 = height*1/9;
  startX2 = startX1 + width*1/6;
  startY2 = startY1;
  startButtonWidth2 = startButtonWidth1;
  startButtonHeight2 = startButtonHeight1;
  //4th rect ok button
  okButtonX4 = rect9X4;
  okButtonY4 = rect9Y4+rect9Height*5/6;
  okButtonWidth4 = rect9Width;
  okButtonHeight4 = rect9Height*1/6;
  //1st rect accept/decline
  acceptButtonX1 = rect9X1;
  acceptButtonY1 = rect9Y1+rect9Height*5/6;
  acceptButtonWidth1 = rect9Width/2;
  acceptButtonHeight1 = rect9Height*1/6;
  declineButtonX1 = rect9X1+rect9Width*1/2;
  declineButtonY1 = rect9Y1+rect9Height*5/6;
  declineButtonWidth1 = rect9Width/2;
  declineButtonHeight1 = rect9Height*1/6;
  //
  ripButtonX1 = rect9X2+rect9Width*1/10;
  ripButtonY1 = rect9Height*5/6;
  ripButtonWidth1 = rect9Width*4/5;
  ripButtonHeight1 = rect9Height-ripButtonY1;
  ripButtonX2 = rect9X3+rect9Width*1/10;
  ripButtonY2 = rect9Height*5/6;
  ripButtonWidth2 = rect9Width*4/5;
  ripButtonHeight2 = rect9Height-ripButtonY2;
  //
  resetButtonX = rect9X6;
  resetButtonY = rect9Y6;
  resetButtonWidth = rect9Width;
  resetButtonHeight = rect9Height;
  //
  lottoButtonX1 = rect9X7;
  lottoButtonY1 = rect9Y7+rect9Height*2/3;
  lottoButtonWidth1 = rect9Width*1/4;
  lottoButtonHeight1 = rect9Height*1/3;
  lottoButtonX2 = rect9X8;
  lottoButtonY2 = rect9Y8+rect9Height*2/3;
  lottoButtonWidth2 = rect9Width*1/4;
  lottoButtonHeight2 = rect9Height*1/3;
}
