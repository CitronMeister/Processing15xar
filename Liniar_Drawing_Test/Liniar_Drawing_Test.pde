int numLines = 1;
Line[] lines;

void setup() {
  fullScreen();
  background(0);
  
  /*------------ Creating the Array & Spawning Lines ------------*/
  lines = new Line[numLines];
}

void draw() {
  background(0);
  
  /*--------- Calling the Line functions for every line ---------*/
  for(int i = 0; i < lines.length; i++) {
    lines[i].spawning();
    lines[i].display();
    lines[i].grow();
  }
}