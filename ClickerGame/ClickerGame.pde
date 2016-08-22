int coin = 0;
// defined as placeholders - Bjørn
int x = 1;
int y = 1;

void setup() {

size(1600, 960);

}

void draw() {
  
  // Background to be changed later :P - Bjørn
  background(0);
  
  // Visible Menu with text and buttons - Bjørn
  pushStyle();
  fill(255, 0, 0);
  rect(0, 96*0, 200, 96);
  popStyle();
  
  pushStyle();
  fill(255, 128, 0);
  rect(0, 96*1, 200, 96);
  popStyle();
  
  pushStyle();
  fill(255, 255, 0);
  rect(0, 96*2, 200, 96);
  popStyle();
  
  pushStyle();
  fill(0, 255, 0);
  rect(0, 96*3, 200, 96);
  popStyle();
  
  pushStyle();
  fill(0, 255, 255);
  rect(0, 96*4, 200, 96);
  popStyle();
  
  pushStyle();
  fill(0, 0, 255);
  rect(0, 96*5, 200, 96);
  popStyle();
  
  pushStyle();
  fill(127, 0, 255);
  rect(0, 96*6, 200, 96);
  popStyle();
  
  pushStyle();
  fill(255, 0, 255);
  rect(0, 96*7, 200, 96);
  popStyle();
  
  pushStyle();
  fill(255, 0, 127);
  rect(0, 96*8, 200, 96);
  popStyle();
  
  pushStyle();
  fill(128, 128, 128);
  rect(0, 96*9, 200, 96);
  popStyle();
  
 text("Lvl: ", 10, 48 - 5);
 text("Cost: ", 10, 48 + 5);
 
 text("Lvl: ", 10, (96*1) + 48 - 5);
 text("Cost: ", 10, (96*1) + 48 + 5);
 
 text("Lvl: ", 10, (96*2) + 48 - 5);
 text("Cost: ", 10, (96*2) + 48 + 5);
 
 text("Lvl: ", 10, (96*3) + 48 - 5);
 text("Cost: ", 10, (96*3) + 48 + 5);
 
 text("Lvl: ", 10, (96*4) + 48 - 5);
 text("Cost: ", 10, (96*4) + 48 + 5);
 
 text("Lvl: ", 10, (96*5) + 48 - 5);
 text("Cost: ", 10, (96*5) + 48 + 5);
 
 text("Lvl: ", 10, (96*6) + 48 - 5);
 text("Cost: ", 10, (96*6) + 48 + 5);
 
 text("Lvl: ", 10, (96*7) + 48 - 5);
 text("Cost: ", 10, (96*7) + 48 + 5);
 
 text("Lvl: ", 10, (96*8) + 48 - 5);
 text("Cost: ", 10, (96*8) + 48 + 5);

 text("Get Exp: ", 10, (96*9) + 48);
 
 }
// All Click related actions - Bjørn
void mousePressed() {
  
}