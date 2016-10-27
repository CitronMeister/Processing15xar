class ball {

  //Fields
  int dia;
  float speedX;
  float speedY;
  float x;
  float y;
  int tick;
  int invtime;


  //constructor
  ball(int dia, int speedX, int speedY, int x, int y) {
    this.dia = dia;
    this.speedX = speedX;
    this.speedY = speedY;
    this.y = y;
    this.x = x;
  }

  void display() {
    invtime =int(random(3, 5));
    noStroke();
    ellipse(x, y, dia, dia);
    x = x + speedX;
    y = y + speedY;
    tick = tick + 1;
    if (tick >= (60*invtime)) {
      fill(0, 0, 0, 0);

      if (tick >= (60*(invtime+int(random(3, 5))))) {
        fill(255, 255, 255, 100);
        tick = 0;
      }
    }
  }

  void bounce() {
    if (x >= width-dia/2 || x <= 0+dia/2 ) {
      speedX = (speedX*(-1))*random(0.95, 1.05);
    }
    if (y >= height-dia/2 || y <= 0+dia/2 ) {
      speedY = (speedY*(-1))*random(0.95, 1.05);
    }
  }
}