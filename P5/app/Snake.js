function Snake() {
  this.x = 0;
  this.y = 0;
  this.xSpeed = 0;
  this.ySpeed = 0;
  this.size = [];

  //Sets the direction of the Snake
  this.dir = function(x, y) {
    this.xSpeed = x;
    this.ySpeed = y;
  }

  //Displays the Snake
  this.display = function() {
      push;
      fill(255);
      rect(this.x, this.y, scl, scl);
      pop;

    }
    //Updates the location and size of the Snake
  this.update = function() {
    this.x += this.xSpeed * scl;
    this.y += this.ySpeed * scl;
  }

}