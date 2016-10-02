class StartScreen {
  //Logo's X, Y Coordinates & Length/Width of the Logo
  float paintLogoX = 10;
  float paintLogoY = 10;
  float otherLogoX = 120;
  float otherLogoY = 10;
  float LW = 100;
  float margin = 20;
  
  void GUI() {
    //Logo's Background
    rect(paintLogoX,paintLogoY,LW,LW,margin);
    rect(otherLogoX,otherLogoY,LW,LW,margin);
  }
  
  void menu() {
    //Checks if the Logo's are clicked.
    if(mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 110 && mousePressed){
      p.paintOn = true;
    }
  }
}