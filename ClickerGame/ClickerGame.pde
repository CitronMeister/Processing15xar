// vars for everything :P - Bjørn
// nice Lowercase "gold" while uppercase "Upgrade" - Mollermeister
int gold = 0;
int upgradeWidth = 200;
int exp = 0;
int Multi = 0;
int expBonus = 0;
int expToLevel = 100;
int playerLevel = 1;

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
// size(1600, 960);
surface.setResizable(true);
}

void draw() {
  
  // Background to be changed later :P - Bjørn
  background(0);
  
  // gold, level and exp - Bjørn
  text("gold: " + gold,width/2, height/15);
  text("Exp: " + exp + "/" + expToLevel,width / 2, height/15 + 15);
  text("Level: " + playerLevel, width/2, height/ 3 + height / 2);
  if(exp >= expToLevel) {
    playerLevel = playerLevel + 1;
    exp = 0;
    expToLevel = expToLevel * (playerLevel*2);
  
  }
  
  
  // Visible Menu with text and buttons - Bjørn
  pushStyle();
  fill(255, 0, 0); // Red
  rect(0, 0, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 128, 0); // Orange
  rect(0, height / 10, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 255, 0); // Yellow
  rect(0, height / 10 * 2, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 255, 0); // Green
  rect(0, height / 10*3, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 255, 255); // Turquoise
  rect(0, height / 10*4, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(0, 0, 255); // Blue
  rect(0, height / 10*5, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(127, 0, 255); // Deep Purple
  rect(0, height / 10*6, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 0, 255); // Purple
  rect(0, height / 10*7, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(255, 0, 127); // Pink
  rect(0, height / 10*8, upgradeWidth, height / 10);
  popStyle();
  
  pushStyle();
  fill(128, 128, 128); // Grey
  rect(0, height / 10*9, upgradeWidth, height / 10);
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
  text("Buy Exp", upgradeWidth / 3.8, (height / 10*9) + height / 10 / 2 + 6);
  popStyle();
  
  // Hover over - Bjørn
  if (mouseX <= 200 && mouseY <= (height / 10*1)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  
  else if (mouseX <= 200 && mouseY <= (height / 10*2)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*3)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*4)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*5)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*6)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*7)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*8)) {
    rect(mouseX + 15, mouseY, width / 8, height / 4);
  }
  else if (mouseX <= 200 && mouseY <= (height / 10*9)) {
    rect(mouseX + 15, mouseY, width / 8,- height / 4);
  }
  
  
}
// All Click related actions - Bjørn
void mousePressed() {
  if(mouseX > upgradeWidth) {
    gold = gold + 1 + Multi;
    exp = exp + 1 + expBonus;
  }
  
// All upgrade prices and multipliers
  else if(mouseX <= 200 && mouseY <= (height / 10*1) && gold >= redUpgPrice) {
    gold = gold - redUpgPrice;
    expBonus++;
    Multi = Multi + 1;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*2) && gold >= orangeUpgPrice && exp >= 10) {
    gold = gold - orangeUpgPrice;
    exp = exp - 10;  
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*3) && gold >= yellowUpgPrice && exp >= 15) {
    gold = gold - yellowUpgPrice;
    exp = exp - 15;
    Multi = Multi + 2;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*4) && gold >= greenUpgPrice && exp >= 20) {
    gold = gold - greenUpgPrice;
    exp = exp - 20;
    Multi = Multi + 3;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*5) && gold >= turquoiseUpgPrice && exp >= 50) {
    gold = gold - turquoiseUpgPrice;
    exp = exp - 50;
    Multi = Multi + 5;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*6) && gold >= blueUpgPrice && exp >= 1000) {
    gold = gold - blueUpgPrice;
    exp = exp - 1000;
    Multi = Multi + 10;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*7) && gold >= deeppurpleUpgPrice && exp >= 2000) {
    gold = gold - deeppurpleUpgPrice;
    exp = exp - 2000;
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*8) && gold >= purpleUpgPrice && exp >= 5000) {
    gold = gold - purpleUpgPrice;
    exp = exp - 5000;   
  }
  
  else if(mouseX <= 200 && mouseY <= (height / 10*9) && gold >= pinkUpgPrice && exp >= 10000) {
    gold = gold - pinkUpgPrice;
    exp = exp - 10000;    
  }
  
  else if(mouseX <= 200 && mouseY >= (height / 10*9) && gold >= 1000) {
    gold = gold - 1000;
    exp = exp + 50 * playerLevel;
  }  
}