void setup(){
  size(1600, 960);

}

  float BallX = 50;
  float BallY = 50;
  float BallDiameter = 20;
  
void draw(){
  // background to make the "old" ball disappear
   background(240, 240, 240);
  //The ball itself
  ellipse(BallX, BallY, BallDiameter, BallDiameter);
  //ball color = yellow
  fill(#DCE55F);
  // if statement which makes the ball move
  if(BallX < 1600 + (BallDiameter / 2)){
   BallX = BallX + 10;
  }else{
    BallX = 0 - (BallDiameter / 2);
  }
}