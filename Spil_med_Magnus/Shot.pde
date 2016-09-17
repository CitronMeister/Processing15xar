class shot {  


  void display() {
    float d = 10;
    float shotX = p.playerX+p.playerWidth/2;
    float shotY = p.playerY+p.playerHeight/2;
    ellipse(shotX, shotY, d, d);
  }
}