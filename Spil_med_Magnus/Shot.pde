class Shot {
  float x;
  float y;
  float d;
  float counter;
  Me m;
  // wtf is this? and when making something like this mby make it return something?
  Shot(float TempX, float TempY) {
    noFill();
    noStroke();
    x=TempX;
    y=TempY;
  }

  void shotDisplay() {
    fill(255);
    stroke(1);
    ellipse(x, y, d, d);
  }

  void mouseClicked() {
    shotDisplay();
    float directionX;
    float directionY;
    float direction;
    float speed;


    //The Shot


    //MousePosition
    // Lad være med at "store" mouseX og mouseY i variabler. benyt den "hard coded" version.

    /*mouseXpos = mouseX;
     mouseYpos = mouseY;*/

    //Direction
    directionX = mouseX-x;
    directionY = mouseY-y;
    direction = directionY/directionX;

    //Velocity
    speed = 5;

    //Shot Activated
    counter = counter+1;

    if (counter>=1) {
      counter = 0;
      x = x+directionX;
      y = y+directionY;
    }
  }
}