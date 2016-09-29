//Global Variables
//drawGUI gui = new drawGUI();
mouseCordinate mouseCord = new mouseCordinate();
startup start = new startup();


void setup() {
  size(900, 600);
  background(255);
  start.startScreen();
}

void draw() {
  mouseCord.mouseCord();

}