class Line {
  /*-------------------- Position --------------------*/
  float xS = random(width); //The starting point.
  float y = random(height); //Since i want the line to be horizontal, i need both points to have the same y-value.
  float xE = xS+1; //The ending point, which needs to have a higher value than the starting point.
  color c;

  float randomCol = random(255);
  float randomCol2 = random(255);

  /*--------------------- Display ---------------------*/
  void display() {
    stroke(c); //Random colors, and an alpha-value to make the line more transparent. This makes it possible to check, if two lines are inside eachother.
    strokeWeight(2);
    line(xS, y, xE, y);
  }

  /*------------------ Movement/Grow -------------------*/
  boolean growingL() { //A boolean that is checking, if the starting point is higher than 0 and lower that the windows width.
    return (xS > 0 && xS < width);
  }

  boolean growingR() { //A boolean that is checking, if the ending point is higher than 0 and lower that the windows width.
    return (xE < width && xE > 0);
  }

  float xSpeedR = random(4); //The two values for the x-axes speed. Both directions for each point. Start & Ending, Left and Right.
  float xSpeedL = random(4);

  void grow() { //Uses the two booleans to check if the lines coordinates are inside the window. If they return true, the line can grow to the left or right.
    if (growingR()) {
      xE += xSpeedR; //xEndingPoint = xEndingPoint + xSpeedRight
    }
    if (growingL()) {
      xS -= xSpeedL; //xStartingPoint = xStartingPoint + xSpeedLeft
    }
  }
}