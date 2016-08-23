// vars for everything :P - Bjørn
// nice Lowercase "coin" while uppercase "Upgrade" - Mollermeister
int coin = 0;
int UpgradeWidth = 200;
int exp = 0;
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
  text("Coins: " + coin, UpgradeWidth/2 + width/2, 50);
  
  
  // Visible Menu with text and buttons - Bjørn
  pushStyle();
  fill(255, 0, 0);
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
 
  text("Lvl: ", 10, height / 10 / 2 - 5);
  text("Cost: ", 10, height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*1) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*1) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*2) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*2) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*3) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*3) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*4) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*4) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*5) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*5) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*6) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*6) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*7) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*7) + height / 10 / 2 + 5);
 
  text("Lvl: ", 10, (height / 10*8) + height / 10 / 2 - 5);
  text("Cost: ", 10, (height / 10*8) + height / 10 / 2 + 5);

  text("Get Exp: "+ exp, 10, (height / 10*9) + height / 10 / 2);
 
 }
// All Click related actions - Bjørn
void mousePressed() {
  if(mouseX > UpgradeWidth) {
    coin = coin + 1;
    exp++;
  }
  else {
//  return 0;
  
  
  }
  
}