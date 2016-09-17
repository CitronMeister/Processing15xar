Me m;
Shot s;

void setup() {
  s = new Shot(width/2,height/2);
  m = new Me(width/2,height/2,20);
  size(500,500);
  frameRate(60);
}

void draw() {
  background(0);
  m.display();
  m.move();
  //s.
}