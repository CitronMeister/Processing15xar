// Visible Menu with buttons - Bjørn
public void visMenu(){
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
}

public void hoverMenu(){
  if(mouseX <= upgradeWidth && mouseY <= (height / 10*8)){
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8, height / 4);
    popStyle();  
  }
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*10)) {
    pushStyle();
    noStroke();    
    fill(255, 255, 255, transparency);
    rect(mouseX + 15, mouseY, width / 8,- height / 4);
    popStyle();  
  }
}
public void hoverText() {
  //red
  if(mouseX <= upgradeWidth && mouseY <= (height / 10*1)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Red", mouseX + width/50, mouseY + 26);
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
  
  //Orange
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*2)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Orange", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // Yellow
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*3)) {
    pushStyle();
    textSize(hoverText);
    text("Name: yellow", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // Green
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*4)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Green", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // turquoise
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*5)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Green", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // blue
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*6)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Green", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // Deep purple
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*7)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Green", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
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
  // 
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*8)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Green", mouseX + width/50, mouseY + 26);
    popStyle();
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*2);
    text("Passive: ", mouseX + width/50, mouseY + 26 + hoverText*3);
    if (gold >= purpleUpgPrice) {
      pushStyle();
      fill(0, 255, 0);
      text("Price: " + purpleUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
    else {
      pushStyle();
      fill(255, 0, 0);
      text("Price: " + purpleUpgPrice, mouseX + width/50, mouseY + 26 + hoverText);
      popStyle();
    }
  }
  else if(mouseX <= upgradeWidth && mouseY <= (height / 10*9)) {
    pushStyle();
    textSize(hoverText);
    text("Name: Pink", mouseX + width/50,mouseY - height / 4 +  26);
    popStyle();
    text("Passive: ", mouseX + width/50,mouseY - height / 4 +  26 + hoverText*2);
    text("Passive: ", mouseX + width/50,mouseY - height / 4 +  26 + hoverText*3);
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