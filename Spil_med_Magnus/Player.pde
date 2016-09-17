class player {  
  float playerWidth = 20;
  float playerHeight = 20;
  float playerX = 250-(playerWidth/2);
  float playerY = 50;

  void display() {
    rect(playerX, playerY, playerWidth, playerHeight);
  }
}