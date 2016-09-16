class Shot {
  float x;
  float y;
  float d;
  float counter;
  Me m;
  
  Shot(float TempX,float TempY) {
    noFill();
    noStroke();
    x=TempX;
    y=TempY;
}
  
  void mouseClicked() {
    float directionX;
    float directionY;
    float direction;
    float speed;
    float mouseXpos;
    float mouseYpos;
    
    //The Shot
    fill(255);
    stroke(1);
    ellipse(x,y,d,d);
    
    //MousePosition
    mouseXpos = mouseX;
    mouseYpos = mouseY;
    
    //Direction
    directionX = mouseXpos-x;
    directionY = mouseYpos-y;
    direction = directionY/directionX;
    
    //Velocity
    speed = 5;
    
    //Shot Activated
    counter = counter+1;
    
    if(counter>=1) {
      counter = 0;
      x = x+directionX;
      y = y+directionY;
    }
  }
}