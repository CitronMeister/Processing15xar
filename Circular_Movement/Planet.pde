class Planet {
  float x, y, d = 50; //Planet's coordinates

  Planet(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void display() {
    ellipse(x, y, d, d);
  }
}