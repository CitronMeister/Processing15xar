class controller {  

  void control() {
    if (keyPressed) {
      // Player go Right
      if (keyCode == RIGHT && p.chopX < 450) {
        p.chopX = p.chopX + 10;
      }
      // Player go Left
      if (keyCode == LEFT && p.chopX > 0) {
        p.chopX = p.chopX - 10;
      }

      // Drop bomb
      if (keyCode == DOWN && b.bombLive2 == 0) {
        b.bombLive++;
        b.bombX = p.chopX;
      }
    }
  }
}