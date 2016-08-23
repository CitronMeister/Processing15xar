// Variables - Moller
  int RectX = 1050;
  int RectY = 520;
  float BallDiameter = 50;
  float BallX = 0 + BallDiameter;
  float BallY = random(BallDiameter / 2, 960 - BallDiameter);
  int TextSize = 60;
  int BackGR = 240;
  int BackGG = 240;
  int BackGB = 240;
  int BallR = 220;
  int BallG = 220;
  int BallB = 95;
  int BoxR = 0;
  int BoxG = 0;
  int BoxB = 0;
  
  //Test
  
void setup() {
  fullScreen();
}
  
void draw() {
  
  // background to make the "old" ball disappear - Moller
   background(BackGR, BackGG, BackGB);
   
  if(mouseX >= RectX && mouseX <= RectX + TextSize && mouseY >= RectY && mouseY <= RectY + TextSize) {
    
    //ball color = yellow - Moller
    fill(#DCE55F); // hex? - Bjørn
    //The ball itself - Moller
    ellipse(BallX, BallY, BallDiameter, BallDiameter);
    
  
  // if statement which makes the ball move and change Y coordinat - Moller
    if(BallX < 1600 + (BallDiameter/2)) {
      BallX = BallX + 10;
    }else {
      BallX = 0 - (BallDiameter/2);
      BallY = random(BallDiameter * 2, 960 - BallDiameter);
    }
  }else {
    // Color for the text - Moller
    fill(#000000);
    textSize(TextSize);
    text("FGT\nHold Your mouse right here -->", 100, 480);
    // Color for the box - Moller
    fill(#C931B8);
    rect(RectX, RectY, TextSize, TextSize);
  }
}