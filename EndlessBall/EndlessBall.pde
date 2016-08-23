// Variables - Moller
  int RectX = 1050;
  int RectY = 520;
  float BallSpeed = random(5,15);
  float BallDiameter = 50;
  float BallX = 0 + BallDiameter;
  float BallY = random(BallDiameter / 2, height - BallDiameter);
  int TextSize = height/100*33;
  // Colors
  int BackgR = 240;
  int BackgG = 240;
  int BackgB = 240;
  float BallR = random(40,215);
  float BallG = random(40,215);
  float BallB = random(40,215);
  int BoxR = 0;
  int BoxG = 0;
  int BoxB = 0;
  
  //Test
  
void setup() {
  fullScreen();
  frameRate(60);
}
  
void draw() {
  
  // background to make the "old" ball disappear - Moller
  background(BackgR, BackgG, BackgB);
  
    
  if(mouseX >= (width/2) && mouseX <= (width/2) + (TextSize*2) && mouseY >= (height/2) && mouseY <= (height/2) + (TextSize*2)) {
    
    //ball color - Moller
    fill(BallR, BallG, BallB); 
    //The ball itself - Moller
    ellipse(BallX, BallY, BallDiameter, BallDiameter);
    
  
  // if statement which makes the ball move and change Y coordinat - Moller
    if(BallX < width + (BallDiameter/2)) {
      BallX = BallX + BallSpeed;
    }else {
      BallX = 0 - (BallDiameter/2);
      BallY = random(BallDiameter, height - BallDiameter);
      
      // Makes the Ballspeed random after each cycle - Moller
      BallSpeed = random(5,15);
      
      // Makes Ball color random - Moller
      BallR = random(40,215);
      BallG = random(40,215);
      BallB = random(40,215);
    }
  }else {
    // Color,size and the text itself - Moller
    fill(#000000);
    textSize(TextSize);
    text("Hold Your mouse in the square", 50, 50);
    // Color for the box and the box itself - Moller
    fill(#C931B8);
    rect((width/2), (height/2), TextSize*2, TextSize*2);
  }
}