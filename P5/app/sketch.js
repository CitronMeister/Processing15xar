var s;
var scl = 20;

function setup() {
  createCanvas(600, 600);

  s = new Snake();

}

function draw() {
  background(70);
  s.display();
}

function pickLocation() {
  var cols = floor((width / scl));
  var rows = floor((height / scl));
}

function keyPressed() {
  if (keyCode == UP_ARROW) {
    dir(0, -1);
  }
  if (keyCode == DOWN_ARROW) {
    dir(0, 1);
  }
  if (keyCode == LEFT_ARROW) {
    dir(-1, 0);
  }
  if (keyCode == RIGHT_ARROW) {
    dir(1, 0);
  }
}