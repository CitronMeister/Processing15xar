class ball {

  //Fields
  int dia;
  float speedX;
  float speedY;
  float x;
  float y;
  int tick;    // for checking the amount of seconds in ticks (60 ticks = 1 sec)
  int invtime; //invisibility time


  //constructor
  ball(int dia, int speedX, int speedY, int x, int y) {
    this.dia = dia;
    this.speedX = speedX;
    this.speedY = speedY;
    this.y = y;
    this.x = x;
  }

  void display() {
    invtime = int(random(3, 5));
    noStroke();
    ellipse(x, y, dia, dia);
    x = x + speedX;
    y = y + speedY;
    tick = tick + 1;
    // time before going invisible
    if (tick >= (60*invtime)) {
      fill(0, 0, 0, 0);
      // time before becoming visible again
      if (tick >= (60*(invtime+int(random(1, 3))))) {
        fill(255, 255, 255);
        tick = 0;
      }
    }
    
  }
  // if the ball hits the edge it reverses the speed (hits bottom = going upwards, hits side = goes other way, hits top = going downwards) 
  void bounce() {
    if (x >= width-dia/2 || x <= 0+dia/2 ) {
      speedX = (speedX*(-1))*random(0.95, 1.05);
    }
    if (y >= height-dia/2 || y <= 0+dia/2 ) {
      speedY = (speedY*(-1))*random(0.95, 1.05);
    }
  }
}