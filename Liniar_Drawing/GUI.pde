class GUI {
  GUI() {
  }

  void XCoord() {
    for (Line l : lines) {
      text("Start: "+l.xS, 10, 10);
      text("End: "+l.xE, 10, 30);
    }
  }
}