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

  //Function to test if the food has been eaten
  /*this.eat = function(pos) {
    if() {
      return true;
    }else {
      return false;
    }
    
  }*/



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
  this.death = function() {

    if (this.y > height || this.y < 0 || this.x > width || this.x < 0) {
      console.log("You have died - Restarting the game");
      this.x = 0;
      this.y = 0;
      this.dir(0, 0);
    }
  }
}