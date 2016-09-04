public class Intro {
  // check for skip variable.
  int skipYesOrNo = 0;
  
  
  boolean skipIntro = false;
  void intro0() {
    pushStyle();
    textAlign(CENTER);
    text("Do you wish to skip the intro?", width/2, height/2 - 50);
    popStyle();

    // Yes or No

    rect(width/2, height/2, 1, 1);
    rect(810, 540, 100, 50);
    rect(1010, 540, 100, 50);
    pushStyle();
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(24);
    text("YES", 860, 565);
    text("NO", 1060, 565);
    popStyle();
  }

  void intro1() {
    if (skipIntro == false) {
    } else {
      intro2();
    }
  }
  void intro2() {
    if (skipIntro == true) {
    }
  }
}