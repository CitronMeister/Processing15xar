// Global variables
player p = new player();
bomb b = new bomb();
controller c = new controller();


void setup() {
  size(500, 500);
}
void draw() {
  background(71);
  b.bombTest();
  c.control();
  p.display(100);
}