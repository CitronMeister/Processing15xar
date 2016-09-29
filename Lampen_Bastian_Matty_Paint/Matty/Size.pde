class brushSize {
  int brushSize = 10;
  
  void drawBox() {
    pushStyle();
    fill(150);
    rect(0, height/4, width/6, height/4);
    popStyle();
    pushStyle();
    textSize(30);
    fill(0);
    text("+", width/31, height/3);
    text("-", width/9, height/3);
    popStyle();
  }
  void preview() {
      pushStyle();
      fill(0);
      ellipse(width/12.5, height/2.25, brushSize, brushSize);
      popStyle();  
  }
  
  
}