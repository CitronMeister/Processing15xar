class Controller {
  void keyPressed() {
    if (key == CODED) {
      if (intro.skipIntro == false) {
        if (key == LEFT) {
          intro.skipYesOrNo = 0;
        } else if (key == RIGHT) {
          intro.skipYesOrNo = 1;
        }
        if (key == ENTER && intro.skipYesOrNo == 0) {
          intro.skipIntro = true;
        }
        else if(key == ENTER && intro.skipYesOrNo == 1) {
          
        }
      }
    }
  }
}