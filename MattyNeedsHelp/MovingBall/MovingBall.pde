float ballXCord, ballYCord, ballRadius, speedX, speedY, colorOption1 = 255, colorOption2 = 255, colorOption3 = 255, boostSpeed = 11, standardSpeed = 5;
boolean up, down, left, right;
float boost, boostRecharging;
boolean boostActive;


void setup() {
  size(900, 600);
  
  //Varialbe declarations
  ballXCord = width/2;
  ballYCord = height/2;
  ballRadius = 60;
  speedX = 5;
  speedY = 5;
  boost = 100;
}


void draw() { 
  boostRecharging ++;
  
  drawBall();
  moveBallAndColor();
  Restrictions();
  useBoost();
  
 
  
}


void drawBall() {
  background(0);
  fill (colorOption1, colorOption2, colorOption3);
  ellipse(ballXCord, ballYCord, ballRadius, ballRadius);
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
  //Boost part - which not fucking works -.-'
    
  if (boostActive == true && boost > 50 ) {
    speedY = boostSpeed;
    speedX = boostSpeed;
    boost--;
  }
  else{
    speedY = standardSpeed;
    speedX = standardSpeed;
    boostActive = false;

  }

}



//Checking for which keys are pressed
void keyPressed() {
  //Boost parts that doesn't work
  if (key == ' ' && boost > 50) {
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
  /*if (key == ' ') {
    boostActive = false;
    speedX = standardSpeed;
    speedY = standardSpeed;
  }*/
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
}

//Just testing some stuff with this part
void useBoost() {
  if (boostRecharging > 60) {
    boost ++;
    boostRecharging = 0;
  }
  text("Boost: " + boost, 100, 100);
}