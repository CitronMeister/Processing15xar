/*
To do:  Add small balls randomly spawned to "eat". Add score and time to left and right side of buttonbox
 */

//Variables for the ball size, -color and speed
int ballXCord, ballYCord, ballDia, speedX, speedY, colorOption1 = 255, colorOption2 = 255, colorOption3 = 255, boostSpeed = 11, standardSpeed = 5;

//Booleans for moving
boolean up, down, left, right;

//Boolean/variables for the boost mehanic
int boost, boostRecharging;
boolean boostActive;
int maxBoost = 200;
int boostEat = 0;

//Variables for the boostbar
float BoostRectX = 400, BoostRectY = 565, BoostRectWidth, BoostRectHeight= 20, BoostRectColor1 = 0, BoostRectColor2 = 255, BoostRectColor3 = 0;

//Time played
int timePlayedSeconds = 0;
int timePlayedMinutes = 0;
int timePlayedInc = 0;
String timeUnit = " seconds";
boolean minutGone = false;

//Food
float foodX, foodY, foodDia = 15, foodColor1 = 242, foodColor2 = 255, foodColor3 = 93;


//Distance
float distance = sqrt(pow(ballXCord-foodX, 2)+ pow(ballYCord-foodY, 2));


void setup() {
  size(900, 600); //fullScreen();
  //surface.setResizable(true);
  //Varialbe declarations
  ballXCord = width/2;
  ballYCord = height/2;
  ballDia = 30;
  speedX = 5;
  speedY = 5;
  boost = 120;
  foodX = random(0+foodDia, width-foodDia);
  foodY = random(0+foodDia, height-foodDia-65);
}


void draw() { 
  boostRecharging ++;
  drawBall();
  moveBallAndColor();
  Restrictions();
  useBoost();
  drawBoostBar();
  ButtonBox();
  timePlayed();
  Food();
}


void drawBall() {
  background(0);
  fill (colorOption1, colorOption2, colorOption3);
  ellipse(ballXCord, ballYCord, ballDia, ballDia); //Own ball
  fill(255);
}
void drawBoostBar() {
  BoostRectWidth = boost;
  fill (255);
  rect(width/2 - maxBoost/2, BoostRectY, maxBoost, BoostRectHeight);
  fill (BoostRectColor1, BoostRectColor2, BoostRectColor3);
  rect(width/2- maxBoost/2, BoostRectY, BoostRectWidth, BoostRectHeight);  
  fill(255);
}
//Makes the ball move and changes colors
void moveBallAndColor() {
  if (up) {
    ballYCord -= speedY;
    colorOption1 = 32;
    colorOption2 = 87;
    colorOption3 = 41;
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
    boostEat++;
  } else {
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
  if (ballYCord - ballDia/2 < 0) {
    ballYCord += speedY;
  }
  if (ballYCord + ballDia/2 > height-65) {
    ballYCord -= speedY;
  }
  if (ballXCord - ballDia/2 < 0) {
    ballXCord += speedX;
  }
  if (ballXCord + ballDia/2 > width) {
    ballXCord -= speedX;
  }
  if (ballDia < 6) {
    ballDia = 5;
  }
}

//Adding fuel to the boost, with a simple incrimention
void useBoost() {
  if (boostRecharging > 15) {
    if (boost < maxBoost) {
      boost++;
    }
    boostRecharging = 0;
  }
  //Make ball smaller when boost is used
  if (boostEat > 30) {
    ballDia-=2;
    boostEat = 0;
  }
  textAlign(CENTER);
  textSize(14);  
  text("Boost: " + boost, width/2, height-45);
  //Also added the "Score" and "Time" here, to avoid the opacity on the text
  text("Size: " + ballDia, 100, height-45);
  //Displayed how many minutes and seconds that the program has run in.
  if (minutGone == false) {
    text("Time played: "+ timePlayedSeconds + timeUnit, 750, height-45);
  } else {
    text("Time played: "+ timePlayedMinutes + timeUnit + " and " + timePlayedSeconds + " seconds", 750, height-45);
  }
}
//Box in botton
void ButtonBox() {
  fill(255, 75);
  rect(0, height-64, width, height-55, 15);
}

void timePlayed() {
  timePlayedInc++;
  if (timePlayedInc >= 60) {
    timePlayedSeconds++;
    timePlayedInc = 0;
  }
  if (timePlayedSeconds > 59) {
    timeUnit = " minute(s)";
    timePlayedMinutes++;
    minutGone = true;
    timePlayedSeconds = 0;
  }
}

void Food() {
  distance = sqrt(pow(ballXCord-foodX, 2)+ pow(ballYCord-foodY, 2));
  fill(foodColor1, foodColor2, foodColor3);
  ellipse(foodX, foodY, foodDia, foodDia);
  fill(0);

  if (distance < ballDia/2 + foodDia/2) {
    foodX = random(0+foodDia, width-foodDia);
    foodY = random(0+foodDia, height-foodDia-65);
    ballDia++;
    boost += 3;
  }
}