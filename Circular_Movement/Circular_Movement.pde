Planet planet;
Player player;
Movement movement;

void setup() {
  fullScreen();
  smooth();
  movement = new Movement();
  planet = new Planet(width/2, height/2);
  player = new Player(width/2);
}

void draw() {
  background(0);

  //Displaying the planet & player
  planet.display();
  player.display();
  movement.booleans();
}

void keyPressed() {
  //Checking if the keys are pressed.
  if (key == 'A' || key == 'a') {
    movement.left = true;
  }
  if (key == 'D' || key == 'd') {
    movement.right = true;
  }
}

void keyReleased() {
  //Checking if the keys are released.
  if (key == 'A' || key == 'a') {
    movement.left = false;
  }
  if (key == 'D' || key == 'd') {
    movement.right = false;
  }
}