class player {
  float chopSizeX = 50;
  float chopSizeY = 20;
  float chopX = width/2 - chopSizeX/2; 



  // displays the player
  void display(float chopHeight) {
    pushStyle();
    fill(250, 18, 212);
    rect(chopX, chopHeight, chopSizeX, chopSizeY);
    popStyle();
  }
}