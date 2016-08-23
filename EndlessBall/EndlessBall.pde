// Variables - Moller
  int RectX = 1050;
  int RectY = 520;
  float BallDiameter = 50;
  float BallX = 0 + BallDiameter;
  float BallY = random(BallDiameter / 2, height - BallDiameter);
  int TextSize = 60;
  int BackGR = 10;
  int BackGG = 240;
  int BackGB = 240;
  float BallR = random(40,215);
  float BallG = random(40,215);
  float BallB = random(40,215);
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
  
    
  if(mouseX >= RectX && mouseX <= RectX + TextSize && mouseY >= (height/2) && mouseY <= (height/2) + TextSize) {
    
    //ball color - Moller
    fill(BallR, BallG, BallB); 
    //The ball itself - Moller
    ellipse(BallX, BallY, BallDiameter, BallDiameter);
    
  
  // if statement which makes the ball move and change Y coordinat - Moller
    if(BallX < width + (BallDiameter/2)) {
      BallX = BallX + 20;
    }else {
      BallX = 0 - (BallDiameter/2);
      BallY = random(BallDiameter, height - BallDiameter);
      
      // Makes Ball color random - Moller
      BallR = random(40,215);
      BallG = random(40,215);
      BallB = random(40,215);
    }
  }else {
    // Color for the text - Moller
    fill(#000000);
    textSize(TextSize);
    text("FAGGOT!!\nHold Your mouse right here -->", 100, (height/2)-40);
    // Color for the box - Moller
    fill(#C931B8);
    rect(RectX, (height/2), TextSize, TextSize);
  }
}