class keyControl {
  int speed = 0;
  boolean up, down, left, right;

void move() {
  if(keyPressed) {
    speed = 5;
    if(key == 'a' || key == 'A') {
      left = true;
    } else if(key == 'd' || key == 'D') {
      right = true;
    } else if(key == 'w' || key == 'W') {
      up = true;
    } else if(key == 's' || key == 'S') {
      down = true;
    } else {
      speed = 0;
    }
  }
}

  void keyReleased() {
    if(key == 'a' || key == 'A') {
      left = false;
    }
    if(key == 'd' || key == 'D') {
      right = false;
    }
    if(key == 'w' || key == 'W') {
      up = false;
    }
    if(key == 's' || key == 'S') {
      down = false;
    }
  }
  
  void booleans() {
    if(up == true) {
      p.playerY = p.playerY-speed;
    }
    if(down == true) {
      p.playerY = p.playerY+speed;
    }
    if (left == true) {
      p.playerX = p.playerX-speed;
    }
    if(right == true) {
      p.playerX = p.playerX+speed;
    }
  }
}