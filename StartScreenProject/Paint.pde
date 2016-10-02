class Paint {

  //Boolean To Check If Paint Is On
  boolean paintOn;

  // RGBColor & Diameter for Drawing Ellipse
  int rColor;
  int gColor;
  int bColor;
  float diameter = 20;

  void display() {
    if (mouseX > 1130 && mouseX < 1270 && mouseY > 0 && mouseY < 20 && paintOn == true) {
      noFill();
    }
    if (mousePressed && mouseX>100 && paintOn == true) {
      stroke(rColor, gColor, bColor);
      fill(rColor, gColor, bColor);
      ellipse(mouseX, mouseY, diameter, diameter);
    }
  }

  void colorsel() {
    if (mousePressed && paintOn == true) {
      // +
      if (mouseX<100 && mouseX > 0 && mouseY < 100 && mouseY > 0 && paintOn == true) {
        diameter += 1;
      }

      // - 
      if (mouseX<100 && mouseX > 0 && mouseY < 200 && mouseY > 100 && paintOn == true) {
        diameter -= 1;
      }

      // 3rd Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 300 && mouseY > 200 && paintOn == true) {
        rColor = 255;
        gColor = 0;
        bColor = 0;

        rSq3 = 255;
        gSq3 = 100;
        bSq3 = 100;
      } else {
        rSq3 = 255;
        gSq3 = 0;
        bSq3 = 0;
      }

      // 4th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 400 && mouseY > 300 && paintOn == true) {
        rColor = 0;
        gColor = 255;
        bColor = 0;

        rSq4 = 100;
        gSq4 = 255;
        bSq4 = 100;
      } else {
        rSq4 = 0;
        gSq4 = 255;
        bSq4 = 0;
      }

      // 5th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 500 && mouseY > 400 && paintOn == true) {
        rColor = 0;
        gColor = 0;
        bColor = 255;

        rSq5 = 100;
        gSq5 = 100;
        bSq5 = 255;
      } else {
        rSq5 = 0;
        gSq5 = 0;
        bSq5 = 255;
      }

      // 6th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 600 && mouseY > 500 && paintOn == true) {
        rColor = 255;
        gColor = 255;
        bColor = 0;

        rSq6 = 220;
        gSq6 = 220;
        bSq6 = 0;
      } else {
        rSq6 = 255;
        gSq6 = 255;
        bSq6 = 0;
      }

      // 7th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 700 && mouseY > 600 && paintOn == true) {
        rColor = 0;
        gColor = 255;
        bColor = 255;

        rSq7 = 0;
        gSq7 = 220;
        bSq7 = 220;
      } else {
        rSq7 = 0;
        gSq7 = 255;
        bSq7 = 255;
      }

      // 8th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 800 && mouseY > 700 && paintOn == true) {
        rColor = 255;
        gColor = 0;
        bColor = 255;

        rSq8 = 220;
        gSq8 = 0;
        bSq8 = 220;
      } else {
        rSq8 = 255;
        gSq8 = 0;
        bSq8 = 255;
      }

      // 9th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 900 && mouseY > 800 && paintOn == true) {
        rColor = 255;
        gColor = 255;
        bColor = 255;

        rSq9 = 220;
        gSq9 = 220;
        bSq9 = 220;
      } else {
        rSq9 = 255;
        gSq9 = 255;
        bSq9 = 255;
      }

      // 10th Rectangle
      if (mouseX<100 && mouseX > 0 && mouseY < 1000 && mouseY > 900 && paintOn == true) {
        rColor = 0;
        gColor = 0;
        bColor = 0;

        rSq10 = 20;
        gSq10 = 20;
        bSq10 = 20;
      } else {
        rSq10 = 0;
        gSq10 = 0;
        bSq10 = 0;
      }
    }
  }

  // Rectangle Length & Width
  float LW = 100;
  float LW2 = 20;

  // 1st Rectangle & Colors
  float x0 = 0;
  float y0 = 0;

  int rSq1 = 255;
  int gSq1 = 255;
  int bSq1 = 255;

  // 2nd Rectangle & Colors
  float x1 = 0;
  float y1 = 100;

  int rSq2 = 255;
  int gSq2 = 255;
  int bSq2 = 255;

  // 3rd Rectangle & Colors
  float x2 = 0;
  float y2 = 200;

  int rSq3 = 255;
  int gSq3 = 0;
  int bSq3 = 0;

  // 4th Rectangle & Colors
  float x3 = 0;
  float y3 = 300;

  int rSq4 = 0;
  int gSq4 = 255;
  int bSq4 = 0;

  // 5th Rectangle & Colors
  float x4 = 0;
  float y4 = 400;

  int rSq5 = 0;
  int gSq5 = 0;
  int bSq5 = 255;

  // 6th Rectangle & Colors
  float x5 = 0;
  float y5 = 500;

  int rSq6 = 255;
  int gSq6 = 255;
  int bSq6 = 0;

  // 7th Rectangle & Colors
  float x6 = 0;
  float y6 = 600;

  int rSq7 = 0;
  int gSq7 = 255;
  int bSq7 = 255;

  // 8th Rectangle & Colors
  float x7 = 0;
  float y7 = 700;

  int rSq8 = 255;
  int gSq8 = 0;
  int bSq8 = 255;

  // 9th Rectangle & Colors
  float x8 = 0;
  float y8 = 800;

  int rSq9 = 255;
  int gSq9 = 255;
  int bSq9 = 255;

  // 10th Rectangle & Colors
  float x9 = 0;
  float y9 = 899;

  int rSq10 = 0;
  int gSq10 = 0;
  int bSq10 = 0;

  // Restart Button
  float x10 = 1150;
  float y10 = 0;

  int rSqRestart = 255;
  int gSqRestart = 255;
  int bSqRestart = 255;

  //Reset Diameter
  float x11 = 1130;
  float y11 = 0;

  int rSqResetD = 255;
  int gSqResetD = 255;
  int bSqResetD = 255;

  void menu() {
    //Text Size for + & -
    textSize(100);

    // 1st Rectangle
    stroke(0);
    fill(rSq1, gSq1, bSq1);
    rect(x0, y0, LW, LW);

    fill(0);
    text("+", 10, 80);

    // 2nd Rectangle
    stroke(0);
    fill(rSq2, gSq2, bSq2);
    rect(x1, y1, LW, LW);

    fill(0);
    text("-", 23, 180);

    // 3rd Rectangle
    stroke(0);
    fill(rSq3, gSq3, bSq3);
    rect(x2, y2, LW, LW);

    // 4th Rectangle
    stroke(0);
    fill(rSq4, gSq4, bSq4);
    rect(x3, y3, LW, LW);

    // 5th Rectangle
    stroke(0);
    fill(rSq5, gSq5, bSq5);
    rect(x4, y4, LW, LW);

    // 6th Rectangle
    stroke(0);
    fill(rSq6, gSq6, bSq6);
    rect(x5, y5, LW, LW);

    // 7th Rectangle
    stroke(0);
    fill(rSq7, gSq7, bSq7);
    rect(x6, y6, LW, LW);

    // 8th Rectangle
    stroke(0);
    fill(rSq8, gSq8, bSq8);
    rect(x7, y7, LW, LW);

    // 9th Rectangle
    stroke(0);
    fill(rSq9, gSq9, bSq9);
    rect(x8, y8, LW, LW);

    // 10th Rectangle
    stroke(0);
    fill(rSq10, gSq10, bSq10);
    rect(x9, y9, LW, LW);

    //Restart Button
    stroke(0);
    fill(rSqRestart, gSqRestart, bSqRestart, 150);
    rect(x10, y10, LW2, LW2);

    //Reset Diameter
    stroke(0);
    fill(rSqResetD, gSqResetD, bSqResetD, 150);
    rect(x11, y11, LW2, LW2);
  }
}