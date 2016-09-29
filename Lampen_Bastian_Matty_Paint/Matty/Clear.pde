class clearBoard {
  int mouseClicked = 0;

  void clearFirstPress() {
    if (mousePressed == true) {
      mouseClicked++;
    }
    if (mouseClicked > 0) {
      background(255);
    }
  }
  void drawBox() {
    pushStyle();
    fill(150);
    rect(0, height/2 + height/4, width/6, height/4);
    popStyle();
    pushStyle();
    fill(0);
    textAlign(CENTER);
    textSize(30);
    text("Clear\npainting", width/(6*2), height/2 + height/4 + height/(4*2)-10);
    popStyle();  
  }
}