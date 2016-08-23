// vars for everything :P - Bjørn
// nice Lowercase "coin" while uppercase "Upgrade" - Mollermeister
int coin = 0;
int UpgradeWidth = 200;
int exp = 0;
int Multi = 0;
int expBonus = 0;

// Upgrade cost + price vars - Bjørn
int redUpgPrice = 1;
int orangeUpgPrice = 10;
int yellowUpgPrice = 50;
int greenUpgPrice = 500;
int turquoiseUpgPrice = 2500;
int blueUpgPrice = 5000;
int deeppurpleUpgPrice = 150000;
int purpleUpgPrice = 1000000;
int pinkUpgPrice = 2500000;

// defined as placeholders - Bjørn
final int x = 1;
final int y = 1;


void setup() {
fullScreen();
//size(1600, 960);
surface.setResizable(true);
}

void draw() {
  // Background to be changed later :P - Bjørn
  background(0);
  // coins and exp - Bjørn
  text("Coins: " + coin, UpgradeWidth/2 + width/2, height/15);
  text("Exp: " + exp, UpgradeWidth/2 + width / 2, height/15 + 10);
  // Visible Menu with text and buttons - Bjørn
  pushStyle();
  fill(255, 0, 0); // Red
  rect(0, 0, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 128, 0); // Orange
  rect(0, height / 10, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 255, 0);
  rect(0, height / 10 * 2, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 255, 0);
  rect(0, height / 10*3, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 255, 255);
  rect(0, height / 10*4, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 0, 255);
  rect(0, height / 10*5, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(127, 0, 255);
  rect(0, height / 10*6, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 0, 255);
  rect(0, height / 10*7, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 0, 127);
  rect(0, height / 10*8, UpgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(128, 128, 128);
  rect(0, height / 10*9, UpgradeWidth, height / 10);
  popStyle();
 // all text for the menu
 
  pushStyle(); 
  fill(0, 0, 0);
  text("Lvl: ", 10, height / 10 / 2 - 5);
  text("Cost: " + redUpgPrice, 10, height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*1) + height / 10 / 2 - 5);
  text("Cost: " + orangeUpgPrice, 10, (height / 10*1) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*2) + height / 10 / 2 - 5);
  text("Cost: " + yellowUpgPrice, 10, (height / 10*2) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*3) + height / 10 / 2 - 5);
  text("Cost: " + greenUpgPrice, 10, (height / 10*3) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*4) + height / 10 / 2 - 5);
  text("Cost: " + turquoiseUpgPrice, 10, (height / 10*4) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*5) + height / 10 / 2 - 5);
  text("Cost: " + blueUpgPrice, 10, (height / 10*5) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*6) + height / 10 / 2 - 5);
  text("Cost: " + deeppurpleUpgPrice, 10, (height / 10*6) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*7) + height / 10 / 2 - 5);
  text("Cost: " + purpleUpgPrice, 10, (height / 10*7) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*8) + height / 10 / 2 - 5);
  text("Cost: " + pinkUpgPrice, 10, (height / 10*8) + height / 10 / 2 + 5);
  popStyle();
  pushStyle();
  textSize(24);
  text("Buy Exp", UpgradeWidth / 3.8, (height / 10*9) + height / 10 / 2 + 6);
  popStyle();
 }
// All Click related actions - Bjørn
void mousePressed() {
  if(mouseX > UpgradeWidth) {
    coin = coin + 1 + Multi;
    exp = exp + 1 + expBonus;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*1) && coin >= redUpgPrice) {
    coin = coin - redUpgPrice;
    expBonus++;
    Multi = Multi + 1;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*2) && coin >= orangeUpgPrice && exp >= 10) {
    coin = coin - orangeUpgPrice;
    exp = exp - 10;  
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*3) && coin >= yellowUpgPrice && exp >= 15) {
    coin = coin - yellowUpgPrice;
    exp = exp - 15;
    Multi = Multi + 2;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*4) && coin >= greenUpgPrice && exp >= 20) {
    coin = coin - greenUpgPrice;
    exp = exp - 20;
    Multi = Multi + 3;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*5) && coin >= turquoiseUpgPrice && exp >= 50) {
    coin = coin - turquoiseUpgPrice;
    exp = exp - 50;
    Multi = Multi + 5;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*6) && coin >= blueUpgPrice && exp >= 1000) {
    coin = coin - blueUpgPrice;
    exp = exp - 1000;
    Multi = Multi + 10;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*7) && coin >= deeppurpleUpgPrice && exp >= 2000) {
    coin = coin - deeppurpleUpgPrice;
    exp = exp - 2000;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*8) && coin >= purpleUpgPrice && exp >= 5000) {
    coin = coin - purpleUpgPrice;
    exp = exp - 5000;   
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*9) && coin >= pinkUpgPrice && exp >= 10000) {
    coin = coin - pinkUpgPrice;
    exp = exp - 10000;    
  }
  
  else if(mouseX <= 200 && mouseY >= (height / 10*9) && coin >= 1000) {
    coin = coin - 1000;
    exp = exp + 50; 
  }  
}