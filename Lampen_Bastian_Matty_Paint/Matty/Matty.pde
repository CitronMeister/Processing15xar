//Global Variables
//drawGUI gui = new drawGUI();
//The classes are added
mouseCordinate mouseCord = new mouseCordinate();
startup start = new startup();

//drawColor drawColor = new drawColor();
//+/- size
//Erase
drawColor drawColor = new drawColor();
clearBoard clear = new clearBoard();


void setup() {
  size(900, 600);
  background(255);
  start.startScreen();
}

void draw() {
    clear.clearFirstPress();
  clear.drawBox();
  clear.hoverBox();
  clear.boxPressed();
  mouseCord.mouseCord();
  drawColor.drawBox();
  drawColor.mouseClicked();
  
  
  //fill(0);
  //text("Debug", 100, 100);
}