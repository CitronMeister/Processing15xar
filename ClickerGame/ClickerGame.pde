// vars for everything :P - Bjørn
int gold = 0;
int upgradeWidth = 200;
int exp = 0;
int multi = 0;
int expBonus = 0;
int expToLevel = 100;
int playerLevel = 1;
int transparency = 200;
int hoverText = 20;
int xpBarR = 60, xpBarG = 80, xpBarB = 210;


// sounds if you have error click on the menu called sketct --> import library --> add library --> searchBar: "sound" --> install: "Sound | Sound library based on MethCla for processing."
import processing.sound.*;
SoundFile file;


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
  file = new SoundFile(this, "startSound.mp3");
  file.play();
  
}

void draw() {
  
  // Background to be changed later :P - Bjørn
  pushStyle();
  textSize(12);
  background(51);
  goldLevelExp();
  expBar();
  visMenu();
  hoverMenu();
  hoverText();
  popStyle();
}
// All Click related actions - Bjørn
void mousePressed() {
  if(mouseX > upgradeWidth) {
    gold = gold + 1 + multi;
    exp = exp + 1 + expBonus;
  }
  
// All upgrade prices and multipliers
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*1) && gold >= redUpgPrice) {
    gold = gold - redUpgPrice;
    expBonus++;
    multi = multi + 1;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*2) && gold >= orangeUpgPrice && exp >= 10) {
    gold = gold - orangeUpgPrice;
    exp = exp - 10;
    expBonus = expBonus + int(random(1, 5));
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*3) && gold >= yellowUpgPrice && exp >= 15) {
    gold = gold - yellowUpgPrice;
    exp = exp - 15;
    multi = multi + 2;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*4) && gold >= greenUpgPrice && exp >= 20) {
    gold = gold - greenUpgPrice;
    exp = exp - 20;
    multi = multi + 3;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*5) && gold >= turquoiseUpgPrice && exp >= 50) {
    gold = gold - turquoiseUpgPrice;
    exp = exp - 50;
    multi = multi + 5;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*6) && gold >= blueUpgPrice && exp >= 1000) {
    gold = gold - blueUpgPrice;
    exp = exp - 1000;
    multi = multi + 10;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*7) && gold >= deeppurpleUpgPrice && exp >= 2000) {
    gold = gold - deeppurpleUpgPrice;
    exp = exp - 2000;
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*8) && gold >= purpleUpgPrice && exp >= 5000) {
    gold = gold - purpleUpgPrice;
    exp = exp - 5000;   
  }
  
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*9) && gold >= pinkUpgPrice && exp >= 10000) {
    gold = gold - pinkUpgPrice;
    exp = exp - 10000;    
  }
  
  else if(mouseX <= upgradeWidth && mouseY >= (height / 10*9) && gold >= 1000) {
    gold = gold - 1000;
    exp = exp + 50 * playerLevel;
  }  
}
void expBar() {
  if(mouseX > 200) {
    pushStyle();
    rect(mouseX + width/50, mouseY + height/50, width / 10, height / 50);
    popStyle();
    pushStyle();
    fill(xpBarR, xpBarG, xpBarB);
    rect(mouseX + width/50, mouseY + height/50, width/10*exp/expToLevel, height / 50);
    popStyle();
    if(exp >= expToLevel) {
      playerLevel = playerLevel + 1;
      exp = 0;
      expToLevel = expToLevel * (playerLevel*2);
    }
  }
}

void goldLevelExp() {
  if(mouseX >200) {
  pushStyle();
  text("gold: " + gold, mouseX + width/50, mouseY - height/60);
  text(exp + "/" + expToLevel, mouseX + width/50, mouseY + height/60);
  text("Level: " + playerLevel, mouseX + width/50, mouseY);
  popStyle();
  // text("length of bar: " + width/10, width/2, height/ 3 + height / 2);
  }
}