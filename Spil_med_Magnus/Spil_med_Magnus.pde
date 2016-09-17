player p = new player();
shot s = new shot();
keyControl k = new keyControl();

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  p.display();
  s.display();
  k.booleans();
  k.keyReleased();
  k.move();
  text(k.speed,100,100);
}