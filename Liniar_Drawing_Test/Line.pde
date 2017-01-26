class Line {
  /*-------------------- Position --------------------*/
  float xS = width/2; //The starting point.
  float y = height/2; //Since i want the line to be horizontal, i need both points to have the same y-value.
  float xE = xS+1; //The ending point, which needs to have a higher value than the starting point.

  float randomCol = random(255);
  float randomCol2 = random(255);

  /*--------- Array for all x-values -----------*/
  float[] linesXStart = new float[lines.length];
  float[] linesXEnd = new float[lines.length];
  
  
  /*-------------- Can The Line Spawn? ----------------*/
  boolean spawning() { //TEMPORARY content of this boolean. The coding will be included later.
    return true;
  }
  
  /*--------------------- Display ---------------------*/
  void display() {
    if (spawning()) { //If the lines aren't inside of eachother, spawning() will return true, so the line can spawn.
      stroke(randomCol, randomCol2, randomCol, 150); //Random colors, and an alpha-value to make the line more transparent. This makes it possible to check, if two lines are inside eachother.
      strokeWeight(2);
      line(xS, y, xE, y);
    }
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