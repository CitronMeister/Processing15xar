class Me {
  float x;
  float y;
  float d;
  float xspeed = 5;
  float yspeed = 5;
  
  Me(float TempX,float TempY,float TempD) {
    x=TempX;
    y=TempY;
    d=TempD;
  }
  
  void display() {
    fill(255);
    rect(x,y,d,d);
  }
  
  void move() {
    if(x>=0 && x<=height) {
      if (keyPressed) {
        if(key=='a') {
          x=x-xspeed;
        }
        if(key=='d') {
          x=x+xspeed;
        }
      }
    }
    
    if(y>=0 && y<=height) {
      if (keyPressed) {
        if (key=='w') {
          y=y-yspeed;
        }
        if (key=='s') {
          y=y+yspeed;
        }
      }
    }
    if(y<=0 || y>=height || x<= 0 || x>=width) {
      background(255,0,0);
      xspeed=0;
      yspeed=0;
    }
  }
}