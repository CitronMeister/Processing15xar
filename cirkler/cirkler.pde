

void setup() {
  fullScreen();
}
ball Ball1 = new ball(10, 3, 3, width/2, height/2);
ball Ball2 = new ball(10, 3, 3, width/2, height/2);
ball Ball3 = new ball(17, 6, 4, width/2, height/2);

void draw() {
  pushStyle();
  fill(0,0,0,70);
  rect(0,0,width,height);
  popStyle();
  
  Ball1.display();
  Ball2.display();
  Ball3.display();
  Ball1.bounce();
  Ball2.bounce();
  Ball3.bounce();
  
}