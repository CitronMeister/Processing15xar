class Movement {
  boolean right, left; //Booleans for movement to the right & left.
  float constantX = width/2; //X coordinate for the center of the circular movement
  float constantY = height/2; //Y coordinate for the center of the circular movement
  float angle = 0; //The startingpoint for the circles rotation
  float scale = 25+5; //The distance from the center of the circular movement to the player
  float speed = 0.1; //An influence on the distance per tick
  
  void booleans() {
    if (right) {
      player.x = constantX + sin(angle) * scale;
      player.y = constantY + cos(angle) * scale;
      angle += speed;
    }
    
    if (left) {
      player.x = constantX + sin(angle) * scale;
      player.y = constantY + cos(angle) * scale;
      angle -= speed;
    }
  }
}