class clearBoard {
  int mouseClicked = 0;
  //Removes the "Welcome to paint.HTX thing
  void clearFirstPress() {
    if (mousePressed == true) {
      mouseClicked++;
    }
    if (mouseClicked > 0) {
      background(255);
    }
  }
  //Draws the "clear" box and wirtes "clear painting" on 2 seperate lines
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
  
  void hoverBox() {
    //If the mouse is inside the frame of the box, the strokeWeight is enlarged, indicating that it is hovered
    if (mouseCord.xCord > 0 && mouseCord.xCord < width/6 && mouseCord.yCord > height/2 + height/4) {
      pushStyle();
      fill(150);
      strokeWeight(5);
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
}