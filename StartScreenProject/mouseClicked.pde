void mouseClicked() {
  //Reset Drawing
  if(mouseX > 1150 && mouseX < 1200 && mouseY > 0 && mouseY < 20) {
    background(255);
  }
  
  //Deset Diameter
  if(mouseX > 1130 && mouseX < 1150 && mouseY > 0 && mouseY < 20) {
    p.diameter = 20;
  }
}