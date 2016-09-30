import processing.sound.*; //Imports sound libary

//Global Variables

//drawGUI gui = new drawGUI();

SoundFile click; //Creates a soundfile called click

//The classes are added
mouseCordinate mouseCord = new mouseCordinate();
startup start = new startup();

//+/- size
//Erase
drawColor drawColor = new drawColor();
brushSize size = new brushSize();
clearBoard clear = new clearBoard();


void setup() {
  size(900, 600);
  background(255);
  click = new SoundFile(this, "button click version sound effect  11.mp3"); //Binds the given soundfile to the name, click
  start.startScreen();
}

void draw() {
  clear.boxPressed();
  clear.clearFirstPress();
  clear.hoverBox();
  clear.drawBox();
  mouseCord.mouseCord();
  drawColor.drawBox();
  drawColor.mouseOver();
  size.drawBox();
  size.preview();
  //fill(0);
  //text("Debug", 100, 100);
}