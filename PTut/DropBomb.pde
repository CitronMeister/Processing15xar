class bomb {
  int bombLive = 0;
  int bombLive2 = 0;
  int bombHeight = 45;
  float bombPlacementY = 100 + p.chopSizeY;
  float bombX;


  // run the intire bomb thing
  void bombTest() {
    if (bombLive > 0) {
      bombLive2 = 1;
      physics();
      display();
    }
  }
  // make sure the bomb falls
  void physics() {
    bombPlacementY = bombPlacementY + 1;
    if (bombPlacementY > 499) {
      bombLive = 0;
      bombLive2 = 0;
      bombPlacementY = 100 + p.chopSizeY;
    }
  }
  // displays the bomb
  void display() {    
    // the white bullet
    pushStyle();
    noStroke();
    ellipse(b.bombX + p.chopSizeX/2, bombPlacementY, 15, bombHeight);
    popStyle();
    // the invisible box
    pushStyle();
    noStroke();
    fill(71);
    rect(b.bombX + p.chopSizeX/2 - 15, bombPlacementY, 30, -40);
    popStyle();
  }
}