var s;
var scl = 20;

function setup() {
  createCanvas(600, 600);
  frameRate(7);
  s = new Snake();

}

function draw() {
  background(70);
  s.display();
  s.update();
  s.death();
}


function pickLocation() {
  var cols = floor((width / scl));
  var rows = floor((height / scl));
}


//Determins the direction of the Snake
function keyPressed() {
  if (keyCode === UP_ARROW) {
    s.dir(0, -1);
  } else if (keyCode === DOWN_ARROW) {
    s.dir(0, 1);
  } else if (keyCode === LEFT_ARROW) {
    s.dir(-1, 0);
  } else if (keyCode === RIGHT_ARROW) {
    s.dir(1, 0);
  }
}