class Player {
  float x, y, d;

  Player(float tempX) {
    x = tempX;
    d = 10;
    y = height/2 + planet.d/2 + d/2;
  }
  
  void display(){
    ellipse(x,y,d,d);
  }
}