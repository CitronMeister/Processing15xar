//Global Variables
//drawGUI gui = new drawGUI();
mouseCordinate mouseCord = new mouseCordinate();
startup start = new startup();

//drawColor drawColor = new drawColor();
//+/- size
//Erase
clearBoard clear = new clearBoard();


void setup() {
  size(900, 600);
  background(255);
  start.startScreen();
}

void draw() {
  //gui.drawGUI();
  mouseCord.mouseCord();
  clear.clearFirstPress();
  clear.drawBox();
  
  
  
  
  //fill(0);
  //text("Debug", 100, 100);
}