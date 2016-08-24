//Variables for the ball size, -color and speed
float ballXCord, ballYCord, ballRadius, speedX, speedY, colorOption1 = 255, colorOption2 = 255, colorOption3 = 255, boostSpeed = 11, standardSpeed = 5;
//Booleans for moving
boolean up, down, left, right;

//Boolean/variables for the boost mehanic
float boost, boostRecharging;
boolean boostActive;

//Variables for the boostbar
float BoostRectX = 400, BoostRectY = 500, BoostRectWidth, BoostRectHeight= 20, BoostRectColor1 = 0, BoostRectColor2 = 255, BoostRectColor3 = 0;


void setup() {
  size(900, 600); ////fullScreen();
  
  //Varialbe declarations
  ballXCord = width/2;
  ballYCord = height/2;
  ballRadius = 60;
  speedX = 5;
  speedY = 5;
  boost = 180;
}


void draw() { 
  boostRecharging ++;
  
  drawBall();
  moveBallAndColor();
  Restrictions();
  useBoost();
  drawBoostBar();
  
 
  
}


void drawBall() {
  background(0);
  fill (colorOption1, colorOption2, colorOption3);
  ellipse(ballXCord, ballYCord, ballRadius, ballRadius);
  fill(255);
}
void drawBoostBar() {
  BoostRectWidth = boost;
  fill (BoostRectColor1, BoostRectColor2, BoostRectColor3);
  rect(BoostRectX, BoostRectY, BoostRectWidth, BoostRectHeight);  
  fill(255);
}
//Makes the ball move and changes colors
void moveBallAndColor() {
  if (up) {
    ballYCord -= speedY;
    colorOption1 = 32;
    colorOption2 = 255;
    colorOption3 = 64;
  }
  if (down) {
    ballYCord += speedY;  
    colorOption1 = 35;
    colorOption2 = 54;
    colorOption3 = 255;
  }
  if (left) {
    ballXCord -= speedX;
    colorOption1 = 255;
    colorOption2 = 65;
    colorOption3 = 45;
  }
  if (right) {
    ballXCord += speedX;
    colorOption1 = 154;
    colorOption2 = 41;
    colorOption3 = 132;
  }
  //Boost part
    
  if (boostActive == true && boost > 0 ) {
    speedY = boostSpeed;
    speedX = boostSpeed;
    boost -= 0.5;
  }
  else {
    speedY = standardSpeed;
    speedX = standardSpeed;
    boostActive = false;
  }
}

//Checking for which keys are pressed
void keyPressed() {
  //Boost parts
  if (key == ' ' && boost > 0) {
    boostActive = true;
  }
   if (key == 'w' || key == 'W') {
    up = true;  
  }
   if (key == 's' || key == 'S') {
    down = true;
  }
   if (key == 'a' || key == 'A') {
    left = true;
  }
   if (key == 'd' || key == 'D') {
    right = true;
  }
}
//Checking for released keys
void keyReleased() {
   if (key == 'w' || key == 'W') {
    up = false;  
  }
   if (key == 's' || key == 'S') {
    down = false;
  }
   if (key == 'a' || key == 'A') {
    left = false;
  }
   if (key == 'd' || key == 'D') {
    right = false;
  }
  if (key == ' ') {
    boostActive = false;  
  }

}
//Ensures that the ball can't leave the given perimiter
void Restrictions() {
  if (ballYCord - ballRadius/2 < 0) {
    ballYCord += speedY;  
  }
  if (ballYCord + ballRadius/2 > height) {
    ballYCord -= speedY;  
  }
  if (ballXCord - ballRadius/2 < 0) {
    ballXCord += speedX;  
  }
  if (ballXCord + ballRadius/2 > width) {
    ballXCord -= speedX;  
  }
  //Ensures the boost doesn't get over 200
  if (boost > 200) {
    boost = 200;  
  }

}

//Adding fuel to the boost, with a simple incrimention
void useBoost() {
  if (boostRecharging > 20) {
    boost ++;
    boostRecharging = 0;
  }
  text("Boost: " + boost, 100, 100);
}