// vars

// Game vars
int screenSizeX = 1600;
int screenSizeY = 960;
boolean gameTutorial = true;
boolean firstQ = false;

int x = 1;
int y = 1;

// player
int playerHealth;
int playerGold;
boolean playerOnAdventure = false;



// Shop
boolean shopActive = true;
int shopSizeX;
int shopSizeY;




void setup() {
  //fullScreen();
  size(1920 , 1080);


}
void draw() {
  
  if(gameTutorial == true && firstQ == false){
    background(0, 255, 0);
    text("Do you want to complete the tutorial?", width/2, height/2);
    
  }
  else if(gameTutorial == true && firstQ == true) {
    background(0, 0, 255);
    text("YOU HAVE COMPLETED THE TUTORIAL!", width/2, height/2);
  
  
  }
  
  
  else {
    background(255, 0, 0);
    pushStyle();
    text("something went wrong or you didnt complete the tutorial", width/2, height/2);
    popStyle();
  }
}  



void mousePressed() {
  /* Tutorial Making so you choose everything with the mouse for now its going well :P 
  
  
  */
  if (gameTutorial == true && firstQ == false && mouseX < 1920/2) {
    firstQ = true;
  }
  else if(gameTutorial == true && firstQ == false && mouseX > 1920/2) {
    firstQ = false;
    gameTutorial = false;
  }
  
  
  else {
    
  }
}
  