// Variables - Moller
float BallSpeed = random(5,15);
float BallDiameter = 50;
float BallX = 0 + BallDiameter;
float BallY = random(BallDiameter / 2, height - BallDiameter);
int TextSize = height/100*33;


// Colors - Moller
// Background Colors - Bjørn
int BackgR = 240, BackgG = 240, BackgB = 240;
// Ball Colors - Bjørn
float BallR = random(40, 240), BallG = random(40, 240), BallB = random(40, 240);
// Box Colors - Moller
float BoxR = random(40, 240), BoxG = random(40, 240), BoxB = random(40, 240);
  
  
void setup() {
  fullScreen();
  // no peaseantry here 60 fps all the way
  frameRate(60);
} 
void draw() {
  
// background to make the "old" ball disappear - Moller
background(BackgR, BackgG, BackgB);
  
// checks if the mouse position is right - Moller
if(mouseX >= (width/2)-TextSize && mouseX <= (width/2)-TextSize + (TextSize*2) && mouseY >= (height/2)-TextSize && mouseY <= (height/2)-TextSize + (TextSize*2)) {
    // Making Box color random when held in the box
    BoxR = random(40, 240); 
    BoxG = random(40, 240); 
    BoxB = random(40, 240);
    
    // Ball color and the ball itself - Moller
    fill(BallR, BallG, BallB); 
    ellipse(BallX, BallY, BallDiameter, BallDiameter);
    
    // if statement which test if ball is on screen - Moller
    if(BallX < width + (BallDiameter/2)) {
      BallX = BallX + BallSpeed;
    }
    else {
      BallX = 0 - (BallDiameter/2);
      BallY = random(BallDiameter, height - BallDiameter);
      
      // Makes the Ballspeed random after each cycle - Moller
      BallSpeed = random(5, 15);
      
      // Makes Ball color random - Moller
      BallR = random(40, 215);
      BallG = random(40, 215);
      BallB = random(40, 215);
    }
}
else {
    // Color,size and the text itself - Moller
    fill(0, 0, 0);
    textSize(TextSize);
    text("Hold Your mouse in the square", 50, 50);
    // Color for the box and the box itself - Moller
    fill(BoxR, BoxG, BoxB);
    rect((width/2)-TextSize, (height/2)-TextSize, TextSize*2, TextSize*2);
  }
}