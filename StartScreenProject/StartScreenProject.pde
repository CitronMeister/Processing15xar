Paint p = new Paint();
StartScreen s = new StartScreen();

void setup() {
  size(1200, 1000);
  frameRate(2147483647);
  background(0);
}

void draw() {
  if (p.paintOn == true) {
    p.menu();
    p.display();
    p.colorsel();
  } else {
    s.GUI();
    s.menu();
  }
}