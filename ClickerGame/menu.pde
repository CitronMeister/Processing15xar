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