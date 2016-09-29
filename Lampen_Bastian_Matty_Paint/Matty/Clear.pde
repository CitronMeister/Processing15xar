class clearBoard {
  int mouseClicked = 0;

  void mouseClick() {
    if (mousePressed == true) {
      mouseClicked++;
    }
    if (mouseClicked > 0) {
      background(255);
    }
  }
}