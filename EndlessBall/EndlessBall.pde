void setup(){
  size(1600, 960);

}
  // Variables - Moller
  int RectX = 1050;
  int RectY = 520;
  float BallDiameter = 20;
  float BallX = 0 + BallDiameter;
  float BallY = random(BallDiameter * 2, 960 - BallDiameter);
  int TextSize = 60; 
  
void draw(){
  
  // background to make the "old" ball disappear - Moller
   background(240, 240, 240);
   
  if(mouseX >= RectX && mouseX <= RectX + TextSize){
    // Color for the rectangle = purple ish
    fill(#C931B8);
    // the rectangle which has the length and depth of the text size
    rect(RectX, RectY, TextSize, TextSize);
    
    //ball color = yellow - Moller
    fill(#DCE55F);
    //The ball itself
    ellipse(BallX, BallY, BallDiameter, BallDiameter);
    
  
  // if statement which makes the ball move and change Y coordinat - Moller
    if(BallX < 1600 + (BallDiameter / 2)){
      BallX = BallX + 10;
    }else{
      BallX = 0 - (BallDiameter / 2);
      BallY = random(BallDiameter * 2, 960 - BallDiameter);
    }
  }else{
    // Color for the text
    fill(#000000);
    textSize(TextSize);
    text("FGT\nHold Your mouse right here -->", 100, 480);
    // Color for the box
    fill(#C931B8);
    rect(RectX, RectY, TextSize, TextSize);
  }
}