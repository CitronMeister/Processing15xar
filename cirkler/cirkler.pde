int MaxBalls = int(random(5, 25));

void setup() {
  fullScreen();
  /*
  for(int i = 0; i <= MaxBalls; i++){
   ball Ball = new ball(int(random(10,30)), int(random(2,10)), int(random(2,10)), width/2, height/2);
   }
   */
}
// creating the objects from contructor (dia, speedX, speedY, x, y)
ball Ball1 = new ball(10, 3, 3, width/2, height/2);
ball Ball2 = new ball(10, 3, 4, width/2, height/2);
ball Ball3 = new ball(17, 6, 4, width/2, height/2);


void draw() {
  // making an transparent background to give blur effect
  pushStyle();
  fill(0, 0, 0, 70);
  rect(0, 0, width, height);
  popStyle();
  /*
  for(int i = 0; i <= MaxBalls; i++){
   Ball[i].display();
   Ball[i].bounce();
   }
   */
  Ball1.display();
  Ball2.display();
  Ball3.display();
  Ball1.bounce();
  Ball2.bounce();
  Ball3.bounce();
}