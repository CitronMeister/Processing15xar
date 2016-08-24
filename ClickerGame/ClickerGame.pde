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
  background(51);
  
  // gold, level and exp - Bjørn
  pushStyle();
  textAlign(CENTER);
  text("gold: " + gold,width/2, height/15);
  text(exp + "/" + expToLevel,width / 2, height/3 + height/2 + 20);
  text("Level: " + playerLevel, width/2, height/ 3 + height / 2);
  popStyle();
  // text("length of bar: " + width/10, width/2, height/ 3 + height / 2);
  pushStyle();
  rect(width / 2 - width/20, height / 5 + height / 2 + height / 5, width/10, height / 50);
  popStyle();
   
  // Scaleable exp bar - Moller
  pushStyle();
  fill(xpBarR, xpBarG, xpBarB);
  rect(width / 2 - width/20, height / 5 + height / 2 + height / 5, width/10*exp/expToLevel, height / 50);
  popStyle();
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
  // Buy exp button.
  pushStyle();
  textSize(24);
  text("Buy Exp", upgradeWidth / 3.8, (height / 10*9) + height / 10 / 2 + 6);
  popStyle();
  
  // Hover over - Bjørn
  if (mouseX <= upgradeWidth && mouseY <= (height / 10*1)) {
    pushStyle();
    noStroke();
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);      
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: Gain 1 extra exp per click", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: Gain 1 extra gold per click", mouseX + width/50, mouseY + 26 + hoverText*3);
    if (gold >= redUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + redUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + redUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();  
    }
  }
  // orange - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*2)) {
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: Gain 1-5 exp per click", mouseX + width/50, mouseY + 26 + hoverText*2);
    if (gold >= orangeUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + orangeUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + orangeUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();  
    }
  }
  // yellow - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*3)) {
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle(); 
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    if (gold >= yellowUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + yellowUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + yellowUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
  }
  // Green - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*4)) {
    pushStyle();
    noStroke();
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    if (gold >= greenUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + greenUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + greenUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
  }
  // turquoise - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*5)) {
    pushStyle();
    noStroke();
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    if (gold >= turquoiseUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + turquoiseUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + turquoiseUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
  }
  // blue - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*6)) {
    pushStyle();
    noStroke();
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    if (gold >= blueUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + blueUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + blueUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();  
    }
  }
  // deeppurple - Bjørn
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*7)) {
    pushStyle();
    noStroke();
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY + 26);
    popStyle();
    if (gold >= deeppurpleUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + deeppurpleUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + deeppurpleUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();  
    }
  }
  // purple purple
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*8)) {
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8,- height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50, mouseY - height / 4 + 26);
    popStyle();
    if (gold >= purpleUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + purpleUpgPrice, mouseX + width/50,mouseY - height / 4 +  26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + purpleUpgPrice, mouseX + width/50,mouseY - height / 4 +  26 + hoverText);
      popStyle();  
    }
  }
  // pink 
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*9)) {
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8,- height / 4);
    popStyle();
    pushStyle();
    textSize(hoverText);
    text("Name: ", mouseX + width/50,mouseY - height / 4 +  26);
    popStyle();
    if (gold >= pinkUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + pinkUpgPrice, mouseX + width/50,mouseY - height / 4 +  26 + hoverText);
      popStyle();    
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + pinkUpgPrice, mouseX + width/50,mouseY - height / 4 +  26 + hoverText);
      popStyle();  
    }
  }
  
  
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