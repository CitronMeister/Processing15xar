class Line {
  float xS = random(width); //The line needs 2 coordinates. A Start and Ending. (Couldn't call it Start and Stop. I think you see why ;) )
  float y = random(height); //Since i want each line to have the same Y coordinate, i only need one variable for the one value.
  float xE = xS+1;
  boolean spawning = false;

  boolean growingL() { //A boolean that is checking, if the starting point is higher than 0 and lower that the windows width.
    return (xS > 0 && xS < width);
  }

  boolean growingR() { //A boolean that is checking, if the ending point is higher than 0 and lower that the windows width.
    return (xE < width && xE > 0);
  }


  boolean begin() { //Makes sure, that the ending point has a higher x-value than the startingpoint.
    return (xE > xS);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    line(xS, y, xE, y);
  }

  void grow() { //Uses the three booleans to check if the lines coordinates are inside the window and if the ending point has a higher x-value than the starting point.
    if (begin()) {
      if (growingR()) {
        xE += 1;
      }
      if (growingL()) {
        xS -= 1;
      }
    } else { //If the starting point has a higher x-value than the ending point, it will reset the endingpoint with a random function.
      xE = random(width);
    }
  }

  void show() { //If the starting and ending point is correct compared to eachother, it will display the line. Otherwise you will see lines flashing.
    if (begin() && spawning == true) {
      display();
    }
  }

  void spawn() { //Checks if the lines are spawning inside of eachother. If not, the line is (boolean)spawning, if it is inside another line, the line won't spawn.
    for (Line l : lines) {
      for (Line j : lines) {
        if (j.xS > l.xS && j.xE < l.xE && j.y == l.y && j != l) {
          println("IT CAN'T SPAWN!");
          spawning = false;
        } else {
          //println("IT CAN SPAWN!");
          spawning = true;
        }
      }
    }
  }
}